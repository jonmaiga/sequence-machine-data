import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
# A134400: M * A007318, where M = triangle with (1, 1, 2, 3, ...) in the main diagonal and the rest zeros.

The programs for A134400, the canonical program `A134400.P18111942240929711886` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134400 has offset 0).

The definition of A134400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134400.P7996304622539731992

`∑[char[A253145(n)]]*A007318(n)`
-/

namespace A134400.P7996304622539731992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A007318 n

end

end A134400.P7996304622539731992

namespace A134400

/-- `∑[char[A253145(n)]]*A007318(n)` -/
def P7996304622539731992.Spec : Prop :=
  ∀ n, P7996304622539731992.a n = A134400 n

end A134400

/-! ## A134400.P18111942240929711886

`A007318(n)*A028310(A003056(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134400

/-- `A007318(n)*A028310(A003056(n))` -/
def P18111942240929711886.Spec : Prop :=
  ∀ n, P18111942240929711886.a n = A134400 n

theorem P18111942240929711886.correct : P18111942240929711886.Spec := by
  intro n
  simp only [A134400]

end A134400

/-! ## A134400.P15236678290640391287

`A007318(n)*A007318(A057944(n)+1)`
-/

namespace A134400.P15236678290640391287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007318 (A057944 n + 1).toNat

end

end A134400.P15236678290640391287

namespace A134400

/-- `A007318(n)*A007318(A057944(n)+1)` -/
def P15236678290640391287.Spec : Prop :=
  ∀ n, P15236678290640391287.a n = A134400 n

end A134400

/-! ## A134400.P9435487659035979679

`A003056(A000007(n)+n)*A007318(n)`
-/

namespace A134400.P9435487659035979679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000007 n + (n : ℤ)).toNat * A007318 n

end

end A134400.P9435487659035979679

namespace A134400

/-- `A003056(A000007(n)+n)*A007318(n)` -/
def P9435487659035979679.Spec : Prop :=
  ∀ n, P9435487659035979679.a n = A134400 n

end A134400

/-! ## A134400.P12657033114352147511

`A003056(A000038(n)+n)*A007318(n)`
-/

namespace A134400.P12657033114352147511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000038 n + (n : ℤ)).toNat * A007318 n

end

end A134400.P12657033114352147511

namespace A134400

/-- `A003056(A000038(n)+n)*A007318(n)` -/
def P12657033114352147511.Spec : Prop :=
  ∀ n, P12657033114352147511.a n = A134400 n

end A134400

/-! ## A134400.P7696770746224807642

`A003056(A010054(n)+n)*A007318(n)`
-/

namespace A134400.P7696770746224807642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A010054 n + (n : ℤ)).toNat * A007318 n

end

end A134400.P7696770746224807642

namespace A134400

/-- `A003056(A010054(n)+n)*A007318(n)` -/
def P7696770746224807642.Spec : Prop :=
  ∀ n, P7696770746224807642.a n = A134400 n

end A134400

/-! ## A134400.P15099000913029840716

`A003056(or(n, A010054(n)))*A007318(n)`
-/

namespace A134400.P15099000913029840716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (n : ℤ) (A010054 n)).toNat * A007318 n

end

end A134400.P15099000913029840716

namespace A134400

/-- `A003056(or(n, A010054(n)))*A007318(n)` -/
def P15099000913029840716.Spec : Prop :=
  ∀ n, P15099000913029840716.a n = A134400 n

end A134400

/-! ## A134400.P14249049951566664631

`A003056(xor(n, A000007(n)))*A007318(n)`
-/

namespace A134400.P14249049951566664631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (n : ℤ) (A000007 n)).toNat * A007318 n

end

end A134400.P14249049951566664631

namespace A134400

/-- `A003056(xor(n, A000007(n)))*A007318(n)` -/
def P14249049951566664631.Spec : Prop :=
  ∀ n, P14249049951566664631.a n = A134400 n

end A134400

/-! ## A134400.P14642984212362193015

`ceil(A134059(n)/3)*A028310(A003056(n))`
-/

namespace A134400.P14642984212362193015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A028310 (A003056 n).toNat

end

end A134400.P14642984212362193015

namespace A134400

/-- `ceil(A134059(n)/3)*A028310(A003056(n))` -/
def P14642984212362193015.Spec : Prop :=
  ∀ n, P14642984212362193015.a n = A134400 n

end A134400

/-! ## A134400.P16947663422199347806

`ceil(A135087(n)/4)*A028310(A003056(n))`
-/

namespace A134400.P16947663422199347806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A028310 (A003056 n).toNat

end

end A134400.P16947663422199347806

namespace A134400

/-- `ceil(A135087(n)/4)*A028310(A003056(n))` -/
def P16947663422199347806.Spec : Prop :=
  ∀ n, P16947663422199347806.a n = A134400 n

end A134400

/-! ## A134400.P4499472187312818202

`ceil(A135089(n)/5)*A028310(A003056(n))`
-/

namespace A134400.P4499472187312818202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135089 n : ℚ) / 5⌉ * A028310 (A003056 n).toNat

end

end A134400.P4499472187312818202

namespace A134400

/-- `ceil(A135089(n)/5)*A028310(A003056(n))` -/
def P4499472187312818202.Spec : Prop :=
  ∀ n, P4499472187312818202.a n = A134400 n

end A134400

/-! ## A134400.P3083122133718711854

`A007318(n)*A003056(A004016(n)%2+n)`
-/

namespace A134400.P3083122133718711854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A003056 (Int.tmod (A004016 n) 2 + (n : ℤ)).toNat

end

end A134400.P3083122133718711854

namespace A134400

/-- `A007318(n)*A003056(A004016(n)%2+n)` -/
def P3083122133718711854.Spec : Prop :=
  ∀ n, P3083122133718711854.a n = A134400 n

end A134400

/-! ## A134400.P13061526875356246536

`A134059(A028310(n))/3*A028310(A003056(n))`
-/

namespace A134400.P13061526875356246536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (A028310 n).toNat : ℚ) / 3 * (A028310 (A003056 n).toNat : ℚ)

end

end A134400.P13061526875356246536

namespace A134400

/-- `A134059(A028310(n))/3*A028310(A003056(n))` -/
def P13061526875356246536.Spec : Prop :=
  ∀ n, P13061526875356246536.a n = (A134400 n : ℚ)

end A134400

/-! ## A134400.P14831553883757042638

`(A285118(n)+A285116(n))*A028310(A003056(n))`
-/

namespace A134400.P14831553883757042638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A028310 (A003056 n).toNat

end

end A134400.P14831553883757042638

namespace A134400

/-- `(A285118(n)+A285116(n))*A028310(A003056(n))` -/
def P14831553883757042638.Spec : Prop :=
  ∀ n, P14831553883757042638.a n = A134400 n

end A134400

/-! ## A134400.P9255120425507003641

`(A028276(n)-A028263(n))*A028310(A003056(n))`
-/

namespace A134400.P9255120425507003641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028276 n - A028263 n) * A028310 (A003056 n).toNat

end

end A134400.P9255120425507003641

namespace A134400

/-- `(A028276(n)-A028263(n))*A028310(A003056(n))` -/
def P9255120425507003641.Spec : Prop :=
  ∀ n, P9255120425507003641.a n = A134400 n

end A134400

/-! ## A134400.P4544522463466210634

`A007318(A038722(n+1)-A025581(n))*A007318(n)`
-/

namespace A134400.P4544522463466210634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A038722 (n + 1) - A025581 n).toNat * A007318 n

end

end A134400.P4544522463466210634

namespace A134400

/-- `A007318(A038722(n+1)-A025581(n))*A007318(n)` -/
def P4544522463466210634.Spec : Prop :=
  ∀ n, P4544522463466210634.a n = A134400 n

end A134400

/-! ## A134400.P5125826939763154865

`ceil(A134060(n)/3)*A028310(A003056(n))`
-/

namespace A134400.P5125826939763154865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A028310 (A003056 n).toNat

end

end A134400.P5125826939763154865

namespace A134400

/-- `ceil(A134060(n)/3)*A028310(A003056(n))` -/
def P5125826939763154865.Spec : Prop :=
  ∀ n, P5125826939763154865.a n = A134400 n

end A134400

/-! ## A134400.P11130067878884877900

`A007318(n)*A284249(A000217(n)+1)`
-/

namespace A134400.P11130067878884877900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A284249 (A000217 n + 1).toNat

end

end A134400.P11130067878884877900

namespace A134400

/-- `A007318(n)*A284249(A000217(n)+1)` -/
def P11130067878884877900.Spec : Prop :=
  ∀ n, P11130067878884877900.a n = A134400 n

end A134400

/-! ## A134400.P14662509769455946896

`A000005(A113402(n+1))*A007318(n)`
-/

namespace A134400.P14662509769455946896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A113402 (n + 1)).toNat * A007318 n

end

end A134400.P14662509769455946896

namespace A134400

/-- `A000005(A113402(n+1))*A007318(n)` -/
def P14662509769455946896.Spec : Prop :=
  ∀ n, P14662509769455946896.a n = A134400 n

end A134400

/-! ## A134400.P17693321211153787867

`A007318(n)*A005361(A137688(n))`
-/

namespace A134400.P17693321211153787867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005361 (A137688 n).toNat

end

end A134400.P17693321211153787867

namespace A134400

/-- `A007318(n)*A005361(A137688(n))` -/
def P17693321211153787867.Spec : Prop :=
  ∀ n, P17693321211153787867.a n = A134400 n

end A134400

/-!
# A134401: Row sums of triangle A134400.

The programs for A134401, the canonical program `A134401.P5250710606957478691` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134401 has offset 0).

The definition of A134401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134401.P5250710606957478691

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134401

/-- `4*a(n-1)-4*a(n-2)` -/
def P5250710606957478691.Spec : Prop :=
  ∀ n, P5250710606957478691.a n = A134401 n

theorem P5250710606957478691.correct : P5250710606957478691.Spec := by
  intro n
  simp only [A134401]

end A134401

/-! ## A134401.P6326170451077961155

`ogf((1-2x+4x^2)/(1-4x+4x^2))`
-/

namespace A134401.P6326170451077961155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -4, 4] n

end

end A134401.P6326170451077961155

namespace A134401

/-- `ogf((1-2x+4x^2)/(1-4x+4x^2))` -/
def P6326170451077961155.Spec : Prop :=
  ∀ n, P6326170451077961155.a n = A134401 n

end A134401

/-! ## A134401.P11248839375322759662

`2*a(n-1)+2^n` with `a(0)=1, a(1)=2`
-/

namespace A134401.P11248839375322759662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + 2 ^ n

end

end A134401.P11248839375322759662

namespace A134401

/-- `2*a(n-1)+2^n` -/
def P11248839375322759662.Spec : Prop :=
  ∀ n, (P11248839375322759662.a n : ℤ) = A134401 n

end A134401

/-! ## A134401.P5909877905489371612

`n*gcd(2, a(n-1))^n` with `a(0)=1, a(1)=2`
-/

namespace A134401.P5909877905489371612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  n * Nat.gcd 2 (a (n - 1)) ^ n

end

end A134401.P5909877905489371612

namespace A134401

/-- `n*gcd(2, a(n-1))^n` -/
def P5909877905489371612.Spec : Prop :=
  ∀ n, (P5909877905489371612.a n : ℤ) = A134401 n

end A134401

/-! ## A134401.P11753860781412979685

`floor(1/(n+1)+n*2^n)`
-/

namespace A134401.P11753860781412979685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ) + (n * 2 ^ n : ℚ)⌋

end

end A134401.P11753860781412979685

namespace A134401

/-- `floor(1/(n+1)+n*2^n)` -/
def P11753860781412979685.Spec : Prop :=
  ∀ n, P11753860781412979685.a n = A134401 n

end A134401

/-! ## A134401.P12532201289369415612

`n*a((n+1)%n)^n` with `a(0)=1, a(1)=2`
-/

namespace A134401.P12532201289369415612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  n * a ((n + 1) % n) ^ n

end

end A134401.P12532201289369415612

namespace A134401

/-- `n*a((n+1)%n)^n` -/
def P12532201289369415612.Spec : Prop :=
  ∀ n, (P12532201289369415612.a n : ℤ) = A134401 n

end A134401

/-! ## A134401.P13175807365723818844

`n*a(gcd(n, n+1))^n` with `a(0)=1, a(1)=2`
-/

namespace A134401.P13175807365723818844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  n * a (Nat.gcd n (n + 1)) ^ n

end

end A134401.P13175807365723818844

namespace A134401

/-- `n*a(gcd(n, n+1))^n` -/
def P13175807365723818844.Spec : Prop :=
  ∀ n, (P13175807365723818844.a n : ℤ) = A134401 n

end A134401

/-! ## A134401.P6513676505457014764

`record[abs(floor((n-1)*2^(n-1)))]`
-/

namespace A134401.P6513676505457014764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134401.P6513676505457014764

namespace A134401

/-- `record[abs(floor((n-1)*2^(n-1)))]` -/
def P6513676505457014764.Spec : Prop :=
  ∀ n, P6513676505457014764.a n = A134401 n

end A134401

/-! ## A134401.P13617785432675031385

`2^n*n^(n²%(n+1))`
-/

namespace A134401.P13617785432675031385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * n ^ (n ^ 2 % (n + 1))

end

end A134401.P13617785432675031385

namespace A134401

/-- `2^n*n^(n²%(n+1))` -/
def P13617785432675031385.Spec : Prop :=
  ∀ n, (P13617785432675031385.a n : ℤ) = A134401 n

end A134401

/-! ## A134401.P2146882128747553776

`2^n*n%(3*a(n-1))` with `a(0)=1`
-/

namespace A134401.P2146882128747553776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n * (n % (3 * a (n - 1)))

end

end A134401.P2146882128747553776

namespace A134401

/-- `2^n*n%(3*a(n-1))` -/
def P2146882128747553776.Spec : Prop :=
  ∀ n, (P2146882128747553776.a n : ℤ) = A134401 n

end A134401

/-! ## A134401.P4648742777355187277

`(2/(n-1)+2)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A134401.P4648742777355187277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 / ((n : ℤ) - 1 : ℚ) + 2) * a (n - 1)

end

end A134401.P4648742777355187277

namespace A134401

/-- `(2/(n-1)+2)*a(n-1)` -/
def P4648742777355187277.Spec : Prop :=
  ∀ n, P4648742777355187277.a n = (A134401 n : ℚ)

end A134401

/-! ## A134401.P11705335860730811345

`2*a(n-1)/(1-1/n)` with `a(0)=1, a(1)=2`
-/

namespace A134401.P11705335860730811345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) / (1 - 1 / (n : ℚ)))

end

end A134401.P11705335860730811345

namespace A134401

/-- `2*a(n-1)/(1-1/n)` -/
def P11705335860730811345.Spec : Prop :=
  ∀ n, P11705335860730811345.a n = (A134401 n : ℚ)

end A134401

/-! ## A134401.P5900285971588430518

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A134401.P5900285971588430518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A134401.P5900285971588430518

namespace A134401

/-- `4*(a(n-1)-a(n-2))` -/
def P5900285971588430518.Spec : Prop :=
  ∀ n, P5900285971588430518.a n = A134401 n

theorem P5900285971588430518.correct : P5900285971588430518.Spec := by
  intro n
  simp only [A134401, Nat.add_sub_cancel, A134401.P5900285971588430518.a, A134401.P5250710606957478691.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134401

/-! ## A134401.P8927305773753054863

`a(n-1)+a(n-1)+2^n` with `a(0)=1, a(1)=2`
-/

namespace A134401.P8927305773753054863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ n)

end

end A134401.P8927305773753054863

namespace A134401

/-- `a(n-1)+a(n-1)+2^n` -/
def P8927305773753054863.Spec : Prop :=
  ∀ n, (P8927305773753054863.a n : ℤ) = A134401 n

end A134401

/-! ## A134401.P1886621162379146507

`a(n-1)/(1-(1/n+1)/2)` with `a(0)=1, a(1)=2`
-/

namespace A134401.P1886621162379146507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / (1 - (1 / (n : ℚ) + 1) / 2)

end

end A134401.P1886621162379146507

namespace A134401

/-- `a(n-1)/(1-(1/n+1)/2)` -/
def P1886621162379146507.Spec : Prop :=
  ∀ n, P1886621162379146507.a n = (A134401 n : ℚ)

end A134401

/-! ## A134401.P18233982362599875069

`2^n*A028310(n)`
-/

namespace A134401.P18233982362599875069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A028310 n

end

end A134401.P18233982362599875069

namespace A134401

/-- `2^n*A028310(n)` -/
def P18233982362599875069.Spec : Prop :=
  ∀ n, P18233982362599875069.a n = A134401 n

end A134401

/-! ## A134401.P13469658643064149245

`record[A097064(n)+1]-1`
-/

namespace A134401.P13469658643064149245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A134401.P13469658643064149245

namespace A134401

/-- `record[A097064(n)+1]-1` -/
def P13469658643064149245.Spec : Prop :=
  ∀ n, P13469658643064149245.a n = A134401 n

end A134401

/-! ## A134401.P8216302995653651372

`or(C(2, n²), A036289(n))`
-/

namespace A134401.P8216302995653651372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n ^ 2) : ℤ) (A036289 n)

end

end A134401.P8216302995653651372

namespace A134401

/-- `or(C(2, n²), A036289(n))` -/
def P8216302995653651372.Spec : Prop :=
  ∀ n, P8216302995653651372.a n = A134401 n

end A134401

/-! ## A134401.P12400853780416393594

`floor(sqrt(n²+1))*A000079(n)`
-/

namespace A134401.P12400853780416393594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n ^ 2 + 1) : ℤ) * A000079 n

end

end A134401.P12400853780416393594

namespace A134401

/-- `floor(sqrt(n²+1))*A000079(n)` -/
def P12400853780416393594.Spec : Prop :=
  ∀ n, P12400853780416393594.a n = A134401 n

end A134401

/-! ## A134401.P1737493073860610952

`A097064((n+1)%(2*n+1))`
-/

namespace A134401.P1737493073860610952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 ((n + 1) % (2 * n + 1))

end

end A134401.P1737493073860610952

namespace A134401

/-- `A097064((n+1)%(2*n+1))` -/
def P1737493073860610952.Spec : Prop :=
  ∀ n, P1737493073860610952.a n = A134401 n

end A134401

/-!
# A134402: Triangle read by rows, for n > 0, n zeros followed by n.

The programs for A134402, the canonical program `A134402.P6512888230481502878` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134402 has offset 0).

The definition of A134402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134402.P6512888230481502878

`A132440(abs(1-n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134402

/-- `A132440(abs(1-n))` -/
def P6512888230481502878.Spec : Prop :=
  ∀ n, P6512888230481502878.a n = A134402 n

theorem P6512888230481502878.correct : P6512888230481502878.Spec := by
  intro n
  simp only [A134402]

end A134402

/-! ## A134402.P1821093285093066399

`A051340(abs(1-n)+1)-1`
-/

namespace A134402.P1821093285093066399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A134402.P1821093285093066399

namespace A134402

/-- `A051340(abs(1-n)+1)-1` -/
def P1821093285093066399.Spec : Prop :=
  ∀ n, P1821093285093066399.a n = A134402 n

end A134402

/-! ## A134402.P3118599493851541905

`Δ[A063656(n)-(2*n)%(n+1)]`
-/

namespace A134402.P3118599493851541905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n - ((2 * n % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134402.P3118599493851541905

namespace A134402

/-- `Δ[A063656(n)-(2*n)%(n+1)]` -/
def P3118599493851541905.Spec : Prop :=
  ∀ n, P3118599493851541905.a n = A134402 n

end A134402

/-! ## A134402.P15386828382372199471

`A007318(abs(1-n))*char[∑[n-1]]`
-/

namespace A134402.P15386828382372199471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |1 - (n : ℤ)|.toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A134402.P15386828382372199471

namespace A134402

/-- `A007318(abs(1-n))*char[∑[n-1]]` -/
def P15386828382372199471.Spec : Prop :=
  ∀ n, P15386828382372199471.a n = A134402 n

end A134402

/-! ## A134402.P13195394680164704418

`A057428(n)+A051340(n)`
-/

namespace A134402.P13195394680164704418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A051340 n

end

end A134402.P13195394680164704418

namespace A134402

/-- `A057428(n)+A051340(n)` -/
def P13195394680164704418.Spec : Prop :=
  ∀ n, P13195394680164704418.a n = A134402 n

end A134402

/-! ## A134402.P10728704012547654554

`A145677(n)-A073424(n)`
-/

namespace A134402.P10728704012547654554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n - A073424 n

end

end A134402.P10728704012547654554

namespace A134402

/-- `A145677(n)-A073424(n)` -/
def P10728704012547654554.Spec : Prop :=
  ∀ n, P10728704012547654554.a n = A134402 n

end A134402

/-! ## A134402.P12924465111058730421

`A023531(n)*A134399(n)`
-/

namespace A134402.P12924465111058730421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A134399 n

end

end A134402.P12924465111058730421

namespace A134402

/-- `A023531(n)*A134399(n)` -/
def P12924465111058730421.Spec : Prop :=
  ∀ n, P12924465111058730421.a n = A134402 n

end A134402

/-! ## A134402.P3998297604728169822

`A023531(n)*A134400(n)`
-/

namespace A134402.P3998297604728169822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A134400 n

end

end A134402.P3998297604728169822

namespace A134402

/-- `A023531(n)*A134400(n)` -/
def P3998297604728169822.Spec : Prop :=
  ∀ n, P3998297604728169822.a n = A134402 n

end A134402

/-! ## A134402.P4877061235706875296

`A023531(n)*A144330(n)`
-/

namespace A134402.P4877061235706875296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A144330 n

end

end A134402.P4877061235706875296

namespace A134402

/-- `A023531(n)*A144330(n)` -/
def P4877061235706875296.Spec : Prop :=
  ∀ n, P4877061235706875296.a n = A134402 n

end A134402

/-! ## A134402.P5601748046702793697

`A023531(n)*A145677(n)`
-/

namespace A134402.P5601748046702793697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A145677 n

end

end A134402.P5601748046702793697

namespace A134402

/-- `A023531(n)*A145677(n)` -/
def P5601748046702793697.Spec : Prop :=
  ∀ n, P5601748046702793697.a n = A134402 n

end A134402

/-! ## A134402.P1349639375957464711

`A026729(n)*A145677(n)`
-/

namespace A134402.P1349639375957464711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A145677 n

end

end A134402.P1349639375957464711

namespace A134402

/-- `A026729(n)*A145677(n)` -/
def P1349639375957464711.Spec : Prop :=
  ∀ n, P1349639375957464711.a n = A134402 n

end A134402

/-! ## A134402.P922803538352524744

`A023531(n)*A158822(n)`
-/

namespace A134402.P922803538352524744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A158822 n

end

end A134402.P922803538352524744

namespace A134402

/-- `A023531(n)*A158822(n)` -/
def P922803538352524744.Spec : Prop :=
  ∀ n, P922803538352524744.a n = A134402 n

end A134402

/-! ## A134402.P14445097609910449162

`A047998(n)*A145677(n)`
-/

namespace A134402.P14445097609910449162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047998 n * A145677 n

end

end A134402.P14445097609910449162

namespace A134402

/-- `A047998(n)*A145677(n)` -/
def P14445097609910449162.Spec : Prop :=
  ∀ n, P14445097609910449162.a n = A134402 n

end A134402

/-! ## A134402.P9100776815674267953

`A059607(n)*A145677(n)`
-/

namespace A134402.P9100776815674267953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 n * A145677 n

end

end A134402.P9100776815674267953

namespace A134402

/-- `A059607(n)*A145677(n)` -/
def P9100776815674267953.Spec : Prop :=
  ∀ n, P9100776815674267953.a n = A134402 n

end A134402

/-! ## A134402.P9065746016483699401

`A023531(n)*A193738(n)`
-/

namespace A134402.P9065746016483699401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A193738 n

end

end A134402.P9065746016483699401

namespace A134402

/-- `A023531(n)*A193738(n)` -/
def P9065746016483699401.Spec : Prop :=
  ∀ n, P9065746016483699401.a n = A134402 n

end A134402

/-! ## A134402.P6590063330069825113

`A103451(n)*A198321(n)`
-/

namespace A134402.P6590063330069825113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A198321 n

end

end A134402.P6590063330069825113

namespace A134402

/-- `A103451(n)*A198321(n)` -/
def P6590063330069825113.Spec : Prop :=
  ∀ n, P6590063330069825113.a n = A134402 n

end A134402

/-! ## A134402.P8847760559648786667

`A103452(n)*A198321(n)`
-/

namespace A134402.P8847760559648786667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A198321 n

end

end A134402.P8847760559648786667

namespace A134402

/-- `A103452(n)*A198321(n)` -/
def P8847760559648786667.Spec : Prop :=
  ∀ n, P8847760559648786667.a n = A134402 n

end A134402

/-! ## A134402.P6439524125757394952

`A131431(n)%A133128(n)`
-/

namespace A134402.P6439524125757394952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131431 n) (A133128 n)

end

end A134402.P6439524125757394952

namespace A134402

/-- `A131431(n)%A133128(n)` -/
def P6439524125757394952.Spec : Prop :=
  ∀ n, P6439524125757394952.a n = A134402 n

end A134402

/-! ## A134402.P13657761739754561824

`and(A099627(n), A145677(n))`
-/

namespace A134402.P13657761739754561824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099627 n) (A145677 n)

end

end A134402.P13657761739754561824

namespace A134402

/-- `and(A099627(n), A145677(n))` -/
def P13657761739754561824.Spec : Prop :=
  ∀ n, P13657761739754561824.a n = A134402 n

end A134402

/-! ## A134402.P8921699340340416296

`and(A102363(n), A145677(n))`
-/

namespace A134402.P8921699340340416296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102363 n) (A145677 n)

end

end A134402.P8921699340340416296

namespace A134402

/-- `and(A102363(n), A145677(n))` -/
def P8921699340340416296.Spec : Prop :=
  ∀ n, P8921699340340416296.a n = A134402 n

end A134402

/-!
# A134403: Triangle read by rows: row n consists of (n, n, (n+1), (n+2), (n+3), ...).

The programs for A134403, the canonical program `A134403.P11268712443066889151` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134403 has offset 0).

The definition of A134403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134403.P8825913201215352635

`A134482(n+1)-1`
-/

namespace A134403.P8825913201215352635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134482 (n + 1) - 1

end

end A134403.P8825913201215352635

namespace A134403

/-- `A134482(n+1)-1` -/
def P8825913201215352635.Spec : Prop :=
  ∀ n, P8825913201215352635.a n = A134403 n

end A134403

/-! ## A134403.P7509637683201732084

`A051162(char[∑[n]]+n-1)`
-/

namespace A134403.P7509637683201732084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat

end

end A134403.P7509637683201732084

namespace A134403

/-- `A051162(char[∑[n]]+n-1)` -/
def P7509637683201732084.Spec : Prop :=
  ∀ n, P7509637683201732084.a n = A134403 n

end A134403

/-! ## A134403.P17834185944046425804

`A134478(n)-A123110(n)`
-/

namespace A134403.P17834185944046425804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n - A123110 n

end

end A134403.P17834185944046425804

namespace A134403

/-- `A134478(n)-A123110(n)` -/
def P17834185944046425804.Spec : Prop :=
  ∀ n, P17834185944046425804.a n = A134403 n

end A134403

/-! ## A134403.P2508077201287336726

`A003056(n)+log2(A232089(n))`
-/

namespace A134403.P2508077201287336726
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℝ) + Real.logb 2 (A232089 n : ℝ)

end

end A134403.P2508077201287336726

namespace A134403

/-- `A003056(n)+log2(A232089(n))` -/
def P2508077201287336726.Spec : Prop :=
  ∀ n, P2508077201287336726.a n = (A134403 n : ℝ)

end A134403

/-! ## A134403.P11268712443066889151

`A010054(n)+A051162(n)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134403

/-- `A010054(n)+A051162(n)-1` -/
def P11268712443066889151.Spec : Prop :=
  ∀ n, P11268712443066889151.a n = A134403 n

theorem P11268712443066889151.correct : P11268712443066889151.Spec := by
  intro n
  simp only [A134403]

end A134403

/-! ## A134403.P463565127784941892

`A094727(A010054(n)+n)-1`
-/

namespace A134403.P463565127784941892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A010054 n + (n : ℤ)).toNat - 1

end

end A134403.P463565127784941892

namespace A134403

/-- `A094727(A010054(n)+n)-1` -/
def P463565127784941892.Spec : Prop :=
  ∀ n, P463565127784941892.a n = A134403 n

end A134403

/-! ## A134403.P8017369571699056137

`A134478(A010054(n)+n)-1`
-/

namespace A134403.P8017369571699056137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A010054 n + (n : ℤ)).toNat - 1

end

end A134403.P8017369571699056137

namespace A134403

/-- `A134478(A010054(n)+n)-1` -/
def P8017369571699056137.Spec : Prop :=
  ∀ n, P8017369571699056137.a n = A134403 n

end A134403

/-! ## A134403.P784458023275294855

`A134478(A073424(n)+n)-1`
-/

namespace A134403.P784458023275294855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A073424 n + (n : ℤ)).toNat - 1

end

end A134403.P784458023275294855

namespace A134403

/-- `A134478(A073424(n)+n)-1` -/
def P784458023275294855.Spec : Prop :=
  ∀ n, P784458023275294855.a n = A134403 n

end A134403

/-! ## A134403.P3216376938979530051

`A131413(n)-A143956(n+1)`
-/

namespace A134403.P3216376938979530051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n - A143956 (n + 1)

end

end A134403.P3216376938979530051

namespace A134403

/-- `A131413(n)-A143956(n+1)` -/
def P3216376938979530051.Spec : Prop :=
  ∀ n, P3216376938979530051.a n = A134403 n

end A134403

/-! ## A134403.P6457360081465513782

`A094727(n+1)-A238303(n)`
-/

namespace A134403.P6457360081465513782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) - A238303 n

end

end A134403.P6457360081465513782

namespace A134403

/-- `A094727(n+1)-A238303(n)` -/
def P6457360081465513782.Spec : Prop :=
  ∀ n, P6457360081465513782.a n = A134403 n

end A134403

/-! ## A134403.P2069227102871145476

`A035214(n)+A051162(n)-2`
-/

namespace A134403.P2069227102871145476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + (A051162 n - 2)

end

end A134403.P2069227102871145476

namespace A134403

/-- `A035214(n)+A051162(n)-2` -/
def P2069227102871145476.Spec : Prop :=
  ∀ n, P2069227102871145476.a n = A134403 n

end A134403

/-! ## A134403.P18003694969653373371

`A108872(A010054(n)+n)-2`
-/

namespace A134403.P18003694969653373371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (A010054 n + (n : ℤ)).toNat - 2

end

end A134403.P18003694969653373371

namespace A134403

/-- `A108872(A010054(n)+n)-2` -/
def P18003694969653373371.Spec : Prop :=
  ∀ n, P18003694969653373371.a n = A134403 n

end A134403

/-! ## A134403.P11575280239755004427

`A094727(A035214(n)+n)-2`
-/

namespace A134403.P11575280239755004427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A035214 n + (n : ℤ)).toNat - 2

end

end A134403.P11575280239755004427

namespace A134403

/-- `A094727(A035214(n)+n)-2` -/
def P11575280239755004427.Spec : Prop :=
  ∀ n, P11575280239755004427.a n = A134403 n

end A134403

/-! ## A134403.P9257704444522283189

`A134478(n)-(1-A073424(n))`
-/

namespace A134403.P9257704444522283189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n - (1 - A073424 n)

end

end A134403.P9257704444522283189

namespace A134403

/-- `A134478(n)-(1-A073424(n))` -/
def P9257704444522283189.Spec : Prop :=
  ∀ n, P9257704444522283189.a n = A134403 n

end A134403

/-! ## A134403.P12297480585105239861

`char[A000217(n)]+A051162(n)-1`
-/

namespace A134403.P12297480585105239861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A051162 n - 1)

end

end A134403.P12297480585105239861

namespace A134403

/-- `char[A000217(n)]+A051162(n)-1` -/
def P12297480585105239861.Spec : Prop :=
  ∀ n, P12297480585105239861.a n = A134403 n

end A134403

/-! ## A134403.P8130494840086620106

`A144328(n+1)+A003056(n)-1`
-/

namespace A134403.P8130494840086620106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + (A003056 n - 1)

end

end A134403.P8130494840086620106

namespace A134403

/-- `A144328(n+1)+A003056(n)-1` -/
def P8130494840086620106.Spec : Prop :=
  ∀ n, P8130494840086620106.a n = A134403 n

end A134403

/-! ## A134403.P11039066072706794501

`A134483(n+1)-(A123578(n)+1)`
-/

namespace A134403.P11039066072706794501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (n + 1) - (A123578 n + 1)

end

end A134403.P11039066072706794501

namespace A134403

/-- `A134483(n+1)-(A123578(n)+1)` -/
def P11039066072706794501.Spec : Prop :=
  ∀ n, P11039066072706794501.a n = A134403 n

end A134403

/-! ## A134403.P12300066874825371323

`A108872(n+1)-(A238303(n)+1)`
-/

namespace A134403.P12300066874825371323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - (A238303 n + 1)

end

end A134403.P12300066874825371323

namespace A134403

/-- `A108872(n+1)-(A238303(n)+1)` -/
def P12300066874825371323.Spec : Prop :=
  ∀ n, P12300066874825371323.a n = A134403 n

end A134403

/-! ## A134403.P3661078959385564811

`A002024(n+1)+A144328(n+1)-2`
-/

namespace A134403.P3661078959385564811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A144328 (n + 1) - 2)

end

end A134403.P3661078959385564811

namespace A134403

/-- `A002024(n+1)+A144328(n+1)-2` -/
def P3661078959385564811.Spec : Prop :=
  ∀ n, P3661078959385564811.a n = A134403 n

end A134403

/-! ## A134403.P12157096945333558024

`A051162(n)+Δ[A080036(n)]-2`
-/

namespace A134403.P12157096945333558024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (f1 (n + 1) - f1 n - 2)

end

end A134403.P12157096945333558024

namespace A134403

/-- `A051162(n)+Δ[A080036(n)]-2` -/
def P12157096945333558024.Spec : Prop :=
  ∀ n, P12157096945333558024.a n = A134403 n

end A134403

/-!
# A134404: Triangle read by rows in which row n contains Fib(0), ..., Fib(n-1), Fib(n), Fib(n-1), ..., Fib(0).

The programs for A134404, there is no canonical definition to state claims against.
-/

/-! ## A134404.P499951702155520117

`A050610(∑[n-round(sqrt(n))²])`
-/

namespace A134404.P499951702155520117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134404.P499951702155520117

/-! ## A134404.P17782177502870973728

`A302224(∑[n-round(sqrt(n))²]+1)`
-/

namespace A134404.P17782177502870973728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302224 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A134404.P17782177502870973728

/-! ## A134404.P11176764574081095860

`A000045(∑[char[n²]]-∑[(-1)^ceil(2*sqrt(n))])`
-/

namespace A134404.P11176764574081095860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ∑ j ∈ Finset.range (n + 1), f3 j)).toNat

end

end A134404.P11176764574081095860

/-! ## A134404.P7306350550103725258

`A105422(A133825(n))`
-/

namespace A134404.P7306350550103725258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (A133825 n).toNat

end

end A134404.P7306350550103725258

/-! ## A134404.P13458295083618195635

`A013987(A004737(n+1))`
-/

namespace A134404.P13458295083618195635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013987 (A004737 (n + 1)).toNat

end

end A134404.P13458295083618195635

/-! ## A134404.P780407229347111114

`A092921(A133825(n)+1)`
-/

namespace A134404.P780407229347111114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A133825 n + 1).toNat

end

end A134404.P780407229347111114

/-! ## A134404.P14344746102102336713

`A265753(A138143(n+1))`
-/

namespace A134404.P14344746102102336713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (A138143 (n + 1)).toNat

end

end A134404.P14344746102102336713

/-! ## A134404.P10805444070993532764

`A109754(A133825(n)-1)`
-/

namespace A134404.P10805444070993532764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 (A133825 n - 1).toNat

end

end A134404.P10805444070993532764

/-! ## A134404.P7999450766963878216

`A023439(A004737(n+1)-1)`
-/

namespace A134404.P7999450766963878216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023439 (A004737 (n + 1) - 1).toNat

end

end A134404.P7999450766963878216

/-! ## A134404.P11476342197124115346

`A115338(A124258(n+1)-1)`
-/

namespace A134404.P11476342197124115346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A124258 (n + 1) - 1).toNat

end

end A134404.P11476342197124115346

/-!
# A134405: -1 before list of quadruples -2n-1, 2n+2, -2n, 2n+1.

The programs for A134405, the canonical program `A134405.P1114267731300537699` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134405 has offset 0).

The definition of A134405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134405.P1114267731300537699

`∑[xor(3, -a(n-1))]` with `a(0)=-1, a(1)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134405

/-- `∑[xor(3, -a(n-1))]` -/
def P1114267731300537699.Spec : Prop :=
  ∀ n, P1114267731300537699.a n = A134405 n

theorem P1114267731300537699.correct : P1114267731300537699.Spec := by
  intro n
  simp only [A134405]

end A134405

/-! ## A134405.P7696496960992764251

`Δ[lcm(2, n)/2]+and(3, n)-2`
-/

namespace A134405.P7696496960992764251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((Nat.land 3 n : ℤ) - 2 : ℚ)

end

end A134405.P7696496960992764251

namespace A134405

/-- `Δ[lcm(2, n)/2]+and(3, n)-2` -/
def P7696496960992764251.Spec : Prop :=
  ∀ n, P7696496960992764251.a n = (A134405 n : ℚ)

end A134405

/-! ## A134405.P6199212194550189233

`gcd(n, n%2)-ceil(xor(2, n)/2)`
-/

namespace A134405.P6199212194550189233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n % 2) : ℤ) - ⌈(Nat.xor 2 n : ℚ) / 2⌉

end

end A134405.P6199212194550189233

namespace A134405

/-- `gcd(n, n%2)-ceil(xor(2, n)/2)` -/
def P6199212194550189233.Spec : Prop :=
  ∀ n, P6199212194550189233.a n = A134405 n

end A134405

/-! ## A134405.P14466245186629214924

`C(xor(1, n), n)-round(xor(3, n)/2)`
-/

namespace A134405.P14466245186629214924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.xor 1 n) n : ℤ) - SequenceMachineLib.roundAway ((Nat.xor 3 n : ℚ) / 2)

end

end A134405.P14466245186629214924

namespace A134405

/-- `C(xor(1, n), n)-round(xor(3, n)/2)` -/
def P14466245186629214924.Spec : Prop :=
  ∀ n, P14466245186629214924.a n = A134405 n

end A134405

/-! ## A134405.P11724270510339228081

`xor(1, ∑[(n-1)*(-1)^n])+1`
-/

namespace A134405.P11724270510339228081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A134405.P11724270510339228081

namespace A134405

/-- `xor(1, ∑[(n-1)*(-1)^n])+1` -/
def P11724270510339228081.Spec : Prop :=
  ∀ n, P11724270510339228081.a n = A134405 n

end A134405

/-! ## A134405.P6082221352962485041

`floor(xor(3, n+2)/2-n^and(1, n))`
-/

namespace A134405.P6082221352962485041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 3 (n + 2) : ℚ) / 2 - (n ^ Nat.land 1 n : ℚ)⌋

end

end A134405.P6082221352962485041

namespace A134405

/-- `floor(xor(3, n+2)/2-n^and(1, n))` -/
def P6082221352962485041.Spec : Prop :=
  ∀ n, P6082221352962485041.a n = A134405 n

end A134405

/-! ## A134405.P8300211609259128681

`(-1)^n*floor(n/2)-(1-and(2, n))`
-/

namespace A134405.P8300211609259128681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌊(n : ℚ) / 2⌋ - (1 - (Nat.land 2 n : ℤ))

end

end A134405.P8300211609259128681

namespace A134405

/-- `(-1)^n*floor(n/2)-(1-and(2, n))` -/
def P8300211609259128681.Spec : Prop :=
  ∀ n, P8300211609259128681.a n = A134405 n

end A134405

/-! ## A134405.P17611426936547971836

`(floor(n/2)-(-1)^∑[n])*(-1)^n`
-/

namespace A134405.P17611426936547971836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ - (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) * (-1) ^ n

end

end A134405.P17611426936547971836

namespace A134405

/-- `(floor(n/2)-(-1)^∑[n])*(-1)^n` -/
def P17611426936547971836.Spec : Prop :=
  ∀ n, P17611426936547971836.a n = A134405 n

end A134405

/-! ## A134405.P11368383820656575642

`a(n-4)+a(n-5)-a(n-1)` with `a(0)=-1, a(1)=-1, a(2)=2, a(3)=0, a(4)=1`
-/

namespace A134405.P11368383820656575642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, 2, 0, 1] fun n a =>
  a (n - 4) + (a (n - 5) - a (n - 1))

end

end A134405.P11368383820656575642

namespace A134405

/-- `a(n-4)+a(n-5)-a(n-1)` -/
def P11368383820656575642.Spec : Prop :=
  ∀ n, P11368383820656575642.a n = A134405 n

end A134405

/-! ## A134405.P13352661529737749638

`A083220(n)-A064455(n+1)`
-/

namespace A134405.P13352661529737749638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n - A064455 (n + 1)

end

end A134405.P13352661529737749638

namespace A134405

/-- `A083220(n)-A064455(n+1)` -/
def P13352661529737749638.Spec : Prop :=
  ∀ n, P13352661529737749638.a n = A134405 n

end A134405

/-!
# A134406: Composite numbers of the form k^2 + 1.

The programs for A134406, the canonical program `A134406.P9151964709588711400` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134406 has offset 1).

The definition of A134406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134406.P14679133941345982218

`(comp[A005574(n+1)-1]+1)²+1`
-/

namespace A134406.P14679133941345982218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2 + 1

end

end A134406.P14679133941345982218

namespace A134406

/-- `(comp[A005574(n+1)-1]+1)²+1` -/
def P14679133941345982218.Spec : Prop :=
  ∀ n, (P14679133941345982218.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P3916977078656032561

`∪[A124809(n+1), A134420(n+1)]`
-/

namespace A134406.P3916977078656032561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134406.P3916977078656032561

namespace A134406

/-- `∪[A124809(n+1), A134420(n+1)]` -/
def P3916977078656032561.Spec : Prop :=
  ∀ n, (P3916977078656032561.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P17980304572448503266

`∪[A049532(n+1), A134427(n+1)]²+1`
-/

namespace A134406.P17980304572448503266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A134406.P17980304572448503266

namespace A134406

/-- `∪[A049532(n+1), A134427(n+1)]²+1` -/
def P17980304572448503266.Spec : Prop :=
  ∀ n, (P17980304572448503266.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P9541288303175148684

`lt[1, A193330(n)]²+1`
-/

namespace A134406.P9541288303175148684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 + 1

end

end A134406.P9541288303175148684

namespace A134406

/-- `lt[1, A193330(n)]²+1` -/
def P9541288303175148684.Spec : Prop :=
  ∀ n, (P9541288303175148684.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P9151964709588711400

`lt[2, A193432(n)]²+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134406

/-- `lt[2, A193432(n)]²+1` -/
def P9151964709588711400.Spec : Prop :=
  ∀ n, (P9151964709588711400.a n : ℤ) = A134406 (n + 1)

theorem P9151964709588711400.correct : P9151964709588711400.Spec := by
  intro n
  simp only [A134406, Nat.add_sub_cancel]

end A134406

/-! ## A134406.P11525546059131680373

`lt[2, A278162(n)]²+1`
-/

namespace A134406.P11525546059131680373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 + 1

end

end A134406.P11525546059131680373

namespace A134406

/-- `lt[2, A278162(n)]²+1` -/
def P11525546059131680373.Spec : Prop :=
  ∀ n, (P11525546059131680373.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P7095653094536970857

`A002522(lt[1, A193330(n)])`
-/

namespace A134406.P7095653094536970857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134406.P7095653094536970857

namespace A134406

/-- `A002522(lt[1, A193330(n)])` -/
def P7095653094536970857.Spec : Prop :=
  ∀ n, P7095653094536970857.a n = A134406 (n + 1)

end A134406

/-! ## A134406.P15108188833146721470

`A002522(lt[2, A193432(n)])`
-/

namespace A134406.P15108188833146721470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134406.P15108188833146721470

namespace A134406

/-- `A002522(lt[2, A193432(n)])` -/
def P15108188833146721470.Spec : Prop :=
  ∀ n, P15108188833146721470.a n = A134406 (n + 1)

end A134406

/-! ## A134406.P13716431711096418835

`A002522(lt[A089120(n+1), A002522(n)]+1)`
-/

namespace A134406.P13716431711096418835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A134406.P13716431711096418835

namespace A134406

/-- `A002522(lt[A089120(n+1), A002522(n)]+1)` -/
def P13716431711096418835.Spec : Prop :=
  ∀ n, P13716431711096418835.a n = A134406 (n + 1)

end A134406

/-! ## A134406.P11574271002980749673

`A002522(lt[A250069(n+1), A002522(n)]+1)`
-/

namespace A134406.P11574271002980749673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A134406.P11574271002980749673

namespace A134406

/-- `A002522(lt[A250069(n+1), A002522(n)]+1)` -/
def P11574271002980749673.Spec : Prop :=
  ∀ n, P11574271002980749673.a n = A134406 (n + 1)

end A134406

/-! ## A134406.P956248209620831699

`∩[A137351(n+1), n²+1]`
-/

namespace A134406.P956248209620831699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A134406.P956248209620831699

namespace A134406

/-- `∩[A137351(n+1), n²+1]` -/
def P956248209620831699.Spec : Prop :=
  ∀ n, (P956248209620831699.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P16009110052010043518

`∩[A002522(n), A137351(n+1)]`
-/

namespace A134406.P16009110052010043518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134406.P16009110052010043518

namespace A134406

/-- `∩[A002522(n), A137351(n+1)]` -/
def P16009110052010043518.Spec : Prop :=
  ∀ n, (P16009110052010043518.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P9067419593901415988

`∩[A087278(n), A137351(n+1)]`
-/

namespace A134406.P9067419593901415988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134406.P9067419593901415988

namespace A134406

/-- `∩[A087278(n), A137351(n+1)]` -/
def P9067419593901415988.Spec : Prop :=
  ∀ n, (P9067419593901415988.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P1259169269049525133

`∩[A087279(n+1), A137351(n+1)]`
-/

namespace A134406.P1259169269049525133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134406.P1259169269049525133

namespace A134406

/-- `∩[A087279(n+1), A137351(n+1)]` -/
def P1259169269049525133.Spec : Prop :=
  ∀ n, (P1259169269049525133.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P12713973831452288664

`∩[A174051(n+1), n²+1]`
-/

namespace A134406.P12713973831452288664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A134406.P12713973831452288664

namespace A134406

/-- `∩[A174051(n+1), n²+1]` -/
def P12713973831452288664.Spec : Prop :=
  ∀ n, (P12713973831452288664.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P17158346016742546423

`∩[A078390(n+1), A002522(n)]`
-/

namespace A134406.P17158346016742546423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134406.P17158346016742546423

namespace A134406

/-- `∩[A078390(n+1), A002522(n)]` -/
def P17158346016742546423.Spec : Prop :=
  ∀ n, (P17158346016742546423.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P6108921213236280011

`∩[A087279(n+1), A174051(n+1)]`
-/

namespace A134406.P6108921213236280011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134406.P6108921213236280011

namespace A134406

/-- `∩[A087279(n+1), A174051(n+1)]` -/
def P6108921213236280011.Spec : Prop :=
  ∀ n, (P6108921213236280011.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P3450003653940573798

`eq[1, A158052(n²+1)]²+1`
-/

namespace A134406.P3450003653940573798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A134406.P3450003653940573798

namespace A134406

/-- `eq[1, A158052(n²+1)]²+1` -/
def P3450003653940573798.Spec : Prop :=
  ∀ n, (P3450003653940573798.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P8913049694513299929

`lt[2, A000005(n²+1)]²+1`
-/

namespace A134406.P8913049694513299929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 + 1

end

end A134406.P8913049694513299929

namespace A134406

/-- `lt[2, A000005(n²+1)]²+1` -/
def P8913049694513299929.Spec : Prop :=
  ∀ n, (P8913049694513299929.a n : ℤ) = A134406 (n + 1)

end A134406

/-! ## A134406.P17182477531789787581

`eq[1, A066247(n²+1)]²+1`
-/

namespace A134406.P17182477531789787581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A134406.P17182477531789787581

namespace A134406

/-- `eq[1, A066247(n²+1)]²+1` -/
def P17182477531789787581.Spec : Prop :=
  ∀ n, (P17182477531789787581.a n : ℤ) = A134406 (n + 1)

end A134406

/-!
# A134407: Numbers n such that n^2 + 1 is composite.

The programs for A134407, there is no canonical definition to state claims against.
-/

/-! ## A134407.P16785640036447304928

`lt[1, ∑{e}[n²+1, #]]`
-/

namespace A134407.P16785640036447304928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134407.P16785640036447304928

/-! ## A134407.P13636450761667218505

`lt[1, A193330(n)]`
-/

namespace A134407.P13636450761667218505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134407.P13636450761667218505

/-! ## A134407.P4268883445223749954

`lt[2, A193432(n)]`
-/

namespace A134407.P4268883445223749954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134407.P4268883445223749954

/-! ## A134407.P12167315167998331594

`lt[2, A278162(n)]`
-/

namespace A134407.P12167315167998331594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134407.P12167315167998331594

/-! ## A134407.P11320973559644612891

`lt[0, A072670(n²)]`
-/

namespace A134407.P11320973559644612891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134407.P11320973559644612891

/-! ## A134407.P5230152184035730461

`lt[1, A002033(n²)]`
-/

namespace A134407.P5230152184035730461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134407.P5230152184035730461

/-! ## A134407.P17196386996466732484

`lt[1, A325765(n²)]`
-/

namespace A134407.P17196386996466732484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134407.P17196386996466732484

/-! ## A134407.P10099735027889853698

`lt[1, A330773(n²)]`
-/

namespace A134407.P10099735027889853698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330773 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A134407.P10099735027889853698

/-! ## A134407.P3541626358508917424

`lt[A259036(n), n²]`
-/

namespace A134407.P3541626358508917424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134407.P3541626358508917424

/-! ## A134407.P6576223065020879910

`lt[A281793(n), n²]`
-/

namespace A134407.P6576223065020879910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134407.P6576223065020879910

/-!
# A134408: First differences of A006336.

The programs for A134408, the canonical program `A134408.P2913322129490497874` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134408 has offset 1).

The definition of A134408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134408.P748295409248108436

`A134409(n)+a(n-1)` with `a(0)=1`
-/

namespace A134408.P748295409248108436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134409 n + a (n - 1)

end

end A134408.P748295409248108436

namespace A134408

/-- `A134409(n)+a(n-1)` -/
def P748295409248108436.Spec : Prop :=
  ∀ n, P748295409248108436.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P2913322129490497874

`A006336(∑[A005614(n)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134408

/-- `A006336(∑[A005614(n)])` -/
def P2913322129490497874.Spec : Prop :=
  ∀ n, P2913322129490497874.a n = A134408 (n + 1)

theorem P2913322129490497874.correct : P2913322129490497874.Spec := by
  intro n
  simp only [A134408, Nat.add_sub_cancel]

end A134408

/-! ## A134408.P11676213751448775732

`A006336(A005206(n+1))`
-/

namespace A134408.P11676213751448775732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (A005206 (n + 1)).toNat

end

end A134408.P11676213751448775732

namespace A134408

/-- `A006336(A005206(n+1))` -/
def P11676213751448775732.Spec : Prop :=
  ∀ n, P11676213751448775732.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P15005386373776923266

`A006336(∑[1-A003849(n)])`
-/

namespace A134408.P15005386373776923266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134408.P15005386373776923266

namespace A134408

/-- `A006336(∑[1-A003849(n)])` -/
def P15005386373776923266.Spec : Prop :=
  ∀ n, P15005386373776923266.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P6916577680702816090

`A006336(∑[2-A003842(n)])`
-/

namespace A134408.P6916577680702816090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134408.P6916577680702816090

namespace A134408

/-- `A006336(∑[2-A003842(n)])` -/
def P6916577680702816090.Spec : Prop :=
  ∀ n, P6916577680702816090.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P3794184841336285575

`∑[A134409(n+1)]+1-A134409(n+1)`
-/

namespace A134408.P3794184841336285575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A134409 (n + 1))

end

end A134408.P3794184841336285575

namespace A134408

/-- `∑[A134409(n+1)]+1-A134409(n+1)` -/
def P3794184841336285575.Spec : Prop :=
  ∀ n, P3794184841336285575.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P17082411233255811776

`A006336(A000201(n+1)-(A003849(n)+n))`
-/

namespace A134408.P17082411233255811776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (A000201 (n + 1) - (A003849 n + (n : ℤ))).toNat

end

end A134408.P17082411233255811776

namespace A134408

/-- `A006336(A000201(n+1)-(A003849(n)+n))` -/
def P17082411233255811776.Spec : Prop :=
  ∀ n, P17082411233255811776.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P14772417342064231252

`Δ[A006336(n+1)]`
-/

namespace A134408.P14772417342064231252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134408.P14772417342064231252

namespace A134408

/-- `Δ[A006336(n+1)]` -/
def P14772417342064231252.Spec : Prop :=
  ∀ n, P14772417342064231252.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P15075359670349292750

`A006336(A060143(n+2))`
-/

namespace A134408.P15075359670349292750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (A060143 (n + 2)).toNat

end

end A134408.P15075359670349292750

namespace A134408

/-- `A006336(A060143(n+2))` -/
def P15075359670349292750.Spec : Prop :=
  ∀ n, P15075359670349292750.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P6630647906872032279

`A006336(A019446(n+2)-1)`
-/

namespace A134408.P6630647906872032279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (A019446 (n + 2) - 1).toNat

end

end A134408.P6630647906872032279

namespace A134408

/-- `A006336(A019446(n+2)-1)` -/
def P6630647906872032279.Spec : Prop :=
  ∀ n, P6630647906872032279.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P8543561312910691081

`A006336(n+2)-A006336(n+1)`
-/

namespace A134408.P8543561312910691081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (n + 2) - A006336 (n + 1)

end

end A134408.P8543561312910691081

namespace A134408

/-- `A006336(n+2)-A006336(n+1)` -/
def P8543561312910691081.Spec : Prop :=
  ∀ n, P8543561312910691081.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P15196371825655255673

`Δ[A131882(n+1)/2]`
-/

namespace A134408.P15196371825655255673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131882 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134408.P15196371825655255673

namespace A134408

/-- `Δ[A131882(n+1)/2]` -/
def P15196371825655255673.Spec : Prop :=
  ∀ n, P15196371825655255673.a n = (A134408 (n + 1) : ℚ)

end A134408

/-! ## A134408.P12647502532153823303

`A006336(∑[A003849(A000201(n+1))])`
-/

namespace A134408.P12647502532153823303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134408.P12647502532153823303

namespace A134408

/-- `A006336(∑[A003849(A000201(n+1))])` -/
def P12647502532153823303.Spec : Prop :=
  ∀ n, P12647502532153823303.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P18348780308411868244

`A134409(A022342(n+2))`
-/

namespace A134408.P18348780308411868244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (A022342 (n + 2)).toNat

end

end A134408.P18348780308411868244

namespace A134408

/-- `A134409(A022342(n+2))` -/
def P18348780308411868244.Spec : Prop :=
  ∀ n, P18348780308411868244.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P1211715725950073476

`A134409(∑[A001468(n+1)])`
-/

namespace A134408.P1211715725950073476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134408.P1211715725950073476

namespace A134408

/-- `A134409(∑[A001468(n+1)])` -/
def P1211715725950073476.Spec : Prop :=
  ∀ n, P1211715725950073476.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P6934186040573439612

`A134409(A000201(n+2)-1)`
-/

namespace A134408.P6934186040573439612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (A000201 (n + 2) - 1).toNat

end

end A134408.P6934186040573439612

namespace A134408

/-- `A134409(A000201(n+2)-1)` -/
def P6934186040573439612.Spec : Prop :=
  ∀ n, P6934186040573439612.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P9117964603784857890

`A134409(A005206(n+1)+n+1)`
-/

namespace A134408.P9117964603784857890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (A005206 (n + 1) + (n + 1 : ℤ)).toNat

end

end A134408.P9117964603784857890

namespace A134408

/-- `A134409(A005206(n+1)+n+1)` -/
def P9117964603784857890.Spec : Prop :=
  ∀ n, P9117964603784857890.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P11083488708563716033

`A134409(A026274(n+1)-(n+1))`
-/

namespace A134408.P11083488708563716033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (A026274 (n + 1) - (n + 1 : ℤ)).toNat

end

end A134408.P11083488708563716033

namespace A134408

/-- `A134409(A026274(n+1)-(n+1))` -/
def P11083488708563716033.Spec : Prop :=
  ∀ n, P11083488708563716033.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P4940555980883657694

`A134409(A060143(n+2)+n+1)`
-/

namespace A134408.P4940555980883657694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (A060143 (n + 2) + (n + 1 : ℤ)).toNat

end

end A134408.P4940555980883657694

namespace A134408

/-- `A134409(A060143(n+2)+n+1)` -/
def P4940555980883657694.Spec : Prop :=
  ∀ n, P4940555980883657694.a n = A134408 (n + 1)

end A134408

/-! ## A134408.P7502827548687268029

`A134409(A001950(n+2)-(n+3))`
-/

namespace A134408.P7502827548687268029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134409 (A001950 (n + 2) - (n + 3 : ℤ)).toNat

end

end A134408.P7502827548687268029

namespace A134408

/-- `A134409(A001950(n+2)-(n+3))` -/
def P7502827548687268029.Spec : Prop :=
  ∀ n, P7502827548687268029.a n = A134408 (n + 1)

end A134408

/-!
# A134409: Second differences of A006336.

The programs for A134409, the canonical program `A134409.P7633649844803624079` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134409 has offset 1).

The definition of A134409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134409.P7633649844803624079

`Δ[A006336(A005206(n+1))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134409

/-- `Δ[A006336(A005206(n+1))]` -/
def P7633649844803624079.Spec : Prop :=
  ∀ n, P7633649844803624079.a n = A134409 (n + 1)

theorem P7633649844803624079.correct : P7633649844803624079.Spec := by
  intro n
  simp only [A134409, Nat.add_sub_cancel]

end A134409

/-! ## A134409.P5792100608939519219

`A005614(n+1)*A006336(A060144(n)+1)`
-/

namespace A134409.P5792100608939519219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (n + 1) * A006336 (A060144 n + 1).toNat

end

end A134409.P5792100608939519219

namespace A134409

/-- `A005614(n+1)*A006336(A060144(n)+1)` -/
def P5792100608939519219.Spec : Prop :=
  ∀ n, P5792100608939519219.a n = A134409 (n + 1)

end A134409

/-! ## A134409.P7108249345477762870

`A005614(n+1)*A134408(A005206(n+1))`
-/

namespace A134409.P7108249345477762870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (n + 1) * A134408 (A005206 (n + 1)).toNat

end

end A134409.P7108249345477762870

namespace A134409

/-- `A005614(n+1)*A134408(A005206(n+1))` -/
def P7108249345477762870.Spec : Prop :=
  ∀ n, P7108249345477762870.a n = A134409 (n + 1)

end A134409

/-! ## A134409.P4632599015143786239

`A005614(n+1)*A006336(∑[A003849(n+1)])`
-/

namespace A134409.P4632599015143786239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (n + 1) * A006336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A134409.P4632599015143786239

namespace A134409

/-- `A005614(n+1)*A006336(∑[A003849(n+1)])` -/
def P4632599015143786239.Spec : Prop :=
  ∀ n, P4632599015143786239.a n = A134409 (n + 1)

end A134409

/-! ## A134409.P1761680524816624773

`(1-A003849(n+1))*A006336(A060144(n)+1)`
-/

namespace A134409.P1761680524816624773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003849 (n + 1)) * A006336 (A060144 n + 1).toNat

end

end A134409.P1761680524816624773

namespace A134409

/-- `(1-A003849(n+1))*A006336(A060144(n)+1)` -/
def P1761680524816624773.Spec : Prop :=
  ∀ n, P1761680524816624773.a n = A134409 (n + 1)

end A134409

/-! ## A134409.P14085742712519753729

`Δ[A134408(n+1)]`
-/

namespace A134409.P14085742712519753729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134409.P14085742712519753729

namespace A134409

/-- `Δ[A134408(n+1)]` -/
def P14085742712519753729.Spec : Prop :=
  ∀ n, P14085742712519753729.a n = A134409 (n + 1)

end A134409

/-! ## A134409.P10398172189812650937

`A134408(n+2)-A134408(n+1)`
-/

namespace A134409.P10398172189812650937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134408 (n + 2) - A134408 (n + 1)

end

end A134409.P10398172189812650937

namespace A134409

/-- `A134408(n+2)-A134408(n+1)` -/
def P10398172189812650937.Spec : Prop :=
  ∀ n, P10398172189812650937.a n = A134409 (n + 1)

end A134409

/-! ## A134409.P1519557383866246060

`Δ[Δ[A006336(n+1)]]`
-/

namespace A134409.P1519557383866246060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006336 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134409.P1519557383866246060

namespace A134409

/-- `Δ[Δ[A006336(n+1)]]` -/
def P1519557383866246060.Spec : Prop :=
  ∀ n, P1519557383866246060.a n = A134409 (n + 1)

end A134409

/-! ## A134409.P8524029606122717655

`Δ[Δ[A131882(n+1)/2]]`
-/

namespace A134409.P8524029606122717655
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131882 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134409.P8524029606122717655

namespace A134409

/-- `Δ[Δ[A131882(n+1)/2]]` -/
def P8524029606122717655.Spec : Prop :=
  ∀ n, P8524029606122717655.a n = (A134409 (n + 1) : ℚ)

end A134409

/-! ## A134409.P4288731611669342152

`A014682(Δ[Δ[A131882(n+1)]])`
-/

namespace A134409.P4288731611669342152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131882 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A134409.P4288731611669342152

namespace A134409

/-- `A014682(Δ[Δ[A131882(n+1)]])` -/
def P4288731611669342152.Spec : Prop :=
  ∀ n, P4288731611669342152.a n = A134409 (n + 1)

end A134409

/-!
# A134410: Second-order Lucas numbers; a(n) = (2n+3)*Lucas(n) - n*Lucas(n-1).

The programs for A134410, the canonical program `A134410.P16621139043671013706` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134410 has offset 0).

The definition of A134410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134410.P2095821179816775218

`A339610(n+1)+4*A006490(n+1)`
-/

namespace A134410.P2095821179816775218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339610 (n + 1) + 4 * A006490 (n + 1)

end

end A134410.P2095821179816775218

namespace A134410

/-- `A339610(n+1)+4*A006490(n+1)` -/
def P2095821179816775218.Spec : Prop :=
  ∀ n, P2095821179816775218.a n = A134410 n

end A134410

/-! ## A134410.P16621139043671013706

`A000032(n+1)+5*A006490(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134410

/-- `A000032(n+1)+5*A006490(n+1)` -/
def P16621139043671013706.Spec : Prop :=
  ∀ n, P16621139043671013706.a n = A134410 n

theorem P16621139043671013706.correct : P16621139043671013706.Spec := by
  intro n
  simp only [A134410]

end A134410

/-! ## A134410.P12462111189566543695

`A000204(n+1)+5*A006490(n+1)`
-/

namespace A134410.P12462111189566543695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + 5 * A006490 (n + 1)

end

end A134410.P12462111189566543695

namespace A134410

/-- `A000204(n+1)+5*A006490(n+1)` -/
def P12462111189566543695.Spec : Prop :=
  ∀ n, P12462111189566543695.a n = A134410 n

end A134410

/-! ## A134410.P11432075461599901734

`5*A006490(n+1)+A000045(n+2)+A000045(n)`
-/

namespace A134410.P11432075461599901734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A006490 (n + 1) + (A000045 (n + 2) + A000045 n)

end

end A134410.P11432075461599901734

namespace A134410

/-- `5*A006490(n+1)+A000045(n+2)+A000045(n)` -/
def P11432075461599901734.Spec : Prop :=
  ∀ n, P11432075461599901734.a n = A134410 n

end A134410

/-! ## A134410.P1297298688759946904

`A008587(A006490(n+1))+A000204(n+1)`
-/

namespace A134410.P1297298688759946904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A006490 (n + 1)).toNat + A000204 (n + 1)

end

end A134410.P1297298688759946904

namespace A134410

/-- `A008587(A006490(n+1))+A000204(n+1)` -/
def P1297298688759946904.Spec : Prop :=
  ∀ n, P1297298688759946904.a n = A134410 n

end A134410

/-!
# A134411: a(n) is the smallest positive integer such that the numerator of (Sum_{k=1..n} 1/a(k)) is prime (or 1), for all positive integers n.

The programs for A134411, there is no canonical definition to state claims against.
-/

/-! ## A134411.P2586705817758000206

`gcd(A071558(A038303(n)), A293204(n))`
-/

namespace A134411.P2586705817758000206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071558 (A038303 n).toNat) (A293204 n)

end

end A134411.P2586705817758000206

/-! ## A134411.P5422008150437578322

`A270417(A250554(n+1)+n)+1`
-/

namespace A134411.P5422008150437578322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A250554 (n + 1) + (n : ℤ)).toNat + 1

end

end A134411.P5422008150437578322

/-! ## A134411.P4404010597422176737

`A344590(A053182(n+1)+A006130(n))`
-/

namespace A134411.P4404010597422176737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A053182 (n + 1) + A006130 n).toNat

end

end A134411.P4404010597422176737

/-! ## A134411.P11229561445116805399

`gcd(A000196(A006884(n+1)), A305063(n))`
-/

namespace A134411.P11229561445116805399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (A006884 (n + 1)).toNat) (A305063 n)

end

end A134411.P11229561445116805399

/-! ## A134411.P555385740828400675

`gcd(A103337(A169966(n+3)), A367212(n))`
-/

namespace A134411.P555385740828400675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103337 (A169966 (n + 3)).toNat) (A367212 n)

end

end A134411.P555385740828400675

/-!
# A134412: a(n) = the numerator of (Sum_{k=1..n} 1/A134411(k)).

The programs for A134412, there is no canonical definition to state claims against.
-/

/-! ## A134412.P6511488987026891702

`∑[1/A134411(n+1)]*A134413(n+1)`
-/

namespace A134412.P6511488987026891702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A134411 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A134413 (n + 1) : ℚ)

end

end A134412.P6511488987026891702

/-! ## A134412.P5005835852457045226

`∑[A278233(abs(A202038(n)))]`
-/

namespace A134412.P5005835852457045226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 |A202038 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134412.P5005835852457045226

/-! ## A134412.P6507298792834730190

`lt[A294137(n), sin(A028904(n))]`
-/

namespace A134412.P6507298792834730190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A028904 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A134412.P6507298792834730190

/-! ## A134412.P8625094316785625986

`∩[A187388(n+1), A058982(n)]`
-/

namespace A134412.P8625094316785625986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134412.P8625094316785625986

/-! ## A134412.P9005795447077403485

`record[gcd(A051698(n), A261164(n+1))]`
-/

namespace A134412.P9005795447077403485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051698 n) (A261164 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134412.P9005795447077403485

/-!
# A134413: a(n) = the denominator of (Sum_{k=1..n} 1/A134411(k)).

The programs for A134413, there is no canonical definition to state claims against.
-/

/-! ## A134413.P13744905699397799317

`A134412(n+1)/∑[1/A134411(n+1)]`
-/

namespace A134413.P13744905699397799317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A134411 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134412 (n + 1) : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134413.P13744905699397799317

/-!
# A134417: Triangle read by rows: T(n,k) = binomial(n,k)*A133632(k + 1).

The programs for A134417, the canonical program `A134417.P13500567794768261021` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134417 has offset 0).

The definition of A134417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134417.P13500567794768261021

`A007318(n)*A133632(A002260(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134417

/-- `A007318(n)*A133632(A002260(n+1))` -/
def P13500567794768261021.Spec : Prop :=
  ∀ n, P13500567794768261021.a n = A134417 n

theorem P13500567794768261021.correct : P13500567794768261021.Spec := by
  intro n
  simp only [A134417]

end A134417

/-! ## A134417.P3261722728892620391

`abs(A108086(n)*A133632(A002260(n+1)))`
-/

namespace A134417.P3261722728892620391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A133632 (A002260 (n + 1)).toNat|

end

end A134417.P3261722728892620391

namespace A134417

/-- `abs(A108086(n)*A133632(A002260(n+1)))` -/
def P3261722728892620391.Spec : Prop :=
  ∀ n, P3261722728892620391.a n = A134417 n

end A134417

/-! ## A134417.P9343378403776868072

`abs(A130595(n)*A133632(A002260(n+1)))`
-/

namespace A134417.P9343378403776868072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A133632 (A002260 (n + 1)).toNat|

end

end A134417.P9343378403776868072

namespace A134417

/-- `abs(A130595(n)*A133632(A002260(n+1)))` -/
def P9343378403776868072.Spec : Prop :=
  ∀ n, P9343378403776868072.a n = A134417 n

end A134417

/-! ## A134417.P8733526079486904776

`sqrt(A008459(n))*A133632(A002260(n+1))`
-/

namespace A134417.P8733526079486904776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A133632 (A002260 (n + 1)).toNat : ℝ)

end

end A134417.P8733526079486904776

namespace A134417

/-- `sqrt(A008459(n))*A133632(A002260(n+1))` -/
def P8733526079486904776.Spec : Prop :=
  ∀ n, P8733526079486904776.a n = (A134417 n : ℝ)

end A134417

/-! ## A134417.P10680494646695699078

`A007318(n)*A133632(sqrt(A133819(n+1)))`
-/

namespace A134417.P10680494646695699078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A133632 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A134417.P10680494646695699078

namespace A134417

/-- `A007318(n)*A133632(sqrt(A133819(n+1)))` -/
def P10680494646695699078.Spec : Prop :=
  ∀ n, P10680494646695699078.a n = A134417 n

end A134417

/-! ## A134417.P17693094913799656051

`Δ[A102363(n)]*A133632(A002260(n+1))`
-/

namespace A134417.P17693094913799656051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A133632 (A002260 (n + 1)).toNat

end

end A134417.P17693094913799656051

namespace A134417

/-- `Δ[A102363(n)]*A133632(A002260(n+1))` -/
def P17693094913799656051.Spec : Prop :=
  ∀ n, P17693094913799656051.a n = A134417 n

end A134417

/-! ## A134417.P10006871797582823307

`A007318(n)*A133632(val(A175840(n), 2)+1)`
-/

namespace A134417.P10006871797582823307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A133632 (SequenceMachineLib.valuation (A175840 n).toNat 2 + 1)

end

end A134417.P10006871797582823307

namespace A134417

/-- `A007318(n)*A133632(val(A175840(n), 2)+1)` -/
def P10006871797582823307.Spec : Prop :=
  ∀ n, P10006871797582823307.a n = A134417 n

end A134417

/-! ## A134417.P17945461677169640389

`(A131060(n)+2)/3*A133632(sqrt(A133819(n+1)))`
-/

namespace A134417.P17945461677169640389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131060 n + 2 : ℚ) / 3 * (A133632 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat : ℚ)

end

end A134417.P17945461677169640389

namespace A134417

/-- `(A131060(n)+2)/3*A133632(sqrt(A133819(n+1)))` -/
def P17945461677169640389.Spec : Prop :=
  ∀ n, P17945461677169640389.a n = (A134417 n : ℚ)

end A134417

/-! ## A134417.P7449215723557220630

`(A131060(n)+2)/3*A133632(val(A175840(n), 2)+1)`
-/

namespace A134417.P7449215723557220630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131060 n + 2 : ℚ) / 3 * (A133632 (SequenceMachineLib.valuation (A175840 n).toNat 2 + 1) : ℚ)

end

end A134417.P7449215723557220630

namespace A134417

/-- `(A131060(n)+2)/3*A133632(val(A175840(n), 2)+1)` -/
def P7449215723557220630.Spec : Prop :=
  ∀ n, P7449215723557220630.a n = (A134417 n : ℚ)

end A134417

/-!
# A134418: Row sums of triangle A134417.

The programs for A134418, the canonical program `A134418.P2491996981084807635` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134418 has offset 0).

The definition of A134418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134418.P17942220714587738367

`ogf((1+3x)/(1-2x-4x^2))`
-/

namespace A134418.P17942220714587738367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2, -4] n

end

end A134418.P17942220714587738367

namespace A134418

/-- `ogf((1+3x)/(1-2x-4x^2))` -/
def P17942220714587738367.Spec : Prop :=
  ∀ n, P17942220714587738367.a n = A134418 n

end A134418

/-! ## A134418.P2491996981084807635

`2*(a(n-1)+2*a(n-2))` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134418

/-- `2*(a(n-1)+2*a(n-2))` -/
def P2491996981084807635.Spec : Prop :=
  ∀ n, (P2491996981084807635.a n : ℤ) = A134418 n

theorem P2491996981084807635.correct : P2491996981084807635.Spec := by
  intro n
  simp only [A134418]

end A134418

/-! ## A134418.P13734403280078917980

`2^(n-1)*A001060(n)`
-/

namespace A134418.P13734403280078917980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001060 n : ℚ)

end

end A134418.P13734403280078917980

namespace A134418

/-- `2^(n-1)*A001060(n)` -/
def P13734403280078917980.Spec : Prop :=
  ∀ n, P13734403280078917980.a n = (A134418 n : ℚ)

end A134418

/-! ## A134418.P7133648350478903859

`2^(n-2)*A022382(n)`
-/

namespace A134418.P7133648350478903859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A022382 n : ℚ)

end

end A134418.P7133648350478903859

namespace A134418

/-- `2^(n-2)*A022382(n)` -/
def P7133648350478903859.Spec : Prop :=
  ∀ n, P7133648350478903859.a n = (A134418 n : ℚ)

end A134418

/-! ## A134418.P10663657074471978535

`2^(n-1)*A013655(n+1)`
-/

namespace A134418.P10663657074471978535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A013655 (n + 1) : ℚ)

end

end A134418.P10663657074471978535

namespace A134418

/-- `2^(n-1)*A013655(n+1)` -/
def P10663657074471978535.Spec : Prop :=
  ∀ n, P10663657074471978535.a n = (A134418 n : ℚ)

end A134418

/-! ## A134418.P18352837022965299193

`A163069(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A134418.P18352837022965299193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163069 (n - 1) + a (n - 1)

end

end A134418.P18352837022965299193

namespace A134418

/-- `A163069(n-1)+a(n-1)` -/
def P18352837022965299193.Spec : Prop :=
  ∀ n, P18352837022965299193.a n = A134418 n

end A134418

/-! ## A134418.P11912505794644987950

`A103435(n)+A063782(n)`
-/

namespace A134418.P11912505794644987950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 n + A063782 n

end

end A134418.P11912505794644987950

namespace A134418

/-- `A103435(n)+A063782(n)` -/
def P11912505794644987950.Spec : Prop :=
  ∀ n, P11912505794644987950.a n = A134418 n

end A134418

/-! ## A134418.P13609633679850270785

`A087206(n)+A085449(n)`
-/

namespace A134418.P13609633679850270785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087206 n + A085449 n

end

end A134418.P13609633679850270785

namespace A134418

/-- `A087206(n)+A085449(n)` -/
def P13609633679850270785.Spec : Prop :=
  ∀ n, P13609633679850270785.a n = A134418 n

end A134418

/-! ## A134418.P17721578787149895116

`A209084(n)+A084057(n)`
-/

namespace A134418.P17721578787149895116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209084 n + A084057 n

end

end A134418.P17721578787149895116

namespace A134418

/-- `A209084(n)+A084057(n)` -/
def P17721578787149895116.Spec : Prop :=
  ∀ n, P17721578787149895116.a n = A134418 n

end A134418

/-! ## A134418.P16348808748359069849

`A162770(n)-A063727(n)`
-/

namespace A134418.P16348808748359069849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162770 n - A063727 n

end

end A134418.P16348808748359069849

namespace A134418

/-- `A162770(n)-A063727(n)` -/
def P16348808748359069849.Spec : Prop :=
  ∀ n, P16348808748359069849.a n = A134418 n

end A134418

/-! ## A134418.P8812226925059104120

`Δ[A063727(n)-A014335(n)]`
-/

namespace A134418.P8812226925059104120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - A014335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134418.P8812226925059104120

namespace A134418

/-- `Δ[A063727(n)-A014335(n)]` -/
def P8812226925059104120.Spec : Prop :=
  ∀ n, P8812226925059104120.a n = A134418 n

end A134418

/-! ## A134418.P5269806188926473934

`Δ[A063727(n)]-A085449(n)`
-/

namespace A134418.P5269806188926473934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A085449 n

end

end A134418.P5269806188926473934

namespace A134418

/-- `Δ[A063727(n)]-A085449(n)` -/
def P5269806188926473934.Spec : Prop :=
  ∀ n, P5269806188926473934.a n = A134418 n

end A134418

/-! ## A134418.P107158699100835198

`A052899(n+1)+A014335(n)`
-/

namespace A134418.P107158699100835198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052899 (n + 1) + A014335 n

end

end A134418.P107158699100835198

namespace A134418

/-- `A052899(n+1)+A014335(n)` -/
def P107158699100835198.Spec : Prop :=
  ∀ n, P107158699100835198.a n = A134418 n

end A134418

/-! ## A134418.P1398410320142377986

`A063727(n+1)-A063782(n)`
-/

namespace A134418.P1398410320142377986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 (n + 1) - A063782 n

end

end A134418.P1398410320142377986

namespace A134418

/-- `A063727(n+1)-A063782(n)` -/
def P1398410320142377986.Spec : Prop :=
  ∀ n, P1398410320142377986.a n = A134418 n

end A134418

/-! ## A134418.P8647019519338770714

`A084057(n+1)-A085449(n)`
-/

namespace A134418.P8647019519338770714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 (n + 1) - A085449 n

end

end A134418.P8647019519338770714

namespace A134418

/-- `A084057(n+1)-A085449(n)` -/
def P8647019519338770714.Spec : Prop :=
  ∀ n, P8647019519338770714.a n = A134418 n

end A134418

/-! ## A134418.P3028857592130585471

`A103435(n+1)-A319196(n)`
-/

namespace A134418.P3028857592130585471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103435 (n + 1) - A319196 n

end

end A134418.P3028857592130585471

namespace A134418

/-- `A103435(n+1)-A319196(n)` -/
def P3028857592130585471.Spec : Prop :=
  ∀ n, P3028857592130585471.a n = A134418 n

end A134418

/-! ## A134418.P6173580409891305005

`A085449(n+2)-A063782(n)`
-/

namespace A134418.P6173580409891305005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 (n + 2) - A063782 n

end

end A134418.P6173580409891305005

namespace A134418

/-- `A085449(n+2)-A063782(n)` -/
def P6173580409891305005.Spec : Prop :=
  ∀ n, P6173580409891305005.a n = A134418 n

end A134418

/-! ## A134418.P11511807746580054060

`A063782(n)+2*A085449(n)`
-/

namespace A134418.P11511807746580054060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 n + 2 * A085449 n

end

end A134418.P11511807746580054060

namespace A134418

/-- `A063782(n)+2*A085449(n)` -/
def P11511807746580054060.Spec : Prop :=
  ∀ n, P11511807746580054060.a n = A134418 n

end A134418

/-! ## A134418.P11979549352605000113

`A084057(n)+2*A103435(n)`
-/

namespace A134418.P11979549352605000113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n + 2 * A103435 n

end

end A134418.P11979549352605000113

namespace A134418

/-- `A084057(n)+2*A103435(n)` -/
def P11979549352605000113.Spec : Prop :=
  ∀ n, P11979549352605000113.a n = A134418 n

end A134418

/-! ## A134418.P7401836448443784869

`2*A063782(n)-A084057(n)`
-/

namespace A134418.P7401836448443784869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063782 n - A084057 n

end

end A134418.P7401836448443784869

namespace A134418

/-- `2*A063782(n)-A084057(n)` -/
def P7401836448443784869.Spec : Prop :=
  ∀ n, P7401836448443784869.a n = A134418 n

end A134418

/-!
# A134419: Numbers n for which the generalized Pell equation x^2 - n*y^2 = n(n-1)(n+1)/3 has an integer solution for x and y.

The programs for A134419, there is no canonical definition to state claims against.
-/

/-! ## A134419.P18179551044921554086

`record[A289435(A176541(n+3))]`
-/

namespace A134419.P18179551044921554086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A176541 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134419.P18179551044921554086

/-! ## A134419.P3718498985135760203

`∩[A107037(A168183(n+1)), A186699(n+1)]`
-/

namespace A134419.P3718498985135760203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A168183 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134419.P3718498985135760203

/-! ## A134419.P11852504432041906812

`∩[A186699(n+1), A107037(A255808(n+1))]`
-/

namespace A134419.P11852504432041906812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A255808 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134419.P11852504432041906812

/-! ## A134419.P11542617194411498889

`∩[A086743(n+1), A186699(n+1)]`
-/

namespace A134419.P11542617194411498889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134419.P11542617194411498889

/-! ## A134419.P12943817041231774914

`∩[A107037(n+1), A186699(n+1)]`
-/

namespace A134419.P12943817041231774914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134419.P12943817041231774914

/-!
# A134420: Composite squarefree numbers of the form k^2 + 1.

The programs for A134420, the canonical program `A134420.P15726290882906623320` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134420 has offset 1).

The definition of A134420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8853 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134420.P7503512523017157640

`A002522(A134427(n+1))`
-/

namespace A134420.P7503512523017157640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A134427 (n + 1)).toNat

end

end A134420.P7503512523017157640

namespace A134420

/-- `A002522(A134427(n+1))` -/
def P7503512523017157640.Spec : Prop :=
  ∀ n, P7503512523017157640.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P15726290882906623320

`∩[A069987(n+1), A134406(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134420

/-- `∩[A069987(n+1), A134406(n+1)]` -/
def P15726290882906623320.Spec : Prop :=
  ∀ n, (P15726290882906623320.a n : ℤ) = A134420 (n + 1)

theorem P15726290882906623320.correct : P15726290882906623320.Spec := by
  intro n
  simp only [A134420, Nat.add_sub_cancel]

end A134420

/-! ## A134420.P13748683053461443677

`∩[A078325(n+1), A134406(n+1)]`
-/

namespace A134420.P13748683053461443677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134420.P13748683053461443677

namespace A134420

/-- `∩[A078325(n+1), A134406(n+1)]` -/
def P13748683053461443677.Spec : Prop :=
  ∀ n, (P13748683053461443677.a n : ℤ) = A134420 (n + 1)

end A134420

/-! ## A134420.P6657006616818069628

`A010051(A030430(n+1))+A000290(A134427(n+1))`
-/

namespace A134420.P6657006616818069628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A030430 (n + 1)).toNat + A000290 (A134427 (n + 1)).toNat

end

end A134420.P6657006616818069628

namespace A134420

/-- `A010051(A030430(n+1))+A000290(A134427(n+1))` -/
def P6657006616818069628.Spec : Prop :=
  ∀ n, P6657006616818069628.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P14052736164055134544

`eq[3, A014673(A278162(n))]²+1`
-/

namespace A134420.P14052736164055134544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A278162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 1

end

end A134420.P14052736164055134544

namespace A134420

/-- `eq[3, A014673(A278162(n))]²+1` -/
def P14052736164055134544.Spec : Prop :=
  ∀ n, (P14052736164055134544.a n : ℤ) = A134420 (n + 1)

end A134420

/-! ## A134420.P13094288184757191907

`A010051(A028916(n+1))+A000290(A134427(n+1))`
-/

namespace A134420.P13094288184757191907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A028916 (n + 1)).toNat + A000290 (A134427 (n + 1)).toNat

end

end A134420.P13094288184757191907

namespace A134420

/-- `A010051(A028916(n+1))+A000290(A134427(n+1))` -/
def P13094288184757191907.Spec : Prop :=
  ∀ n, P13094288184757191907.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P5588328675997100158

`∩[A078393(n+1), A134406(n+1)]`
-/

namespace A134420.P5588328675997100158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134420.P5588328675997100158

namespace A134420

/-- `∩[A078393(n+1), A134406(n+1)]` -/
def P5588328675997100158.Spec : Prop :=
  ∀ n, (P5588328675997100158.a n : ℤ) = A134420 (n + 1)

end A134420

/-! ## A134420.P5655889691265543446

`∩[A069987(n+1), A137351(n+1)]`
-/

namespace A134420.P5655889691265543446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134420.P5655889691265543446

namespace A134420

/-- `∩[A069987(n+1), A137351(n+1)]` -/
def P5655889691265543446.Spec : Prop :=
  ∀ n, (P5655889691265543446.a n : ℤ) = A134420 (n + 1)

end A134420

/-! ## A134420.P6089340669302071622

`∩[A069987(n+1), A078390(n+1)]`
-/

namespace A134420.P6089340669302071622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134420.P6089340669302071622

namespace A134420

/-- `∩[A069987(n+1), A078390(n+1)]` -/
def P6089340669302071622.Spec : Prop :=
  ∀ n, (P6089340669302071622.a n : ℤ) = A134420 (n + 1)

end A134420

/-! ## A134420.P17818524007338116946

`∩[A069987(n+1), A174051(n+1)]`
-/

namespace A134420.P17818524007338116946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134420.P17818524007338116946

namespace A134420

/-- `∩[A069987(n+1), A174051(n+1)]` -/
def P17818524007338116946.Spec : Prop :=
  ∀ n, (P17818524007338116946.a n : ℤ) = A134420 (n + 1)

end A134420

/-! ## A134420.P3204316620352964360

`filter[A002522(n), A354353(#)]`
-/

namespace A134420.P3204316620352964360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A134420.P3204316620352964360

namespace A134420

/-- `filter[A002522(n), A354353(#)]` -/
def P3204316620352964360.Spec : Prop :=
  ∀ n, P3204316620352964360.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P392235840809863620

`filter[A098748(n), A354353(#)]`
-/

namespace A134420.P392235840809863620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A134420.P392235840809863620

namespace A134420

/-- `filter[A098748(n), A354353(#)]` -/
def P392235840809863620.Spec : Prop :=
  ∀ n, P392235840809863620.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P15960953398625636375

`filter[A098749(n), A354353(#)]`
-/

namespace A134420.P15960953398625636375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A134420.P15960953398625636375

namespace A134420

/-- `filter[A098749(n), A354353(#)]` -/
def P15960953398625636375.Spec : Prop :=
  ∀ n, P15960953398625636375.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P5603684171847215919

`filter[A160457(n), A354353(#)]`
-/

namespace A134420.P5603684171847215919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A134420.P5603684171847215919

namespace A134420

/-- `filter[A160457(n), A354353(#)]` -/
def P5603684171847215919.Spec : Prop :=
  ∀ n, P5603684171847215919.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P3949720427492889853

`filter[A134406(n+1), A008966(#)]`
-/

namespace A134420.P3949720427492889853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A134420.P3949720427492889853

namespace A134420

/-- `filter[A134406(n+1), A008966(#)]` -/
def P3949720427492889853.Spec : Prop :=
  ∀ n, P3949720427492889853.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P17498263121593805723

`filter[A002522(n+1), A354819(#)]`
-/

namespace A134420.P17498263121593805723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A134420.P17498263121593805723

namespace A134420

/-- `filter[A002522(n+1), A354819(#)]` -/
def P17498263121593805723.Spec : Prop :=
  ∀ n, P17498263121593805723.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P2476021846291811215

`filter[A069987(n+1), A354353(#)]`
-/

namespace A134420.P2476021846291811215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A134420.P2476021846291811215

namespace A134420

/-- `filter[A069987(n+1), A354353(#)]` -/
def P2476021846291811215.Spec : Prop :=
  ∀ n, P2476021846291811215.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P14958210837213001871

`filter[A069987(n+1), A354819(#)]`
-/

namespace A134420.P14958210837213001871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A134420.P14958210837213001871

namespace A134420

/-- `filter[A069987(n+1), A354819(#)]` -/
def P14958210837213001871.Spec : Prop :=
  ∀ n, P14958210837213001871.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P16751534953272205202

`filter[A089653(n+1), A354819(#)]`
-/

namespace A134420.P16751534953272205202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A134420.P16751534953272205202

namespace A134420

/-- `filter[A089653(n+1), A354819(#)]` -/
def P16751534953272205202.Spec : Prop :=
  ∀ n, P16751534953272205202.a n = A134420 (n + 1)

end A134420

/-! ## A134420.P453656807965995366

`filter[A134406(n+1), A354353(#)]`
-/

namespace A134420.P453656807965995366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A134420.P453656807965995366

namespace A134420

/-- `filter[A134406(n+1), A354353(#)]` -/
def P453656807965995366.Spec : Prop :=
  ∀ n, P453656807965995366.a n = A134420 (n + 1)

end A134420

/-!
# A134421: Partial sums of A134021.

The programs for A134421, there is no canonical definition to state claims against.
-/

/-! ## A134421.P13399234432129726114

`∑[round(log(∑[sqrt(dr(n+3))]))]`
-/

namespace A134421.P13399234432129726114
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.digitalRoot (n + 3 : ℤ) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134421.P13399234432129726114

/-! ## A134421.P10095237075534911222

`∑[a(round(n/3))+1]` with `a(0)=1, a(1)=1`
-/

namespace A134421.P10095237075534911222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134421.P10095237075534911222

/-! ## A134421.P992477388211172562

`∑[round(log(∑[4/a(n-1)]))]` with `a(0)=3`
-/

namespace A134421.P992477388211172562
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f2 =>
  4 / f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∑ j ∈ Finset.range (n + 1), f2 j : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134421.P992477388211172562

/-! ## A134421.P3249193127748635109

`∑[∑[char[ceil(3^n/2)]]]+1`
-/

namespace A134421.P3249193127748635109
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℚ) / 2⌉

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134421.P3249193127748635109

/-! ## A134421.P6618343863428405583

`∑[abs(a(floor((n+1)/3))+1)]` with `a(0)=1, a(1)=1`
-/

namespace A134421.P6618343863428405583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / 3⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134421.P6618343863428405583

/-! ## A134421.P4123081316197131173

`floor(∑[a(floor((n+1)/3))+1])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134421.P4123081316197131173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / 3⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134421.P4123081316197131173

/-! ## A134421.P2293056009790407925

`∑[A134021(n)]`
-/

namespace A134421.P2293056009790407925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134421.P2293056009790407925

/-! ## A134421.P1972475912805622048

`∑[A081604(2*n)]`
-/

namespace A134421.P1972475912805622048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134421.P1972475912805622048

/-! ## A134421.P18245278913108150581

`∑[round(log(A183422(n+1)))]`
-/

namespace A134421.P18245278913108150581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A183422 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134421.P18245278913108150581

/-! ## A134421.P181415101718133716

`∑[∑[char[A000203(3^n)+1]]+1]`
-/

namespace A134421.P181415101718133716
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 ^ n) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134421.P181415101718133716

/-!
# A134422: Square numbers which are sums of 2 distinct nonzero squares.

The programs for A134422, the canonical program `A134422.P8034551626620170611` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134422 has offset 1).

The definition of A134422 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134422.P8034551626620170611

`A009003(n+1)²`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134422

/-- `A009003(n+1)²` -/
def P8034551626620170611.Spec : Prop :=
  ∀ n, P8034551626620170611.a n = A134422 (n + 1)

theorem P8034551626620170611.correct : P8034551626620170611.Spec := by
  intro n
  simp only [A134422, Nat.add_sub_cancel]

end A134422

/-! ## A134422.P5354327568879139241

`A292313(n+1)/3`
-/

namespace A134422.P5354327568879139241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292313 (n + 1) : ℚ) / 3

end

end A134422.P5354327568879139241

namespace A134422

/-- `A292313(n+1)/3` -/
def P5354327568879139241.Spec : Prop :=
  ∀ n, P5354327568879139241.a n = (A134422 (n + 1) : ℚ)

end A134422

/-! ## A134422.P10520807235410478486

`(A072592(n+1)/2)²`
-/

namespace A134422.P10520807235410478486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A072592 (n + 1) : ℚ) / 2) ^ 2

end

end A134422.P10520807235410478486

namespace A134422

/-- `(A072592(n+1)/2)²` -/
def P10520807235410478486.Spec : Prop :=
  ∀ n, P10520807235410478486.a n = (A134422 (n + 1) : ℚ)

end A134422

/-! ## A134422.P1095889738674031362

`(lt[0, A046080(n+1)]+1)²`
-/

namespace A134422.P1095889738674031362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A134422.P1095889738674031362

namespace A134422

/-- `(lt[0, A046080(n+1)]+1)²` -/
def P1095889738674031362.Spec : Prop :=
  ∀ n, (P1095889738674031362.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P11583109052594237863

`A009003(sqrt(∑[comp[2*n]]))^2`
-/

namespace A134422.P11583109052594237863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))).toNat ^ 2

end

end A134422.P11583109052594237863

namespace A134422

/-- `A009003(sqrt(∑[comp[2*n]]))^2` -/
def P11583109052594237863.Spec : Prop :=
  ∀ n, P11583109052594237863.a n = A134422 (n + 1)

end A134422

/-! ## A134422.P17839734007623818707

`∪[A009177(n+1), A084645(n+1)]²`
-/

namespace A134422.P17839734007623818707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A134422.P17839734007623818707

namespace A134422

/-- `∪[A009177(n+1), A084645(n+1)]²` -/
def P17839734007623818707.Spec : Prop :=
  ∀ n, (P17839734007623818707.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P1373107642439305952

`∪[A009177(n+1), A209922(n+1)]²`
-/

namespace A134422.P1373107642439305952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A134422.P1373107642439305952

namespace A134422

/-- `∪[A009177(n+1), A209922(n+1)]²` -/
def P1373107642439305952.Spec : Prop :=
  ∀ n, (P1373107642439305952.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P7646535087157023228

`A009003(A000027(n+1))*A009003(n+1)`
-/

namespace A134422.P7646535087157023228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (A000027 (n + 1)).toNat * A009003 (n + 1)

end

end A134422.P7646535087157023228

namespace A134422

/-- `A009003(A000027(n+1))*A009003(n+1)` -/
def P7646535087157023228.Spec : Prop :=
  ∀ n, P7646535087157023228.a n = A134422 (n + 1)

end A134422

/-! ## A134422.P13692507301599252922

`(A072592(n+1)-A009003(n+1))*A009003(n+1)`
-/

namespace A134422.P13692507301599252922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072592 (n + 1) - A009003 (n + 1)) * A009003 (n + 1)

end

end A134422.P13692507301599252922

namespace A134422

/-- `(A072592(n+1)-A009003(n+1))*A009003(n+1)` -/
def P13692507301599252922.Spec : Prop :=
  ∀ n, P13692507301599252922.a n = A134422 (n + 1)

end A134422

/-! ## A134422.P15695961838669392792

`(A009003(n+2)-A278647(n+1))*A009003(n+1)`
-/

namespace A134422.P15695961838669392792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009003 (n + 2) - A278647 (n + 1)) * A009003 (n + 1)

end

end A134422.P15695961838669392792

namespace A134422

/-- `(A009003(n+2)-A278647(n+1))*A009003(n+1)` -/
def P15695961838669392792.Spec : Prop :=
  ∀ n, P15695961838669392792.a n = A134422 (n + 1)

end A134422

/-! ## A134422.P15523062453596687017

`lt[1, A063014(n)]²`
-/

namespace A134422.P15523062453596687017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A134422.P15523062453596687017

namespace A134422

/-- `lt[1, A063014(n)]²` -/
def P15523062453596687017.Spec : Prop :=
  ∀ n, (P15523062453596687017.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P6189271320981909713

`(lt[0, A005080(n+1)]+1)²`
-/

namespace A134422.P6189271320981909713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A134422.P6189271320981909713

namespace A134422

/-- `(lt[0, A005080(n+1)]+1)²` -/
def P6189271320981909713.Spec : Prop :=
  ∀ n, (P6189271320981909713.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P10541711797147722344

`(lt[0, A005081(n+1)]+1)²`
-/

namespace A134422.P10541711797147722344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A134422.P10541711797147722344

namespace A134422

/-- `(lt[0, A005081(n+1)]+1)²` -/
def P10541711797147722344.Spec : Prop :=
  ∀ n, (P10541711797147722344.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P11955082861509379178

`(lt[0, A108707(n+1)]+1)²`
-/

namespace A134422.P11955082861509379178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A134422.P11955082861509379178

namespace A134422

/-- `(lt[0, A108707(n+1)]+1)²` -/
def P11955082861509379178.Spec : Prop :=
  ∀ n, (P11955082861509379178.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P17931553722577973024

`(lt[0, A108708(n+1)]+1)²`
-/

namespace A134422.P17931553722577973024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A134422.P17931553722577973024

namespace A134422

/-- `(lt[0, A108708(n+1)]+1)²` -/
def P17931553722577973024.Spec : Prop :=
  ∀ n, (P17931553722577973024.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P13769482213072989580

`(lt[1, A170818(n+1)]+1)²`
-/

namespace A134422.P13769482213072989580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A134422.P13769482213072989580

namespace A134422

/-- `(lt[1, A170818(n+1)]+1)²` -/
def P13769482213072989580.Spec : Prop :=
  ∀ n, (P13769482213072989580.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P16706160959078559672

`(lt[1, A256452(n+1)]+1)²`
-/

namespace A134422.P16706160959078559672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A134422.P16706160959078559672

namespace A134422

/-- `(lt[1, A256452(n+1)]+1)²` -/
def P16706160959078559672.Spec : Prop :=
  ∀ n, (P16706160959078559672.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P15233132050621084245

`(lt[1, A309228(n+1)]+1)²`
-/

namespace A134422.P15233132050621084245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A134422.P15233132050621084245

namespace A134422

/-- `(lt[1, A309228(n+1)]+1)²` -/
def P15233132050621084245.Spec : Prop :=
  ∀ n, (P15233132050621084245.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P4489387405146788240

`lt[1, A170818(A028310(n))]²`
-/

namespace A134422.P4489387405146788240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A134422.P4489387405146788240

namespace A134422

/-- `lt[1, A170818(A028310(n))]²` -/
def P4489387405146788240.Spec : Prop :=
  ∀ n, (P4489387405146788240.a n : ℤ) = A134422 (n + 1)

end A134422

/-! ## A134422.P2712702989775371940

`∩[A085960(n+1), A266927(n+1)]`
-/

namespace A134422.P2712702989775371940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134422.P2712702989775371940

namespace A134422

/-- `∩[A085960(n+1), A266927(n+1)]` -/
def P2712702989775371940.Spec : Prop :=
  ∀ n, (P2712702989775371940.a n : ℤ) = A134422 (n + 1)

end A134422

/-!
# A134423: Triangle read by rows: T(n,k) is the number of paths in the first quadrant from (0,0) to (n,0) using steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0), such that the area between the x-axis and the path is k (n>=0, 0<=k<=floor(n^2/4)).

The programs for A134423, there is no canonical definition to state claims against.
-/

/-! ## A134423.P16291781433080080761

`A120250(A215366(n)^A212382(n))`
-/

namespace A134423.P16291781433080080761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (SequenceMachineLib.roundAway ((A215366 n : ℚ) ^ (A212382 n : ℤ))).toNat

end

end A134423.P16291781433080080761

/-! ## A134423.P12441932076640744026

`A000005(A118851(n)^A265005(n+1))`
-/

namespace A134423.P12441932076640744026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A118851 n : ℚ) ^ (A265005 (n + 1) : ℤ))).toNat

end

end A134423.P12441932076640744026

/-! ## A134423.P16264459945450222682

`A204927(n+1)+A098854(A204928(n+1))`
-/

namespace A134423.P16264459945450222682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204927 (n + 1) + A098854 (A204928 (n + 1)).toNat

end

end A134423.P16264459945450222682

/-! ## A134423.P16760232934343181871

`A105150(A344607(n+3)-A105153(2*n))`
-/

namespace A134423.P16760232934343181871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105150 (A344607 (n + 3) - A105153 (2 * n)).toNat

end

end A134423.P16760232934343181871

/-! ## A134423.P8485456810310436869

`A233905(A334436(n))+A057427(A029744(2*(n+1)))`
-/

namespace A134423.P8485456810310436869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 (A334436 n).toNat + A057427 (A029744 (2 * (n + 1))).toNat

end

end A134423.P8485456810310436869

/-!
# A134424: Area under all paths in the first quadrant from (0,0) to (n,0) using steps U=(1,1), D=(1,-1), h=(1,0) and H=(2,0).

The programs for A134424, there is no canonical definition to state claims against.
-/

/-! ## A134424.P6058049859700754209

`A268584(A000105(n))+A094578(n)`
-/

namespace A134424.P6058049859700754209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268584 (A000105 n).toNat + A094578 n

end

end A134424.P6058049859700754209

/-! ## A134424.P4425394359680872527

`A106228(n)-A068909(A322705(n))`
-/

namespace A134424.P4425394359680872527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n - A068909 (A322705 n).toNat

end

end A134424.P4425394359680872527

/-! ## A134424.P10855069543797074200

`A148736(n)-A366627(A148731(n))`
-/

namespace A134424.P10855069543797074200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148736 n - A366627 (A148731 n).toNat

end

end A134424.P10855069543797074200

/-!
# A134425: Number of paths of length n in the first quadrant, starting at the origin and consisting of 2 kinds of upsteps U=(1,1) (U1 and U2), 3 kinds of flatsteps F=(1,0) (F1, F2 and F3) and 1 kind of downsteps D=(1,-1).

The programs for A134425, the canonical program `A134425.P9961486418266130695` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134425 has offset 0).

The definition of A134425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134425.P10871240729532363129

`A321574(n+1)/4`
-/

namespace A134425.P10871240729532363129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321574 (n + 1) : ℚ) / 4

end

end A134425.P10871240729532363129

namespace A134425

/-- `A321574(n+1)/4` -/
def P10871240729532363129.Spec : Prop :=
  ∀ n, P10871240729532363129.a n = (A134425 n : ℚ)

end A134425

/-! ## A134425.P3415509038943674710

`Δ[∑[A321574(n)]/4]`
-/

namespace A134425.P3415509038943674710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321574 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134425.P3415509038943674710

namespace A134425

/-- `Δ[∑[A321574(n)]/4]` -/
def P3415509038943674710.Spec : Prop :=
  ∀ n, P3415509038943674710.a n = (A134425 n : ℚ)

end A134425

/-! ## A134425.P9961486418266130695

`6*a(n-1)-A001003(n)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134425

/-- `6*a(n-1)-A001003(n)` -/
def P9961486418266130695.Spec : Prop :=
  ∀ n, P9961486418266130695.a n = A134425 n

theorem P9961486418266130695.correct : P9961486418266130695.Spec := by
  intro n
  simp only [A134425]

end A134425

/-! ## A134425.P8753965371940693634

`A085403(n+1)/2+6*a(n-1)` with `a(0)=1`
-/

namespace A134425.P8753965371940693634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A085403 (n + 1) : ℚ) / 2 + 6 * a (n - 1)

end

end A134425.P8753965371940693634

namespace A134425

/-- `A085403(n+1)/2+6*a(n-1)` -/
def P8753965371940693634.Spec : Prop :=
  ∀ n, P8753965371940693634.a n = (A134425 n : ℚ)

end A134425

/-! ## A134425.P9130449502171300371

`6*a(n-1)-A104219(A000217(n))` with `a(0)=1`
-/

namespace A134425.P9130449502171300371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A104219 (A000217 n).toNat

end

end A134425.P9130449502171300371

namespace A134425

/-- `6*a(n-1)-A104219(A000217(n))` -/
def P9130449502171300371.Spec : Prop :=
  ∀ n, P9130449502171300371.a n = A134425 n

end A134425

/-!
# A134426: Triangle read by rows: T(n,k) is the number of paths of length n in the first quadrant, starting at the origin, ending at height k and consisting of 2 kind of upsteps U=(1,1) (U1 and U2), 3 kind of flatsteps F=(1,0) (F1, F2 and F3) and 1 kind of downsteps D=(1,-1).

The programs for A134426, there is no canonical definition to state claims against.
-/

/-! ## A134426.P13427460944981842570

`A059268(n)*A110440(n)`
-/

namespace A134426.P13427460944981842570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A110440 n

end

end A134426.P13427460944981842570

/-! ## A134426.P7964187385071436471

`2^A002262(n)*A110440(n)`
-/

namespace A134426.P7964187385071436471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A110440 n : ℚ)

end

end A134426.P7964187385071436471

/-! ## A134426.P7492365368071984303

`2^val(A036561(n), 3)*A110440(n)`
-/

namespace A134426.P7492365368071984303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (A036561 n).toNat 3 : ℤ) * A110440 n

end

end A134426.P7492365368071984303

/-! ## A134426.P16804609672712204863

`A000079(A002262(n))*A110440(n)`
-/

namespace A134426.P16804609672712204863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A110440 n

end

end A134426.P16804609672712204863

/-! ## A134426.P13066168347165030493

`A006519(A175840(n))*A110440(n)`
-/

namespace A134426.P13066168347165030493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A175840 n).toNat * A110440 n

end

end A134426.P13066168347165030493

/-!
# A134427: Numbers k such that k^2 + 1 is a composite squarefree number.

The programs for A134427, the canonical program `A134427.P9505557340857002464` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134427 has offset 1).

The definition of A134427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134427.P9505557340857002464

`floor(sqrt(A134420(n+1)))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134427

/-- `floor(sqrt(A134420(n+1)))` -/
def P9505557340857002464.Spec : Prop :=
  ∀ n, P9505557340857002464.a n = A134427 (n + 1)

theorem P9505557340857002464.correct : P9505557340857002464.Spec := by
  intro n
  simp only [A134427, Nat.add_sub_cancel]

end A134427

/-! ## A134427.P1690571777591116194

`eq[6, A278162(n)%12]`
-/

namespace A134427.P1690571777591116194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278162 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134427.P1690571777591116194

namespace A134427

/-- `eq[6, A278162(n)%12]` -/
def P1690571777591116194.Spec : Prop :=
  ∀ n, (P1690571777591116194.a n : ℤ) = A134427 (n + 1)

end A134427

/-! ## A134427.P13268528752330708150

`A028310(round(sqrt(A134420(n+1))))`
-/

namespace A134427.P13268528752330708150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A134420 (n + 1) : ℝ))).toNat

end

end A134427.P13268528752330708150

namespace A134427

/-- `A028310(round(sqrt(A134420(n+1))))` -/
def P13268528752330708150.Spec : Prop :=
  ∀ n, P13268528752330708150.a n = A134427 (n + 1)

end A134427

/-! ## A134427.P10299997411208999239

`A028310(sqrt(A134420(n+1)-1))`
-/

namespace A134427.P10299997411208999239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A134420 (n + 1) - 1 : ℝ))).toNat

end

end A134427.P10299997411208999239

namespace A134427

/-- `A028310(sqrt(A134420(n+1)-1))` -/
def P10299997411208999239.Spec : Prop :=
  ∀ n, P10299997411208999239.a n = A134427 (n + 1)

end A134427

/-! ## A134427.P9025785003726740543

`eq[3, A014673(A278162(n))]`
-/

namespace A134427.P9025785003726740543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A278162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134427.P9025785003726740543

namespace A134427

/-- `eq[3, A014673(A278162(n))]` -/
def P9025785003726740543.Spec : Prop :=
  ∀ n, (P9025785003726740543.a n : ℤ) = A134427 (n + 1)

end A134427

/-! ## A134427.P1569751078968888192

`eq[A260190(A278162(n)), A260196(n)]`
-/

namespace A134427.P1569751078968888192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 (A278162 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134427.P1569751078968888192

namespace A134427

/-- `eq[A260190(A278162(n)), A260196(n)]` -/
def P1569751078968888192.Spec : Prop :=
  ∀ n, (P1569751078968888192.a n : ℤ) = A134427 (n + 1)

end A134427

/-! ## A134427.P1264053335998347885

`lt[A000010(n²+1)+1, A059591(n)]`
-/

namespace A134427.P1264053335998347885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n ^ 2 + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134427.P1264053335998347885

namespace A134427

/-- `lt[A000010(n²+1)+1, A059591(n)]` -/
def P1264053335998347885.Spec : Prop :=
  ∀ n, (P1264053335998347885.a n : ℤ) = A134427 (n + 1)

end A134427

/-! ## A134427.P1891388764443571302

`eq[2, dr(A000040(A101296(n²+1)+1))]`
-/

namespace A134427.P1891388764443571302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (A101296 (n ^ 2 + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134427.P1891388764443571302

namespace A134427

/-- `eq[2, dr(A000040(A101296(n²+1)+1))]` -/
def P1891388764443571302.Spec : Prop :=
  ∀ n, (P1891388764443571302.a n : ℤ) = A134427 (n + 1)

end A134427

/-! ## A134427.P11234387782573298698

`lt[A059100(n), A000203(A059591(n))]`
-/

namespace A134427.P11234387782573298698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A059591 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134427.P11234387782573298698

namespace A134427

/-- `lt[A059100(n), A000203(A059591(n))]` -/
def P11234387782573298698.Spec : Prop :=
  ∀ n, (P11234387782573298698.a n : ℤ) = A134427 (n + 1)

end A134427

/-! ## A134427.P3018108233800349464

`lt[A059592(n), A001221(A059591(n))]`
-/

namespace A134427.P3018108233800349464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A059591 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134427.P3018108233800349464

namespace A134427

/-- `lt[A059592(n), A001221(A059591(n))]` -/
def P3018108233800349464.Spec : Prop :=
  ∀ n, (P3018108233800349464.a n : ℤ) = A134427 (n + 1)

end A134427

/-! ## A134427.P12246980775222324006

`eq[2, A317751(n²+1)]`
-/

namespace A134427.P12246980775222324006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317751 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134427.P12246980775222324006

namespace A134427

/-- `eq[2, A317751(n²+1)]` -/
def P12246980775222324006.Spec : Prop :=
  ∀ n, (P12246980775222324006.a n : ℤ) = A134427 (n + 1)

end A134427

/-! ## A134427.P16114256798254586591

`eq[3, A316314(3*A316314(n²+1)+1)]`
-/

namespace A134427.P16114256798254586591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (3 * A316314 (n ^ 2 + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134427.P16114256798254586591

namespace A134427

/-- `eq[3, A316314(3*A316314(n²+1)+1)]` -/
def P16114256798254586591.Spec : Prop :=
  ∀ n, (P16114256798254586591.a n : ℤ) = A134427 (n + 1)

end A134427

/-!
# A134428: Primes formed by concatenating k with k+1, where k+1 is a prime.

The programs for A134428, there is no canonical definition to state claims against.
-/

/-! ## A134428.P644909307048521642

`∩[A030458(n+1), A280376(n+1)]`
-/

namespace A134428.P644909307048521642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P644909307048521642

/-! ## A134428.P7050075753996031576

`∩[A052087(n+1), A280376(n+1)]`
-/

namespace A134428.P7050075753996031576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P7050075753996031576

/-! ## A134428.P17171942880782970480

`∩[A154530(n+1), A280376(n+1)]`
-/

namespace A134428.P17171942880782970480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P17171942880782970480

/-! ## A134428.P4614330061939776958

`A127421(A396878(n+1))`
-/

namespace A134428.P4614330061939776958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A396878 (n + 1)).toNat

end

end A134428.P4614330061939776958

/-! ## A134428.P12928491557941780291

`A127421(p?[A030457(n+1)+1])`
-/

namespace A134428.P12928491557941780291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030457 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134428.P12928491557941780291

/-! ## A134428.P713367696488844865

`∩[A127421(A006093(n+1)+1), A052087(n+1)]`
-/

namespace A134428.P713367696488844865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A006093 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P713367696488844865

/-! ## A134428.P16803349364523927665

`∩[A280376(n+1), A030656(n)]`
-/

namespace A134428.P16803349364523927665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P16803349364523927665

/-! ## A134428.P12725712632511914018

`A049852(A396878(n+1)-1)`
-/

namespace A134428.P12725712632511914018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A396878 (n + 1) - 1).toNat

end

end A134428.P12725712632511914018

/-! ## A134428.P15760800149569264960

`∩[A280376(n+1), A275238(n)]`
-/

namespace A134428.P15760800149569264960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P15760800149569264960

/-! ## A134428.P12065039647170814508

`∩[A030458(n+1), A049852(n+1)]`
-/

namespace A134428.P12065039647170814508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P12065039647170814508

/-! ## A134428.P10589056780290538333

`∩[A049852(n+1), A052087(n+1)]`
-/

namespace A134428.P10589056780290538333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P10589056780290538333

/-! ## A134428.P3076807753294286982

`∩[A049852(n+1), A154530(n+1)]`
-/

namespace A134428.P3076807753294286982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P3076807753294286982

/-! ## A134428.P10002521763309994381

`∩[A001704(n+1), A280376(n+1)]`
-/

namespace A134428.P10002521763309994381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P10002521763309994381

/-! ## A134428.P2062833251007171833

`∩[A127421(n+1), A280376(n+1)]`
-/

namespace A134428.P2062833251007171833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P2062833251007171833

/-! ## A134428.P1015514519562459828

`A127421(p?[A004442(A030457(n+1))])`
-/

namespace A134428.P1015514519562459828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A030457 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134428.P1015514519562459828

/-! ## A134428.P9436304521959090710

`∩[A035333(n+1), A280376(n+1)]`
-/

namespace A134428.P9436304521959090710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134428.P9436304521959090710

/-!
# A134429: a(n) = (-1)^(1 + n) * 2 * ( -1/2 -n + (-1)^((1 + n)*(2 + n)/2)).

The programs for A134429, the canonical program `A134429.P8343065259598999479` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134429 has offset 0).

The definition of A134429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134429.P8343065259598999479

`Δ[xor(3, -a(n-1))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134429

/-- `Δ[xor(3, -a(n-1))]` -/
def P8343065259598999479.Spec : Prop :=
  ∀ n, P8343065259598999479.a n = A134429 n

theorem P8343065259598999479.correct : P8343065259598999479.Spec := by
  intro n
  simp only [A134429]

end A134429

/-! ## A134429.P5056987395134731694

`Δ[xor(3, 8-a(n-1))]` with `a(0)=4`
-/

namespace A134429.P5056987395134731694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  Int.xor 3 (8 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134429.P5056987395134731694

namespace A134429

/-- `Δ[xor(3, 8-a(n-1))]` -/
def P5056987395134731694.Spec : Prop :=
  ∀ n, P5056987395134731694.a n = A134429 n

end A134429

/-! ## A134429.P14659579748620812090

`ogf((3+x-x^2-3x^3)/(1+2x+2x^2+2x^3+x^4))`
-/

namespace A134429.P14659579748620812090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -1, -3] [1, 2, 2, 2, 1] n

end

end A134429.P14659579748620812090

namespace A134429

/-- `ogf((3+x-x^2-3x^3)/(1+2x+2x^2+2x^3+x^4))` -/
def P14659579748620812090.Spec : Prop :=
  ∀ n, P14659579748620812090.a n = A134429 n

end A134429

/-! ## A134429.P4111693626166277937

`Δ[xor(n+1, xor(n, n+1)-3)]`
-/

namespace A134429.P4111693626166277937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134429.P4111693626166277937

namespace A134429

/-- `Δ[xor(n+1, xor(n, n+1)-3)]` -/
def P4111693626166277937.Spec : Prop :=
  ∀ n, P4111693626166277937.a n = A134429 n

end A134429

/-! ## A134429.P6860148475147675385

`or(4, A157142(n))-2`
-/

namespace A134429.P6860148475147675385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A157142 n) - 2

end

end A134429.P6860148475147675385

namespace A134429

/-- `or(4, A157142(n))-2` -/
def P6860148475147675385.Spec : Prop :=
  ∀ n, P6860148475147675385.a n = A134429 n

end A134429

/-! ## A134429.P13104757190056376334

`xor(xor(2, n)+n, A033999(n))`
-/

namespace A134429.P13104757190056376334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.xor 2 n + n : ℤ) (A033999 n)

end

end A134429.P13104757190056376334

namespace A134429

/-- `xor(xor(2, n)+n, A033999(n))` -/
def P13104757190056376334.Spec : Prop :=
  ∀ n, P13104757190056376334.a n = A134429 n

end A134429

/-! ## A134429.P15126076368911951365

`A134314(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A134429.P15126076368911951365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A134314 (n - 1) + a (n - 1)

end

end A134429.P15126076368911951365

namespace A134429

/-- `A134314(n-1)+a(n-1)` -/
def P15126076368911951365.Spec : Prop :=
  ∀ n, P15126076368911951365.a n = A134429 n

end A134429

/-! ## A134429.P1897419288458159504

`(A004444(n)+A004442(n+1))*A033999(n)`
-/

namespace A134429.P1897419288458159504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004444 n + A004442 (n + 1)) * A033999 n

end

end A134429.P1897419288458159504

namespace A134429

/-- `(A004444(n)+A004442(n+1))*A033999(n)` -/
def P1897419288458159504.Spec : Prop :=
  ∀ n, P1897419288458159504.a n = A134429 n

end A134429

/-! ## A134429.P14881952018633335487

`Δ[xor(n, Δ[xor(1, n)])]`
-/

namespace A134429.P14881952018633335487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134429.P14881952018633335487

namespace A134429

/-- `Δ[xor(n, Δ[xor(1, n)])]` -/
def P14881952018633335487.Spec : Prop :=
  ∀ n, P14881952018633335487.a n = A134429 n

end A134429

/-! ## A134429.P9661698488785532259

`A038608(xor(2, n))-A038608(n+1)`
-/

namespace A134429.P9661698488785532259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (Nat.xor 2 n) - A038608 (n + 1)

end

end A134429.P9661698488785532259

namespace A134429

/-- `A038608(xor(2, n))-A038608(n+1)` -/
def P9661698488785532259.Spec : Prop :=
  ∀ n, P9661698488785532259.a n = A134429 n

end A134429

/-! ## A134429.P5795643913526721010

`(A256008(n+1)+n)*A165326(n+1)`
-/

namespace A134429.P5795643913526721010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A256008 (n + 1) + (n : ℤ)) * A165326 (n + 1)

end

end A134429.P5795643913526721010

namespace A134429

/-- `(A256008(n+1)+n)*A165326(n+1)` -/
def P5795643913526721010.Spec : Prop :=
  ∀ n, P5795643913526721010.a n = A134429 n

end A134429

/-! ## A134429.P7673458083478807893

`A057077(n+1)+A157142(n)+A057077(n+1)`
-/

namespace A134429.P7673458083478807893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) + (A157142 n + A057077 (n + 1))

end

end A134429.P7673458083478807893

namespace A134429

/-- `A057077(n+1)+A157142(n)+A057077(n+1)` -/
def P7673458083478807893.Spec : Prop :=
  ∀ n, P7673458083478807893.a n = A134429 n

end A134429

/-! ## A134429.P4118842395804880044

`A157142(n)+A066043(n+2)/A030640(n+1)`
-/

namespace A134429.P4118842395804880044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157142 n : ℚ) + (A066043 (n + 2) : ℚ) / (A030640 (n + 1) : ℚ)

end

end A134429.P4118842395804880044

namespace A134429

/-- `A157142(n)+A066043(n+2)/A030640(n+1)` -/
def P4118842395804880044.Spec : Prop :=
  ∀ n, P4118842395804880044.a n = (A134429 n : ℚ)

end A134429

/-! ## A134429.P5389787756412968313

`Δ[Δ[A134405(n)]]`
-/

namespace A134429.P5389787756412968313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134429.P5389787756412968313

namespace A134429

/-- `Δ[Δ[A134405(n)]]` -/
def P5389787756412968313.Spec : Prop :=
  ∀ n, P5389787756412968313.a n = A134429 n

end A134429

/-! ## A134429.P18101377560893264661

`Δ[Δ[A083220(n)-A064455(n+1)]]`
-/

namespace A134429.P18101377560893264661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n - A064455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134429.P18101377560893264661

namespace A134429

/-- `Δ[Δ[A083220(n)-A064455(n+1)]]` -/
def P18101377560893264661.Spec : Prop :=
  ∀ n, P18101377560893264661.a n = A134429 n

end A134429

/-! ## A134429.P4948117987599182592

`(xor(2, n)+1+n)*A057077(2*n)`
-/

namespace A134429.P4948117987599182592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n + 1 + n : ℤ) * A057077 (2 * n)

end

end A134429.P4948117987599182592

namespace A134429

/-- `(xor(2, n)+1+n)*A057077(2*n)` -/
def P4948117987599182592.Spec : Prop :=
  ∀ n, P4948117987599182592.a n = A134429 n

end A134429

/-! ## A134429.P1736649004123967151

`A030640(2*n)+A066043(n+2)/A030640(n+1)`
-/

namespace A134429.P1736649004123967151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030640 (2 * n) : ℚ) + (A066043 (n + 2) : ℚ) / (A030640 (n + 1) : ℚ)

end

end A134429.P1736649004123967151

namespace A134429

/-- `A030640(2*n)+A066043(n+2)/A030640(n+1)` -/
def P1736649004123967151.Spec : Prop :=
  ∀ n, P1736649004123967151.a n = (A134429 n : ℚ)

end A134429

/-!
# A134430: Period 4: repeat [1, -2, -2, 1].

The programs for A134430, the canonical program `A134430.P12772919969290294464` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134430 has offset 0).

The definition of A134430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134430.P12772919969290294464

`a(n-4)` with `a(0)=1, a(1)=-2, a(2)=-2, a(3)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134430

/-- `a(n-4)` -/
def P12772919969290294464.Spec : Prop :=
  ∀ n, P12772919969290294464.a n = A134430 n

theorem P12772919969290294464.correct : P12772919969290294464.Spec := by
  intro n
  simp only [A134430]

end A134430

/-!
# A134432: Sum of entries in all the arrangements of the set {1,2,...,n} (to n=0 there corresponds the empty set).

The programs for A134432, there is no canonical definition to state claims against.
-/

/-! ## A134432.P17163462269177381268

`(n+1)/2*A093964(n)`
-/

namespace A134432.P17163462269177381268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A093964 n : ℚ)

end

end A134432.P17163462269177381268

/-! ## A134432.P3359503897324097308

`∑[n]*A143409(∑[n]+1)`
-/

namespace A134432.P3359503897324097308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A143409 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A134432.P3359503897324097308

/-! ## A134432.P17024143696645390997

`A006183(n+1)/2*∑[n]`
-/

namespace A134432.P17024143696645390997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006183 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A134432.P17024143696645390997

/-! ## A134432.P12089325133147289006

`∑[A082030(n)-(floor(Δ[e*n!])+1)]`
-/

namespace A134432.P12089325133147289006
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082030 n - (⌊f2 (n + 1) - f2 n⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134432.P12089325133147289006

/-! ## A134432.P2614309936923469141

`∑[A082030(n)-A001339(n)]`
-/

namespace A134432.P2614309936923469141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082030 n - A001339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134432.P2614309936923469141

/-! ## A134432.P7870175473198839156

`∑[A001340(n)-A144495(n)]`
-/

namespace A134432.P7870175473198839156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001340 n - A144495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134432.P7870175473198839156

/-! ## A134432.P16917290452991811048

`A036919(n+1)-∑[A001339(n)]`
-/

namespace A134432.P16917290452991811048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036919 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134432.P16917290452991811048

/-! ## A134432.P212204926180081488

`n*Δ[A038155(n)]-A038155(n)`
-/

namespace A134432.P212204926180081488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A038155 n

end

end A134432.P212204926180081488

/-! ## A134432.P7800691246708301356

`(A093964(n+1)-A007526(n+1))/2`
-/

namespace A134432.P7800691246708301356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093964 (n + 1) - A007526 (n + 1) : ℚ) / 2

end

end A134432.P7800691246708301356

/-! ## A134432.P9329639008849676450

`A000217(n)*A001339(A004526(A004275(n)))`
-/

namespace A134432.P9329639008849676450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A001339 (A004526 (A004275 n).toNat).toNat

end

end A134432.P9329639008849676450

/-!
# A134434: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k even entries that are followed by a smaller entry (n>=0, k>=0).

The programs for A134434, there is no canonical definition to state claims against.
-/

/-! ## A134434.P15038995556694321524

`A145894(lt[0, A145894(n)])`
-/

namespace A134434.P15038995556694321524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134434.P15038995556694321524

/-! ## A134434.P6781623974552346931

`A145894(eq[1, A128174(n+1)])`
-/

namespace A134434.P6781623974552346931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134434.P6781623974552346931

/-! ## A134434.P17539189253196856420

`A145891(A271647(n+1)-1)`
-/

namespace A134434.P17539189253196856420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145891 (A271647 (n + 1) - 1).toNat

end

end A134434.P17539189253196856420

/-! ## A134434.P14852779294842058011

`filter[A145894(n), A011558(#)]`
-/

namespace A134434.P14852779294842058011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A134434.P14852779294842058011

/-! ## A134434.P14389633511420685514

`filter[A145894(n), A109720(#)]`
-/

namespace A134434.P14389633511420685514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A134434.P14389633511420685514

/-!
# A134435: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k odd entries that are followed by a smaller entry (n >= 0, k >= 0).

The programs for A134435, there is no canonical definition to state claims against.
-/

/-! ## A134435.P16143555685784501934

`A099259(A136424(n+1))`
-/

namespace A134435.P16143555685784501934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099259 (A136424 (n + 1)).toNat

end

end A134435.P16143555685784501934

/-! ## A134435.P17314748803278405478

`A325404(2^A004001(n+1))`
-/

namespace A134435.P17314748803278405478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004001 (n + 1) : ℤ))).toNat

end

end A134435.P17314748803278405478

/-! ## A134435.P15823492976203309826

`A052275(A051451(n+1)/(n+1))`
-/

namespace A134435.P15823492976203309826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052275 (SequenceMachineLib.roundAway ((A051451 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A134435.P15823492976203309826

/-! ## A134435.P4712215560074276120

`A243543(A134816(n+1)+(2^val(n+1, 2))%(n+1))`
-/

namespace A134435.P4712215560074276120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243543 (A134816 (n + 1) + ((2 ^ SequenceMachineLib.valuation (n + 1) 2 % (n + 1) : ℕ) : ℤ)).toNat

end

end A134435.P4712215560074276120

/-! ## A134435.P4457569594981114005

`A000005(A183239(n))*A010027(n+1)`
-/

namespace A134435.P4457569594981114005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A183239 n).toNat * A010027 (n + 1)

end

end A134435.P4457569594981114005

/-!
# A134436: Triangle read by rows: T(n,k) is the number of deco polyominoes of height n with k cells in the second row (0<=k<=n-1; a deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column).

The programs for A134436, there is no canonical definition to state claims against.
-/

/-! ## A134436.P10702509412361953980

`A056151(n+1)-Δ[A016389(A022166(n))]`
-/

namespace A134436.P10702509412361953980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056151 (n + 1) - (f1 (n + 1) - f1 n)

end

end A134436.P10702509412361953980

/-! ## A134436.P4899727886172442121

`A056151(n+1)-A016389(A267392(n+1))`
-/

namespace A134436.P4899727886172442121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056151 (n + 1) - A016389 (A267392 (n + 1)).toNat

end

end A134436.P4899727886172442121

/-! ## A134436.P6598525828627856271

`A056151(n+1)+Δ[A185284(A292382(n+1))]`
-/

namespace A134436.P6598525828627856271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A292382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056151 (n + 1) + (f1 (n + 1) - f1 n)

end

end A134436.P6598525828627856271

/-!
# A134437: Number of cells in the 2nd rows of all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A134437, the canonical program `A134437.P3993013859740198630` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134437 has offset 1).

The definition of A134437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134437.P3993013859740198630

`1/2*(3*(n+1)-4)*n!+n*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134437

/-- `1/2*(3*(n+1)-4)*n!+n*a(n-1)` -/
def P3993013859740198630.Spec : Prop :=
  ∀ n, P3993013859740198630.a n = (A134437 (n + 1) : ℚ)

end A134437

/-! ## A134437.P5159708470700943451

`(3*(n+1)-2)*n*n!/4`
-/

namespace A134437.P5159708470700943451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * (n + 1) : ℤ) - 2) * (n * Nat.factorial n : ℤ) : ℚ) / 4

end

end A134437.P5159708470700943451

namespace A134437

/-- `(3*(n+1)-2)*n*n!/4` -/
def P5159708470700943451.Spec : Prop :=
  ∀ n, P5159708470700943451.a n = (A134437 (n + 1) : ℚ)

end A134437

/-! ## A134437.P9745703805798591537

`(∑[n]+n²)/2*n!`
-/

namespace A134437.P9745703805798591537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A134437.P9745703805798591537

namespace A134437

/-- `(∑[n]+n²)/2*n!` -/
def P9745703805798591537.Spec : Prop :=
  ∀ n, P9745703805798591537.a n = (A134437 (n + 1) : ℚ)

end A134437

/-! ## A134437.P13695081837911402274

`(3*n+1)/4*Δ[n!]`
-/

namespace A134437.P13695081837911402274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) / 4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A134437.P13695081837911402274

namespace A134437

/-- `(3*n+1)/4*Δ[n!]` -/
def P13695081837911402274.Spec : Prop :=
  ∀ n, P13695081837911402274.a n = (A134437 (n + 1) : ℚ)

end A134437

/-! ## A134437.P6589388104185548537

`(3*n+1)*n/4*n!`
-/

namespace A134437.P6589388104185548537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) * ((n : ℚ) / 4 * (Nat.factorial n : ℚ))

end

end A134437.P6589388104185548537

namespace A134437

/-- `(3*n+1)*n/4*n!` -/
def P6589388104185548537.Spec : Prop :=
  ∀ n, P6589388104185548537.a n = (A134437 (n + 1) : ℚ)

end A134437

/-! ## A134437.P12026497248501352306

`n/2*A066114(n)`
-/

namespace A134437.P12026497248501352306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A066114 n : ℚ)

end

end A134437.P12026497248501352306

namespace A134437

/-- `n/2*A066114(n)` -/
def P12026497248501352306.Spec : Prop :=
  ∀ n, P12026497248501352306.a n = (A134437 (n + 1) : ℚ)

end A134437

/-! ## A134437.P10839577859712542749

`n/4*A082033(n)`
-/

namespace A134437.P10839577859712542749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A082033 n : ℚ)

end

end A134437.P10839577859712542749

namespace A134437

/-- `n/4*A082033(n)` -/
def P10839577859712542749.Spec : Prop :=
  ∀ n, P10839577859712542749.a n = (A134437 (n + 1) : ℚ)

end A134437

/-! ## A134437.P9864796958335627799

`Δ[(n!+1)/4]*A016777(n)`
-/

namespace A134437.P9864796958335627799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A016777 n : ℚ)

end

end A134437.P9864796958335627799

namespace A134437

/-- `Δ[(n!+1)/4]*A016777(n)` -/
def P9864796958335627799.Spec : Prop :=
  ∀ n, P9864796958335627799.a n = (A134437 (n + 1) : ℚ)

end A134437

/-! ## A134437.P8767967982111620797

`(∑[n]+n²)/2*A000142(n)`
-/

namespace A134437.P8767967982111620797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℚ) / 2 * (A000142 n : ℚ)

end

end A134437.P8767967982111620797

namespace A134437

/-- `(∑[n]+n²)/2*A000142(n)` -/
def P8767967982111620797.Spec : Prop :=
  ∀ n, P8767967982111620797.a n = (A134437 (n + 1) : ℚ)

end A134437

/-! ## A134437.P17073846811049439026

`A180119(n)+A001809(n)`
-/

namespace A134437.P17073846811049439026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 n + A001809 n

end

end A134437.P17073846811049439026

namespace A134437

/-- `A180119(n)+A001809(n)` -/
def P17073846811049439026.Spec : Prop :=
  ∀ n, P17073846811049439026.a n = A134437 (n + 1)

end A134437

/-!
# A134438: Number of tilings of a 3 X n rectangle with n trominoes.

The programs for A134438, the canonical program `A134438.P3908405905194749399` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134438 has offset 0).

The definition of A134438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134438.P3908405905194749399

`a(n-1)+2*a(n-2)+6*a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=10, a(4)=23, a(5)=62`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134438

/-- `a(n-1)+2*a(n-2)+6*a(n-3)+a(n-4)-a(n-6)` -/
def P3908405905194749399.Spec : Prop :=
  ∀ n, P3908405905194749399.a n = A134438 n

theorem P3908405905194749399.correct : P3908405905194749399.Spec := by
  intro n
  simp only [A134438]

end A134438

/-! ## A134438.P758329904536876591

`A233320(∑[n+3]+n+3)`
-/

namespace A134438.P758329904536876591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A134438.P758329904536876591

namespace A134438

/-- `A233320(∑[n+3]+n+3)` -/
def P758329904536876591.Spec : Prop :=
  ∀ n, P758329904536876591.a n = A134438 n

end A134438

/-! ## A134438.P13751627081256241180

`A233320(A046691(n+2))%A008776(n)`
-/

namespace A134438.P13751627081256241180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233320 (A046691 (n + 2)).toNat) (A008776 n)

end

end A134438.P13751627081256241180

namespace A134438

/-- `A233320(A046691(n+2))%A008776(n)` -/
def P13751627081256241180.Spec : Prop :=
  ∀ n, P13751627081256241180.a n = A134438 n

end A134438

/-!
# A134441: Last two digits of primes of form 4n+1 (A002144), excluding 5. Leading 0's omitted.

The programs for A134441, there is no canonical definition to state claims against.
-/

/-! ## A134441.P11272737020347471590

`4-or(3, -5*n)`
-/

namespace A134441.P11272737020347471590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.lor 3 (-(5 * n : ℤ))

end

end A134441.P11272737020347471590

/-! ## A134441.P4199979386086656840

`or(3, 5*n-1)+2`
-/

namespace A134441.P4199979386086656840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((5 * n : ℤ) - 1) + 2

end

end A134441.P4199979386086656840

/-! ## A134441.P5471637082824562468

`xor(2, or(3, 5*n+3))`
-/

namespace A134441.P5471637082824562468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 3 (5 * n + 3))

end

end A134441.P5471637082824562468

/-! ## A134441.P5801055695126164569

`abs(or(3, -(5*n+4)))`
-/

namespace A134441.P5801055695126164569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 3 (-(5 * n + 4 : ℤ))|

end

end A134441.P5801055695126164569

/-! ## A134441.P13193937246058925965

`-or(3, -(5*n+4))`
-/

namespace A134441.P13193937246058925965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 (-(5 * n + 4 : ℤ))

end

end A134441.P13193937246058925965

/-!
# A134442: Last two digits of primes of form 4n+3 (A002145). Leading 0's omitted.

The programs for A134442, there is no canonical definition to state claims against.
-/

/-! ## A134442.P11722730479396724017

`or(3, 5*n+1)`
-/

namespace A134442.P11722730479396724017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (5 * n + 1)

end

end A134442.P11722730479396724017

/-! ## A134442.P17413727631161457025

`record[lcm(5, or(3, n))/5]`
-/

namespace A134442.P17413727631161457025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (Nat.lor 3 n) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134442.P17413727631161457025

/-! ## A134442.P7188600342278535199

`record[gcd(C(n, 5), or(3, n))]`
-/

namespace A134442.P7188600342278535199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose n 5) (Nat.lor 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134442.P7188600342278535199

/-! ## A134442.P16183728619199426937

`6-or(3, 2-5*n)`
-/

namespace A134442.P16183728619199426937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.lor 3 (2 - (5 * n : ℤ))

end

end A134442.P16183728619199426937

/-! ## A134442.P14768988414692032134

`lt[gcd(5, n), val(n+1, 2)]`
-/

namespace A134442.P14768988414692032134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134442.P14768988414692032134

/-!
# A134443: A007318^2 * A007248.

The programs for A134443, there is no canonical definition to state claims against.
-/

/-! ## A134443.P6561939559190735049

`A065625(A038846(n))*A368520(n+1)`
-/

namespace A134443.P6561939559190735049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065625 (A038846 n).toNat * A368520 (n + 1)

end

end A134443.P6561939559190735049

/-!
# A134444: (A000012 * A128174 + A128174 * A000012) - A000012.

The programs for A134444, the canonical program `A134444.P9215337130777568354` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134444 has offset 0).

The definition of A134444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134444.P4397136933411570014

`-or(1, n-C(comp[∑[n]]-n, 2))`
-/

namespace A134444.P4397136933411570014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 ((n : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ))

end

end A134444.P4397136933411570014

namespace A134444

/-- `-or(1, n-C(comp[∑[n]]-n, 2))` -/
def P4397136933411570014.Spec : Prop :=
  ∀ n, P4397136933411570014.a n = A134444 n

end A134444

/-! ## A134444.P3394450286949495623

`or(1, C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A134444.P3394450286949495623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A134444.P3394450286949495623

namespace A134444

/-- `or(1, C(comp[∑[n]]-n, 2)-(n+1))` -/
def P3394450286949495623.Spec : Prop :=
  ∀ n, P3394450286949495623.a n = A134444 n

end A134444

/-! ## A134444.P3789328417259967357

`or(1, C(comp[∑[n]]-n, 2)-1-n)`
-/

namespace A134444.P3789328417259967357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - 1 - (n : ℤ))

end

end A134444.P3789328417259967357

namespace A134444

/-- `or(1, C(comp[∑[n]]-n, 2)-1-n)` -/
def P3789328417259967357.Spec : Prop :=
  ∀ n, P3789328417259967357.a n = A134444 n

end A134444

/-! ## A134444.P10984318466078338265

`2*ceil((C(comp[∑[n]]-n, 2)-n)/2)-1`
-/

namespace A134444.P10984318466078338265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) / 2⌉ - 1

end

end A134444.P10984318466078338265

namespace A134444

/-- `2*ceil((C(comp[∑[n]]-n, 2)-n)/2)-1` -/
def P10984318466078338265.Spec : Prop :=
  ∀ n, P10984318466078338265.a n = A134444 n

end A134444

/-! ## A134444.P417670100424000857

`2*floor((C(comp[∑[n]]-n, 2)-(n+1))/2)+1`
-/

namespace A134444.P417670100424000857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) / 2⌋ + 1

end

end A134444.P417670100424000857

namespace A134444

/-- `2*floor((C(comp[∑[n]]-n, 2)-(n+1))/2)+1` -/
def P417670100424000857.Spec : Prop :=
  ∀ n, P417670100424000857.a n = A134444 n

end A134444

/-! ## A134444.P4396212921819242731

`xor(2-gcd(2, comp[∑[4*n]]), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A134444.P4396212921819242731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A134444.P4396212921819242731

namespace A134444

/-- `xor(2-gcd(2, comp[∑[4*n]]), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P4396212921819242731.Spec : Prop :=
  ∀ n, P4396212921819242731.a n = A134444 n

end A134444

/-! ## A134444.P1213513752762685753

`comp[2*(n²+n)]%2+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A134444.P1213513752762685753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A134444.P1213513752762685753

namespace A134444

/-- `comp[2*(n²+n)]%2+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P1213513752762685753.Spec : Prop :=
  ∀ n, P1213513752762685753.a n = A134444 n

end A134444

/-! ## A134444.P9215337130777568354

`or(1, A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134444

/-- `or(1, A025581(n))` -/
def P9215337130777568354.Spec : Prop :=
  ∀ n, P9215337130777568354.a n = A134444 n

theorem P9215337130777568354.correct : P9215337130777568354.Spec := by
  intro n
  simp only [A134444]

end A134444

/-! ## A134444.P13066399989462461693

`or(1, log2(A130321(n)))`
-/

namespace A134444.P13066399989462461693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ)))

end

end A134444.P13066399989462461693

namespace A134444

/-- `or(1, log2(A130321(n)))` -/
def P13066399989462461693.Spec : Prop :=
  ∀ n, P13066399989462461693.a n = A134444 n

end A134444

/-! ## A134444.P13406269717864185230

`or(1, val(A036561(n), 2))`
-/

namespace A134444.P13406269717864185230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A134444.P13406269717864185230

namespace A134444

/-- `or(1, val(A036561(n), 2))` -/
def P13406269717864185230.Spec : Prop :=
  ∀ n, (P13406269717864185230.a n : ℤ) = A134444 n

end A134444

/-! ## A134444.P16897492222345652455

`2*A115514(n+1)-1`
-/

namespace A134444.P16897492222345652455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115514 (n + 1) - 1

end

end A134444.P16897492222345652455

namespace A134444

/-- `2*A115514(n+1)-1` -/
def P16897492222345652455.Spec : Prop :=
  ∀ n, P16897492222345652455.a n = A134444 n

end A134444

/-! ## A134444.P9616094323148744685

`or(1, A004736(n+1)-1)`
-/

namespace A134444.P9616094323148744685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004736 (n + 1) - 1)

end

end A134444.P9616094323148744685

namespace A134444

/-- `or(1, A004736(n+1)-1)` -/
def P9616094323148744685.Spec : Prop :=
  ∀ n, P9616094323148744685.a n = A134444 n

end A134444

/-! ## A134444.P13682661819160177690

`or(1, A057554(2*(n+1)))`
-/

namespace A134444.P13682661819160177690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057554 (2 * (n + 1)))

end

end A134444.P13682661819160177690

namespace A134444

/-- `or(1, A057554(2*(n+1)))` -/
def P13682661819160177690.Spec : Prop :=
  ∀ n, P13682661819160177690.a n = A134444 n

end A134444

/-! ## A134444.P9229613677686295101

`A004525(A099375(n))`
-/

namespace A134444.P9229613677686295101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A099375 n).toNat

end

end A134444.P9229613677686295101

namespace A134444

/-- `A004525(A099375(n))` -/
def P9229613677686295101.Spec : Prop :=
  ∀ n, P9229613677686295101.a n = A134444 n

end A134444

/-! ## A134444.P5808673089118188490

`A109613(A025581(n))`
-/

namespace A134444.P5808673089118188490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A025581 n).toNat

end

end A134444.P5808673089118188490

namespace A134444

/-- `A109613(A025581(n))` -/
def P5808673089118188490.Spec : Prop :=
  ∀ n, P5808673089118188490.a n = A134444 n

end A134444

/-! ## A134444.P12868890621715147250

`A121496(A104571(n))`
-/

namespace A134444.P12868890621715147250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 (A104571 n).toNat

end

end A134444.P12868890621715147250

namespace A134444

/-- `A121496(A104571(n))` -/
def P12868890621715147250.Spec : Prop :=
  ∀ n, P12868890621715147250.a n = A134444 n

end A134444

/-! ## A134444.P5686441098992113603

`A130823(A104568(n))`
-/

namespace A134444.P5686441098992113603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A104568 n).toNat

end

end A134444.P5686441098992113603

namespace A134444

/-- `A130823(A104568(n))` -/
def P5686441098992113603.Spec : Prop :=
  ∀ n, P5686441098992113603.a n = A134444 n

end A134444

/-! ## A134444.P2261429543169741684

`A106249(2*A025581(n))`
-/

namespace A134444.P2261429543169741684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * A025581 n).toNat

end

end A134444.P2261429543169741684

namespace A134444

/-- `A106249(2*A025581(n))` -/
def P2261429543169741684.Spec : Prop :=
  ∀ n, P2261429543169741684.a n = A134444 n

end A134444

/-! ## A134444.P13567406928235699304

`A109613(A004736(n+1)-1)`
-/

namespace A134444.P13567406928235699304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A004736 (n + 1) - 1).toNat

end

end A134444.P13567406928235699304

namespace A134444

/-- `A109613(A004736(n+1)-1)` -/
def P13567406928235699304.Spec : Prop :=
  ∀ n, P13567406928235699304.a n = A134444 n

end A134444

/-! ## A134444.P6068542491501640520

`A004277(A115514(n+1))-1`
-/

namespace A134444.P6068542491501640520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A115514 (n + 1)).toNat - 1

end

end A134444.P6068542491501640520

namespace A134444

/-- `A004277(A115514(n+1))-1` -/
def P6068542491501640520.Spec : Prop :=
  ∀ n, P6068542491501640520.a n = A134444 n

end A134444

/-!
# A134446: A128174 * A002260.

The programs for A134446, the canonical program `A134446.P11979990693566020530` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134446 has offset 1).

The definition of A134446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134446.P11979990693566020530

`A002260(n+1)*A115514(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134446

/-- `A002260(n+1)*A115514(n+1)` -/
def P11979990693566020530.Spec : Prop :=
  ∀ n, P11979990693566020530.a n = A134446 (n + 1)

theorem P11979990693566020530.correct : P11979990693566020530.Spec := by
  intro n
  simp only [A134446, Nat.add_sub_cancel]

end A134446

/-! ## A134446.P13637337740202524148

`(A002262(n)+1)*A115514(n+1)`
-/

namespace A134446.P13637337740202524148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A115514 (n + 1)

end

end A134446.P13637337740202524148

namespace A134446

/-- `(A002262(n)+1)*A115514(n+1)` -/
def P13637337740202524148.Spec : Prop :=
  ∀ n, P13637337740202524148.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P1295782663530585857

`(val(A054582(n), 4)+1)*A002260(n+1)`
-/

namespace A134446.P1295782663530585857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A054582 n).toNat 4 + 1 : ℤ) * A002260 (n + 1)

end

end A134446.P1295782663530585857

namespace A134446

/-- `(val(A054582(n), 4)+1)*A002260(n+1)` -/
def P1295782663530585857.Spec : Prop :=
  ∀ n, P1295782663530585857.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P6017448889167132250

`ceil(A004736(n+1)/2)*A002260(n+1)`
-/

namespace A134446.P6017448889167132250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004736 (n + 1) : ℚ) / 2⌉ * A002260 (n + 1)

end

end A134446.P6017448889167132250

namespace A134446

/-- `ceil(A004736(n+1)/2)*A002260(n+1)` -/
def P6017448889167132250.Spec : Prop :=
  ∀ n, P6017448889167132250.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P6634869594964753799

`ceil((A025581(n)+1)/2)*A002260(n+1)`
-/

namespace A134446.P6634869594964753799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025581 n + 1 : ℚ) / 2⌉ * A002260 (n + 1)

end

end A134446.P6634869594964753799

namespace A134446

/-- `ceil((A025581(n)+1)/2)*A002260(n+1)` -/
def P6634869594964753799.Spec : Prop :=
  ∀ n, P6634869594964753799.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P4042071391514559600

`A002260(n+1)*A008619(A025581(n))`
-/

namespace A134446.P4042071391514559600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008619 (A025581 n).toNat

end

end A134446.P4042071391514559600

namespace A134446

/-- `A002260(n+1)*A008619(A025581(n))` -/
def P4042071391514559600.Spec : Prop :=
  ∀ n, P4042071391514559600.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P10467648299289955226

`(A002262(n)+1)*A008619(A025581(n))`
-/

namespace A134446.P10467648299289955226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A008619 (A025581 n).toNat

end

end A134446.P10467648299289955226

namespace A134446

/-- `(A002262(n)+1)*A008619(A025581(n))` -/
def P10467648299289955226.Spec : Prop :=
  ∀ n, P10467648299289955226.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P13718935516304600012

`A002260(n+1)*A008621(A099375(n))`
-/

namespace A134446.P13718935516304600012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008621 (A099375 n).toNat

end

end A134446.P13718935516304600012

namespace A134446

/-- `A002260(n+1)*A008621(A099375(n))` -/
def P13718935516304600012.Spec : Prop :=
  ∀ n, P13718935516304600012.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P13082096393007609851

`A002260(n+1)*A008619(log2(A130321(n)))`
-/

namespace A134446.P13082096393007609851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008619 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A134446.P13082096393007609851

namespace A134446

/-- `A002260(n+1)*A008619(log2(A130321(n)))` -/
def P13082096393007609851.Spec : Prop :=
  ∀ n, P13082096393007609851.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P16615443973001946478

`A002260(n+1)*A065033(A004736(n+1))`
-/

namespace A134446.P16615443973001946478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A065033 (A004736 (n + 1)).toNat

end

end A134446.P16615443973001946478

namespace A134446

/-- `A002260(n+1)*A065033(A004736(n+1))` -/
def P16615443973001946478.Spec : Prop :=
  ∀ n, P16615443973001946478.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P7759703443971049089

`(A002262(n)+1)*A065033(A004736(n+1))`
-/

namespace A134446.P7759703443971049089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A065033 (A004736 (n + 1)).toNat

end

end A134446.P7759703443971049089

namespace A134446

/-- `(A002262(n)+1)*A065033(A004736(n+1))` -/
def P7759703443971049089.Spec : Prop :=
  ∀ n, P7759703443971049089.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P1790409909297568686

`A001057(A004736(n+1))*A140756(n+1)`
-/

namespace A134446.P1790409909297568686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004736 (n + 1)).toNat * A140756 (n + 1)

end

end A134446.P1790409909297568686

namespace A134446

/-- `A001057(A004736(n+1))*A140756(n+1)` -/
def P1790409909297568686.Spec : Prop :=
  ∀ n, P1790409909297568686.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P12563408489371145152

`A002260(n+1)*A004526(A004736(n+1)+1)`
-/

namespace A134446.P12563408489371145152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004526 (A004736 (n + 1) + 1).toNat

end

end A134446.P12563408489371145152

namespace A134446

/-- `A002260(n+1)*A004526(A004736(n+1)+1)` -/
def P12563408489371145152.Spec : Prop :=
  ∀ n, P12563408489371145152.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P3595215861165938742

`A002260(n+1)*A123108(A004736(n+1)+1)`
-/

namespace A134446.P3595215861165938742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A123108 (A004736 (n + 1) + 1).toNat

end

end A134446.P3595215861165938742

namespace A134446

/-- `A002260(n+1)*A123108(A004736(n+1)+1)` -/
def P3595215861165938742.Spec : Prop :=
  ∀ n, P3595215861165938742.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P15484295869407980946

`A002260(n+1)*A008619(A004736(n+1)-1)`
-/

namespace A134446.P15484295869407980946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008619 (A004736 (n + 1) - 1).toNat

end

end A134446.P15484295869407980946

namespace A134446

/-- `A002260(n+1)*A008619(A004736(n+1)-1)` -/
def P15484295869407980946.Spec : Prop :=
  ∀ n, P15484295869407980946.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P9657818455260435679

`A002260(n+1)*A008619(A057554(2*(n+1)))`
-/

namespace A134446.P9657818455260435679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008619 (A057554 (2 * (n + 1))).toNat

end

end A134446.P9657818455260435679

namespace A134446

/-- `A002260(n+1)*A008619(A057554(2*(n+1)))` -/
def P9657818455260435679.Spec : Prop :=
  ∀ n, P9657818455260435679.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P8611208146361679172

`A002260(n+1)*A065033(A003057(n+2)-A002260(n+1))`
-/

namespace A134446.P8611208146361679172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A065033 (A003057 (n + 2) - A002260 (n + 1)).toNat

end

end A134446.P8611208146361679172

namespace A134446

/-- `A002260(n+1)*A065033(A003057(n+2)-A002260(n+1))` -/
def P8611208146361679172.Spec : Prop :=
  ∀ n, P8611208146361679172.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P9356878060067809700

`A002260(n+1)*A008619(A004736(n+2)%A004736(n+1))`
-/

namespace A134446.P9356878060067809700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008619 (Int.tmod (A004736 (n + 2)) (A004736 (n + 1))).toNat

end

end A134446.P9356878060067809700

namespace A134446

/-- `A002260(n+1)*A008619(A004736(n+2)%A004736(n+1))` -/
def P9356878060067809700.Spec : Prop :=
  ∀ n, P9356878060067809700.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P3909000562120094597

`A211161(n+1)*A211161(comp[∑[n]])`
-/

namespace A134446.P3909000562120094597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211161 (n + 1) * A211161 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A134446.P3909000562120094597

namespace A134446

/-- `A211161(n+1)*A211161(comp[∑[n]])` -/
def P3909000562120094597.Spec : Prop :=
  ∀ n, P3909000562120094597.a n = A134446 (n + 1)

end A134446

/-! ## A134446.P5305384266728941485

`A008619(A025581(n))*A349520(2*n+1)`
-/

namespace A134446.P5305384266728941485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n).toNat * A349520 (2 * n + 1)

end

end A134446.P5305384266728941485

namespace A134446

/-- `A008619(A025581(n))*A349520(2*n+1)` -/
def P5305384266728941485.Spec : Prop :=
  ∀ n, P5305384266728941485.a n = A134446 (n + 1)

end A134446

/-!
# A134447: A002260 * A128174.

The programs for A134447, the canonical program `A134447.P15320589086750567618` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134447 has offset 1).

The definition of A134447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134447.P14169347661159813877

`ceil((C(comp[∑[n]]-n, 2)-n)/2)*A008619(n-C(∑[char[∑[n+1]]], 2))`
-/

namespace A134447.P14169347661159813877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) / 2⌉ * A008619 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2)

end

end A134447.P14169347661159813877

namespace A134447

/-- `ceil((C(comp[∑[n]]-n, 2)-n)/2)*A008619(n-C(∑[char[∑[n+1]]], 2))` -/
def P14169347661159813877.Spec : Prop :=
  ∀ n, P14169347661159813877.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P15320589086750567618

`A008619(A051162(n))*A115514(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134447

/-- `A008619(A051162(n))*A115514(n+1)` -/
def P15320589086750567618.Spec : Prop :=
  ∀ n, P15320589086750567618.a n = A134447 (n + 1)

theorem P15320589086750567618.correct : P15320589086750567618.Spec := by
  intro n
  simp only [A134447, Nat.add_sub_cancel]

end A134447

/-! ## A134447.P16990672129683538651

`A008619(A134478(n))*A115514(n+1)`
-/

namespace A134447.P16990672129683538651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A134478 n).toNat * A115514 (n + 1)

end

end A134447.P16990672129683538651

namespace A134447

/-- `A008619(A134478(n))*A115514(n+1)` -/
def P16990672129683538651.Spec : Prop :=
  ∀ n, P16990672129683538651.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P12992773119889715913

`A004526(A108872(n+1))*A115514(n+1)`
-/

namespace A134447.P12992773119889715913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A108872 (n + 1)).toNat * A115514 (n + 1)

end

end A134447.P12992773119889715913

namespace A134447

/-- `A004526(A108872(n+1))*A115514(n+1)` -/
def P12992773119889715913.Spec : Prop :=
  ∀ n, P12992773119889715913.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P8388493392283738386

`A002260(A115514(n+1)+n)*A115514(n+1)`
-/

namespace A134447.P8388493392283738386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A115514 (n + 1) + (n : ℤ)).toNat * A115514 (n + 1)

end

end A134447.P8388493392283738386

namespace A134447

/-- `A002260(A115514(n+1)+n)*A115514(n+1)` -/
def P8388493392283738386.Spec : Prop :=
  ∀ n, P8388493392283738386.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P3173856806886225278

`(A115514(n+1)+A002262(n))*A115514(n+1)`
-/

namespace A134447.P3173856806886225278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115514 (n + 1) + A002262 n) * A115514 (n + 1)

end

end A134447.P3173856806886225278

namespace A134447

/-- `(A115514(n+1)+A002262(n))*A115514(n+1)` -/
def P3173856806886225278.Spec : Prop :=
  ∀ n, P3173856806886225278.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P7450424477793055777

`A128179(n+1)+A128590(n+1)-A211161(n+1)`
-/

namespace A134447.P7450424477793055777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128179 (n + 1) + (A128590 (n + 1) - A211161 (n + 1))

end

end A134447.P7450424477793055777

namespace A134447

/-- `A128179(n+1)+A128590(n+1)-A211161(n+1)` -/
def P7450424477793055777.Spec : Prop :=
  ∀ n, P7450424477793055777.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P11915275072373577286

`A008619(A025581(n))*A008619(A051162(n))`
-/

namespace A134447.P11915275072373577286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n).toNat * A008619 (A051162 n).toNat

end

end A134447.P11915275072373577286

namespace A134447

/-- `A008619(A025581(n))*A008619(A051162(n))` -/
def P11915275072373577286.Spec : Prop :=
  ∀ n, P11915275072373577286.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P12712265693439820028

`A065033(A004736(n+1))*A065033(A094727(n+1))`
-/

namespace A134447.P12712265693439820028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004736 (n + 1)).toNat * A065033 (A094727 (n + 1)).toNat

end

end A134447.P12712265693439820028

namespace A134447

/-- `A065033(A004736(n+1))*A065033(A094727(n+1))` -/
def P12712265693439820028.Spec : Prop :=
  ∀ n, P12712265693439820028.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P2462944698204537039

`A243866(A093995(n+1)+A063656(n))`
-/

namespace A134447.P2462944698204537039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243866 (A093995 (n + 1) + A063656 n).toNat

end

end A134447.P2462944698204537039

namespace A134447

/-- `A243866(A093995(n+1)+A063656(n))` -/
def P2462944698204537039.Spec : Prop :=
  ∀ n, P2462944698204537039.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P6253627568773359003

`A243866(A185868(n+1)+A025581(n))`
-/

namespace A134447.P6253627568773359003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243866 (A185868 (n + 1) + A025581 n).toNat

end

end A134447.P6253627568773359003

namespace A134447

/-- `A243866(A185868(n+1)+A025581(n))` -/
def P6253627568773359003.Spec : Prop :=
  ∀ n, P6253627568773359003.a n = A134447 (n + 1)

end A134447

/-! ## A134447.P16388120413239827108

`A269837(A246694(n)-1)`
-/

namespace A134447.P16388120413239827108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269837 (A246694 n - 1).toNat

end

end A134447.P16388120413239827108

namespace A134447

/-- `A269837(A246694(n)-1)` -/
def P16388120413239827108.Spec : Prop :=
  ∀ n, P16388120413239827108.a n = A134447 (n + 1)

end A134447

/-!
# A134448: 

The programs for A134448, there is no canonical definition to state claims against.
-/

/-! ## A134448.P10566157092731679504

`5*A134450(n+1)²`
-/

namespace A134448.P10566157092731679504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A134450 (n + 1) ^ 2

end

end A134448.P10566157092731679504

/-!
# A134449: Sum of even products minus sum of odd products of different pairs of numbers from 1 to n.

The programs for A134449, the canonical program `A134449.P1567331003036363513` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134449 has offset 1).

The definition of A134449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134449.P1567331003036363513

`∑[(lcm(2, n)-(n-1))*∑[n]]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134449

/-- `∑[(lcm(2, n)-(n-1))*∑[n]]` -/
def P1567331003036363513.Spec : Prop :=
  ∀ n, P1567331003036363513.a n = A134449 (n + 1)

theorem P1567331003036363513.correct : P1567331003036363513.Spec := by
  intro n
  simp only [A134449, Nat.add_sub_cancel]

end A134449

/-! ## A134449.P13619321502660204107

`∑[(n+1)^(n%2)*∑[n]]`
-/

namespace A134449.P13619321502660204107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n % 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134449.P13619321502660204107

namespace A134449

/-- `∑[(n+1)^(n%2)*∑[n]]` -/
def P13619321502660204107.Spec : Prop :=
  ∀ n, (P13619321502660204107.a n : ℤ) = A134449 (n + 1)

end A134449

/-! ## A134449.P8418178922195459236

`∑[(C(n, xor(1, n))+1)*∑[n]]`
-/

namespace A134449.P8418178922195459236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.xor 1 n) + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134449.P8418178922195459236

namespace A134449

/-- `∑[(C(n, xor(1, n))+1)*∑[n]]` -/
def P8418178922195459236.Spec : Prop :=
  ∀ n, (P8418178922195459236.a n : ℤ) = A134449 (n + 1)

end A134449

/-! ## A134449.P2632448815940727057

`∑[∏{d}[n+1, C(n+1, C(2, #))]]`
-/

namespace A134449.P2632448815940727057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), Nat.choose (n + 1) (Nat.choose 2 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134449.P2632448815940727057

namespace A134449

/-- `∑[∏{d}[n+1, C(n+1, C(2, #))]]` -/
def P2632448815940727057.Spec : Prop :=
  ∀ n, (P2632448815940727057.a n : ℤ) = A134449 (n + 1)

end A134449

/-! ## A134449.P11309171359775884498

`∑[gcd(n+1, (n+1)%2)*∑[n]]`
-/

namespace A134449.P11309171359775884498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) ((n + 1) % 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134449.P11309171359775884498

namespace A134449

/-- `∑[gcd(n+1, (n+1)%2)*∑[n]]` -/
def P11309171359775884498.Spec : Prop :=
  ∀ n, (P11309171359775884498.a n : ℤ) = A134449 (n + 1)

end A134449

/-! ## A134449.P11479199588776706522

`∑[(n+1)*gcd(a(n-1)+n, ∑[n])]` with `a(0)=0`
-/

namespace A134449.P11479199588776706522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1) * Nat.gcd (f1 (n - 1) + n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134449.P11479199588776706522

namespace A134449

/-- `∑[(n+1)*gcd(a(n-1)+n, ∑[n])]` -/
def P11479199588776706522.Spec : Prop :=
  ∀ n, (P11479199588776706522.a n : ℤ) = A134449 (n + 1)

end A134449

/-! ## A134449.P15399499967110164566

`∑[gcd(n+1, A007590(n))*∑[n]]`
-/

namespace A134449.P15399499967110164566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007590 n) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134449.P15399499967110164566

namespace A134449

/-- `∑[gcd(n+1, A007590(n))*∑[n]]` -/
def P15399499967110164566.Spec : Prop :=
  ∀ n, (P15399499967110164566.a n : ℤ) = A134449 (n + 1)

end A134449

/-! ## A134449.P9940487230509661798

`∑[lcm((n+1)*A001057(n), ∑[n])]`
-/

namespace A134449.P9940487230509661798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) * A001057 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134449.P9940487230509661798

namespace A134449

/-- `∑[lcm((n+1)*A001057(n), ∑[n])]` -/
def P9940487230509661798.Spec : Prop :=
  ∀ n, (P9940487230509661798.a n : ℤ) = A134449 (n + 1)

end A134449

/-! ## A134449.P13073013868500500858

`∑[n/2*A065679(n+1)]`
-/

namespace A134449.P13073013868500500858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A065679 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134449.P13073013868500500858

namespace A134449

/-- `∑[n/2*A065679(n+1)]` -/
def P13073013868500500858.Spec : Prop :=
  ∀ n, P13073013868500500858.a n = (A134449 (n + 1) : ℚ)

end A134449

/-! ## A134449.P1590276423842211084

`∑[∑[n]*A124625(n+2)]`
-/

namespace A134449.P1590276423842211084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A124625 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134449.P1590276423842211084

namespace A134449

/-- `∑[∑[n]*A124625(n+2)]` -/
def P1590276423842211084.Spec : Prop :=
  ∀ n, P1590276423842211084.a n = A134449 (n + 1)

end A134449

/-!
# A134451: Ternary digital root of n.

The programs for A134451, the canonical program `A134451.P12605129592745265341` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134451 has offset 0).

The definition of A134451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134451.P12605129592745265341

`a(A053735(n))` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134451

/-- `a(A053735(n))` -/
def P12605129592745265341.Spec : Prop :=
  ∀ n, (P12605129592745265341.a n : ℤ) = A134451 n

theorem P12605129592745265341.correct : P12605129592745265341.Spec := by
  intro n
  simp only [A134451]

end A134451

/-!
# A134452: Balanced ternary digital root of n.

The programs for A134452, the canonical program `A134452.P3090733538934837598` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134452 has offset 0).

The definition of A134452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134452.P18348322146291733374

`A188510(A229115(n+1)-A065363(n))`
-/

namespace A134452.P18348322146291733374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A229115 (n + 1) - A065363 n).toNat

end

end A134452.P18348322146291733374

namespace A134452

/-- `A188510(A229115(n+1)-A065363(n))` -/
def P18348322146291733374.Spec : Prop :=
  ∀ n, P18348322146291733374.a n = A134452 n

end A134452

/-! ## A134452.P3090733538934837598

`A257170(A229115(n+1)-A065363(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134452

/-- `A257170(A229115(n+1)-A065363(n))` -/
def P3090733538934837598.Spec : Prop :=
  ∀ n, P3090733538934837598.a n = A134452 n

theorem P3090733538934837598.correct : P3090733538934837598.Spec := by
  intro n
  simp only [A134452]

end A134452

/-! ## A134452.P14793508571563102457

`A188510(A229115(n+1)-(n-∑[2*A253786(n)]))`
-/

namespace A134452.P14793508571563102457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A229115 (n + 1) - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A134452.P14793508571563102457

namespace A134452

/-- `A188510(A229115(n+1)-(n-∑[2*A253786(n)]))` -/
def P14793508571563102457.Spec : Prop :=
  ∀ n, P14793508571563102457.a n = A134452 n

end A134452

/-! ## A134452.P18102639907288116402

`A257170(A229115(n+1)-(n-∑[2*A253786(n)]))`
-/

namespace A134452.P18102639907288116402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (A229115 (n + 1) - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A134452.P18102639907288116402

namespace A134452

/-- `A257170(A229115(n+1)-(n-∑[2*A253786(n)]))` -/
def P18102639907288116402.Spec : Prop :=
  ∀ n, P18102639907288116402.a n = A134452 n

end A134452

/-! ## A134452.P14328917485747773229

`A188510(A229115(n+1)+A000989(n)-A089643(n))`
-/

namespace A134452.P14328917485747773229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A229115 (n + 1) + (A000989 n - A089643 n)).toNat

end

end A134452.P14328917485747773229

namespace A134452

/-- `A188510(A229115(n+1)+A000989(n)-A089643(n))` -/
def P14328917485747773229.Spec : Prop :=
  ∀ n, P14328917485747773229.a n = A134452 n

end A134452

/-! ## A134452.P2861658412763033391

`A257170(A229115(n+1)+A000989(n)-A089643(n))`
-/

namespace A134452.P2861658412763033391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (A229115 (n + 1) + (A000989 n - A089643 n)).toNat

end

end A134452.P2861658412763033391

namespace A134452

/-- `A257170(A229115(n+1)+A000989(n)-A089643(n))` -/
def P2861658412763033391.Spec : Prop :=
  ∀ n, P2861658412763033391.a n = A134452 n

end A134452

/-! ## A134452.P6366427112140738034

`A188510(A229115(n+1)+A134022(n)-A134024(n))`
-/

namespace A134452.P6366427112140738034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A229115 (n + 1) + (A134022 n - A134024 n)).toNat

end

end A134452.P6366427112140738034

namespace A134452

/-- `A188510(A229115(n+1)+A134022(n)-A134024(n))` -/
def P6366427112140738034.Spec : Prop :=
  ∀ n, P6366427112140738034.a n = A134452 n

end A134452

/-! ## A134452.P3573232433211978883

`A257170(A229115(n+1)+A134022(n)-A134024(n))`
-/

namespace A134452.P3573232433211978883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (A229115 (n + 1) + (A134022 n - A134024 n)).toNat

end

end A134452.P3573232433211978883

namespace A134452

/-- `A257170(A229115(n+1)+A134022(n)-A134024(n))` -/
def P3573232433211978883.Spec : Prop :=
  ∀ n, P3573232433211978883.a n = A134452 n

end A134452

/-! ## A134452.P2170007873917860236

`A188510(A229115(n+1)-(2*A089643(n)-A053735(n)))`
-/

namespace A134452.P2170007873917860236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A229115 (n + 1) - (2 * A089643 n - A053735 n)).toNat

end

end A134452.P2170007873917860236

namespace A134452

/-- `A188510(A229115(n+1)-(2*A089643(n)-A053735(n)))` -/
def P2170007873917860236.Spec : Prop :=
  ∀ n, P2170007873917860236.a n = A134452 n

end A134452

/-! ## A134452.P8680609747263590695

`A188510(A065363(n)+2*A229115(n+1))`
-/

namespace A134452.P8680609747263590695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A065363 n + 2 * A229115 (n + 1)).toNat

end

end A134452.P8680609747263590695

namespace A134452

/-- `A188510(A065363(n)+2*A229115(n+1))` -/
def P8680609747263590695.Spec : Prop :=
  ∀ n, P8680609747263590695.a n = A134452 n

end A134452

/-! ## A134452.P15524568697311323821

`A257170(A065363(n)+2*A229115(n+1))`
-/

namespace A134452.P15524568697311323821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (A065363 n + 2 * A229115 (n + 1)).toNat

end

end A134452.P15524568697311323821

namespace A134452

/-- `A257170(A065363(n)+2*A229115(n+1))` -/
def P15524568697311323821.Spec : Prop :=
  ∀ n, P15524568697311323821.a n = A134452 n

end A134452

/-! ## A134452.P12585319063388574629

`A188510(A229115(n+1)+A229115(n+1)+A065363(n))`
-/

namespace A134452.P12585319063388574629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A229115 (n + 1) + (A229115 (n + 1) + A065363 n)).toNat

end

end A134452.P12585319063388574629

namespace A134452

/-- `A188510(A229115(n+1)+A229115(n+1)+A065363(n))` -/
def P12585319063388574629.Spec : Prop :=
  ∀ n, P12585319063388574629.a n = A134452 n

end A134452

/-! ## A134452.P10964842264286735470

`A257170(A229115(n+1)+A229115(n+1)+A065363(n))`
-/

namespace A134452.P10964842264286735470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (A229115 (n + 1) + (A229115 (n + 1) + A065363 n)).toNat

end

end A134452.P10964842264286735470

namespace A134452

/-- `A257170(A229115(n+1)+A229115(n+1)+A065363(n))` -/
def P10964842264286735470.Spec : Prop :=
  ∀ n, P10964842264286735470.a n = A134452 n

end A134452

/-! ## A134452.P4951305191433746155

`A065363(n)%A020639(A237520(n))`
-/

namespace A134452.P4951305191433746155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065363 n) (A020639 (A237520 n).toNat)

end

end A134452.P4951305191433746155

namespace A134452

/-- `A065363(n)%A020639(A237520(n))` -/
def P4951305191433746155.Spec : Prop :=
  ∀ n, P4951305191433746155.a n = A134452 n

end A134452

/-! ## A134452.P1331327192365324803

`(A053735(2*n)-A053735(n))%A020639(4*A256408(n+1))`
-/

namespace A134452.P1331327192365324803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 (2 * n) - A053735 n) (A020639 (4 * A256408 (n + 1)).toNat)

end

end A134452.P1331327192365324803

namespace A134452

/-- `(A053735(2*n)-A053735(n))%A020639(4*A256408(n+1))` -/
def P1331327192365324803.Spec : Prop :=
  ∀ n, P1331327192365324803.a n = A134452 n

end A134452

/-! ## A134452.P7189423248327957650

`(A065363(n)*A087242(n+1))%2`
-/

namespace A134452.P7189423248327957650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065363 n * A087242 (n + 1)) 2

end

end A134452.P7189423248327957650

namespace A134452

/-- `(A065363(n)*A087242(n+1))%2` -/
def P7189423248327957650.Spec : Prop :=
  ∀ n, P7189423248327957650.a n = A134452 n

end A134452

/-! ## A134452.P12721449993856058267

`(A065363(n)*A081350(A081350(n)))%2`
-/

namespace A134452.P12721449993856058267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065363 n * A081350 (A081350 n).toNat) 2

end

end A134452.P12721449993856058267

namespace A134452

/-- `(A065363(n)*A081350(A081350(n)))%2` -/
def P12721449993856058267.Spec : Prop :=
  ∀ n, P12721449993856058267.a n = A134452 n

end A134452

/-!
# A134453: Numbers m such that the digital root in balanced ternary representation equals -1.

The programs for A134453, the canonical program `A134453.P14282000105266514445` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134453 has offset 1).

The definition of A134453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134453.P14282000105266514445

`lt[A134452(n), 0]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134453

/-- `lt[A134452(n), 0]` -/
def P14282000105266514445.Spec : Prop :=
  ∀ n, (P14282000105266514445.a n : ℤ) = A134453 (n + 1)

theorem P14282000105266514445.correct : P14282000105266514445.Spec := by
  intro n
  simp only [A134453, Nat.add_sub_cancel]

end A134453

/-! ## A134453.P4848697249098724436

`eq[A033999(n), A134452(n)]`
-/

namespace A134453.P4848697249098724436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134453.P4848697249098724436

namespace A134453

/-- `eq[A033999(n), A134452(n)]` -/
def P4848697249098724436.Spec : Prop :=
  ∀ n, (P4848697249098724436.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P3764195202985671572

`eq[A081729(n), A134452(n)]`
-/

namespace A134453.P3764195202985671572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134453.P3764195202985671572

namespace A134453

/-- `eq[A081729(n), A134452(n)]` -/
def P3764195202985671572.Spec : Prop :=
  ∀ n, (P3764195202985671572.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P2207293181323562148

`eq[A134452(n), A164117(n)]`
-/

namespace A134453.P2207293181323562148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134453.P2207293181323562148

namespace A134453

/-- `eq[A134452(n), A164117(n)]` -/
def P2207293181323562148.Spec : Prop :=
  ∀ n, (P2207293181323562148.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P2795653999322118403

`eq[A134452(n), A260196(n)]`
-/

namespace A134453.P2795653999322118403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134453.P2795653999322118403

namespace A134453

/-- `eq[A134452(n), A260196(n)]` -/
def P2795653999322118403.Spec : Prop :=
  ∀ n, (P2795653999322118403.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P6466439712799991127

`eq[A134452(n), A280193(n)]`
-/

namespace A134453.P6466439712799991127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134453.P6466439712799991127

namespace A134453

/-- `eq[A134452(n), A280193(n)]` -/
def P6466439712799991127.Spec : Prop :=
  ∀ n, (P6466439712799991127.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P17293532554780733791

`eq[A134452(n), A153881(n+1)]`
-/

namespace A134453.P17293532554780733791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134453.P17293532554780733791

namespace A134453

/-- `eq[A134452(n), A153881(n+1)]` -/
def P17293532554780733791.Spec : Prop :=
  ∀ n, (P17293532554780733791.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P13876527492860243950

`eq[A134452(n), A168361(n+1)]`
-/

namespace A134453.P13876527492860243950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134453.P13876527492860243950

namespace A134453

/-- `eq[A134452(n), A168361(n+1)]` -/
def P13876527492860243950.Spec : Prop :=
  ∀ n, (P13876527492860243950.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P8024285438509066156

`eq[2, A010127(n)-A134452(n)]`
-/

namespace A134453.P8024285438509066156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P8024285438509066156

namespace A134453

/-- `eq[2, A010127(n)-A134452(n)]` -/
def P8024285438509066156.Spec : Prop :=
  ∀ n, (P8024285438509066156.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P10931597841711982060

`eq[2, A010130(n)-A134452(n)]`
-/

namespace A134453.P10931597841711982060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P10931597841711982060

namespace A134453

/-- `eq[2, A010130(n)-A134452(n)]` -/
def P10931597841711982060.Spec : Prop :=
  ∀ n, (P10931597841711982060.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P12673324286713383666

`eq[2, A010132(n)-A134452(n)]`
-/

namespace A134453.P12673324286713383666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P12673324286713383666

namespace A134453

/-- `eq[2, A010132(n)-A134452(n)]` -/
def P12673324286713383666.Spec : Prop :=
  ∀ n, (P12673324286713383666.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P10143135966149307447

`eq[2, A010137(n)-A134452(n)]`
-/

namespace A134453.P10143135966149307447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P10143135966149307447

namespace A134453

/-- `eq[2, A010137(n)-A134452(n)]` -/
def P10143135966149307447.Spec : Prop :=
  ∀ n, (P10143135966149307447.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P9899556705320500204

`eq[2, A010146(n)-A134452(n)]`
-/

namespace A134453.P9899556705320500204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P9899556705320500204

namespace A134453

/-- `eq[2, A010146(n)-A134452(n)]` -/
def P9899556705320500204.Spec : Prop :=
  ∀ n, (P9899556705320500204.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P33674441912352230

`eq[2, A010153(n)-A134452(n)]`
-/

namespace A134453.P33674441912352230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P33674441912352230

namespace A134453

/-- `eq[2, A010153(n)-A134452(n)]` -/
def P33674441912352230.Spec : Prop :=
  ∀ n, (P33674441912352230.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P9221025236091313452

`eq[2, A010156(n)-A134452(n)]`
-/

namespace A134453.P9221025236091313452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P9221025236091313452

namespace A134453

/-- `eq[2, A010156(n)-A134452(n)]` -/
def P9221025236091313452.Spec : Prop :=
  ∀ n, (P9221025236091313452.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P8195067335330525519

`eq[2, A010157(n)-A134452(n)]`
-/

namespace A134453.P8195067335330525519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P8195067335330525519

namespace A134453

/-- `eq[2, A010157(n)-A134452(n)]` -/
def P8195067335330525519.Spec : Prop :=
  ∀ n, (P8195067335330525519.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P3157653593811842464

`eq[2, A010167(n)-A134452(n)]`
-/

namespace A134453.P3157653593811842464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P3157653593811842464

namespace A134453

/-- `eq[2, A010167(n)-A134452(n)]` -/
def P3157653593811842464.Spec : Prop :=
  ∀ n, (P3157653593811842464.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P5734113370967696428

`eq[2, A010169(n)-A134452(n)]`
-/

namespace A134453.P5734113370967696428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P5734113370967696428

namespace A134453

/-- `eq[2, A010169(n)-A134452(n)]` -/
def P5734113370967696428.Spec : Prop :=
  ∀ n, (P5734113370967696428.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P14558903559354949405

`eq[2, A010170(n)-A134452(n)]`
-/

namespace A134453.P14558903559354949405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P14558903559354949405

namespace A134453

/-- `eq[2, A010170(n)-A134452(n)]` -/
def P14558903559354949405.Spec : Prop :=
  ∀ n, (P14558903559354949405.a n : ℤ) = A134453 (n + 1)

end A134453

/-! ## A134453.P11615660457541558059

`eq[2, A010184(n)-A134452(n)]`
-/

namespace A134453.P11615660457541558059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010184 n - A134452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134453.P11615660457541558059

namespace A134453

/-- `eq[2, A010184(n)-A134452(n)]` -/
def P11615660457541558059.Spec : Prop :=
  ∀ n, (P11615660457541558059.a n : ℤ) = A134453 (n + 1)

end A134453

/-!
# A134454: Numbers m such that the digital root in balanced ternary representation equals +1.

The programs for A134454, the canonical program `A134454.P11482993315645850512` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134454 has offset 1).

The definition of A134454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134454.P11482993315645850512

`lt[0, A134452(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134454

/-- `lt[0, A134452(n)]` -/
def P11482993315645850512.Spec : Prop :=
  ∀ n, (P11482993315645850512.a n : ℤ) = A134454 (n + 1)

theorem P11482993315645850512.correct : P11482993315645850512.Spec := by
  intro n
  simp only [A134454, Nat.add_sub_cancel]

end A134454

/-! ## A134454.P14617625391342483640

`eq[1, A134452(3*n)]`
-/

namespace A134454.P14617625391342483640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134454.P14617625391342483640

namespace A134454

/-- `eq[1, A134452(3*n)]` -/
def P14617625391342483640.Spec : Prop :=
  ∀ n, (P14617625391342483640.a n : ℤ) = A134454 (n + 1)

end A134454

/-! ## A134454.P3119794189577616782

`eq[1, A134452(n+1)]+1`
-/

namespace A134454.P3119794189577616782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134454.P3119794189577616782

namespace A134454

/-- `eq[1, A134452(n+1)]+1` -/
def P3119794189577616782.Spec : Prop :=
  ∀ n, (P3119794189577616782.a n : ℤ) = A134454 (n + 1)

end A134454

/-! ## A134454.P498110959204276119

`A000027(eq[1, A134452(n)])`
-/

namespace A134454.P498110959204276119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134454.P498110959204276119

namespace A134454

/-- `A000027(eq[1, A134452(n)])` -/
def P498110959204276119.Spec : Prop :=
  ∀ n, P498110959204276119.a n = A134454 (n + 1)

end A134454

/-! ## A134454.P16563331158205819184

`A249811(eq[1, A134452(n)])`
-/

namespace A134454.P16563331158205819184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A134454.P16563331158205819184

namespace A134454

/-- `A249811(eq[1, A134452(n)])` -/
def P16563331158205819184.Spec : Prop :=
  ∀ n, P16563331158205819184.a n = A134454 (n + 1)

end A134454

/-! ## A134454.P11139929914467990703

`eq[A134452(n), A329696(n)]`
-/

namespace A134454.P11139929914467990703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134454.P11139929914467990703

namespace A134454

/-- `eq[A134452(n), A329696(n)]` -/
def P11139929914467990703.Spec : Prop :=
  ∀ n, (P11139929914467990703.a n : ℤ) = A134454 (n + 1)

end A134454

/-! ## A134454.P9351637360538073184

`eq[A134452(n), A134761(n)]`
-/

namespace A134454.P9351637360538073184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134454.P9351637360538073184

namespace A134454

/-- `eq[A134452(n), A134761(n)]` -/
def P9351637360538073184.Spec : Prop :=
  ∀ n, (P9351637360538073184.a n : ℤ) = A134454 (n + 1)

end A134454

/-! ## A134454.P5901045392529727538

`eq[A134452(n), A166752(n)]`
-/

namespace A134454.P5901045392529727538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134454.P5901045392529727538

namespace A134454

/-- `eq[A134452(n), A166752(n)]` -/
def P5901045392529727538.Spec : Prop :=
  ∀ n, (P5901045392529727538.a n : ℤ) = A134454 (n + 1)

end A134454

/-! ## A134454.P13172048595160722693

`eq[A134452(n), A157780(n)]`
-/

namespace A134454.P13172048595160722693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134454.P13172048595160722693

namespace A134454

/-- `eq[A134452(n), A157780(n)]` -/
def P13172048595160722693.Spec : Prop :=
  ∀ n, (P13172048595160722693.a n : ℤ) = A134454 (n + 1)

end A134454

/-! ## A134454.P18149046137923638229

`eq[1, and(A052899(n), A065363(n))]`
-/

namespace A134454.P18149046137923638229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052899 n) (A065363 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134454.P18149046137923638229

namespace A134454

/-- `eq[1, and(A052899(n), A065363(n))]` -/
def P18149046137923638229.Spec : Prop :=
  ∀ n, (P18149046137923638229.a n : ℤ) = A134454 (n + 1)

end A134454

/-!
# A134455: a(0) = a(1) = 1, a(2) = 2; a(n) = 2*a(n-2) + a(n-1)*a(n-3).

The programs for A134455, there is no canonical definition to state claims against.
-/

/-! ## A134455.P1055170546352297441

`2*a(n-2)+a(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A134455.P1055170546352297441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 2) + a (n - 1) * a (n - 3)

end

end A134455.P1055170546352297441

/-! ## A134455.P8588643804599203201

`or(A004528(n), A030102(A053625(n)))`
-/

namespace A134455.P8588643804599203201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004528 n) (A030102 (A053625 n).toNat)

end

end A134455.P8588643804599203201

/-! ## A134455.P13612077091258945068

`∑{d}[C((1-n)²+n, n), gcd(n, #)]`
-/

namespace A134455.P13612077091258945068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d

end

end A134455.P13612077091258945068

/-!
# A134458: First differences of A000043.

The programs for A134458, there is no canonical definition to state claims against.
-/

/-! ## A134458.P6066346741343762720

`Δ[A000043(n+1)]`
-/

namespace A134458.P6066346741343762720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134458.P6066346741343762720

/-! ## A134458.P9631530597996645776

`Δ[A050475(n+1)]`
-/

namespace A134458.P9631530597996645776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134458.P9631530597996645776

/-! ## A134458.P2369508239082948552

`Δ[A090748(n+1)]`
-/

namespace A134458.P2369508239082948552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134458.P2369508239082948552

/-! ## A134458.P15224016262951842209

`Δ[A153798(n+1)]`
-/

namespace A134458.P15224016262951842209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134458.P15224016262951842209

/-! ## A134458.P17088077542812038825

`A157891(n+1)+1`
-/

namespace A134458.P17088077542812038825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157891 (n + 1) + 1

end

end A134458.P17088077542812038825

/-!
# A134459: Numbers n such that lcm(1,...,n-1) < lcm(1,...,n) < lcm(1,...,n+1).

The programs for A134459, there is no canonical definition to state claims against.
-/

/-! ## A134459.P7761901663547837200

`A006549(n+2)`
-/

namespace A134459.P7761901663547837200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006549 (n + 2)

end

end A134459.P7761901663547837200

/-! ## A134459.P3361642256054909045

`A164512(Δ[n²])`
-/

namespace A134459.P3361642256054909045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134459.P3361642256054909045

/-! ## A134459.P11707540803972351573

`A120430(n+2)-1`
-/

namespace A134459.P11707540803972351573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120430 (n + 2) - 1

end

end A134459.P11707540803972351573

/-! ## A134459.P12518541535558157355

`A164512(2*(n+1))-1`
-/

namespace A134459.P12518541535558157355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 (2 * (n + 1)) - 1

end

end A134459.P12518541535558157355

/-! ## A134459.P12947419774750007201

`record[A164512(abs(A009001(n)))]`
-/

namespace A134459.P12947419774750007201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164512 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134459.P12947419774750007201

/-!
# A134460: First differences of A067186.

The programs for A134460, there is no canonical definition to state claims against.
-/

/-! ## A134460.P12994301322417773821

`Δ[A067186(n+1)]`
-/

namespace A134460.P12994301322417773821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134460.P12994301322417773821

/-! ## A134460.P18337079832799795109

`Δ[A110872(n+1)/2]`
-/

namespace A134460.P18337079832799795109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110872 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134460.P18337079832799795109

/-! ## A134460.P2766267530972933884

`Δ[sqrt(A110873(n+1))/2]`
-/

namespace A134460.P2766267530972933884
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110873 (n + 1) : ℝ) / 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134460.P2766267530972933884

/-! ## A134460.P742254072598515137

`abs(Δ[A067186(-xor(n, -1))])`
-/

namespace A134460.P742254072598515137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067186 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A134460.P742254072598515137

/-! ## A134460.P10663222269362625948

`A001281(Δ[A110872(n+1)])`
-/

namespace A134460.P10663222269362625948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A134460.P10663222269362625948

/-! ## A134460.P16226677122965261825

`A004525(Δ[A110872(n+1)])`
-/

namespace A134460.P16226677122965261825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A134460.P16226677122965261825

/-! ## A134460.P12018047242912834706

`A004526(Δ[A110872(n+1)])`
-/

namespace A134460.P12018047242912834706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A134460.P12018047242912834706

/-! ## A134460.P1505901950220700619

`A026741(Δ[A110872(n+1)])`
-/

namespace A134460.P1505901950220700619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A134460.P1505901950220700619

/-! ## A134460.P15347165824604917

`A065033(Δ[A110872(n+1)])`
-/

namespace A134460.P15347165824604917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A134460.P15347165824604917

/-! ## A134460.P17015460309470436509

`A067186(n+2)-A067186(n+1)`
-/

namespace A134460.P17015460309470436509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067186 (n + 2) - A067186 (n + 1)

end

end A134460.P17015460309470436509

/-! ## A134460.P14241354956791801557

`Δ[eq[1, A129634(n)]]`
-/

namespace A134460.P14241354956791801557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129634 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A134460.P14241354956791801557

/-! ## A134460.P13583587650101900289

`Δ[A000463(A110872(n+1)+2)]`
-/

namespace A134460.P13583587650101900289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A110872 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134460.P13583587650101900289

/-! ## A134460.P2173508457595457039

`Δ[A080098(A129545(n+1))]`
-/

namespace A134460.P2173508457595457039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A129545 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134460.P2173508457595457039

/-!
# A134461: Expansion of (phi(x) * psi(-x))^4 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A134461, there is no canonical definition to state claims against.
-/

/-! ## A134461.P16923017010009955460

`(-1)^n*A030211(n)`
-/

namespace A134461.P16923017010009955460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A030211 n

end

end A134461.P16923017010009955460

/-! ## A134461.P18369973057107577401

`A030211(n)*A033999(n)`
-/

namespace A134461.P18369973057107577401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030211 n * A033999 n

end

end A134461.P18369973057107577401

/-! ## A134461.P18054980222622048402

`A030211(n)/∑[A280560(n)]`
-/

namespace A134461.P18054980222622048402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030211 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A134461.P18054980222622048402

/-! ## A134461.P6461408677797011014

`A030211(n)*A062157(n+1)`
-/

namespace A134461.P6461408677797011014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030211 n * A062157 (n + 1)

end

end A134461.P6461408677797011014

/-! ## A134461.P13271800234224285908

`A030211(n)/A009001(2*n)`
-/

namespace A134461.P13271800234224285908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030211 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A134461.P13271800234224285908

/-! ## A134461.P4074051180879511616

`A030211(n)/A033999(n+2)`
-/

namespace A134461.P4074051180879511616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030211 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A134461.P4074051180879511616

/-! ## A134461.P16713009303753962990

`A030211(n)*A097807(Δ[A004526(n)])`
-/

namespace A134461.P16713009303753962990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030211 n * A097807 (f1 (n + 1) - f1 n).toNat

end

end A134461.P16713009303753962990

/-! ## A134461.P5763735456385483691

`A030211(n)*A057077(xor(n, n+1))`
-/

namespace A134461.P5763735456385483691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030211 n * A057077 (Nat.xor n (n + 1))

end

end A134461.P5763735456385483691

/-! ## A134461.P2838595067979729363

`A030211(n)*A057077(2*n)`
-/

namespace A134461.P2838595067979729363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030211 n * A057077 (2 * n)

end

end A134461.P2838595067979729363

/-! ## A134461.P5717831320378494707

`A030211(n)*A087960(2*n)`
-/

namespace A134461.P5717831320378494707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030211 n * A087960 (2 * n)

end

end A134461.P5717831320378494707

/-! ## A134461.P3099585376425339607

`A030211(n)/A057077(A005843(n))`
-/

namespace A134461.P3099585376425339607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030211 n : ℚ) / (A057077 (A005843 n).toNat : ℚ)

end

end A134461.P3099585376425339607

/-! ## A134461.P12732470042218025031

`A030211(n)/A009531(A016921(n))`
-/

namespace A134461.P12732470042218025031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030211 n : ℚ) / (A009531 (A016921 n).toNat : ℚ)

end

end A134461.P12732470042218025031

/-!
# A134463: Values of k such that 5k^2 + 5k + 1 is a palindromic prime.

The programs for A134463, there is no canonical definition to state claims against.
-/

/-! ## A134463.P14519689778078907999

`round(sqrt(A134462(n+1)/5))`
-/

namespace A134463.P14519689778078907999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A134462 (n + 1) : ℚ) / 5 : ℝ))

end

end A134463.P14519689778078907999

/-!
# A134464: (A127648 * A000012 + A000012 * A127773) - A000012.

The programs for A134464, the canonical program `A134464.P6205349550978109766` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134464 has offset 1).

The definition of A134464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134464.P6491777670419678335

`A193973(n)-A077028(n)`
-/

namespace A134464.P6491777670419678335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n - A077028 n

end

end A134464.P6491777670419678335

namespace A134464

/-- `A193973(n)-A077028(n)` -/
def P6491777670419678335.Spec : Prop :=
  ∀ n, P6491777670419678335.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P6205349550978109766

`A112367(n)+A094727(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A134464

/-- `A112367(n)+A094727(n+1)` -/
def P6205349550978109766.Spec : Prop :=
  ∀ n, P6205349550978109766.a n = A134464 (n + 1)

theorem P6205349550978109766.correct : P6205349550978109766.Spec := by
  intro n
  simp only [A134464, Nat.add_sub_cancel]

end A134464

/-! ## A134464.P16497502311303227747

`A365582(n+1)+A279891(n)`
-/

namespace A134464.P16497502311303227747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365582 (n + 1) + A279891 n

end

end A134464.P16497502311303227747

namespace A134464

/-- `A365582(n+1)+A279891(n)` -/
def P16497502311303227747.Spec : Prop :=
  ∀ n, P16497502311303227747.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P16512192078766019093

`A007401(n+1)-A049780(n)`
-/

namespace A134464.P16512192078766019093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) - A049780 n

end

end A134464.P16512192078766019093

namespace A134464

/-- `A007401(n+1)-A049780(n)` -/
def P16512192078766019093.Spec : Prop :=
  ∀ n, P16512192078766019093.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P10517456788589367963

`A075362(n+1)-A087401(n)`
-/

namespace A134464.P10517456788589367963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A087401 n

end

end A134464.P10517456788589367963

namespace A134464

/-- `A075362(n+1)-A087401(n)` -/
def P10517456788589367963.Spec : Prop :=
  ∀ n, P10517456788589367963.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P9417816095491615335

`A131422(n+1)-A057944(n)`
-/

namespace A134464.P9417816095491615335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131422 (n + 1) - A057944 n

end

end A134464.P9417816095491615335

namespace A134464

/-- `A131422(n+1)-A057944(n)` -/
def P9417816095491615335.Spec : Prop :=
  ∀ n, P9417816095491615335.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P12102127861293013162

`∑[A010054(n)]+n-A049780(n)`
-/

namespace A134464.P12102127861293013162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A049780 n)

end

end A134464.P12102127861293013162

namespace A134464

/-- `∑[A010054(n)]+n-A049780(n)` -/
def P12102127861293013162.Spec : Prop :=
  ∀ n, P12102127861293013162.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P1354423959430590751

`A014132(n+1)-(A049780(n)+1)`
-/

namespace A134464.P1354423959430590751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - (A049780 n + 1)

end

end A134464.P1354423959430590751

namespace A134464

/-- `A014132(n+1)-(A049780(n)+1)` -/
def P1354423959430590751.Spec : Prop :=
  ∀ n, P1354423959430590751.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P17557641608854040306

`A154614(n+1)-A141419(n+1)`
-/

namespace A134464.P17557641608854040306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) - A141419 (n + 1)

end

end A134464.P17557641608854040306

namespace A134464

/-- `A154614(n+1)-A141419(n+1)` -/
def P17557641608854040306.Spec : Prop :=
  ∀ n, P17557641608854040306.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P3761676948402707545

`A217575(n+1)-A365904(n+1)`
-/

namespace A134464.P3761676948402707545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - A365904 (n + 1)

end

end A134464.P3761676948402707545

namespace A134464

/-- `A217575(n+1)-A365904(n+1)` -/
def P3761676948402707545.Spec : Prop :=
  ∀ n, P3761676948402707545.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P10027900000106020286

`A002024(n+1)+n-A049780(n)`
-/

namespace A134464.P10027900000106020286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + ((n : ℤ) - A049780 n)

end

end A134464.P10027900000106020286

namespace A134464

/-- `A002024(n+1)+n-A049780(n)` -/
def P10027900000106020286.Spec : Prop :=
  ∀ n, P10027900000106020286.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P17503569816889947757

`A131422(n+1)+A002262(n)-n`
-/

namespace A134464.P17503569816889947757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131422 (n + 1) + (A002262 n - (n : ℤ))

end

end A134464.P17503569816889947757

namespace A134464

/-- `A131422(n+1)+A002262(n)-n` -/
def P17503569816889947757.Spec : Prop :=
  ∀ n, P17503569816889947757.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P409266471756594935

`∑[A094727(n+1)]-n*A003056(n)`
-/

namespace A134464.P409266471756594935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * A003056 n

end

end A134464.P409266471756594935

namespace A134464

/-- `∑[A094727(n+1)]-n*A003056(n)` -/
def P409266471756594935.Spec : Prop :=
  ∀ n, P409266471756594935.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P7032923411341884852

`∑[A134868(n+1)-n*A010054(n)]`
-/

namespace A134464.P7032923411341884852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - (n : ℤ) * A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134464.P7032923411341884852

namespace A134464

/-- `∑[A134868(n+1)-n*A010054(n)]` -/
def P7032923411341884852.Spec : Prop :=
  ∀ n, P7032923411341884852.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P14843780122987529831

`A094727(n+1)+C(A002260(n+1), 2)`
-/

namespace A134464.P14843780122987529831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + (Nat.choose (A002260 (n + 1)).toNat 2 : ℤ)

end

end A134464.P14843780122987529831

namespace A134464

/-- `A094727(n+1)+C(A002260(n+1), 2)` -/
def P14843780122987529831.Spec : Prop :=
  ∀ n, P14843780122987529831.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P16424345693627727013

`A002024(n+1)+A000096(A002262(n))`
-/

namespace A134464.P16424345693627727013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A000096 (A002262 n).toNat

end

end A134464.P16424345693627727013

namespace A134464

/-- `A002024(n+1)+A000096(A002262(n))` -/
def P16424345693627727013.Spec : Prop :=
  ∀ n, P16424345693627727013.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P1546054046191135204

`A000096(A002262(n))+A003056(n)+1`
-/

namespace A134464.P1546054046191135204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A002262 n).toNat + (A003056 n + 1)

end

end A134464.P1546054046191135204

namespace A134464

/-- `A000096(A002262(n))+A003056(n)+1` -/
def P1546054046191135204.Spec : Prop :=
  ∀ n, P1546054046191135204.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P9720526804411466511

`A003056(n)+A000217(A002260(n+1))`
-/

namespace A134464.P9720526804411466511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000217 (A002260 (n + 1)).toNat

end

end A134464.P9720526804411466511

namespace A134464

/-- `A003056(n)+A000217(A002260(n+1))` -/
def P9720526804411466511.Spec : Prop :=
  ∀ n, P9720526804411466511.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P16874949398099496333

`A003056(n)+A000217(A002262(n)+1)`
-/

namespace A134464.P16874949398099496333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000217 (A002262 n + 1).toNat

end

end A134464.P16874949398099496333

namespace A134464

/-- `A003056(n)+A000217(A002262(n)+1)` -/
def P16874949398099496333.Spec : Prop :=
  ∀ n, P16874949398099496333.a n = A134464 (n + 1)

end A134464

/-! ## A134464.P7285392930064423941

`A000217(A002262(n))+A051162(n)+1`
-/

namespace A134464.P7285392930064423941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n).toNat + (A051162 n + 1)

end

end A134464.P7285392930064423941

namespace A134464

/-- `A000217(A002262(n))+A051162(n)+1` -/
def P7285392930064423941.Spec : Prop :=
  ∀ n, P7285392930064423941.a n = A134464 (n + 1)

end A134464

/-!
# A134465: Row sums of triangle A134464.

The programs for A134465, the canonical program `A134465.P16491643903936341346` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134465 has offset 1).

The definition of A134465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134465.P16491643903936341346

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=16, a(3)=32`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134465

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16491643903936341346.Spec : Prop :=
  ∀ n, P16491643903936341346.a n = A134465 (n + 1)

theorem P16491643903936341346.correct : P16491643903936341346.Spec := by
  intro n
  simp only [A134465, Nat.add_sub_cancel]

end A134465

/-! ## A134465.P5078828916004770756

`∑[∑[n+3]-2]`
-/

namespace A134465.P5078828916004770756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134465.P5078828916004770756

namespace A134465

/-- `∑[∑[n+3]-2]` -/
def P5078828916004770756.Spec : Prop :=
  ∀ n, P5078828916004770756.a n = A134465 (n + 1)

end A134465

/-! ## A134465.P10542657485201169440

`∑[2*n]+C(n+3, 3)`
-/

namespace A134465.P10542657485201169440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 3) 3

end

end A134465.P10542657485201169440

namespace A134465

/-- `∑[2*n]+C(n+3, 3)` -/
def P10542657485201169440.Spec : Prop :=
  ∀ n, (P10542657485201169440.a n : ℤ) = A134465 (n + 1)

end A134465

/-! ## A134465.P5755974418960545038

`C(n+3, 3)+n²+n`
-/

namespace A134465.P5755974418960545038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + (n ^ 2 + n)

end

end A134465.P5755974418960545038

namespace A134465

/-- `C(n+3, 3)+n²+n` -/
def P5755974418960545038.Spec : Prop :=
  ∀ n, (P5755974418960545038.a n : ℤ) = A134465 (n + 1)

end A134465

/-! ## A134465.P12064187697075369802

`ogf((1+2x-2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A134465.P12064187697075369802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -4, 6, -4, 1] n

end

end A134465.P12064187697075369802

namespace A134465

/-- `ogf((1+2x-2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P12064187697075369802.Spec : Prop :=
  ∀ n, P12064187697075369802.a n = A134465 (n + 1)

end A134465

/-! ## A134465.P9032906962029905529

`n*n+C(n+3, 3)+n`
-/

namespace A134465.P9032906962029905529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + (Nat.choose (n + 3) 3 + n)

end

end A134465.P9032906962029905529

namespace A134465

/-- `n*n+C(n+3, 3)+n` -/
def P9032906962029905529.Spec : Prop :=
  ∀ n, (P9032906962029905529.a n : ℤ) = A134465 (n + 1)

end A134465

/-! ## A134465.P13146261326421679582

`∑[∑[n+1]]+lcm(n, n+1)`
-/

namespace A134465.P13146261326421679582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n (n + 1)

end

end A134465.P13146261326421679582

namespace A134465

/-- `∑[∑[n+1]]+lcm(n, n+1)` -/
def P13146261326421679582.Spec : Prop :=
  ∀ n, (P13146261326421679582.a n : ℤ) = A134465 (n + 1)

end A134465

/-! ## A134465.P4151292417936800467

`∑[C(n+2, 2)+n]+∑[n]`
-/

namespace A134465.P4151292417936800467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A134465.P4151292417936800467

namespace A134465

/-- `∑[C(n+2, 2)+n]+∑[n]` -/
def P4151292417936800467.Spec : Prop :=
  ∀ n, (P4151292417936800467.a n : ℤ) = A134465 (n + 1)

end A134465

/-! ## A134465.P15970531297197372238

`∑[∑[n]]-∑[a(n-1)-3]` with `a(0)=-1`
-/

namespace A134465.P15970531297197372238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A134465.P15970531297197372238

namespace A134465

/-- `∑[∑[n]]-∑[a(n-1)-3]` -/
def P15970531297197372238.Spec : Prop :=
  ∀ n, P15970531297197372238.a n = A134465 (n + 1)

end A134465

/-! ## A134465.P17604543838939998473

`∑[xor(1, 2*n+1)]+∑[∑[n+1]]`
-/

namespace A134465.P17604543838939998473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A134465.P17604543838939998473

namespace A134465

/-- `∑[xor(1, 2*n+1)]+∑[∑[n+1]]` -/
def P17604543838939998473.Spec : Prop :=
  ∀ n, (P17604543838939998473.a n : ℤ) = A134465 (n + 1)

end A134465

/-! ## A134465.P15645646036951100372

`(n+3)*a(n-1)/n-(n-3)` with `a(0)=1`
-/

namespace A134465.P15645646036951100372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 3 : ℚ) * (a (n - 1) / (n : ℚ)) - ((n : ℤ) - 3 : ℚ)

end

end A134465.P15645646036951100372

namespace A134465

/-- `(n+3)*a(n-1)/n-(n-3)` -/
def P15645646036951100372.Spec : Prop :=
  ∀ n, P15645646036951100372.a n = (A134465 (n + 1) : ℚ)

end A134465

/-! ## A134465.P16937356241716590356

`∑[∑[n+1]+2*n]+and(1, 2*n)`
-/

namespace A134465.P16937356241716590356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n)

end

end A134465.P16937356241716590356

namespace A134465

/-- `∑[∑[n+1]+2*n]+and(1, 2*n)` -/
def P16937356241716590356.Spec : Prop :=
  ∀ n, (P16937356241716590356.a n : ℤ) = A134465 (n + 1)

end A134465

/-! ## A134465.P7801193274813450220

`∑[∑[n+1]]+(n+1)*gcd(n, 2*n)`
-/

namespace A134465.P7801193274813450220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * Nat.gcd n (2 * n)

end

end A134465.P7801193274813450220

namespace A134465

/-- `∑[∑[n+1]]+(n+1)*gcd(n, 2*n)` -/
def P7801193274813450220.Spec : Prop :=
  ∀ n, (P7801193274813450220.a n : ℤ) = A134465 (n + 1)

end A134465

/-! ## A134465.P15665116969766447550

`(n+1)²+∑[∑[(n+1)%(2*n+1)]]`
-/

namespace A134465.P15665116969766447550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134465.P15665116969766447550

namespace A134465

/-- `(n+1)²+∑[∑[(n+1)%(2*n+1)]]` -/
def P15665116969766447550.Spec : Prop :=
  ∀ n, (P15665116969766447550.a n : ℤ) = A134465 (n + 1)

end A134465

/-! ## A134465.P1322667147196217242

`A341209(n)+n²`
-/

namespace A134465.P1322667147196217242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n + (n ^ 2 : ℤ)

end

end A134465.P1322667147196217242

namespace A134465

/-- `A341209(n)+n²` -/
def P1322667147196217242.Spec : Prop :=
  ∀ n, P1322667147196217242.a n = A134465 (n + 1)

end A134465

/-! ## A134465.P17860630013224667966

`A143058(n)-n²`
-/

namespace A134465.P17860630013224667966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n - (n ^ 2 : ℤ)

end

end A134465.P17860630013224667966

namespace A134465

/-- `A143058(n)-n²` -/
def P17860630013224667966.Spec : Prop :=
  ∀ n, P17860630013224667966.a n = A134465 (n + 1)

end A134465

/-! ## A134465.P4108910832798884723

`A008778(n)+∑[n]`
-/

namespace A134465.P4108910832798884723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A134465.P4108910832798884723

namespace A134465

/-- `A008778(n)+∑[n]` -/
def P4108910832798884723.Spec : Prop :=
  ∀ n, P4108910832798884723.a n = A134465 (n + 1)

end A134465

/-! ## A134465.P7751483312498650042

`A323221(n)-3*n`
-/

namespace A134465.P7751483312498650042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n - (3 * n : ℤ)

end

end A134465.P7751483312498650042

namespace A134465

/-- `A323221(n)-3*n` -/
def P7751483312498650042.Spec : Prop :=
  ∀ n, P7751483312498650042.a n = A134465 (n + 1)

end A134465

/-! ## A134465.P10770204351823439623

`A006503(n)+∑[n+1]`
-/

namespace A134465.P10770204351823439623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A134465.P10770204351823439623

namespace A134465

/-- `A006503(n)+∑[n+1]` -/
def P10770204351823439623.Spec : Prop :=
  ∀ n, P10770204351823439623.a n = A134465 (n + 1)

end A134465

/-! ## A134465.P1124608786583565266

`n+1+∑[A055999(n)]`
-/

namespace A134465.P1124608786583565266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134465.P1124608786583565266

namespace A134465

/-- `n+1+∑[A055999(n)]` -/
def P1124608786583565266.Spec : Prop :=
  ∀ n, P1124608786583565266.a n = A134465 (n + 1)

end A134465

/-!
# A134466: See A134457.

The programs for A134466, there is no canonical definition to state claims against.
-/

/-! ## A134466.P3675057699029224896

`n^(char[n²]/2)*A354208(A353907(n+1))`
-/

namespace A134466.P3675057699029224896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ) * (A354208 (A353907 (n + 1)).toNat : ℝ)

end

end A134466.P3675057699029224896

/-! ## A134466.P6773620125410882076

`A007477(n)*A305822(A007483(n))`
-/

namespace A134466.P6773620125410882076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 n * A305822 (A007483 n).toNat

end

end A134466.P6773620125410882076

/-! ## A134466.P8769514115553917546

`A005361(A081920(n))*A274936(n)`
-/

namespace A134466.P8769514115553917546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A081920 n).toNat * A274936 n

end

end A134466.P8769514115553917546

/-! ## A134466.P14511437185015120191

`A001285(A107583(n))*A274936(n)`
-/

namespace A134466.P14511437185015120191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A107583 n).toNat * A274936 n

end

end A134466.P14511437185015120191

/-! ## A134466.P8138189955951526120

`A056926(n)*A335525(A023105(n))`
-/

namespace A134466.P8138189955951526120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n * A335525 (A023105 n).toNat

end

end A134466.P8138189955951526120

/-!
# A134467: a(n) = n(n+1) - A000120(n), where A000120(n) = number of 1's in binary expansion of n.

The programs for A134467, the canonical program `A134467.P13825419003851249081` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134467 has offset 0).

The definition of A134467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134467.P13825419003851249081

`n*(n+1)-A000120(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134467

/-- `n*(n+1)-A000120(n)` -/
def P13825419003851249081.Spec : Prop :=
  ∀ n, P13825419003851249081.a n = A134467 n

theorem P13825419003851249081.correct : P13825419003851249081.Spec := by
  intro n
  simp only [A134467]

end A134467

/-! ## A134467.P397036089563246269

`n²+∑[val(n+1, 2)]-val(n+1, 2)`
-/

namespace A134467.P397036089563246269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))

end

end A134467.P397036089563246269

namespace A134467

/-- `n²+∑[val(n+1, 2)]-val(n+1, 2)` -/
def P397036089563246269.Spec : Prop :=
  ∀ n, P397036089563246269.a n = A134467 n

end A134467

/-! ## A134467.P15400591998279825126

`comp[2*(n+1)]+a(n-1)+val(n, 2)` with `a(0)=0`
-/

namespace A134467.P15400591998279825126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (a (n - 1) + SequenceMachineLib.valuation n 2)

end

end A134467.P15400591998279825126

namespace A134467

/-- `comp[2*(n+1)]+a(n-1)+val(n, 2)` -/
def P15400591998279825126.Spec : Prop :=
  ∀ n, (P15400591998279825126.a n : ℤ) = A134467 n

end A134467

/-! ## A134467.P9192119024771405035

`A011371(n)+n²`
-/

namespace A134467.P9192119024771405035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (n ^ 2 : ℤ)

end

end A134467.P9192119024771405035

namespace A134467

/-- `A011371(n)+n²` -/
def P9192119024771405035.Spec : Prop :=
  ∀ n, P9192119024771405035.a n = A134467 n

end A134467

/-! ## A134467.P11467903532744792952

`∑[2*n-A088705(n)]`
-/

namespace A134467.P11467903532744792952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134467.P11467903532744792952

namespace A134467

/-- `∑[2*n-A088705(n)]` -/
def P11467903532744792952.Spec : Prop :=
  ∀ n, P11467903532744792952.a n = A134467 n

end A134467

/-! ## A134467.P5042205860873585172

`n²+n-A000120(n)`
-/

namespace A134467.P5042205860873585172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + ((n : ℤ) - A000120 n)

end

end A134467.P5042205860873585172

namespace A134467

/-- `n²+n-A000120(n)` -/
def P5042205860873585172.Spec : Prop :=
  ∀ n, P5042205860873585172.a n = A134467 n

theorem P5042205860873585172.correct : P5042205860873585172.Spec := by
  intro n
  simp only [A134467, Nat.add_sub_cancel, A134467.P5042205860873585172.a, A134467.P13825419003851249081.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A134467

/-! ## A134467.P14677614739899206565

`n²-n+A005187(n)`
-/

namespace A134467.P14677614739899206565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + A005187 n

end

end A134467.P14677614739899206565

namespace A134467

/-- `n²-n+A005187(n)` -/
def P14677614739899206565.Spec : Prop :=
  ∀ n, P14677614739899206565.a n = A134467 n

end A134467

/-! ## A134467.P9011692163091428799

`A004134(n)+n*(n-2)`
-/

namespace A134467.P9011692163091428799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n + (n : ℤ) * ((n : ℤ) - 2)

end

end A134467.P9011692163091428799

namespace A134467

/-- `A004134(n)+n*(n-2)` -/
def P9011692163091428799.Spec : Prop :=
  ∀ n, P9011692163091428799.a n = A134467 n

end A134467

/-! ## A134467.P16694823311038121312

`n*(n+2)-A092391(n)`
-/

namespace A134467.P16694823311038121312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A092391 n

end

end A134467.P16694823311038121312

namespace A134467

/-- `n*(n+2)-A092391(n)` -/
def P16694823311038121312.Spec : Prop :=
  ∀ n, P16694823311038121312.a n = A134467 n

end A134467

/-! ## A134467.P11138652503881305065

`(n+1)²-A230300(n+1)`
-/

namespace A134467.P11138652503881305065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A230300 (n + 1)

end

end A134467.P11138652503881305065

namespace A134467

/-- `(n+1)²-A230300(n+1)` -/
def P11138652503881305065.Spec : Prop :=
  ∀ n, P11138652503881305065.a n = A134467 n

end A134467

/-! ## A134467.P8572523805123646893

`A067998(n)+A004134(n)`
-/

namespace A134467.P8572523805123646893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n + A004134 n

end

end A134467.P8572523805123646893

namespace A134467

/-- `A067998(n)+A004134(n)` -/
def P8572523805123646893.Spec : Prop :=
  ∀ n, P8572523805123646893.a n = A134467 n

end A134467

/-! ## A134467.P6562886400066232162

`A165900(n)+A101925(n)`
-/

namespace A134467.P6562886400066232162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n + A101925 n

end

end A134467.P6562886400066232162

namespace A134467

/-- `A165900(n)+A101925(n)` -/
def P6562886400066232162.Spec : Prop :=
  ∀ n, P6562886400066232162.a n = A134467 n

end A134467

/-! ## A134467.P16000205613414203224

`A000326(n)-A127944(n)`
-/

namespace A134467.P16000205613414203224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - A127944 n

end

end A134467.P16000205613414203224

namespace A134467

/-- `A000326(n)-A127944(n)` -/
def P16000205613414203224.Spec : Prop :=
  ∀ n, P16000205613414203224.a n = A134467 n

end A134467

/-! ## A134467.P3096590924090564237

`A005187(A004526(n))+n²`
-/

namespace A134467.P3096590924090564237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A004526 n).toNat + (n ^ 2 : ℤ)

end

end A134467.P3096590924090564237

namespace A134467

/-- `A005187(A004526(n))+n²` -/
def P3096590924090564237.Spec : Prop :=
  ∀ n, P3096590924090564237.a n = A134467 n

end A134467

/-! ## A134467.P17128311532460249960

`A005563(n)-(A000120(n)+n)`
-/

namespace A134467.P17128311532460249960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - (A000120 n + (n : ℤ))

end

end A134467.P17128311532460249960

namespace A134467

/-- `A005563(n)-(A000120(n)+n)` -/
def P17128311532460249960.Spec : Prop :=
  ∀ n, P17128311532460249960.a n = A134467 n

end A134467

/-! ## A134467.P6202511478392583492

`A002378(n)+A011371(n)-n`
-/

namespace A134467.P6202511478392583492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (A011371 n - (n : ℤ))

end

end A134467.P6202511478392583492

namespace A134467

/-- `A002378(n)+A011371(n)-n` -/
def P6202511478392583492.Spec : Prop :=
  ∀ n, P6202511478392583492.a n = A134467 n

end A134467

/-! ## A134467.P197033743317157694

`∑[A007814(A302436(n))]+n²`
-/

namespace A134467.P197033743317157694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A302436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A134467.P197033743317157694

namespace A134467

/-- `∑[A007814(A302436(n))]+n²` -/
def P197033743317157694.Spec : Prop :=
  ∀ n, P197033743317157694.a n = A134467 n

end A134467

/-! ## A134467.P15627198764680111287

`A002378(n)-∑{digits}[A007088(n), #]`
-/

namespace A134467.P15627198764680111287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A134467.P15627198764680111287

namespace A134467

/-- `A002378(n)-∑{digits}[A007088(n), #]` -/
def P15627198764680111287.Spec : Prop :=
  ∀ n, P15627198764680111287.a n = A134467 n

end A134467

/-! ## A134467.P15391008500818383992

`abs(2*A000217(n)-A000120(n))`
-/

namespace A134467.P15391008500818383992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A000217 n - A000120 n|

end

end A134467.P15391008500818383992

namespace A134467

/-- `abs(2*A000217(n)-A000120(n))` -/
def P15391008500818383992.Spec : Prop :=
  ∀ n, P15391008500818383992.a n = A134467 n

end A134467

/-! ## A134467.P1627768030678069018

`A002378(n)+A023416(n)-A070939(n)`
-/

namespace A134467.P1627768030678069018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (A023416 n - A070939 n)

end

end A134467.P1627768030678069018

namespace A134467

/-- `A002378(n)+A023416(n)-A070939(n)` -/
def P1627768030678069018.Spec : Prop :=
  ∀ n, P1627768030678069018.a n = A134467 n

end A134467

/-!
# A134468: Numbers n such that 2^n and 3^n have the same leading digit.

The programs for A134468, there is no canonical definition to state claims against.
-/

/-! ## A134468.P16887357166717686430

`eq[A008952(n), A060956(n)]`
-/

namespace A134468.P16887357166717686430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134468.P16887357166717686430

/-! ## A134468.P483340089672289894

`eq[A000030(A247243(n+1)), A060956(n)]`
-/

namespace A134468.P483340089672289894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134468.P483340089672289894

/-!
# A134472: Denominators of the convergents of the continued fraction expansion of -zeta(1/2)/sqrt(2*Pi).

The programs for A134472, there is no canonical definition to state claims against.
-/

/-! ## A134472.P10305599617057214241

`A041033(A004891(n+1))`
-/

namespace A134472.P10305599617057214241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041033 (A004891 (n + 1)).toNat

end

end A134472.P10305599617057214241

/-! ## A134472.P15703923539874001969

`A041033(A004902(n+1))`
-/

namespace A134472.P15703923539874001969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041033 (A004902 (n + 1)).toNat

end

end A134472.P15703923539874001969

/-! ## A134472.P14787811215362817774

`A041033(A004913(n+1))`
-/

namespace A134472.P14787811215362817774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041033 (A004913 (n + 1)).toNat

end

end A134472.P14787811215362817774

/-! ## A134472.P4227039856055715879

`A041033(A032551(n+1))`
-/

namespace A134472.P4227039856055715879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041033 (A032551 (n + 1)).toNat

end

end A134472.P4227039856055715879

/-!
# A134478: Triangle read by rows, T(0,0) = 1; n-th row = (n+1) terms of n, n+1, n+2, ...

The programs for A134478, the canonical program `A134478.P13744276989039686378` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134478 has offset 0).

The definition of A134478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134478.P9923215566070121405

`a(n-1)/floor(a(n-1)/a(n-a(n-1)))+1` with `a(0)=1, a(1)=1`
-/

namespace A134478.P9923215566070121405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / (⌊a (n - 1) / a (SequenceMachineLib.roundAway ((n : ℚ) - a (n - 1))).toNat⌋ : ℚ) + 1

end

end A134478.P9923215566070121405

namespace A134478

/-- `a(n-1)/floor(a(n-1)/a(n-a(n-1)))+1` -/
def P9923215566070121405.Spec : Prop :=
  ∀ n, P9923215566070121405.a n = (A134478 n : ℚ)

end A134478

/-! ## A134478.P13744276989039686378

`floor(sqrt(A051162(n)²+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134478

/-- `floor(sqrt(A051162(n)²+1))` -/
def P13744276989039686378.Spec : Prop :=
  ∀ n, P13744276989039686378.a n = A134478 n

theorem P13744276989039686378.correct : P13744276989039686378.Spec := by
  intro n
  simp only [A134478]

end A134478

/-! ## A134478.P13089362279809808106

`A094727(round(sqrt(n²+1))+1)-1`
-/

namespace A134478.P13089362279809808106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat - 1

end

end A134478.P13089362279809808106

namespace A134478

/-- `A094727(round(sqrt(n²+1))+1)-1` -/
def P13089362279809808106.Spec : Prop :=
  ∀ n, P13089362279809808106.a n = A134478 n

end A134478

/-! ## A134478.P5622164382928343820

`comp[2*(n+1)]+1-A063656(n)`
-/

namespace A134478.P5622164382928343820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - A063656 n

end

end A134478.P5622164382928343820

namespace A134478

/-- `comp[2*(n+1)]+1-A063656(n)` -/
def P5622164382928343820.Spec : Prop :=
  ∀ n, P5622164382928343820.a n = A134478 n

end A134478

/-! ## A134478.P5662650960141674128

`A004277(n)-eq[0, floor(2*sqrt(n))%2]`
-/

namespace A134478.P5662650960141674128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A134478.P5662650960141674128

namespace A134478

/-- `A004277(n)-eq[0, floor(2*sqrt(n))%2]` -/
def P5662650960141674128.Spec : Prop :=
  ∀ n, P5662650960141674128.a n = A134478 n

end A134478

/-! ## A134478.P17797530406677499472

`A051162(A028310(n))`
-/

namespace A134478.P17797530406677499472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A028310 n).toNat

end

end A134478.P17797530406677499472

namespace A134478

/-- `A051162(A028310(n))` -/
def P17797530406677499472.Spec : Prop :=
  ∀ n, P17797530406677499472.a n = A134478 n

end A134478

/-! ## A134478.P16030643143389031467

`A101279(A131421(n+1))`
-/

namespace A134478.P16030643143389031467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A131421 (n + 1)).toNat

end

end A134478.P16030643143389031467

namespace A134478

/-- `A101279(A131421(n+1))` -/
def P16030643143389031467.Spec : Prop :=
  ∀ n, P16030643143389031467.a n = A134478 n

end A134478

/-! ## A134478.P5543978942230320411

`A051162(A000007(n)+n)`
-/

namespace A134478.P5543978942230320411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A000007 n + (n : ℤ)).toNat

end

end A134478.P5543978942230320411

namespace A134478

/-- `A051162(A000007(n)+n)` -/
def P5543978942230320411.Spec : Prop :=
  ∀ n, P5543978942230320411.a n = A134478 n

end A134478

/-! ## A134478.P3303387916750613610

`A134403(n)+A123110(n)`
-/

namespace A134478.P3303387916750613610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134403 n + A123110 n

end

end A134478.P3303387916750613610

namespace A134478

/-- `A134403(n)+A123110(n)` -/
def P3303387916750613610.Spec : Prop :=
  ∀ n, P3303387916750613610.a n = A134478 n

end A134478

/-! ## A134478.P5552701511289684609

`A051162(gcd(n, A008458(n)))`
-/

namespace A134478.P5552701511289684609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Int.gcd (n : ℤ) (A008458 n))

end

end A134478.P5552701511289684609

namespace A134478

/-- `A051162(gcd(n, A008458(n)))` -/
def P5552701511289684609.Spec : Prop :=
  ∀ n, P5552701511289684609.a n = A134478 n

end A134478

/-! ## A134478.P6644309254337443900

`A051162(xor(n, A000007(n)))`
-/

namespace A134478.P6644309254337443900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A134478.P6644309254337443900

namespace A134478

/-- `A051162(xor(n, A000007(n)))` -/
def P6644309254337443900.Spec : Prop :=
  ∀ n, P6644309254337443900.a n = A134478 n

end A134478

/-! ## A134478.P2282090925695411260

`A193738(n)+A052146(n+1)`
-/

namespace A134478.P2282090925695411260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n + A052146 (n + 1)

end

end A134478.P2282090925695411260

namespace A134478

/-- `A193738(n)+A052146(n+1)` -/
def P2282090925695411260.Spec : Prop :=
  ∀ n, P2282090925695411260.a n = A134478 n

end A134478

/-! ## A134478.P491953695900885010

`A051162(A004273(n)+1-n)`
-/

namespace A134478.P491953695900885010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A004273 n + (1 - (n : ℤ))).toNat

end

end A134478.P491953695900885010

namespace A134478

/-- `A051162(A004273(n)+1-n)` -/
def P491953695900885010.Spec : Prop :=
  ∀ n, P491953695900885010.a n = A134478 n

end A134478

/-! ## A134478.P16994847417061546322

`A134482(n+1)-A073424(n)`
-/

namespace A134478.P16994847417061546322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134482 (n + 1) - A073424 n

end

end A134478.P16994847417061546322

namespace A134478

/-- `A134482(n+1)-A073424(n)` -/
def P16994847417061546322.Spec : Prop :=
  ∀ n, P16994847417061546322.a n = A134478 n

end A134478

/-! ## A134478.P1860365204560464685

`A051162(1-(n-A004273(n)))`
-/

namespace A134478.P1860365204560464685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (1 - ((n : ℤ) - A004273 n)).toNat

end

end A134478.P1860365204560464685

namespace A134478

/-- `A051162(1-(n-A004273(n)))` -/
def P1860365204560464685.Spec : Prop :=
  ∀ n, P1860365204560464685.a n = A134478 n

end A134478

/-! ## A134478.P3101074419215810614

`A051162(n)+C(2, A295849(n))`
-/

namespace A134478.P3101074419215810614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (Nat.choose 2 (A295849 n).toNat : ℤ)

end

end A134478.P3101074419215810614

namespace A134478

/-- `A051162(n)+C(2, A295849(n))` -/
def P3101074419215810614.Spec : Prop :=
  ∀ n, P3101074419215810614.a n = A134478 n

end A134478

/-! ## A134478.P15812380655983212076

`A028310(n)-C(A003056(n), 2)`
-/

namespace A134478.P15812380655983212076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (Nat.choose (A003056 n).toNat 2 : ℤ)

end

end A134478.P15812380655983212076

namespace A134478

/-- `A028310(n)-C(A003056(n), 2)` -/
def P15812380655983212076.Spec : Prop :=
  ∀ n, P15812380655983212076.a n = A134478 n

end A134478

/-! ## A134478.P14638752839764297047

`A051162(n)+C(A002262(n), n)`
-/

namespace A134478.P14638752839764297047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (Nat.choose (A002262 n).toNat n : ℤ)

end

end A134478.P14638752839764297047

namespace A134478

/-- `A051162(n)+C(A002262(n), n)` -/
def P14638752839764297047.Spec : Prop :=
  ∀ n, P14638752839764297047.a n = A134478 n

end A134478

/-! ## A134478.P2781376513455174433

`A051162(n)+C(A004526(n), n)`
-/

namespace A134478.P2781376513455174433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (Nat.choose (A004526 n).toNat n : ℤ)

end

end A134478.P2781376513455174433

namespace A134478

/-- `A051162(n)+C(A004526(n), n)` -/
def P2781376513455174433.Spec : Prop :=
  ∀ n, P2781376513455174433.a n = A134478 n

end A134478

/-!
# A134479: Row sums of triangle A134478.

The programs for A134479, the canonical program `A134479.P17715061336719501876` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134479 has offset 0).

The definition of A134479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134479.P17715061336719501876

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=18`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134479

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17715061336719501876.Spec : Prop :=
  ∀ n, P17715061336719501876.a n = A134479 n

theorem P17715061336719501876.correct : P17715061336719501876.Spec := by
  intro n
  simp only [A134479]

end A134479

/-! ## A134479.P15366333516435722761

`floor(3/acot(∑[n]))`
-/

namespace A134479.P15366333516435722761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A134479.P15366333516435722761

namespace A134479

/-- `floor(3/acot(∑[n]))` -/
def P15366333516435722761.Spec : Prop :=
  ∀ n, P15366333516435722761.a n = A134479 n

end A134479

/-! ## A134479.P12409858022479627780

`or(C(2, n), ∑[3*n])`
-/

namespace A134479.P12409858022479627780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose 2 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134479.P12409858022479627780

namespace A134479

/-- `or(C(2, n), ∑[3*n])` -/
def P12409858022479627780.Spec : Prop :=
  ∀ n, (P12409858022479627780.a n : ℤ) = A134479 n

end A134479

/-! ## A134479.P16316908812632045357

`ceil(3/acot(∑[n]))-1`
-/

namespace A134479.P16316908812632045357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ - 1

end

end A134479.P16316908812632045357

namespace A134479

/-- `ceil(3/acot(∑[n]))-1` -/
def P16316908812632045357.Spec : Prop :=
  ∀ n, P16316908812632045357.a n = A134479 n

end A134479

/-! ## A134479.P9426141888063040752

`round(1/acot(∑[3*n]))`
-/

namespace A134479.P9426141888063040752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A134479.P9426141888063040752

namespace A134479

/-- `round(1/acot(∑[3*n]))` -/
def P9426141888063040752.Spec : Prop :=
  ∀ n, P9426141888063040752.a n = A134479 n

end A134479

/-! ## A134479.P7243994079123188482

`∑[3*n]+floor(acot(n))`
-/

namespace A134479.P7243994079123188482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A134479.P7243994079123188482

namespace A134479

/-- `∑[3*n]+floor(acot(n))` -/
def P7243994079123188482.Spec : Prop :=
  ∀ n, P7243994079123188482.a n = A134479 n

end A134479

/-! ## A134479.P13472189079248789194

`∑[a(n-1)+3]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A134479.P13472189079248789194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134479.P13472189079248789194

namespace A134479

/-- `∑[a(n-1)+3]` -/
def P13472189079248789194.Spec : Prop :=
  ∀ n, (P13472189079248789194.a n : ℤ) = A134479 n

end A134479

/-! ## A134479.P5839732183426322181

`a(n-1)+3*n` with `a(0)=1, a(1)=3`
-/

namespace A134479.P5839732183426322181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 3 * n

end

end A134479.P5839732183426322181

namespace A134479

/-- `a(n-1)+3*n` -/
def P5839732183426322181.Spec : Prop :=
  ∀ n, (P5839732183426322181.a n : ℤ) = A134479 n

end A134479

/-! ## A134479.P15167545058720828780

`C(2, n+2)+∑[3*n]`
-/

namespace A134479.P15167545058720828780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134479.P15167545058720828780

namespace A134479

/-- `C(2, n+2)+∑[3*n]` -/
def P15167545058720828780.Spec : Prop :=
  ∀ n, (P15167545058720828780.a n : ℤ) = A134479 n

end A134479

/-! ## A134479.P8702332621179199563

`∑[1-char[1]+n]+n²`
-/

namespace A134479.P8702332621179199563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A134479.P8702332621179199563

namespace A134479

/-- `∑[1-char[1]+n]+n²` -/
def P8702332621179199563.Spec : Prop :=
  ∀ n, P8702332621179199563.a n = A134479 n

end A134479

/-! ## A134479.P13753090439751341473

`round(acot(n+1)+∑[3*n])`
-/

namespace A134479.P13753090439751341473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A134479.P13753090439751341473

namespace A134479

/-- `round(acot(n+1)+∑[3*n])` -/
def P13753090439751341473.Spec : Prop :=
  ∀ n, P13753090439751341473.a n = A134479 n

end A134479

/-! ## A134479.P4676520548245937435

`∑[3*n]^floor(atan(n+1))`
-/

namespace A134479.P4676520548245937435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A134479.P4676520548245937435

namespace A134479

/-- `∑[3*n]^floor(atan(n+1))` -/
def P4676520548245937435.Spec : Prop :=
  ∀ n, P4676520548245937435.a n = (A134479 n : ℚ)

end A134479

/-! ## A134479.P5825742746059846352

`a(((-1)^n)²)*∑[n]` with `a(0)=1, a(1)=3`
-/

namespace A134479.P5825742746059846352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (((-1) ^ n) ^ 2).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134479.P5825742746059846352

namespace A134479

/-- `a(((-1)^n)²)*∑[n]` -/
def P5825742746059846352.Spec : Prop :=
  ∀ n, (P5825742746059846352.a n : ℤ) = A134479 n

end A134479

/-! ## A134479.P9888514641053411666

`∑[ogf((1+3x^2-x^3)/(1-2x+x^2))]`
-/

namespace A134479.P9888514641053411666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134479.P9888514641053411666

namespace A134479

/-- `∑[ogf((1+3x^2-x^3)/(1-2x+x^2))]` -/
def P9888514641053411666.Spec : Prop :=
  ∀ n, P9888514641053411666.a n = A134479 n

end A134479

/-! ## A134479.P16882415237903665133

`ogf((1+3x^2-x^3)/(1-3x+3x^2-x^3))`
-/

namespace A134479.P16882415237903665133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3, -1] [1, -3, 3, -1] n

end

end A134479.P16882415237903665133

namespace A134479

/-- `ogf((1+3x^2-x^3)/(1-3x+3x^2-x^3))` -/
def P16882415237903665133.Spec : Prop :=
  ∀ n, P16882415237903665133.a n = A134479 n

end A134479

/-! ## A134479.P2279096121933663825

`gcd(3, a(n-1))*∑[n]` with `a(0)=1, a(1)=3`
-/

namespace A134479.P2279096121933663825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.gcd 3 (a (n - 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134479.P2279096121933663825

namespace A134479

/-- `gcd(3, a(n-1))*∑[n]` -/
def P2279096121933663825.Spec : Prop :=
  ∀ n, (P2279096121933663825.a n : ℤ) = A134479 n

end A134479

/-! ## A134479.P13950357353144259349

`∑[n*3%a(n-1)]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A134479.P13950357353144259349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  n * (3 % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134479.P13950357353144259349

namespace A134479

/-- `∑[n*3%a(n-1)]` -/
def P13950357353144259349.Spec : Prop :=
  ∀ n, (P13950357353144259349.a n : ℤ) = A134479 n

end A134479

/-! ## A134479.P16956002998171858810

`∑[3*n]^((n+2)%(n+1))`
-/

namespace A134479.P16956002998171858810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ ((n + 2) % (n + 1))

end

end A134479.P16956002998171858810

namespace A134479

/-- `∑[3*n]^((n+2)%(n+1))` -/
def P16956002998171858810.Spec : Prop :=
  ∀ n, (P16956002998171858810.a n : ℤ) = A134479 n

end A134479

/-! ## A134479.P7980193829958274312

`a(n-1)/(1-n/∑[n])` with `a(0)=1, a(1)=3`
-/

namespace A134479.P7980193829958274312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / (1 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A134479.P7980193829958274312

namespace A134479

/-- `a(n-1)/(1-n/∑[n])` -/
def P7980193829958274312.Spec : Prop :=
  ∀ n, P7980193829958274312.a n = (A134479 n : ℚ)

end A134479

/-! ## A134479.P4310341460185543408

`(n+1)/abs((n-1)/a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A134479.P4310341460185543408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 1 : ℚ) / |((n : ℤ) - 1 : ℚ) / a (n - 1)|

end

end A134479.P4310341460185543408

namespace A134479

/-- `(n+1)/abs((n-1)/a(n-1))` -/
def P4310341460185543408.Spec : Prop :=
  ∀ n, P4310341460185543408.a n = (A134479 n : ℚ)

end A134479

/-!
# A134480: Triangle read by rows: T(n,k) = Sum_{i=k..n} n + i.

The programs for A134480, the canonical program `A134480.P13201781655319117815` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134480 has offset 0).

The definition of A134480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134480.P13201781655319117815

`A104587(n)-A004736(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A134480

/-- `A104587(n)-A004736(n+1)` -/
def P13201781655319117815.Spec : Prop :=
  ∀ n, P13201781655319117815.a n = A134480 n

theorem P13201781655319117815.correct : P13201781655319117815.Spec := by
  intro n
  simp only [A134480]

end A134480

/-! ## A134480.P4790268993051989668

`A095871(n+1)-A003991(n+1)`
-/

namespace A134480.P4790268993051989668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095871 (n + 1) - A003991 (n + 1)

end

end A134480.P4790268993051989668

namespace A134480

/-- `A095871(n+1)-A003991(n+1)` -/
def P4790268993051989668.Spec : Prop :=
  ∀ n, P4790268993051989668.a n = A134480 n

end A134480

/-! ## A134480.P18033603125059526161

`A096038(n+1)-A127738(n+1)`
-/

namespace A134480.P18033603125059526161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) - A127738 (n + 1)

end

end A134480.P18033603125059526161

namespace A134480

/-- `A096038(n+1)-A127738(n+1)` -/
def P18033603125059526161.Spec : Prop :=
  ∀ n, P18033603125059526161.a n = A134480 n

end A134480

/-! ## A134480.P3857645483736532756

`A096037(n+1)-A141429(n+1)`
-/

namespace A134480.P3857645483736532756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A141429 (n + 1)

end

end A134480.P3857645483736532756

namespace A134480

/-- `A096037(n+1)-A141429(n+1)` -/
def P3857645483736532756.Spec : Prop :=
  ∀ n, P3857645483736532756.a n = A134480 n

end A134480

/-!
# A134481: Row sums of triangle A134480.

The programs for A134481, the canonical program `A134481.P3195373075799668587` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134481 has offset 0).

The definition of A134481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134481.P3195373075799668587

`5*A000292(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134481

/-- `5*A000292(n)` -/
def P3195373075799668587.Spec : Prop :=
  ∀ n, P3195373075799668587.a n = A134481 n

theorem P3195373075799668587.correct : P3195373075799668587.Spec := by
  intro n
  simp only [A134481]

end A134481

/-! ## A134481.P3754253304646075863

`∑[∑[5*n]]`
-/

namespace A134481.P3754253304646075863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134481.P3754253304646075863

namespace A134481

/-- `∑[∑[5*n]]` -/
def P3754253304646075863.Spec : Prop :=
  ∀ n, (P3754253304646075863.a n : ℤ) = A134481 n

end A134481

/-! ## A134481.P6627998493921904535

`5*C(n+2, 3)`
-/

namespace A134481.P6627998493921904535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (n + 2) 3

end

end A134481.P6627998493921904535

namespace A134481

/-- `5*C(n+2, 3)` -/
def P6627998493921904535.Spec : Prop :=
  ∀ n, (P6627998493921904535.a n : ℤ) = A134481 n

end A134481

/-! ## A134481.P9590317615978373730

`ogf(5x/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A134481.P9590317615978373730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -4, 6, -4, 1] n

end

end A134481.P9590317615978373730

namespace A134481

/-- `ogf(5x/(1-4x+6x^2-4x^3+x^4))` -/
def P9590317615978373730.Spec : Prop :=
  ∀ n, P9590317615978373730.a n = A134481 n

end A134481

/-! ## A134481.P12931538292574415941

`floor(∑[∑[a(n-1)+5]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A134481.P12931538292574415941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134481.P12931538292574415941

namespace A134481

/-- `floor(∑[∑[a(n-1)+5]])` -/
def P12931538292574415941.Spec : Prop :=
  ∀ n, (P12931538292574415941.a n : ℤ) = A134481 n

end A134481

/-! ## A134481.P5825225135115648231

`a(n-2)+5*n²` with `a(0)=0, a(1)=5`
-/

namespace A134481.P5825225135115648231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 2) + 5 * n ^ 2

end

end A134481.P5825225135115648231

namespace A134481

/-- `a(n-2)+5*n²` -/
def P5825225135115648231.Spec : Prop :=
  ∀ n, (P5825225135115648231.a n : ℤ) = A134481 n

end A134481

/-! ## A134481.P9703003996279397443

`∑[∑[a(n-1)+10]]/2` with `a(0)=0`
-/

namespace A134481.P9703003996279397443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A134481.P9703003996279397443

namespace A134481

/-- `∑[∑[a(n-1)+10]]/2` -/
def P9703003996279397443.Spec : Prop :=
  ∀ n, P9703003996279397443.a n = (A134481 n : ℚ)

end A134481

/-! ## A134481.P10541822063067646776

`floor(a(n-2)+n*5*n)` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A134481.P10541822063067646776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 2) + n * (5 * n)

end

end A134481.P10541822063067646776

namespace A134481

/-- `floor(a(n-2)+n*5*n)` -/
def P10541822063067646776.Spec : Prop :=
  ∀ n, (P10541822063067646776.a n : ℤ) = A134481 n

end A134481

/-! ## A134481.P3824088381193062487

`∑[a(n-1)+5]+a(n-1)` with `a(0)=0`
-/

namespace A134481.P3824088381193062487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A134481.P3824088381193062487

namespace A134481

/-- `∑[a(n-1)+5]+a(n-1)` -/
def P3824088381193062487.Spec : Prop :=
  ∀ n, (P3824088381193062487.a n : ℤ) = A134481 n

end A134481

/-! ## A134481.P14416663369243848262

`floor(∑[∑[n]-∑[a(n-1)-4]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A134481.P14416663369243848262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134481.P14416663369243848262

namespace A134481

/-- `floor(∑[∑[n]-∑[a(n-1)-4]])` -/
def P14416663369243848262.Spec : Prop :=
  ∀ n, P14416663369243848262.a n = A134481 n

end A134481

/-! ## A134481.P6415985068606836121

`∑[∑[n]]-∑[∑[a(n-1)-4]]` with `a(0)=0`
-/

namespace A134481.P6415985068606836121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f4 =>
  f4 (n - 1) - 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A134481.P6415985068606836121

namespace A134481

/-- `∑[∑[n]]-∑[∑[a(n-1)-4]]` -/
def P6415985068606836121.Spec : Prop :=
  ∀ n, P6415985068606836121.a n = A134481 n

end A134481

/-! ## A134481.P63259024240087020

`(n+2)/(n-1)*a(n-1)` with `a(0)=0, a(1)=5`
-/

namespace A134481.P63259024240087020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n a =>
  (n + 2 : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 1)

end

end A134481.P63259024240087020

namespace A134481

/-- `(n+2)/(n-1)*a(n-1)` -/
def P63259024240087020.Spec : Prop :=
  ∀ n, P63259024240087020.a n = (A134481 n : ℚ)

end A134481

/-! ## A134481.P16838587006431206816

`lcm(n+2, (n+1)²)-∑[∑[n+2]]`
-/

namespace A134481.P16838587006431206816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((n + 1) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A134481.P16838587006431206816

namespace A134481

/-- `lcm(n+2, (n+1)²)-∑[∑[n+2]]` -/
def P16838587006431206816.Spec : Prop :=
  ∀ n, P16838587006431206816.a n = A134481 n

end A134481

/-! ## A134481.P16468305708970576087

`a(n-1)/abs((n-1)/(n+2))` with `a(0)=0, a(1)=5`
-/

namespace A134481.P16468305708970576087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) / |((n : ℤ) - 1 : ℚ) / (n + 2 : ℚ)|

end

end A134481.P16468305708970576087

namespace A134481

/-- `a(n-1)/abs((n-1)/(n+2))` -/
def P16468305708970576087.Spec : Prop :=
  ∀ n, P16468305708970576087.a n = (A134481 n : ℚ)

end A134481

/-! ## A134481.P8039200889634535591

`A092185(n)-n`
-/

namespace A134481.P8039200889634535591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092185 n - (n : ℤ)

end

end A134481.P8039200889634535591

namespace A134481

/-- `A092185(n)-n` -/
def P8039200889634535591.Spec : Prop :=
  ∀ n, P8039200889634535591.a n = A134481 n

end A134481

/-! ## A134481.P16428360108048110647

`∑[A124080(n)]/2`
-/

namespace A134481.P16428360108048110647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A134481.P16428360108048110647

namespace A134481

/-- `∑[A124080(n)]/2` -/
def P16428360108048110647.Spec : Prop :=
  ∀ n, P16428360108048110647.a n = (A134481 n : ℚ)

end A134481

/-! ## A134481.P675936624632628897

`∑[A194715(n)]/3`
-/

namespace A134481.P675936624632628897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A134481.P675936624632628897

namespace A134481

/-- `∑[A194715(n)]/3` -/
def P675936624632628897.Spec : Prop :=
  ∀ n, P675936624632628897.a n = (A134481 n : ℚ)

end A134481

/-! ## A134481.P1986502202107029998

`∑[A163761(n)]/4`
-/

namespace A134481.P1986502202107029998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163761 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A134481.P1986502202107029998

namespace A134481

/-- `∑[A163761(n)]/4` -/
def P1986502202107029998.Spec : Prop :=
  ∀ n, P1986502202107029998.a n = (A134481 n : ℚ)

end A134481

/-! ## A134481.P2909834415299828337

`∑[A123296(n)]/5`
-/

namespace A134481.P2909834415299828337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A134481.P2909834415299828337

namespace A134481

/-- `∑[A123296(n)]/5` -/
def P2909834415299828337.Spec : Prop :=
  ∀ n, P2909834415299828337.a n = (A134481 n : ℚ)

end A134481

/-! ## A134481.P2367776352380542947

`A162148(n)+∑[n]`
-/

namespace A134481.P2367776352380542947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A134481.P2367776352380542947

namespace A134481

/-- `A162148(n)+∑[n]` -/
def P2367776352380542947.Spec : Prop :=
  ∀ n, P2367776352380542947.a n = A134481 n

end A134481

/-!
# A134482: Triangle read by rows: row n consists of n followed by the numbers n through 2n-2.

The programs for A134482, the canonical program `A134482.P15143362080738563576` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134482 has offset 1).

The definition of A134482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134482.P16721047442332282716

`char[∑[n]]+n-C(∑[char[∑[n+1]]], 2)`
-/

namespace A134482.P16721047442332282716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A134482.P16721047442332282716

namespace A134482

/-- `char[∑[n]]+n-C(∑[char[∑[n+1]]], 2)` -/
def P16721047442332282716.Spec : Prop :=
  ∀ n, P16721047442332282716.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P15143362080738563576

`A134403(n)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A134482

/-- `A134403(n)+1` -/
def P15143362080738563576.Spec : Prop :=
  ∀ n, P15143362080738563576.a n = A134482 (n + 1)

theorem P15143362080738563576.correct : P15143362080738563576.Spec := by
  intro n
  simp only [A134482, Nat.add_sub_cancel]

end A134482

/-! ## A134482.P6207830771256820021

`floor(log2(A130324(n)+1))`
-/

namespace A134482.P6207830771256820021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A130324 n + 1).toNat

end

end A134482.P6207830771256820021

namespace A134482

/-- `floor(log2(A130324(n)+1))` -/
def P6207830771256820021.Spec : Prop :=
  ∀ n, (P6207830771256820021.a n : ℤ) = A134482 (n + 1)

end A134482

/-! ## A134482.P7706048073955855366

`A051162(char[∑[n]]+n)`
-/

namespace A134482.P7706048073955855366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A134482.P7706048073955855366

namespace A134482

/-- `A051162(char[∑[n]]+n)` -/
def P7706048073955855366.Spec : Prop :=
  ∀ n, P7706048073955855366.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P11320716518859282802

`A094727(char[∑[n]]+n)`
-/

namespace A134482.P11320716518859282802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A134482.P11320716518859282802

namespace A134482

/-- `A094727(char[∑[n]]+n)` -/
def P11320716518859282802.Spec : Prop :=
  ∀ n, P11320716518859282802.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P5761654306731613802

`A134478(char[∑[n]]+n)`
-/

namespace A134482.P5761654306731613802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A134482.P5761654306731613802

namespace A134482

/-- `A134478(char[∑[n]]+n)` -/
def P5761654306731613802.Spec : Prop :=
  ∀ n, P5761654306731613802.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P8430557541904981873

`A051162(n)+char[C(n, 2)]`
-/

namespace A134482.P8430557541904981873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134482.P8430557541904981873

namespace A134482

/-- `A051162(n)+char[C(n, 2)]` -/
def P8430557541904981873.Spec : Prop :=
  ∀ n, P8430557541904981873.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P3525741626885347497

`floor(log2(A233757(n+1)+1))`
-/

namespace A134482.P3525741626885347497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A233757 (n + 1) + 1).toNat

end

end A134482.P3525741626885347497

namespace A134482

/-- `floor(log2(A233757(n+1)+1))` -/
def P3525741626885347497.Spec : Prop :=
  ∀ n, (P3525741626885347497.a n : ℤ) = A134482 (n + 1)

end A134482

/-! ## A134482.P12144855948839009667

`A051162(n)+A010054(n)`
-/

namespace A134482.P12144855948839009667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + A010054 n

end

end A134482.P12144855948839009667

namespace A134482

/-- `A051162(n)+A010054(n)` -/
def P12144855948839009667.Spec : Prop :=
  ∀ n, P12144855948839009667.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P3094293574674680393

`A134478(n)+A073424(n)`
-/

namespace A134482.P3094293574674680393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n + A073424 n

end

end A134482.P3094293574674680393

namespace A134482

/-- `A134478(n)+A073424(n)` -/
def P3094293574674680393.Spec : Prop :=
  ∀ n, P3094293574674680393.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P2084044705341946918

`A144328(n+1)+A003056(n)`
-/

namespace A134482.P2084044705341946918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A003056 n

end

end A134482.P2084044705341946918

namespace A134482

/-- `A144328(n+1)+A003056(n)` -/
def P2084044705341946918.Spec : Prop :=
  ∀ n, P2084044705341946918.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P459040771087638630

`A035214(n)+A051162(n)-1`
-/

namespace A134482.P459040771087638630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + (A051162 n - 1)

end

end A134482.P459040771087638630

namespace A134482

/-- `A035214(n)+A051162(n)-1` -/
def P459040771087638630.Spec : Prop :=
  ∀ n, P459040771087638630.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P5274582700056297012

`A134478(n)+1-A123110(n)`
-/

namespace A134482.P5274582700056297012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n + (1 - A123110 n)

end

end A134482.P5274582700056297012

namespace A134482

/-- `A134478(n)+1-A123110(n)` -/
def P5274582700056297012.Spec : Prop :=
  ∀ n, P5274582700056297012.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P11769897705435120416

`A134483(n+1)-A123578(n)`
-/

namespace A134482.P11769897705435120416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (n + 1) - A123578 n

end

end A134482.P11769897705435120416

namespace A134482

/-- `A134483(n+1)-A123578(n)` -/
def P11769897705435120416.Spec : Prop :=
  ∀ n, P11769897705435120416.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P3048854480993973021

`A108872(n+1)-A238303(n)`
-/

namespace A134482.P3048854480993973021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A238303 n

end

end A134482.P3048854480993973021

namespace A134482

/-- `A108872(n+1)-A238303(n)` -/
def P3048854480993973021.Spec : Prop :=
  ∀ n, P3048854480993973021.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P3002238059205823786

`A131413(n)+1-A143956(n+1)`
-/

namespace A134482.P3002238059205823786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n + (1 - A143956 (n + 1))

end

end A134482.P3002238059205823786

namespace A134482

/-- `A131413(n)+1-A143956(n+1)` -/
def P3002238059205823786.Spec : Prop :=
  ∀ n, P3002238059205823786.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P7384041924191880550

`A094727(n+1)+1-A238303(n)`
-/

namespace A134482.P7384041924191880550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + (1 - A238303 n)

end

end A134482.P7384041924191880550

namespace A134482

/-- `A094727(n+1)+1-A238303(n)` -/
def P7384041924191880550.Spec : Prop :=
  ∀ n, P7384041924191880550.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P15069596875943146141

`A108872(n+1)+A010054(n)-2`
-/

namespace A134482.P15069596875943146141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) + (A010054 n - 2)

end

end A134482.P15069596875943146141

namespace A134482

/-- `A108872(n+1)+A010054(n)-2` -/
def P15069596875943146141.Spec : Prop :=
  ∀ n, P15069596875943146141.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P13654299801551831306

`A094727(n+1)+A035214(n)-2`
-/

namespace A134482.P13654299801551831306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + (A035214 n - 2)

end

end A134482.P13654299801551831306

namespace A134482

/-- `A094727(n+1)+A035214(n)-2` -/
def P13654299801551831306.Spec : Prop :=
  ∀ n, P13654299801551831306.a n = A134482 (n + 1)

end A134482

/-! ## A134482.P8432540530849097607

`A144257(n+1)+2*A002262(n)`
-/

namespace A134482.P8432540530849097607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) + 2 * A002262 n

end

end A134482.P8432540530849097607

namespace A134482

/-- `A144257(n+1)+2*A002262(n)` -/
def P8432540530849097607.Spec : Prop :=
  ∀ n, P8432540530849097607.a n = A134482 (n + 1)

end A134482

/-!
# A134483: Triangle read by rows: T(n,k) = 2n + k - 2; 1 <= k <= n.

The programs for A134483, the canonical program `A134483.P1096721902368672084` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134483 has offset 1).

The definition of A134483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134483.P1096721902368672084

`A002260(n+1)+2*A003056(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134483

/-- `A002260(n+1)+2*A003056(n)` -/
def P1096721902368672084.Spec : Prop :=
  ∀ n, P1096721902368672084.a n = A134483 (n + 1)

theorem P1096721902368672084.correct : P1096721902368672084.Spec := by
  intro n
  simp only [A134483, Nat.add_sub_cancel]

end A134483

/-! ## A134483.P2513488418465952643

`A002262(n)+∑[2*char[∑[n]]]-1`
-/

namespace A134483.P2513488418465952643
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A134483.P2513488418465952643

namespace A134483

/-- `A002262(n)+∑[2*char[∑[n]]]-1` -/
def P2513488418465952643.Spec : Prop :=
  ∀ n, P2513488418465952643.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P8049008420639834823

`A131507(n)+A002262(n)`
-/

namespace A134483.P8049008420639834823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + A002262 n

end

end A134483.P8049008420639834823

namespace A134483

/-- `A131507(n)+A002262(n)` -/
def P8049008420639834823.Spec : Prop :=
  ∀ n, P8049008420639834823.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P10951175894366191028

`A131413(n)-A114327(n)`
-/

namespace A134483.P10951175894366191028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n - A114327 n

end

end A134483.P10951175894366191028

namespace A134483

/-- `A131413(n)-A114327(n)` -/
def P10951175894366191028.Spec : Prop :=
  ∀ n, P10951175894366191028.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P7591153603119042757

`A131507(n)+log2(A059268(n))`
-/

namespace A134483.P7591153603119042757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131507 n : ℝ) + Real.logb 2 (A059268 n : ℝ)

end

end A134483.P7591153603119042757

namespace A134483

/-- `A131507(n)+log2(A059268(n))` -/
def P7591153603119042757.Spec : Prop :=
  ∀ n, P7591153603119042757.a n = (A134483 (n + 1) : ℝ)

end A134483

/-! ## A134483.P18049900459007784519

`A051162(n)+∑[A010054(n)]`
-/

namespace A134483.P18049900459007784519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134483.P18049900459007784519

namespace A134483

/-- `A051162(n)+∑[A010054(n)]` -/
def P18049900459007784519.Spec : Prop :=
  ∀ n, P18049900459007784519.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P14178456617117546206

`A051162(n)+A002024(n+1)`
-/

namespace A134483.P14178456617117546206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + A002024 (n + 1)

end

end A134483.P14178456617117546206

namespace A134483

/-- `A051162(n)+A002024(n+1)` -/
def P14178456617117546206.Spec : Prop :=
  ∀ n, P14178456617117546206.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P15579057156489907107

`A003056(n)+A051162(n)+1`
-/

namespace A134483.P15579057156489907107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A051162 n + 1)

end

end A134483.P15579057156489907107

namespace A134483

/-- `A003056(n)+A051162(n)+1` -/
def P15579057156489907107.Spec : Prop :=
  ∀ n, P15579057156489907107.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P3244540787078521543

`A094727(n+1)+A003056(n)`
-/

namespace A134483.P3244540787078521543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A003056 n

end

end A134483.P3244540787078521543

namespace A134483

/-- `A094727(n+1)+A003056(n)` -/
def P3244540787078521543.Spec : Prop :=
  ∀ n, P3244540787078521543.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P1161438547884173680

`A134482(n+1)+A123578(n)`
-/

namespace A134483.P1161438547884173680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134482 (n + 1) + A123578 n

end

end A134483.P1161438547884173680

namespace A134483

/-- `A134482(n+1)+A123578(n)` -/
def P1161438547884173680.Spec : Prop :=
  ∀ n, P1161438547884173680.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P15799742178173868683

`A279891(n)+A002260(n+1)`
-/

namespace A134483.P15799742178173868683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A002260 (n + 1)

end

end A134483.P15799742178173868683

namespace A134483

/-- `A279891(n)+A002260(n+1)` -/
def P15799742178173868683.Spec : Prop :=
  ∀ n, P15799742178173868683.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P4794329147408259563

`A131421(n+1)-A002262(n)`
-/

namespace A134483.P4794329147408259563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131421 (n + 1) - A002262 n

end

end A134483.P4794329147408259563

namespace A134483

/-- `A131421(n+1)-A002262(n)` -/
def P4794329147408259563.Spec : Prop :=
  ∀ n, P4794329147408259563.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P8101683218843553076

`A127948(n)+A131413(n)-1`
-/

namespace A134483.P8101683218843553076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127948 n + (A131413 n - 1)

end

end A134483.P8101683218843553076

namespace A134483

/-- `A127948(n)+A131413(n)-1` -/
def P8101683218843553076.Spec : Prop :=
  ∀ n, P8101683218843553076.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P2733501954993513350

`A131507(n)+val(A130328(n), 2)`
-/

namespace A134483.P2733501954993513350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + (SequenceMachineLib.valuation (A130328 n).toNat 2 : ℤ)

end

end A134483.P2733501954993513350

namespace A134483

/-- `A131507(n)+val(A130328(n), 2)` -/
def P2733501954993513350.Spec : Prop :=
  ∀ n, P2733501954993513350.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P12559055059911938927

`A131507(n)+val(A175840(n), 2)`
-/

namespace A134483.P12559055059911938927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + (SequenceMachineLib.valuation (A175840 n).toNat 2 : ℤ)

end

end A134483.P12559055059911938927

namespace A134483

/-- `A131507(n)+val(A175840(n), 2)` -/
def P12559055059911938927.Spec : Prop :=
  ∀ n, P12559055059911938927.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P10274017529706548538

`A131507(n)+n-A057944(n)`
-/

namespace A134483.P10274017529706548538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + ((n : ℤ) - A057944 n)

end

end A134483.P10274017529706548538

namespace A134483

/-- `A131507(n)+n-A057944(n)` -/
def P10274017529706548538.Spec : Prop :=
  ∀ n, P10274017529706548538.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P3681312729187171652

`A064801(n+1)-A003056(n)²`
-/

namespace A134483.P3681312729187171652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - A003056 n ^ 2

end

end A134483.P3681312729187171652

namespace A134483

/-- `A064801(n+1)-A003056(n)²` -/
def P3681312729187171652.Spec : Prop :=
  ∀ n, P3681312729187171652.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P10253481971187283701

`A108872(n+1)+A003056(n)-1`
-/

namespace A134483.P10253481971187283701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) + (A003056 n - 1)

end

end A134483.P10253481971187283701

namespace A134483

/-- `A108872(n+1)+A003056(n)-1` -/
def P10253481971187283701.Spec : Prop :=
  ∀ n, P10253481971187283701.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P5556573701403759358

`A111650(n+1)+A002262(n)-1`
-/

namespace A134483.P5556573701403759358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) + (A002262 n - 1)

end

end A134483.P5556573701403759358

namespace A134483

/-- `A111650(n+1)+A002262(n)-1` -/
def P5556573701403759358.Spec : Prop :=
  ∀ n, P5556573701403759358.a n = A134483 (n + 1)

end A134483

/-! ## A134483.P4321485043837312051

`A292565(n+1)%A265129(n+1)`
-/

namespace A134483.P4321485043837312051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292565 (n + 1)) (A265129 (n + 1))

end

end A134483.P4321485043837312051

namespace A134483

/-- `A292565(n+1)%A265129(n+1)` -/
def P4321485043837312051.Spec : Prop :=
  ∀ n, P4321485043837312051.a n = A134483 (n + 1)

end A134483

/-!
# A134484: Triangle, read by rows, where T(n,k) = 2^[n*(n-1) - k*(k-1)] * binomial(n,k) for n>=k>=0.

The programs for A134484, the canonical program `A134484.P5349206259711963594` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134484 has offset 0).

The definition of A134484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134484.P6452088185883151699

`A277219(n)²/A007318(n)`
-/

namespace A134484.P6452088185883151699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277219 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A134484.P6452088185883151699

namespace A134484

/-- `A277219(n)²/A007318(n)` -/
def P6452088185883151699.Spec : Prop :=
  ∀ n, P6452088185883151699.a n = (A134484 n : ℚ)

end A134484

/-! ## A134484.P9391214089587763512

`abs(A277219(n)²/A130595(n))`
-/

namespace A134484.P9391214089587763512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A277219 n ^ 2 : ℚ) / (A130595 n : ℚ)|

end

end A134484.P9391214089587763512

namespace A134484

/-- `abs(A277219(n)²/A130595(n))` -/
def P9391214089587763512.Spec : Prop :=
  ∀ n, P9391214089587763512.a n = (A134484 n : ℚ)

end A134484

/-! ## A134484.P11434000533648173287

`A011782(A329854(n))*A277219(n)`
-/

namespace A134484.P11434000533648173287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A329854 n).toNat * A277219 n

end

end A134484.P11434000533648173287

namespace A134484

/-- `A011782(A329854(n))*A277219(n)` -/
def P11434000533648173287.Spec : Prop :=
  ∀ n, P11434000533648173287.a n = A134484 n

end A134484

/-! ## A134484.P5349206259711963594

`A011782(A329854(n))²*A007318(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A134484

/-- `A011782(A329854(n))²*A007318(n)` -/
def P5349206259711963594.Spec : Prop :=
  ∀ n, P5349206259711963594.a n = A134484 n

theorem P5349206259711963594.correct : P5349206259711963594.Spec := by
  intro n
  simp only [A134484]

end A134484

/-! ## A134484.P4150927753806722691

`abs(A130595(n))*A011782(A329854(n))²`
-/

namespace A134484.P4150927753806722691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A011782 (A329854 n).toNat ^ 2

end

end A134484.P4150927753806722691

namespace A134484

/-- `abs(A130595(n))*A011782(A329854(n))²` -/
def P4150927753806722691.Spec : Prop :=
  ∀ n, P4150927753806722691.a n = A134484 n

end A134484

/-! ## A134484.P7281605589561749389

`A011782(A329854(n))²*A004526(A028326(n))`
-/

namespace A134484.P7281605589561749389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A329854 n).toNat ^ 2 * A004526 (A028326 n).toNat

end

end A134484.P7281605589561749389

namespace A134484

/-- `A011782(A329854(n))²*A004526(A028326(n))` -/
def P7281605589561749389.Spec : Prop :=
  ∀ n, P7281605589561749389.a n = A134484 n

end A134484

/-!
# A134485: Row sums of triangle A134484(n,k) = 2^[n(n-1) - k(k-1)] * C(n,k).

The programs for A134485, there is no canonical definition to state claims against.
-/

/-! ## A134485.P6955007599920287563

`A258851(A001417(n))+1`
-/

namespace A134485.P6955007599920287563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A001417 n).toNat + 1

end

end A134485.P6955007599920287563

/-!
# A134486: a(0)=1; for n>=1, a(n) = the largest prime dividing n*a(n-1) + 1.

The programs for A134486, there is no canonical definition to state claims against.
-/

/-! ## A134486.P5283344344163425656

`A006530(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A134486.P5283344344163425656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A134486.P5283344344163425656

/-! ## A134486.P4848525087310445869

`A088387(n*a(n-1)+1)` with `a(0)=1`
-/

namespace A134486.P4848525087310445869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088387 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A134486.P4848525087310445869

/-! ## A134486.P2643714096934543487

`A006530(1-floor(-n*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134486.P2643714096934543487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (1 - (-((n : ℤ) * a (n - 1)))).toNat

end

end A134486.P2643714096934543487

/-! ## A134486.P5785430106028629403

`A006530(1-ceil(-n*a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A134486.P5785430106028629403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (1 - (-((n : ℤ) * a (n - 1)))).toNat

end

end A134486.P5785430106028629403

/-! ## A134486.P10840229238568154312

`A006530(abs(xor(n*a(n-1), -1)))` with `a(0)=1`
-/

namespace A134486.P10840229238568154312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 |Int.xor ((n : ℤ) * a (n - 1)) (-1)|.toNat

end

end A134486.P10840229238568154312

/-!
# A134487: a(1)=1; for n>=2, a(n) = the largest prime dividing n*a(n-1) + 1.

The programs for A134487, there is no canonical definition to state claims against.
-/

/-! ## A134487.P14948869927877907771

`A006530((n+1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A134487.P14948869927877907771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 ((n + 1 : ℤ) * a (n - 1) + 1).toNat

end

end A134487.P14948869927877907771

/-! ## A134487.P2279882241202274068

`A006530(ceil((n+1)/acot(a(n-1))))` with `a(0)=1`
-/

namespace A134487.P2279882241202274068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (a (n - 1) : ℝ)⌉.toNat

end

end A134487.P2279882241202274068

/-! ## A134487.P7021475663886813771

`A006530(floor((n+1)/acot(a(n-1)))+1)` with `a(0)=1`
-/

namespace A134487.P7021475663886813771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (⌊(n + 1 : ℝ) / SequenceMachineLib.acot (a (n - 1) : ℝ)⌋ + 1).toNat

end

end A134487.P7021475663886813771

/-! ## A134487.P9482813850406701586

`A006530((n+1)/a(n-1)^(-1)+1)` with `a(0)=1`
-/

namespace A134487.P9482813850406701586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (a (n - 1) : ℚ) ^ (-1 : ℤ) + 1)).toNat

end

end A134487.P9482813850406701586

/-! ## A134487.P14001434927932519496

`A006530(a(n-1)+lcm(n, a(n-1))+1)` with `a(0)=1`
-/

namespace A134487.P14001434927932519496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) + (Int.lcm (n : ℤ) (a (n - 1)) + 1 : ℤ)).toNat

end

end A134487.P14001434927932519496

/-!
# A134488: a(0)=1. a(n) = n + d(a(n-1)), where d(m) is the number of positive divisors of m.

The programs for A134488, there is no canonical definition to state claims against.
-/

/-! ## A134488.P9728163311299345076

`A000005(a(n-1))+n` with `a(0)=1`
-/

namespace A134488.P9728163311299345076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1)).toNat + (n : ℤ)

end

end A134488.P9728163311299345076

/-! ## A134488.P3228713357118735190

`A179941(a(n-1))+n` with `a(0)=1`
-/

namespace A134488.P3228713357118735190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179941 (a (n - 1)).toNat + (n : ℤ)

end

end A134488.P3228713357118735190

/-! ## A134488.P1982955250910114352

`A046951(a(n-1)²)+n` with `a(0)=1`
-/

namespace A134488.P1982955250910114352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046951 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A134488.P1982955250910114352

/-! ## A134488.P10978790214935844758

`A322483(a(n-1)²)+n` with `a(0)=1`
-/

namespace A134488.P10978790214935844758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322483 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A134488.P10978790214935844758

/-! ## A134488.P3371547425816904663

`A332712(a(n-1)²)+n` with `a(0)=1`
-/

namespace A134488.P3371547425816904663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332712 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A134488.P3371547425816904663

/-! ## A134488.P13475875033158532442

`A365171(a(n-1)²)+n` with `a(0)=1`
-/

namespace A134488.P13475875033158532442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A365171 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A134488.P13475875033158532442

/-! ## A134488.P4764273511082752033

`A367987(a(n-1)²)+n` with `a(0)=1`
-/

namespace A134488.P4764273511082752033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A367987 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A134488.P4764273511082752033

/-! ## A134488.P2857209806163263755

`A369308(a(n-1)²)+n` with `a(0)=1`
-/

namespace A134488.P2857209806163263755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A369308 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A134488.P2857209806163263755

/-!
# A134489: a(n) = Fibonacci(5*n + 2).

The programs for A134489, the canonical program `A134489.P3074940285726636598` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134489 has offset 0).

The definition of A134489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134489.P3074940285726636598

`A000045(A016873(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134489

/-- `A000045(A016873(n))` -/
def P3074940285726636598.Spec : Prop :=
  ∀ n, P3074940285726636598.a n = A134489 n

theorem P3074940285726636598.correct : P3074940285726636598.Spec := by
  intro n
  simp only [A134489]

end A134489

/-! ## A134489.P1299068745026155466

`2*A049666(n)+A049666(n+1)`
-/

namespace A134489.P1299068745026155466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049666 n + A049666 (n + 1)

end

end A134489.P1299068745026155466

namespace A134489

/-- `2*A049666(n)+A049666(n+1)` -/
def P1299068745026155466.Spec : Prop :=
  ∀ n, P1299068745026155466.a n = A134489 n

end A134489

/-! ## A134489.P6957723265818517313

`ogf((1+2x)/(1-11x-x^2))`
-/

namespace A134489.P6957723265818517313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -11, -1] n

end

end A134489.P6957723265818517313

namespace A134489

/-- `ogf((1+2x)/(1-11x-x^2))` -/
def P6957723265818517313.Spec : Prop :=
  ∀ n, P6957723265818517313.a n = A134489 n

end A134489

/-! ## A134489.P1237043064204400655

`a(n-2)+11*a(n-1)` with `a(0)=1, a(1)=13`
-/

namespace A134489.P1237043064204400655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  a (n - 2) + 11 * a (n - 1)

end

end A134489.P1237043064204400655

namespace A134489

/-- `a(n-2)+11*a(n-1)` -/
def P1237043064204400655.Spec : Prop :=
  ∀ n, (P1237043064204400655.a n : ℤ) = A134489 n

end A134489

/-! ## A134489.P9119168443778669245

`a(n-2)+lcm(11, a(n-1))` with `a(0)=1, a(1)=13`
-/

namespace A134489.P9119168443778669245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  a (n - 2) + Nat.lcm 11 (a (n - 1))

end

end A134489.P9119168443778669245

namespace A134489

/-- `a(n-2)+lcm(11, a(n-1))` -/
def P9119168443778669245.Spec : Prop :=
  ∀ n, (P9119168443778669245.a n : ℤ) = A134489 n

end A134489

/-! ## A134489.P774961673193078120

`A373566(5*n)`
-/

namespace A134489.P774961673193078120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (5 * n)

end

end A134489.P774961673193078120

namespace A134489

/-- `A373566(5*n)` -/
def P774961673193078120.Spec : Prop :=
  ∀ n, P774961673193078120.a n = A134489 n

end A134489

/-! ## A134489.P2487952245608974812

`A096748(10*n)`
-/

namespace A134489.P2487952245608974812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (10 * n)

end

end A134489.P2487952245608974812

namespace A134489

/-- `A096748(10*n)` -/
def P2487952245608974812.Spec : Prop :=
  ∀ n, P2487952245608974812.a n = A134489 n

end A134489

/-! ## A134489.P6543764356167190808

`A000045(5*n+2)`
-/

namespace A134489.P6543764356167190808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (5 * n + 2)

end

end A134489.P6543764356167190808

namespace A134489

/-- `A000045(5*n+2)` -/
def P6543764356167190808.Spec : Prop :=
  ∀ n, P6543764356167190808.a n = A134489 n

end A134489

/-! ## A134489.P12696742379697295636

`A264800(5*n+2)`
-/

namespace A134489.P12696742379697295636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264800 (5 * n + 2)

end

end A134489.P12696742379697295636

namespace A134489

/-- `A264800(5*n+2)` -/
def P12696742379697295636.Spec : Prop :=
  ∀ n, P12696742379697295636.a n = A134489 n

end A134489

/-! ## A134489.P12319682429271548226

`A212804(5*n+3)`
-/

namespace A134489.P12319682429271548226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (5 * n + 3)

end

end A134489.P12319682429271548226

namespace A134489

/-- `A212804(5*n+3)` -/
def P12319682429271548226.Spec : Prop :=
  ∀ n, P12319682429271548226.a n = A134489 n

end A134489

/-!
# A134490: a(n) = Fibonacci(5n + 3).

The programs for A134490, the canonical program `A134490.P4525670655401888910` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134490 has offset 0).

The definition of A134490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134490.P4525670655401888910

`11*a(n-1)+a(n-2)` with `a(0)=2, a(1)=21`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134490

/-- `11*a(n-1)+a(n-2)` -/
def P4525670655401888910.Spec : Prop :=
  ∀ n, (P4525670655401888910.a n : ℤ) = A134490 n

theorem P4525670655401888910.correct : P4525670655401888910.Spec := by
  intro n
  simp only [A134490]

end A134490

/-! ## A134490.P9264328190764506763

`A000045(A016885(n))`
-/

namespace A134490.P9264328190764506763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016885 n).toNat

end

end A134490.P9264328190764506763

namespace A134490

/-- `A000045(A016885(n))` -/
def P9264328190764506763.Spec : Prop :=
  ∀ n, P9264328190764506763.a n = A134490 n

end A134490

/-! ## A134490.P2088128180475538303

`ogf((-2+x)/(-1+11x+x^2))`
-/

namespace A134490.P2088128180475538303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -11, -1] n

end

end A134490.P2088128180475538303

namespace A134490

/-- `ogf((-2+x)/(-1+11x+x^2))` -/
def P2088128180475538303.Spec : Prop :=
  ∀ n, P2088128180475538303.a n = A134490 n

end A134490

/-! ## A134490.P13830576806248847437

`A020695(5*n)`
-/

namespace A134490.P13830576806248847437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (5 * n)

end

end A134490.P13830576806248847437

namespace A134490

/-- `A020695(5*n)` -/
def P13830576806248847437.Spec : Prop :=
  ∀ n, P13830576806248847437.a n = A134490 n

end A134490

/-! ## A134490.P18236937330036456678

`A097594(10*n)`
-/

namespace A134490.P18236937330036456678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097594 (10 * n)

end

end A134490.P18236937330036456678

namespace A134490

/-- `A097594(10*n)` -/
def P18236937330036456678.Spec : Prop :=
  ∀ n, P18236937330036456678.a n = A134490 n

end A134490

/-! ## A134490.P950793077934502790

`A001911(5*n)+2`
-/

namespace A134490.P950793077934502790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (5 * n) + 2

end

end A134490.P950793077934502790

namespace A134490

/-- `A001911(5*n)+2` -/
def P950793077934502790.Spec : Prop :=
  ∀ n, P950793077934502790.a n = A134490 n

end A134490

/-! ## A134490.P9053930390133445064

`A000045(5*n+3)`
-/

namespace A134490.P9053930390133445064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (5 * n + 3)

end

end A134490.P9053930390133445064

namespace A134490

/-- `A000045(5*n+3)` -/
def P9053930390133445064.Spec : Prop :=
  ∀ n, P9053930390133445064.a n = A134490 n

end A134490

/-! ## A134490.P15341907655616105630

`A051111(5*n+3)`
-/

namespace A134490.P15341907655616105630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051111 (5 * n + 3)

end

end A134490.P15341907655616105630

namespace A134490

/-- `A051111(5*n+3)` -/
def P15341907655616105630.Spec : Prop :=
  ∀ n, P15341907655616105630.a n = A134490 n

end A134490

/-! ## A134490.P8776620840452845433

`record[∑[A051111(n+3)]]`
-/

namespace A134490.P8776620840452845433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051111 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134490.P8776620840452845433

namespace A134490

/-- `record[∑[A051111(n+3)]]` -/
def P8776620840452845433.Spec : Prop :=
  ∀ n, P8776620840452845433.a n = A134490 n

end A134490

/-! ## A134490.P3204398504858671333

`A123231(5*(2*n+1))`
-/

namespace A134490.P3204398504858671333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (5 * (2 * n + 1))

end

end A134490.P3204398504858671333

namespace A134490

/-- `A123231(5*(2*n+1))` -/
def P3204398504858671333.Spec : Prop :=
  ∀ n, P3204398504858671333.a n = A134490 n

end A134490

/-!
# A134491: a(n) = Fibonacci(5*n+4).

The programs for A134491, the canonical program `A134491.P9559343845643119561` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134491 has offset 0).

The definition of A134491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134491.P9559343845643119561

`A000045(A016897(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134491

/-- `A000045(A016897(n))` -/
def P9559343845643119561.Spec : Prop :=
  ∀ n, P9559343845643119561.a n = A134491 n

theorem P9559343845643119561.correct : P9559343845643119561.Spec := by
  intro n
  simp only [A134491]

end A134491

/-! ## A134491.P14359574040807093029

`ogf((3+x)/(1-11x-x^2))`
-/

namespace A134491.P14359574040807093029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -11, -1] n

end

end A134491.P14359574040807093029

namespace A134491

/-- `ogf((3+x)/(1-11x-x^2))` -/
def P14359574040807093029.Spec : Prop :=
  ∀ n, P14359574040807093029.a n = A134491 n

end A134491

/-! ## A134491.P7207111242212620169

`a(n-2)+11*a(n-1)` with `a(0)=3, a(1)=34`
-/

namespace A134491.P7207111242212620169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 34] fun n a =>
  a (n - 2) + 11 * a (n - 1)

end

end A134491.P7207111242212620169

namespace A134491

/-- `a(n-2)+11*a(n-1)` -/
def P7207111242212620169.Spec : Prop :=
  ∀ n, (P7207111242212620169.a n : ℤ) = A134491 n

end A134491

/-! ## A134491.P14172421193199973050

`record[A138384(n)]`
-/

namespace A134491.P14172421193199973050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134491.P14172421193199973050

namespace A134491

/-- `record[A138384(n)]` -/
def P14172421193199973050.Spec : Prop :=
  ∀ n, P14172421193199973050.a n = A134491 n

end A134491

/-! ## A134491.P15587365532568923817

`A020701(5*n)`
-/

namespace A134491.P15587365532568923817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (5 * n)

end

end A134491.P15587365532568923817

namespace A134491

/-- `A020701(5*n)` -/
def P15587365532568923817.Spec : Prop :=
  ∀ n, P15587365532568923817.a n = A134491 n

end A134491

/-! ## A134491.P12863807378946078461

`A138384(5*n)`
-/

namespace A134491.P12863807378946078461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138384 (5 * n)

end

end A134491.P12863807378946078461

namespace A134491

/-- `A138384(5*n)` -/
def P12863807378946078461.Spec : Prop :=
  ∀ n, P12863807378946078461.a n = A134491 n

end A134491

/-! ## A134491.P2209330376287331917

`A212804(5*(n+1))`
-/

namespace A134491.P2209330376287331917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (5 * (n + 1))

end

end A134491.P2209330376287331917

namespace A134491

/-- `A212804(5*(n+1))` -/
def P2209330376287331917.Spec : Prop :=
  ∀ n, P2209330376287331917.a n = A134491 n

end A134491

/-! ## A134491.P18335783642066532757

`A324969(5*(n+1))`
-/

namespace A134491.P18335783642066532757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (5 * (n + 1))

end

end A134491.P18335783642066532757

namespace A134491

/-- `A324969(5*(n+1))` -/
def P18335783642066532757.Spec : Prop :=
  ∀ n, P18335783642066532757.a n = A134491 n

end A134491

/-! ## A134491.P8738435684546583345

`A000045(5*n+4)`
-/

namespace A134491.P8738435684546583345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (5 * n + 4)

end

end A134491.P8738435684546583345

namespace A134491

/-- `A000045(5*n+4)` -/
def P8738435684546583345.Spec : Prop :=
  ∀ n, P8738435684546583345.a n = A134491 n

end A134491

/-! ## A134491.P10521602200306471859

`A000071(5*n+4)+1`
-/

namespace A134491.P10521602200306471859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (5 * n + 4) + 1

end

end A134491.P10521602200306471859

namespace A134491

/-- `A000071(5*n+4)+1` -/
def P10521602200306471859.Spec : Prop :=
  ∀ n, P10521602200306471859.a n = A134491 n

end A134491

/-!
# A134492: a(n) = Fibonacci(6*n).

The programs for A134492, the canonical program `A134492.P7105015658892908634` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134492 has offset 0).

The definition of A134492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134492.P7105015658892908634

`18*a(n-1)-a(n-2)` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134492

/-- `18*a(n-1)-a(n-2)` -/
def P7105015658892908634.Spec : Prop :=
  ∀ n, P7105015658892908634.a n = A134492 n

theorem P7105015658892908634.correct : P7105015658892908634.Spec := by
  intro n
  simp only [A134492]

end A134492

/-! ## A134492.P16318689252020897817

`8*A049660(n)`
-/

namespace A134492.P16318689252020897817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A049660 n

end

end A134492.P16318689252020897817

namespace A134492

/-- `8*A049660(n)` -/
def P16318689252020897817.Spec : Prop :=
  ∀ n, P16318689252020897817.a n = A134492 n

end A134492

/-! ## A134492.P4456389077146094969

`A000045(A008588(n))`
-/

namespace A134492.P4456389077146094969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008588 n).toNat

end

end A134492.P4456389077146094969

namespace A134492

/-- `A000045(A008588(n))` -/
def P4456389077146094969.Spec : Prop :=
  ∀ n, P4456389077146094969.a n = A134492 n

end A134492

/-! ## A134492.P9291968081303993364

`A014445(n)*A014448(n)`
-/

namespace A134492.P9291968081303993364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n * A014448 n

end

end A134492.P9291968081303993364

namespace A134492

/-- `A014445(n)*A014448(n)` -/
def P9291968081303993364.Spec : Prop :=
  ∀ n, P9291968081303993364.a n = A134492 n

end A134492

/-! ## A134492.P1003900950145451737

`A000045(3*n)*A000032(3*n)`
-/

namespace A134492.P1003900950145451737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) * A000032 (3 * n)

end

end A134492.P1003900950145451737

namespace A134492

/-- `A000045(3*n)*A000032(3*n)` -/
def P1003900950145451737.Spec : Prop :=
  ∀ n, P1003900950145451737.a n = A134492 n

end A134492

/-! ## A134492.P948529998979121221

`ogf(8x/(1-18x+x^2))`
-/

namespace A134492.P948529998979121221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -18, 1] n

end

end A134492.P948529998979121221

namespace A134492

/-- `ogf(8x/(1-18x+x^2))` -/
def P948529998979121221.Spec : Prop :=
  ∀ n, P948529998979121221.a n = A134492 n

end A134492

/-! ## A134492.P15021581236375213976

`A014445(2*n)`
-/

namespace A134492.P15021581236375213976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (2 * n)

end

end A134492.P15021581236375213976

namespace A134492

/-- `A014445(2*n)` -/
def P15021581236375213976.Spec : Prop :=
  ∀ n, P15021581236375213976.a n = A134492 n

end A134492

/-! ## A134492.P3383982452801131221

`2*A060645(n)`
-/

namespace A134492.P3383982452801131221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060645 n

end

end A134492.P3383982452801131221

namespace A134492

/-- `2*A060645(n)` -/
def P3383982452801131221.Spec : Prop :=
  ∀ n, P3383982452801131221.a n = A134492 n

end A134492

/-! ## A134492.P17714973999141901192

`A001906(3*n)`
-/

namespace A134492.P17714973999141901192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (3 * n)

end

end A134492.P17714973999141901192

namespace A134492

/-- `A001906(3*n)` -/
def P17714973999141901192.Spec : Prop :=
  ∀ n, P17714973999141901192.a n = A134492 n

end A134492

/-! ## A134492.P10826630326325792206

`A117647(4*n)`
-/

namespace A134492.P10826630326325792206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (4 * n)

end

end A134492.P10826630326325792206

namespace A134492

/-- `A117647(4*n)` -/
def P10826630326325792206.Spec : Prop :=
  ∀ n, P10826630326325792206.a n = A134492 n

end A134492

/-!
# A134493: a(n) = Fibonacci(6*n+1).

The programs for A134493, the canonical program `A134493.P8400874849077054690` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134493 has offset 0).

The definition of A134493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134493.P8400874849077054690

`18*a(n-1)-a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A134493

/-- `18*a(n-1)-a(n-2)` -/
def P8400874849077054690.Spec : Prop :=
  ∀ n, P8400874849077054690.a n = A134493 n

theorem P8400874849077054690.correct : P8400874849077054690.Spec := by
  intro n
  simp only [A134493]

end A134493

/-! ## A134493.P7182630184675015782

`A060645(n)+A023039(n)`
-/

namespace A134493.P7182630184675015782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060645 n + A023039 n

end

end A134493.P7182630184675015782

namespace A134493

/-- `A060645(n)+A023039(n)` -/
def P7182630184675015782.Spec : Prop :=
  ∀ n, P7182630184675015782.a n = A134493 n

end A134493

/-! ## A134493.P8735152584934310312

`A049660(n+1)-5*A049660(n)`
-/

namespace A134493.P8735152584934310312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 (n + 1) - 5 * A049660 n

end

end A134493.P8735152584934310312

namespace A134493

/-- `A049660(n+1)-5*A049660(n)` -/
def P8735152584934310312.Spec : Prop :=
  ∀ n, P8735152584934310312.a n = A134493 n

end A134493

/-! ## A134493.P4223409261510819182

`(5-sqrt(5)+(5+sqrt(5))*(9+4*sqrt(5))^(2*n))/(10*(9+4*sqrt(5))^n)`
-/

namespace A134493.P4223409261510819182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 - Real.sqrt (5 : ℝ) + (5 + Real.sqrt (5 : ℝ)) * (9 + 4 * Real.sqrt (5 : ℝ)) ^ (2 * n)) / (10 * (9 + 4 * Real.sqrt (5 : ℝ)) ^ n)

end

end A134493.P4223409261510819182

namespace A134493

/-- `(5-sqrt(5)+(5+sqrt(5))*(9+4*sqrt(5))^(2*n))/(10*(9+4*sqrt(5))^n)` -/
def P4223409261510819182.Spec : Prop :=
  ∀ n, P4223409261510819182.a n = (A134493 n : ℝ)

end A134493

/-! ## A134493.P5766443081493421549

`ogf((1-5x)/(1-18x+x^2))`
-/

namespace A134493.P5766443081493421549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -18, 1] n

end

end A134493.P5766443081493421549

namespace A134493

/-- `ogf((1-5x)/(1-18x+x^2))` -/
def P5766443081493421549.Spec : Prop :=
  ∀ n, P5766443081493421549.a n = A134493 n

end A134493

/-! ## A134493.P5906687418527008766

`A033887(2*n)`
-/

namespace A134493.P5906687418527008766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 (2 * n)

end

end A134493.P5906687418527008766

namespace A134493

/-- `A033887(2*n)` -/
def P5906687418527008766.Spec : Prop :=
  ∀ n, P5906687418527008766.a n = A134493 n

end A134493

/-! ## A134493.P6058611418329973396

`A122367(3*n)`
-/

namespace A134493.P6058611418329973396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (3 * n)

end

end A134493.P6058611418329973396

namespace A134493

/-- `A122367(3*n)` -/
def P6058611418329973396.Spec : Prop :=
  ∀ n, P6058611418329973396.a n = A134493 n

end A134493

/-! ## A134493.P10380691813424655956

`A179134(3*n)`
-/

namespace A134493.P10380691813424655956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179134 (3 * n)

end

end A134493.P10380691813424655956

namespace A134493

/-- `A179134(3*n)` -/
def P10380691813424655956.Spec : Prop :=
  ∀ n, P10380691813424655956.a n = A134493 n

end A134493

/-! ## A134493.P17286359886395779526

`A014437(4*n)`
-/

namespace A134493.P17286359886395779526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 (4 * n)

end

end A134493.P17286359886395779526

namespace A134493

/-- `A014437(4*n)` -/
def P17286359886395779526.Spec : Prop :=
  ∀ n, P17286359886395779526.a n = A134493 n

end A134493

/-! ## A134493.P6874767255069557400

`A094967(6*n)`
-/

namespace A134493.P6874767255069557400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (6 * n)

end

end A134493.P6874767255069557400

namespace A134493

/-- `A094967(6*n)` -/
def P6874767255069557400.Spec : Prop :=
  ∀ n, P6874767255069557400.a n = A134493 n

end A134493

/-!
# A134494: a(n) = Fibonacci(6n+2).

The programs for A134494, the canonical program `A134494.P14791650121589639962` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134494 has offset 0).

The definition of A134494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134494.P14791650121589639962

`A000045(A016933(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134494

/-- `A000045(A016933(n))` -/
def P14791650121589639962.Spec : Prop :=
  ∀ n, P14791650121589639962.a n = A134494 n

theorem P14791650121589639962.correct : P14791650121589639962.Spec := by
  intro n
  simp only [A134494]

end A134494

/-! ## A134494.P10193979830447480544

`3*A049660(n)+A049660(n+1)`
-/

namespace A134494.P10193979830447480544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049660 n + A049660 (n + 1)

end

end A134494.P10193979830447480544

namespace A134494

/-- `3*A049660(n)+A049660(n+1)` -/
def P10193979830447480544.Spec : Prop :=
  ∀ n, P10193979830447480544.a n = A134494 n

end A134494

/-! ## A134494.P9448643265308391395

`ogf((1+3x)/(1-18x+x^2))`
-/

namespace A134494.P9448643265308391395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -18, 1] n

end

end A134494.P9448643265308391395

namespace A134494

/-- `ogf((1+3x)/(1-18x+x^2))` -/
def P9448643265308391395.Spec : Prop :=
  ∀ n, P9448643265308391395.a n = A134494 n

end A134494

/-! ## A134494.P4498316334586242910

`record[floor(-ϕ^3*a(n-1))]` with `a(0)=1`
-/

namespace A134494.P4498316334586242910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊-(Real.goldenRatio ^ 3 * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134494.P4498316334586242910

namespace A134494

/-- `record[floor(-ϕ^3*a(n-1))]` -/
def P4498316334586242910.Spec : Prop :=
  ∀ n, P4498316334586242910.a n = A134494 n

end A134494

/-! ## A134494.P15655109028399819071

`18*a(n-1)-a(n-2)` with `a(0)=1, a(1)=21`
-/

namespace A134494.P15655109028399819071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  18 * a (n - 1) - a (n - 2)

end

end A134494.P15655109028399819071

namespace A134494

/-- `18*a(n-1)-a(n-2)` -/
def P15655109028399819071.Spec : Prop :=
  ∀ n, P15655109028399819071.a n = A134494 n

end A134494

/-! ## A134494.P16759521911500356926

`record[A099843(n)]`
-/

namespace A134494.P16759521911500356926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134494.P16759521911500356926

namespace A134494

/-- `record[A099843(n)]` -/
def P16759521911500356926.Spec : Prop :=
  ∀ n, P16759521911500356926.a n = A134494 n

end A134494

/-! ## A134494.P1924366162808558134

`A099843(2*n)`
-/

namespace A134494.P1924366162808558134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099843 (2 * n)

end

end A134494.P1924366162808558134

namespace A134494

/-- `A099843(2*n)` -/
def P1924366162808558134.Spec : Prop :=
  ∀ n, P1924366162808558134.a n = A134494 n

end A134494

/-! ## A134494.P15006027610118820884

`A052952(6*n)`
-/

namespace A134494.P15006027610118820884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (6 * n)

end

end A134494.P15006027610118820884

namespace A134494

/-- `A052952(6*n)` -/
def P15006027610118820884.Spec : Prop :=
  ∀ n, P15006027610118820884.a n = A134494 n

end A134494

/-! ## A134494.P5178919164455106380

`A109794(6*n)`
-/

namespace A134494.P5178919164455106380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 (6 * n)

end

end A134494.P5178919164455106380

namespace A134494

/-- `A109794(6*n)` -/
def P5178919164455106380.Spec : Prop :=
  ∀ n, P5178919164455106380.a n = A134494 n

end A134494

/-! ## A134494.P16654404650098265202

`A147600(6*n)`
-/

namespace A134494.P16654404650098265202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (6 * n)

end

end A134494.P16654404650098265202

namespace A134494

/-- `A147600(6*n)` -/
def P16654404650098265202.Spec : Prop :=
  ∀ n, P16654404650098265202.a n = A134494 n

end A134494

/-!
# A134495: a(n) = Fibonacci(6n + 3).

The programs for A134495, the canonical program `A134495.P18293174624368307397` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134495 has offset 0).

The definition of A134495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134495.P18293174624368307397

`2*A007805(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134495

/-- `2*A007805(n)` -/
def P18293174624368307397.Spec : Prop :=
  ∀ n, P18293174624368307397.a n = A134495 n

theorem P18293174624368307397.correct : P18293174624368307397.Spec := by
  intro n
  simp only [A134495]

end A134495

/-! ## A134495.P1668593819028600919

`A000045(A016945(n))`
-/

namespace A134495.P1668593819028600919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016945 n).toNat

end

end A134495.P1668593819028600919

namespace A134495

/-- `A000045(A016945(n))` -/
def P1668593819028600919.Spec : Prop :=
  ∀ n, P1668593819028600919.a n = A134495 n

end A134495

/-! ## A134495.P13636183869174097630

`ogf((2-2x)/(1-18x+x^2))`
-/

namespace A134495.P13636183869174097630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -18, 1] n

end

end A134495.P13636183869174097630

namespace A134495

/-- `ogf((2-2x)/(1-18x+x^2))` -/
def P13636183869174097630.Spec : Prop :=
  ∀ n, P13636183869174097630.a n = A134495 n

end A134495

/-! ## A134495.P13545181850086636954

`18*a(n-1)-a(n-2)` with `a(0)=2, a(1)=34`
-/

namespace A134495.P13545181850086636954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 34] fun n a =>
  18 * a (n - 1) - a (n - 2)

end

end A134495.P13545181850086636954

namespace A134495

/-- `18*a(n-1)-a(n-2)` -/
def P13545181850086636954.Spec : Prop :=
  ∀ n, P13545181850086636954.a n = A134495 n

end A134495

/-! ## A134495.P2025717745040209796

`Δ[A207832(n)]`
-/

namespace A134495.P2025717745040209796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134495.P2025717745040209796

namespace A134495

/-- `Δ[A207832(n)]` -/
def P2025717745040209796.Spec : Prop :=
  ∀ n, P2025717745040209796.a n = A134495 n

end A134495

/-! ## A134495.P13294257341219660496

`A076684(n)+1`
-/

namespace A134495.P13294257341219660496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076684 n + 1

end

end A134495.P13294257341219660496

namespace A134495

/-- `A076684(n)+1` -/
def P13294257341219660496.Spec : Prop :=
  ∀ n, P13294257341219660496.a n = A134495 n

end A134495

/-! ## A134495.P812167833166477124

`A048575(3*n)`
-/

namespace A134495.P812167833166477124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 (3 * n)

end

end A134495.P812167833166477124

namespace A134495

/-- `A048575(3*n)` -/
def P812167833166477124.Spec : Prop :=
  ∀ n, P812167833166477124.a n = A134495 n

end A134495

/-! ## A134495.P6071182503006109659

`A020695(6*n)`
-/

namespace A134495.P6071182503006109659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (6 * n)

end

end A134495.P6071182503006109659

namespace A134495

/-- `A020695(6*n)` -/
def P6071182503006109659.Spec : Prop :=
  ∀ n, P6071182503006109659.a n = A134495 n

end A134495

/-! ## A134495.P2717778114600457042

`A014445(Δ[n²])`
-/

namespace A134495.P2717778114600457042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134495.P2717778114600457042

namespace A134495

/-- `A014445(Δ[n²])` -/
def P2717778114600457042.Spec : Prop :=
  ∀ n, P2717778114600457042.a n = A134495 n

end A134495

/-! ## A134495.P15426894322073732795

`Δ[2*A049660(n)]`
-/

namespace A134495.P15426894322073732795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134495.P15426894322073732795

namespace A134495

/-- `Δ[2*A049660(n)]` -/
def P15426894322073732795.Spec : Prop :=
  ∀ n, P15426894322073732795.a n = A134495 n

end A134495

/-!
# A134496: Numbers that are not lunar pseudoprimes.

The programs for A134496, there is no canonical definition to state claims against.
-/

/-! ## A134496.P15519954797049741204

`floor(∑[root(10, (n+1)^n)²])`
-/

namespace A134496.P15519954797049741204
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 : ℝ) ^ (1 / ((n + 1) ^ n : ℝ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A134496.P15519954797049741204

/-!
# A134497: a(n) = Fibonacci(6n+5).

The programs for A134497, the canonical program `A134497.P641800258384470957` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134497 has offset 0).

The definition of A134497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134497.P641800258384470957

`A000045(A016969(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134497

/-- `A000045(A016969(n))` -/
def P641800258384470957.Spec : Prop :=
  ∀ n, P641800258384470957.a n = A134497 n

theorem P641800258384470957.correct : P641800258384470957.Spec := by
  intro n
  simp only [A134497]

end A134497

/-! ## A134497.P9434961225481244365

`5*A049660(n+1)-A049660(n)`
-/

namespace A134497.P9434961225481244365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049660 (n + 1) - A049660 n

end

end A134497.P9434961225481244365

namespace A134497

/-- `5*A049660(n+1)-A049660(n)` -/
def P9434961225481244365.Spec : Prop :=
  ∀ n, P9434961225481244365.a n = A134497 n

end A134497

/-! ## A134497.P218010035577979898

`ogf((5-x)/(1-18x+x^2))`
-/

namespace A134497.P218010035577979898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1] [1, -18, 1] n

end

end A134497.P218010035577979898

namespace A134497

/-- `ogf((5-x)/(1-18x+x^2))` -/
def P218010035577979898.Spec : Prop :=
  ∀ n, P218010035577979898.a n = A134497 n

end A134497

/-! ## A134497.P12050988021369208723

`floor(ϕ^6*a(n-1))` with `a(0)=5`
-/

namespace A134497.P12050988021369208723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊Real.goldenRatio ^ 6 * (a (n - 1) : ℝ)⌋

end

end A134497.P12050988021369208723

namespace A134497

/-- `floor(ϕ^6*a(n-1))` -/
def P12050988021369208723.Spec : Prop :=
  ∀ n, P12050988021369208723.a n = A134497 n

end A134497

/-! ## A134497.P16588240400510441857

`18*a(n-1)-a(n-2)` with `a(0)=5, a(1)=89`
-/

namespace A134497.P16588240400510441857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 89] fun n a =>
  18 * a (n - 1) - a (n - 2)

end

end A134497.P16588240400510441857

namespace A134497

/-- `18*a(n-1)-a(n-2)` -/
def P16588240400510441857.Spec : Prop :=
  ∀ n, P16588240400510441857.a n = A134497 n

end A134497

/-! ## A134497.P4427090196104899390

`Δ[A049662(n)]`
-/

namespace A134497.P4427090196104899390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134497.P4427090196104899390

namespace A134497

/-- `Δ[A049662(n)]` -/
def P4427090196104899390.Spec : Prop :=
  ∀ n, P4427090196104899390.a n = A134497 n

end A134497

/-! ## A134497.P11269775756251319954

`A020712(6*n)`
-/

namespace A134497.P11269775756251319954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (6 * n)

end

end A134497.P11269775756251319954

namespace A134497

/-- `A020712(6*n)` -/
def P11269775756251319954.Spec : Prop :=
  ∀ n, P11269775756251319954.a n = A134497 n

end A134497

/-! ## A134497.P17567202796234714917

`Δ[A049652(2*n)]`
-/

namespace A134497.P17567202796234714917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134497.P17567202796234714917

namespace A134497

/-- `Δ[A049652(2*n)]` -/
def P17567202796234714917.Spec : Prop :=
  ∀ n, P17567202796234714917.a n = A134497 n

end A134497

/-! ## A134497.P14993719268788328969

`Δ[A182890(3*n)]`
-/

namespace A134497.P14993719268788328969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182890 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134497.P14993719268788328969

namespace A134497

/-- `Δ[A182890(3*n)]` -/
def P14993719268788328969.Spec : Prop :=
  ∀ n, P14993719268788328969.a n = A134497 n

end A134497

/-! ## A134497.P9701922400866344476

`A015448(2*(n+1))`
-/

namespace A134497.P9701922400866344476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (2 * (n + 1))

end

end A134497.P9701922400866344476

namespace A134497

/-- `A015448(2*(n+1))` -/
def P9701922400866344476.Spec : Prop :=
  ∀ n, P9701922400866344476.a n = A134497 n

end A134497

/-!
# A134498: a(n) = Fibonacci(7n).

The programs for A134498, the canonical program `A134498.P7666158850166276348` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134498 has offset 0).

The definition of A134498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134498.P7666158850166276348

`13*A049667(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134498

/-- `13*A049667(n)` -/
def P7666158850166276348.Spec : Prop :=
  ∀ n, P7666158850166276348.a n = A134498 n

theorem P7666158850166276348.correct : P7666158850166276348.Spec := by
  intro n
  simp only [A134498]

end A134498

/-! ## A134498.P2607437267119369397

`A000045(A008589(n))`
-/

namespace A134498.P2607437267119369397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008589 n).toNat

end

end A134498.P2607437267119369397

namespace A134498

/-- `A000045(A008589(n))` -/
def P2607437267119369397.Spec : Prop :=
  ∀ n, P2607437267119369397.a n = A134498 n

end A134498

/-! ## A134498.P30845625957343726

`a(n-2)+29*a(n-1)` with `a(0)=0, a(1)=13`
-/

namespace A134498.P30845625957343726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n a =>
  a (n - 2) + 29 * a (n - 1)

end

end A134498.P30845625957343726

namespace A134498

/-- `a(n-2)+29*a(n-1)` -/
def P30845625957343726.Spec : Prop :=
  ∀ n, (P30845625957343726.a n : ℤ) = A134498 n

end A134498

/-! ## A134498.P6615920524067471255

`A000045(7*n)`
-/

namespace A134498.P6615920524067471255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (7 * n)

end

end A134498.P6615920524067471255

namespace A134498

/-- `A000045(7*n)` -/
def P6615920524067471255.Spec : Prop :=
  ∀ n, P6615920524067471255.a n = A134498 n

end A134498

/-! ## A134498.P8646053170476265828

`A053602(14*n)`
-/

namespace A134498.P8646053170476265828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (14 * n)

end

end A134498.P8646053170476265828

namespace A134498

/-- `A053602(14*n)` -/
def P8646053170476265828.Spec : Prop :=
  ∀ n, P8646053170476265828.a n = A134498 n

end A134498

/-! ## A134498.P1205560862943801573

`A103609(14*n)`
-/

namespace A134498.P1205560862943801573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (14 * n)

end

end A134498.P1205560862943801573

namespace A134498

/-- `A103609(14*n)` -/
def P1205560862943801573.Spec : Prop :=
  ∀ n, P1205560862943801573.a n = A134498 n

end A134498

/-! ## A134498.P10931605611853134021

`A302126(14*n)`
-/

namespace A134498.P10931605611853134021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (14 * n)

end

end A134498.P10931605611853134021

namespace A134498

/-- `A302126(14*n)` -/
def P10931605611853134021.Spec : Prop :=
  ∀ n, P10931605611853134021.a n = A134498 n

end A134498

/-! ## A134498.P6235481896032411092

`A212804(7*n+1)`
-/

namespace A134498.P6235481896032411092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (7 * n + 1)

end

end A134498.P6235481896032411092

namespace A134498

/-- `A212804(7*n+1)` -/
def P6235481896032411092.Spec : Prop :=
  ∀ n, P6235481896032411092.a n = A134498 n

end A134498

/-! ## A134498.P14133800251608553277

`A001611(7*n)-1`
-/

namespace A134498.P14133800251608553277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (7 * n) - 1

end

end A134498.P14133800251608553277

namespace A134498

/-- `A001611(7*n)-1` -/
def P14133800251608553277.Spec : Prop :=
  ∀ n, P14133800251608553277.a n = A134498 n

end A134498

/-! ## A134498.P5569836751833199031

`A157727(7*n)-4`
-/

namespace A134498.P5569836751833199031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (7 * n) - 4

end

end A134498.P5569836751833199031

namespace A134498

/-- `A157727(7*n)-4` -/
def P5569836751833199031.Spec : Prop :=
  ∀ n, P5569836751833199031.a n = A134498 n

end A134498

/-!
# A134499: a(n) = Fibonacci(7*n+1).

The programs for A134499, there is no canonical definition to state claims against.
-/

/-! ## A134499.P7736505321831046791

`29*a(n-1)+a(n-2)` with `a(0)=1, a(1)=21`
-/

namespace A134499.P7736505321831046791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n a =>
  29 * a (n - 1) + a (n - 2)

end

end A134499.P7736505321831046791

/-! ## A134499.P13690250928472242547

`A079977(14*n)`
-/

namespace A134499.P13690250928472242547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (14 * n)

end

end A134499.P13690250928472242547

/-! ## A134499.P5927508404716790329

`A000045(7*n+1)`
-/

namespace A134499.P5927508404716790329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (7 * n + 1)

end

end A134499.P5927508404716790329

/-! ## A134499.P11850749197642028310

`A212804(7*n+2)`
-/

namespace A134499.P11850749197642028310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (7 * n + 2)

end

end A134499.P11850749197642028310

/-! ## A134499.P16626384569798971756

`A001611(7*n+1)-1`
-/

namespace A134499.P16626384569798971756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (7 * n + 1) - 1

end

end A134499.P16626384569798971756

/-! ## A134499.P2780389692692843660

`A000071(6*n+1+n)+1`
-/

namespace A134499.P2780389692692843660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (6 * n + 1 + n) + 1

end

end A134499.P2780389692692843660

/-! ## A134499.P3041129684759253930

`A097575(A135628(n))`
-/

namespace A134499.P3041129684759253930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A135628 n).toNat

end

end A134499.P3041129684759253930

/-! ## A134499.P8696588924838464451

`A123231(A131877(n))`
-/

namespace A134499.P8696588924838464451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A131877 n).toNat

end

end A134499.P8696588924838464451

/-! ## A134499.P16262363232868520037

`A327035(A008603(n))`
-/

namespace A134499.P16262363232868520037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A008603 n).toNat

end

end A134499.P16262363232868520037

