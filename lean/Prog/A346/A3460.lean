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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002
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
# A346002: Distance 2 lexicode over the alphabet {0,1,2}, with the codewords written in base 10.

The programs for A346002, there is no canonical definition to state claims against.
-/

/-! ## A346002.P15107070119277113647

`eq[(-1)^n, ((a(floor(n/3))+n²%3)%3)!]` with `a(0)=1`
-/

namespace A346002.P15107070119277113647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.factorial ((f2 ⌊(n : ℚ) / 3⌋.toNat + n ^ 2 % 3) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A346002.P15107070119277113647

/-! ## A346002.P13113641860730832040

`eq[0, A038574(n)%4]`
-/

namespace A346002.P13113641860730832040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038574 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346002.P13113641860730832040

/-! ## A346002.P9578312204383481027

`eq[1, A117942(n)%3]`
-/

namespace A346002.P9578312204383481027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117942 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346002.P9578312204383481027

/-! ## A346002.P16277068310253605671

`eq[0, A128173(n)%4]`
-/

namespace A346002.P16277068310253605671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128173 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346002.P16277068310253605671

/-! ## A346002.P1385858630297096506

`eq[0, A319651(n)%4]`
-/

namespace A346002.P1385858630297096506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319651 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346002.P1385858630297096506

/-! ## A346002.P6436304942655537685

`lt[A064990(n), (-1)^n]`
-/

namespace A346002.P6436304942655537685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346002.P6436304942655537685

/-! ## A346002.P13514140185369607361

`lt[A189718(n), (-1)^n]`
-/

namespace A346002.P13514140185369607361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346002.P13514140185369607361

/-! ## A346002.P8833980503112744862

`2*lt[A064990(2*n), 1]`
-/

namespace A346002.P8833980503112744862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A346002.P8833980503112744862

/-! ## A346002.P15959794136183998265

`2*lt[A189718(2*n), 1]`
-/

namespace A346002.P15959794136183998265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A346002.P15959794136183998265

/-! ## A346002.P916945713116616586

`eq[4-a(n-1), A004488(n)%2]` with `a(0)=0`
-/

namespace A346002.P916945713116616586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  4 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004488 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346002.P916945713116616586

/-!
# A346004: If n even then n otherwise ((n+1)/2)^2.

The programs for A346004, the canonical program `A346004.P4161767148536542305` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346004 has offset 0).

The definition of A346004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346004.P4161767148536542305

`Δ[C(floor(n/2), 2)]²+n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A346004

/-- `Δ[C(floor(n/2), 2)]²+n` -/
def P4161767148536542305.Spec : Prop :=
  ∀ n, P4161767148536542305.a n = A346004 n

theorem P4161767148536542305.correct : P4161767148536542305.Spec := by
  intro n
  simp only [A346004]

end A346004

/-! ## A346004.P3849800386476032704

`(n%round(cosh(log(acot(n)))))²+n`
-/

namespace A346004.P3849800386476032704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))))) ^ 2 + (n : ℤ)

end

end A346004.P3849800386476032704

namespace A346004

/-- `(n%round(cosh(log(acot(n)))))²+n` -/
def P3849800386476032704.Spec : Prop :=
  ∀ n, P3849800386476032704.a n = A346004 n

end A346004

/-! ## A346004.P11219913977799977333

`a((xor(1, n)-1)%n)+n` with `a(0)=0`
-/

namespace A346004.P11219913977799977333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod ((Nat.xor 1 n : ℤ) - 1) (n : ℤ)).toNat + n

end

end A346004.P11219913977799977333

namespace A346004

/-- `a((xor(1, n)-1)%n)+n` -/
def P11219913977799977333.Spec : Prop :=
  ∀ n, (P11219913977799977333.a n : ℤ) = A346004 n

end A346004

/-! ## A346004.P17724892057088614902

`Δ[C(floor(n/2), 2)]^2+n`
-/

namespace A346004.P17724892057088614902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + (n : ℤ)

end

end A346004.P17724892057088614902

namespace A346004

/-- `Δ[C(floor(n/2), 2)]^2+n` -/
def P17724892057088614902.Spec : Prop :=
  ∀ n, P17724892057088614902.a n = A346004 n

theorem P17724892057088614902.correct : P17724892057088614902.Spec := by
  intro n
  simp only [A346004, Nat.add_sub_cancel, A346004.P17724892057088614902.f1, A346004.P17724892057088614902.a, A346004.P4161767148536542305.f1, A346004.P4161767148536542305.a, SequenceMachineLib.memo_apply]

end A346004

/-! ## A346004.P18332365159834828137

`floor((lcm(2, n)-n)/2)²+n`
-/

namespace A346004.P18332365159834828137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 2 n : ℤ) - (n : ℤ) : ℚ) / 2⌋ ^ 2 + (n : ℤ)

end

end A346004.P18332365159834828137

namespace A346004

/-- `floor((lcm(2, n)-n)/2)²+n` -/
def P18332365159834828137.Spec : Prop :=
  ∀ n, P18332365159834828137.a n = A346004 n

end A346004

/-! ## A346004.P18128007455061154727

`(and(1, n)*floor(n/2))²+n`
-/

namespace A346004.P18128007455061154727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) * ⌊(n : ℚ) / 2⌋) ^ 2 + (n : ℤ)

end

end A346004.P18128007455061154727

namespace A346004

/-- `(and(1, n)*floor(n/2))²+n` -/
def P18128007455061154727.Spec : Prop :=
  ∀ n, P18128007455061154727.a n = A346004 n

end A346004

/-! ## A346004.P5688445479163949191

`floor(n^and(1, n)/2)²+n`
-/

namespace A346004.P5688445479163949191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ Nat.land 1 n : ℚ) / 2⌋ ^ 2 + (n : ℤ)

end

end A346004.P5688445479163949191

namespace A346004

/-- `floor(n^and(1, n)/2)²+n` -/
def P5688445479163949191.Spec : Prop :=
  ∀ n, P5688445479163949191.a n = A346004 n

end A346004

/-! ## A346004.P16742976368064389406

`and(1, n)*a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A346004.P16742976368064389406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.land 1 n * a (n - 2) + n

end

end A346004.P16742976368064389406

namespace A346004

/-- `and(1, n)*a(n-2)+n` -/
def P16742976368064389406.Spec : Prop :=
  ∀ n, (P16742976368064389406.a n : ℤ) = A346004 n

end A346004

/-! ## A346004.P952378369522619521

`lcm(and(1, n), a(n-2))+n` with `a(0)=0, a(1)=1`
-/

namespace A346004.P952378369522619521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm (Nat.land 1 n) (a (n - 2)) + n

end

end A346004.P952378369522619521

namespace A346004

/-- `lcm(and(1, n), a(n-2))+n` -/
def P952378369522619521.Spec : Prop :=
  ∀ n, (P952378369522619521.a n : ℤ) = A346004 n

end A346004

/-! ## A346004.P7782805925095208175

`(xor(1, n)%(n+1)/2)²+n`
-/

namespace A346004.P7782805925095208175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.xor 1 n % (n + 1) : ℕ) : ℚ) / 2) ^ 2 + (n : ℚ)

end

end A346004.P7782805925095208175

namespace A346004

/-- `(xor(1, n)%(n+1)/2)²+n` -/
def P7782805925095208175.Spec : Prop :=
  ∀ n, P7782805925095208175.a n = (A346004 n : ℚ)

end A346004

/-! ## A346004.P17249500926913230959

`(2-gcd(2, n))*a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A346004.P17249500926913230959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 - (Nat.gcd 2 n : ℤ)) * a (n - 2) + (n : ℤ)

end

end A346004.P17249500926913230959

namespace A346004

/-- `(2-gcd(2, n))*a(n-2)+n` -/
def P17249500926913230959.Spec : Prop :=
  ∀ n, P17249500926913230959.a n = A346004 n

end A346004

/-! ## A346004.P7192930519444217376

`n-(2-n)%2*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A346004.P7192930519444217376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - Int.tmod (2 - (n : ℤ)) 2 * a (n - 2)

end

end A346004.P7192930519444217376

namespace A346004

/-- `n-(2-n)%2*a(n-2)` -/
def P7192930519444217376.Spec : Prop :=
  ∀ n, P7192930519444217376.a n = A346004 n

end A346004

/-! ## A346004.P17724882381265342564

`a(gcd(1-n, a(n-1))-1)+n` with `a(0)=0, a(1)=1`
-/

namespace A346004.P17724882381265342564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Int.gcd (1 - (n : ℤ)) (a (n - 1) : ℤ) - 1) + n

end

end A346004.P17724882381265342564

namespace A346004

/-- `a(gcd(1-n, a(n-1))-1)+n` -/
def P17724882381265342564.Spec : Prop :=
  ∀ n, (P17724882381265342564.a n : ℤ) = A346004 n

end A346004

/-! ## A346004.P1154610928764714607

`C(n-1, a(n-1))*a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A346004.P1154610928764714607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose ((n : ℤ) - 1).toNat (a (n - 1)) * a (n - 2) + n

end

end A346004.P1154610928764714607

namespace A346004

/-- `C(n-1, a(n-1))*a(n-2)+n` -/
def P1154610928764714607.Spec : Prop :=
  ∀ n, (P1154610928764714607.a n : ℤ) = A346004 n

end A346004

/-! ## A346004.P1838078854544295337

`(1-A152271(n))²+n`
-/

namespace A346004.P1838078854544295337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A152271 n) ^ 2 + (n : ℤ)

end

end A346004.P1838078854544295337

namespace A346004

/-- `(1-A152271(n))²+n` -/
def P1838078854544295337.Spec : Prop :=
  ∀ n, P1838078854544295337.a n = A346004 n

end A346004

/-! ## A346004.P6113385604935031001

`∑[2*n]-A129370(n)`
-/

namespace A346004.P6113385604935031001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A129370 n

end

end A346004.P6113385604935031001

namespace A346004

/-- `∑[2*n]-A129370(n)` -/
def P6113385604935031001.Spec : Prop :=
  ∀ n, P6113385604935031001.a n = A346004 n

end A346004

/-! ## A346004.P9866764582797359256

`A008794(A093178(n))+n`
-/

namespace A346004.P9866764582797359256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A093178 n).toNat + (n : ℤ)

end

end A346004.P9866764582797359256

namespace A346004

/-- `A008794(A093178(n))+n` -/
def P9866764582797359256.Spec : Prop :=
  ∀ n, P9866764582797359256.a n = A346004 n

end A346004

/-! ## A346004.P3933100945685104860

`A129889(n)+A110654(n)`
-/

namespace A346004.P3933100945685104860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 n + A110654 n

end

end A346004.P3933100945685104860

namespace A346004

/-- `A129889(n)+A110654(n)` -/
def P3933100945685104860.Spec : Prop :=
  ∀ n, P3933100945685104860.a n = A346004 n

end A346004

/-! ## A346004.P15772084695578747215

`A079097(n)-A059841(n)`
-/

namespace A346004.P15772084695578747215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n - A059841 n

end

end A346004.P15772084695578747215

namespace A346004

/-- `A079097(n)-A059841(n)` -/
def P15772084695578747215.Spec : Prop :=
  ∀ n, P15772084695578747215.a n = A346004 n

end A346004

/-! ## A346004.P1798981506409789464

`A266287(n)-A359366(n)`
-/

namespace A346004.P1798981506409789464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 n - A359366 n

end

end A346004.P1798981506409789464

namespace A346004

/-- `A266287(n)-A359366(n)` -/
def P1798981506409789464.Spec : Prop :=
  ∀ n, P1798981506409789464.a n = A346004 n

end A346004

/-!
# A346009: a(n) is the numerator of the average number of distinct prime factors of the divisors of n.

The programs for A346009, the canonical program `A346009.P10450314313708159874` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346009 has offset 1).

The definition of A346009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346009.P10450314313708159874

`A062799(n+1)/A000005(n+1)*A346010(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A346009

/-- `A062799(n+1)/A000005(n+1)*A346010(n+1)` -/
def P10450314313708159874.Spec : Prop :=
  ∀ n, P10450314313708159874.a n = (A346009 (n + 1) : ℚ)

end A346009

/-! ## A346009.P27122614407824843

`A265555(A320390(n+1))%8`
-/

namespace A346009.P27122614407824843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265555 (A320390 (n + 1)).toNat) 8

end

end A346009.P27122614407824843

namespace A346009

/-- `A265555(A320390(n+1))%8` -/
def P27122614407824843.Spec : Prop :=
  ∀ n, P27122614407824843.a n = A346009 (n + 1)

end A346009

/-! ## A346009.P16246709671702973890

`xor(A076526(n+1), A309307(A183092(n+1)))`
-/

namespace A346009.P16246709671702973890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A076526 (n + 1)) (A309307 (A183092 (n + 1)).toNat)

end

end A346009.P16246709671702973890

namespace A346009

/-- `xor(A076526(n+1), A309307(A183092(n+1)))` -/
def P16246709671702973890.Spec : Prop :=
  ∀ n, P16246709671702973890.a n = A346009 (n + 1)

end A346009

/-! ## A346009.P6315516882056718336

`A001222(2^∑{e}[A211776(n+1), A163269(#)])`
-/

namespace A346009.P6315516882056718336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A163269 (Nat.factorization (f1 n).natAbs p) : ℤ))).toNat

end

end A346009.P6315516882056718336

namespace A346009

/-- `A001222(2^∑{e}[A211776(n+1), A163269(#)])` -/
def P6315516882056718336.Spec : Prop :=
  ∀ n, P6315516882056718336.a n = A346009 (n + 1)

end A346009

/-! ## A346009.P12298031610982487976

`A182858(A301935(n+1))`
-/

namespace A346009.P12298031610982487976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182858 (A301935 (n + 1)).toNat

end

end A346009.P12298031610982487976

namespace A346009

/-- `A182858(A301935(n+1))` -/
def P12298031610982487976.Spec : Prop :=
  ∀ n, P12298031610982487976.a n = A346009 (n + 1)

end A346009

/-!
# A346010: a(n) is the denominator of the average number of distinct prime factors of the divisors of n.

The programs for A346010, the canonical program `A346010.P5513981083379835901` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346010 has offset 1).

The definition of A346010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346010.P5513981083379835901

`A000005(n+1)/gcd(A000005(n+1), A062799(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A346010

/-- `A000005(n+1)/gcd(A000005(n+1), A062799(n+1))` -/
def P5513981083379835901.Spec : Prop :=
  ∀ n, P5513981083379835901.a n = (A346010 (n + 1) : ℚ)

end A346010

/-! ## A346010.P16657483959429471683

`gcd(A000005(n+1), A001065(A008480(n+1)!))`
-/

namespace A346010.P16657483959429471683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A001065 (Nat.factorial (A008480 (n + 1)).toNat))

end

end A346010.P16657483959429471683

namespace A346010

/-- `gcd(A000005(n+1), A001065(A008480(n+1)!))` -/
def P16657483959429471683.Spec : Prop :=
  ∀ n, (P16657483959429471683.a n : ℤ) = A346010 (n + 1)

end A346010

/-! ## A346010.P12518813685029810084

`gcd(A000005(n+1), A120623(A111221(n+1)))`
-/

namespace A346010.P12518813685029810084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A120623 (A111221 (n + 1)).toNat)

end

end A346010.P12518813685029810084

namespace A346010

/-- `gcd(A000005(n+1), A120623(A111221(n+1)))` -/
def P12518813685029810084.Spec : Prop :=
  ∀ n, (P12518813685029810084.a n : ℤ) = A346010 (n + 1)

end A346010

/-! ## A346010.P1759736572075161945

`A341935(A110088(n+1)%A299336(A046951(n+1)))`
-/

namespace A346010.P1759736572075161945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (Int.tmod (A110088 (n + 1)) (A299336 (A046951 (n + 1)).toNat)).toNat

end

end A346010.P1759736572075161945

namespace A346010

/-- `A341935(A110088(n+1)%A299336(A046951(n+1)))` -/
def P1759736572075161945.Spec : Prop :=
  ∀ n, P1759736572075161945.a n = A346010 (n + 1)

end A346010

/-! ## A346010.P7775401497848857923

`A338491(A110088(n+1))`
-/

namespace A346010.P7775401497848857923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (A110088 (n + 1)).toNat

end

end A346010.P7775401497848857923

namespace A346010

/-- `A338491(A110088(n+1))` -/
def P7775401497848857923.Spec : Prop :=
  ∀ n, P7775401497848857923.a n = A346010 (n + 1)

end A346010

/-!
# A346012: a(n) is the numerator of A346009(n)/A346010(n) - A001221(n)/2.

The programs for A346012, the canonical program `A346012.P12715492418463311471` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346012 has offset 1).

The definition of A346012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346012.P12715492418463311471

`A000120(∑{e}[n+1, #-1]^A000120(7*n+8))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A346012

/-- `A000120(∑{e}[n+1, #-1]^A000120(7*n+8))` -/
def P12715492418463311471.Spec : Prop :=
  ∀ n, P12715492418463311471.a n = A346012 (n + 1)

theorem P12715492418463311471.correct : P12715492418463311471.Spec := by
  intro n
  simp only [A346012, Nat.add_sub_cancel]

end A346012

/-! ## A346012.P4000618708684041832

`A002148(A007318(n))%A000010(A072411(n+1)+1)`
-/

namespace A346012.P4000618708684041832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 (A007318 n).toNat) (A000010 (A072411 (n + 1) + 1).toNat)

end

end A346012.P4000618708684041832

namespace A346012

/-- `A002148(A007318(n))%A000010(A072411(n+1)+1)` -/
def P4000618708684041832.Spec : Prop :=
  ∀ n, P4000618708684041832.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P9416523447271890218

`A000010(A072411(n+1)+1)-A019428(2*A007318(n))`
-/

namespace A346012.P9416523447271890218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072411 (n + 1) + 1).toNat - A019428 (2 * A007318 n).toNat

end

end A346012.P9416523447271890218

namespace A346012

/-- `A000010(A072411(n+1)+1)-A019428(2*A007318(n))` -/
def P9416523447271890218.Spec : Prop :=
  ∀ n, P9416523447271890218.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P1332130047747300641

`A000010(A072411(n+1)+1)-A002260(A000124(n+7))`
-/

namespace A346012.P1332130047747300641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072411 (n + 1) + 1).toNat - A002260 (A000124 (n + 7)).toNat

end

end A346012.P1332130047747300641

namespace A346012

/-- `A000010(A072411(n+1)+1)-A002260(A000124(n+7))` -/
def P1332130047747300641.Spec : Prop :=
  ∀ n, P1332130047747300641.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P13958340967168399905

`A000010(A072411(n+1)+1)-A010054(C(n, 2))`
-/

namespace A346012.P13958340967168399905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072411 (n + 1) + 1).toNat - A010054 (Nat.choose n 2)

end

end A346012.P13958340967168399905

namespace A346012

/-- `A000010(A072411(n+1)+1)-A010054(C(n, 2))` -/
def P13958340967168399905.Spec : Prop :=
  ∀ n, P13958340967168399905.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P438022489458748503

`A106609(A072411(n+1)-A072411(A106885(n+1)))`
-/

namespace A346012.P438022489458748503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A072411 (n + 1) - A072411 (A106885 (n + 1)).toNat).toNat

end

end A346012.P438022489458748503

namespace A346012

/-- `A106609(A072411(n+1)-A072411(A106885(n+1)))` -/
def P438022489458748503.Spec : Prop :=
  ∀ n, P438022489458748503.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P10427832126684698220

`A000010(A072411(n+1)+1)-A072170(∑[n])`
-/

namespace A346012.P10427832126684698220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072411 (n + 1) + 1).toNat - A072170 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346012.P10427832126684698220

namespace A346012

/-- `A000010(A072411(n+1)+1)-A072170(∑[n])` -/
def P10427832126684698220.Spec : Prop :=
  ∀ n, P10427832126684698220.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P18075104057505548855

`(A000010(A072411(n+1)+1)-1)%A003056(∑[n]+1)`
-/

namespace A346012.P18075104057505548855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A072411 (n + 1) + 1).toNat - 1) (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A346012.P18075104057505548855

namespace A346012

/-- `(A000010(A072411(n+1)+1)-1)%A003056(∑[n]+1)` -/
def P18075104057505548855.Spec : Prop :=
  ∀ n, P18075104057505548855.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P11857196039887229621

`A000010(A072411(n+1)+1)-A054977(A000124(n))`
-/

namespace A346012.P11857196039887229621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072411 (n + 1) + 1).toNat - A054977 (A000124 n).toNat

end

end A346012.P11857196039887229621

namespace A346012

/-- `A000010(A072411(n+1)+1)-A054977(A000124(n))` -/
def P11857196039887229621.Spec : Prop :=
  ∀ n, P11857196039887229621.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P16714121370589611214

`A004273(A000217(n))%A000010(A072411(n+1)+1)`
-/

namespace A346012.P16714121370589611214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A000217 n).toNat) (A000010 (A072411 (n + 1) + 1).toNat)

end

end A346012.P16714121370589611214

namespace A346012

/-- `A004273(A000217(n))%A000010(A072411(n+1)+1)` -/
def P16714121370589611214.Spec : Prop :=
  ∀ n, P16714121370589611214.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P15802080308471905220

`A000010(A072411(n+1)+1)-A038712(A116671(n+1))`
-/

namespace A346012.P15802080308471905220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072411 (n + 1) + 1).toNat - A038712 (A116671 (n + 1)).toNat

end

end A346012.P15802080308471905220

namespace A346012

/-- `A000010(A072411(n+1)+1)-A038712(A116671(n+1))` -/
def P15802080308471905220.Spec : Prop :=
  ∀ n, P15802080308471905220.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P14199901832421036907

`A000010(A072411(n+1)+1)-A322361(A028387(n))`
-/

namespace A346012.P14199901832421036907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A072411 (n + 1) + 1).toNat - A322361 (A028387 n).toNat

end

end A346012.P14199901832421036907

namespace A346012

/-- `A000010(A072411(n+1)+1)-A322361(A028387(n))` -/
def P14199901832421036907.Spec : Prop :=
  ∀ n, P14199901832421036907.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P2508779019624105992

`A187787(A167499(n))%A000010(A072411(n+1)+1)`
-/

namespace A346012.P2508779019624105992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187787 (A167499 n).toNat) (A000010 (A072411 (n + 1) + 1).toNat)

end

end A346012.P2508779019624105992

namespace A346012

/-- `A187787(A167499(n))%A000010(A072411(n+1)+1)` -/
def P2508779019624105992.Spec : Prop :=
  ∀ n, P2508779019624105992.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P8350008299927598008

`A187787(A187792(n+1))%A000010(A072411(n+1)+1)`
-/

namespace A346012.P8350008299927598008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187787 (A187792 (n + 1)).toNat) (A000010 (A072411 (n + 1) + 1).toNat)

end

end A346012.P8350008299927598008

namespace A346012

/-- `A187787(A187792(n+1))%A000010(A072411(n+1)+1)` -/
def P8350008299927598008.Spec : Prop :=
  ∀ n, P8350008299927598008.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P9340963542829338126

`A102354(6^A072411(n+1))`
-/

namespace A346012.P9340963542829338126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A072411 (n + 1) : ℤ))).toNat

end

end A346012.P9340963542829338126

namespace A346012

/-- `A102354(6^A072411(n+1))` -/
def P9340963542829338126.Spec : Prop :=
  ∀ n, P9340963542829338126.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P13754398457548537097

`A102354(6^A290107(n+1))`
-/

namespace A346012.P13754398457548537097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A290107 (n + 1) : ℤ))).toNat

end

end A346012.P13754398457548537097

namespace A346012

/-- `A102354(6^A290107(n+1))` -/
def P13754398457548537097.Spec : Prop :=
  ∀ n, P13754398457548537097.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P4629603714622930351

`A072670(A079496(A072411(n+1))²)`
-/

namespace A346012.P4629603714622930351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A079496 (A072411 (n + 1)).toNat ^ 2).toNat

end

end A346012.P4629603714622930351

namespace A346012

/-- `A072670(A079496(A072411(n+1))²)` -/
def P4629603714622930351.Spec : Prop :=
  ∀ n, P4629603714622930351.a n = A346012 (n + 1)

end A346012

/-! ## A346012.P12623550533247474601

`A252736(A000225(A072411(n+1))²)`
-/

namespace A346012.P12623550533247474601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A000225 (A072411 (n + 1)).toNat ^ 2).toNat

end

end A346012.P12623550533247474601

namespace A346012

/-- `A252736(A000225(A072411(n+1))²)` -/
def P12623550533247474601.Spec : Prop :=
  ∀ n, P12623550533247474601.a n = A346012 (n + 1)

end A346012

/-!
# A346013: a(n) is the denominator of A346009(n)/A346010(n) - A001221(n)/2.

The programs for A346013, there is no canonical definition to state claims against.
-/

/-! ## A346013.P11484578975396939956

`A145979(A183094(n+1))%∑[A032555(n+1)]`
-/

namespace A346013.P11484578975396939956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145979 (A183094 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346013.P11484578975396939956

/-! ## A346013.P3646928282580191326

`A145979(A046660(n+1))%A000217(A270628(n))`
-/

namespace A346013.P3646928282580191326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145979 (A046660 (n + 1)).toNat) (A000217 (A270628 n).toNat)

end

end A346013.P3646928282580191326

/-! ## A346013.P8013567157246121816

`(A145979(A046660(n+1))*A298917(∑[n+1]))%(2*n+1)`
-/

namespace A346013.P8013567157246121816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145979 (A046660 (n + 1)).toNat * A298917 (∑ j ∈ Finset.range (n + 1), f1 j)) (2 * n + 1 : ℤ)

end

end A346013.P8013567157246121816

/-! ## A346013.P5834645317540544384

`A234514(8^A051903(n+1))`
-/

namespace A346013.P5834645317540544384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234514 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A051903 (n + 1) : ℤ))).toNat

end

end A346013.P5834645317540544384

/-! ## A346013.P18311191543797645332

`A145979(A046660(n+1))%A219678(n)`
-/

namespace A346013.P18311191543797645332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145979 (A046660 (n + 1)).toNat) (A219678 n)

end

end A346013.P18311191543797645332

/-!
# A346014: 

The programs for A346014, there is no canonical definition to state claims against.
-/

/-! ## A346014.P10793326421959037662

`eq[1, A346010(n+1)]+1`
-/

namespace A346014.P10793326421959037662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346014.P10793326421959037662

/-!
# A346018: Triangle read by rows: T(n,k) is the number of integers m such that 1 <= m <= n and gcd(m,n) <= k, 1 <= k <= n.

The programs for A346018, there is no canonical definition to state claims against.
-/

/-! ## A346018.P6409189324208101420

`∑[A054523(n+1)]-C(∑[char[∑[n]]], 2)`
-/

namespace A346018.P6409189324208101420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

end

end A346018.P6409189324208101420

/-! ## A346018.P10111077232323616275

`A002260(∑[A054523(n+1)])`
-/

namespace A346018.P10111077232323616275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346018.P10111077232323616275

/-! ## A346018.P8057745171077189932

`abs(A140756(∑[A054523(n+1)]))`
-/

namespace A346018.P8057745171077189932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A346018.P8057745171077189932

/-! ## A346018.P6737560635095356081

`∑[A054523(n+1)]-A057944(n)`
-/

namespace A346018.P6737560635095356081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057944 n

end

end A346018.P6737560635095356081

/-! ## A346018.P5952514152517553709

`∑[A054523(n+1)]+A002262(n)-n`
-/

namespace A346018.P5952514152517553709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002262 n - (n : ℤ))

end

end A346018.P5952514152517553709

/-! ## A346018.P607950187594191051

`∑[A054523(n+1)]+n-A061885(n)`
-/

namespace A346018.P607950187594191051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A061885 n)

end

end A346018.P607950187594191051

/-! ## A346018.P8601092714765847757

`A002262(A014132(∑[A054523(n+1)]))`
-/

namespace A346018.P8601092714765847757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A346018.P8601092714765847757

/-! ## A346018.P2522666057865880835

`A000720(A037126(∑[A054523(n+1)]))`
-/

namespace A346018.P2522666057865880835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A346018.P2522666057865880835

/-! ## A346018.P17342017806006781262

`A004736(A038722(∑[A054523(n+1)]))`
-/

namespace A346018.P17342017806006781262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A346018.P17342017806006781262

/-! ## A346018.P10102207508797329118

`A001222(A078840(∑[A054523(n+1)]))`
-/

namespace A346018.P10102207508797329118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078840 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A346018.P10102207508797329118

/-!
# A346019: Number of n X n invertible matrices over GF(2) that have order 2^n-1.

The programs for A346019, the canonical program `A346019.P9272715041891225070` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346019 has offset 1).

The definition of A346019 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011260, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346019.P9272715041891225070

`A011260(n+1)*A002884(n+1)/A000225(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A346019

/-- `A011260(n+1)*A002884(n+1)/A000225(n+1)` -/
def P9272715041891225070.Spec : Prop :=
  ∀ n, P9272715041891225070.a n = (A346019 (n + 1) : ℚ)

end A346019

/-! ## A346019.P6881435608758794137

`A011260(n+1)*A028365(n)`
-/

namespace A346019.P6881435608758794137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) * A028365 n

end

end A346019.P6881435608758794137

namespace A346019

/-- `A011260(n+1)*A028365(n)` -/
def P6881435608758794137.Spec : Prop :=
  ∀ n, P6881435608758794137.a n = A346019 (n + 1)

end A346019

/-! ## A346019.P10199776100935750623

`A053287(n+1)/(n+1)*A028365(n)`
-/

namespace A346019.P10199776100935750623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (n + 1) : ℚ) / (n + 1 : ℚ) * (A028365 n : ℚ)

end

end A346019.P10199776100935750623

namespace A346019

/-- `A053287(n+1)/(n+1)*A028365(n)` -/
def P10199776100935750623.Spec : Prop :=
  ∀ n, P10199776100935750623.a n = (A346019 (n + 1) : ℚ)

end A346019

/-! ## A346019.P324964165186239200

`A000020(n+1)^abs(A062157(n))*A028365(n)`
-/

namespace A346019.P324964165186239200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000020 (n + 1) : ℚ) ^ (|A062157 n| : ℤ) * (A028365 n : ℚ)

end

end A346019.P324964165186239200

namespace A346019

/-- `A000020(n+1)^abs(A062157(n))*A028365(n)` -/
def P324964165186239200.Spec : Prop :=
  ∀ n, P324964165186239200.a n = (A346019 (n + 1) : ℚ)

end A346019

/-! ## A346019.P6620930129319755642

`(A000020(n+1)-A097331(2*n))*A028365(n)`
-/

namespace A346019.P6620930129319755642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000020 (n + 1) - A097331 (2 * n)) * A028365 n

end

end A346019.P6620930129319755642

namespace A346019

/-- `(A000020(n+1)-A097331(2*n))*A028365(n)` -/
def P6620930129319755642.Spec : Prop :=
  ∀ n, P6620930129319755642.a n = A346019 (n + 1)

end A346019

/-!
# A346020: G.f. A(x) satisfies: A(x) = x + x^3 * exp(A(x) + A(x^2)/2 + A(x^3)/3 + A(x^4)/4 + ...).

The programs for A346020, there is no canonical definition to state claims against.
-/

/-! ## A346020.P280128526284170796

`A180447(A025273(n+1))`
-/

namespace A346020.P280128526284170796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A025273 (n + 1)).toNat

end

end A346020.P280128526284170796

/-! ## A346020.P14328048962407227489

`A000196(A168049(n)-A051768(n+1))`
-/

namespace A346020.P14328048962407227489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A168049 n - A051768 (n + 1)).toNat

end

end A346020.P14328048962407227489

/-! ## A346020.P10040963436636501282

`A303025(n+2)+A000035(A000079(n))`
-/

namespace A346020.P10040963436636501282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303025 (n + 2) + A000035 (A000079 n).toNat

end

end A346020.P10040963436636501282

/-! ## A346020.P3467713683495149863

`A351846(A005043(n))`
-/

namespace A346020.P3467713683495149863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A005043 n).toNat

end

end A346020.P3467713683495149863

/-! ## A346020.P6057465054375502351

`A072088(floor(sqrt(A168049(n))))`
-/

namespace A346020.P6057465054375502351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (Int.sqrt (A168049 n)).toNat

end

end A346020.P6057465054375502351

/-!
# A346021: Primes that are the first in a run of exactly 1 emirp.

The programs for A346021, there is no canonical definition to state claims against.
-/

/-! ## A346021.P14627490699102481459

`A263240(A073790(n)+8)`
-/

namespace A346021.P14627490699102481459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (A073790 n + 8).toNat

end

end A346021.P14627490699102481459

/-! ## A346021.P4711916845272858307

`A006567(A032555(n+1)+7)`
-/

namespace A346021.P4711916845272858307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (A032555 (n + 1) + 7).toNat

end

end A346021.P4711916845272858307

/-! ## A346021.P7085928491342628525

`A006567(A032559(n+1)+7)`
-/

namespace A346021.P7085928491342628525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (A032559 (n + 1) + 7).toNat

end

end A346021.P7085928491342628525

/-! ## A346021.P458121234170835600

`A006567(A077739(n+1)+7)`
-/

namespace A346021.P458121234170835600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (A077739 (n + 1) + 7).toNat

end

end A346021.P458121234170835600

/-! ## A346021.P6594402844780130387

`A006567(A078213(n+1)+7)`
-/

namespace A346021.P6594402844780130387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (A078213 (n + 1) + 7).toNat

end

end A346021.P6594402844780130387

/-!
# A346022: Primes that are the first in a run of exactly 2 emirps.

The programs for A346022, there is no canonical definition to state claims against.
-/

/-! ## A346022.P14411013205190304791

`A217614(eq[A028657(n), A157211(n+4)])`
-/

namespace A346022.P14411013205190304791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157211 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217614 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346022.P14411013205190304791

/-!
# A346028: Primes that are the first in a run of exactly 8 emirps.

The programs for A346028, there is no canonical definition to state claims against.
-/

/-! ## A346028.P791964527868732021

`A103170(∪[A293795(n+1), A346022(n+1)])`
-/

namespace A346028.P791964527868732021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346022 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103170 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A346028.P791964527868732021

/-! ## A346028.P17920926164270305023

`A103170(A293795(n+1))`
-/

namespace A346028.P17920926164270305023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103170 (A293795 (n + 1)).toNat

end

end A346028.P17920926164270305023

/-!
# A346031: G.f. A(x) satisfies: A(x) = x + x^3 * exp(A(x) - A(x^2)/2 + A(x^3)/3 - A(x^4)/4 + ...).

The programs for A346031, there is no canonical definition to state claims against.
-/

/-! ## A346031.P16479109669258866046

`A361148(A211836(2*n+1))%A093074(n+1)`
-/

namespace A346031.P16479109669258866046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361148 (A211836 (2 * n + 1)).toNat) (A093074 (n + 1))

end

end A346031.P16479109669258866046

/-!
# A346032: G.f. A(x) satisfies: A(x) = x^2 + x^3 * exp(A(x) - A(x^2)/2 + A(x^3)/3 - A(x^4)/4 + ...).

The programs for A346032, there is no canonical definition to state claims against.
-/

/-! ## A346032.P1314746205567554598

`A031045(A000120(n)^A126715(n))`
-/

namespace A346032.P1314746205567554598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031045 (SequenceMachineLib.roundAway ((A000120 n : ℚ) ^ (A126715 n : ℤ))).toNat

end

end A346032.P1314746205567554598

/-! ## A346032.P1029673120253303303

`A063962(A316475(n+4)-A309399(n))`
-/

namespace A346032.P1029673120253303303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A316475 (n + 4) - A309399 n).toNat

end

end A346032.P1029673120253303303

/-! ## A346032.P11374037565324543917

`and(A007318(n+1), A086419(A281639(n)))`
-/

namespace A346032.P11374037565324543917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (n + 1)) (A086419 (A281639 n).toNat)

end

end A346032.P11374037565324543917

/-! ## A346032.P6836196416322309902

`A003637(A099036(n+1))%A125749(n+1)`
-/

namespace A346032.P6836196416322309902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003637 (A099036 (n + 1)).toNat) (A125749 (n + 1))

end

end A346032.P6836196416322309902

/-! ## A346032.P14765738300580899015

`A033461(A317735(n+1))%A002024(n+1)`
-/

namespace A346032.P14765738300580899015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033461 (A317735 (n + 1)).toNat) (A002024 (n + 1))

end

end A346032.P14765738300580899015

/-!
# A346034: a(1) = 1, a(2) = 0; a(n+2) = Sum_{d|n} mu(n/d) * a(d).

The programs for A346034, there is no canonical definition to state claims against.
-/

/-! ## A346034.P11921229055501338393

`A216320(n+3)-A001222(A015764(n+1))`
-/

namespace A346034.P11921229055501338393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216320 (n + 3) - A001222 (A015764 (n + 1)).toNat

end

end A346034.P11921229055501338393

/-!
# A346035: a(1) = 1; if a(n) is not divisible by 3, a(n+1) = 4*a(n) + 1, otherwise a(n+1) = a(n)/3.

The programs for A346035, there is no canonical definition to state claims against.
-/

/-! ## A346035.P14503197583774029294

`A099730(∑[A335108(floor((n+4)*2^(n-2)))])`
-/

namespace A346035.P14503197583774029294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335108 ⌊(n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346035.P14503197583774029294

/-! ## A346035.P9701506703762712452

`A272787(n)%A144430(A272764(n+3))`
-/

namespace A346035.P9701506703762712452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272787 n) (A144430 (A272764 (n + 3)).toNat)

end

end A346035.P9701506703762712452

/-!
# A346036: Number of swaps needed to return the recursive transform T(k) = concatenate(reverse(k), len(k) + 1) to the tuple 1, 2, ..., n.

The programs for A346036, there is no canonical definition to state claims against.
-/

/-! ## A346036.P14996588793065640273

`n-A141110(A028310(n))%(n+1)`
-/

namespace A346036.P14996588793065640273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A141110 (A028310 n).toNat) (n + 1 : ℤ)

end

end A346036.P14996588793065640273

/-! ## A346036.P3968494777004066818

`A028310(n)-A141110(round(sqrt(n²+1)))`
-/

namespace A346036.P3968494777004066818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A141110 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A346036.P3968494777004066818

/-! ## A346036.P8625583283890478756

`n-A141110(A065033(2*n))%(n+1)`
-/

namespace A346036.P8625583283890478756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A141110 (A065033 (2 * n)).toNat) (n + 1 : ℤ)

end

end A346036.P8625583283890478756

/-! ## A346036.P2121617910407357777

`(n-A141110(A000007(n)+n))%(n+1)`
-/

namespace A346036.P2121617910407357777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A141110 (A000007 n + (n : ℤ)).toNat) (n + 1 : ℤ)

end

end A346036.P2121617910407357777

/-! ## A346036.P13469542269088559415

`abs(A141110(A000038(n)+n)%(n+1)-n)`
-/

namespace A346036.P13469542269088559415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A141110 (A000038 n + (n : ℤ)).toNat) (n + 1 : ℤ) - (n : ℤ)|

end

end A346036.P13469542269088559415

/-! ## A346036.P11103894740854445321

`abs(A141110(A004277(n)-n)%(n+1)-n)`
-/

namespace A346036.P11103894740854445321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A141110 (A004277 n - (n : ℤ)).toNat) (n + 1 : ℤ) - (n : ℤ)|

end

end A346036.P11103894740854445321

/-! ## A346036.P10251548125923191382

`Δ[A165007(2*n+1)-A165006(2*n+1)]`
-/

namespace A346036.P10251548125923191382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165007 (2 * n + 1) - A165006 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346036.P10251548125923191382

/-! ## A346036.P569830781699650413

`A064287(A028310(n))+n-A006694(n)`
-/

namespace A346036.P569830781699650413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064287 (A028310 n).toNat + ((n : ℤ) - A006694 n)

end

end A346036.P569830781699650413

/-! ## A346036.P15395764486963955042

`A065033(2*n)-A141110(A065033(2*n))`
-/

namespace A346036.P15395764486963955042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A141110 (A065033 (2 * n)).toNat

end

end A346036.P15395764486963955042

/-! ## A346036.P5508366826061431471

`A123108(2*n)-A141110(A123108(2*n))`
-/

namespace A346036.P5508366826061431471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) - A141110 (A123108 (2 * n)).toNat

end

end A346036.P5508366826061431471

/-!
# A346037: Expansion of e.g.f. Product_{k>=1} B(x^k)^(1/k!) where B(x) = exp(exp(x) - 1) = e.g.f. of Bell numbers.

The programs for A346037, there is no canonical definition to state claims against.
-/

/-! ## A346037.P12898254584349472778

`A352130(or(2*n², ∑{e}[n+1, #-val(#!, 2)]))`
-/

namespace A346037.P12898254584349472778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (Int.lor (2 * n ^ 2 : ℤ) (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ)))).toNat

end

end A346037.P12898254584349472778

/-! ## A346037.P1063194443973199723

`or(1, A206821(2*a(n-2)-(1-a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A346037.P1063194443973199723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 (A206821 (2 * a (n - 2) - (1 - a (n - 1))).toNat)

end

end A346037.P1063194443973199723

/-!
# A346038: Triangle read by rows T(n, k) such that Fib(n, x+1) = Sum_{k=1..n} T(n, k)*Fib(k, x) where Fib(n, x) is the n-th Fibonacci polynomial.

The programs for A346038, there is no canonical definition to state claims against.
-/

/-! ## A346038.P16614078067226451696

`A026758(n)-A069283(A111845(n))`
-/

namespace A346038.P16614078067226451696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n - A069283 (A111845 n).toNat

end

end A346038.P16614078067226451696

/-! ## A346038.P12055594762571124423

`A221179(A187829(n+1))+A097805(n)`
-/

namespace A346038.P12055594762571124423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221179 (A187829 (n + 1)).toNat + A097805 n

end

end A346038.P12055594762571124423

/-! ## A346038.P3087568184521851577

`A221179(A187829(n+1))+A213888(n)`
-/

namespace A346038.P3087568184521851577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221179 (A187829 (n + 1)).toNat + A213888 n

end

end A346038.P3087568184521851577

/-! ## A346038.P17033319102355249661

`A180179(A187829(n+1))-A269250(A160755(n+1))`
-/

namespace A346038.P17033319102355249661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180179 (A187829 (n + 1)).toNat - A269250 (A160755 (n + 1)).toNat

end

end A346038.P17033319102355249661

/-! ## A346038.P12395451415963820466

`A180179(A187829(n+1))-A269250(A233583(n+1))`
-/

namespace A346038.P12395451415963820466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180179 (A187829 (n + 1)).toNat - A269250 (A233583 (n + 1)).toNat

end

end A346038.P12395451415963820466

/-!
# A346041: Numbers with exactly 1 semiprime divisor.

The programs for A346041, the canonical program `A346041.P5665074598683741375` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346041 has offset 1).

The definition of A346041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346041.P18103905886816936543

`eq[1, A366739(n+1)]+1`
-/

namespace A346041.P18103905886816936543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346041.P18103905886816936543

namespace A346041

/-- `eq[1, A366739(n+1)]+1` -/
def P18103905886816936543.Spec : Prop :=
  ∀ n, (P18103905886816936543.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P13694931848697388580

`filter[A354144(n+1), A066247(#)]`
-/

namespace A346041.P13694931848697388580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A346041.P13694931848697388580

namespace A346041

/-- `filter[A354144(n+1), A066247(#)]` -/
def P13694931848697388580.Spec : Prop :=
  ∀ n, P13694931848697388580.a n = A346041 (n + 1)

end A346041

/-! ## A346041.P4688400293215123854

`filter[A354144(n+2), A005171(#)]`
-/

namespace A346041.P4688400293215123854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A346041.P4688400293215123854

namespace A346041

/-- `filter[A354144(n+2), A005171(#)]` -/
def P4688400293215123854.Spec : Prop :=
  ∀ n, P4688400293215123854.a n = A346041 (n + 1)

end A346041

/-! ## A346041.P6666906139869859842

`filter[A354144(n+2), A373481(#)]`
-/

namespace A346041.P6666906139869859842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A346041.P6666906139869859842

namespace A346041

/-- `filter[A354144(n+2), A373481(#)]` -/
def P6666906139869859842.Spec : Prop :=
  ∀ n, P6666906139869859842.a n = A346041 (n + 1)

end A346041

/-! ## A346041.P5665074598683741375

`∩[A085156(n+1), A388427(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A346041

/-- `∩[A085156(n+1), A388427(n+1)]` -/
def P5665074598683741375.Spec : Prop :=
  ∀ n, (P5665074598683741375.a n : ℤ) = A346041 (n + 1)

theorem P5665074598683741375.correct : P5665074598683741375.Spec := by
  intro n
  simp only [A346041, Nat.add_sub_cancel]

end A346041

/-! ## A346041.P1137111585373736787

`∩[A354144(n+1), A388427(n+1)]`
-/

namespace A346041.P1137111585373736787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346041.P1137111585373736787

namespace A346041

/-- `∩[A354144(n+1), A388427(n+1)]` -/
def P1137111585373736787.Spec : Prop :=
  ∀ n, (P1137111585373736787.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P15961807697083071571

`∩[A070915(n+1), A388427(n+1)]`
-/

namespace A346041.P15961807697083071571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346041.P15961807697083071571

namespace A346041

/-- `∩[A070915(n+1), A388427(n+1)]` -/
def P15961807697083071571.Spec : Prop :=
  ∀ n, (P15961807697083071571.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P10403904421261185479

`∩[A132858(n+1), A354144(n+1)]`
-/

namespace A346041.P10403904421261185479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346041.P10403904421261185479

namespace A346041

/-- `∩[A132858(n+1), A354144(n+1)]` -/
def P10403904421261185479.Spec : Prop :=
  ∀ n, (P10403904421261185479.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P8245039364689569871

`∩[A188654(n+1), A354144(n+1)]`
-/

namespace A346041.P8245039364689569871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346041.P8245039364689569871

namespace A346041

/-- `∩[A188654(n+1), A354144(n+1)]` -/
def P8245039364689569871.Spec : Prop :=
  ∀ n, (P8245039364689569871.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P15147206496348447710

`∩[A002808(n+1), A354144(n+1)]`
-/

namespace A346041.P15147206496348447710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346041.P15147206496348447710

namespace A346041

/-- `∩[A002808(n+1), A354144(n+1)]` -/
def P15147206496348447710.Spec : Prop :=
  ∀ n, (P15147206496348447710.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P9035797541199764847

`eq[2, ∑{e}[n, A036453(#)]]`
-/

namespace A346041.P9035797541199764847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A036453 (Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346041.P9035797541199764847

namespace A346041

/-- `eq[2, ∑{e}[n, A036453(#)]]` -/
def P9035797541199764847.Spec : Prop :=
  ∀ n, (P9035797541199764847.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P2256798621625795828

`eq[1, A086971(n+1)]+1`
-/

namespace A346041.P2256798621625795828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346041.P2256798621625795828

namespace A346041

/-- `eq[1, A086971(n+1)]+1` -/
def P2256798621625795828.Spec : Prop :=
  ∀ n, (P2256798621625795828.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P14771221310458422446

`eq[1, A110475(n+1)]+1`
-/

namespace A346041.P14771221310458422446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346041.P14771221310458422446

namespace A346041

/-- `eq[1, A110475(n+1)]+1` -/
def P14771221310458422446.Spec : Prop :=
  ∀ n, (P14771221310458422446.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P9067893191484909664

`eq[2, A238949(n+1)]+1`
-/

namespace A346041.P9067893191484909664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346041.P9067893191484909664

namespace A346041

/-- `eq[2, A238949(n+1)]+1` -/
def P9067893191484909664.Spec : Prop :=
  ∀ n, (P9067893191484909664.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P511942116521710371

`eq[n, n-a(A086971(n))]` with `a(0)=1`
-/

namespace A346041.P511942116521710371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A086971 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346041.P511942116521710371

namespace A346041

/-- `eq[n, n-a(A086971(n))]` -/
def P511942116521710371.Spec : Prop :=
  ∀ n, (P511942116521710371.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P11838607211819204867

`eq[1, A086971(A028310(n))]`
-/

namespace A346041.P11838607211819204867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346041.P11838607211819204867

namespace A346041

/-- `eq[1, A086971(A028310(n))]` -/
def P11838607211819204867.Spec : Prop :=
  ∀ n, (P11838607211819204867.a n : ℤ) = A346041 (n + 1)

end A346041

/-! ## A346041.P15488049652821273350

`A020725(eq[1, A086971(n+1)])`
-/

namespace A346041.P15488049652821273350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346041.P15488049652821273350

namespace A346041

/-- `A020725(eq[1, A086971(n+1)])` -/
def P15488049652821273350.Spec : Prop :=
  ∀ n, P15488049652821273350.a n = A346041 (n + 1)

end A346041

/-! ## A346041.P14196783039668780705

`A061767(eq[1, A086971(n+1)])`
-/

namespace A346041.P14196783039668780705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346041.P14196783039668780705

namespace A346041

/-- `A061767(eq[1, A086971(n+1)])` -/
def P14196783039668780705.Spec : Prop :=
  ∀ n, P14196783039668780705.a n = A346041 (n + 1)

end A346041

/-! ## A346041.P17858911004049861195

`filter[A102466(n+1), A005171(#)]`
-/

namespace A346041.P17858911004049861195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A346041.P17858911004049861195

namespace A346041

/-- `filter[A102466(n+1), A005171(#)]` -/
def P17858911004049861195.Spec : Prop :=
  ∀ n, P17858911004049861195.a n = A346041 (n + 1)

end A346041

/-! ## A346041.P1357725634312751144

`filter[A102466(n+1), A066247(#)]`
-/

namespace A346041.P1357725634312751144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A346041.P1357725634312751144

namespace A346041

/-- `filter[A102466(n+1), A066247(#)]` -/
def P1357725634312751144.Spec : Prop :=
  ∀ n, P1357725634312751144.a n = A346041 (n + 1)

end A346041

/-!
# A346043: a(n) is the position of A138534(n) in A025487.

The programs for A346043, there is no canonical definition to state claims against.
-/

/-! ## A346043.P13090489593397325144

`A033101(A197345(n+2))`
-/

namespace A346043.P13090489593397325144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033101 (A197345 (n + 2)).toNat

end

end A346043.P13090489593397325144

/-! ## A346043.P16700758288360517628

`A220501(A025227(n))+floor(n/(xor(n, n+1)+1))+1`
-/

namespace A346043.P16700758288360517628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220501 (A025227 n).toNat + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

end

end A346043.P16700758288360517628

/-!
# A346050: G.f. A(x) satisfies: A(x) = x + x^2 + x^3 * A(x/(1 - x)) / (1 - x).

The programs for A346050, there is no canonical definition to state claims against.
-/

/-! ## A346050.P3935789058940567245

`A210540(n)-A000996(n)`
-/

namespace A346050.P3935789058940567245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210540 n - A000996 n

end

end A346050.P3935789058940567245

/-! ## A346050.P7422569370848053736

`A000997(n)+A346051(n)-A000996(n)`
-/

namespace A346050.P7422569370848053736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000997 n + (A346051 n - A000996 n)

end

end A346050.P7422569370848053736

/-! ## A346050.P12455240948072028637

`A000997(n)+A210540(n)-A346052(n)`
-/

namespace A346050.P12455240948072028637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000997 n + (A210540 n - A346052 n)

end

end A346050.P12455240948072028637

/-! ## A346050.P12862878242382957444

`A346051(n)+A346052(n)-A000996(n)-A000996(n)`
-/

namespace A346050.P12862878242382957444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346051 n + (A346052 n - A000996 n) - A000996 n

end

end A346050.P12862878242382957444

/-! ## A346050.P17671727701712630793

`A210545(A034856(n+1))-A000996(n)`
-/

namespace A346050.P17671727701712630793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A034856 (n + 1)).toNat - A000996 n

end

end A346050.P17671727701712630793

/-!
# A346051: G.f. A(x) satisfies: A(x) = 1 + x^2 + x^3 * A(x/(1 - x)) / (1 - x).

The programs for A346051, there is no canonical definition to state claims against.
-/

/-! ## A346051.P8537075822851308761

`A210540(n)-A000997(n)`
-/

namespace A346051.P8537075822851308761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210540 n - A000997 n

end

end A346051.P8537075822851308761

/-! ## A346051.P5717905754880805087

`A000996(n)+A346050(n)-A000997(n)`
-/

namespace A346051.P5717905754880805087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000996 n + (A346050 n - A000997 n)

end

end A346051.P5717905754880805087

/-! ## A346051.P5912252054599024014

`A210540(n)-(A346052(n)-A000996(n))`
-/

namespace A346051.P5912252054599024014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210540 n - (A346052 n - A000996 n)

end

end A346051.P5912252054599024014

/-! ## A346051.P16180827071578283259

`A346050(n)+A346052(n)-A000997(n)-A000997(n)`
-/

namespace A346051.P16180827071578283259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346050 n + (A346052 n - A000997 n) - A000997 n

end

end A346051.P16180827071578283259

/-! ## A346051.P4150830356907413502

`A210545(A034856(n+1))-A000997(n)`
-/

namespace A346051.P4150830356907413502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (A034856 (n + 1)).toNat - A000997 n

end

end A346051.P4150830356907413502

/-!
# A346052: G.f. A(x) satisfies: A(x) = 1 + x + x^3 * A(x/(1 - x)) / (1 - x).

The programs for A346052, there is no canonical definition to state claims against.
-/

/-! ## A346052.P11798428279420611910

`A000997(n)+A000996(n)`
-/

namespace A346052.P11798428279420611910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000997 n + A000996 n

end

end A346052.P11798428279420611910

/-! ## A346052.P11779688600798191021

`A000996(n)+A210540(n)-A346051(n)`
-/

namespace A346052.P11779688600798191021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000996 n + (A210540 n - A346051 n)

end

end A346052.P11779688600798191021

/-! ## A346052.P17604112562879877215

`A000997(n)+A210540(n)-A346050(n)`
-/

namespace A346052.P17604112562879877215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000997 n + (A210540 n - A346050 n)

end

end A346052.P17604112562879877215

/-! ## A346052.P2619746471594135333

`A000996(n)+A000996(n)+A346050(n)-A346051(n)`
-/

namespace A346052.P2619746471594135333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000996 n + (A000996 n + (A346050 n - A346051 n))

end

end A346052.P2619746471594135333

/-! ## A346052.P8465205345253516189

`A000997(n)+A210545(A034856(n+1))-A346050(n)`
-/

namespace A346052.P8465205345253516189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000997 n + (A210545 (A034856 (n + 1)).toNat - A346050 n)

end

end A346052.P8465205345253516189

/-!
# A346053: G.f. A(x) satisfies: A(x) = 1 - x * A(x/(1 - x)) / (1 - x)^3.

The programs for A346053, there is no canonical definition to state claims against.
-/

/-! ## A346053.P6171538026431095488

`A213953(∑[n+2]+3)`
-/

namespace A346053.P6171538026431095488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213953 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A346053.P6171538026431095488

/-! ## A346053.P5733419050258520876

`A213953(A340266(n+1))+A000038(n)`
-/

namespace A346053.P5733419050258520876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213953 (A340266 (n + 1)).toNat + A000038 n

end

end A346053.P5733419050258520876

/-!
# A346054: Number of ways to tile a 3 X n strip with dominoes and L-shaped 5-minoes.

The programs for A346054, the canonical program `A346054.P5413499979804915997` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346054 has offset 0).

The definition of A346054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346054.P5413499979804915997

`a(n-1)+3*a(n-2)+5*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A346054

/-- `a(n-1)+3*a(n-2)+5*a(n-3)-4*a(n-4)` -/
def P5413499979804915997.Spec : Prop :=
  ∀ n, P5413499979804915997.a n = A346054 n

theorem P5413499979804915997.correct : P5413499979804915997.Spec := by
  intro n
  simp only [A346054]

end A346054

/-! ## A346054.P12100136625809324124

`ogf((-1+x)/(-1+x+3x^2+5x^3-4x^4))`
-/

namespace A346054.P12100136625809324124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -3, -5, 4] n

end

end A346054.P12100136625809324124

namespace A346054

/-- `ogf((-1+x)/(-1+x+3x^2+5x^3-4x^4))` -/
def P12100136625809324124.Spec : Prop :=
  ∀ n, P12100136625809324124.a n = A346054 n

end A346054

/-! ## A346054.P1114802880239886826

`A174344(A000670(n))+A074446(n+1)`
-/

namespace A346054.P1114802880239886826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A000670 n).toNat + A074446 (n + 1)

end

end A346054.P1114802880239886826

namespace A346054

/-- `A174344(A000670(n))+A074446(n+1)` -/
def P1114802880239886826.Spec : Prop :=
  ∀ n, P1114802880239886826.a n = A346054 n

end A346054

/-!
# A346055: Expansion of e.g.f. Product_{k>=1} B(x^k/k) where B(x) = exp(exp(x) - 1) = e.g.f. of Bell numbers.

The programs for A346055, there is no canonical definition to state claims against.
-/

/-! ## A346055.P2008609450320200924

`A005651(n)+A002962(A202844(n))`
-/

namespace A346055.P2008609450320200924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005651 n + A002962 (A202844 n).toNat

end

end A346055.P2008609450320200924

/-! ## A346055.P1744737619289603077

`A231724(A000699(n))+A005651(n)`
-/

namespace A346055.P1744737619289603077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231724 (A000699 n).toNat + A005651 n

end

end A346055.P1744737619289603077

/-! ## A346055.P6127882116407540120

`A067169(A335700(n))+A005651(n)`
-/

namespace A346055.P6127882116407540120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067169 ((A335700 n).toNat + 11) + A005651 n

end

end A346055.P6127882116407540120

/-!
# A346056: Expansion of e.g.f. Product_{k>=1} B(x^k/k!) where B(x) = exp(exp(x) - 1) = e.g.f. of Bell numbers.

The programs for A346056, there is no canonical definition to state claims against.
-/

/-! ## A346056.P16902242600037477977

`A251547(A053418(n)-A046660(3*(n+1)))`
-/

namespace A346056.P16902242600037477977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251547 (A053418 n - A046660 (3 * (n + 1))).toNat

end

end A346056.P16902242600037477977

/-! ## A346056.P10792800964561543331

`floor(ϕ*and(n!, A147774(n+1)))`
-/

namespace A346056.P10792800964561543331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Int.land (Nat.factorial n : ℤ) (A147774 (n + 1)) : ℝ)⌋

end

end A346056.P10792800964561543331

/-!
# A346059: G.f. A(x) satisfies: A(x) = 1 - x * A(x/(1 - x)) / (1 - x)^4.

The programs for A346059, there is no canonical definition to state claims against.
-/

/-! ## A346059.P2061793684879270063

`A213953(A167614(n+2))`
-/

namespace A346059.P2061793684879270063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213953 (A167614 (n + 2)).toNat

end

end A346059.P2061793684879270063

/-!
# A346060: G.f. A(x) satisfies: A(x) = 1 - x * A(x/(1 - x)) / (1 - x)^5.

The programs for A346060, there is no canonical definition to state claims against.
-/

/-! ## A346060.P11290511906870140854

`A213953(A155212(n)+12)`
-/

namespace A346060.P11290511906870140854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213953 (A155212 n + 12).toNat

end

end A346060.P11290511906870140854

/-! ## A346060.P13922432433543928925

`A213953(A056000(n)+14)`
-/

namespace A346060.P13922432433543928925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213953 (A056000 n + 14).toNat

end

end A346060.P13922432433543928925

/-!
# A346061: A(n,k) = n! * [x^n] (Sum_{j=0..n} k^(j*(j+1)/2) * x^j/j!)^(1/k) if k>0, A(n,0) = 0^n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A346061, there is no canonical definition to state claims against.
-/

/-! ## A346061.P14333067098223277057

`A051889(A183134(n)^A008616(n))`
-/

namespace A346061.P14333067098223277057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (SequenceMachineLib.roundAway ((A183134 n : ℚ) ^ (A008616 n : ℤ))).toNat

end

end A346061.P14333067098223277057

/-! ## A346061.P5369500850612447622

`A025581(A143841(n)^p?[A117707(n)])`
-/

namespace A346061.P5369500850612447622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A143841 n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ))).toNat

end

end A346061.P5369500850612447622

/-! ## A346061.P4528013070965067314

`A025581(A182172(n)^p?[A117707(n)])`
-/

namespace A346061.P4528013070965067314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A182172 n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ))).toNat

end

end A346061.P4528013070965067314

/-! ## A346061.P15248506467261479695

`A025581(A143841(n)^p?[A163352(n)])`
-/

namespace A346061.P15248506467261479695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A143841 n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ))).toNat

end

end A346061.P15248506467261479695

/-! ## A346061.P7428413614610527498

`A147981(A366834(n))`
-/

namespace A346061.P7428413614610527498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A366834 n).toNat

end

end A346061.P7428413614610527498

/-!
# A346063: a(n) = primepi(A039634(prime(n)^2-1)).

The programs for A346063, the canonical program `A346063.P3928103737815940541` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346063 has offset 1).

The definition of A346063 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, A039634, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346063.P3928103737815940541

`A000720(A039634(A000040(n+1)²-1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A346063

/-- `A000720(A039634(A000040(n+1)²-1))` -/
def P3928103737815940541.Spec : Prop :=
  ∀ n, P3928103737815940541.a n = A346063 (n + 1)

theorem P3928103737815940541.correct : P3928103737815940541.Spec := by
  intro n
  simp only [A346063, Nat.add_sub_cancel]

end A346063

/-!
# A346065: a(n) = Sum_{k=0..n} binomial(6*k,k) / (5*k + 1).

The programs for A346065, there is no canonical definition to state claims against.
-/

/-! ## A346065.P10000517671450969530

`∑[A002295(n)]`
-/

namespace A346065.P10000517671450969530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346065.P10000517671450969530

/-! ## A346065.P2053448057773832699

`∑[A386379(5*n)]`
-/

namespace A346065.P2053448057773832699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346065.P2053448057773832699

/-! ## A346065.P8334767299199761633

`A002295(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A346065.P8334767299199761633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002295 n + a (A023443 n).toNat

end

end A346065.P8334767299199761633

/-! ## A346065.P14924549237163743298

`A002295(n)+a(n%A000351(n)-1)` with `a(0)=1`
-/

namespace A346065.P14924549237163743298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002295 n + a (Int.tmod (n : ℤ) (A000351 n) - 1).toNat

end

end A346065.P14924549237163743298

/-! ## A346065.P11643336375652869556

`∑[A051053(6*n+1)/(6*n+1)]`
-/

namespace A346065.P11643336375652869556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051053 (6 * n + 1) : ℚ) / (6 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346065.P11643336375652869556

/-! ## A346065.P14135433868034606654

`∑[A004355(n)/A016861(n)]`
-/

namespace A346065.P14135433868034606654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004355 n : ℚ) / (A016861 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346065.P14135433868034606654

/-! ## A346065.P1540061258822668349

`∑[A079590(n)/A016921(n)]`
-/

namespace A346065.P1540061258822668349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079590 n : ℚ) / (A016921 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346065.P1540061258822668349

/-! ## A346065.P151891723873751375

`∑[gcd(A004355(n), A079590(n))]`
-/

namespace A346065.P151891723873751375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004355 n) (A079590 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346065.P151891723873751375

/-! ## A346065.P3087264801382011098

`∑[A079590(n)/A093178(A271114(n))]`
-/

namespace A346065.P3087264801382011098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079590 n : ℚ) / (A093178 (A271114 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346065.P3087264801382011098

/-! ## A346065.P11303285144604002292

`∑[A070914(A055999(n+3))]`
-/

namespace A346065.P11303285144604002292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A055999 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346065.P11303285144604002292

/-!
# A346066: Sum of GCD of cycle lengths over all permutations of [n].

The programs for A346066, there is no canonical definition to state claims against.
-/

/-! ## A346066.P2734242169726739382

`A065714(A309915(n+1))`
-/

namespace A346066.P2734242169726739382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065714 (A309915 (n + 1)).toNat

end

end A346066.P2734242169726739382

/-! ## A346066.P14743406096430782565

`A262676(2*A025174(n))`
-/

namespace A346066.P14743406096430782565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262676 (2 * A025174 n).toNat

end

end A346066.P14743406096430782565

/-!
# A346067: Smallest prime that is the n-th power analog of Keith numbers.

The programs for A346067, there is no canonical definition to state claims against.
-/

/-! ## A346067.P17915123049309887090

`A226078((comp[2*n+5]+1)*(58*n²+1))`
-/

namespace A346067.P17915123049309887090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226078 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * (58 * n ^ 2 + 1))

end

end A346067.P17915123049309887090

/-!
# A346068: Numbers that are the product of distinct primes with prime subscripts raised to prime powers.

The programs for A346068, there is no canonical definition to state claims against.
-/

/-! ## A346068.P2417718935832518393

`∩[A056166(n+1), A352492(n+1)]`
-/

namespace A346068.P2417718935832518393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346068.P2417718935832518393

/-! ## A346068.P4338177666966921744

`∩[A056166(n+1), A076610(n+1)]`
-/

namespace A346068.P4338177666966921744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346068.P4338177666966921744

/-! ## A346068.P15435014596892910287

`filter[A076610(n+1), A293449(#)]`
-/

namespace A346068.P15435014596892910287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A346068.P15435014596892910287

/-! ## A346068.P2198270404478622690

`filter[A352492(n+1), A293449(#)]`
-/

namespace A346068.P2198270404478622690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A346068.P2198270404478622690

/-! ## A346068.P18187234624853299406

`record[A366993(A352492(n+1))]`
-/

namespace A346068.P18187234624853299406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366993 (A352492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346068.P18187234624853299406

/-!
# A346069: Place the numbers 1 to n on a square grid and multiply both numbers in all created orthogonally adjacent pairs; a(n) gives the maximum possible value of the sum of all pair products.

The programs for A346069, there is no canonical definition to state claims against.
-/

/-! ## A346069.P5483477617072892506

`∑[A000217(2*n+1)-A311161(n)]`
-/

namespace A346069.P5483477617072892506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) - A311161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346069.P5483477617072892506

/-! ## A346069.P4108370228973072773

`A084558(A001353(n))+A002412(n)`
-/

namespace A346069.P4108370228973072773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A001353 n).toNat + A002412 n

end

end A346069.P4108370228973072773

/-! ## A346069.P14692665488118722013

`A084558(A001791(n))+A002412(n)`
-/

namespace A346069.P14692665488118722013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A001791 n).toNat + A002412 n

end

end A346069.P14692665488118722013

/-!
# A346070: Symbolic code for the corner turns in the Lévy dragon curve.

The programs for A346070, the canonical program `A346070.P1163542354733914519` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346070 has offset 1).

The definition of A346070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346070.P1163542354733914519

`val(n+1, 2)%4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A346070

/-- `val(n+1, 2)%4` -/
def P1163542354733914519.Spec : Prop :=
  ∀ n, (P1163542354733914519.a n : ℤ) = A346070 (n + 1)

theorem P1163542354733914519.correct : P1163542354733914519.Spec := by
  intro n
  simp only [A346070, Nat.add_sub_cancel]

end A346070

/-! ## A346070.P6276620504883465008

`and(3, val(n+1, 2))`
-/

namespace A346070.P6276620504883465008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.valuation (n + 1) 2)

end

end A346070.P6276620504883465008

namespace A346070

/-- `and(3, val(n+1, 2))` -/
def P6276620504883465008.Spec : Prop :=
  ∀ n, (P6276620504883465008.a n : ℤ) = A346070 (n + 1)

end A346070

/-! ## A346070.P15643007833449433700

`floor(log2(xor(n, n+1)))%4`
-/

namespace A346070.P15643007833449433700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1)) % 4

end

end A346070.P15643007833449433700

namespace A346070

/-- `floor(log2(xor(n, n+1)))%4` -/
def P15643007833449433700.Spec : Prop :=
  ∀ n, (P15643007833449433700.a n : ℤ) = A346070 (n + 1)

end A346070

/-! ## A346070.P503300521361816218

`or(-4, val(n+1, 2))+4`
-/

namespace A346070.P503300521361816218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-4) (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + 4

end

end A346070.P503300521361816218

namespace A346070

/-- `or(-4, val(n+1, 2))+4` -/
def P503300521361816218.Spec : Prop :=
  ∀ n, P503300521361816218.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P16813746654867576782

`log2(or(n, n+1)-n)%4`
-/

namespace A346070.P16813746654867576782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ))) 4

end

end A346070.P16813746654867576782

namespace A346070

/-- `log2(or(n, n+1)-n)%4` -/
def P16813746654867576782.Spec : Prop :=
  ∀ n, P16813746654867576782.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P16124786852306264133

`log2(xor(n, or(n, n+1)))%4`
-/

namespace A346070.P16124786852306264133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (Nat.xor n (Nat.lor n (n + 1)) : ℝ))) 4

end

end A346070.P16124786852306264133

namespace A346070

/-- `log2(xor(n, or(n, n+1)))%4` -/
def P16124786852306264133.Spec : Prop :=
  ∀ n, P16124786852306264133.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P16169499495044300979

`and(3, log2(and(n+1, -(n+1))))`
-/

namespace A346070.P16169499495044300979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)))

end

end A346070.P16169499495044300979

namespace A346070

/-- `and(3, log2(and(n+1, -(n+1))))` -/
def P16169499495044300979.Spec : Prop :=
  ∀ n, P16169499495044300979.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P18419227765573610293

`(val(∑[2*or(3, n)], 2)-1)%4`
-/

namespace A346070.P18419227765573610293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - 1) 4

end

end A346070.P18419227765573610293

namespace A346070

/-- `(val(∑[2*or(3, n)], 2)-1)%4` -/
def P18419227765573610293.Spec : Prop :=
  ∀ n, P18419227765573610293.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P8653355520686828058

`and(3, log2(n+1-and(n, n+1)))`
-/

namespace A346070.P8653355520686828058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway (Real.logb 2 ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℝ)))

end

end A346070.P8653355520686828058

namespace A346070

/-- `and(3, log2(n+1-and(n, n+1)))` -/
def P8653355520686828058.Spec : Prop :=
  ∀ n, P8653355520686828058.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P15720588211992564502

`A090640(n)%4`
-/

namespace A346070.P15720588211992564502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090640 n) 4

end

end A346070.P15720588211992564502

namespace A346070

/-- `A090640(n)%4` -/
def P15720588211992564502.Spec : Prop :=
  ∀ n, P15720588211992564502.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P15866064965806631537

`A007814(n+1)%4`
-/

namespace A346070.P15866064965806631537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1)) 4

end

end A346070.P15866064965806631537

namespace A346070

/-- `A007814(n+1)%4` -/
def P15866064965806631537.Spec : Prop :=
  ∀ n, P15866064965806631537.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P18225202609993895048

`A010873(val(n+1, 2))`
-/

namespace A346070.P18225202609993895048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (SequenceMachineLib.valuation (n + 1) 2)

end

end A346070.P18225202609993895048

namespace A346070

/-- `A010873(val(n+1, 2))` -/
def P18225202609993895048.Spec : Prop :=
  ∀ n, P18225202609993895048.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P1803376391538959292

`val(A053165(n+1), 2)`
-/

namespace A346070.P1803376391538959292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053165 (n + 1)).toNat 2

end

end A346070.P1803376391538959292

namespace A346070

/-- `val(A053165(n+1), 2)` -/
def P1803376391538959292.Spec : Prop :=
  ∀ n, (P1803376391538959292.a n : ℤ) = A346070 (n + 1)

end A346070

/-! ## A346070.P10824270097857156099

`and(3, 1-Δ[A000120(n)])`
-/

namespace A346070.P10824270097857156099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (1 - (f1 (n + 1) - f1 n))

end

end A346070.P10824270097857156099

namespace A346070

/-- `and(3, 1-Δ[A000120(n)])` -/
def P10824270097857156099.Spec : Prop :=
  ∀ n, P10824270097857156099.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P9273654594406582255

`and(2-n, log2(A006519(n+1)))`
-/

namespace A346070.P9273654594406582255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - (n : ℤ)) (SequenceMachineLib.roundAway (Real.logb 2 (A006519 (n + 1) : ℝ)))

end

end A346070.P9273654594406582255

namespace A346070

/-- `and(2-n, log2(A006519(n+1)))` -/
def P9273654594406582255.Spec : Prop :=
  ∀ n, P9273654594406582255.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P7887405833604101152

`A001222(and(n+1, -(n+1)))%4`
-/

namespace A346070.P7887405833604101152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat) 4

end

end A346070.P7887405833604101152

namespace A346070

/-- `A001222(and(n+1, -(n+1)))%4` -/
def P7887405833604101152.Spec : Prop :=
  ∀ n, P7887405833604101152.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P12133443958843935571

`and(3, A001222(n+1-and(n, n+1)))`
-/

namespace A346070.P12133443958843935571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001222 (n + 1 - Nat.land n (n + 1)))

end

end A346070.P12133443958843935571

namespace A346070

/-- `and(3, A001222(n+1-and(n, n+1)))` -/
def P12133443958843935571.Spec : Prop :=
  ∀ n, P12133443958843935571.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P13893308217489252086

`A070471(A135481(n))`
-/

namespace A346070.P13893308217489252086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070471 (A135481 n).toNat

end

end A346070.P13893308217489252086

namespace A346070

/-- `A070471(A135481(n))` -/
def P13893308217489252086.Spec : Prop :=
  ∀ n, P13893308217489252086.a n = A346070 (n + 1)

end A346070

/-! ## A346070.P15004156288938369642

`A010873(A007814(n+1))`
-/

namespace A346070.P15004156288938369642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A007814 (n + 1)).toNat

end

end A346070.P15004156288938369642

namespace A346070

/-- `A010873(A007814(n+1))` -/
def P15004156288938369642.Spec : Prop :=
  ∀ n, P15004156288938369642.a n = A346070 (n + 1)

end A346070

/-!
# A346071: a(n) is the smallest number m such that m^3 = x^3 + y^3 + z^3, x > y > z > 0, has at least n different solutions.

The programs for A346071, there is no canonical definition to state claims against.
-/

/-! ## A346071.P12796531081403153271

`A377444(A028986(n+1))`
-/

namespace A346071.P12796531081403153271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377444 (A028986 (n + 1)).toNat

end

end A346071.P12796531081403153271

/-! ## A346071.P6655169274394318627

`A377444(lt[A014486(n), A319808(3*n)])`
-/

namespace A346071.P6655169274394318627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319808 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377444 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346071.P6655169274394318627

/-!
# A346073: a(n) = 1 + Sum_{k=0..n-4} a(k) * a(n-k-4).

The programs for A346073, there is no canonical definition to state claims against.
-/

/-! ## A346073.P12365894392669168119

`A120401(A282500(n))`
-/

namespace A346073.P12365894392669168119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A282500 n).toNat

end

end A346073.P12365894392669168119

/-! ## A346073.P5644588321009032673

`A239086(A307971(n+1))`
-/

namespace A346073.P5644588321009032673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A307971 (n + 1)).toNat

end

end A346073.P5644588321009032673

/-! ## A346073.P5168732177685646174

`A357533(n)-A185284(A001400(n))`
-/

namespace A346073.P5168732177685646174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357533 n - A185284 (A001400 n).toNat

end

end A346073.P5168732177685646174

/-! ## A346073.P11751245698981829256

`A307971(n+1)+A006983(A336575(n))`
-/

namespace A346073.P11751245698981829256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307971 (n + 1) + A006983 (A336575 n).toNat

end

end A346073.P11751245698981829256

/-! ## A346073.P4485949403235648897

`A357533(n)-A185284(A288165(3*n+4))`
-/

namespace A346073.P4485949403235648897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357533 n - A185284 (A288165 (3 * n + 4)).toNat

end

end A346073.P4485949403235648897

/-!
# A346074: a(n) = 1 + Sum_{k=0..n-5} a(k) * a(n-k-5).

The programs for A346074, there is no canonical definition to state claims against.
-/

/-! ## A346074.P14345864055063914196

`A167904(A357570(n))`
-/

namespace A346074.P14345864055063914196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A357570 n).toNat

end

end A346074.P14345864055063914196

/-! ## A346074.P3675748946109490792

`A338466(A307972(n+1))-C(n+1, 16)`
-/

namespace A346074.P3675748946109490792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A307972 (n + 1)).toNat - (Nat.choose (n + 1) 16 : ℤ)

end

end A346074.P3675748946109490792

/-! ## A346074.P15311241326152944528

`A357570(n)+A240328(A238255(n+2))`
-/

namespace A346074.P15311241326152944528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357570 n + A240328 (A238255 (n + 2)).toNat

end

end A346074.P15311241326152944528

/-! ## A346074.P17411272520764661491

`A357570(n)-A241710(A213086(n+2))`
-/

namespace A346074.P17411272520764661491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357570 n - A241710 (A213086 (n + 2)).toNat

end

end A346074.P17411272520764661491

/-!
# A346075: a(n) = 1 + Sum_{k=1..n-3} a(k) * a(n-k-3).

The programs for A346075, there is no canonical definition to state claims against.
-/

/-! ## A346075.P13036548624483512147

`A055086(A036639(n)+A355191(n)-A355192(n))`
-/

namespace A346075.P13036548624483512147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A036639 n + (A355191 n - A355192 n)).toNat

end

end A346075.P13036548624483512147

/-! ## A346075.P3708981016816490964

`A055086(A036639(n)-(A355192(n)-A355191(n)))`
-/

namespace A346075.P3708981016816490964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A036639 n - (A355192 n - A355191 n)).toNat

end

end A346075.P3708981016816490964

/-! ## A346075.P15816942721950915035

`ceil(A280597(n+3)/A280600(n+5))`
-/

namespace A346075.P15816942721950915035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280597 (n + 3) : ℚ) / (A280600 (n + 5) : ℚ)⌉

end

end A346075.P15816942721950915035

/-! ## A346075.P1000230817623635986

`round(∑[A182024(n+3)]/(n+2))`
-/

namespace A346075.P1000230817623635986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182024 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 2 : ℚ))

end

end A346075.P1000230817623635986

/-! ## A346075.P2896391087002190609

`A356944(A343304(n))`
-/

namespace A346075.P2896391087002190609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A343304 n).toNat

end

end A346075.P2896391087002190609

/-!
# A346076: a(n) = 1 + Sum_{k=1..n-4} a(k) * a(n-k-4).

The programs for A346076, there is no canonical definition to state claims against.
-/

/-! ## A346076.P17097617276115312582

`A143283(n)+A139039(A087221(n))`
-/

namespace A346076.P17097617276115312582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143283 n + A139039 (A087221 n).toNat

end

end A346076.P17097617276115312582

/-! ## A346076.P12481807487001516515

`A343305(n)+A137579(A190783(n))`
-/

namespace A346076.P12481807487001516515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343305 n + A137579 (A190783 n).toNat

end

end A346076.P12481807487001516515

/-! ## A346076.P8238617708909854203

`A343305(n)+A125005(A282500(n))`
-/

namespace A346076.P8238617708909854203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343305 n + A125005 (A282500 n).toNat

end

end A346076.P8238617708909854203

/-! ## A346076.P15790231391186497095

`A343305(n)+A185238(A307972(n))`
-/

namespace A346076.P15790231391186497095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343305 n + A185238 (A307972 n).toNat

end

end A346076.P15790231391186497095

/-! ## A346076.P13181336909186153225

`A343305(n)+A185284(A321380(n))`
-/

namespace A346076.P13181336909186153225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343305 n + A185284 (A321380 n).toNat

end

end A346076.P13181336909186153225

/-!
# A346077: a(n) = 1 + Sum_{k=1..n-5} a(k) * a(n-k-5).

The programs for A346077, there is no canonical definition to state claims against.
-/

/-! ## A346077.P13565992070336472197

`A176187(A143284(n))+A143284(n)`
-/

namespace A346077.P13565992070336472197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176187 (A143284 n).toNat + A143284 n

end

end A346077.P13565992070336472197

/-! ## A346077.P3532738726012492013

`A143284(n)+A115573(A024662(A074909(n)))`
-/

namespace A346077.P3532738726012492013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143284 n + A115573 (A024662 (A074909 n).toNat).toNat

end

end A346077.P3532738726012492013

/-! ## A346077.P13363017571281333240

`A351870(A143284(n)+1)`
-/

namespace A346077.P13363017571281333240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A143284 n + 1).toNat

end

end A346077.P13363017571281333240

/-! ## A346077.P12800731546999117057

`(A143284(n)+1)%A129338(n+1)`
-/

namespace A346077.P12800731546999117057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143284 n + 1) (A129338 (n + 1))

end

end A346077.P12800731546999117057

/-! ## A346077.P16226133427511374903

`A143284(n)+A039963(A022172(n))`
-/

namespace A346077.P16226133427511374903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143284 n + A039963 (A022172 n).toNat

end

end A346077.P16226133427511374903

/-!
# A346078: G.f. A(x) satisfies: A(x) = 1 + x - x^2 * A(x/(1 - x)) / (1 - x).

The programs for A346078, there is no canonical definition to state claims against.
-/

/-! ## A346078.P17210769417733165670

`A346079(n)+A336970(n)`
-/

namespace A346078.P17210769417733165670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346079 n + A336970 n

end

end A346078.P17210769417733165670

/-!
# A346079: G.f. A(x) satisfies: A(x) = x - x^2 * A(x/(1 - x)) / (1 - x).

The programs for A346079, there is no canonical definition to state claims against.
-/

/-! ## A346079.P16380908154992472505

`A346078(n)-A336970(n)`
-/

namespace A346079.P16380908154992472505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346078 n - A336970 n

end

end A346079.P16380908154992472505

/-!
# A346080: Shadow transform of Fibonacci numbers.

The programs for A346080, there is no canonical definition to state claims against.
-/

/-! ## A346080.P4286431992964080018

`ceil(n/A001177(round(acot(n)+n)))`
-/

namespace A346080.P4286431992964080018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A001177 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ)⌉

end

end A346080.P4286431992964080018

/-! ## A346080.P12075167592500826284

`ceil(n/A001177(round(sqrt(n²+1))))`
-/

namespace A346080.P12075167592500826284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A001177 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)⌉

end

end A346080.P12075167592500826284

/-! ## A346080.P12767391433736874367

`A060128(lcm(A050741(n+1), A269303(n+1)))`
-/

namespace A346080.P12767391433736874367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (Int.lcm (A050741 (n + 1)) (A269303 (n + 1)))

end

end A346080.P12767391433736874367

/-! ## A346080.P14793973656430936122

`∑{e}[∑{p}[∑[A024447(n+1)]+n, #%2]+1, #]`
-/

namespace A346080.P14793973656430936122
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p % 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A346080.P14793973656430936122

/-! ## A346080.P3719432757276595191

`A335225(A126226(2*n+1)+n)`
-/

namespace A346080.P3719432757276595191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335225 (A126226 (2 * n + 1) + (n : ℤ)).toNat

end

end A346080.P3719432757276595191

/-!
# A346082: Number of cyclic n X n matrices over GF(2).

The programs for A346082, there is no canonical definition to state claims against.
-/

/-! ## A346082.P15392388611441035336

`A347010(∑[n]+n)`
-/

namespace A346082.P15392388611441035336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347010 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A346082.P15392388611441035336

/-! ## A346082.P14304115312485622403

`record[char[∑[n-1]]*A347010(n)]`
-/

namespace A346082.P14304115312485622403
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A347010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346082.P14304115312485622403

/-! ## A346082.P6721972248383942472

`record[A347010(A056943(n))]`
-/

namespace A346082.P6721972248383942472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347010 (A056943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346082.P6721972248383942472

/-! ## A346082.P8424275808584809375

`record[A347010(A061579(n))]`
-/

namespace A346082.P8424275808584809375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347010 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346082.P8424275808584809375

/-!
# A346084: Number of invertible n X n cyclic matrices over GF(2).

The programs for A346084, there is no canonical definition to state claims against.
-/

/-! ## A346084.P7520423268209684242

`A321155(A001790(n))*A321189(n)`
-/

namespace A346084.P7520423268209684242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321155 (A001790 n).toNat * A321189 n

end

end A346084.P7520423268209684242

/-!
# A346085: Number T(n,k) of permutations of [n] such that k is the GCD of the cycle lengths; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A346085, there is no canonical definition to state claims against.
-/

/-! ## A346085.P15159237867694132691

`A005136(A027187(n))*A271423(n)`
-/

namespace A346085.P15159237867694132691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A027187 n).toNat * A271423 n

end

end A346085.P15159237867694132691

/-! ## A346085.P14871877453359843176

`A005136(A032058(n))*A271423(n)`
-/

namespace A346085.P14871877453359843176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A032058 n).toNat * A271423 n

end

end A346085.P14871877453359843176

/-! ## A346085.P17814479258525506298

`lcm(A001221(A084517(n)), A271423(n))`
-/

namespace A346085.P17814479258525506298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A084517 n).toNat) (A271423 n)

end

end A346085.P17814479258525506298

/-! ## A346085.P7265332744084650894

`A115572(A005691(n+6))*A271423(n)`
-/

namespace A346085.P7265332744084650894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A005691 (n + 6)).toNat * A271423 n

end

end A346085.P7265332744084650894

/-! ## A346085.P6286759897856853770

`A046051(A051542(n+1)^A132393(n))`
-/

namespace A346085.P6286759897856853770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (SequenceMachineLib.roundAway ((A051542 (n + 1) : ℚ) ^ (A132393 n : ℤ))).toNat

end

end A346085.P6286759897856853770

/-!
# A346086: Number of permutations of [2n] such that the GCD of the cycle lengths equals 2.

The programs for A346086, there is no canonical definition to state claims against.
-/

/-! ## A346086.P17163558730586198581

`record[A346085(A133263(n))]`
-/

namespace A346086.P17163558730586198581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346086.P17163558730586198581

/-! ## A346086.P15809939070473833677

`record[A346085(A238531(n))]`
-/

namespace A346086.P15809939070473833677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346086.P15809939070473833677

/-! ## A346086.P3428157945004479043

`A346085(A133263(2*n))`
-/

namespace A346086.P3428157945004479043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 (A133263 (2 * n)).toNat

end

end A346086.P3428157945004479043

/-! ## A346086.P4610754423588224591

`A346085(A005893(n)+n)`
-/

namespace A346086.P4610754423588224591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 (A005893 n + (n : ℤ)).toNat

end

end A346086.P4610754423588224591

/-! ## A346086.P14925270156176166401

`A346085(A238531(2*n+1))`
-/

namespace A346086.P14925270156176166401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346085 (A238531 (2 * n + 1)).toNat

end

end A346086.P14925270156176166401

/-!
# A346087: a(n) = min(A071178(n), A329348(n)).

The programs for A346087, there is no canonical definition to state claims against.
-/

/-! ## A346087.P13460299449589980840

`A100995(A345941(n+1))`
-/

namespace A346087.P13460299449589980840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A345941 (n + 1)).toNat

end

end A346087.P13460299449589980840

/-! ## A346087.P13649377765156550367

`∑{e}[(n+1)/A345942(n+1), #]`
-/

namespace A346087.P13649377765156550367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345942 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A346087.P13649377765156550367

/-! ## A346087.P7297467705123057504

`A252736(2*A345941(n+1))`
-/

namespace A346087.P7297467705123057504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A345941 (n + 1)).toNat

end

end A346087.P7297467705123057504

/-! ## A346087.P7520776444721799442

`∑{d}[A345941(n+1), A001221(#)]`
-/

namespace A346087.P7520776444721799442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A346087.P7520776444721799442

/-! ## A346087.P7677177783993092422

`A001222((n+1)/A345942(n+1))`
-/

namespace A346087.P7677177783993092422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A345942 (n + 1) : ℚ))).toNat

end

end A346087.P7677177783993092422

/-! ## A346087.P5700517197547326598

`A071178((n+1)/A345942(n+1))`
-/

namespace A346087.P5700517197547326598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A345942 (n + 1) : ℚ))).toNat

end

end A346087.P5700517197547326598

/-! ## A346087.P4945582010267229803

`A069248(A345941(2*n+1-n))`
-/

namespace A346087.P4945582010267229803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069248 (A345941 (2 * n + 1 - n)).toNat

end

end A346087.P4945582010267229803

/-! ## A346087.P925266662657015632

`A061395(A319355(A345941(n+1))²)`
-/

namespace A346087.P925266662657015632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A319355 (A345941 (n + 1)).toNat ^ 2).toNat

end

end A346087.P925266662657015632

/-! ## A346087.P532090817839346113

`A032741(A345941(n+1)%A008458(n))`
-/

namespace A346087.P532090817839346113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.tmod (A345941 (n + 1)) (A008458 n)).toNat

end

end A346087.P532090817839346113

/-! ## A346087.P3365217642352736885

`A001222(n+1)-A001222(A345942(n+1))`
-/

namespace A346087.P3365217642352736885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A345942 (n + 1)).toNat

end

end A346087.P3365217642352736885

/-! ## A346087.P17060132004349940226

`A071178(A345941(A334727(A334727(n+1))))`
-/

namespace A346087.P17060132004349940226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A345941 (A334727 (A334727 (n + 1)).toNat).toNat).toNat

end

end A346087.P17060132004349940226

/-! ## A346087.P14145079026744721215

`A004526(∏{e}[A345941(n+1)², #])`
-/

namespace A346087.P14145079026744721215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A346087.P14145079026744721215

/-! ## A346087.P18004510621368745056

`A001222(gcd(n+1, A329044(n+1)))`
-/

namespace A346087.P18004510621368745056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (n + 1 : ℤ) (A329044 (n + 1)))

end

end A346087.P18004510621368745056

/-! ## A346087.P6364839008026524974

`A069248(A345941(n+1)²)/2`
-/

namespace A346087.P6364839008026524974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069248 (A345941 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A346087.P6364839008026524974

/-! ## A346087.P9983616262558647083

`A071178(A345941(n+1)²)/2`
-/

namespace A346087.P9983616262558647083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071178 (A345941 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A346087.P9983616262558647083

/-!
# A346088: Smallest divisor d of n for which A002034(d) = A002034(n), where A002034(n) is the smallest positive integer k such that k! is a multiple of n.

The programs for A346088, there is no canonical definition to state claims against.
-/

/-! ## A346088.P4648387536359021418

`(n+1)/A346089(n+1)`
-/

namespace A346088.P4648387536359021418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A346089 (n + 1) : ℚ)

end

end A346088.P4648387536359021418

/-! ## A346088.P8748842671233369453

`A346089(n+1)^(-1)*A008611(3*n+2)`
-/

namespace A346088.P8748842671233369453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346089 (n + 1) : ℚ) ^ (-1 : ℤ) * (A008611 (3 * n + 2) : ℚ)

end

end A346088.P8748842671233369453

/-! ## A346088.P5012825138832379348

`A219158(A346089(n+1)+∑[n])`
-/

namespace A346088.P5012825138832379348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A346089 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346088.P5012825138832379348

/-! ## A346088.P201679414450473659

`A234575(A346089(n+1)+A000217(n))`
-/

namespace A346088.P201679414450473659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A346089 (n + 1) + A000217 n).toNat

end

end A346088.P201679414450473659

/-! ## A346088.P13255765227636506670

`A010766(A346089(n+1)+∑[n])`
-/

namespace A346088.P13255765227636506670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A346089 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346088.P13255765227636506670

/-! ## A346088.P1487532943671589041

`A051537(A346089(n+1)+∑[n])`
-/

namespace A346088.P1487532943671589041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A346089 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346088.P1487532943671589041

/-! ## A346088.P16717640016706276149

`A126988(A346089(n+1)+∑[n])`
-/

namespace A346088.P16717640016706276149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A346089 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346088.P16717640016706276149

/-! ## A346088.P5973169734811284051

`A054531(A346089(n+1)+A000217(n))`
-/

namespace A346088.P5973169734811284051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A346089 (n + 1) + A000217 n).toNat

end

end A346088.P5973169734811284051

/-! ## A346088.P9263118590004164009

`A267177(A346089(n+1)+n²)`
-/

namespace A346088.P9263118590004164009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A346089 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A346088.P9263118590004164009

/-!
# A346089: a(n) = n divided by the smallest divisor d of n for which A002034(d) = A002034(n), where A002034(n) is the smallest positive integer k such that k! is a multiple of n.

The programs for A346089, there is no canonical definition to state claims against.
-/

/-! ## A346089.P5442930115410522261

`(n+1)/A346088(n+1)`
-/

namespace A346089.P5442930115410522261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A346088 (n + 1) : ℚ)

end

end A346089.P5442930115410522261

/-! ## A346089.P7434662456631001492

`A219158(A346088(n+1)+A000217(n))`
-/

namespace A346089.P7434662456631001492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A346088 (n + 1) + A000217 n).toNat

end

end A346089.P7434662456631001492

/-! ## A346089.P16422083870159129150

`A234575(A346088(n+1)+A000217(n))`
-/

namespace A346089.P16422083870159129150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A346088 (n + 1) + A000217 n).toNat

end

end A346089.P16422083870159129150

/-! ## A346089.P7508656771725755943

`A010766(A346088(n+1)+∑[n])`
-/

namespace A346089.P7508656771725755943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A346088 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346089.P7508656771725755943

/-! ## A346089.P8076143967836861742

`A051537(A346088(n+1)+2*n-(n-C(n, 2)))`
-/

namespace A346089.P8076143967836861742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A346088 (n + 1) + ((2 * n : ℤ) - ((n : ℤ) - (Nat.choose n 2 : ℤ)))).toNat

end

end A346089.P8076143967836861742

/-! ## A346089.P12356950409391059691

`A049834(A346088(n+1)+A000217(n))`
-/

namespace A346089.P12356950409391059691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A346088 (n + 1) + A000217 n).toNat

end

end A346089.P12356950409391059691

/-! ## A346089.P6932225131103845490

`A051537(A346088(n+1)+A000217(n))`
-/

namespace A346089.P6932225131103845490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A346088 (n + 1) + A000217 n).toNat

end

end A346089.P6932225131103845490

/-! ## A346089.P6462709455299994089

`A054531(A346088(n+1)+A000217(n))`
-/

namespace A346089.P6462709455299994089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A346088 (n + 1) + A000217 n).toNat

end

end A346089.P6462709455299994089

/-! ## A346089.P7502538644898251046

`A126988(A346088(n+1)+A000217(n))`
-/

namespace A346089.P7502538644898251046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A346088 (n + 1) + A000217 n).toNat

end

end A346089.P7502538644898251046

/-! ## A346089.P13043071243477152526

`A347687(A346088(n+1)+C(n+2, 2))`
-/

namespace A346089.P13043071243477152526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347687 (A346088 (n + 1) + (Nat.choose (n + 2) 2 : ℤ)).toNat

end

end A346089.P13043071243477152526

/-!
# A346090: Numbers k such that k and A346098(k) are relatively prime; positions of ones in A346099, positions of zeros in A346100.

The programs for A346090, there is no canonical definition to state claims against.
-/

/-! ## A346090.P6197505938041756035

`eq[1, A346099(n+1)]+1`
-/

namespace A346090.P6197505938041756035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346090.P6197505938041756035

/-! ## A346090.P8339888689130917643

`lt[A346099(abs(1-n)+1)+n, n+2]`
-/

namespace A346090.P8339888689130917643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346099 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A346090.P8339888689130917643

/-! ## A346090.P16208596596454588272

`eq[0, A346100(n+1)]+1`
-/

namespace A346090.P16208596596454588272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346090.P16208596596454588272

/-! ## A346090.P3138418211386082347

`eq[A000007(n), A346100(A028310(n))]`
-/

namespace A346090.P3138418211386082347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346090.P3138418211386082347

/-! ## A346090.P17365688566339513733

`eq[A000038(n), A346100(A028310(n))]`
-/

namespace A346090.P17365688566339513733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346100 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346090.P17365688566339513733

/-!
# A346091: a(n) = A328571(A108951(n)).

The programs for A346091, there is no canonical definition to state claims against.
-/

/-! ## A346091.P11532518786510581450

`A324886(n+1)/A344592(n+1)`
-/

namespace A346091.P11532518786510581450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A344592 (n + 1) : ℚ)

end

end A346091.P11532518786510581450

/-! ## A346091.P623167419856365860

`A328571(A108951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346091.P623167419856365860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A108951 (n + 1)).toNat

end

end A346091.P623167419856365860

/-! ## A346091.P2025091743305844674

`A324886(n+1)/A329047(n+1)*A342920(n+1)`
-/

namespace A346091.P2025091743305844674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A329047 (n + 1) : ℚ) * (A342920 (n + 1) : ℚ)

end

end A346091.P2025091743305844674

/-! ## A346091.P14400064167892040892

`A006530(A119416(n+1))*A324896(n+1)/A344592(n+1)`
-/

namespace A346091.P14400064167892040892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A119416 (n + 1)).toNat * A324896 (n + 1) : ℚ) / (A344592 (n + 1) : ℚ)

end

end A346091.P14400064167892040892

/-! ## A346091.P1335339975733913536

`gcd(A324886(n+1), A324887(A151800(n)))`
-/

namespace A346091.P1335339975733913536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324886 (n + 1)) (A324887 (A151800 n).toNat)

end

end A346091.P1335339975733913536

/-! ## A346091.P3330824804796651568

`gcd(A324886(n+1)², A034386(A000040(n+1)))`
-/

namespace A346091.P3330824804796651568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324886 (n + 1) ^ 2) (A034386 (A000040 (n + 1)).toNat)

end

end A346091.P3330824804796651568

/-!
# A346092: a(n) = A276085(A328572(A108951(n))).

The programs for A346092, there is no canonical definition to state claims against.
-/

/-! ## A346092.P14453008457804432680

`A108951(n+1)-A346093(n+1)`
-/

namespace A346092.P14453008457804432680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A346093 (n + 1)

end

end A346092.P14453008457804432680

/-! ## A346092.P3961541645718198087

`A331188(A053024(n+1))-A346093(n+1)`
-/

namespace A346092.P3961541645718198087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A053024 (n + 1)).toNat - A346093 (n + 1)

end

end A346092.P3961541645718198087

/-! ## A346092.P12793149237830008151

`A331188(A119416(n+1))-A346093(n+1)`
-/

namespace A346092.P12793149237830008151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A119416 (n + 1)).toNat - A346093 (n + 1)

end

end A346092.P12793149237830008151

/-! ## A346092.P8467742029810274376

`A346108(n+1)-(A346109(n+1)+A346093(n+1))`
-/

namespace A346092.P8467742029810274376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346108 (n + 1) - (A346109 (n + 1) + A346093 (n + 1))

end

end A346092.P8467742029810274376

/-! ## A346092.P9113590169654114753

`A108951(n+1)-A276085(A346091(n+1))`
-/

namespace A346092.P9113590169654114753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A276085 (A346091 (n + 1)).toNat

end

end A346092.P9113590169654114753

/-!
# A346093: a(n) = A276085(A328571(A108951(n))).

The programs for A346093, there is no canonical definition to state claims against.
-/

/-! ## A346093.P17688513522509143157

`A108951(n+1)-A346092(n+1)`
-/

namespace A346093.P17688513522509143157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) - A346092 (n + 1)

end

end A346093.P17688513522509143157

/-! ## A346093.P10849981032182862594

`A276085(A346091(n+1))`
-/

namespace A346093.P10849981032182862594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A346091 (n + 1)).toNat

end

end A346093.P10849981032182862594

/-! ## A346093.P17102082019000235183

`A276085(A328571(A108951(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346093.P17102082019000235183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A328571 (A108951 (n + 1)).toNat).toNat

end

end A346093.P17102082019000235183

/-! ## A346093.P5221463777479557669

`∑{p}[A346091(n+1), A181811(#)]`
-/

namespace A346093.P5221463777479557669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A181811 p

end

end A346093.P5221463777479557669

/-! ## A346093.P13960017095423887788

`A331188(A256017(n+1))-A346092(n+1)`
-/

namespace A346093.P13960017095423887788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A256017 (n + 1)).toNat - A346092 (n + 1)

end

end A346093.P13960017095423887788

/-! ## A346093.P17750020051117824990

`A331188(A053024(n+1))-A346092(n+1)`
-/

namespace A346093.P17750020051117824990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A053024 (n + 1)).toNat - A346092 (n + 1)

end

end A346093.P17750020051117824990

/-! ## A346093.P7978247616578899090

`A331188(A119416(n+1))-A346092(n+1)`
-/

namespace A346093.P7978247616578899090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A119416 (n + 1)).toNat - A346092 (n + 1)

end

end A346093.P7978247616578899090

/-!
# A346094: a(n) = n / A275823(n), where A275823(n) is the least k such that n divides phi(k^2).

The programs for A346094, there is no canonical definition to state claims against.
-/

/-! ## A346094.P9328262873341827235

`(n+1)/A275823(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346094.P9328262873341827235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A275823 (n + 1) : ℚ)

end

end A346094.P9328262873341827235

/-! ## A346094.P5382187299387497313

`A051537(A275823(n+1)+∑[n])`
-/

namespace A346094.P5382187299387497313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A275823 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346094.P5382187299387497313

/-! ## A346094.P14313945284992345240

`A054531(A275823(n+1)+∑[n])`
-/

namespace A346094.P14313945284992345240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A275823 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346094.P14313945284992345240

/-! ## A346094.P7316313281093962556

`A126988(A275823(n+1)+∑[n])`
-/

namespace A346094.P7316313281093962556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A275823 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346094.P7316313281093962556

/-! ## A346094.P15398178488369946224

`A138530(A275823(n+1)+∑[n])`
-/

namespace A346094.P15398178488369946224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (A275823 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346094.P15398178488369946224

/-! ## A346094.P2589583682814683260

`A010766(A275823(n+1)+A000217(n))`
-/

namespace A346094.P2589583682814683260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A275823 (n + 1) + A000217 n).toNat

end

end A346094.P2589583682814683260

/-! ## A346094.P12833824280013093455

`lcm(A000188(A072994(n+1)), A173751(n+1))`
-/

namespace A346094.P12833824280013093455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000188 (A072994 (n + 1)).toNat) (A173751 (n + 1))

end

end A346094.P12833824280013093455

/-! ## A346094.P8538150460054347517

`A008574(n+1)%(1-A008574(A275823(n+1)))`
-/

namespace A346094.P8538150460054347517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (n + 1)) (1 - A008574 (A275823 (n + 1)).toNat)

end

end A346094.P8538150460054347517

/-! ## A346094.P18016403904258257301

`gcd(n+1, A000010(A346701(n+1)))`
-/

namespace A346094.P18016403904258257301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000010 (A346701 (n + 1)).toNat)

end

end A346094.P18016403904258257301

/-!
# A346095: a(n) = gcd(A324886(n), A064989(A324886(n))).

The programs for A346095, there is no canonical definition to state claims against.
-/

/-! ## A346095.P12910499018181032197

`A324886(n+1)/A346096(n+1)`
-/

namespace A346095.P12910499018181032197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A346096 (n + 1) : ℚ)

end

end A346095.P12910499018181032197

/-! ## A346095.P16941348377560633577

`A329044(n+1)/A346097(n+1)`
-/

namespace A346095.P16941348377560633577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (A346097 (n + 1) : ℚ)

end

end A346095.P16941348377560633577

/-! ## A346095.P11800774512252908975

`gcd(A324886(n+1), A329044(n+1))`
-/

namespace A346095.P11800774512252908975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324886 (n + 1)) (A329044 (n + 1))

end

end A346095.P11800774512252908975

/-! ## A346095.P6219303714687177632

`A345941(n+1)*A345943(n+1)/A346097(n+1)`
-/

namespace A346095.P6219303714687177632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345941 (n + 1) * A345943 (n + 1) : ℚ) / (A346097 (n + 1) : ℚ)

end

end A346095.P6219303714687177632

/-! ## A346095.P6293716009174902002

`A324887(n+1)/(A108951(n+1)*A346096(n+1))`
-/

namespace A346095.P6293716009174902002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324887 (n + 1) : ℚ) / (A108951 (n + 1) * A346096 (n + 1) : ℚ)

end

end A346095.P6293716009174902002

/-! ## A346095.P1082106812614593260

`A003961(A329044(n+1)/A346098(n+1))`
-/

namespace A346095.P1082106812614593260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A329044 (n + 1) : ℚ) / (A346098 (n + 1) : ℚ))).toNat

end

end A346095.P1082106812614593260

/-!
# A346096: Numerator of the primorial deflation of A276086(A108951(n)): a(n) = A319626(A324886(n)).

The programs for A346096, there is no canonical definition to state claims against.
-/

/-! ## A346096.P4467102829508177108

`A324886(n+1)/A346095(n+1)`
-/

namespace A346096.P4467102829508177108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A346095 (n + 1) : ℚ)

end

end A346096.P4467102829508177108

/-! ## A346096.P17167068116634491318

`A319626(A324886(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346096.P17167068116634491318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A324886 (n + 1)).toNat

end

end A346096.P17167068116634491318

/-! ## A346096.P16031843576563723492

`A117366(n+1)*A324896(n+1)/A346095(n+1)`
-/

namespace A346096.P16031843576563723492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117366 (n + 1) * A324896 (n + 1) : ℚ) / (A346095 (n + 1) : ℚ)

end

end A346096.P16031843576563723492

/-! ## A346096.P2192498441711569164

`A324886(n+1)/A329044(n+1)*A346097(n+1)`
-/

namespace A346096.P2192498441711569164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (A329044 (n + 1) : ℚ) * (A346097 (n + 1) : ℚ)

end

end A346096.P2192498441711569164

/-! ## A346096.P2683899020682607220

`A344592(n+1)*A346091(n+1)/A346095(n+1)`
-/

namespace A346096.P2683899020682607220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344592 (n + 1) * A346091 (n + 1) : ℚ) / (A346095 (n + 1) : ℚ)

end

end A346096.P2683899020682607220

/-! ## A346096.P17502155454219519237

`A324886(n+1)/gcd(A324886(n+1), A345943(n+1))`
-/

namespace A346096.P17502155454219519237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324886 (n + 1) : ℚ) / (Int.gcd (A324886 (n + 1)) (A345943 (n + 1)) : ℚ)

end

end A346096.P17502155454219519237

/-! ## A346096.P14270119916243524693

`A045965(A006530(n+1))*A324896(n+1)/A346095(n+1)`
-/

namespace A346096.P14270119916243524693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045965 (A006530 (n + 1)).toNat * A324896 (n + 1) : ℚ) / (A346095 (n + 1) : ℚ)

end

end A346096.P14270119916243524693

/-!
# A346097: Denominator of the primorial deflation of A276086(A108951(n)): a(n) = A319627(A324886(n)).

The programs for A346097, there is no canonical definition to state claims against.
-/

/-! ## A346097.P3875779565872743811

`A329044(n+1)/A346095(n+1)`
-/

namespace A346097.P3875779565872743811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (A346095 (n + 1) : ℚ)

end

end A346097.P3875779565872743811

/-! ## A346097.P152437009459244194

`A319627(A324886(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346097.P152437009459244194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A324886 (n + 1)).toNat

end

end A346097.P152437009459244194

/-! ## A346097.P7187697254549230937

`A329044(n+1)/A324886(n+1)*A346096(n+1)`
-/

namespace A346097.P7187697254549230937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (A324886 (n + 1) : ℚ) * (A346096 (n + 1) : ℚ)

end

end A346097.P7187697254549230937

/-! ## A346097.P5625735439024928436

`A345941(n+1)*A345943(n+1)/A346095(n+1)`
-/

namespace A346097.P5625735439024928436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345941 (n + 1) * A345943 (n + 1) : ℚ) / (A346095 (n + 1) : ℚ)

end

end A346097.P5625735439024928436

/-! ## A346097.P784573430918815863

`(n+1)/A345942(n+1)*A345943(n+1)/A346095(n+1)`
-/

namespace A346097.P784573430918815863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345942 (n + 1) : ℚ) * (A345943 (n + 1) : ℚ) / (A346095 (n + 1) : ℚ)

end

end A346097.P784573430918815863

/-! ## A346097.P17752061264044774596

`A064989(A346095(n+1))/A346095(n+1)*A346098(n+1)`
-/

namespace A346097.P17752061264044774596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064989 (A346095 (n + 1)).toNat : ℚ) / (A346095 (n + 1) : ℚ) * (A346098 (n + 1) : ℚ)

end

end A346097.P17752061264044774596

/-!
# A346098: a(n) = A064989(A346096(n)) = A064989(A319626(A324886(n))).

The programs for A346098, there is no canonical definition to state claims against.
-/

/-! ## A346098.P6814430864604137903

`A064989(A346096(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346098.P6814430864604137903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A346096 (n + 1)).toNat

end

end A346098.P6814430864604137903

/-! ## A346098.P13421135441322453091

`A064989(A319626(A324886(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346098.P13421135441322453091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A319626 (A324886 (n + 1)).toNat).toNat

end

end A346098.P13421135441322453091

/-! ## A346098.P12339092996252865418

`A329044(n+1)/A064989(A346095(n+1))`
-/

namespace A346098.P12339092996252865418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329044 (n + 1) : ℚ) / (A064989 (A346095 (n + 1)).toNat : ℚ)

end

end A346098.P12339092996252865418

/-! ## A346098.P4302660802542693814

`A346095(n+1)/A064989(A346095(n+1))*A346097(n+1)`
-/

namespace A346098.P4302660802542693814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346095 (n + 1) : ℚ) / (A064989 (A346095 (n + 1)).toNat : ℚ) * (A346097 (n + 1) : ℚ)

end

end A346098.P4302660802542693814

/-! ## A346098.P12874836662741139292

`A345941(n+1)*A345943(n+1)/A349122(A346095(n+1))`
-/

namespace A346098.P12874836662741139292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345941 (n + 1) * A345943 (n + 1) : ℚ) / (A349122 (A346095 (n + 1)).toNat : ℚ)

end

end A346098.P12874836662741139292

/-! ## A346098.P5086144244993026079

`(n+1)/A345942(n+1)*A345943(n+1)/A064989(A346095(n+1))`
-/

namespace A346098.P5086144244993026079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A345942 (n + 1) : ℚ) * (A345943 (n + 1) : ℚ) / (A064989 (A346095 (n + 1)).toNat : ℚ)

end

end A346098.P5086144244993026079

/-!
# A346099: a(n) = gcd(n, A346098(n)).

The programs for A346099, there is no canonical definition to state claims against.
-/

/-! ## A346099.P10222385362367335126

`gcd(n+1, A346098(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346099.P10222385362367335126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A346098 (n + 1))

end

end A346099.P10222385362367335126

/-! ## A346099.P6732891053732863864

`A006530(n+1)^A346100(n+1)`
-/

namespace A346099.P6732891053732863864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A346100 (n + 1) : ℤ)

end

end A346099.P6732891053732863864

/-! ## A346099.P16199313975555993472

`A111089(n+1)^A346100(n+1)`
-/

namespace A346099.P16199313975555993472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111089 (n + 1) : ℚ) ^ (A346100 (n + 1) : ℤ)

end

end A346099.P16199313975555993472

/-! ## A346099.P15204006061343775738

`A034699(∏{p}[n+1, #])^A346100(n+1)`
-/

namespace A346099.P15204006061343775738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A346100 (n + 1) : ℤ)

end

end A346099.P15204006061343775738

/-! ## A346099.P10705631982738710812

`A053585(∏{p}[n+1, #])^A346100(n+1)`
-/

namespace A346099.P10705631982738710812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A346100 (n + 1) : ℤ)

end

end A346099.P10705631982738710812

/-! ## A346099.P13208955394954940840

`A345941(∏{p}[n+1, #]^A346100(n+1))`
-/

namespace A346099.P13208955394954940840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A346100 (n + 1) : ℤ))).toNat

end

end A346099.P13208955394954940840

/-! ## A346099.P10044992307467059299

`A085392(A103517(n))^A346100(n+1)`
-/

namespace A346099.P10044992307467059299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085392 (A103517 n).toNat : ℚ) ^ (A346100 (n + 1) : ℤ)

end

end A346099.P10044992307467059299

/-! ## A346099.P11374835080924715928

`A014963(A053585(n+1))^A346100(n+1)`
-/

namespace A346099.P11374835080924715928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A053585 (n + 1)).toNat : ℚ) ^ (A346100 (n + 1) : ℤ)

end

end A346099.P11374835080924715928

/-! ## A346099.P8939985669778766066

`A117366(A064989(n+1))^A346100(n+1)`
-/

namespace A346099.P8939985669778766066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117366 (A064989 (n + 1)).toNat : ℚ) ^ (A346100 (n + 1) : ℤ)

end

end A346099.P8939985669778766066

/-! ## A346099.P15531241062524128815

`A020639(A345941(n+1))^A346100(n+1)`
-/

namespace A346099.P15531241062524128815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A345941 (n + 1)).toNat : ℚ) ^ (A346100 (n + 1) : ℤ)

end

end A346099.P15531241062524128815

