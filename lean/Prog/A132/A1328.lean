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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A132801: a(0)=1; a(n) = Sum_{1<=k<=n, gcd(k,n)=1} a(floor(k/2)), where the sum is over those positive integers which are <= n and are coprime to n.

The programs for A132801, there is no canonical definition to state claims against.
-/

/-! ## A132801.P12806396827018699105

`and(A181071(n+1), A213718(A263673(n)))`
-/

namespace A132801.P12806396827018699105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181071 (n + 1)) (A213718 (A263673 n).toNat)

end

end A132801.P12806396827018699105

/-!
# A132802: a(0)=1. a(n) = Sum_{k|n} a(floor(k/2)).

The programs for A132802, there is no canonical definition to state claims against.
-/

/-! ## A132802.P11344755970786540554

`A086017(A054358(n))+A054346(n)`
-/

namespace A132802.P11344755970786540554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (A054358 n).toNat + A054346 n

end

end A132802.P11344755970786540554

/-! ## A132802.P3312065686466635259

`A055641(A325922(n+1))+A054346(n)`
-/

namespace A132802.P3312065686466635259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A325922 (n + 1)).toNat + A054346 n

end

end A132802.P3312065686466635259

/-! ## A132802.P8555574803610604368

`A170956(A163237(n+2))+A087808(n)`
-/

namespace A132802.P8555574803610604368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170956 (A163237 (n + 2)).toNat + A087808 n

end

end A132802.P8555574803610604368

/-! ## A132802.P18313593569016412751

`A143222(A358206(2*(n+2)))+A087808(n)`
-/

namespace A132802.P18313593569016412751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143222 (A358206 (2 * (n + 2))).toNat + A087808 n

end

end A132802.P18313593569016412751

/-!
# A132803: Number of unsigned permutations of size n whose "cycle graph" (or "breakpoint graph") is composed of alternating cycles of length at most 3.

The programs for A132803, there is no canonical definition to state claims against.
-/

/-! ## A132803.P1520049252462162617

`∏{p}[n, #]+∑[A180632(n)]`
-/

namespace A132803.P1520049252462162617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A132803.P1520049252462162617

/-! ## A132803.P9595984288853625035

`A325796(a(n-1)+3)` with `a(0)=1, a(1)=2`
-/

namespace A132803.P9595984288853625035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A325796 (a (n - 1) + 3).toNat

end

end A132803.P9595984288853625035

/-!
# A132804: A trisection of A024495.

The programs for A132804, the canonical program `A132804.P16328243439683463460` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132804 has offset 0).

The definition of A132804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132804.P14668357625942406974

`2*(8^n-(-1)^n)/3`
-/

namespace A132804.P14668357625942406974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((8 ^ n : ℤ) - (-1) ^ n) : ℚ) / 3

end

end A132804.P14668357625942406974

namespace A132804

/-- `2*(8^n-(-1)^n)/3` -/
def P14668357625942406974.Spec : Prop :=
  ∀ n, P14668357625942406974.a n = (A132804 n : ℚ)

end A132804

/-! ## A132804.P10667785807947666692

`2*A132805(n)`
-/

namespace A132804.P10667785807947666692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132805 n

end

end A132804.P10667785807947666692

namespace A132804

/-- `2*A132805(n)` -/
def P10667785807947666692.Spec : Prop :=
  ∀ n, P10667785807947666692.a n = A132804 n

end A132804

/-! ## A132804.P1883937394058910158

`6*A015565(n)`
-/

namespace A132804.P1883937394058910158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A015565 n

end

end A132804.P1883937394058910158

namespace A132804

/-- `6*A015565(n)` -/
def P1883937394058910158.Spec : Prop :=
  ∀ n, P1883937394058910158.a n = A132804 n

end A132804

/-! ## A132804.P16328243439683463460

`A078008(3*n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A132804

/-- `A078008(3*n+1)` -/
def P16328243439683463460.Spec : Prop :=
  ∀ n, P16328243439683463460.a n = A132804 n

theorem P16328243439683463460.correct : P16328243439683463460.Spec := by
  intro n
  simp only [A132804]

end A132804

/-! ## A132804.P9060790163292917192

`ogf(6x/(1-7x-8x^2))`
-/

namespace A132804.P9060790163292917192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -7, -8] n

end

end A132804.P9060790163292917192

namespace A132804

/-- `ogf(6x/(1-7x-8x^2))` -/
def P9060790163292917192.Spec : Prop :=
  ∀ n, P9060790163292917192.a n = A132804 n

end A132804

/-! ## A132804.P13262636227341026858

`lcm(2, round(8^n/3))`
-/

namespace A132804.P13262636227341026858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((8 ^ n : ℚ) / 3))

end

end A132804.P13262636227341026858

namespace A132804

/-- `lcm(2, round(8^n/3))` -/
def P13262636227341026858.Spec : Prop :=
  ∀ n, (P13262636227341026858.a n : ℤ) = A132804 n

end A132804

/-! ## A132804.P4602044050013517489

`7*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=6`
-/

namespace A132804.P4602044050013517489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  7 * a (n - 1) + 8 * a (n - 2)

end

end A132804.P4602044050013517489

namespace A132804

/-- `7*a(n-1)+8*a(n-2)` -/
def P4602044050013517489.Spec : Prop :=
  ∀ n, (P4602044050013517489.a n : ℤ) = A132804 n

end A132804

/-! ## A132804.P2449451120183317417

`A014113(3*n)`
-/

namespace A132804.P2449451120183317417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (3 * n)

end

end A132804.P2449451120183317417

namespace A132804

/-- `A014113(3*n)` -/
def P2449451120183317417.Spec : Prop :=
  ∀ n, P2449451120183317417.a n = A132804 n

end A132804

/-! ## A132804.P3889581133337633250

`A024495(3*n+1)`
-/

namespace A132804.P3889581133337633250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (3 * n + 1)

end

end A132804.P3889581133337633250

namespace A132804

/-- `A024495(3*n+1)` -/
def P3889581133337633250.Spec : Prop :=
  ∀ n, P3889581133337633250.a n = A132804 n

end A132804

/-! ## A132804.P17313303596618259852

`A086953(3*n+1)`
-/

namespace A132804.P17313303596618259852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (3 * n + 1)

end

end A132804.P17313303596618259852

namespace A132804

/-- `A086953(3*n+1)` -/
def P17313303596618259852.Spec : Prop :=
  ∀ n, P17313303596618259852.a n = A132804 n

end A132804

/-! ## A132804.P6008451691786949468

`A087464(3*n+1)`
-/

namespace A132804.P6008451691786949468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087464 (3 * n + 1)

end

end A132804.P6008451691786949468

namespace A132804

/-- `A087464(3*n+1)` -/
def P6008451691786949468.Spec : Prop :=
  ∀ n, P6008451691786949468.a n = A132804 n

end A132804

/-! ## A132804.P5719713809606152184

`A242563(3*n+1)`
-/

namespace A132804.P5719713809606152184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 (3 * n + 1)

end

end A132804.P5719713809606152184

namespace A132804

/-- `A242563(3*n+1)` -/
def P5719713809606152184.Spec : Prop :=
  ∀ n, P5719713809606152184.a n = A132804 n

end A132804

/-! ## A132804.P17636202813645997686

`A130759(3*n)-1`
-/

namespace A132804.P17636202813645997686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130759 (3 * n) - 1

end

end A132804.P17636202813645997686

namespace A132804

/-- `A130759(3*n)-1` -/
def P17636202813645997686.Spec : Prop :=
  ∀ n, P17636202813645997686.a n = A132804 n

end A132804

/-! ## A132804.P16726165855836103494

`A277955(3*n)-1`
-/

namespace A132804.P16726165855836103494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277955 (3 * n) - 1

end

end A132804.P16726165855836103494

namespace A132804

/-- `A277955(3*n)-1` -/
def P16726165855836103494.Spec : Prop :=
  ∀ n, P16726165855836103494.a n = A132804 n

end A132804

/-! ## A132804.P7319102829452763007

`2*A001045(3*n)`
-/

namespace A132804.P7319102829452763007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001045 (3 * n)

end

end A132804.P7319102829452763007

namespace A132804

/-- `2*A001045(3*n)` -/
def P7319102829452763007.Spec : Prop :=
  ∀ n, P7319102829452763007.a n = A132804 n

end A132804

/-! ## A132804.P14007384106224392992

`2*A024495(3*n)`
-/

namespace A132804.P14007384106224392992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024495 (3 * n)

end

end A132804.P14007384106224392992

namespace A132804

/-- `2*A024495(3*n)` -/
def P14007384106224392992.Spec : Prop :=
  ∀ n, P14007384106224392992.a n = A132804 n

end A132804

/-! ## A132804.P6496082576747286192

`2*A131708(3*n)`
-/

namespace A132804.P6496082576747286192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131708 (3 * n)

end

end A132804.P6496082576747286192

namespace A132804

/-- `2*A131708(3*n)` -/
def P6496082576747286192.Spec : Prop :=
  ∀ n, P6496082576747286192.a n = A132804 n

end A132804

/-! ## A132804.P14275954016910132709

`2*A242563(3*n)`
-/

namespace A132804.P14275954016910132709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A242563 (3 * n)

end

end A132804.P14275954016910132709

namespace A132804

/-- `2*A242563(3*n)` -/
def P14275954016910132709.Spec : Prop :=
  ∀ n, P14275954016910132709.a n = A132804 n

end A132804

/-! ## A132804.P10350927472039889145

`A133684(6*n+3)`
-/

namespace A132804.P10350927472039889145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (6 * n + 3)

end

end A132804.P10350927472039889145

namespace A132804

/-- `A133684(6*n+3)` -/
def P10350927472039889145.Spec : Prop :=
  ∀ n, P10350927472039889145.a n = A132804 n

end A132804

/-! ## A132804.P12524849901613821075

`2*A328284(3*(n+1))`
-/

namespace A132804.P12524849901613821075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A328284 (3 * (n + 1))

end

end A132804.P12524849901613821075

namespace A132804

/-- `2*A328284(3*(n+1))` -/
def P12524849901613821075.Spec : Prop :=
  ∀ n, P12524849901613821075.a n = A132804 n

end A132804

/-!
# A132805: A trisection of A024495.

The programs for A132805, the canonical program `A132805.P5666018870212362628` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132805 has offset 0).

The definition of A132805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132805.P5666018870212362628

`3*A015565(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A132805

/-- `3*A015565(n)` -/
def P5666018870212362628.Spec : Prop :=
  ∀ n, P5666018870212362628.a n = A132805 n

theorem P5666018870212362628.correct : P5666018870212362628.Spec := by
  intro n
  simp only [A132805]

end A132805

/-! ## A132805.P7018481384843614264

`A132804(n)/2`
-/

namespace A132805.P7018481384843614264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132804 n : ℚ) / 2

end

end A132805.P7018481384843614264

namespace A132805

/-- `A132804(n)/2` -/
def P7018481384843614264.Spec : Prop :=
  ∀ n, P7018481384843614264.a n = (A132805 n : ℚ)

end A132805

/-! ## A132805.P14016715020840075985

`ogf(3x/(1-7x-8x^2))`
-/

namespace A132805.P14016715020840075985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -7, -8] n

end

end A132805.P14016715020840075985

namespace A132805

/-- `ogf(3x/(1-7x-8x^2))` -/
def P14016715020840075985.Spec : Prop :=
  ∀ n, P14016715020840075985.a n = A132805 n

end A132805

/-! ## A132805.P4379844028312330443

`7*a(n-1)+8*a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A132805.P4379844028312330443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  7 * a (n - 1) + 8 * a (n - 2)

end

end A132805.P4379844028312330443

namespace A132805

/-- `7*a(n-1)+8*a(n-2)` -/
def P4379844028312330443.Spec : Prop :=
  ∀ n, (P4379844028312330443.a n : ℤ) = A132805 n

end A132805

/-! ## A132805.P11758499445690585966

`∑[8*a(n-1)]-a(n-1)` with `a(0)=0, a(1)=3, a(2)=21`
-/

namespace A132805.P11758499445690585966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 21] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 21] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A132805.P11758499445690585966

namespace A132805

/-- `∑[8*a(n-1)]-a(n-1)` -/
def P11758499445690585966.Spec : Prop :=
  ∀ n, P11758499445690585966.a n = A132805 n

end A132805

/-! ## A132805.P3658144702447315355

`A001045(3*n)`
-/

namespace A132805.P3658144702447315355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (3 * n)

end

end A132805.P3658144702447315355

namespace A132805

/-- `A001045(3*n)` -/
def P3658144702447315355.Spec : Prop :=
  ∀ n, P3658144702447315355.a n = A132805 n

end A132805

/-! ## A132805.P596186537418168059

`A024495(3*n)`
-/

namespace A132805.P596186537418168059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (3 * n)

end

end A132805.P596186537418168059

namespace A132805

/-- `A024495(3*n)` -/
def P596186537418168059.Spec : Prop :=
  ∀ n, P596186537418168059.a n = A132805 n

end A132805

/-! ## A132805.P4035965606914175881

`A131708(3*n)`
-/

namespace A132805.P4035965606914175881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (3 * n)

end

end A132805.P4035965606914175881

namespace A132805

/-- `A131708(3*n)` -/
def P4035965606914175881.Spec : Prop :=
  ∀ n, P4035965606914175881.a n = A132805 n

end A132805

/-! ## A132805.P12892442763384624504

`A242563(3*n)`
-/

namespace A132805.P12892442763384624504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 (3 * n)

end

end A132805.P12892442763384624504

namespace A132805

/-- `A242563(3*n)` -/
def P12892442763384624504.Spec : Prop :=
  ∀ n, P12892442763384624504.a n = A132805 n

end A132805

/-! ## A132805.P4141949044096117728

`A133684(6*n)`
-/

namespace A132805.P4141949044096117728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (6 * n)

end

end A132805.P4141949044096117728

namespace A132805

/-- `A133684(6*n)` -/
def P4141949044096117728.Spec : Prop :=
  ∀ n, P4141949044096117728.a n = A132805 n

end A132805

/-! ## A132805.P720740447008629993

`A133806(6*n)`
-/

namespace A132805.P720740447008629993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133806 (6 * n)

end

end A132805.P720740447008629993

namespace A132805

/-- `A133806(6*n)` -/
def P720740447008629993.Spec : Prop :=
  ∀ n, P720740447008629993.a n = A132805 n

end A132805

/-! ## A132805.P10307289742556928879

`A138635(9*n)`
-/

namespace A132805.P10307289742556928879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (9 * n)

end

end A132805.P10307289742556928879

namespace A132805

/-- `A138635(9*n)` -/
def P10307289742556928879.Spec : Prop :=
  ∀ n, P10307289742556928879.a n = A132805 n

end A132805

/-! ## A132805.P1175060893727622019

`A167030(3*n)+1`
-/

namespace A132805.P1175060893727622019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 (3 * n) + 1

end

end A132805.P1175060893727622019

namespace A132805

/-- `A167030(3*n)+1` -/
def P1175060893727622019.Spec : Prop :=
  ∀ n, P1175060893727622019.a n = A132805 n

end A132805

/-! ## A132805.P16280993090119759160

`A328284(3*(n+1))`
-/

namespace A132805.P16280993090119759160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (3 * (n + 1))

end

end A132805.P16280993090119759160

namespace A132805

/-- `A328284(3*(n+1))` -/
def P16280993090119759160.Spec : Prop :=
  ∀ n, P16280993090119759160.a n = A132805 n

end A132805

/-! ## A132805.P4811964192607124659

`A128209(3*n)-1`
-/

namespace A132805.P4811964192607124659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 (3 * n) - 1

end

end A132805.P4811964192607124659

namespace A132805

/-- `A128209(3*n)-1` -/
def P4811964192607124659.Spec : Prop :=
  ∀ n, P4811964192607124659.a n = A132805 n

end A132805

/-! ## A132805.P17507271365541715204

`A153643(3*n)-2`
-/

namespace A132805.P17507271365541715204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 (3 * n) - 2

end

end A132805.P17507271365541715204

namespace A132805

/-- `A153643(3*n)-2` -/
def P17507271365541715204.Spec : Prop :=
  ∀ n, P17507271365541715204.a n = A132805 n

end A132805

/-! ## A132805.P11022464757327488128

`3*A113405(3*n)`
-/

namespace A132805.P11022464757327488128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A113405 (3 * n)

end

end A132805.P11022464757327488128

namespace A132805

/-- `3*A113405(3*n)` -/
def P11022464757327488128.Spec : Prop :=
  ∀ n, P11022464757327488128.a n = A132805 n

end A132805

/-! ## A132805.P2907124205503633172

`3*A131090(3*n)`
-/

namespace A132805.P2907124205503633172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131090 (3 * n)

end

end A132805.P2907124205503633172

namespace A132805

/-- `3*A131090(3*n)` -/
def P2907124205503633172.Spec : Prop :=
  ∀ n, P2907124205503633172.a n = A132805 n

end A132805

/-! ## A132805.P8025067734533700499

`3*A131666(3*n)`
-/

namespace A132805.P8025067734533700499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131666 (3 * n)

end

end A132805.P8025067734533700499

namespace A132805

/-- `3*A131666(3*n)` -/
def P8025067734533700499.Spec : Prop :=
  ∀ n, P8025067734533700499.a n = A132805 n

end A132805

/-! ## A132805.P13380275291345867523

`3*A133511(3*n)`
-/

namespace A132805.P13380275291345867523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A133511 (3 * n)

end

end A132805.P13380275291345867523

namespace A132805

/-- `3*A133511(3*n)` -/
def P13380275291345867523.Spec : Prop :=
  ∀ n, P13380275291345867523.a n = A132805 n

end A132805

/-!
# A132807: a(n) = A000108(n) + A000079(n) - 1.

The programs for A132807, the canonical program `A132807.P12743396962450466870` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132807 has offset 0).

The definition of A132807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)+A000079(n)-1` (program `A132807.P12743396962450466870`, by `A132807.P12743396962450466870.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132807.P3165945547623620550

`A000108(n)+2^n-1`
-/

namespace A132807.P3165945547623620550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (2 ^ n : ℤ) - 1

end

end A132807.P3165945547623620550

namespace A132807

/-- `A000108(n)+2^n-1` -/
def P3165945547623620550.Spec : Prop :=
  ∀ n, P3165945547623620550.a n = A132807 n

theorem P3165945547623620550.correct : P3165945547623620550.Spec := by
  intro n
  simp only [A132807, Nat.add_sub_cancel, A132807.P3165945547623620550.a, A132807.P12743396962450466870.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132807

/-! ## A132807.P12743396962450466870

`A000108(n)+A000079(n)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A132807

/-- `A000108(n)+A000079(n)-1` -/
def P12743396962450466870.Spec : Prop :=
  ∀ n, P12743396962450466870.a n = A132807 n

theorem P12743396962450466870.correct : P12743396962450466870.Spec := by
  intro n
  simp only [A132807]

end A132807

/-! ## A132807.P4048500199857174409

`C(2*n, n)/(n+1)+2^n-1`
-/

namespace A132807.P4048500199857174409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) + (2 ^ n : ℚ) - 1

end

end A132807.P4048500199857174409

namespace A132807

/-- `C(2*n, n)/(n+1)+2^n-1` -/
def P4048500199857174409.Spec : Prop :=
  ∀ n, P4048500199857174409.a n = (A132807 n : ℚ)

end A132807

/-! ## A132807.P10627312756422823987

`A338726(n)+n`
-/

namespace A132807.P10627312756422823987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338726 n + (n : ℤ)

end

end A132807.P10627312756422823987

namespace A132807

/-- `A338726(n)+n` -/
def P10627312756422823987.Spec : Prop :=
  ∀ n, P10627312756422823987.a n = A132807 n

theorem P10627312756422823987.correct : P10627312756422823987.Spec := by
  intro n
  simp only [A132807, Nat.add_sub_cancel, A132807.P10627312756422823987.a, A132807.P12743396962450466870.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, A338726, A338726.P625375486744898584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132807

/-! ## A132807.P4368552854978614128

`A126120(2*n)+2^n-1`
-/

namespace A132807.P4368552854978614128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) + ((2 ^ n : ℤ) - 1)

end

end A132807.P4368552854978614128

namespace A132807

/-- `A126120(2*n)+2^n-1` -/
def P4368552854978614128.Spec : Prop :=
  ∀ n, P4368552854978614128.a n = A132807 n

end A132807

/-! ## A132807.P8141910505502875326

`A208355(2*n)+2^n-1`
-/

namespace A132807.P8141910505502875326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) + ((2 ^ n : ℤ) - 1)

end

end A132807.P8141910505502875326

namespace A132807

/-- `A208355(2*n)+2^n-1` -/
def P8141910505502875326.Spec : Prop :=
  ∀ n, P8141910505502875326.a n = A132807 n

end A132807

/-! ## A132807.P2039924630525827830

`2^n+abs(A115140(n+1))-1`
-/

namespace A132807.P2039924630525827830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (|A115140 (n + 1)| - 1)

end

end A132807.P2039924630525827830

namespace A132807

/-- `2^n+abs(A115140(n+1))-1` -/
def P2039924630525827830.Spec : Prop :=
  ∀ n, P2039924630525827830.a n = A132807 n

end A132807

/-! ## A132807.P18017182951240459740

`2^n+∑{d}[n+1, A034742(#)]-1`
-/

namespace A132807.P18017182951240459740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (∑ d ∈ Nat.divisors (f1 n), A034742 d - 1)

end

end A132807.P18017182951240459740

namespace A132807

/-- `2^n+∑{d}[n+1, A034742(#)]-1` -/
def P18017182951240459740.Spec : Prop :=
  ∀ n, P18017182951240459740.a n = A132807 n

end A132807

/-! ## A132807.P17063806310164366241

`A000225(n)+A000108(n)`
-/

namespace A132807.P17063806310164366241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + A000108 n

end

end A132807.P17063806310164366241

namespace A132807

/-- `A000225(n)+A000108(n)` -/
def P17063806310164366241.Spec : Prop :=
  ∀ n, P17063806310164366241.a n = A132807 n

theorem P17063806310164366241.correct : P17063806310164366241.Spec := by
  intro n
  simp only [A132807, Nat.add_sub_cancel, A132807.P17063806310164366241.a, A132807.P12743396962450466870.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132807

/-! ## A132807.P5959644366751569403

`A120304(n)+A000051(n)`
-/

namespace A132807.P5959644366751569403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + A000051 n

end

end A132807.P5959644366751569403

namespace A132807

/-- `A120304(n)+A000051(n)` -/
def P5959644366751569403.Spec : Prop :=
  ∀ n, P5959644366751569403.a n = A132807 n

theorem P5959644366751569403.correct : P5959644366751569403.Spec := by
  intro n
  simp only [A132807, Nat.add_sub_cancel, A132807.P5959644366751569403.a, A132807.P12743396962450466870.a, A000051, A000051.P14067217022188782580.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132807

/-! ## A132807.P8881996747405611595

`A141353(n)+A057428(n)`
-/

namespace A132807.P8881996747405611595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141353 n + A057428 n

end

end A132807.P8881996747405611595

namespace A132807

/-- `A141353(n)+A057428(n)` -/
def P8881996747405611595.Spec : Prop :=
  ∀ n, P8881996747405611595.a n = A132807 n

theorem P8881996747405611595.correct : P8881996747405611595.Spec := by
  intro n
  simp only [A132807, Nat.add_sub_cancel, A132807.P8881996747405611595.a, A132807.P12743396962450466870.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, A057428, A057428.P2999489532230392221.a, A141353, A141353.P4681948747141418417.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132807

/-! ## A132807.P13015828806917794902

`A125107(n)+A083329(n)`
-/

namespace A132807.P13015828806917794902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125107 n + A083329 n

end

end A132807.P13015828806917794902

namespace A132807

/-- `A125107(n)+A083329(n)` -/
def P13015828806917794902.Spec : Prop :=
  ∀ n, P13015828806917794902.a n = A132807 n

end A132807

/-! ## A132807.P16296555972598333615

`A155559(n)+A141364(n)`
-/

namespace A132807.P16296555972598333615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A141364 n

end

end A132807.P16296555972598333615

namespace A132807

/-- `A155559(n)+A141364(n)` -/
def P16296555972598333615.Spec : Prop :=
  ∀ n, P16296555972598333615.a n = A132807 n

end A132807

/-! ## A132807.P11803710380407637202

`A246604(n)+A052944(n)`
-/

namespace A132807.P11803710380407637202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + A052944 n

end

end A132807.P11803710380407637202

namespace A132807

/-- `A246604(n)+A052944(n)` -/
def P11803710380407637202.Spec : Prop :=
  ∀ n, P11803710380407637202.a n = A132807 n

theorem P11803710380407637202.correct : P11803710380407637202.Spec := by
  intro n
  simp only [A132807, Nat.add_sub_cancel, A132807.P11803710380407637202.a, A132807.P12743396962450466870.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, A052944, A052944.P8155758912192775135.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132807

/-! ## A132807.P15287841826025452940

`A141353(n)-A057427(n)`
-/

namespace A132807.P15287841826025452940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141353 n - A057427 n

end

end A132807.P15287841826025452940

namespace A132807

/-- `A141353(n)-A057427(n)` -/
def P15287841826025452940.Spec : Prop :=
  ∀ n, P15287841826025452940.a n = A132807 n

theorem P15287841826025452940.correct : P15287841826025452940.Spec := by
  intro n
  simp only [A132807, Nat.add_sub_cancel, A132807.P15287841826025452940.a, A132807.P12743396962450466870.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, A057427, A057427.P3058147525557661423.a, A141353, A141353.P4681948747141418417.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132807

/-! ## A132807.P6186919955219103909

`A000225(n)+abs(A168491(n))`
-/

namespace A132807.P6186919955219103909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + |A168491 n|

end

end A132807.P6186919955219103909

namespace A132807

/-- `A000225(n)+abs(A168491(n))` -/
def P6186919955219103909.Spec : Prop :=
  ∀ n, P6186919955219103909.a n = A132807 n

end A132807

/-! ## A132807.P12038836200707848147

`A000108(n)+∑[A131577(n)]`
-/

namespace A132807.P12038836200707848147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132807.P12038836200707848147

namespace A132807

/-- `A000108(n)+∑[A131577(n)]` -/
def P12038836200707848147.Spec : Prop :=
  ∀ n, P12038836200707848147.a n = A132807 n

end A132807

/-! ## A132807.P1486135354654373197

`A000108(n)+A000918(n)+1`
-/

namespace A132807.P1486135354654373197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A000918 n + 1)

end

end A132807.P1486135354654373197

namespace A132807

/-- `A000108(n)+A000918(n)+1` -/
def P1486135354654373197.Spec : Prop :=
  ∀ n, P1486135354654373197.a n = A132807 n

theorem P1486135354654373197.correct : P1486135354654373197.Spec := by
  intro n
  simp only [A132807, Nat.add_sub_cancel, A132807.P1486135354654373197.a, A132807.P12743396962450466870.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, A000918, A000918.P14329454465793069288.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132807

/-! ## A132807.P15729493684464455786

`A000225(n)-A115140(n+1)`
-/

namespace A132807.P15729493684464455786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A115140 (n + 1)

end

end A132807.P15729493684464455786

namespace A132807

/-- `A000225(n)-A115140(n+1)` -/
def P15729493684464455786.Spec : Prop :=
  ∀ n, P15729493684464455786.a n = A132807 n

end A132807

/-! ## A132807.P5090909517035030777

`A000108(n)+A000051(n)-2`
-/

namespace A132807.P5090909517035030777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A000051 n - 2)

end

end A132807.P5090909517035030777

namespace A132807

/-- `A000108(n)+A000051(n)-2` -/
def P5090909517035030777.Spec : Prop :=
  ∀ n, P5090909517035030777.a n = A132807 n

theorem P5090909517035030777.correct : P5090909517035030777.Spec := by
  intro n
  simp only [A132807, Nat.add_sub_cancel, A132807.P5090909517035030777.a, A132807.P12743396962450466870.a, A000051, A000051.P14067217022188782580.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132807

/-!
# A132808: A001263 * A103451 as infinite lower triangular matrices.

The programs for A132808, the canonical program `A132808.P15259316369820012761` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132808 has offset 1).

The definition of A132808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132808.P15259316369820012761

`A000108(A130296(n+1))*A001263(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A132808

/-- `A000108(A130296(n+1))*A001263(n+1)` -/
def P15259316369820012761.Spec : Prop :=
  ∀ n, P15259316369820012761.a n = A132808 (n + 1)

theorem P15259316369820012761.correct : P15259316369820012761.Spec := by
  intro n
  simp only [A132808, Nat.add_sub_cancel]

end A132808

/-! ## A132808.P1672295170500487731

`ceil(A132787(n+1)/2)*A000108(A130296(n+1))`
-/

namespace A132808.P1672295170500487731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132787 (n + 1) : ℚ) / 2⌉ * A000108 (A130296 (n + 1)).toNat

end

end A132808.P1672295170500487731

namespace A132808

/-- `ceil(A132787(n+1)/2)*A000108(A130296(n+1))` -/
def P1672295170500487731.Spec : Prop :=
  ∀ n, P1672295170500487731.a n = A132808 (n + 1)

end A132808

/-! ## A132808.P3657269652486103511

`(A132789(n+1)-A014473(n))*A000108(A130296(n+1))`
-/

namespace A132808.P3657269652486103511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132789 (n + 1) - A014473 n) * A000108 (A130296 (n + 1)).toNat

end

end A132808.P3657269652486103511

namespace A132808

/-- `(A132789(n+1)-A014473(n))*A000108(A130296(n+1))` -/
def P3657269652486103511.Spec : Prop :=
  ∀ n, P3657269652486103511.a n = A132808 (n + 1)

end A132808

/-! ## A132808.P16611024191550012572

`(A108838(n+2)-A119308(n))*A000108(A130296(n+1))`
-/

namespace A132808.P16611024191550012572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108838 (n + 2) - A119308 n) * A000108 (A130296 (n + 1)).toNat

end

end A132808.P16611024191550012572

namespace A132808

/-- `(A108838(n+2)-A119308(n))*A000108(A130296(n+1))` -/
def P16611024191550012572.Spec : Prop :=
  ∀ n, P16611024191550012572.a n = A132808 (n + 1)

end A132808

/-!
# A132809: First prime in a sequence of n consecutive odd primes with integral arithmetic mean.

The programs for A132809, there is no canonical definition to state claims against.
-/

/-! ## A132809.P18059291706644786968

`A054892(A346697(p?[2*n+1]))`
-/

namespace A132809.P18059291706644786968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054892 (A346697 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A132809.P18059291706644786968

/-! ## A132809.P79158732749735740

`p?[A054892(n+1)%A132839(n)]`
-/

namespace A132809.P79158732749735740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054892 (n + 1)) (A132839 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132809.P79158732749735740

/-! ## A132809.P17793739727267309696

`A054892(n+2)%A171308(n+4)`
-/

namespace A132809.P17793739727267309696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054892 (n + 2)) (A171308 (n + 4))

end

end A132809.P17793739727267309696

/-! ## A132809.P5340794899651751491

`A054892(n+2)+A012245(A152307(n+1))`
-/

namespace A132809.P5340794899651751491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054892 (n + 2) + A012245 (A152307 (n + 1)).toNat

end

end A132809.P5340794899651751491

/-! ## A132809.P189153978619439961

`A135534(A346197(n+1))+A054892(n+2)`
-/

namespace A132809.P189153978619439961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (A346197 (n + 1)).toNat + A054892 (n + 2)

end

end A132809.P189153978619439961

/-!
# A132810: Smallest sum of n consecutive odd primes which is a multiple of n.

The programs for A132810, there is no canonical definition to state claims against.
-/

/-! ## A132810.P6839213962053983038

`A077388(n+1)+A000007(A000578(n))`
-/

namespace A132810.P6839213962053983038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077388 (n + 1) + A000007 (A000578 n).toNat

end

end A132810.P6839213962053983038

/-! ## A132810.P16143270458370401031

`A077388(n+1)+A010054(A015128(n))`
-/

namespace A132810.P16143270458370401031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077388 (n + 1) + A010054 (A015128 n).toNat

end

end A132810.P16143270458370401031

/-! ## A132810.P13487819162629310278

`A077388(n+1)+A000007(A027444(n))`
-/

namespace A132810.P13487819162629310278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077388 (n + 1) + A000007 (A027444 n).toNat

end

end A132810.P13487819162629310278

/-! ## A132810.P9921219812742350615

`A077388(n+1)+A007814(A000043(n+1))`
-/

namespace A132810.P9921219812742350615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077388 (n + 1) + A007814 (A000043 (n + 1)).toNat

end

end A132810.P9921219812742350615

/-! ## A132810.P11864892296250743126

`A077388(n+1)+A000007(A077356(n+1))`
-/

namespace A132810.P11864892296250743126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077388 (n + 1) + A000007 (A077356 (n + 1)).toNat

end

end A132810.P11864892296250743126

/-!
# A132811: Arithmetic mean of the n primes starting at A132809(n), summed in A132810(n).

The programs for A132811, there is no canonical definition to state claims against.
-/

/-! ## A132811.P6587741677544061109

`A132810(n+2)/(n+2)`
-/

namespace A132811.P6587741677544061109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132810 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A132811.P6587741677544061109

/-! ## A132811.P15851373182162125015

`A077389(A346697(p?[2*n+1]))`
-/

namespace A132811.P15851373182162125015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (A346697 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A132811.P15851373182162125015

/-! ## A132811.P7225092228070782565

`A077389(n+2)%A253602(n+1)`
-/

namespace A132811.P7225092228070782565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077389 (n + 2)) (A253602 (n + 1))

end

end A132811.P7225092228070782565

/-! ## A132811.P13916546208298734927

`A077389(n+2)%A052097(A016861(n))`
-/

namespace A132811.P13916546208298734927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077389 (n + 2)) (A052097 (A016861 n).toNat)

end

end A132811.P13916546208298734927

/-! ## A132811.P17419991784931444232

`A077389(A187829(n+2))`
-/

namespace A132811.P17419991784931444232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077389 (A187829 (n + 2)).toNat

end

end A132811.P17419991784931444232

/-!
# A132812: Triangle read by rows, n>=1, 1<=k<=n, T(n,k) = k*binomial(n,k)^2/(n-k+1).

The programs for A132812, the canonical program `A132812.P7225296980376146225` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132812 has offset 1).

The definition of A132812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132812.P7225296980376146225

`C(row(n)+1, col(n)+1)*C(row(n)+1, col(n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132812

/-- `C(row(n)+1, col(n)+1)*C(row(n)+1, col(n))` -/
def P7225296980376146225.Spec : Prop :=
  ∀ n, (P7225296980376146225.a n : ℤ) = A132812 (n + 1)

theorem P7225296980376146225.correct : P7225296980376146225.Spec := by
  intro n
  simp only [A132812, Nat.add_sub_cancel]

end A132812

/-! ## A132812.P5995632550381487450

`(col(n)+1)*C(row(n)+1, col(n)+1)²/(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132812.P5995632550381487450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) ^ 2 : ℚ) / ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ)

end

end A132812.P5995632550381487450

namespace A132812

/-- `(col(n)+1)*C(row(n)+1, col(n)+1)²/(row(n)+1-col(n))` -/
def P5995632550381487450.Spec : Prop :=
  ∀ n, P5995632550381487450.a n = (A132812 (n + 1) : ℚ)

end A132812

/-! ## A132812.P17203927008570383245

`(col(n)+1)*C(row(n)+1, col(n)+1)²/(row(n)+1-(col(n)+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132812.P17203927008570383245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) ^ 2 : ℚ) / ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1 : ℚ)

end

end A132812.P17203927008570383245

namespace A132812

/-- `(col(n)+1)*C(row(n)+1, col(n)+1)²/(row(n)+1-(col(n)+1)+1)` -/
def P17203927008570383245.Spec : Prop :=
  ∀ n, P17203927008570383245.a n = (A132812 (n + 1) : ℚ)

end A132812

/-! ## A132812.P15888763923162614337

`∑[char[∑[n]]]*A001263(n+1)`
-/

namespace A132812.P15888763923162614337
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001263 (n + 1)

end

end A132812.P15888763923162614337

namespace A132812

/-- `∑[char[∑[n]]]*A001263(n+1)` -/
def P15888763923162614337.Spec : Prop :=
  ∀ n, P15888763923162614337.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P12168965584967218868

`A074909(n)*A135278(n)`
-/

namespace A132812.P12168965584967218868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A135278 n

end

end A132812.P12168965584967218868

namespace A132812

/-- `A074909(n)*A135278(n)` -/
def P12168965584967218868.Spec : Prop :=
  ∀ n, P12168965584967218868.a n = A132812 (n + 1)

theorem P12168965584967218868.correct : P12168965584967218868.Spec := by
  intro n
  simp only [A132812, Nat.add_sub_cancel, A132812.P12168965584967218868.a, A132812.P7225296980376146225.a, A074909, A074909.P6402560185863182536.a, A135278, A135278.P15294612270063548765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132812

/-! ## A132812.P7489986122332542644

`A074909(n+1)*A074909(n)`
-/

namespace A132812.P7489986122332542644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A074909 n

end

end A132812.P7489986122332542644

namespace A132812

/-- `A074909(n+1)*A074909(n)` -/
def P7489986122332542644.Spec : Prop :=
  ∀ n, P7489986122332542644.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P17671077736373609961

`A118963(n+1)-A001263(n+1)`
-/

namespace A132812.P17671077736373609961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118963 (n + 1) - A001263 (n + 1)

end

end A132812.P17671077736373609961

namespace A132812

/-- `A118963(n+1)-A001263(n+1)` -/
def P17671077736373609961.Spec : Prop :=
  ∀ n, P17671077736373609961.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P12602742323997766010

`A001263(n+1)*A002024(n+1)`
-/

namespace A132812.P12602742323997766010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A002024 (n + 1)

end

end A132812.P12602742323997766010

namespace A132812

/-- `A001263(n+1)*A002024(n+1)` -/
def P12602742323997766010.Spec : Prop :=
  ∀ n, P12602742323997766010.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P8274538839343081927

`A003506(n+1)²/A003991(n+1)`
-/

namespace A132812.P8274538839343081927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) ^ 2 : ℚ) / (A003991 (n + 1) : ℚ)

end

end A132812.P8274538839343081927

namespace A132812

/-- `A003506(n+1)²/A003991(n+1)` -/
def P8274538839343081927.Spec : Prop :=
  ∀ n, P8274538839343081927.a n = (A132812 (n + 1) : ℚ)

end A132812

/-! ## A132812.P5159129745581627211

`A007318(lt[1, A074909(n)])*A074909(n)`
-/

namespace A132812.P5159129745581627211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A074909 n

end

end A132812.P5159129745581627211

namespace A132812

/-- `A007318(lt[1, A074909(n)])*A074909(n)` -/
def P5159129745581627211.Spec : Prop :=
  ∀ n, P5159129745581627211.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P16095816149420464865

`A007318(A123578(n)+n)*A135278(n)`
-/

namespace A132812.P16095816149420464865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A123578 n + (n : ℤ)).toNat * A135278 n

end

end A132812.P16095816149420464865

namespace A132812

/-- `A007318(A123578(n)+n)*A135278(n)` -/
def P16095816149420464865.Spec : Prop :=
  ∀ n, P16095816149420464865.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P14559492718795953843

`A135278(A057428(n)+n)*A135278(n)`
-/

namespace A132812.P14559492718795953843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A057428 n + (n : ℤ)).toNat * A135278 n

end

end A132812.P14559492718795953843

namespace A132812

/-- `A135278(A057428(n)+n)*A135278(n)` -/
def P14559492718795953843.Spec : Prop :=
  ∀ n, P14559492718795953843.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P3561772439165025254

`A135278(A004273(n)-n)*A135278(n)`
-/

namespace A132812.P3561772439165025254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A004273 n - (n : ℤ)).toNat * A135278 n

end

end A132812.P3561772439165025254

namespace A132812

/-- `A135278(A004273(n)-n)*A135278(n)` -/
def P3561772439165025254.Spec : Prop :=
  ∀ n, P3561772439165025254.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P10444489725850067427

`(A135278(n)-A214292(n))*A135278(n)`
-/

namespace A132812.P10444489725850067427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135278 n - A214292 n) * A135278 n

end

end A132812.P10444489725850067427

namespace A132812

/-- `(A135278(n)-A214292(n))*A135278(n)` -/
def P10444489725850067427.Spec : Prop :=
  ∀ n, P10444489725850067427.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P16088563794792328742

`A007318(A002024(n+1)+n)*A135278(n)`
-/

namespace A132812.P16088563794792328742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002024 (n + 1) + (n : ℤ)).toNat * A135278 n

end

end A132812.P16088563794792328742

namespace A132812

/-- `A007318(A002024(n+1)+n)*A135278(n)` -/
def P16088563794792328742.Spec : Prop :=
  ∀ n, P16088563794792328742.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P6457206651640562535

`A001263(n+1)*A135278(A061885(n)-n)`
-/

namespace A132812.P6457206651640562535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A135278 (A061885 n - (n : ℤ)).toNat

end

end A132812.P6457206651640562535

namespace A132812

/-- `A001263(n+1)*A135278(A061885(n)-n)` -/
def P6457206651640562535.Spec : Prop :=
  ∀ n, P6457206651640562535.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P15887318220967957841

`(A014410(n+2)-A135278(n))*A135278(n)`
-/

namespace A132812.P15887318220967957841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) - A135278 n) * A135278 n

end

end A132812.P15887318220967957841

namespace A132812

/-- `(A014410(n+2)-A135278(n))*A135278(n)` -/
def P15887318220967957841.Spec : Prop :=
  ∀ n, P15887318220967957841.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P10203194828238106793

`A001263(n+1)+A001263(n+1)*A003056(n)`
-/

namespace A132812.P10203194828238106793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + A001263 (n + 1) * A003056 n

end

end A132812.P10203194828238106793

namespace A132812

/-- `A001263(n+1)+A001263(n+1)*A003056(n)` -/
def P10203194828238106793.Spec : Prop :=
  ∀ n, P10203194828238106793.a n = A132812 (n + 1)

end A132812

/-! ## A132812.P4264214255603031562

`(A002024(n+1)*A007318(n))²/A003991(n+1)`
-/

namespace A132812.P4264214255603031562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002024 (n + 1) * A007318 n) ^ 2 : ℚ) / (A003991 (n + 1) : ℚ)

end

end A132812.P4264214255603031562

namespace A132812

/-- `(A002024(n+1)*A007318(n))²/A003991(n+1)` -/
def P4264214255603031562.Spec : Prop :=
  ∀ n, P4264214255603031562.a n = (A132812 (n + 1) : ℚ)

end A132812

/-! ## A132812.P17449492986010287907

`A001263(n+1)*A123578(n+1)`
-/

namespace A132812.P17449492986010287907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A123578 (n + 1)

end

end A132812.P17449492986010287907

namespace A132812

/-- `A001263(n+1)*A123578(n+1)` -/
def P17449492986010287907.Spec : Prop :=
  ∀ n, P17449492986010287907.a n = A132812 (n + 1)

end A132812

/-!
# A132813: Triangle read by rows: T(n,k) = binomial(n, k)*binomial(n+1, k).

The programs for A132813, the canonical program `A132813.P7242134249665991509` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132813 has offset 0).

The definition of A132813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*C(row(n)+1, col(n))` (program `A132813.P7242134249665991509`, by `A132813.P7242134249665991509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132813.P7242134249665991509

`C(row(n), col(n))*C(row(n)+1, col(n))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132813

/-- `C(row(n), col(n))*C(row(n)+1, col(n))` -/
def P7242134249665991509.Spec : Prop :=
  ∀ n, (P7242134249665991509.a n : ℤ) = A132813 n

theorem P7242134249665991509.correct : P7242134249665991509.Spec := by
  intro n
  simp only [A132813]

end A132813

/-! ## A132813.P2198889011212534960

`A367270(A007401(n+1))`
-/

namespace A132813.P2198889011212534960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367270 (A007401 (n + 1)).toNat

end

end A132813.P2198889011212534960

namespace A132813

/-- `A367270(A007401(n+1))` -/
def P2198889011212534960.Spec : Prop :=
  ∀ n, P2198889011212534960.a n = A132813 n

end A132813

/-! ## A132813.P4763164399642782313

`A007318(n)*A074909(n)`
-/

namespace A132813.P4763164399642782313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A074909 n

end

end A132813.P4763164399642782313

namespace A132813

/-- `A007318(n)*A074909(n)` -/
def P4763164399642782313.Spec : Prop :=
  ∀ n, P4763164399642782313.a n = A132813 n

theorem P4763164399642782313.correct : P4763164399642782313.Spec := by
  intro n
  simp only [A132813, Nat.add_sub_cancel, A132813.P4763164399642782313.a, A132813.P7242134249665991509.a, A007318, A007318.P11755526479805562006.a, A074909, A074909.P6402560185863182536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132813

/-! ## A132813.P17254447341474921714

`Δ[A102363(n)]*A074909(n)`
-/

namespace A132813.P17254447341474921714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A074909 n

end

end A132813.P17254447341474921714

namespace A132813

/-- `Δ[A102363(n)]*A074909(n)` -/
def P17254447341474921714.Spec : Prop :=
  ∀ n, P17254447341474921714.a n = A132813 n

end A132813

/-! ## A132813.P13223838055164068464

`A118963(n+1)-A103371(n)`
-/

namespace A132813.P13223838055164068464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118963 (n + 1) - A103371 n

end

end A132813.P13223838055164068464

namespace A132813

/-- `A118963(n+1)-A103371(n)` -/
def P13223838055164068464.Spec : Prop :=
  ∀ n, P13223838055164068464.a n = A132813 n

end A132813

/-! ## A132813.P11314267294583090340

`A028326(n)/2*A074909(n)`
-/

namespace A132813.P11314267294583090340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A074909 n : ℚ)

end

end A132813.P11314267294583090340

namespace A132813

/-- `A028326(n)/2*A074909(n)` -/
def P11314267294583090340.Spec : Prop :=
  ∀ n, P11314267294583090340.a n = (A132813 n : ℚ)

theorem P11314267294583090340.correct : P11314267294583090340.Spec := by
  intro n
  simp only [A132813, Nat.add_sub_cancel, A132813.P11314267294583090340.a, A132813.P7242134249665991509.a, A028326, A028326.P7676793339942299677.a, A074909, A074909.P6402560185863182536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132813

/-! ## A132813.P793456185427948171

`abs((2-A173740(n))*A074909(n))`
-/

namespace A132813.P793456185427948171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A173740 n) * A074909 n|

end

end A132813.P793456185427948171

namespace A132813

/-- `abs((2-A173740(n))*A074909(n))` -/
def P793456185427948171.Spec : Prop :=
  ∀ n, P793456185427948171.a n = A132813 n

end A132813

/-! ## A132813.P8017512402960807158

`A001263(n+1)*A002260(n+1)`
-/

namespace A132813.P8017512402960807158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A002260 (n + 1)

end

end A132813.P8017512402960807158

namespace A132813

/-- `A001263(n+1)*A002260(n+1)` -/
def P8017512402960807158.Spec : Prop :=
  ∀ n, P8017512402960807158.a n = A132813 n

theorem P8017512402960807158.correct : P8017512402960807158.Spec := by
  intro n
  simp only [A132813, Nat.add_sub_cancel, A132813.P8017512402960807158.a, A132813.P7242134249665991509.a, A001263, A001263.P115983165618393794.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132813

/-! ## A132813.P15793307580223337058

`(A002262(n)+1)*A001263(n+1)`
-/

namespace A132813.P15793307580223337058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A001263 (n + 1)

end

end A132813.P15793307580223337058

namespace A132813

/-- `(A002262(n)+1)*A001263(n+1)` -/
def P15793307580223337058.Spec : Prop :=
  ∀ n, P15793307580223337058.a n = A132813 n

theorem P15793307580223337058.correct : P15793307580223337058.Spec := by
  intro n
  simp only [A132813, Nat.add_sub_cancel, A132813.P15793307580223337058.a, A132813.P7242134249665991509.a, A001263, A001263.P115983165618393794.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132813

/-! ## A132813.P4787142326316340159

`A007318(comp[∑[n+1]])*A007318(n)`
-/

namespace A132813.P4787142326316340159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A007318 n

end

end A132813.P4787142326316340159

namespace A132813

/-- `A007318(comp[∑[n+1]])*A007318(n)` -/
def P4787142326316340159.Spec : Prop :=
  ∀ n, P4787142326316340159.a n = A132813 n

end A132813

/-! ## A132813.P13863876588901705986

`A074909(A056943(n))*A074909(n)`
-/

namespace A132813.P13863876588901705986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A056943 n).toNat * A074909 n

end

end A132813.P13863876588901705986

namespace A132813

/-- `A074909(A056943(n))*A074909(n)` -/
def P13863876588901705986.Spec : Prop :=
  ∀ n, P13863876588901705986.a n = A132813 n

end A132813

/-! ## A132813.P13162559012694674446

`A074909(n)*A074909(A083920(n))`
-/

namespace A132813.P13162559012694674446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A074909 (A083920 n).toNat

end

end A132813.P13162559012694674446

namespace A132813

/-- `A074909(n)*A074909(A083920(n))` -/
def P13162559012694674446.Spec : Prop :=
  ∀ n, P13162559012694674446.a n = A132813 n

end A132813

/-! ## A132813.P11922972674356656545

`A074909(n)*A074909(A271439(n))`
-/

namespace A132813.P11922972674356656545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A074909 (A271439 n).toNat

end

end A132813.P11922972674356656545

namespace A132813

/-- `A074909(n)*A074909(A271439(n))` -/
def P11922972674356656545.Spec : Prop :=
  ∀ n, P11922972674356656545.a n = A132813 n

end A132813

/-! ## A132813.P6112515560734130324

`(A285118(n)+A285116(n))*A074909(n)`
-/

namespace A132813.P6112515560734130324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A074909 n

end

end A132813.P6112515560734130324

namespace A132813

/-- `(A285118(n)+A285116(n))*A074909(n)` -/
def P6112515560734130324.Spec : Prop :=
  ∀ n, P6112515560734130324.a n = A132813 n

theorem P6112515560734130324.correct : P6112515560734130324.Spec := by
  intro n
  simp only [A132813, Nat.add_sub_cancel, A132813.P6112515560734130324.a, A132813.P7242134249665991509.a, A074909, A074909.P6402560185863182536.a, A285116, A285116.P11562393058970987769.a, A285118, A285118.P16406240334695016361.a, A007318, A007318.P11755526479805562006.a, A097805, A097805.P1755176267250853107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132813

/-! ## A132813.P2271785980014133615

`A074909(n-A003056(n))*A074909(n)`
-/

namespace A132813.P2271785980014133615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ((n : ℤ) - A003056 n).toNat * A074909 n

end

end A132813.P2271785980014133615

namespace A132813

/-- `A074909(n-A003056(n))*A074909(n)` -/
def P2271785980014133615.Spec : Prop :=
  ∀ n, P2271785980014133615.a n = A132813 n

end A132813

/-! ## A132813.P3992330740224922545

`C(A003056(n), A025581(n))*A074909(n)`
-/

namespace A132813.P3992330740224922545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A025581 n).toNat : ℤ) * A074909 n

end

end A132813.P3992330740224922545

namespace A132813

/-- `C(A003056(n), A025581(n))*A074909(n)` -/
def P3992330740224922545.Spec : Prop :=
  ∀ n, P3992330740224922545.a n = A132813 n

end A132813

/-! ## A132813.P15204840416287456635

`(A029656(n+1)-A007318(n))*A007318(n)`
-/

namespace A132813.P15204840416287456635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029656 (n + 1) - A007318 n) * A007318 n

end

end A132813.P15204840416287456635

namespace A132813

/-- `(A029656(n+1)-A007318(n))*A007318(n)` -/
def P15204840416287456635.Spec : Prop :=
  ∀ n, P15204840416287456635.a n = A132813 n

theorem P15204840416287456635.correct : P15204840416287456635.Spec := by
  intro n
  simp only [A132813, Nat.add_sub_cancel, A132813.P15204840416287456635.a, A132813.P7242134249665991509.a, A007318, A007318.P11755526479805562006.a, A029656, A029656.P13202918215397249679.a, A074909, A074909.P6402560185863182536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132813

/-! ## A132813.P7099670052563273427

`(A029656(n+1)-A074909(n))*A074909(n)`
-/

namespace A132813.P7099670052563273427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029656 (n + 1) - A074909 n) * A074909 n

end

end A132813.P7099670052563273427

namespace A132813

/-- `(A029656(n+1)-A074909(n))*A074909(n)` -/
def P7099670052563273427.Spec : Prop :=
  ∀ n, P7099670052563273427.a n = A132813 n

theorem P7099670052563273427.correct : P7099670052563273427.Spec := by
  intro n
  simp only [A132813, Nat.add_sub_cancel, A132813.P7099670052563273427.a, A132813.P7242134249665991509.a, A029656, A029656.P13202918215397249679.a, A074909, A074909.P6402560185863182536.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132813

/-! ## A132813.P5750370356590610329

`(A014410(n+2)-A135278(n))*A007318(n)`
-/

namespace A132813.P5750370356590610329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) - A135278 n) * A007318 n

end

end A132813.P5750370356590610329

namespace A132813

/-- `(A014410(n+2)-A135278(n))*A007318(n)` -/
def P5750370356590610329.Spec : Prop :=
  ∀ n, P5750370356590610329.a n = A132813 n

end A132813

/-! ## A132813.P5273622891975350561

`(A135278(n)-A206735(n+1))*A074909(n)`
-/

namespace A132813.P5273622891975350561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135278 n - A206735 (n + 1)) * A074909 n

end

end A132813.P5273622891975350561

namespace A132813

/-- `(A135278(n)-A206735(n+1))*A074909(n)` -/
def P5273622891975350561.Spec : Prop :=
  ∀ n, P5273622891975350561.a n = A132813 n

end A132813

/-!
# A132814: A007318^(-1) * A132813.

The programs for A132814, the canonical program `A132814.P17727186705927492062` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132814 has offset 0).

The definition of A132814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132814.P3824579051803098427

`C(col(n)+1, row(n)-col(n)+1)*C(row(n), col(n))`
-/

namespace A132814.P3824579051803098427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + 1) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A132814.P3824579051803098427

namespace A132814

/-- `C(col(n)+1, row(n)-col(n)+1)*C(row(n), col(n))` -/
def P3824579051803098427.Spec : Prop :=
  ∀ n, (P3824579051803098427.a n : ℤ) = A132814 n

end A132814

/-! ## A132814.P1639092699169860813

`(1-C(∑[char[∑[n]]], 2)+n)*A107131(n)`
-/

namespace A132814.P1639092699169860813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A107131 n

end

end A132814.P1639092699169860813

namespace A132814

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A107131(n)` -/
def P1639092699169860813.Spec : Prop :=
  ∀ n, P1639092699169860813.a n = A132814 n

end A132814

/-! ## A132814.P225915764813889191

`A002260(n+1)*A107131(n)`
-/

namespace A132814.P225915764813889191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A107131 n

end

end A132814.P225915764813889191

namespace A132814

/-- `A002260(n+1)*A107131(n)` -/
def P225915764813889191.Spec : Prop :=
  ∀ n, P225915764813889191.a n = A132814 n

end A132814

/-! ## A132814.P15876864300215298094

`(A002262(n)+1)*A107131(n)`
-/

namespace A132814.P15876864300215298094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A107131 n

end

end A132814.P15876864300215298094

namespace A132814

/-- `(A002262(n)+1)*A107131(n)` -/
def P15876864300215298094.Spec : Prop :=
  ∀ n, P15876864300215298094.a n = A132814 n

end A132814

/-! ## A132814.P16354857932322898053

`A051125(n+1)*A107131(n)`
-/

namespace A132814.P16354857932322898053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) * A107131 n

end

end A132814.P16354857932322898053

namespace A132814

/-- `A051125(n+1)*A107131(n)` -/
def P16354857932322898053.Spec : Prop :=
  ∀ n, P16354857932322898053.a n = A132814 n

end A132814

/-! ## A132814.P5717522504131005487

`A107131(n)*A123229(n+1)`
-/

namespace A132814.P5717522504131005487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A123229 (n + 1)

end

end A132814.P5717522504131005487

namespace A132814

/-- `A107131(n)*A123229(n+1)` -/
def P5717522504131005487.Spec : Prop :=
  ∀ n, P5717522504131005487.a n = A132814 n

end A132814

/-! ## A132814.P13124814612306630678

`A107131(n)*A131818(n+1)`
-/

namespace A132814.P13124814612306630678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A131818 (n + 1)

end

end A132814.P13124814612306630678

namespace A132814

/-- `A107131(n)*A131818(n+1)` -/
def P13124814612306630678.Spec : Prop :=
  ∀ n, P13124814612306630678.a n = A132814 n

end A132814

/-! ## A132814.P7479326637838742177

`A107131(n)*A134544(n+1)`
-/

namespace A132814.P7479326637838742177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A134544 (n + 1)

end

end A132814.P7479326637838742177

namespace A132814

/-- `A107131(n)*A134544(n+1)` -/
def P7479326637838742177.Spec : Prop :=
  ∀ n, P7479326637838742177.a n = A132814 n

end A132814

/-! ## A132814.P2685129460864582068

`A107131(n)*A134868(n+1)`
-/

namespace A132814.P2685129460864582068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A134868 (n + 1)

end

end A132814.P2685129460864582068

namespace A132814

/-- `A107131(n)*A134868(n+1)` -/
def P2685129460864582068.Spec : Prop :=
  ∀ n, P2685129460864582068.a n = A132814 n

end A132814

/-! ## A132814.P13092988509123449398

`A107131(n)*A135223(n+1)`
-/

namespace A132814.P13092988509123449398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A135223 (n + 1)

end

end A132814.P13092988509123449398

namespace A132814

/-- `A107131(n)*A135223(n+1)` -/
def P13092988509123449398.Spec : Prop :=
  ∀ n, P13092988509123449398.a n = A132814 n

end A132814

/-! ## A132814.P4794940423509795597

`A107131(n)*A143310(n+1)`
-/

namespace A132814.P4794940423509795597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A143310 (n + 1)

end

end A132814.P4794940423509795597

namespace A132814

/-- `A107131(n)*A143310(n+1)` -/
def P4794940423509795597.Spec : Prop :=
  ∀ n, P4794940423509795597.a n = A132814 n

end A132814

/-! ## A132814.P1694223757105020655

`A107131(n)*A187881(n+1)`
-/

namespace A132814.P1694223757105020655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A187881 (n + 1)

end

end A132814.P1694223757105020655

namespace A132814

/-- `A107131(n)*A187881(n+1)` -/
def P1694223757105020655.Spec : Prop :=
  ∀ n, P1694223757105020655.a n = A132814 n

end A132814

/-! ## A132814.P17727186705927492062

`A111505(n)*A205456(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132814

/-- `A111505(n)*A205456(n+1)` -/
def P17727186705927492062.Spec : Prop :=
  ∀ n, P17727186705927492062.a n = A132814 n

theorem P17727186705927492062.correct : P17727186705927492062.Spec := by
  intro n
  simp only [A132814]

end A132814

/-! ## A132814.P1562215729081820416

`A107131(n)*A384660(n+1)`
-/

namespace A132814.P1562215729081820416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A384660 (n + 1)

end

end A132814.P1562215729081820416

namespace A132814

/-- `A107131(n)*A384660(n+1)` -/
def P1562215729081820416.Spec : Prop :=
  ∀ n, P1562215729081820416.a n = A132814 n

end A132814

/-! ## A132814.P8747819890034877774

`(1-C(∑[char[∑[n]]], 2)+n)*A080159(∑[2*n]%comp[∑[n]])`
-/

namespace A132814.P8747819890034877774
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
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A080159 ((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n)

end

end A132814.P8747819890034877774

namespace A132814

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A080159(∑[2*n]%comp[∑[n]])` -/
def P8747819890034877774.Spec : Prop :=
  ∀ n, P8747819890034877774.a n = A132814 n

end A132814

/-! ## A132814.P7788352158983458479

`A107131(n)*A384147(n+1)`
-/

namespace A132814.P7788352158983458479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n * A384147 (n + 1)

end

end A132814.P7788352158983458479

namespace A132814

/-- `A107131(n)*A384147(n+1)` -/
def P7788352158983458479.Spec : Prop :=
  ∀ n, P7788352158983458479.a n = A132814 n

end A132814

/-! ## A132814.P783800138803361627

`A105868(n)/ratio[A074909(n)]`
-/

namespace A132814.P783800138803361627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105868 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A132814.P783800138803361627

namespace A132814

/-- `A105868(n)/ratio[A074909(n)]` -/
def P783800138803361627.Spec : Prop :=
  ∀ n, P783800138803361627.a n = (A132814 n : ℚ)

end A132814

/-! ## A132814.P14724355284936047673

`A000005(2^(n-C(∑[char[∑[n]]], 2)))*A107131(n)`
-/

namespace A132814.P14724355284936047673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat * A107131 n

end

end A132814.P14724355284936047673

namespace A132814

/-- `A000005(2^(n-C(∑[char[∑[n]]], 2)))*A107131(n)` -/
def P14724355284936047673.Spec : Prop :=
  ∀ n, P14724355284936047673.a n = A132814 n

end A132814

/-! ## A132814.P17054472871534824371

`A000005(A059268(n))*A107131(n)`
-/

namespace A132814.P17054472871534824371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A107131 n

end

end A132814.P17054472871534824371

namespace A132814

/-- `A000005(A059268(n))*A107131(n)` -/
def P17054472871534824371.Spec : Prop :=
  ∀ n, P17054472871534824371.a n = A132814 n

end A132814

/-!
# A132818: The matrix product A127773 * A001263 of infinite lower triangular matrices.

The programs for A132818, the canonical program `A132818.P8465170161499007808` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132818 has offset 1).

The definition of A132818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132818.P8048838670314666081

`(comp[∑[n]]-n)/2*A132812(n+1)`
-/

namespace A132818.P8048838670314666081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) / 2 * (A132812 (n + 1) : ℚ)

end

end A132818.P8048838670314666081

namespace A132818

/-- `(comp[∑[n]]-n)/2*A132812(n+1)` -/
def P8048838670314666081.Spec : Prop :=
  ∀ n, P8048838670314666081.a n = (A132818 (n + 1) : ℚ)

end A132818

/-! ## A132818.P15441735725141852734

`C(comp[∑[n]]-n, 2)*A001263(n+1)`
-/

namespace A132818.P15441735725141852734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A001263 (n + 1)

end

end A132818.P15441735725141852734

namespace A132818

/-- `C(comp[∑[n]]-n, 2)*A001263(n+1)` -/
def P15441735725141852734.Spec : Prop :=
  ∀ n, P15441735725141852734.a n = A132818 (n + 1)

end A132818

/-! ## A132818.P7090349132220145566

`C(comp[∑[n]]-n, 2)*ceil(A132787(n+1)/2)`
-/

namespace A132818.P7090349132220145566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * ⌈(A132787 (n + 1) : ℚ) / 2⌉

end

end A132818.P7090349132220145566

namespace A132818

/-- `C(comp[∑[n]]-n, 2)*ceil(A132787(n+1)/2)` -/
def P7090349132220145566.Spec : Prop :=
  ∀ n, P7090349132220145566.a n = A132818 (n + 1)

end A132818

/-! ## A132818.P2768295307228731052

`A094305(n)²/A107985(n)`
-/

namespace A132818.P2768295307228731052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094305 n ^ 2 : ℚ) / (A107985 n : ℚ)

end

end A132818.P2768295307228731052

namespace A132818

/-- `A094305(n)²/A107985(n)` -/
def P2768295307228731052.Spec : Prop :=
  ∀ n, P2768295307228731052.a n = (A132818 (n + 1) : ℚ)

end A132818

/-! ## A132818.P8465170161499007808

`A001263(n+1)*A127739(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A132818

/-- `A001263(n+1)*A127739(n+1)` -/
def P8465170161499007808.Spec : Prop :=
  ∀ n, P8465170161499007808.a n = A132818 (n + 1)

theorem P8465170161499007808.correct : P8465170161499007808.Spec := by
  intro n
  simp only [A132818, Nat.add_sub_cancel]

end A132818

/-! ## A132818.P11020268046524948363

`A103371(n)+n*A001263(n+1)`
-/

namespace A132818.P11020268046524948363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 n + (n : ℤ) * A001263 (n + 1)

end

end A132818.P11020268046524948363

namespace A132818

/-- `A103371(n)+n*A001263(n+1)` -/
def P11020268046524948363.Spec : Prop :=
  ∀ n, P11020268046524948363.a n = A132818 (n + 1)

end A132818

/-! ## A132818.P2096666814394981765

`A003506(n+1)/2*A014410(n+2)`
-/

namespace A132818.P2096666814394981765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / 2 * (A014410 (n + 2) : ℚ)

end

end A132818.P2096666814394981765

namespace A132818

/-- `A003506(n+1)/2*A014410(n+2)` -/
def P2096666814394981765.Spec : Prop :=
  ∀ n, P2096666814394981765.a n = (A132818 (n + 1) : ℚ)

end A132818

/-! ## A132818.P13947604239893729761

`(A004736(n+1)+n)*A001263(n+1)`
-/

namespace A132818.P13947604239893729761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ)) * A001263 (n + 1)

end

end A132818.P13947604239893729761

namespace A132818

/-- `(A004736(n+1)+n)*A001263(n+1)` -/
def P13947604239893729761.Spec : Prop :=
  ∀ n, P13947604239893729761.a n = A132818 (n + 1)

end A132818

/-! ## A132818.P14871667751681055247

`(A064801(n+1)-n)*A001263(n+1)`
-/

namespace A132818.P14871667751681055247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064801 (n + 1) - (n : ℤ)) * A001263 (n + 1)

end

end A132818.P14871667751681055247

namespace A132818

/-- `(A064801(n+1)-n)*A001263(n+1)` -/
def P14871667751681055247.Spec : Prop :=
  ∀ n, P14871667751681055247.a n = A132818 (n + 1)

end A132818

/-! ## A132818.P1805244585598540657

`(A004736(n+1)+n)*ceil(A174124(n)/2)`
-/

namespace A132818.P1805244585598540657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ)) * ⌈(A174124 n : ℚ) / 2⌉

end

end A132818.P1805244585598540657

namespace A132818

/-- `(A004736(n+1)+n)*ceil(A174124(n)/2)` -/
def P1805244585598540657.Spec : Prop :=
  ∀ n, P1805244585598540657.a n = A132818 (n + 1)

end A132818

/-! ## A132818.P16166476033469345392

`A000217(A003056(n)+1)*A001263(n+1)`
-/

namespace A132818.P16166476033469345392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 n + 1).toNat * A001263 (n + 1)

end

end A132818.P16166476033469345392

namespace A132818

/-- `A000217(A003056(n)+1)*A001263(n+1)` -/
def P16166476033469345392.Spec : Prop :=
  ∀ n, P16166476033469345392.a n = A132818 (n + 1)

end A132818

/-! ## A132818.P11825573339614860774

`A127777(n+1)/A127778(n+1)*A132819(n+1)`
-/

namespace A132818.P11825573339614860774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127777 (n + 1) : ℚ) / (A127778 (n + 1) : ℚ) * (A132819 (n + 1) : ℚ)

end

end A132818.P11825573339614860774

namespace A132818

/-- `A127777(n+1)/A127778(n+1)*A132819(n+1)` -/
def P11825573339614860774.Spec : Prop :=
  ∀ n, P11825573339614860774.a n = (A132818 (n + 1) : ℚ)

end A132818

/-! ## A132818.P9033864111029352677

`A001263(n+1)*A057944(comp[∑[n]])`
-/

namespace A132818.P9033864111029352677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A057944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A132818.P9033864111029352677

namespace A132818

/-- `A001263(n+1)*A057944(comp[∑[n]])` -/
def P9033864111029352677.Spec : Prop :=
  ∀ n, P9033864111029352677.a n = A132818 (n + 1)

end A132818

/-! ## A132818.P5301684845169785397

`A174116((n-comp[∑[n]])²-n)`
-/

namespace A132818.P5301684845169785397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174116 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A132818.P5301684845169785397

namespace A132818

/-- `A174116((n-comp[∑[n]])²-n)` -/
def P5301684845169785397.Spec : Prop :=
  ∀ n, P5301684845169785397.a n = A132818 (n + 1)

end A132818

/-! ## A132818.P716875158933302743

`A173881(lt[1, A152714(n)])/2`
-/

namespace A132818.P716875158933302743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A132818.P716875158933302743

namespace A132818

/-- `A173881(lt[1, A152714(n)])/2` -/
def P716875158933302743.Spec : Prop :=
  ∀ n, P716875158933302743.a n = (A132818 (n + 1) : ℚ)

end A132818

/-! ## A132818.P2879543465828009918

`A173881(lt[1, A173881(n)])/2`
-/

namespace A132818.P2879543465828009918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173881 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A132818.P2879543465828009918

namespace A132818

/-- `A173881(lt[1, A173881(n)])/2` -/
def P2879543465828009918.Spec : Prop :=
  ∀ n, P2879543465828009918.a n = (A132818 (n + 1) : ℚ)

end A132818

/-!
# A132819: A001263 * A127773.

The programs for A132819, the canonical program `A132819.P1713287214340186641` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132819 has offset 1).

The definition of A132819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132819.P10819829748327198642

`A074909(n)/2*A128710(n)`
-/

namespace A132819.P10819829748327198642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / 2 * (A128710 n : ℚ)

end

end A132819.P10819829748327198642

namespace A132819

/-- `A074909(n)/2*A128710(n)` -/
def P10819829748327198642.Spec : Prop :=
  ∀ n, P10819829748327198642.a n = (A132819 (n + 1) : ℚ)

end A132819

/-! ## A132819.P1713287214340186641

`(1-A049780(n)+n)*A001263(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A132819

/-- `(1-A049780(n)+n)*A001263(n+1)` -/
def P1713287214340186641.Spec : Prop :=
  ∀ n, P1713287214340186641.a n = A132819 (n + 1)

theorem P1713287214340186641.correct : P1713287214340186641.Spec := by
  intro n
  simp only [A132819, Nat.add_sub_cancel]

end A132819

/-! ## A132819.P12418838517761080456

`A000217(1-C(∑[char[∑[n]]], 2)+n)*A001263(n+1)`
-/

namespace A132819.P12418838517761080456
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A001263 (n + 1)

end

end A132819.P12418838517761080456

namespace A132819

/-- `A000217(1-C(∑[char[∑[n]]], 2)+n)*A001263(n+1)` -/
def P12418838517761080456.Spec : Prop :=
  ∀ n, P12418838517761080456.a n = A132819 (n + 1)

end A132819

/-! ## A132819.P9338787574925594089

`A001263(n+1)*A080036(A112367(n))`
-/

namespace A132819.P9338787574925594089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A080036 (A112367 n).toNat

end

end A132819.P9338787574925594089

namespace A132819

/-- `A001263(n+1)*A080036(A112367(n))` -/
def P9338787574925594089.Spec : Prop :=
  ∀ n, P9338787574925594089.a n = A132819 (n + 1)

end A132819

/-! ## A132819.P5595148265070290651

`A000217(A002260(n+1))*A001263(n+1)`
-/

namespace A132819.P5595148265070290651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A001263 (n + 1)

end

end A132819.P5595148265070290651

namespace A132819

/-- `A000217(A002260(n+1))*A001263(n+1)` -/
def P5595148265070290651.Spec : Prop :=
  ∀ n, P5595148265070290651.a n = A132819 (n + 1)

end A132819

/-! ## A132819.P6875309053250773432

`A007318(A007401(n+1))/2*A128710(n)`
-/

namespace A132819.P6875309053250773432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (A007401 (n + 1)).toNat : ℚ) / 2 * (A128710 n : ℚ)

end

end A132819.P6875309053250773432

namespace A132819

/-- `A007318(A007401(n+1))/2*A128710(n)` -/
def P6875309053250773432.Spec : Prop :=
  ∀ n, P6875309053250773432.a n = (A132819 (n + 1) : ℚ)

end A132819

/-! ## A132819.P16968496778319262368

`A001263(n+1)*A112367(comp[∑[n]])`
-/

namespace A132819.P16968496778319262368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A112367 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A132819.P16968496778319262368

namespace A132819

/-- `A001263(n+1)*A112367(comp[∑[n]])` -/
def P16968496778319262368.Spec : Prop :=
  ∀ n, P16968496778319262368.a n = A132819 (n + 1)

end A132819

/-! ## A132819.P5215022050529522999

`A001263(n+1)*A007425(A059268(n))`
-/

namespace A132819.P5215022050529522999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A007425 (A059268 n).toNat

end

end A132819.P5215022050529522999

namespace A132819

/-- `A001263(n+1)*A007425(A059268(n))` -/
def P5215022050529522999.Spec : Prop :=
  ∀ n, P5215022050529522999.a n = A132819 (n + 1)

end A132819

/-!
# A132820: Row sums of triangle A132819.

The programs for A132820, the canonical program `A132820.P14560168823165977584` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132820 has offset 1).

The definition of A132820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132820.P2019180427950169269

`∏[4-2/(n+1)]/2+n*record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=-1`
-/

namespace A132820.P2019180427950169269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 + (n : ℚ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A132820.P2019180427950169269

namespace A132820

/-- `∏[4-2/(n+1)]/2+n*record[a(n-1)/(floor(n/2)/n-1)]` -/
def P2019180427950169269.Spec : Prop :=
  ∀ n, P2019180427950169269.a n = (A132820 (n + 1) : ℚ)

end A132820

/-! ## A132820.P14560168823165977584

`(∑[n+2]-1)*A000108(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A132820

/-- `(∑[n+2]-1)*A000108(n)` -/
def P14560168823165977584.Spec : Prop :=
  ∀ n, P14560168823165977584.a n = A132820 (n + 1)

theorem P14560168823165977584.correct : P14560168823165977584.Spec := by
  intro n
  simp only [A132820, Nat.add_sub_cancel]

end A132820

/-! ## A132820.P6066404179722838325

`abs((∑[n+2]-1)*A168491(n))`
-/

namespace A132820.P6066404179722838325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A168491 n|

end

end A132820.P6066404179722838325

namespace A132820

/-- `abs((∑[n+2]-1)*A168491(n))` -/
def P6066404179722838325.Spec : Prop :=
  ∀ n, P6066404179722838325.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P17083653868568883268

`(∑[n+2]-1)*A120588(n+1)`
-/

namespace A132820.P17083653868568883268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A120588 (n + 1)

end

end A132820.P17083653868568883268

namespace A132820

/-- `(∑[n+2]-1)*A120588(n+1)` -/
def P17083653868568883268.Spec : Prop :=
  ∀ n, P17083653868568883268.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P6831282137400877666

`(∑[n+2]-1)*A028303(2*n)`
-/

namespace A132820.P6831282137400877666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A028303 (2 * n)

end

end A132820.P6831282137400877666

namespace A132820

/-- `(∑[n+2]-1)*A028303(2*n)` -/
def P6831282137400877666.Spec : Prop :=
  ∀ n, P6831282137400877666.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P8829198785785229191

`(∑[n+2]-1)*A028304(2*n)`
-/

namespace A132820.P8829198785785229191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A028304 (2 * n)

end

end A132820.P8829198785785229191

namespace A132820

/-- `(∑[n+2]-1)*A028304(2*n)` -/
def P8829198785785229191.Spec : Prop :=
  ∀ n, P8829198785785229191.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P10271596497885205270

`(∑[n+2]-1)*A126120(2*n)`
-/

namespace A132820.P10271596497885205270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A126120 (2 * n)

end

end A132820.P10271596497885205270

namespace A132820

/-- `(∑[n+2]-1)*A126120(2*n)` -/
def P10271596497885205270.Spec : Prop :=
  ∀ n, P10271596497885205270.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P6743885919135053511

`(∑[n+2]-1)*A329687(3*n)`
-/

namespace A132820.P6743885919135053511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A329687 (3 * n)

end

end A132820.P6743885919135053511

namespace A132820

/-- `(∑[n+2]-1)*A329687(3*n)` -/
def P6743885919135053511.Spec : Prop :=
  ∀ n, P6743885919135053511.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P18040400308367996148

`(A246604(n)+n)*(∑[n+2]-1)`
-/

namespace A132820.P18040400308367996148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246604 n + (n : ℤ)) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A132820.P18040400308367996148

namespace A132820

/-- `(A246604(n)+n)*(∑[n+2]-1)` -/
def P18040400308367996148.Spec : Prop :=
  ∀ n, P18040400308367996148.a n = A132820 (n + 1)

theorem P18040400308367996148.correct : P18040400308367996148.Spec := by
  intro n
  simp only [A132820, Nat.add_sub_cancel, A132820.P18040400308367996148.f1, A132820.P18040400308367996148.a, A132820.P14560168823165977584.f1, A132820.P14560168823165977584.a, A000108, A000108.P17551949696095299361.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132820

/-! ## A132820.P642677763732154674

`(∑[n+2]-1)*A089408(Δ[n²])`
-/

namespace A132820.P642677763732154674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A089408 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A132820.P642677763732154674

namespace A132820

/-- `(∑[n+2]-1)*A089408(Δ[n²])` -/
def P642677763732154674.Spec : Prop :=
  ∀ n, P642677763732154674.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P13996821908499079183

`(∑[n+2]-1)*A097331(Δ[n²])`
-/

namespace A132820.P13996821908499079183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A097331 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A132820.P13996821908499079183

namespace A132820

/-- `(∑[n+2]-1)*A097331(Δ[n²])` -/
def P13996821908499079183.Spec : Prop :=
  ∀ n, P13996821908499079183.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P13330085224797917493

`(∑[n+2]-1)*abs(A115140(n+1))`
-/

namespace A132820.P13330085224797917493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * |A115140 (n + 1)|

end

end A132820.P13330085224797917493

namespace A132820

/-- `(∑[n+2]-1)*abs(A115140(n+1))` -/
def P13330085224797917493.Spec : Prop :=
  ∀ n, P13330085224797917493.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P18338650174827361714

`(∑[n+2]-1)*Δ[A166588(2*n)]`
-/

namespace A132820.P18338650174827361714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (f2 (n + 1) - f2 n)

end

end A132820.P18338650174827361714

namespace A132820

/-- `(∑[n+2]-1)*Δ[A166588(2*n)]` -/
def P18338650174827361714.Spec : Prop :=
  ∀ n, P18338650174827361714.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P10334183762369417960

`(∑[n+2]-1)*∑{d}[n+1, A034742(#)]`
-/

namespace A132820.P10334183762369417960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (∑ d ∈ Nat.divisors (f2 n), A034742 d)

end

end A132820.P10334183762369417960

namespace A132820

/-- `(∑[n+2]-1)*∑{d}[n+1, A034742(#)]` -/
def P10334183762369417960.Spec : Prop :=
  ∀ n, P10334183762369417960.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P2620709282248744482

`(∑[n+2]-1)*abs(A090192(2*n+1))`
-/

namespace A132820.P2620709282248744482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * |A090192 (2 * n + 1)|

end

end A132820.P2620709282248744482

namespace A132820

/-- `(∑[n+2]-1)*abs(A090192(2*n+1))` -/
def P2620709282248744482.Spec : Prop :=
  ∀ n, P2620709282248744482.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P14897404107643888934

`(∑[n+2]-1)*abs(A105523(2*n+1))`
-/

namespace A132820.P14897404107643888934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * |A105523 (2 * n + 1)|

end

end A132820.P14897404107643888934

namespace A132820

/-- `(∑[n+2]-1)*abs(A105523(2*n+1))` -/
def P14897404107643888934.Spec : Prop :=
  ∀ n, P14897404107643888934.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P13708381196697112196

`A289719(n)+A010763(n)`
-/

namespace A132820.P13708381196697112196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289719 n + A010763 n

end

end A132820.P13708381196697112196

namespace A132820

/-- `A289719(n)+A010763(n)` -/
def P13708381196697112196.Spec : Prop :=
  ∀ n, P13708381196697112196.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P16136210261381130859

`A277924(n)+A139262(n)`
-/

namespace A132820.P16136210261381130859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277924 n + A139262 n

end

end A132820.P16136210261381130859

namespace A132820

/-- `A277924(n)+A139262(n)` -/
def P16136210261381130859.Spec : Prop :=
  ∀ n, P16136210261381130859.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P12968353916495885294

`A000108(n)*A034856(n+1)`
-/

namespace A132820.P12968353916495885294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A034856 (n + 1)

end

end A132820.P12968353916495885294

namespace A132820

/-- `A000108(n)*A034856(n+1)` -/
def P12968353916495885294.Spec : Prop :=
  ∀ n, P12968353916495885294.a n = A132820 (n + 1)

end A132820

/-! ## A132820.P5116066042289070813

`A000108(n)*A101881(2*n)`
-/

namespace A132820.P5116066042289070813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A101881 (2 * n)

end

end A132820.P5116066042289070813

namespace A132820

/-- `A000108(n)*A101881(2*n)` -/
def P5116066042289070813.Spec : Prop :=
  ∀ n, P5116066042289070813.a n = A132820 (n + 1)

end A132820

/-!
# A132823: Triangle read by rows: T(n,k) = binomial(n,k) - 2 for 0 < k < n, with T(n,0) = T(n,n) = 1.

The programs for A132823, the canonical program `A132823.P2002679263485787100` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132823 has offset 0).

The definition of A132823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132823.P2002679263485787100

`abs(1-A014473(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A132823

/-- `abs(1-A014473(n))` -/
def P2002679263485787100.Spec : Prop :=
  ∀ n, P2002679263485787100.a n = A132823 n

theorem P2002679263485787100.correct : P2002679263485787100.Spec := by
  intro n
  simp only [A132823]

end A132823

/-! ## A132823.P3516548434863018531

`abs(2-A007318(n))`
-/

namespace A132823.P3516548434863018531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A007318 n|

end

end A132823.P3516548434863018531

namespace A132823

/-- `abs(2-A007318(n))` -/
def P3516548434863018531.Spec : Prop :=
  ∀ n, P3516548434863018531.a n = A132823 n

theorem P3516548434863018531.correct : P3516548434863018531.Spec := by
  intro n
  simp only [A132823, Nat.add_sub_cancel, A132823.P3516548434863018531.a, A132823.P2002679263485787100.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132823

/-! ## A132823.P13464521454081192022

`abs(2-abs(A108086(n)))`
-/

namespace A132823.P13464521454081192022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A108086 n|)|

end

end A132823.P13464521454081192022

namespace A132823

/-- `abs(2-abs(A108086(n)))` -/
def P13464521454081192022.Spec : Prop :=
  ∀ n, P13464521454081192022.a n = A132823 n

end A132823

/-! ## A132823.P17300887343688599416

`abs(2-abs(A130595(n)))`
-/

namespace A132823.P17300887343688599416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A130595 n|)|

end

end A132823.P17300887343688599416

namespace A132823

/-- `abs(2-abs(A130595(n)))` -/
def P17300887343688599416.Spec : Prop :=
  ∀ n, P17300887343688599416.a n = A132823 n

end A132823

/-! ## A132823.P6757627287019838421

`abs(2-sqrt(A008459(n)))`
-/

namespace A132823.P6757627287019838421
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |2 - Real.sqrt (A008459 n : ℝ)|

end

end A132823.P6757627287019838421

namespace A132823

/-- `abs(2-sqrt(A008459(n)))` -/
def P6757627287019838421.Spec : Prop :=
  ∀ n, P6757627287019838421.a n = (A132823 n : ℝ)

end A132823

/-! ## A132823.P50088352702397091

`abs(2-Δ[A102363(n)])`
-/

namespace A132823.P50088352702397091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A132823.P50088352702397091

namespace A132823

/-- `abs(2-Δ[A102363(n)])` -/
def P50088352702397091.Spec : Prop :=
  ∀ n, P50088352702397091.a n = A132823 n

end A132823

/-! ## A132823.P1601838859644644361

`abs(2-A028326(n)/2)`
-/

namespace A132823.P1601838859644644361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |2 - (A028326 n : ℚ) / 2|

end

end A132823.P1601838859644644361

namespace A132823

/-- `abs(2-A028326(n)/2)` -/
def P1601838859644644361.Spec : Prop :=
  ∀ n, P1601838859644644361.a n = (A132823 n : ℚ)

theorem P1601838859644644361.correct : P1601838859644644361.Spec := by
  intro n
  simp only [A132823, Nat.add_sub_cancel, A132823.P1601838859644644361.a, A132823.P2002679263485787100.a, A014473, A014473.P9301799580602651200.a, A028326, A028326.P7676793339942299677.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132823

/-! ## A132823.P5270364765887957556

`abs(4-A173741(n))-2`
-/

namespace A132823.P5270364765887957556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A173741 n| - 2

end

end A132823.P5270364765887957556

namespace A132823

/-- `abs(4-A173741(n))-2` -/
def P5270364765887957556.Spec : Prop :=
  ∀ n, P5270364765887957556.a n = A132823 n

end A132823

/-! ## A132823.P16703762745509162835

`A132729(n)-A014473(n)`
-/

namespace A132823.P16703762745509162835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132729 n - A014473 n

end

end A132823.P16703762745509162835

namespace A132823

/-- `A132729(n)-A014473(n)` -/
def P16703762745509162835.Spec : Prop :=
  ∀ n, P16703762745509162835.a n = A132823 n

end A132823

/-! ## A132823.P4945092068237158250

`A028326(n)-A173740(n)`
-/

namespace A132823.P4945092068237158250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A173740 n

end

end A132823.P4945092068237158250

namespace A132823

/-- `A028326(n)-A173740(n)` -/
def P4945092068237158250.Spec : Prop :=
  ∀ n, P4945092068237158250.a n = A132823 n

end A132823

/-! ## A132823.P3879519940679550212

`A131060(n)%A028326(n)`
-/

namespace A132823.P3879519940679550212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131060 n) (A028326 n)

end

end A132823.P3879519940679550212

namespace A132823

/-- `A131060(n)%A028326(n)` -/
def P3879519940679550212.Spec : Prop :=
  ∀ n, P3879519940679550212.a n = A132823 n

end A132823

/-! ## A132823.P12794984415479971712

`A132729(n)+1-A007318(n)`
-/

namespace A132823.P12794984415479971712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132729 n + (1 - A007318 n)

end

end A132823.P12794984415479971712

namespace A132823

/-- `A132729(n)+1-A007318(n)` -/
def P12794984415479971712.Spec : Prop :=
  ∀ n, P12794984415479971712.a n = A132823 n

end A132823

/-! ## A132823.P3233696198986410616

`A103451(n)+A132044(n)-1`
-/

namespace A132823.P3233696198986410616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132044 n - 1)

end

end A132823.P3233696198986410616

namespace A132823

/-- `A103451(n)+A132044(n)-1` -/
def P3233696198986410616.Spec : Prop :=
  ∀ n, P3233696198986410616.a n = A132823 n

end A132823

/-! ## A132823.P15893976835509787509

`A132731(n)+1-A132735(n)`
-/

namespace A132823.P15893976835509787509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132731 n + (1 - A132735 n)

end

end A132823.P15893976835509787509

namespace A132823

/-- `A132731(n)+1-A132735(n)` -/
def P15893976835509787509.Spec : Prop :=
  ∀ n, P15893976835509787509.a n = A132823 n

end A132823

/-! ## A132823.P2318272940403595988

`A132044(n)+1-A154325(n)`
-/

namespace A132823.P2318272940403595988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (1 - A154325 n)

end

end A132823.P2318272940403595988

namespace A132823

/-- `A132044(n)+1-A154325(n)` -/
def P2318272940403595988.Spec : Prop :=
  ∀ n, P2318272940403595988.a n = A132823 n

end A132823

/-! ## A132823.P15019315678614145590

`2*A132044(n)-A007318(n)`
-/

namespace A132823.P15019315678614145590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132044 n - A007318 n

end

end A132823.P15019315678614145590

namespace A132823

/-- `2*A132044(n)-A007318(n)` -/
def P15019315678614145590.Spec : Prop :=
  ∀ n, P15019315678614145590.a n = A132823 n

end A132823

/-! ## A132823.P12029539237965079624

`2*A007318(n)-A173740(n)`
-/

namespace A132823.P12029539237965079624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A173740 n

end

end A132823.P12029539237965079624

namespace A132823

/-- `2*A007318(n)-A173740(n)` -/
def P12029539237965079624.Spec : Prop :=
  ∀ n, P12029539237965079624.a n = A132823 n

end A132823

/-! ## A132823.P11922654531273386908

`2*A132735(n)-A173741(n)`
-/

namespace A132823.P11922654531273386908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132735 n - A173741 n

end

end A132823.P11922654531273386908

namespace A132823

/-- `2*A132735(n)-A173741(n)` -/
def P11922654531273386908.Spec : Prop :=
  ∀ n, P11922654531273386908.a n = A132823 n

end A132823

/-! ## A132823.P7084315837225810002

`2*A173740(n)-A173742(n)`
-/

namespace A132823.P7084315837225810002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173740 n - A173742 n

end

end A132823.P7084315837225810002

namespace A132823

/-- `2*A173740(n)-A173742(n)` -/
def P7084315837225810002.Spec : Prop :=
  ∀ n, P7084315837225810002.a n = A132823 n

theorem P7084315837225810002.correct : P7084315837225810002.Spec := by
  intro n
  simp only [A132823, Nat.add_sub_cancel, A132823.P7084315837225810002.a, A132823.P2002679263485787100.a, A014473, A014473.P9301799580602651200.a, A173740, A173740.P17450600128773935956.a, A173742, A173742.P18054629541867481187.a, A007318, A007318.P11755526479805562006.a, A132737, A132737.P15042610219091654609.a, A132046, A132046.P838827158964499590.a, A028326, A028326.P7676793339942299677.a, A103451, A103451.P2977452712529643699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132823

/-! ## A132823.P8413219196364521896

`gcd(1-A014473(n), A103452(n))`
-/

namespace A132823.P8413219196364521896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A014473 n) (A103452 n)

end

end A132823.P8413219196364521896

namespace A132823

/-- `gcd(1-A014473(n), A103452(n))` -/
def P8413219196364521896.Spec : Prop :=
  ∀ n, (P8413219196364521896.a n : ℤ) = A132823 n

end A132823

/-!
# A132824: Row sums of triangle A132823.

The programs for A132824, the canonical program `A132824.P1174480420676348349` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132824 has offset 0).

The definition of A132824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132824.P1174480420676348349

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132824

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P1174480420676348349.Spec : Prop :=
  ∀ n, P1174480420676348349.a n = A132824 n

theorem P1174480420676348349.correct : P1174480420676348349.Spec := by
  intro n
  simp only [A132824]

end A132824

/-! ## A132824.P5444155679567236101

`∑[abs(2-ceil(2^(n-1)))]`
-/

namespace A132824.P5444155679567236101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132824.P5444155679567236101

namespace A132824

/-- `∑[abs(2-ceil(2^(n-1)))]` -/
def P5444155679567236101.Spec : Prop :=
  ∀ n, P5444155679567236101.a n = A132824 n

end A132824

/-! ## A132824.P17490774185434640696

`ogf((1-2x-x^2+4x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A132824.P17490774185434640696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, 4] [1, -4, 5, -2] n

end

end A132824.P17490774185434640696

namespace A132824

/-- `ogf((1-2x-x^2+4x^3)/(1-4x+5x^2-2x^3))` -/
def P17490774185434640696.Spec : Prop :=
  ∀ n, P17490774185434640696.a n = A132824 n

end A132824

/-! ## A132824.P16316786047983839047

`xor(1, 2^n-2*n)+1`
-/

namespace A132824.P16316786047983839047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((2 ^ n : ℤ) - (2 * n : ℤ)) + 1

end

end A132824.P16316786047983839047

namespace A132824

/-- `xor(1, 2^n-2*n)+1` -/
def P16316786047983839047.Spec : Prop :=
  ∀ n, P16316786047983839047.a n = A132824 n

end A132824

/-! ## A132824.P1967670561981808406

`1-(2*n-xor(1, 2^n))`
-/

namespace A132824.P1967670561981808406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * n : ℤ) - (Nat.xor 1 (2 ^ n) : ℤ))

end

end A132824.P1967670561981808406

namespace A132824

/-- `1-(2*n-xor(1, 2^n))` -/
def P1967670561981808406.Spec : Prop :=
  ∀ n, P1967670561981808406.a n = A132824 n

end A132824

/-! ## A132824.P6870296365343396775

`2*(a(n-1)-3+n)` with `a(0)=1, a(1)=2`
-/

namespace A132824.P6870296365343396775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - 3 + (n : ℤ))

end

end A132824.P6870296365343396775

namespace A132824

/-- `2*(a(n-1)-3+n)` -/
def P6870296365343396775.Spec : Prop :=
  ∀ n, P6870296365343396775.a n = A132824 n

end A132824

/-! ## A132824.P6573196806038764665

`2*(a(n-1)-(3-n))` with `a(0)=1, a(1)=2`
-/

namespace A132824.P6573196806038764665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - (3 - (n : ℤ)))

end

end A132824.P6573196806038764665

namespace A132824

/-- `2*(a(n-1)-(3-n))` -/
def P6573196806038764665.Spec : Prop :=
  ∀ n, P6573196806038764665.a n = A132824 n

end A132824

/-! ## A132824.P12202868505409950677

`A171449(n)-2*(n-1)`
-/

namespace A132824.P12202868505409950677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 n - 2 * ((n : ℤ) - 1)

end

end A132824.P12202868505409950677

namespace A132824

/-- `A171449(n)-2*(n-1)` -/
def P12202868505409950677.Spec : Prop :=
  ∀ n, P12202868505409950677.a n = A132824 n

end A132824

/-! ## A132824.P5739655440258460774

`a(n-1)-A122958(n)` with `a(0)=1, a(1)=2`
-/

namespace A132824.P5739655440258460774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - A122958 n

end

end A132824.P5739655440258460774

namespace A132824

/-- `a(n-1)-A122958(n)` -/
def P5739655440258460774.Spec : Prop :=
  ∀ n, P5739655440258460774.a n = A132824 n

end A132824

/-! ## A132824.P15543551680084237532

`A000051(n)-abs(1-2*n)`
-/

namespace A132824.P15543551680084237532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - |1 - (2 * n : ℤ)|

end

end A132824.P15543551680084237532

namespace A132824

/-- `A000051(n)-abs(1-2*n)` -/
def P15543551680084237532.Spec : Prop :=
  ∀ n, P15543551680084237532.a n = A132824 n

end A132824

/-! ## A132824.P4815606127867446075

`∑[A239678(n+1)]-(n+3)`
-/

namespace A132824.P4815606127867446075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A132824.P4815606127867446075

namespace A132824

/-- `∑[A239678(n+1)]-(n+3)` -/
def P4815606127867446075.Spec : Prop :=
  ∀ n, P4815606127867446075.a n = A132824 n

end A132824

/-! ## A132824.P18232453730733507640

`A000918(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A132824.P18232453730733507640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000918 (n - 1) + a (n - 1)

end

end A132824.P18232453730733507640

namespace A132824

/-- `A000918(n-1)+a(n-1)` -/
def P18232453730733507640.Spec : Prop :=
  ∀ n, P18232453730733507640.a n = A132824 n

end A132824

/-! ## A132824.P7090347873236859842

`A131577(n)+a(n-1)-2` with `a(0)=1, a(1)=2`
-/

namespace A132824.P7090347873236859842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A131577 n + (a (n - 1) - 2)

end

end A132824.P7090347873236859842

namespace A132824

/-- `A131577(n)+a(n-1)-2` -/
def P7090347873236859842.Spec : Prop :=
  ∀ n, P7090347873236859842.a n = A132824 n

end A132824

/-! ## A132824.P7085226278951092923

`A000079(n)-abs(1-n)+1-n`
-/

namespace A132824.P7085226278951092923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - |1 - (n : ℤ)| + 1 - (n : ℤ)

end

end A132824.P7085226278951092923

namespace A132824

/-- `A000079(n)-abs(1-n)+1-n` -/
def P7085226278951092923.Spec : Prop :=
  ∀ n, P7085226278951092923.a n = A132824 n

end A132824

/-! ## A132824.P2516066850430304359

`A147678(A004271(n+1))`
-/

namespace A132824.P2516066850430304359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147678 (A004271 (n + 1)).toNat

end

end A132824.P2516066850430304359

namespace A132824

/-- `A147678(A004271(n+1))` -/
def P2516066850430304359.Spec : Prop :=
  ∀ n, P2516066850430304359.a n = A132824 n

end A132824

/-! ## A132824.P16706385086543629199

`A147678(A004278(n+1))`
-/

namespace A132824.P16706385086543629199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147678 (A004278 (n + 1)).toNat

end

end A132824.P16706385086543629199

namespace A132824

/-- `A147678(A004278(n+1))` -/
def P16706385086543629199.Spec : Prop :=
  ∀ n, P16706385086543629199.a n = A132824 n

end A132824

/-! ## A132824.P3720563102321230531

`A147678(A300576(n+1))`
-/

namespace A132824.P3720563102321230531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147678 (A300576 (n + 1)).toNat

end

end A132824.P3720563102321230531

namespace A132824

/-- `A147678(A300576(n+1))` -/
def P3720563102321230531.Spec : Prop :=
  ∀ n, P3720563102321230531.a n = A132824 n

end A132824

/-! ## A132824.P2649537313088501800

`A122553(n)+A070313(n)`
-/

namespace A132824.P2649537313088501800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + A070313 n

end

end A132824.P2649537313088501800

namespace A132824

/-- `A122553(n)+A070313(n)` -/
def P2649537313088501800.Spec : Prop :=
  ∀ n, P2649537313088501800.a n = A132824 n

end A132824

/-! ## A132824.P3237061601171632541

`A239229(n)+A171449(n)`
-/

namespace A132824.P3237061601171632541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239229 n + A171449 n

end

end A132824.P3237061601171632541

namespace A132824

/-- `A239229(n)+A171449(n)` -/
def P3237061601171632541.Spec : Prop :=
  ∀ n, P3237061601171632541.a n = A132824 n

end A132824

/-! ## A132824.P4842668687046002026

`A083318(n)-A004273(n)`
-/

namespace A132824.P4842668687046002026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n - A004273 n

end

end A132824.P4842668687046002026

namespace A132824

/-- `A083318(n)-A004273(n)` -/
def P4842668687046002026.Spec : Prop :=
  ∀ n, P4842668687046002026.a n = A132824 n

end A132824

/-!
# A132825: Triangle read by rows: zeros except for right border which are the partition numbers A000041.

The programs for A132825, there is no canonical definition to state claims against.
-/

/-! ## A132825.P11794214284333382960

`char[∑[n-1]]*A256193(n+1)`
-/

namespace A132825.P11794214284333382960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A256193 (n + 1)

end

end A132825.P11794214284333382960

/-! ## A132825.P12000529671721430104

`Δ[A000070(A003056(n))]`
-/

namespace A132825.P12000529671721430104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132825.P12000529671721430104

/-! ## A132825.P14739341772000609075

`A174712(A014132(n+1))`
-/

namespace A132825.P14739341772000609075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174712 (A014132 (n + 1)).toNat

end

end A132825.P14739341772000609075

/-! ## A132825.P12848427438771095309

`A174712(A047839(n+1))`
-/

namespace A132825.P12848427438771095309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174712 (A047839 (n + 1)).toNat

end

end A132825.P12848427438771095309

/-! ## A132825.P4300655562339903912

`A174712(A181133(n+1))`
-/

namespace A132825.P4300655562339903912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174712 (A181133 (n + 1)).toNat

end

end A132825.P4300655562339903912

/-! ## A132825.P6741056014163505398

`A174712(A183572(n+1))`
-/

namespace A132825.P6741056014163505398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174712 (A183572 (n + 1)).toNat

end

end A132825.P6741056014163505398

/-! ## A132825.P4478606799567777712

`A174712(A183573(n+1))`
-/

namespace A132825.P4478606799567777712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174712 (A183573 (n + 1)).toNat

end

end A132825.P4478606799567777712

/-! ## A132825.P17602916083551414247

`A023531(n)*A132993(n)`
-/

namespace A132825.P17602916083551414247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A132993 n

end

end A132825.P17602916083551414247

/-! ## A132825.P1524092387370724843

`A023531(n)*A026820(n+1)`
-/

namespace A132825.P1524092387370724843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A026820 (n + 1)

end

end A132825.P1524092387370724843

/-! ## A132825.P2705516113296246971

`A023531(n)*A054225(n+1)`
-/

namespace A132825.P2705516113296246971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A054225 (n + 1)

end

end A132825.P2705516113296246971

/-! ## A132825.P9278987322112389551

`A023531(n)*A055375(n+1)`
-/

namespace A132825.P9278987322112389551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A055375 (n + 1)

end

end A132825.P9278987322112389551

/-! ## A132825.P2196295384057168619

`A023531(n)*A055884(n+1)`
-/

namespace A132825.P2196295384057168619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A055884 (n + 1)

end

end A132825.P2196295384057168619

/-! ## A132825.P6277982811637163657

`A023531(n)*A058401(n+1)`
-/

namespace A132825.P6277982811637163657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A058401 (n + 1)

end

end A132825.P6277982811637163657

/-! ## A132825.P11882414245569694196

`A023531(n)*A079025(n+1)`
-/

namespace A132825.P11882414245569694196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A079025 (n + 1)

end

end A132825.P11882414245569694196

/-! ## A132825.P6754788477191709627

`A023531(n)*A091438(n+1)`
-/

namespace A132825.P6754788477191709627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A091438 (n + 1)

end

end A132825.P6754788477191709627

/-! ## A132825.P260208576033022441

`A023531(n)*A092080(n+1)`
-/

namespace A132825.P260208576033022441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A092080 (n + 1)

end

end A132825.P260208576033022441

/-! ## A132825.P9909988419197190226

`A023531(n)*A103923(n+1)`
-/

namespace A132825.P9909988419197190226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A103923 (n + 1)

end

end A132825.P9909988419197190226

/-! ## A132825.P3923183751549058418

`A023531(n)*A182720(n+1)`
-/

namespace A132825.P3923183751549058418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A182720 (n + 1)

end

end A132825.P3923183751549058418

/-! ## A132825.P544171361967045413

`A026729(n)*A182720(n+1)`
-/

namespace A132825.P544171361967045413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A182720 (n + 1)

end

end A132825.P544171361967045413

/-! ## A132825.P14395600084932298593

`A023531(n)*A199086(n+1)`
-/

namespace A132825.P14395600084932298593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A199086 (n + 1)

end

end A132825.P14395600084932298593

/-!
# A132827: Table based upon insertion points of n into sequence A132828 and having a specific formula.

The programs for A132827, there is no canonical definition to state claims against.
-/

/-! ## A132827.P9408438531356638265

`A038150(∑[2*n]%comp[∑[n]])`
-/

namespace A132827.P9408438531356638265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038150 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A132827.P9408438531356638265

/-! ## A132827.P8551353954464354137

`A038150(∑[char[∑[n]]]²-(n+1))`
-/

namespace A132827.P8551353954464354137
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038150 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A132827.P8551353954464354137

/-! ## A132827.P15538547239071056256

`A038150(A061579(n))^A178334(n)`
-/

namespace A132827.P15538547239071056256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038150 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A132827.P15538547239071056256

/-! ## A132827.P4478813867595289390

`A038150(A061579(n))%A001505(n)`
-/

namespace A132827.P4478813867595289390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038150 (A061579 n).toNat) (A001505 n)

end

end A132827.P4478813867595289390

/-! ## A132827.P10399968572179422644

`gcd(A000038(n), A038150(A061579(n)))`
-/

namespace A132827.P10399968572179422644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A038150 (A061579 n).toNat)

end

end A132827.P10399968572179422644

/-!
# A132829: Numbers k such that 3^k + 2 is not prime.

The programs for A132829, there is no canonical definition to state claims against.
-/

/-! ## A132829.P15681100066657484094

`lt[1, A123359(n)]`
-/

namespace A132829.P15681100066657484094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132829.P15681100066657484094

/-! ## A132829.P873985191803051227

`lt[2, A013598(n)]`
-/

namespace A132829.P873985191803051227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132829.P873985191803051227

/-! ## A132829.P16348411464035164943

`lt[3, A392099(n)]`
-/

namespace A132829.P16348411464035164943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132829.P16348411464035164943

/-! ## A132829.P13952745084828897208

`comp[A051783(n+1)]`
-/

namespace A132829.P13952745084828897208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132829.P13952745084828897208

/-! ## A132829.P2621096175816235418

`val(Δ[A132830(n+1)], 3)`
-/

namespace A132829.P2621096175816235418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A132829.P2621096175816235418

/-! ## A132829.P13910385943853176426

`comp[∑{e}[2^n, A051783(#)]]`
-/

namespace A132829.P13910385943853176426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A051783 (Nat.factorization (f2 n) p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132829.P13910385943853176426

/-! ## A132829.P15990988608663135879

`eq[0, A000045(C(2, A013598(n)))]`
-/

namespace A132829.P15990988608663135879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A013598 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132829.P15990988608663135879

/-! ## A132829.P15142943130106392040

`eq[1, A013598(C(2, A013598(n)))]`
-/

namespace A132829.P15142943130106392040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 (Nat.choose 2 (A013598 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132829.P15142943130106392040

/-!
# A132830: Numbers of the form 3^n+2 which are not primes.

The programs for A132830, there is no canonical definition to state claims against.
-/

/-! ## A132830.P11750561004634989690

`A168607(lt[1, A123359(n)])`
-/

namespace A132830.P11750561004634989690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132830.P11750561004634989690

/-! ## A132830.P16648689404513389055

`A259821(lt[1, A123359(n)])`
-/

namespace A132830.P16648689404513389055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132830.P16648689404513389055

/-! ## A132830.P5132258187142522907

`3^A132829(n+1)+2`
-/

namespace A132830.P5132258187142522907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A132829 (n + 1) : ℤ) + 2

end

end A132830.P5132258187142522907

/-! ## A132830.P11213677768856237097

`A168607(A132829(n+1))`
-/

namespace A132830.P11213677768856237097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (A132829 (n + 1)).toNat

end

end A132830.P11213677768856237097

/-! ## A132830.P16308411958382280562

`A259821(A132829(n+1)%A168610(n))`
-/

namespace A132830.P16308411958382280562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259821 (Int.tmod (A132829 (n + 1)) (A168610 n)).toNat

end

end A132830.P16308411958382280562

/-!
# A132831: Largest terms a(n) forming a self-convolution of an integer sequence (A132832) such that: a(n) <= 2*a(n-1) for n>0 with a(0)=1.

The programs for A132831, there is no canonical definition to state claims against.
-/

/-! ## A132831.P4360234746946441402

`A059567(ceil(2^(n-1)))+floor(atan(n+1))`
-/

namespace A132831.P4360234746946441402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059567 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A132831.P4360234746946441402

/-! ## A132831.P17478323720504759955

`A004277(a(n-1))-A217586(n+2)` with `a(0)=1`
-/

namespace A132831.P17478323720504759955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004277 (a (n - 1)).toNat - A217586 (n + 2)

end

end A132831.P17478323720504759955

/-! ## A132831.P2069510546170568472

`A005843(a(n-1))-A217586(n+2)` with `a(0)=1`
-/

namespace A132831.P2069510546170568472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a (n - 1)).toNat - A217586 (n + 2)

end

end A132831.P2069510546170568472

/-! ## A132831.P15503969739921566411

`A005843(a(n-1))-A010051(9*n+1)` with `a(0)=1`
-/

namespace A132831.P15503969739921566411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a (n - 1)).toNat - A010051 (9 * n + 1)

end

end A132831.P15503969739921566411

/-! ## A132831.P5852811909991527283

`A005408(a(n-1))-A348043(A020639(n+1))` with `a(0)=1`
-/

namespace A132831.P5852811909991527283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005408 (a (n - 1)).toNat - A348043 (A020639 (n + 1)).toNat

end

end A132831.P5852811909991527283

/-!
# A132832: Largest integer terms forming a self-convolution square-root of a sequence A132831 such that: A132831(n) <= 2*A132831(n-1) for n>0 with A132831(0)=1.

The programs for A132832, there is no canonical definition to state claims against.
-/

/-! ## A132832.P15211001301194053599

`A123915(n)+A102683(A000383(n))`
-/

namespace A132832.P15211001301194053599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123915 n + A102683 (A000383 n).toNat

end

end A132832.P15211001301194053599

/-! ## A132832.P2140550213661854289

`A123915(n)+A014081(A184955(n))`
-/

namespace A132832.P2140550213661854289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123915 n + A014081 (A184955 n).toNat

end

end A132832.P2140550213661854289

/-! ## A132832.P13576197489728973033

`A123915(n)+A033886(A254414(n))`
-/

namespace A132832.P13576197489728973033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123915 n + A033886 (A254414 n).toNat

end

end A132832.P13576197489728973033

/-! ## A132832.P2250878288002101438

`or(A010051(A000051(n)), A123915(n))`
-/

namespace A132832.P2250878288002101438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A000051 n).toNat) (A123915 n)

end

end A132832.P2250878288002101438

/-!
# A132833: Largest terms a(n) forming a self-convolution of an integer sequence (A132834) such that: a(n) <= 3*a(n-1) for n>0 with a(0)=1.

The programs for A132833, there is no canonical definition to state claims against.
-/

/-! ## A132833.P3148827828726596896

`A000010(3^n)-A177881(n)`
-/

namespace A132833.P3148827828726596896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 ^ n) - A177881 n

end

end A132833.P3148827828726596896

/-! ## A132833.P12068252755154141652

`A059995(ceil(∑[3^(n-2)]))+A007051(n)`
-/

namespace A132833.P12068252755154141652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat + A007051 n

end

end A132833.P12068252755154141652

/-! ## A132833.P12326397712044948952

`A124302(n+1)+A059995(A124302(n))`
-/

namespace A132833.P12326397712044948952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) + A059995 (A124302 n).toNat

end

end A132833.P12326397712044948952

/-! ## A132833.P12110318973511724030

`A160547(A007051(n))`
-/

namespace A132833.P12110318973511724030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160547 (A007051 n).toNat

end

end A132833.P12110318973511724030

/-! ## A132833.P10359093463582352983

`A160547(A003462(n)+1)`
-/

namespace A132833.P10359093463582352983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160547 (A003462 n + 1).toNat

end

end A132833.P10359093463582352983

/-!
# A132834: Largest integer terms forming a self-convolution square-root of a sequence (A132833) such that: A132833(n) <= 3*A132833(n-1) for n>0 with A132833(0)=1.

The programs for A132834, there is no canonical definition to state claims against.
-/

/-! ## A132834.P15307578013101121278

`A187183(A343228(n)+A291037(n))`
-/

namespace A132834.P15307578013101121278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A343228 n + A291037 n).toNat

end

end A132834.P15307578013101121278

/-! ## A132834.P16949020535878868242

`A226190(ceil(sqrt(A047853(n))))`
-/

namespace A132834.P16949020535878868242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 ⌈Real.sqrt (A047853 n : ℝ)⌉.toNat

end

end A132834.P16949020535878868242

/-! ## A132834.P12331716863952802363

`∑[A245898(n+1)-A081420(n+1)]`
-/

namespace A132834.P12331716863952802363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - A081420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132834.P12331716863952802363

/-!
# A132835: Largest terms a(n) forming a self-convolution cube of an integer sequence (A132836) such that: a(n) <= 3*a(n-1) for n>0 with a(0)=1.

The programs for A132835, there is no canonical definition to state claims against.
-/

/-! ## A132835.P6065461863229652894

`A008486(a(n-1))-A023670(n+1)` with `a(0)=1`
-/

namespace A132835.P6065461863229652894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008486 (a (n - 1)).toNat - A023670 (n + 1)

end

end A132835.P6065461863229652894

/-! ## A132835.P14307927525233953259

`A172266(∑[abs(∑[(-3)^n])]+1)`
-/

namespace A132835.P14307927525233953259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172266 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A132835.P14307927525233953259

/-! ## A132835.P8066781377830908403

`A019446(floor(sqrt(A037566(n+1))))`
-/

namespace A132835.P8066781377830908403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (Int.sqrt (A037566 (n + 1))).toNat

end

end A132835.P8066781377830908403

/-! ## A132835.P16295736850272567531

`A019446(round(sqrt(A037566(n+1))))`
-/

namespace A132835.P16295736850272567531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (SequenceMachineLib.roundAway (Real.sqrt (A037566 (n + 1) : ℝ))).toNat

end

end A132835.P16295736850272567531

/-!
# A132836: Largest integer terms forming a self-convolution cube-root of a sequence (A132835) such that: A132835(n) <= 3*A132835(n-1) for n>0 with A132835(0)=1.

The programs for A132836, there is no canonical definition to state claims against.
-/

/-! ## A132836.P10198767740019635208

`A248180(Δ[Δ[A152225(n)]])`
-/

namespace A132836.P10198767740019635208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (f1 (n + 1) - f1 n).toNat

end

end A132836.P10198767740019635208

/-! ## A132836.P17625555209694163452

`A008679(A045997(n)+A045994(n+2))`
-/

namespace A132836.P17625555209694163452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A045997 n + A045994 (n + 2)).toNat

end

end A132836.P17625555209694163452

/-! ## A132836.P7042375521870237548

`A008679(A248180(n)+A045994(n+2))`
-/

namespace A132836.P7042375521870237548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A248180 n + A045994 (n + 2)).toNat

end

end A132836.P7042375521870237548

/-! ## A132836.P7134154428496861520

`A008679(A045994(n+2)+A014648(n+1))`
-/

namespace A132836.P7134154428496861520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A045994 (n + 2) + A014648 (n + 1)).toNat

end

end A132836.P7134154428496861520

/-! ## A132836.P15629344823339399378

`A008679(A045994(n+2)+A014650(n+1))`
-/

namespace A132836.P15629344823339399378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A045994 (n + 2) + A014650 (n + 1)).toNat

end

end A132836.P15629344823339399378

/-!
# A132837: Largest terms a(n) forming a self-convolution 4th power of an integer sequence (A132838) such that: a(n) <= 4*a(n-1) for n>0 with a(0)=1.

The programs for A132837, there is no canonical definition to state claims against.
-/

/-! ## A132837.P10872596450608288979

`A166535(∑[A113300(n+1)])`
-/

namespace A132837.P10872596450608288979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132837.P10872596450608288979

/-! ## A132837.P11820283100234482249

`A008619(or(A037681(n+1), A102865(n)))`
-/

namespace A132837.P11820283100234482249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A037681 (n + 1)) (A102865 n)).toNat

end

end A132837.P11820283100234482249

/-! ## A132837.P14741999370320054957

`A008619(or(A037695(n+1), A102865(n)))`
-/

namespace A132837.P14741999370320054957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A037695 (n + 1)) (A102865 n)).toNat

end

end A132837.P14741999370320054957

/-!
# A132838: Largest integer terms forming a self-convolution 4th root of a sequence (A132837) such that: A132837(n) <= 4*A132837(n-1) for n>0 with A132837(0)=1.

The programs for A132838, there is no canonical definition to state claims against.
-/

/-! ## A132838.P9309824457736274942

`A008616(A150066(n+1))`
-/

namespace A132838.P9309824457736274942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A150066 (n + 1)).toNat

end

end A132838.P9309824457736274942

/-! ## A132838.P5117723786072049227

`A239500(A115006(n)+5)`
-/

namespace A132838.P5117723786072049227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239500 (A115006 n + 5).toNat

end

end A132838.P5117723786072049227

/-! ## A132838.P4268954392564404006

`A008676(A096570(n+1)+A001037(2*n+4))`
-/

namespace A132838.P4268954392564404006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A096570 (n + 1) + A001037 (2 * n + 4)).toNat

end

end A132838.P4268954392564404006

/-!
# A132839: Largest terms a(n) forming a self-convolution 5th power of an integer sequence (A132840) such that: a(n) <= 5*a(n-1) for n>0 with a(0)=1.

The programs for A132839, there is no canonical definition to state claims against.
-/

/-! ## A132839.P8101957621771385356

`A268527(A018487(n+1))`
-/

namespace A132839.P8101957621771385356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268527 (A018487 (n + 1)).toNat

end

end A132839.P8101957621771385356

/-! ## A132839.P2979121118028723051

`A318827(5*a(n-1)+1)` with `a(0)=1`
-/

namespace A132839.P2979121118028723051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318827 (5 * a (n - 1) + 1).toNat

end

end A132839.P2979121118028723051

/-! ## A132839.P3540165524397174091

`A318828(5*a(n-1)+1)` with `a(0)=1`
-/

namespace A132839.P3540165524397174091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318828 (5 * a (n - 1) + 1).toNat

end

end A132839.P3540165524397174091

/-!
# A132840: Largest integer terms forming a self-convolution fifth-root of a sequence (A132839) such that: A132839(n) <= 5*A132839(n-1) for n>0 with A132839(0)=1.

The programs for A132840, there is no canonical definition to state claims against.
-/

/-! ## A132840.P17627908220961264944

`A049243(A049156(n))+A049158(n)`
-/

namespace A132840.P17627908220961264944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049243 (A049156 n).toNat + A049158 n

end

end A132840.P17627908220961264944

/-! ## A132840.P18024070551266005045

`A104739(A055887(n))`
-/

namespace A132840.P18024070551266005045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104739 (A055887 n).toNat

end

end A132840.P18024070551266005045

/-!
# A132841: Least increasing logarithmic coefficients such that exponentiation results in an integer sequence (A132842), starting with a(1)=1.

The programs for A132841, there is no canonical definition to state claims against.
-/

/-! ## A132841.P8522055961162880037

`∑[gcd(A216627(3*n+1), A216632(2*n+5))]`
-/

namespace A132841.P8522055961162880037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A216627 (3 * n + 1)) (A216632 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132841.P8522055961162880037

/-! ## A132841.P16533617378110195000

`A130992(A332049(n+1)+A084746(3*(n+2)))`
-/

namespace A132841.P16533617378110195000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130992 (A332049 (n + 1) + A084746 (3 * (n + 2))).toNat

end

end A132841.P16533617378110195000

/-! ## A132841.P11650016537486394742

`eq[A017868(n), A113037(n)]`
-/

namespace A132841.P11650016537486394742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132841.P11650016537486394742

/-! ## A132841.P1497523731150643212

`eq[A025918(n), A113037(n)]`
-/

namespace A132841.P1497523731150643212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132841.P1497523731150643212

/-! ## A132841.P7192497371454746794

`eq[A100821(n+1), A104276(n)]`
-/

namespace A132841.P7192497371454746794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132841.P7192497371454746794

/-!
# A132842: Exponentiation of A132841.

The programs for A132842, there is no canonical definition to state claims against.
-/

/-! ## A132842.P18129513042267083864

`A026819(A131337(n+1))`
-/

namespace A132842.P18129513042267083864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A131337 (n + 1)).toNat

end

end A132842.P18129513042267083864

/-! ## A132842.P9816167615774995814

`A026819(A023610(n)-A120940(n))`
-/

namespace A132842.P9816167615774995814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A023610 n - A120940 n).toNat

end

end A132842.P9816167615774995814

/-! ## A132842.P17574141889319826056

`A063978(n)-A259361(A171857(n))`
-/

namespace A132842.P17574141889319826056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063978 n - A259361 (A171857 n).toNat

end

end A132842.P17574141889319826056

/-! ## A132842.P2116342322953086585

`∑[A219282(n)]-A259361(A171857(n))`
-/

namespace A132842.P2116342322953086585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A259361 (A171857 n).toNat

end

end A132842.P2116342322953086585

/-! ## A132842.P14692083208242012523

`∏{e}[A133494(n), A063978(#)]`
-/

namespace A132842.P14692083208242012523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A063978 (Nat.factorization (f1 n).natAbs p)

end

end A132842.P14692083208242012523

/-!
# A132843: a(n) = A005704( A037480(n) ) for n>0 with a(0)=1, where A005704 = number of partitions of 3n into powers of 3 and A037480(n) = n-th number having alternating base-3 digits 1, 2 (starting with '1').

The programs for A132843, the canonical program `A132843.P8250867450047545094` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132843 has offset 0).

The definition of A132843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132843.P8250867450047545094

`A005704((5*3^n+(-1)^n-6)/8)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A132843

/-- `A005704((5*3^n+(-1)^n-6)/8)` -/
def P8250867450047545094.Spec : Prop :=
  ∀ n, P8250867450047545094.a n = A132843 n

theorem P8250867450047545094.correct : P8250867450047545094.Spec := by
  intro n
  simp only [A132843]

end A132843

/-! ## A132843.P3710298075135217045

`A254296(A153774(n+2))`
-/

namespace A132843.P3710298075135217045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A153774 (n + 2)).toNat

end

end A132843.P3710298075135217045

namespace A132843

/-- `A254296(A153774(n+2))` -/
def P3710298075135217045.Spec : Prop :=
  ∀ n, P3710298075135217045.a n = A132843 n

end A132843

/-! ## A132843.P11532931271512166779

`A254296(A080926(n+1)+A039300(n))`
-/

namespace A132843.P11532931271512166779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A080926 (n + 1) + A039300 n).toNat

end

end A132843.P11532931271512166779

namespace A132843

/-- `A254296(A080926(n+1)+A039300(n))` -/
def P11532931271512166779.Spec : Prop :=
  ∀ n, P11532931271512166779.a n = A132843 n

end A132843

/-! ## A132843.P9919988752285226079

`A254296(A039300(n+1)+A003462(n+1))`
-/

namespace A132843.P9919988752285226079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A039300 (n + 1) + A003462 (n + 1)).toNat

end

end A132843.P9919988752285226079

namespace A132843

/-- `A254296(A039300(n+1)+A003462(n+1))` -/
def P9919988752285226079.Spec : Prop :=
  ∀ n, P9919988752285226079.a n = A132843 n

end A132843

/-! ## A132843.P6071316783071318617

`A254296(A261547(n+1)+A039300(n+1))`
-/

namespace A132843.P6071316783071318617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A261547 (n + 1) + A039300 (n + 1)).toNat

end

end A132843.P6071316783071318617

namespace A132843

/-- `A254296(A261547(n+1)+A039300(n+1))` -/
def P6071316783071318617.Spec : Prop :=
  ∀ n, P6071316783071318617.a n = A132843 n

end A132843

/-!
# A132845: Triangle, read by rows, where row n equals row n of matrix power A132844^n for n>=0, where triangle A132844 is defined by: A132844(n,k) = T( [(n+k)/2], k) for n>=k>=0.

The programs for A132845, there is no canonical definition to state claims against.
-/

/-! ## A132845.P7799270498895671586

`A129652(n)-A180649(A055807(2*n+1))`
-/

namespace A132845.P7799270498895671586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 n - A180649 (A055807 (2 * n + 1)).toNat

end

end A132845.P7799270498895671586

/-! ## A132845.P5254687990673865773

`A129652(n)-A279863(A086645(n))`
-/

namespace A132845.P5254687990673865773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 n - A279863 (A086645 n).toNat

end

end A132845.P5254687990673865773

/-!
# A132846: Column 0 of triangle A132845.

The programs for A132846, there is no canonical definition to state claims against.
-/

/-! ## A132846.P14414169843264434079

`A132844(n*Δ[n²])`
-/

namespace A132846.P14414169843264434079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A132846.P14414169843264434079

/-! ## A132846.P12754510280459566425

`A132844(A000217(2*n))-char[39]`
-/

namespace A132846.P12754510280459566425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A000217 (2 * n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132846.P12754510280459566425

/-! ## A132846.P11980423702678752431

`A185255(n)+A132844(A014105(n))`
-/

namespace A132846.P11980423702678752431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A132844 (A014105 n).toNat

end

end A132846.P11980423702678752431

/-! ## A132846.P17990975875862505395

`A132844(A000217(2*n+1))%A055479(n+2)`
-/

namespace A132846.P17990975875862505395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132844 (A000217 (2 * n + 1)).toNat) (A055479 (n + 2))

end

end A132846.P17990975875862505395

/-! ## A132846.P210483476415273074

`A014963(A000141(n))*A132844(A000217(2*n))`
-/

namespace A132846.P210483476415273074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000141 n).toNat * A132844 (A000217 (2 * n)).toNat

end

end A132846.P210483476415273074

/-!
# A132847: Column 1 of triangle A132845.

The programs for A132847, there is no canonical definition to state claims against.
-/

/-! ## A132847.P12610833790190218199

`A132844(A084849(n+1))`
-/

namespace A132847.P12610833790190218199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A084849 (n + 1)).toNat

end

end A132847.P12610833790190218199

/-! ## A132847.P18333088795030856677

`A132844(A130883(n+1))`
-/

namespace A132847.P18333088795030856677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A130883 (n + 1)).toNat

end

end A132847.P18333088795030856677

/-! ## A132847.P12356086078134434369

`A132844(A033816(n)-1)`
-/

namespace A132847.P12356086078134434369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A033816 n - 1).toNat

end

end A132847.P12356086078134434369

/-! ## A132847.P6473549924402329386

`A132844(A014105(n+1)+1)`
-/

namespace A132847.P6473549924402329386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A014105 (n + 1) + 1).toNat

end

end A132847.P6473549924402329386

/-! ## A132847.P2990449193641115046

`A132844(A096376(n+1)-1)`
-/

namespace A132847.P2990449193641115046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A096376 (n + 1) - 1).toNat

end

end A132847.P2990449193641115046

/-!
# A132848: Column 2 of triangle A132845.

The programs for A132848, there is no canonical definition to state claims against.
-/

/-! ## A132848.P7233214351642136157

`A132844(A033816(n+1))`
-/

namespace A132848.P7233214351642136157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A033816 (n + 1)).toNat

end

end A132848.P7233214351642136157

/-! ## A132848.P11623503936641415940

`A132844(A096376(n+1))`
-/

namespace A132848.P11623503936641415940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A096376 (n + 1)).toNat

end

end A132848.P11623503936641415940

/-! ## A132848.P6764076869937902879

`A132844(A084849(n+1)+1)`
-/

namespace A132848.P6764076869937902879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A084849 (n + 1) + 1).toNat

end

end A132848.P6764076869937902879

/-! ## A132848.P16546659729866885777

`A132844(A014105(n+1)+2)`
-/

namespace A132848.P16546659729866885777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A014105 (n + 1) + 2).toNat

end

end A132848.P16546659729866885777

/-! ## A132848.P2389989797864175499

`A132844(A100037(n+2)-1)`
-/

namespace A132848.P2389989797864175499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A100037 (n + 2) - 1).toNat

end

end A132848.P2389989797864175499

/-!
# A132849: Column 3 of triangle A132845.

The programs for A132849, there is no canonical definition to state claims against.
-/

/-! ## A132849.P3328016822561995597

`A132844(A100037(n+2))`
-/

namespace A132849.P3328016822561995597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A100037 (n + 2)).toNat

end

end A132849.P3328016822561995597

/-! ## A132849.P16129998845399461521

`A132844(A033816(n+1)+1)`
-/

namespace A132849.P16129998845399461521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A033816 (n + 1) + 1).toNat

end

end A132849.P16129998845399461521

/-! ## A132849.P2080915542574437208

`A132844(A167614(2*(n+1)))`
-/

namespace A132849.P2080915542574437208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A167614 (2 * (n + 1))).toNat

end

end A132849.P2080915542574437208

/-! ## A132849.P15974061706442274597

`A132844(A340266(2*(n+1))+1)`
-/

namespace A132849.P15974061706442274597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A340266 (2 * (n + 1)) + 1).toNat

end

end A132849.P15974061706442274597

/-! ## A132849.P11781915681555632310

`A132844(A027379(2*n+1)+6)`
-/

namespace A132849.P11781915681555632310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132844 (A027379 (2 * n + 1) + 6).toNat

end

end A132849.P11781915681555632310

/-!
# A132850: a(0)=1; a(n) = the smallest prime dividing (n+a(n-1)), for n>=1.

The programs for A132850, there is no canonical definition to state claims against.
-/

/-! ## A132850.P16106611814914255791

`A116920(n+1)-(n+1)`
-/

namespace A132850.P16106611814914255791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116920 (n + 1) - (n + 1 : ℤ)

end

end A132850.P16106611814914255791

/-! ## A132850.P10610116853568981928

`A020639(a(n-1)+n)` with `a(0)=1`
-/

namespace A132850.P10610116853568981928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (a (n - 1) + (n : ℤ)).toNat

end

end A132850.P10610116853568981928

/-! ## A132850.P2415976680475266752

`A057237(a(n-1)+n)+1` with `a(0)=1`
-/

namespace A132850.P2415976680475266752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057237 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A132850.P2415976680475266752

/-! ## A132850.P15037057884164025499

`A020639(n-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132850.P15037057884164025499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 ((n : ℤ) - (-a (n - 1))).toNat

end

end A132850.P15037057884164025499

/-! ## A132850.P5863659929189534615

`A020639(n-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A132850.P5863659929189534615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 ((n : ℤ) - (-a (n - 1))).toNat

end

end A132850.P5863659929189534615

/-! ## A132850.P7107458006618523182

`A020639(n-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A132850.P7107458006618523182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 ((n : ℤ) - (-a (n - 1))).toNat

end

end A132850.P7107458006618523182

/-! ## A132850.P10280012629236500552

`A020639(2*n-(n-a(n-1)))` with `a(0)=1`
-/

namespace A132850.P10280012629236500552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 ((2 * n : ℤ) - ((n : ℤ) - a (n - 1))).toNat

end

end A132850.P10280012629236500552

/-! ## A132850.P4753556276163377994

`A020639(abs(char[1]-a(n-1)-n))` with `a(0)=1, a(1)=2`
-/

namespace A132850.P4753556276163377994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1) - (n : ℤ)|.toNat

end

end A132850.P4753556276163377994

/-! ## A132850.P15824974239015006963

`A020639(A116920(n))`
-/

namespace A132850.P15824974239015006963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A116920 n).toNat

end

end A132850.P15824974239015006963

/-! ## A132850.P7635941446622890262

`A020639(A020639(a((2*n)%(n+1)))+n)` with `a(0)=1`
-/

namespace A132850.P7635941446622890262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (A020639 (a (2 * n % (n + 1))).toNat + (n : ℤ)).toNat

end

end A132850.P7635941446622890262

/-! ## A132850.P13878496223952759316

`A020639(A020639((C(n+1, 2)+1)%2+n)+n)`
-/

namespace A132850.P13878496223952759316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 ((Nat.choose (n + 1) 2 + 1) % 2 + n) + (n : ℤ)).toNat

end

end A132850.P13878496223952759316

/-! ## A132850.P8241366808692385858

`A020639(A020639(A116966(n))+n)`
-/

namespace A132850.P8241366808692385858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (A116966 n).toNat + (n : ℤ)).toNat

end

end A132850.P8241366808692385858

/-! ## A132850.P15817033270385724461

`A020639(A080412(n)+A020639(n+1))`
-/

namespace A132850.P15817033270385724461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080412 n + A020639 (n + 1)).toNat

end

end A132850.P15817033270385724461

/-! ## A132850.P6068142367200857477

`A014963(A028233(a(n-1)+n))` with `a(0)=1`
-/

namespace A132850.P6068142367200857477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (A028233 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A132850.P6068142367200857477

/-! ## A132850.P10122532114177612629

`A000040(A055396(a(n-1)+n))` with `a(0)=1`
-/

namespace A132850.P10122532114177612629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A055396 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A132850.P10122532114177612629

/-! ## A132850.P13755085437300534681

`A014673(2*(a(n-1)+n))` with `a(0)=1`
-/

namespace A132850.P13755085437300534681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014673 (2 * (a (n - 1) + (n : ℤ))).toNat

end

end A132850.P13755085437300534681

/-!
# A132851: a(0)=1. a(n) = the largest squarefree integer which divides (n+a(n-1)), for n>=1.

The programs for A132851, there is no canonical definition to state claims against.
-/

/-! ## A132851.P6050941272595178742

`A007947(a(n-1)+n)` with `a(0)=1`
-/

namespace A132851.P6050941272595178742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007947 (a (n - 1) + (n : ℤ)).toNat

end

end A132851.P6050941272595178742

/-! ## A132851.P864291183186115220

`A015052(a(n-1)+n)` with `a(0)=1`
-/

namespace A132851.P864291183186115220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015052 (a (n - 1) + (n : ℤ)).toNat

end

end A132851.P864291183186115220

/-! ## A132851.P8986725411276649183

`A015053(a(n-1)+n)` with `a(0)=1`
-/

namespace A132851.P8986725411276649183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015053 (a (n - 1) + (n : ℤ)).toNat

end

end A132851.P8986725411276649183

/-! ## A132851.P5854841156934622409

`A348036(a(n-1)+n)` with `a(0)=1`
-/

namespace A132851.P5854841156934622409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348036 (a (n - 1) + (n : ℤ)).toNat

end

end A132851.P5854841156934622409

/-! ## A132851.P2790427757081653014

`abs(A062953(a(n-1)+n))` with `a(0)=1`
-/

namespace A132851.P2790427757081653014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A062953 (a (n - 1) + (n : ℤ)).toNat|

end

end A132851.P2790427757081653014

/-! ## A132851.P4578425482852447592

`A007947(n-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A132851.P4578425482852447592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007947 ((n : ℤ) - (-a (n - 1))).toNat

end

end A132851.P4578425482852447592

/-! ## A132851.P13990181907540160685

`A336643((a(n-1)+n)²)` with `a(0)=1`
-/

namespace A132851.P13990181907540160685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A336643 ((a (n - 1) + (n : ℤ)) ^ 2).toNat

end

end A132851.P13990181907540160685

/-!
# A132852: Number of sequences {c(i), i=0..n} that form the initial terms of a self-convolution square of an integer sequence such that 0 < c(n) <= 2*c(n-1) for n>0 with c(0)=1.

The programs for A132852, there is no canonical definition to state claims against.
-/

/-! ## A132852.P1581969891504391491

`A357452(floor(∑[2^n/3]))`
-/

namespace A132852.P1581969891504391491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357452 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A132852.P1581969891504391491

/-! ## A132852.P8701104587271742422

`A095903(lcm(A001472(n), A079222(n)))`
-/

namespace A132852.P8701104587271742422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095903 (Int.lcm (A001472 n) (A079222 n))

end

end A132852.P8701104587271742422

/-! ## A132852.P7589852188423714783

`A004001(A358911(n)+A076324(n+1))`
-/

namespace A132852.P7589852188423714783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A358911 n + A076324 (n + 1)).toNat

end

end A132852.P7589852188423714783

/-!
# A132853: Number of sequences {c(i), i=0..n} that form the initial terms of a self-convolution cube of an integer sequence such that 0 < c(n) <= 3*c(n-1) for n>0 with c(0)=1.

The programs for A132853, there is no canonical definition to state claims against.
-/

/-! ## A132853.P15854349641198637864

`A000740(n+1)*A003963(A057991(n))`
-/

namespace A132853.P15854349641198637864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) * A003963 (A057991 n).toNat

end

end A132853.P15854349641198637864

/-!
# A132854: Number of sequences {c(i), i=0..n} that form the initial terms of a self-convolution 4th power of an integer sequence such that 0 < c(n) <= 4*c(n-1) for n>0 with c(0)=1.

The programs for A132854, there is no canonical definition to state claims against.
-/

/-! ## A132854.P18295716496106315981

`∏[A393608(∏[n+3])]`
-/

namespace A132854.P18295716496106315981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393608 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A132854.P18295716496106315981

/-!
# A132855: Number of sequences {c(i), i=0..n} that form the initial terms of a self-convolution 5th power of an integer sequence such that 0 < c(n) <= 5*c(n-1) for n>0 with c(0)=1.

The programs for A132855, there is no canonical definition to state claims against.
-/

/-! ## A132855.P14575899179017185808

`A014648(5^n)`
-/

namespace A132855.P14575899179017185808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014648 (5 ^ n)

end

end A132855.P14575899179017185808

/-! ## A132855.P16036841166497744297

`A014650(5^n)`
-/

namespace A132855.P16036841166497744297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014650 (5 ^ n)

end

end A132855.P16036841166497744297

/-!
# A132856: Number of sequences {c(i), i=0..n} that form the initial terms of a self-convolution 6th power of an integer sequence such that 0 < c(n) <= 6*c(n-1) for n>0 with c(0)=1.

The programs for A132856, there is no canonical definition to state claims against.
-/

/-! ## A132856.P9394658949436276488

`A141042(∏[∑[A052841(n)]])`
-/

namespace A132856.P9394658949436276488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132856.P9394658949436276488

/-!
# A132857: a(0)=1. a(n) = phi(n+a(n-1)), for n>=1, where phi(m) is the number of positive integers which are <= m and are coprime to m.

The programs for A132857, the canonical program `A132857.P221054597374004760` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132857 has offset 0).

The definition of A132857 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132857.P221054597374004760

`A000010(n+a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132857

/-- `A000010(n+a(n-1))` -/
def P221054597374004760.Spec : Prop :=
  ∀ n, P221054597374004760.a n = A132857 n

theorem P221054597374004760.correct : P221054597374004760.Spec := by
  intro n
  simp only [A132857]

end A132857

/-! ## A132857.P1191595214549021176

`A000010(n-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132857.P1191595214549021176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 ((n : ℤ) - (-a (n - 1))).toNat

end

end A132857.P1191595214549021176

namespace A132857

/-- `A000010(n-floor(-a(n-1)))` -/
def P1191595214549021176.Spec : Prop :=
  ∀ n, P1191595214549021176.a n = A132857 n

theorem P1191595214549021176.correct : P1191595214549021176.Spec := by
  intro n
  simp only [A132857, Nat.add_sub_cancel, A132857.P1191595214549021176.a, A132857.P221054597374004760.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132857

/-! ## A132857.P18086422854227074720

`A000010(n-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A132857.P18086422854227074720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 ((n : ℤ) - (-a (n - 1))).toNat

end

end A132857.P18086422854227074720

namespace A132857

/-- `A000010(n-ceil(-a(n-1)))` -/
def P18086422854227074720.Spec : Prop :=
  ∀ n, P18086422854227074720.a n = A132857 n

theorem P18086422854227074720.correct : P18086422854227074720.Spec := by
  intro n
  simp only [A132857, Nat.add_sub_cancel, A132857.P18086422854227074720.a, A132857.P221054597374004760.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132857

/-! ## A132857.P957538225275499227

`A000010(n-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A132857.P957538225275499227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 ((n : ℤ) - (-a (n - 1))).toNat

end

end A132857.P957538225275499227

namespace A132857

/-- `A000010(n-round(-a(n-1)))` -/
def P957538225275499227.Spec : Prop :=
  ∀ n, P957538225275499227.a n = A132857 n

theorem P957538225275499227.correct : P957538225275499227.Spec := by
  intro n
  simp only [A132857, Nat.add_sub_cancel, A132857.P957538225275499227.a, A132857.P221054597374004760.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A132857

/-! ## A132857.P8167416563290442268

`A000010(n-(char[1]-a(n-1)))` with `a(0)=1`
-/

namespace A132857.P8167416563290442268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 ((n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))).toNat

end

end A132857.P8167416563290442268

namespace A132857

/-- `A000010(n-(char[1]-a(n-1)))` -/
def P8167416563290442268.Spec : Prop :=
  ∀ n, P8167416563290442268.a n = A132857 n

end A132857

/-! ## A132857.P13811521240465252082

`A000010(A363097(n))`
-/

namespace A132857.P13811521240465252082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A363097 n).toNat

end

end A132857.P13811521240465252082

namespace A132857

/-- `A000010(A363097(n))` -/
def P13811521240465252082.Spec : Prop :=
  ∀ n, P13811521240465252082.a n = A132857 n

end A132857

/-! ## A132857.P7774068241666715139

`A363097(n+1)-(n+1)`
-/

namespace A132857.P7774068241666715139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363097 (n + 1) - (n + 1 : ℤ)

end

end A132857.P7774068241666715139

namespace A132857

/-- `A363097(n+1)-(n+1)` -/
def P7774068241666715139.Spec : Prop :=
  ∀ n, P7774068241666715139.a n = A132857 n

end A132857

/-! ## A132857.P14125128297416078947

`A384710(a(n-1)+n)` with `a(0)=1`
-/

namespace A132857.P14125128297416078947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A384710 (a (n - 1) + (n : ℤ)).toNat

end

end A132857.P14125128297416078947

namespace A132857

/-- `A384710(a(n-1)+n)` -/
def P14125128297416078947.Spec : Prop :=
  ∀ n, P14125128297416078947.a n = A132857 n

end A132857

/-! ## A132857.P142410764202886710

`sqrt(A127473(a(n-1)+n))` with `a(0)=1`
-/

namespace A132857.P142410764202886710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A127473 (SequenceMachineLib.roundAway (a (n - 1) + (n : ℝ))).toNat : ℝ)

end

end A132857.P142410764202886710

namespace A132857

/-- `sqrt(A127473(a(n-1)+n))` -/
def P142410764202886710.Spec : Prop :=
  ∀ n, P142410764202886710.a n = (A132857 n : ℝ)

end A132857

/-! ## A132857.P7333670217886994323

`A109606(a(n-1)+n)+1` with `a(0)=1`
-/

namespace A132857.P7333670217886994323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109606 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A132857.P7333670217886994323

namespace A132857

/-- `A109606(a(n-1)+n)+1` -/
def P7333670217886994323.Spec : Prop :=
  ∀ n, P7333670217886994323.a n = A132857 n

end A132857

/-! ## A132857.P5603141841094989112

`A039649(a(n-1)+n)-1` with `a(0)=1`
-/

namespace A132857.P5603141841094989112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039649 (a (n - 1) + (n : ℤ)).toNat - 1

end

end A132857.P5603141841094989112

namespace A132857

/-- `A039649(a(n-1)+n)-1` -/
def P5603141841094989112.Spec : Prop :=
  ∀ n, P5603141841094989112.a n = A132857 n

end A132857

/-! ## A132857.P11986403236201940875

`A225530(a(n-1)+n)` with `a(0)=1`
-/

namespace A132857.P11986403236201940875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A225530 (a (n - 1) + (n : ℤ)).toNat

end

end A132857.P11986403236201940875

namespace A132857

/-- `A225530(a(n-1)+n)` -/
def P11986403236201940875.Spec : Prop :=
  ∀ n, P11986403236201940875.a n = A132857 n

end A132857

/-! ## A132857.P11888340008299092200

`floor(log2(A243305(a(n-1)+n)))` with `a(0)=1`
-/

namespace A132857.P11888340008299092200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.log 2 (A243305 (a (n - 1) + n)).toNat

end

end A132857.P11888340008299092200

namespace A132857

/-- `floor(log2(A243305(a(n-1)+n)))` -/
def P11888340008299092200.Spec : Prop :=
  ∀ n, (P11888340008299092200.a n : ℤ) = A132857 n

end A132857

/-!
# A132858: Composite "antimutinous" numbers. An antimutinous number is an integer m > 1 where m/p^k < p, where p is the largest prime divisor of m and p^k is the largest power of p dividing m.

The programs for A132858, the canonical program `A132858.P10623734540062655448` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132858 has offset 1).

The definition of A132858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132858.P12889752734428125572

`comp[A056077(n+1)-1]+2`
-/

namespace A132858.P12889752734428125572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056077 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A132858.P12889752734428125572

namespace A132858

/-- `comp[A056077(n+1)-1]+2` -/
def P12889752734428125572.Spec : Prop :=
  ∀ n, (P12889752734428125572.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P17671579943108371081

`∪[A119492(n+1), A132982(n+1)]`
-/

namespace A132858.P17671579943108371081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132858.P17671579943108371081

namespace A132858

/-- `∪[A119492(n+1), A132982(n+1)]` -/
def P17671579943108371081.Spec : Prop :=
  ∀ n, (P17671579943108371081.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P998969812328521920

`∪[A132982(n+1), A134612(n+1)]`
-/

namespace A132858.P998969812328521920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132858.P998969812328521920

namespace A132858

/-- `∪[A132982(n+1), A134612(n+1)]` -/
def P998969812328521920.Spec : Prop :=
  ∀ n, (P998969812328521920.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P11948642960201930398

`∪[A132982(n+1), A306531(n+1)]`
-/

namespace A132858.P11948642960201930398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132858.P11948642960201930398

namespace A132858

/-- `∪[A132982(n+1), A306531(n+1)]` -/
def P11948642960201930398.Spec : Prop :=
  ∀ n, (P11948642960201930398.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P9147686268864505156

`∪[A132982(n+1), A346041(n+1)]`
-/

namespace A132858.P9147686268864505156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132858.P9147686268864505156

namespace A132858

/-- `∪[A132982(n+1), A346041(n+1)]` -/
def P9147686268864505156.Spec : Prop :=
  ∀ n, (P9147686268864505156.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P10623734540062655448

`filter[A027855(n+1), A005171(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A132858

/-- `filter[A027855(n+1), A005171(#)]` -/
def P10623734540062655448.Spec : Prop :=
  ∀ n, P10623734540062655448.a n = A132858 (n + 1)

theorem P10623734540062655448.correct : P10623734540062655448.Spec := by
  intro n
  simp only [A132858, Nat.add_sub_cancel]

end A132858

/-! ## A132858.P8729412532931120263

`filter[A027855(n+1), A066247(#)]`
-/

namespace A132858.P8729412532931120263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A132858.P8729412532931120263

namespace A132858

/-- `filter[A027855(n+1), A066247(#)]` -/
def P8729412532931120263.Spec : Prop :=
  ∀ n, P8729412532931120263.a n = A132858 (n + 1)

end A132858

/-! ## A132858.P17693904871949483687

`∩[A002808(n+1), A027855(n+1)]`
-/

namespace A132858.P17693904871949483687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132858.P17693904871949483687

namespace A132858

/-- `∩[A002808(n+1), A027855(n+1)]` -/
def P17693904871949483687.Spec : Prop :=
  ∀ n, (P17693904871949483687.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P11323598184081380267

`∩[A018252(n+1), A027855(n+1)]`
-/

namespace A132858.P11323598184081380267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132858.P11323598184081380267

namespace A132858

/-- `∩[A018252(n+1), A027855(n+1)]` -/
def P11323598184081380267.Spec : Prop :=
  ∀ n, (P11323598184081380267.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P6224811443760277147

`∩[A027855(n+1), A141468(n+1)]`
-/

namespace A132858.P6224811443760277147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132858.P6224811443760277147

namespace A132858

/-- `∩[A027855(n+1), A141468(n+1)]` -/
def P6224811443760277147.Spec : Prop :=
  ∀ n, (P6224811443760277147.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P5988942258793160015

`∩[A027855(n+1), comp[A056077(n+1)+1]]`
-/

namespace A132858.P5988942258793160015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056077 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A132858.P5988942258793160015

namespace A132858

/-- `∩[A027855(n+1), comp[A056077(n+1)+1]]` -/
def P5988942258793160015.Spec : Prop :=
  ∀ n, (P5988942258793160015.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P16894646159985725583

`lt[A256267(n+1), n]+1`
-/

namespace A132858.P16894646159985725583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A132858.P16894646159985725583

namespace A132858

/-- `lt[A256267(n+1), n]+1` -/
def P16894646159985725583.Spec : Prop :=
  ∀ n, (P16894646159985725583.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P8880621133043487402

`lt[A256017(n+1), n²]+1`
-/

namespace A132858.P8880621133043487402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A132858.P8880621133043487402

namespace A132858

/-- `lt[A256017(n+1), n²]+1` -/
def P8880621133043487402.Spec : Prop :=
  ∀ n, (P8880621133043487402.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P15840025226543710708

`A020725(lt[A256267(n+1), n])`
-/

namespace A132858.P15840025226543710708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A132858.P15840025226543710708

namespace A132858

/-- `A020725(lt[A256267(n+1), n])` -/
def P15840025226543710708.Spec : Prop :=
  ∀ n, P15840025226543710708.a n = A132858 (n + 1)

end A132858

/-! ## A132858.P13333829566805739971

`A061767(lt[A256267(n+1), n])`
-/

namespace A132858.P13333829566805739971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A132858.P13333829566805739971

namespace A132858

/-- `A061767(lt[A256267(n+1), n])` -/
def P13333829566805739971.Spec : Prop :=
  ∀ n, P13333829566805739971.a n = A132858 (n + 1)

end A132858

/-! ## A132858.P15785414561778474930

`A020725(lt[A256017(n+1), n²])`
-/

namespace A132858.P15785414561778474930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256017 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A132858.P15785414561778474930

namespace A132858

/-- `A020725(lt[A256017(n+1), n²])` -/
def P15785414561778474930.Spec : Prop :=
  ∀ n, P15785414561778474930.a n = A132858 (n + 1)

end A132858

/-! ## A132858.P721558386364108790

`eq[A085392(n+1), A256267(n+1)]+1`
-/

namespace A132858.P721558386364108790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A132858.P721558386364108790

namespace A132858

/-- `eq[A085392(n+1), A256267(n+1)]+1` -/
def P721558386364108790.Spec : Prop :=
  ∀ n, (P721558386364108790.a n : ℤ) = A132858 (n + 1)

end A132858

/-! ## A132858.P17578045742885287245

`A020725(lt[A256017(n+1)/(n+2), n])`
-/

namespace A132858.P17578045742885287245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256017 (n + 1) : ℚ) / (n + 2 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A132858.P17578045742885287245

namespace A132858

/-- `A020725(lt[A256017(n+1)/(n+2), n])` -/
def P17578045742885287245.Spec : Prop :=
  ∀ n, P17578045742885287245.a n = A132858 (n + 1)

end A132858

/-! ## A132858.P12617475969585906060

`A020725(eq[A085392(n+1), A256267(n+1)])`
-/

namespace A132858.P12617475969585906060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A132858.P12617475969585906060

namespace A132858

/-- `A020725(eq[A085392(n+1), A256267(n+1)])` -/
def P12617475969585906060.Spec : Prop :=
  ∀ n, P12617475969585906060.a n = A132858 (n + 1)

end A132858

/-!
# A132860: Smallest number at distance 2n from nearest prime (variant 2).

The programs for A132860, there is no canonical definition to state claims against.
-/

/-! ## A132860.P9193095838845043534

`A077019(2*n)`
-/

namespace A132860.P9193095838845043534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 (2 * n)

end

end A132860.P9193095838845043534

/-! ## A132860.P1352977131187442338

`A336365(∑[4*n+1])`
-/

namespace A132860.P1352977131187442338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336365 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132860.P1352977131187442338

/-! ## A132860.P15562285201210490210

`or(char[2], A077019(A005843(n)))`
-/

namespace A132860.P15562285201210490210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A077019 (A005843 n).toNat)

end

end A132860.P15562285201210490210

/-! ## A132860.P10602685857261930984

`A077019(n+n)^A007318(∑[n+1])`
-/

namespace A132860.P10602685857261930984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077019 (n + n) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A132860.P10602685857261930984

/-! ## A132860.P17459635866395831570

`A077019(A005843(n))/A007318(∑[n])`
-/

namespace A132860.P17459635866395831570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077019 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A132860.P17459635866395831570

/-!
# A132861: Smallest number at distance 3n from nearest prime (variant 2).

The programs for A132861, there is no canonical definition to state claims against.
-/

/-! ## A132861.P15675230320668066993

`A051652(3*n)`
-/

namespace A132861.P15675230320668066993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (3 * n)

end

end A132861.P15675230320668066993

/-! ## A132861.P14656309803279592529

`or(char[2], A051652(A008585(n)))`
-/

namespace A132861.P14656309803279592529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051652 (A008585 n).toNat)

end

end A132861.P14656309803279592529

/-! ## A132861.P2375990462497013988

`floor(A051652(A008486(n))+acot(n))`
-/

namespace A132861.P2375990462497013988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051652 (A008486 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A132861.P2375990462497013988

/-! ## A132861.P9558254925110092035

`A051652(A008486(n))+A000007(n)`
-/

namespace A132861.P9558254925110092035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A008486 n).toNat + A000007 n

end

end A132861.P9558254925110092035

/-! ## A132861.P14643202832229390078

`A151933(n)+A051652(A008486(n))`
-/

namespace A132861.P14643202832229390078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A051652 (A008486 n).toNat

end

end A132861.P14643202832229390078

/-! ## A132861.P10389079913686452714

`A051652(A008585(n))^A007318(C(2, n))`
-/

namespace A132861.P10389079913686452714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051652 (A008585 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A132861.P10389079913686452714

/-! ## A132861.P7354543509944619977

`A051652(A004277(n)+n)+A000007(n)`
-/

namespace A132861.P7354543509944619977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A004277 n + (n : ℤ)).toNat + A000007 n

end

end A132861.P7354543509944619977

/-! ## A132861.P13079838830324397965

`A051652(A008585(n))+C(2, A000203(n+2))`
-/

namespace A132861.P13079838830324397965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A008585 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A132861.P13079838830324397965

/-! ## A132861.P5211780316584727956

`A051652(A008585(n))%record[A020639(n+2)^3]²`
-/

namespace A132861.P5211780316584727956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051652 (A008585 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2)

end

end A132861.P5211780316584727956

/-! ## A132861.P1651791926516374355

`lcm(A008683(A014963(n+2)), A051652(A008585(n)))`
-/

namespace A132861.P1651791926516374355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A014963 (n + 2)).toNat) (A051652 (A008585 n).toNat)

end

end A132861.P1651791926516374355

/-!
# A132862: Number of permutations divided by the number of (binary) heaps on n elements.

The programs for A132862, there is no canonical definition to state claims against.
-/

/-! ## A132862.P8820101727866298399

`A000142(n)/A056971(n)`
-/

namespace A132862.P8820101727866298399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A056971 n : ℚ)

end

end A132862.P8820101727866298399

/-! ## A132862.P3628268059874532010

`ratio[A056971(n)]*A133385(n)`
-/

namespace A132862.P3628268059874532010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056971 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A133385 n : ℚ)

end

end A132862.P3628268059874532010

/-! ## A132862.P14493107297024976718

`A056971(n+1)/A056971(n)*A133385(n)`
-/

namespace A132862.P14493107297024976718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056971 (n + 1) : ℚ) / (A056971 n : ℚ) * (A133385 n : ℚ)

end

end A132862.P14493107297024976718

/-! ## A132862.P12014689185514863972

`n!/A306343(∑[n])`
-/

namespace A132862.P12014689185514863972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A306343 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A132862.P12014689185514863972

/-! ## A132862.P18098912866806039056

`n!/A273693(∑[n+3])`
-/

namespace A132862.P18098912866806039056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A273693 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A132862.P18098912866806039056

/-! ## A132862.P7055439477281165139

`A000142(n)/A306343(∑[n])`
-/

namespace A132862.P7055439477281165139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A306343 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A132862.P7055439477281165139

/-!
# A132863: Expansion of 1/(1-3x*c(4x)), where c(x) is the g.f. of A000108.

The programs for A132863, there is no canonical definition to state claims against.
-/

/-! ## A132863.P544308698047780864

`A004273(abs(Δ[A258916(n)]))`
-/

namespace A132863.P544308698047780864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 |f1 (n + 1) - f1 n|.toNat

end

end A132863.P544308698047780864

/-!
# A132864: Expansion of 1/(1-4x*c(5x)), where c(x) is the g.f. of A000108.

The programs for A132864, there is no canonical definition to state claims against.
-/

/-! ## A132864.P18062504885309856025

`4*A039147(2*a(n-1))` with `a(0)=1`
-/

namespace A132864.P18062504885309856025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A039147 (2 * a (n - 1)).toNat

end

end A132864.P18062504885309856025

/-!
# A132868: a(n) = 3*a(n-1) - a(n-3) + 3*a(n-4), with initial values 1,3,7,20.

The programs for A132868, the canonical program `A132868.P5180020621089758551` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132868 has offset 0).

The definition of A132868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A132868.P5180020621089758551`, by `A132868.P5180020621089758551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132868.P5180020621089758551

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=20`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132868

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P5180020621089758551.Spec : Prop :=
  ∀ n, P5180020621089758551.a n = A132868 n

theorem P5180020621089758551.correct : P5180020621089758551.Spec := by
  intro n
  simp only [A132868]

end A132868

/-! ## A132868.P17904063835038302866

`ogf((1-2x^2)/(1-3x+x^3-3x^4))`
-/

namespace A132868.P17904063835038302866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -3, 0, 1, -3] n

end

end A132868.P17904063835038302866

namespace A132868

/-- `ogf((1-2x^2)/(1-3x+x^3-3x^4))` -/
def P17904063835038302866.Spec : Prop :=
  ∀ n, P17904063835038302866.a n = A132868 n

end A132868

/-! ## A132868.P13128013484655395308

`xor(3^n-a(n-1), n²%3)` with `a(0)=1`
-/

namespace A132868.P13128013484655395308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor ((3 ^ n : ℤ) - a (n - 1)) ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A132868.P13128013484655395308

namespace A132868

/-- `xor(3^n-a(n-1), n²%3)` -/
def P13128013484655395308.Spec : Prop :=
  ∀ n, P13128013484655395308.a n = A132868 n

end A132868

/-! ## A132868.P3300852570031903094

`xor(n²%3, A132353(n))`
-/

namespace A132868.P3300852570031903094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n ^ 2 % 3 : ℕ) : ℤ) (A132353 n)

end

end A132868.P3300852570031903094

namespace A132868

/-- `xor(n²%3, A132353(n))` -/
def P3300852570031903094.Spec : Prop :=
  ∀ n, P3300852570031903094.a n = A132868 n

end A132868

/-! ## A132868.P14584795370721863281

`∑[A133448(n)-3^n]`
-/

namespace A132868.P14584795370721863281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133448 n - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132868.P14584795370721863281

namespace A132868

/-- `∑[A133448(n)-3^n]` -/
def P14584795370721863281.Spec : Prop :=
  ∀ n, P14584795370721863281.a n = A132868 n

end A132868

/-! ## A132868.P11445076135264022388

`A141495(n)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A132868.P11445076135264022388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  A141495 n - a (n - 3)

end

end A132868.P11445076135264022388

namespace A132868

/-- `A141495(n)-a(n-3)` -/
def P11445076135264022388.Spec : Prop :=
  ∀ n, P11445076135264022388.a n = A132868 n

end A132868

/-! ## A132868.P14178989174439706876

`A133453(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A132868.P14178989174439706876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133453 (n - 1) + a (n - 1)

end

end A132868.P14178989174439706876

namespace A132868

/-- `A133453(n-1)+a(n-1)` -/
def P14178989174439706876.Spec : Prop :=
  ∀ n, P14178989174439706876.a n = A132868 n

end A132868

/-! ## A132868.P5257345632247975137

`xor(val(∑[n]+2, 3), A015518(n+1))`
-/

namespace A132868.P5257345632247975137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j + 2) 3 : ℤ) (A015518 (n + 1))

end

end A132868.P5257345632247975137

namespace A132868

/-- `xor(val(∑[n]+2, 3), A015518(n+1))` -/
def P5257345632247975137.Spec : Prop :=
  ∀ n, P5257345632247975137.a n = A132868 n

end A132868

/-! ## A132868.P13534390249279876624

`A132353(n)+A128834(n)`
-/

namespace A132868.P13534390249279876624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n + A128834 n

end

end A132868.P13534390249279876624

namespace A132868

/-- `A132353(n)+A128834(n)` -/
def P13534390249279876624.Spec : Prop :=
  ∀ n, P13534390249279876624.a n = A132868 n

end A132868

/-! ## A132868.P22409015440222378

`A164965(n)+A135266(n)`
-/

namespace A132868.P22409015440222378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 n + A135266 n

end

end A132868.P22409015440222378

namespace A132868

/-- `A164965(n)+A135266(n)` -/
def P22409015440222378.Spec : Prop :=
  ∀ n, P22409015440222378.a n = A132868 n

end A132868

/-! ## A132868.P3392481332589527700

`A133448(n)-A132353(n)`
-/

namespace A132868.P3392481332589527700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133448 n - A132353 n

end

end A132868.P3392481332589527700

namespace A132868

/-- `A133448(n)-A132353(n)` -/
def P3392481332589527700.Spec : Prop :=
  ∀ n, P3392481332589527700.a n = A132868 n

end A132868

/-! ## A132868.P13694797435958071361

`xor(A011655(n), A132353(n))`
-/

namespace A132868.P13694797435958071361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A132353 n)

end

end A132868.P13694797435958071361

namespace A132868

/-- `xor(A011655(n), A132353(n))` -/
def P13694797435958071361.Spec : Prop :=
  ∀ n, P13694797435958071361.a n = A132868 n

end A132868

/-! ## A132868.P4367654218548665682

`A094705(n)+A024494(n+1)`
-/

namespace A132868.P4367654218548665682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094705 n + A024494 (n + 1)

end

end A132868.P4367654218548665682

namespace A132868

/-- `A094705(n)+A024494(n+1)` -/
def P4367654218548665682.Spec : Prop :=
  ∀ n, P4367654218548665682.a n = A132868 n

end A132868

/-! ## A132868.P5326575497284340806

`A132353(n)-A010892(n+2)`
-/

namespace A132868.P5326575497284340806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n - A010892 (n + 2)

end

end A132868.P5326575497284340806

namespace A132868

/-- `A132353(n)-A010892(n+2)` -/
def P5326575497284340806.Spec : Prop :=
  ∀ n, P5326575497284340806.a n = A132868 n

end A132868

/-! ## A132868.P2832268958406692341

`Δ[A039300(n)]+∑[A092220(n)]`
-/

namespace A132868.P2832268958406692341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A132868.P2832268958406692341

namespace A132868

/-- `Δ[A039300(n)]+∑[A092220(n)]` -/
def P2832268958406692341.Spec : Prop :=
  ∀ n, P2832268958406692341.a n = A132868 n

end A132868

/-! ## A132868.P6339063245375767901

`A132353(n)-A260192(2*n+1)`
-/

namespace A132868.P6339063245375767901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n - A260192 (2 * n + 1)

end

end A132868.P6339063245375767901

namespace A132868

/-- `A132353(n)-A260192(2*n+1)` -/
def P6339063245375767901.Spec : Prop :=
  ∀ n, P6339063245375767901.a n = A132868 n

end A132868

/-! ## A132868.P7295506598436175482

`xor(Δ[A008620(n+1)], A015518(n+1))`
-/

namespace A132868.P7295506598436175482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A015518 (n + 1))

end

end A132868.P7295506598436175482

namespace A132868

/-- `xor(Δ[A008620(n+1)], A015518(n+1))` -/
def P7295506598436175482.Spec : Prop :=
  ∀ n, P7295506598436175482.a n = A132868 n

end A132868

/-! ## A132868.P17851583626275875187

`∑[A007051(n)-∑[A001611(n+1)]%2]`
-/

namespace A132868.P17851583626275875187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132868.P17851583626275875187

namespace A132868

/-- `∑[A007051(n)-∑[A001611(n+1)]%2]` -/
def P17851583626275875187.Spec : Prop :=
  ∀ n, P17851583626275875187.a n = A132868 n

end A132868

/-! ## A132868.P12187992546170705699

`A039300(n)+∑[A132353(n)]-A132353(n)`
-/

namespace A132868.P12187992546170705699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n + (∑ j ∈ Finset.range (n + 1), f1 j - A132353 n)

end

end A132868.P12187992546170705699

namespace A132868

/-- `A039300(n)+∑[A132353(n)]-A132353(n)` -/
def P12187992546170705699.Spec : Prop :=
  ∀ n, P12187992546170705699.a n = A132868 n

end A132868

/-! ## A132868.P16645907699304579587

`A131531(n+1)+A132353(n)+A131531(n+2)`
-/

namespace A132868.P16645907699304579587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (A132353 n + A131531 (n + 2))

end

end A132868.P16645907699304579587

namespace A132868

/-- `A131531(n+1)+A132353(n)+A131531(n+2)` -/
def P16645907699304579587.Spec : Prop :=
  ∀ n, P16645907699304579587.a n = A132868 n

end A132868

/-!
# A132870: Triangle T, read by rows, where the g.f. of row n of T^n = (n^2 + y)^n for 0 <= n <= 29, where T^n denotes the n-th power of T considered as (lower-left) matrix.

The programs for A132870, there is no canonical definition to state claims against.
-/

/-! ## A132870.P894524424750202262

`A272400(A181612(n))`
-/

namespace A132870.P894524424750202262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272400 (A181612 n).toNat

end

end A132870.P894524424750202262

/-! ## A132870.P15992366821189013374

`A369339(A282629(n+1))`
-/

namespace A132870.P15992366821189013374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369339 (A282629 (n + 1)).toNat

end

end A132870.P15992366821189013374

/-! ## A132870.P17312465179373856762

`A283796(A008969(n+2))`
-/

namespace A132870.P17312465179373856762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283796 (A008969 (n + 2)).toNat

end

end A132870.P17312465179373856762

/-!
# A132871: Row sums of triangle A132870.

The programs for A132871, there is no canonical definition to state claims against.
-/

/-! ## A132871.P16116469414039751752

`A023717(A376093(n))+A001833(n)`
-/

namespace A132871.P16116469414039751752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A376093 n).toNat + A001833 n

end

end A132871.P16116469414039751752

/-!
# A132872: Column 0 of triangle A132870 (first 30 terms only).

The programs for A132872, there is no canonical definition to state claims against.
-/

/-! ## A132872.P13900069361465797711

`A132870(∑[n])`
-/

namespace A132872.P13900069361465797711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132872.P13900069361465797711

/-! ## A132872.P4174757650794506875

`and(-1, A132870(A000217(n)))`
-/

namespace A132872.P4174757650794506875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132870 (A000217 n).toNat)

end

end A132872.P4174757650794506875

/-! ## A132872.P7291309943068762024

`A132870(A000217(n))^A178334(n)`
-/

namespace A132872.P7291309943068762024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132870 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A132872.P7291309943068762024

/-! ## A132872.P2975823056028180258

`A057077(n)²*A132870(A000217(n))`
-/

namespace A132872.P2975823056028180258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A132870 (A000217 n).toNat

end

end A132872.P2975823056028180258

/-! ## A132872.P941769275247783850

`A132870(A000217(n))+A048298(3*n)`
-/

namespace A132872.P941769275247783850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132870 (A000217 n).toNat + A048298 (3 * n)

end

end A132872.P941769275247783850

/-!
# A132873: Column 1 of triangle A132870 (first 30 terms only).

The programs for A132873, there is no canonical definition to state claims against.
-/

/-! ## A132873.P9485924677462644916

`A132870(∑[n+1]+1)`
-/

namespace A132873.P9485924677462644916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132873.P9485924677462644916

/-! ## A132873.P13107380322622294943

`record[A132870(A014132(n+1))]`
-/

namespace A132873.P13107380322622294943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132870 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132873.P13107380322622294943

/-! ## A132873.P1368968437277883029

`record[A132870(gcd(n, A198954(n)))]`
-/

namespace A132873.P1368968437277883029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132870 (Int.gcd (n : ℤ) (A198954 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132873.P1368968437277883029

/-! ## A132873.P10063456594304109166

`record[lcm(A128908(n), A132870(n))]`
-/

namespace A132873.P10063456594304109166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128908 n) (A132870 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132873.P10063456594304109166

/-! ## A132873.P16260790398587193684

`record[A132870(n)*A318602(n+1)]`
-/

namespace A132873.P16260790398587193684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132870 n * A318602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132873.P16260790398587193684

/-!
# A132874: Column 2 of triangle A132870 (first 30 terms only).

The programs for A132874, there is no canonical definition to state claims against.
-/

/-! ## A132874.P9041224558885266098

`A132870(∑[n+2]+3)`
-/

namespace A132874.P9041224558885266098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132870 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A132874.P9041224558885266098

/-!
# A132875: Triangle T, read by rows, where g.f. of row n of T^n = (y + n*(n+1))^n for n>=0 and T^n denotes the n-th matrix power of T.

The programs for A132875, there is no canonical definition to state claims against.
-/

/-! ## A132875.P17084946749355753125

`A119918(A392061(n+1))`
-/

namespace A132875.P17084946749355753125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119918 (A392061 (n + 1)).toNat

end

end A132875.P17084946749355753125

/-! ## A132875.P260592711392830165

`A320637(A328271(n+1))`
-/

namespace A132875.P260592711392830165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320637 (A328271 (n + 1)).toNat

end

end A132875.P260592711392830165

/-! ## A132875.P17204986386246742635

`A033892(A049055(n+2))`
-/

namespace A132875.P17204986386246742635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033892 (A049055 (n + 2)).toNat

end

end A132875.P17204986386246742635

/-!
# A132877: Column 0 of triangle A132875.

The programs for A132877, there is no canonical definition to state claims against.
-/

/-! ## A132877.P11365618923124505070

`A132875(∑[n])`
-/

namespace A132877.P11365618923124505070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132875 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132877.P11365618923124505070

/-! ## A132877.P4253138605949445017

`record[A132875(n)]`
-/

namespace A132877.P4253138605949445017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132877.P4253138605949445017

/-! ## A132877.P1095319789270253672

`and(-1, A132875(A000217(n)))`
-/

namespace A132877.P1095319789270253672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A132875 (A000217 n).toNat)

end

end A132877.P1095319789270253672

/-! ## A132877.P8416392477470974708

`A132875(C(n+1, 2))*A317145(n+1)`
-/

namespace A132877.P8416392477470974708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132875 (Nat.choose (n + 1) 2) * A317145 (n + 1)

end

end A132877.P8416392477470974708

/-! ## A132877.P14230821703143858784

`A165110(n)+A132875(n*(n+1)/2)`
-/

namespace A132877.P14230821703143858784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n + A132875 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A132877.P14230821703143858784

/-!
# A132878: Column 1 of triangle A132875.

The programs for A132878, there is no canonical definition to state claims against.
-/

/-! ## A132878.P18095047925124159938

`∑[n+1]*A132879(n)`
-/

namespace A132878.P18095047925124159938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A132879 n

end

end A132878.P18095047925124159938

/-! ## A132878.P7699521154340785569

`A132879(n)*A179865(n+2)`
-/

namespace A132878.P7699521154340785569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132879 n * A179865 (n + 2)

end

end A132878.P7699521154340785569

/-! ## A132878.P3447090889679032098

`A132879(n)*A133722(3*n+5)`
-/

namespace A132878.P3447090889679032098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132879 n * A133722 (3 * n + 5)

end

end A132878.P3447090889679032098

/-! ## A132878.P17507778646739793618

`A132879(n)*A235791(A064999(n))`
-/

namespace A132878.P17507778646739793618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132879 n * A235791 (A064999 n).toNat

end

end A132878.P17507778646739793618

/-! ## A132878.P1874163702378026653

`A132879(n)+A000096(n)*A132879(n)`
-/

namespace A132878.P1874163702378026653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132879 n + A000096 n * A132879 n

end

end A132878.P1874163702378026653

/-!
# A132879: a(n) = A132878(n)/[(n+1)*(n+2)/2] for n>=0, where A132878 is column 1 of triangle A132870.

The programs for A132879, there is no canonical definition to state claims against.
-/

/-! ## A132879.P5279919679668642014

`A132878(n)/((n+1)*(n+2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132879.P5279919679668642014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132878 n : ℚ) / (((n + 1) * (n + 2) : ℚ) / 2)

end

end A132879.P5279919679668642014

/-! ## A132879.P16440801041815250828

`round(A132878(n)/∑[n+1])`
-/

namespace A132879.P16440801041815250828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A132878 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A132879.P16440801041815250828

/-! ## A132879.P17459359354289025651

`floor(A132878(n)/A133722(3*n+5))`
-/

namespace A132879.P17459359354289025651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132878 n : ℚ) / (A133722 (3 * n + 5) : ℚ)⌋

end

end A132879.P17459359354289025651

/-! ## A132879.P10557621895203026741

`A132875(∑[n+1]+1)/Δ[A000292(n)]`
-/

namespace A132879.P10557621895203026741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132875 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A132879.P10557621895203026741

/-!
# A132880: a(n) = A000123( A000975(n-1) ) for n>=1 with a(0)=1, where A000123(n) = number of partitions of 2n into powers of 2 and A000975(n) = n-th number without consecutive equal binary digits.

The programs for A132880, the canonical program `A132880.P3878101244072083350` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132880 has offset 0).

The definition of A132880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132880.P3878101244072083350

`A000123((2^(n+1)+(-1)^n-3)/6)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A132880

/-- `A000123((2^(n+1)+(-1)^n-3)/6)` -/
def P3878101244072083350.Spec : Prop :=
  ∀ n, P3878101244072083350.a n = A132880 n

theorem P3878101244072083350.correct : P3878101244072083350.Spec := by
  intro n
  simp only [A132880]

end A132880

/-! ## A132880.P3066172732304556168

`a(n-1)+A000123(A000975(n-1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A132880.P3066172732304556168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A000123 (A000975 (n - 1) - 1).toNat

end

end A132880.P3066172732304556168

namespace A132880

/-- `a(n-1)+A000123(A000975(n-1)-1)` -/
def P3066172732304556168.Spec : Prop :=
  ∀ n, P3066172732304556168.a n = A132880 n

end A132880

/-! ## A132880.P18002406425678720576

`A018819(abs(∑[(-2)^n]))`
-/

namespace A132880.P18002406425678720576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A132880.P18002406425678720576

namespace A132880

/-- `A018819(abs(∑[(-2)^n]))` -/
def P18002406425678720576.Spec : Prop :=
  ∀ n, P18002406425678720576.a n = A132880 n

end A132880

/-! ## A132880.P1772917044543832101

`and(-1, A018819(floor(∑[2^n/3])))`
-/

namespace A132880.P1772917044543832101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A018819 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat)

end

end A132880.P1772917044543832101

namespace A132880

/-- `and(-1, A018819(floor(∑[2^n/3])))` -/
def P1772917044543832101.Spec : Prop :=
  ∀ n, P1772917044543832101.a n = A132880 n

end A132880

/-! ## A132880.P13805480616429526070

`C(A018819(A000975(n)), 1-char[1])`
-/

namespace A132880.P13805480616429526070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A018819 (A000975 n).toNat).toNat (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A132880.P13805480616429526070

namespace A132880

/-- `C(A018819(A000975(n)), 1-char[1])` -/
def P13805480616429526070.Spec : Prop :=
  ∀ n, (P13805480616429526070.a n : ℤ) = A132880 n

end A132880

/-!
# A132881: a(n) is the number of isolated divisors of n.

The programs for A132881, there is no canonical definition to state claims against.
-/

/-! ## A132881.P10228922969037737787

`A000005(n+1)-A132747(n+1)`
-/

namespace A132881.P10228922969037737787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A132747 (n + 1)

end

end A132881.P10228922969037737787

/-! ## A132881.P15080835646422006797

`val(A328166(n+1), 2)`
-/

namespace A132881.P15080835646422006797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328166 (n + 1)).toNat 2

end

end A132881.P15080835646422006797

/-! ## A132881.P15690877476222030313

`Δ[A006218(n)]-A132747(n+1)`
-/

namespace A132881.P15690877476222030313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A132747 (n + 1)

end

end A132881.P15690877476222030313

/-! ## A132881.P11649665834331723358

`A243865(n+1)+A243917(n+1)-A132747(n+1)`
-/

namespace A132881.P11649665834331723358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1) + (A243917 (n + 1) - A132747 (n + 1))

end

end A132881.P11649665834331723358

/-! ## A132881.P15461245468417219520

`A001227(n+1)*A001511(n+1)-A132747(n+1)`
-/

namespace A132881.P15461245468417219520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A132747 (n + 1)

end

end A132881.P15461245468417219520

/-! ## A132881.P4131008069621532640

`A007814(A328166(n+1))`
-/

namespace A132881.P4131008069621532640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A328166 (n + 1)).toNat

end

end A132881.P4131008069621532640

/-!
# A132882: a(n) = the sum of the positive isolated divisors of n.

The programs for A132882, there is no canonical definition to state claims against.
-/

/-! ## A132882.P15075142884591910777

`A000203(n+1)-A132748(n+1)`
-/

namespace A132882.P15075142884591910777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A132748 (n + 1)

end

end A132882.P15075142884591910777

/-! ## A132882.P11461332911080469838

`Δ[A160664(n)]-A132748(n+1)`
-/

namespace A132882.P11461332911080469838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A132748 (n + 1)

end

end A132882.P11461332911080469838

/-! ## A132882.P11287033256772743975

`A074400(n+1)/2-A132748(n+1)`
-/

namespace A132882.P11287033256772743975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A132748 (n + 1) : ℚ)

end

end A132882.P11287033256772743975

/-! ## A132882.P6555335954420193820

`A001065(n+1)+n+1-A132748(n+1)`
-/

namespace A132882.P6555335954420193820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ((n + 1 : ℤ) - A132748 (n + 1))

end

end A132882.P6555335954420193820

/-! ## A132882.P7784054033469413278

`A243983(n+1)+A243984(n+1)-A132748(n+1)`
-/

namespace A132882.P7784054033469413278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243983 (n + 1) + (A243984 (n + 1) - A132748 (n + 1))

end

end A132882.P7784054033469413278

/-! ## A132882.P7706048260788851771

`A110654(A074400(n+1))-A132748(n+1)`
-/

namespace A132882.P7706048260788851771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A074400 (n + 1)).toNat - A132748 (n + 1)

end

end A132882.P7706048260788851771

/-!
# A132883: Triangle read by rows: T(n,k) is the number of paths in the first quadrant from (0,0) to (n,0), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), having k U steps (0 <= k <= floor(n/2)).

The programs for A132883, there is no canonical definition to state claims against.
-/

/-! ## A132883.P14740626415349282337

`A132886(n)/(A055087(n)+1)`
-/

namespace A132883.P14740626415349282337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132886 n : ℚ) / (A055087 n + 1 : ℚ)

end

end A132883.P14740626415349282337

/-! ## A132883.P6754170623426448807

`A132886(n)/A122197(n+1)`
-/

namespace A132883.P6754170623426448807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132886 n : ℚ) / (A122197 (n + 1) : ℚ)

end

end A132883.P6754170623426448807

/-! ## A132883.P16864376044285533442

`A132886(n)/sqrt(A126114(n+1))`
-/

namespace A132883.P16864376044285533442
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A132886 n : ℝ) / Real.sqrt (A126114 (n + 1) : ℝ)

end

end A132883.P16864376044285533442

/-! ## A132883.P11949109480882391589

`A132886(n)/A005496(A055087(n))`
-/

namespace A132883.P11949109480882391589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132886 n : ℚ) / (A005496 (A055087 n).toNat : ℚ)

end

end A132883.P11949109480882391589

/-! ## A132883.P1913430419680512516

`A132886(n)/A008619(A025643(n+1))`
-/

namespace A132883.P1913430419680512516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132886 n : ℚ) / (A008619 (A025643 (n + 1)).toNat : ℚ)

end

end A132883.P1913430419680512516

/-! ## A132883.P2509945880375116430

`A132886(n)/A002260(A056536(n+1))`
-/

namespace A132883.P2509945880375116430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132886 n : ℚ) / (A002260 (A056536 (n + 1)).toNat : ℚ)

end

end A132883.P2509945880375116430

/-!
# A132884: Triangle read by rows: T(n,k) is the number of paths in the right half-plane from (0,0) to (n,0), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), having k h=(1,0) steps (0<=k<=n).

The programs for A132884, there is no canonical definition to state claims against.
-/

/-! ## A132884.P1180270427334976044

`A269729(A378061(n))`
-/

namespace A132884.P1180270427334976044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269729 (A378061 n).toNat

end

end A132884.P1180270427334976044

/-! ## A132884.P13045931462830777889

`A103298(A137286(n)²)`
-/

namespace A132884.P13045931462830777889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A137286 n ^ 2).toNat

end

end A132884.P13045931462830777889

/-! ## A132884.P9983173278657902223

`A103298(A180048(n)²)`
-/

namespace A132884.P9983173278657902223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A180048 n ^ 2).toNat

end

end A132884.P9983173278657902223

/-! ## A132884.P5297243570122946540

`A143824(A039598(n)*A099174(n))`
-/

namespace A132884.P5297243570122946540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A039598 n * A099174 n).toNat

end

end A132884.P5297243570122946540

/-! ## A132884.P8915740982525557874

`A103298(A054336(n)*A128890(n))`
-/

namespace A132884.P8915740982525557874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A054336 n * A128890 n).toNat

end

end A132884.P8915740982525557874

/-!
# A132885: Triangle read by rows: T(n,k) is the number of paths in the right half-plane from (0,0) to (n,0), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), having k H=(2,0) steps (0 <= k <= floor(n/2)).

The programs for A132885, the canonical program `A132885.P5107990570951772901` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132885 has offset 0).

The definition of A132885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132885.P16675289210611877577

`A171128(A091018(n))`
-/

namespace A132885.P16675289210611877577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171128 (A091018 n).toNat

end

end A132885.P16675289210611877577

namespace A132885

/-- `A171128(A091018(n))` -/
def P16675289210611877577.Spec : Prop :=
  ∀ n, P16675289210611877577.a n = A132885 n

end A132885

/-! ## A132885.P5573031179663735066

`A171128(A056536(n+1)-1)`
-/

namespace A132885.P5573031179663735066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171128 (A056536 (n + 1) - 1).toNat

end

end A132885.P5573031179663735066

namespace A132885

/-- `A171128(A056536(n+1)-1)` -/
def P5573031179663735066.Spec : Prop :=
  ∀ n, P5573031179663735066.a n = A132885 n

end A132885

/-! ## A132885.P5107990570951772901

`A002426(A082375(n))*A011973(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A132885

/-- `A002426(A082375(n))*A011973(n)` -/
def P5107990570951772901.Spec : Prop :=
  ∀ n, P5107990570951772901.a n = A132885 n

theorem P5107990570951772901.correct : P5107990570951772901.Spec := by
  intro n
  simp only [A132885]

end A132885

/-! ## A132885.P8714255019248946096

`A171128(A153881(n+1)+A056536(n+1))`
-/

namespace A132885.P8714255019248946096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171128 (A153881 (n + 1) + A056536 (n + 1)).toNat

end

end A132885.P8714255019248946096

namespace A132885

/-- `A171128(A153881(n+1)+A056536(n+1))` -/
def P8714255019248946096.Spec : Prop :=
  ∀ n, P8714255019248946096.a n = A132885 n

end A132885

/-!
# A132886: Triangle read by rows: T(n,k) is the number of paths in the right half-plane, from (0,0) to (n,0), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), having k U steps (0 <= k <= floor(n/2)).

The programs for A132886, there is no canonical definition to state claims against.
-/

/-! ## A132886.P11008900143627865739

`(A055087(n)+1)*A132883(n)`
-/

namespace A132886.P11008900143627865739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055087 n + 1) * A132883 n

end

end A132886.P11008900143627865739

/-! ## A132886.P10623801762365716826

`A122197(n+1)*A132883(n)`
-/

namespace A132886.P10623801762365716826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1) * A132883 n

end

end A132886.P10623801762365716826

/-! ## A132886.P11128980872504802538

`sqrt(A126114(n+1))*A132883(n)`
-/

namespace A132886.P11128980872504802538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A126114 (n + 1) : ℝ) * (A132883 n : ℝ)

end

end A132886.P11128980872504802538

/-! ## A132886.P5793807063951432379

`A005496(A055087(n))*A132883(n)`
-/

namespace A132886.P5793807063951432379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A055087 n).toNat * A132883 n

end

end A132886.P5793807063951432379

/-! ## A132886.P5733494022779832594

`A008619(A025643(n+1))*A132883(n)`
-/

namespace A132886.P5733494022779832594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025643 (n + 1)).toNat * A132883 n

end

end A132886.P5733494022779832594

/-! ## A132886.P8035971390832304129

`A002260(A056536(n+1))*A132883(n)`
-/

namespace A132886.P8035971390832304129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A056536 (n + 1)).toNat * A132883 n

end

end A132886.P8035971390832304129

/-!
# A132887: Number of symmetric paths in the first quadrant, from (0,0) to (n,0), consisting of steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0).

The programs for A132887, there is no canonical definition to state claims against.
-/

/-! ## A132887.P4710549892488232402

`A194640(lcm(A074324(n), A081297(n)))`
-/

namespace A132887.P4710549892488232402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (Int.lcm (A074324 n) (A081297 n))

end

end A132887.P4710549892488232402

/-! ## A132887.P5360063898151217658

`A194640(A074324(n)^A038769(n+1))`
-/

namespace A132887.P5360063898151217658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (SequenceMachineLib.roundAway ((A074324 n : ℚ) ^ (A038769 (n + 1) : ℤ))).toNat

end

end A132887.P5360063898151217658

/-! ## A132887.P13011703680353851821

`A194640(A038769(n+1)²*A074324(n))`
-/

namespace A132887.P13011703680353851821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A038769 (n + 1) ^ 2 * A074324 n).toNat

end

end A132887.P13011703680353851821

/-! ## A132887.P1776127294022948353

`A194640(A038769(n+1)*A074324(n)*A038769(n+1))`
-/

namespace A132887.P1776127294022948353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A038769 (n + 1) * A074324 n * A038769 (n + 1)).toNat

end

end A132887.P1776127294022948353

/-!
# A132889: Sum of the lengths of the longest increasing subsequence over all 321-avoiding permutations of [n].

The programs for A132889, the canonical program `A132889.P10837545302455266262` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132889 has offset 1).

The definition of A132889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132889.P10837545302455266262

`A116385(2*n)+A005566(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A132889

/-- `A116385(2*n)+A005566(n)` -/
def P10837545302455266262.Spec : Prop :=
  ∀ n, P10837545302455266262.a n = A132889 (n + 1)

theorem P10837545302455266262.correct : P10837545302455266262.Spec := by
  intro n
  simp only [A132889, Nat.add_sub_cancel]

end A132889

/-! ## A132889.P903090149796590388

`A037955(2*n+1)+A005566(n)`
-/

namespace A132889.P903090149796590388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n + 1) + A005566 n

end

end A132889.P903090149796590388

namespace A132889

/-- `A037955(2*n+1)+A005566(n)` -/
def P903090149796590388.Spec : Prop :=
  ∀ n, P903090149796590388.a n = A132889 (n + 1)

end A132889

/-! ## A132889.P12882570219156057073

`A005566(n)+record[A037955(A026741(n))]`
-/

namespace A132889.P12882570219156057073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005566 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132889.P12882570219156057073

namespace A132889

/-- `A005566(n)+record[A037955(A026741(n))]` -/
def P12882570219156057073.Spec : Prop :=
  ∀ n, P12882570219156057073.a n = A132889 (n + 1)

end A132889

/-! ## A132889.P11775939484602415883

`A001700(n)+A005566(n)-A000108(n+1)`
-/

namespace A132889.P11775939484602415883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (A005566 n - A000108 (n + 1))

end

end A132889.P11775939484602415883

namespace A132889

/-- `A001700(n)+A005566(n)-A000108(n+1)` -/
def P11775939484602415883.Spec : Prop :=
  ∀ n, P11775939484602415883.a n = A132889 (n + 1)

end A132889

/-! ## A132889.P9835367470665245430

`A001791(n+1)+A005566(n)-A001700(n)`
-/

namespace A132889.P9835367470665245430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + (A005566 n - A001700 n)

end

end A132889.P9835367470665245430

namespace A132889

/-- `A001791(n+1)+A005566(n)-A001700(n)` -/
def P9835367470665245430.Spec : Prop :=
  ∀ n, P9835367470665245430.a n = A132889 (n + 1)

end A132889

/-! ## A132889.P4718992277041946889

`A005566(n)+A001700(n+1)%A001700(n)`
-/

namespace A132889.P4718992277041946889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005566 n + Int.tmod (A001700 (n + 1)) (A001700 n)

end

end A132889.P4718992277041946889

namespace A132889

/-- `A005566(n)+A001700(n+1)%A001700(n)` -/
def P4718992277041946889.Spec : Prop :=
  ∀ n, P4718992277041946889.a n = A132889 (n + 1)

end A132889

/-!
# A132891: Sum of the heights of all left factors of Dyck paths of length n.

The programs for A132891, there is no canonical definition to state claims against.
-/

/-! ## A132891.P7421616354686708927

`A204004(A150763(n))`
-/

namespace A132891.P7421616354686708927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (A150763 n).toNat

end

end A132891.P7421616354686708927

/-! ## A132891.P4919749752287588264

`A055086(A149607(n+1))`
-/

namespace A132891.P4919749752287588264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A149607 (n + 1)).toNat

end

end A132891.P4919749752287588264

/-! ## A132891.P14546137969437732304

`A135304(A288831(n+1))`
-/

namespace A132891.P14546137969437732304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A288831 (n + 1)).toNat

end

end A132891.P14546137969437732304

/-!
# A132892: Square array T(m,n) read by antidiagonals; T(m,n) is the number of equivalence classes in the set of sequences of n nonnegative integers that sum to m, generated by the equivalence relation defined in the following manner: we write a sequence in the form a[1]0a[2]0...0a[p], where each a[i] is a (possibly empty) sequence of positive integers; two sequences in this form, a[1]0a[2]0...0a[p] and b[1]0b[2]0...0b[q] are said to be equivalent if p=q and b[1],b[2],...,b[q] is a cyclic permutation of a[1],a[2],...a[p].

The programs for A132892, there is no canonical definition to state claims against.
-/

/-! ## A132892.P15955868466352367379

`A351356(lt[1, A056885(n)])`
-/

namespace A132892.P15955868466352367379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132892.P15955868466352367379

/-! ## A132892.P7328586453504168491

`A351356(lt[1, A054124(n)])`
-/

namespace A132892.P7328586453504168491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132892.P7328586453504168491

/-! ## A132892.P14978840896537431202

`A351356(lt[1, A293012(n)])`
-/

namespace A132892.P14978840896537431202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132892.P14978840896537431202

/-! ## A132892.P10790546837176811573

`A351356(lt[1, A306209(n)])`
-/

namespace A132892.P10790546837176811573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132892.P10790546837176811573

/-! ## A132892.P3912353986514241625

`A351356(lt[1, A307847(n)])`
-/

namespace A132892.P3912353986514241625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132892.P3912353986514241625

/-! ## A132892.P5671381968477564770

`A351356(lt[1, A331562(n)])`
-/

namespace A132892.P5671381968477564770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132892.P5671381968477564770

/-! ## A132892.P7182000053737714656

`A351356(lt[0, A351357(n+1)])`
-/

namespace A132892.P7182000053737714656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132892.P7182000053737714656

/-! ## A132892.P3513993827492657259

`A351356(lt[n+1, A209518(n)])`
-/

namespace A132892.P3513993827492657259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132892.P3513993827492657259

/-! ## A132892.P9601909713699150474

`A351356(lt[1, A209518(n)-n])`
-/

namespace A132892.P9601909713699150474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A132892.P9601909713699150474

/-!
# A132894: Number of (1,0) steps in all paths of length n with steps U=(1,1), D=(1,-1) and H=(1,0), starting at (0,0), staying weakly above the x-axis (i.e., in all length-n left factors of Motzkin paths).

The programs for A132894, the canonical program `A132894.P13878505637686974869` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132894 has offset 0).

The definition of A132894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132894.P5201774773694118686

`2*n/(n-1)*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A132894.P5201774773694118686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 1) + 3 * a (n - 2)

end

end A132894.P5201774773694118686

namespace A132894

/-- `2*n/(n-1)*a(n-1)+3*a(n-2)` -/
def P5201774773694118686.Spec : Prop :=
  ∀ n, P5201774773694118686.a n = (A132894 n : ℚ)

end A132894

/-! ## A132894.P13878505637686974869

`n*A005773(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A132894

/-- `n*A005773(n)` -/
def P13878505637686974869.Spec : Prop :=
  ∀ n, P13878505637686974869.a n = A132894 n

theorem P13878505637686974869.correct : P13878505637686974869.Spec := by
  intro n
  simp only [A132894]

end A132894

/-! ## A132894.P13534550519733640736

`n*A307789(n+1)`
-/

namespace A132894.P13534550519733640736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A307789 (n + 1)

end

end A132894.P13534550519733640736

namespace A132894

/-- `n*A307789(n+1)` -/
def P13534550519733640736.Spec : Prop :=
  ∀ n, P13534550519733640736.a n = A132894 n

end A132894

/-! ## A132894.P18319308472407809021

`abs(n/2*A085455(n))`
-/

namespace A132894.P18319308472407809021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 2 * (A085455 n : ℚ)|

end

end A132894.P18319308472407809021

namespace A132894

/-- `abs(n/2*A085455(n))` -/
def P18319308472407809021.Spec : Prop :=
  ∀ n, P18319308472407809021.a n = (A132894 n : ℚ)

end A132894

/-! ## A132894.P15388469153715130540

`n*(∑[A025566(n)]-1)`
-/

namespace A132894.P15388469153715130540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A132894.P15388469153715130540

namespace A132894

/-- `n*(∑[A025566(n)]-1)` -/
def P15388469153715130540.Spec : Prop :=
  ∀ n, P15388469153715130540.a n = A132894 n

end A132894

/-! ## A132894.P653695547753403757

`n/2*∑[A105696(n)]`
-/

namespace A132894.P653695547753403757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105696 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A132894.P653695547753403757

namespace A132894

/-- `n/2*∑[A105696(n)]` -/
def P653695547753403757.Spec : Prop :=
  ∀ n, P653695547753403757.a n = (A132894 n : ℚ)

end A132894

/-! ## A132894.P3614860602817567632

`n/2*A025565(n+1)`
-/

namespace A132894.P3614860602817567632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A025565 (n + 1) : ℚ)

end

end A132894.P3614860602817567632

namespace A132894

/-- `n/2*A025565(n+1)` -/
def P3614860602817567632.Spec : Prop :=
  ∀ n, P3614860602817567632.a n = (A132894 n : ℚ)

end A132894

/-! ## A132894.P519569458991559036

`(n+2)/3*A005774(n)`
-/

namespace A132894.P519569458991559036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 3 * (A005774 n : ℚ)

end

end A132894.P519569458991559036

namespace A132894

/-- `(n+2)/3*A005774(n)` -/
def P519569458991559036.Spec : Prop :=
  ∀ n, P519569458991559036.a n = (A132894 n : ℚ)

end A132894

/-! ## A132894.P12602353299685335608

`A092690(n)-A002426(n)`
-/

namespace A132894.P12602353299685335608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092690 n - A002426 n

end

end A132894.P12602353299685335608

namespace A132894

/-- `A092690(n)-A002426(n)` -/
def P12602353299685335608.Spec : Prop :=
  ∀ n, P12602353299685335608.a n = A132894 n

theorem P12602353299685335608.correct : P12602353299685335608.Spec := by
  intro n
  simp only [A132894, Nat.add_sub_cancel, A132894.P12602353299685335608.a, A132894.P13878505637686974869.a, A002426, A002426.P18316219981098248731.a, A005773, A005773.P2300326801340372225.a, A092690, A092690.P2634630127419684393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132894

/-! ## A132894.P15549134828948352741

`A263841(n)-A005773(n+1)`
-/

namespace A132894.P15549134828948352741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263841 n - A005773 (n + 1)

end

end A132894.P15549134828948352741

namespace A132894

/-- `A263841(n)-A005773(n+1)` -/
def P15549134828948352741.Spec : Prop :=
  ∀ n, P15549134828948352741.a n = A132894 n

theorem P15549134828948352741.correct : P15549134828948352741.Spec := by
  intro n
  simp only [A132894, Nat.add_sub_cancel, A132894.P15549134828948352741.a, A132894.P13878505637686974869.a, A005773, A005773.P2300326801340372225.a, A263841, A263841.P10709210720201135454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132894

/-! ## A132894.P10204137887404693150

`A092690(n)-A005213(2*n)`
-/

namespace A132894.P10204137887404693150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092690 n - A005213 (2 * n)

end

end A132894.P10204137887404693150

namespace A132894

/-- `A092690(n)-A005213(2*n)` -/
def P10204137887404693150.Spec : Prop :=
  ∀ n, P10204137887404693150.a n = A132894 n

end A132894

/-! ## A132894.P15604807128393062500

`n*(A026135(n)-A005774(n))`
-/

namespace A132894.P15604807128393062500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A026135 n - A005774 n)

end

end A132894.P15604807128393062500

namespace A132894

/-- `n*(A026135(n)-A005774(n))` -/
def P15604807128393062500.Spec : Prop :=
  ∀ n, P15604807128393062500.a n = A132894 n

end A132894

/-! ## A132894.P7527798841221167229

`n*A085455(n)/A280560(n)`
-/

namespace A132894.P7527798841221167229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A085455 n : ℚ) / (A280560 n : ℚ))

end

end A132894.P7527798841221167229

namespace A132894

/-- `n*A085455(n)/A280560(n)` -/
def P7527798841221167229.Spec : Prop :=
  ∀ n, P7527798841221167229.a n = (A132894 n : ℚ)

end A132894

/-! ## A132894.P8146181993660230716

`n*(A036908(n+1)-A140429(n))`
-/

namespace A132894.P8146181993660230716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A036908 (n + 1) - A140429 n)

end

end A132894.P8146181993660230716

namespace A132894

/-- `n*(A036908(n+1)-A140429(n))` -/
def P8146181993660230716.Spec : Prop :=
  ∀ n, P8146181993660230716.a n = A132894 n

theorem P8146181993660230716.correct : P8146181993660230716.Spec := by
  intro n
  simp only [A132894, Nat.add_sub_cancel, A132894.P8146181993660230716.a, A132894.P13878505637686974869.a, A005773, A005773.P2300326801340372225.a, A036908, A036908.P5657673403250560357.a, A140429, A140429.P7959095880599910709.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132894

/-! ## A132894.P6530649186702492431

`n*(A036908(n+1)-Δ[A124302(n)])`
-/

namespace A132894.P6530649186702492431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A036908 (n + 1) - (f1 (n + 1) - f1 n))

end

end A132894.P6530649186702492431

namespace A132894

/-- `n*(A036908(n+1)-Δ[A124302(n)])` -/
def P6530649186702492431.Spec : Prop :=
  ∀ n, P6530649186702492431.a n = A132894 n

end A132894

/-! ## A132894.P17471724861761475820

`((n+3)*A001006(n+1)+(n-3)*A001006(n))*(n+2)/18`
-/

namespace A132894.P17471724861761475820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * A001006 (n + 1) + ((n : ℤ) - 3) * A001006 n : ℚ) * ((n + 2 : ℚ) / 18)

end

end A132894.P17471724861761475820

namespace A132894

/-- `((n+3)*A001006(n+1)+(n-3)*A001006(n))*(n+2)/18` -/
def P17471724861761475820.Spec : Prop :=
  ∀ n, P17471724861761475820.a n = (A132894 n : ℚ)

end A132894

/-! ## A132894.P10536709982094738133

`A134757(n+1)-A092690(n)`
-/

namespace A132894.P10536709982094738133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134757 (n + 1) - A092690 n

end

end A132894.P10536709982094738133

namespace A132894

/-- `A134757(n+1)-A092690(n)` -/
def P10536709982094738133.Spec : Prop :=
  ∀ n, P10536709982094738133.a n = A132894 n

end A132894

/-! ## A132894.P2935612538265555070

`A109188(n+1)-A391990(n)`
-/

namespace A132894.P2935612538265555070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109188 (n + 1) - A391990 n

end

end A132894.P2935612538265555070

namespace A132894

/-- `A109188(n+1)-A391990(n)` -/
def P2935612538265555070.Spec : Prop :=
  ∀ n, P2935612538265555070.a n = A132894 n

end A132894

/-! ## A132894.P16161133233105834408

`n*A135308(A008748(n))`
-/

namespace A132894.P16161133233105834408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A135308 (A008748 n).toNat

end

end A132894.P16161133233105834408

namespace A132894

/-- `n*A135308(A008748(n))` -/
def P16161133233105834408.Spec : Prop :=
  ∀ n, P16161133233105834408.a n = A132894 n

end A132894

/-! ## A132894.P5703245944275823641

`n*A038622(C(n, 2))`
-/

namespace A132894.P5703245944275823641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038622 (Nat.choose n 2)

end

end A132894.P5703245944275823641

namespace A132894

/-- `n*A038622(C(n, 2))` -/
def P5703245944275823641.Spec : Prop :=
  ∀ n, P5703245944275823641.a n = A132894 n

end A132894

/-!
# A132895: Even numbers for which all divisors, with the exception of 1 and 2, are isolated. A positive divisor, k, of n is isolated if neither (k-1) nor (k+1) divides n.

The programs for A132895, the canonical program `A132895.P15394333494377494833` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132895 has offset 1).

The definition of A132895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112886, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132895.P15394333494377494833

`2*A112886(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A132895

/-- `2*A112886(n+1)` -/
def P15394333494377494833.Spec : Prop :=
  ∀ n, P15394333494377494833.a n = A132895 (n + 1)

theorem P15394333494377494833.correct : P15394333494377494833.Spec := by
  intro n
  simp only [A132895, Nat.add_sub_cancel]

end A132895

/-! ## A132895.P15529169124716133744

`filter[A232745(n+1), A360128(#)]`
-/

namespace A132895.P15529169124716133744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P15529169124716133744

namespace A132895

/-- `filter[A232745(n+1), A360128(#)]` -/
def P15529169124716133744.Spec : Prop :=
  ∀ n, P15529169124716133744.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P16791324939814791030

`filter[A226872(n+2), A360128(#)]`
-/

namespace A132895.P16791324939814791030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P16791324939814791030

namespace A132895

/-- `filter[A226872(n+2), A360128(#)]` -/
def P16791324939814791030.Spec : Prop :=
  ∀ n, P16791324939814791030.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P3294579632541876491

`filter[A047235(n+1), A360128(#)]`
-/

namespace A132895.P3294579632541876491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P3294579632541876491

namespace A132895

/-- `filter[A047235(n+1), A360128(#)]` -/
def P3294579632541876491.Spec : Prop :=
  ∀ n, P3294579632541876491.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P2091075931452704160

`filter[A328588(n+1), A360128(#)]`
-/

namespace A132895.P2091075931452704160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P2091075931452704160

namespace A132895

/-- `filter[A328588(n+1), A360128(#)]` -/
def P2091075931452704160.Spec : Prop :=
  ∀ n, P2091075931452704160.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P4792372190229163946

`filter[A342050(n+1), A360128(#)]`
-/

namespace A132895.P4792372190229163946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P4792372190229163946

namespace A132895

/-- `filter[A342050(n+1), A360128(#)]` -/
def P4792372190229163946.Spec : Prop :=
  ∀ n, P4792372190229163946.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P17140217181502980505

`filter[A260391(n+1), A360128(#)]`
-/

namespace A132895.P17140217181502980505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P17140217181502980505

namespace A132895

/-- `filter[A260391(n+1), A360128(#)]` -/
def P17140217181502980505.Spec : Prop :=
  ∀ n, P17140217181502980505.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P15330418924304522003

`filter[A092486(2*n+1), A360128(#)]`
-/

namespace A132895.P15330418924304522003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P15330418924304522003

namespace A132895

/-- `filter[A092486(2*n+1), A360128(#)]` -/
def P15330418924304522003.Spec : Prop :=
  ∀ n, P15330418924304522003.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P15126649138957061765

`eq[3, A132748(n+1)]+1`
-/

namespace A132895.P15126649138957061765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132748 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A132895.P15126649138957061765

namespace A132895

/-- `eq[3, A132748(n+1)]+1` -/
def P15126649138957061765.Spec : Prop :=
  ∀ n, (P15126649138957061765.a n : ℤ) = A132895 (n + 1)

end A132895

/-! ## A132895.P13366628186454153205

`2*(eq[1, A007862(n+1)]+1)`
-/

namespace A132895.P13366628186454153205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A132895.P13366628186454153205

namespace A132895

/-- `2*(eq[1, A007862(n+1)]+1)` -/
def P13366628186454153205.Spec : Prop :=
  ∀ n, (P13366628186454153205.a n : ℤ) = A132895 (n + 1)

end A132895

/-! ## A132895.P2831739782133140275

`A004277(A112886(n+1))`
-/

namespace A132895.P2831739782133140275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A112886 (n + 1)).toNat

end

end A132895.P2831739782133140275

namespace A132895

/-- `A004277(A112886(n+1))` -/
def P2831739782133140275.Spec : Prop :=
  ∀ n, P2831739782133140275.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P14468417467407036389

`filter[A004277(n+1), A360128(#)]`
-/

namespace A132895.P14468417467407036389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P14468417467407036389

namespace A132895

/-- `filter[A004277(n+1), A360128(#)]` -/
def P14468417467407036389.Spec : Prop :=
  ∀ n, P14468417467407036389.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P4649970092898929708

`filter[A005843(n+1), A360128(#)]`
-/

namespace A132895.P4649970092898929708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P4649970092898929708

namespace A132895

/-- `filter[A005843(n+1), A360128(#)]` -/
def P4649970092898929708.Spec : Prop :=
  ∀ n, P4649970092898929708.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P16388797154654583751

`filter[A004275(n+2), A360128(#)]`
-/

namespace A132895.P16388797154654583751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P16388797154654583751

namespace A132895

/-- `filter[A004275(n+2), A360128(#)]` -/
def P16388797154654583751.Spec : Prop :=
  ∀ n, P16388797154654583751.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P10048031915638917375

`filter[A300576(n+3), A360128(#)]`
-/

namespace A132895.P10048031915638917375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A132895.P10048031915638917375

namespace A132895

/-- `filter[A300576(n+3), A360128(#)]` -/
def P10048031915638917375.Spec : Prop :=
  ∀ n, P10048031915638917375.a n = A132895 (n + 1)

end A132895

/-! ## A132895.P9589309001423609266

`eq[1, A133565(n+2)]+1`
-/

namespace A132895.P9589309001423609266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A132895.P9589309001423609266

namespace A132895

/-- `eq[1, A133565(n+2)]+1` -/
def P9589309001423609266.Spec : Prop :=
  ∀ n, (P9589309001423609266.a n : ℤ) = A132895 (n + 1)

end A132895

/-! ## A132895.P12841892662261881176

`eq[A010160(n), A133565(n+1)]`
-/

namespace A132895.P12841892662261881176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132895.P12841892662261881176

namespace A132895

/-- `eq[A010160(n), A133565(n+1)]` -/
def P12841892662261881176.Spec : Prop :=
  ∀ n, (P12841892662261881176.a n : ℤ) = A132895 (n + 1)

end A132895

/-! ## A132895.P15973388623540715367

`eq[A019425(n), A133565(n+1)]`
-/

namespace A132895.P15973388623540715367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132895.P15973388623540715367

namespace A132895

/-- `eq[A019425(n), A133565(n+1)]` -/
def P15973388623540715367.Spec : Prop :=
  ∀ n, (P15973388623540715367.a n : ℤ) = A132895 (n + 1)

end A132895

/-! ## A132895.P3313457523715939667

`eq[A019426(n), A133565(n+1)]`
-/

namespace A132895.P3313457523715939667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132895.P3313457523715939667

namespace A132895

/-- `eq[A019426(n), A133565(n+1)]` -/
def P3313457523715939667.Spec : Prop :=
  ∀ n, (P3313457523715939667.a n : ℤ) = A132895 (n + 1)

end A132895

/-! ## A132895.P15256987023565768537

`eq[A019427(n), A133565(n+1)]`
-/

namespace A132895.P15256987023565768537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A132895.P15256987023565768537

namespace A132895

/-- `eq[A019427(n), A133565(n+1)]` -/
def P15256987023565768537.Spec : Prop :=
  ∀ n, (P15256987023565768537.a n : ℤ) = A132895 (n + 1)

end A132895

/-!
# A132896: Triangle read by rows: T(n,k)=number of prime divisors of C(n,k), counted with multiplicity (0<=k<=n).

The programs for A132896, the canonical program `A132896.P17640570016819450837` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132896 has offset 0).

The definition of A132896 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132896.P17640570016819450837

`A001222(A007318(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A132896

/-- `A001222(A007318(n))` -/
def P17640570016819450837.Spec : Prop :=
  ∀ n, P17640570016819450837.a n = A132896 n

theorem P17640570016819450837.correct : P17640570016819450837.Spec := by
  intro n
  simp only [A132896]

end A132896

/-! ## A132896.P7401484912328431769

`∑{e}[A278218(n), #]`
-/

namespace A132896.P7401484912328431769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P7401484912328431769

namespace A132896

/-- `∑{e}[A278218(n), #]` -/
def P7401484912328431769.Spec : Prop :=
  ∀ n, (P7401484912328431769.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P11587624868702700137

`∑{e}[A108086(n), #]`
-/

namespace A132896.P11587624868702700137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P11587624868702700137

namespace A132896

/-- `∑{e}[A108086(n), #]` -/
def P11587624868702700137.Spec : Prop :=
  ∀ n, (P11587624868702700137.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P2197626947429846775

`∑{e}[A117440(n), #]`
-/

namespace A132896.P2197626947429846775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P2197626947429846775

namespace A132896

/-- `∑{e}[A117440(n), #]` -/
def P2197626947429846775.Spec : Prop :=
  ∀ n, (P2197626947429846775.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P16690881823580104929

`∑{e}[A130595(n), #]`
-/

namespace A132896.P16690881823580104929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P16690881823580104929

namespace A132896

/-- `∑{e}[A130595(n), #]` -/
def P16690881823580104929.Spec : Prop :=
  ∀ n, (P16690881823580104929.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P5553516472595071894

`∑{e}[A206735(n), #]`
-/

namespace A132896.P5553516472595071894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P5553516472595071894

namespace A132896

/-- `∑{e}[A206735(n), #]` -/
def P5553516472595071894.Spec : Prop :=
  ∀ n, (P5553516472595071894.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P8810925576159087740

`∑{e}[sqrt(A008459(n)), #]`
-/

namespace A132896.P8810925576159087740
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A132896.P8810925576159087740

namespace A132896

/-- `∑{e}[sqrt(A008459(n)), #]` -/
def P8810925576159087740.Spec : Prop :=
  ∀ n, (P8810925576159087740.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P4907173963170501576

`∑{e}[A014473(n)+1, #]`
-/

namespace A132896.P4907173963170501576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P4907173963170501576

namespace A132896

/-- `∑{e}[A014473(n)+1, #]` -/
def P4907173963170501576.Spec : Prop :=
  ∀ n, (P4907173963170501576.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P2250024595322833336

`∑{e}[A154926(n+1), #]`
-/

namespace A132896.P2250024595322833336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P2250024595322833336

namespace A132896

/-- `∑{e}[A154926(n+1), #]` -/
def P2250024595322833336.Spec : Prop :=
  ∀ n, (P2250024595322833336.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P6468789997975499704

`∑{e}[A198321(n+1), #]`
-/

namespace A132896.P6468789997975499704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P6468789997975499704

namespace A132896

/-- `∑{e}[A198321(n+1), #]` -/
def P6468789997975499704.Spec : Prop :=
  ∀ n, (P6468789997975499704.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P297390634080264369

`∑{e}[A152905(2*n), #]`
-/

namespace A132896.P297390634080264369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P297390634080264369

namespace A132896

/-- `∑{e}[A152905(2*n), #]` -/
def P297390634080264369.Spec : Prop :=
  ∀ n, (P297390634080264369.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P6206144480613383823

`∑{e}[ceil(A134059(n)/3), #]`
-/

namespace A132896.P6206144480613383823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P6206144480613383823

namespace A132896

/-- `∑{e}[ceil(A134059(n)/3), #]` -/
def P6206144480613383823.Spec : Prop :=
  ∀ n, (P6206144480613383823.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P2227696831898541767

`∑{e}[A325003(A316964(n)+1), #]`
-/

namespace A132896.P2227696831898541767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325003 (A316964 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P2227696831898541767

namespace A132896

/-- `∑{e}[A325003(A316964(n)+1), #]` -/
def P2227696831898541767.Spec : Prop :=
  ∀ n, (P2227696831898541767.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P15181278502835607328

`∑{e}[A124927(n)-A124928(n), #]`
-/

namespace A132896.P15181278502835607328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n - A124928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132896.P15181278502835607328

namespace A132896

/-- `∑{e}[A124927(n)-A124928(n), #]` -/
def P15181278502835607328.Spec : Prop :=
  ∀ n, (P15181278502835607328.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P18099150554756996147

`∑{e}[A013609(n)/A059268(n), #]`
-/

namespace A132896.P18099150554756996147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A132896.P18099150554756996147

namespace A132896

/-- `∑{e}[A013609(n)/A059268(n), #]` -/
def P18099150554756996147.Spec : Prop :=
  ∀ n, (P18099150554756996147.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P4107977113604225195

`∑{e}[A176348(n)/A176346(n), #]`
-/

namespace A132896.P4107977113604225195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A176346 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A132896.P4107977113604225195

namespace A132896

/-- `∑{e}[A176348(n)/A176346(n), #]` -/
def P4107977113604225195.Spec : Prop :=
  ∀ n, (P4107977113604225195.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P14029612429940132734

`∑{e}[C(A003056(n), A004736(n+1)-1), #]`
-/

namespace A132896.P14029612429940132734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A132896.P14029612429940132734

namespace A132896

/-- `∑{e}[C(A003056(n), A004736(n+1)-1), #]` -/
def P14029612429940132734.Spec : Prop :=
  ∀ n, (P14029612429940132734.a n : ℤ) = A132896 n

end A132896

/-! ## A132896.P2969141612080606327

`A001222(A278218(n))`
-/

namespace A132896.P2969141612080606327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278218 n).toNat

end

end A132896.P2969141612080606327

namespace A132896

/-- `A001222(A278218(n))` -/
def P2969141612080606327.Spec : Prop :=
  ∀ n, P2969141612080606327.a n = A132896 n

end A132896

/-! ## A132896.P8324632639495799438

`A001222(abs(A108086(n)))`
-/

namespace A132896.P8324632639495799438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A108086 n|.toNat

end

end A132896.P8324632639495799438

namespace A132896

/-- `A001222(abs(A108086(n)))` -/
def P8324632639495799438.Spec : Prop :=
  ∀ n, P8324632639495799438.a n = A132896 n

end A132896

/-! ## A132896.P12306419722612201316

`A001222(abs(A117440(n)))`
-/

namespace A132896.P12306419722612201316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A117440 n|.toNat

end

end A132896.P12306419722612201316

namespace A132896

/-- `A001222(abs(A117440(n)))` -/
def P12306419722612201316.Spec : Prop :=
  ∀ n, P12306419722612201316.a n = A132896 n

end A132896

/-!
# A132898: Triangle read by rows: T(n,k) = (-1)^(n-1)*n + (-1)^(k-1)*k - 1, 1 <= k <= n.

The programs for A132898, the canonical program `A132898.P5828757024565564740` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132898 has offset 1).

The definition of A132898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^row(n)*(row(n)+1)+(-1)^col(n)*(col(n)+1)-1` (program `A132898.P5828757024565564740`, by `A132898.P5828757024565564740.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132898.P5828757024565564740

`(-1)^row(n)*(row(n)+1)+(-1)^col(n)*(col(n)+1)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132898

/-- `(-1)^row(n)*(row(n)+1)+(-1)^col(n)*(col(n)+1)-1` -/
def P5828757024565564740.Spec : Prop :=
  ∀ n, P5828757024565564740.a n = A132898 (n + 1)

theorem P5828757024565564740.correct : P5828757024565564740.Spec := by
  intro n
  simp only [A132898, Nat.add_sub_cancel]

end A132898

/-!
# A132899: Row sums of triangle A132898.

The programs for A132899, the canonical program `A132899.P12796448673650665852` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132899 has offset 1).

The definition of A132899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132899.P12796448673650665852

`(-1)^n*((n+1)²+ceil((n+1)/2))-(n+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132899

/-- `(-1)^n*((n+1)²+ceil((n+1)/2))-(n+1)` -/
def P12796448673650665852.Spec : Prop :=
  ∀ n, P12796448673650665852.a n = A132899 (n + 1)

theorem P12796448673650665852.correct : P12796448673650665852.Spec := by
  intro n
  simp only [A132899, Nat.add_sub_cancel]

end A132899

/-! ## A132899.P10224349464680026198

`floor(a(n-1)-(2/n+2)*(a(n-1)+n))` with `a(0)=1`
-/

namespace A132899.P10224349464680026198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - (2 / (n : ℚ) + 2) * (a (n - 1) + (n : ℤ) : ℚ)⌋

end

end A132899.P10224349464680026198

namespace A132899

/-- `floor(a(n-1)-(2/n+2)*(a(n-1)+n))` -/
def P10224349464680026198.Spec : Prop :=
  ∀ n, P10224349464680026198.a n = A132899 (n + 1)

end A132899

/-! ## A132899.P15512083600223763043

`Δ[(n+1)*A001057(n)-∑[n]]`
-/

namespace A132899.P15512083600223763043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001057 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132899.P15512083600223763043

namespace A132899

/-- `Δ[(n+1)*A001057(n)-∑[n]]` -/
def P15512083600223763043.Spec : Prop :=
  ∀ n, P15512083600223763043.a n = A132899 (n + 1)

end A132899

/-! ## A132899.P9017833352525322224

`Δ[A009531(n)*A030640(n)]`
-/

namespace A132899.P9017833352525322224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n * A030640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132899.P9017833352525322224

namespace A132899

/-- `Δ[A009531(n)*A030640(n)]` -/
def P9017833352525322224.Spec : Prop :=
  ∀ n, P9017833352525322224.a n = A132899 (n + 1)

end A132899

/-! ## A132899.P10416308607730258524

`Δ[A001057(n)*A266303(n+1)]`
-/

namespace A132899.P10416308607730258524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A266303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132899.P10416308607730258524

namespace A132899

/-- `Δ[A001057(n)*A266303(n+1)]` -/
def P10416308607730258524.Spec : Prop :=
  ∀ n, P10416308607730258524.a n = A132899 (n + 1)

end A132899

/-! ## A132899.P6830930870496855766

`Δ[(n+1)²-A064038(2*(n+1))]`
-/

namespace A132899.P6830930870496855766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A064038 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132899.P6830930870496855766

namespace A132899

/-- `Δ[(n+1)²-A064038(2*(n+1))]` -/
def P6830930870496855766.Spec : Prop :=
  ∀ n, P6830930870496855766.a n = A132899 (n + 1)

end A132899

/-! ## A132899.P2912814001574487926

`Δ[A004526(n)-A319702(A033816(n))]`
-/

namespace A132899.P2912814001574487926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A319702 (A033816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132899.P2912814001574487926

namespace A132899

/-- `Δ[A004526(n)-A319702(A033816(n))]` -/
def P2912814001574487926.Spec : Prop :=
  ∀ n, P2912814001574487926.a n = A132899 (n + 1)

end A132899

/-! ## A132899.P14465889218500922234

`(A081351(n)-A110654(n))*∑[A002448(n²)]`
-/

namespace A132899.P14465889218500922234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081351 n - A110654 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132899.P14465889218500922234

namespace A132899

/-- `(A081351(n)-A110654(n))*∑[A002448(n²)]` -/
def P14465889218500922234.Spec : Prop :=
  ∀ n, P14465889218500922234.a n = A132899 (n + 1)

end A132899

/-! ## A132899.P16100906645947562145

`(A081351(n)-A110654(n))*A214507(n²)`
-/

namespace A132899.P16100906645947562145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081351 n - A110654 n) * A214507 (n ^ 2)

end

end A132899.P16100906645947562145

namespace A132899

/-- `(A081351(n)-A110654(n))*A214507(n²)` -/
def P16100906645947562145.Spec : Prop :=
  ∀ n, P16100906645947562145.a n = A132899 (n + 1)

end A132899

/-! ## A132899.P18173938824436244049

`∑[A038608(A000124(2*n+1))-1]`
-/

namespace A132899.P18173938824436244049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A000124 (2 * n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132899.P18173938824436244049

namespace A132899

/-- `∑[A038608(A000124(2*n+1))-1]` -/
def P18173938824436244049.Spec : Prop :=
  ∀ n, P18173938824436244049.a n = A132899 (n + 1)

end A132899

