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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C012
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
import Seq.B003.C002
import Seq.B003.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A129201: Smallest prime p such that the maximum run length of consecutive quadratic nonresidues modulo p is n.

The programs for A129201, there is no canonical definition to state claims against.
-/

/-! ## A129201.P4482254179402871812

`A053184(eq[0, A025899(n)])`
-/

namespace A129201.P4482254179402871812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129201.P4482254179402871812

/-! ## A129201.P3489992336773096017

`A053184(lt[A025899(n), 1])`
-/

namespace A129201.P3489992336773096017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A129201.P3489992336773096017

/-! ## A129201.P553603446814129139

`p?[A018108(A025899(n+1))*A053184(n+1)]`
-/

namespace A129201.P553603446814129139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 (A025899 (n + 1)).toNat * A053184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129201.P553603446814129139

/-!
# A129202: Denominator of 3*(3+(-1)^n) / (n+1)^2.

The programs for A129202, the canonical program `A129202.P3619037989143956245` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129202 has offset 0).

The definition of A129202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129202.P11760416955047367249

`A129196(n)/(n+1)`
-/

namespace A129202.P11760416955047367249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129196 n : ℚ) / (n + 1 : ℚ)

end

end A129202.P11760416955047367249

namespace A129202

/-- `A129196(n)/(n+1)` -/
def P11760416955047367249.Spec : Prop :=
  ∀ n, P11760416955047367249.a n = (A129202 n : ℚ)

end A129202

/-! ## A129202.P3619037989143956245

`A026741(n+1)*A051176(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129202

/-- `A026741(n+1)*A051176(n+1)` -/
def P3619037989143956245.Spec : Prop :=
  ∀ n, P3619037989143956245.a n = A129202 n

theorem P3619037989143956245.correct : P3619037989143956245.Spec := by
  intro n
  simp only [A129202]

end A129202

/-! ## A129202.P1631010225809805069

`lcm(6, (n+1)²)/6`
-/

namespace A129202.P1631010225809805069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 ((n + 1) ^ 2) : ℚ) / 6

end

end A129202.P1631010225809805069

namespace A129202

/-- `lcm(6, (n+1)²)/6` -/
def P1631010225809805069.Spec : Prop :=
  ∀ n, P1631010225809805069.a n = (A129202 n : ℚ)

end A129202

/-! ## A129202.P2396100518746856096

`(n+1)²/gcd(6, n+1)`
-/

namespace A129202.P2396100518746856096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Nat.gcd 6 (n + 1) : ℚ)

end

end A129202.P2396100518746856096

namespace A129202

/-- `(n+1)²/gcd(6, n+1)` -/
def P2396100518746856096.Spec : Prop :=
  ∀ n, P2396100518746856096.a n = (A129202 n : ℚ)

end A129202

/-! ## A129202.P9752577989441548312

`gcd(∑[2*n^5], (n+1)²)`
-/

namespace A129202.P9752577989441548312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) ^ 2)

end

end A129202.P9752577989441548312

namespace A129202

/-- `gcd(∑[2*n^5], (n+1)²)` -/
def P9752577989441548312.Spec : Prop :=
  ∀ n, (P9752577989441548312.a n : ℤ) = A129202 n

end A129202

/-! ## A129202.P6198243456127948743

`(n+1)*gcd((n+1)^3, ∑[∑[n]])`
-/

namespace A129202.P6198243456127948743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd ((n + 1) ^ 3) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129202.P6198243456127948743

namespace A129202

/-- `(n+1)*gcd((n+1)^3, ∑[∑[n]])` -/
def P6198243456127948743.Spec : Prop :=
  ∀ n, (P6198243456127948743.a n : ℤ) = A129202 n

end A129202

/-! ## A129202.P16948814910039191610

`(n+1)*A060789(n+1)`
-/

namespace A129202.P16948814910039191610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060789 (n + 1)

end

end A129202.P16948814910039191610

namespace A129202

/-- `(n+1)*A060789(n+1)` -/
def P16948814910039191610.Spec : Prop :=
  ∀ n, P16948814910039191610.a n = A129202 n

end A129202

/-! ## A129202.P14835646909460722240

`(n+1)^3/A385555(n+1)`
-/

namespace A129202.P14835646909460722240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A385555 (n + 1) : ℚ)

end

end A129202.P14835646909460722240

namespace A129202

/-- `(n+1)^3/A385555(n+1)` -/
def P14835646909460722240.Spec : Prop :=
  ∀ n, P14835646909460722240.a n = (A129202 n : ℚ)

end A129202

/-! ## A129202.P7006763168991771410

`A108678(n)/A175485(n+1)`
-/

namespace A129202.P7006763168991771410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108678 n : ℚ) / (A175485 (n + 1) : ℚ)

end

end A129202.P7006763168991771410

namespace A129202

/-- `A108678(n)/A175485(n+1)` -/
def P7006763168991771410.Spec : Prop :=
  ∀ n, P7006763168991771410.a n = (A129202 n : ℚ)

end A129202

/-! ## A129202.P720822997163673679

`(n+1)*A026741(A237109(n+1))`
-/

namespace A129202.P720822997163673679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (A237109 (n + 1)).toNat

end

end A129202.P720822997163673679

namespace A129202

/-- `(n+1)*A026741(A237109(n+1))` -/
def P720822997163673679.Spec : Prop :=
  ∀ n, P720822997163673679.a n = A129202 n

end A129202

/-! ## A129202.P15982856360933925906

`(n+1)²/A089128(n+1)`
-/

namespace A129202.P15982856360933925906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A089128 (n + 1) : ℚ)

end

end A129202.P15982856360933925906

namespace A129202

/-- `(n+1)²/A089128(n+1)` -/
def P15982856360933925906.Spec : Prop :=
  ∀ n, P15982856360933925906.a n = (A129202 n : ℚ)

end A129202

/-! ## A129202.P255535284714511421

`(n+1)*A060819(A068217(n+1))`
-/

namespace A129202.P255535284714511421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060819 (A068217 (n + 1)).toNat

end

end A129202.P255535284714511421

namespace A129202

/-- `(n+1)*A060819(A068217(n+1))` -/
def P255535284714511421.Spec : Prop :=
  ∀ n, P255535284714511421.a n = A129202 n

end A129202

/-! ## A129202.P14457504305244643850

`(n+1)*A051724(2*(n+1))`
-/

namespace A129202.P14457504305244643850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051724 (2 * (n + 1))

end

end A129202.P14457504305244643850

namespace A129202

/-- `(n+1)*A051724(2*(n+1))` -/
def P14457504305244643850.Spec : Prop :=
  ∀ n, P14457504305244643850.a n = A129202 n

end A129202

/-! ## A129202.P3482137230852047955

`∑[2*n+1]/A306764(2*n+1)`
-/

namespace A129202.P3482137230852047955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A306764 (2 * n + 1) : ℚ)

end

end A129202.P3482137230852047955

namespace A129202

/-- `∑[2*n+1]/A306764(2*n+1)` -/
def P3482137230852047955.Spec : Prop :=
  ∀ n, P3482137230852047955.a n = (A129202 n : ℚ)

end A129202

/-! ## A129202.P3237447262418741866

`(n+1)*A060819(A145064(2*n))`
-/

namespace A129202.P3237447262418741866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060819 (A145064 (2 * n)).toNat

end

end A129202.P3237447262418741866

namespace A129202

/-- `(n+1)*A060819(A145064(2*n))` -/
def P3237447262418741866.Spec : Prop :=
  ∀ n, P3237447262418741866.a n = A129202 n

end A129202

/-! ## A129202.P14977263660238636570

`A051176(n+1)*A060819(2*(n+1))`
-/

namespace A129202.P14977263660238636570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1) * A060819 (2 * (n + 1))

end

end A129202.P14977263660238636570

namespace A129202

/-- `A051176(n+1)*A060819(2*(n+1))` -/
def P14977263660238636570.Spec : Prop :=
  ∀ n, P14977263660238636570.a n = A129202 n

end A129202

/-! ## A129202.P729981165500370629

`A145064(2*n)/2*A026741(n+1)`
-/

namespace A129202.P729981165500370629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145064 (2 * n) : ℚ) / 2 * (A026741 (n + 1) : ℚ)

end

end A129202.P729981165500370629

namespace A129202

/-- `A145064(2*n)/2*A026741(n+1)` -/
def P729981165500370629.Spec : Prop :=
  ∀ n, P729981165500370629.a n = (A129202 n : ℚ)

end A129202

/-! ## A129202.P1420867298275701121

`A186646(2*(n+1))/2*A051176(n+1)`
-/

namespace A129202.P1420867298275701121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186646 (2 * (n + 1)) : ℚ) / 2 * (A051176 (n + 1) : ℚ)

end

end A129202.P1420867298275701121

namespace A129202

/-- `A186646(2*(n+1))/2*A051176(n+1)` -/
def P1420867298275701121.Spec : Prop :=
  ∀ n, P1420867298275701121.a n = (A129202 n : ℚ)

end A129202

/-! ## A129202.P7683598505475746452

`A026741(A145064(2*n))*A026741(n+1)`
-/

namespace A129202.P7683598505475746452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A145064 (2 * n)).toNat * A026741 (n + 1)

end

end A129202.P7683598505475746452

namespace A129202

/-- `A026741(A145064(2*n))*A026741(n+1)` -/
def P7683598505475746452.Spec : Prop :=
  ∀ n, P7683598505475746452.a n = A129202 n

end A129202

/-! ## A129202.P11309104428168119382

`(n+1)*A106619(3*(n+1))`
-/

namespace A129202.P11309104428168119382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106619 (3 * (n + 1))

end

end A129202.P11309104428168119382

namespace A129202

/-- `(n+1)*A106619(3*(n+1))` -/
def P11309104428168119382.Spec : Prop :=
  ∀ n, P11309104428168119382.a n = A129202 n

end A129202

/-!
# A129203: a(n) = numerator(3/(n+1)^3)*(3/2 + (-1)^n/2).

The programs for A129203, the canonical program `A129203.P17743499258839698546` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129203 has offset 0).

The definition of A129203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129203.P17743499258839698546

`6/gcd(n+1, 6)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129203

/-- `6/gcd(n+1, 6)` -/
def P17743499258839698546.Spec : Prop :=
  ∀ n, P17743499258839698546.a n = (A129203 n : ℚ)

end A129203

/-!
# A129204: The denominator of 2/n^3.

The programs for A129204, the canonical program `A129204.P16541730764305222627` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129204 has offset 0).

The definition of A129204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129204.P9305870502844403343

`lcm(2, n^(3%(n+3)))/2`
-/

namespace A129204.P9305870502844403343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n ^ (3 % (n + 3))) : ℚ) / 2

end

end A129204.P9305870502844403343

namespace A129204

/-- `lcm(2, n^(3%(n+3)))/2` -/
def P9305870502844403343.Spec : Prop :=
  ∀ n, P9305870502844403343.a n = (A129204 n : ℚ)

end A129204

/-! ## A129204.P16541730764305222627

`floor(sqrt((n²*gcd(n, ∑[n]))²+1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129204

/-- `floor(sqrt((n²*gcd(n, ∑[n]))²+1))` -/
def P16541730764305222627.Spec : Prop :=
  ∀ n, (P16541730764305222627.a n : ℤ) = A129204 n

theorem P16541730764305222627.correct : P16541730764305222627.Spec := by
  intro n
  simp only [A129204]

end A129204

/-! ## A129204.P5382842623336090552

`n^3/gcd(2, a(n-2))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A129204.P5382842623336090552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  (n ^ 3 : ℚ) / (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)

end

end A129204.P5382842623336090552

namespace A129204

/-- `n^3/gcd(2, a(n-2))` -/
def P5382842623336090552.Spec : Prop :=
  ∀ n, P5382842623336090552.a n = (A129204 n : ℚ)

end A129204

/-! ## A129204.P17284329548036324106

`n^3/(a(n-1)%2+1)` with `a(0)=1, a(1)=1`
-/

namespace A129204.P17284329548036324106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n ^ 3 : ℚ) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 + 1 : ℚ)

end

end A129204.P17284329548036324106

namespace A129204

/-- `n^3/(a(n-1)%2+1)` -/
def P17284329548036324106.Spec : Prop :=
  ∀ n, P17284329548036324106.a n = (A129204 n : ℚ)

end A129204

/-! ## A129204.P1603069216716693016

`A000007(n)+n*A129194(n)`
-/

namespace A129204.P1603069216716693016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A129194 n

end

end A129204.P1603069216716693016

namespace A129204

/-- `A000007(n)+n*A129194(n)` -/
def P1603069216716693016.Spec : Prop :=
  ∀ n, P1603069216716693016.a n = A129204 n

end A129204

/-! ## A129204.P1003560311112802938

`A028310(n)²²/A257088(n)`
-/

namespace A129204.P1003560311112802938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028310 n ^ 2) ^ 2 : ℚ) / (A257088 n : ℚ)

end

end A129204.P1003560311112802938

namespace A129204

/-- `A028310(n)²²/A257088(n)` -/
def P1003560311112802938.Spec : Prop :=
  ∀ n, P1003560311112802938.a n = (A129204 n : ℚ)

end A129204

/-! ## A129204.P1091437723566592830

`A000007(n)+n²*A026741(n)`
-/

namespace A129204.P1091437723566592830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n ^ 2 : ℤ) * A026741 n

end

end A129204.P1091437723566592830

namespace A129204

/-- `A000007(n)+n²*A026741(n)` -/
def P1091437723566592830.Spec : Prop :=
  ∀ n, P1091437723566592830.a n = A129204 n

end A129204

/-! ## A129204.P1023728147715198781

`A028310(n)²*A028310(A026741(n))`
-/

namespace A129204.P1023728147715198781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2 * A028310 (A026741 n).toNat

end

end A129204.P1023728147715198781

namespace A129204

/-- `A028310(n)²*A028310(A026741(n))` -/
def P1023728147715198781.Spec : Prop :=
  ∀ n, P1023728147715198781.a n = A129204 n

end A129204

/-! ## A129204.P14855824300845191029

`A028310(n)²*A028310(sqrt(A168077(n)))`
-/

namespace A129204.P14855824300845191029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2 * A028310 (SequenceMachineLib.roundAway (Real.sqrt (A168077 n : ℝ))).toNat

end

end A129204.P14855824300845191029

namespace A129204

/-- `A028310(n)²*A028310(sqrt(A168077(n)))` -/
def P14855824300845191029.Spec : Prop :=
  ∀ n, P14855824300845191029.a n = A129204 n

end A129204

/-! ## A129204.P7320040323270647189

`(A028310(n)-A142150(n))*A028310(n)²`
-/

namespace A129204.P7320040323270647189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n - A142150 n) * A028310 n ^ 2

end

end A129204.P7320040323270647189

namespace A129204

/-- `(A028310(n)-A142150(n))*A028310(n)²` -/
def P7320040323270647189.Spec : Prop :=
  ∀ n, P7320040323270647189.a n = A129204 n

end A129204

/-! ## A129204.P8472614592316661090

`A028310(n)/A040001(n)*A028310(n)²`
-/

namespace A129204.P8472614592316661090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A040001 n : ℚ) * (A028310 n ^ 2 : ℚ)

end

end A129204.P8472614592316661090

namespace A129204

/-- `A028310(n)/A040001(n)*A028310(n)²` -/
def P8472614592316661090.Spec : Prop :=
  ∀ n, P8472614592316661090.a n = (A129204 n : ℚ)

end A129204

/-! ## A129204.P4876105902558164058

`A028310(n)²²/A028310(A022998(n))`
-/

namespace A129204.P4876105902558164058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028310 n ^ 2) ^ 2 : ℚ) / (A028310 (A022998 n).toNat : ℚ)

end

end A129204.P4876105902558164058

namespace A129204

/-- `A028310(n)²²/A028310(A022998(n))` -/
def P4876105902558164058.Spec : Prop :=
  ∀ n, P4876105902558164058.a n = (A129204 n : ℚ)

end A129204

/-! ## A129204.P6870772606734529175

`A065033(2*n)²*A026741(A065033(2*n))`
-/

namespace A129204.P6870772606734529175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) ^ 2 * A026741 (A065033 (2 * n)).toNat

end

end A129204.P6870772606734529175

namespace A129204

/-- `A065033(2*n)²*A026741(A065033(2*n))` -/
def P6870772606734529175.Spec : Prop :=
  ∀ n, P6870772606734529175.a n = A129204 n

end A129204

/-! ## A129204.P11867011171189603477

`A123108(2*n)²*A026741(A123108(2*n))`
-/

namespace A129204.P11867011171189603477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) ^ 2 * A026741 (A123108 (2 * n)).toNat

end

end A129204.P11867011171189603477

namespace A129204

/-- `A123108(2*n)²*A026741(A123108(2*n))` -/
def P11867011171189603477.Spec : Prop :=
  ∀ n, P11867011171189603477.a n = A129204 n

end A129204

/-! ## A129204.P607379738440510889

`A101279(2*n+1)²*A026741(A101279(2*n+1))`
-/

namespace A129204.P607379738440510889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (2 * n + 1) ^ 2 * A026741 (A101279 (2 * n + 1)).toNat

end

end A129204.P607379738440510889

namespace A129204

/-- `A101279(2*n+1)²*A026741(A101279(2*n+1))` -/
def P607379738440510889.Spec : Prop :=
  ∀ n, P607379738440510889.a n = A129204 n

end A129204

/-! ## A129204.P13153877400733418605

`A028310(n)*A062828(A028310(n²))`
-/

namespace A129204.P13153877400733418605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A062828 (A028310 (n ^ 2)).toNat

end

end A129204.P13153877400733418605

namespace A129204

/-- `A028310(n)*A062828(A028310(n²))` -/
def P13153877400733418605.Spec : Prop :=
  ∀ n, P13153877400733418605.a n = A129204 n

end A129204

/-! ## A129204.P6479501227978081940

`A028310(n*A026741(n))*A028310(n)`
-/

namespace A129204.P6479501227978081940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A026741 n).toNat * A028310 n

end

end A129204.P6479501227978081940

namespace A129204

/-- `A028310(n*A026741(n))*A028310(n)` -/
def P6479501227978081940.Spec : Prop :=
  ∀ n, P6479501227978081940.a n = A129204 n

end A129204

/-! ## A129204.P10462781541771600943

`A065033(2*n)*A186813(A065033(2*n)²)`
-/

namespace A129204.P10462781541771600943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A186813 (A065033 (2 * n) ^ 2).toNat

end

end A129204.P10462781541771600943

namespace A129204

/-- `A065033(2*n)*A186813(A065033(2*n)²)` -/
def P10462781541771600943.Spec : Prop :=
  ∀ n, P10462781541771600943.a n = A129204 n

end A129204

/-! ## A129204.P13546761771787241487

`A082928(A123108(2*n)²)*A123108(2*n)`
-/

namespace A129204.P13546761771787241487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (A123108 (2 * n) ^ 2).toNat * A123108 (2 * n)

end

end A129204.P13546761771787241487

namespace A129204

/-- `A082928(A123108(2*n)²)*A123108(2*n)` -/
def P13546761771787241487.Spec : Prop :=
  ∀ n, P13546761771787241487.a n = A129204 n

end A129204

/-!
# A129205: From Wendt's determinant compute (A048954(2*n)/(1-4^n))^(1/2).

The programs for A129205, there is no canonical definition to state claims against.
-/

/-! ## A129205.P6505462150870390199

`A215615(2*(n+1))`
-/

namespace A129205.P6505462150870390199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215615 (2 * (n + 1))

end

end A129205.P6505462150870390199

/-!
# A129211: Numbers k such that k^3 divides 3^(k^2) - 1.

The programs for A129211, there is no canonical definition to state claims against.
-/

/-! ## A129211.P3045386139177456280

`A177909(lt[A090385(n+3), A171921(n+4)])`
-/

namespace A129211.P3045386139177456280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090385 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171921 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129211.P3045386139177456280

/-! ## A129211.P15572102516942605838

`A173817(A192440(n+1))`
-/

namespace A129211.P15572102516942605838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (A192440 (n + 1)).toNat

end

end A129211.P15572102516942605838

/-! ## A129211.P1296510029919522382

`A332809(∑[A038170(n+1)])`
-/

namespace A129211.P1296510029919522382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129211.P1296510029919522382

/-!
# A129212: Numbers k such that k^3 divides 4^(k^2) - 1.

The programs for A129212, there is no canonical definition to state claims against.
-/

/-! ## A129212.P4346087592802887771

`∩[A003528(n+1), A067936(n+1)]`
-/

namespace A129212.P4346087592802887771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129212.P4346087592802887771

/-!
# A129217: Permutations with exactly 9 fixed points.

The programs for A129217, there is no canonical definition to state claims against.
-/

/-! ## A129217.P474415729225034094

`C(n+9, 9)*A000166(n)`
-/

namespace A129217.P474415729225034094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A000166 n

end

end A129217.P474415729225034094

/-! ## A129217.P15282354971077262822

`C(n+9, 9)*A008290(∑[n])`
-/

namespace A129217.P15282354971077262822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129217.P15282354971077262822

/-! ## A129217.P10751558963008298697

`abs(A000582(n+9)*A182386(n))`
-/

namespace A129217.P10751558963008298697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000582 (n + 9) * A182386 n|

end

end A129217.P10751558963008298697

/-! ## A129217.P2223662799732828651

`∑[A000581(n+8)]*A000166(n)`
-/

namespace A129217.P2223662799732828651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A129217.P2223662799732828651

/-! ## A129217.P13150228393814673231

`A000582(n+9)*A068106(∑[n])`
-/

namespace A129217.P13150228393814673231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A068106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129217.P13150228393814673231

/-! ## A129217.P9000450524816157640

`∑[∑[A000580(n+7)]]*A000166(n)`
-/

namespace A129217.P9000450524816157640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A129217.P9000450524816157640

/-! ## A129217.P9997517747781585647

`A000582(n+9)*A008290(A000217(n))`
-/

namespace A129217.P9997517747781585647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A008290 (A000217 n).toNat

end

end A129217.P9997517747781585647

/-! ## A129217.P12058802309317544142

`A000582(n+9)*A047920(A000096(n))`
-/

namespace A129217.P12058802309317544142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A047920 (A000096 n).toNat

end

end A129217.P12058802309317544142

/-! ## A129217.P15665387719795449124

`abs(A182386(n))*A007318(A000124(n+9)+8)`
-/

namespace A129217.P15665387719795449124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| * A007318 (A000124 (n + 9) + 8).toNat

end

end A129217.P15665387719795449124

/-! ## A129217.P9700288743918310150

`A135807(n+1)+A135807(n)-A135806(n+1)`
-/

namespace A129217.P9700288743918310150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135807 (n + 1) + (A135807 n - A135806 (n + 1))

end

end A129217.P9700288743918310150

/-!
# A129218: Permutations with exactly 10 fixed points.

The programs for A129218, there is no canonical definition to state claims against.
-/

/-! ## A129218.P6462392526659942826

`C(n+10, 10)*A000166(n)`
-/

namespace A129218.P6462392526659942826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 10) 10 : ℤ) * A000166 n

end

end A129218.P6462392526659942826

/-! ## A129218.P1390923584187113493

`abs(A182386(n))*C(n+10, 10)`
-/

namespace A129218.P1390923584187113493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| * (Nat.choose (n + 10) 10 : ℤ)

end

end A129218.P1390923584187113493

/-! ## A129218.P2409054920258449873

`C(n+10, 10)*A008290(∑[n])`
-/

namespace A129218.P2409054920258449873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 10) 10 : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129218.P2409054920258449873

/-! ## A129218.P15607324188359495305

`A000166(n)*A001287(n)`
-/

namespace A129218.P15607324188359495305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A001287 (n + 10)

end

end A129218.P15607324188359495305

/-! ## A129218.P18256618116749585923

`abs(∑[A000582(n+9)]*A182386(n))`
-/

namespace A129218.P18256618116749585923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A182386 n|

end

end A129218.P18256618116749585923

/-! ## A129218.P14985709115113412695

`∑[∑[A000581(n+8)]]*A000166(n)`
-/

namespace A129218.P14985709115113412695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A129218.P14985709115113412695

/-! ## A129218.P2321082880169065414

`∑[A000582(n+9)]*A068106(∑[n])`
-/

namespace A129218.P2321082880169065414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A068106 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A129218.P2321082880169065414

/-! ## A129218.P12965297356571114691

`A001287(n)*A047920(A000096(n))`
-/

namespace A129218.P12965297356571114691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A047920 (A000096 n).toNat

end

end A129218.P12965297356571114691

/-! ## A129218.P9346499083216596452

`A098825(A055998(n+9)-8)`
-/

namespace A129218.P9346499083216596452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (A055998 (n + 9) - 8).toNat

end

end A129218.P9346499083216596452

/-! ## A129218.P14313723196845670284

`A098825(eq[11, A004736(n+1)])`
-/

namespace A129218.P14313723196845670284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129218.P14313723196845670284

/-!
# A129223: Residues of the Lucas - Lehmer primality test for M(19) = 524287.

The programs for A129223, there is no canonical definition to state claims against.
-/

/-! ## A129223.P9251638520701394810

`A129226(n)%p?[A001348(n+3)]`
-/

namespace A129223.P9251638520701394810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129226 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A129223.P9251638520701394810

/-!
# A129224: Residues of the Lucas - Lehmer primality test for M(23) = 8388607.

The programs for A129224, there is no canonical definition to state claims against.
-/

/-! ## A129224.P4713049228110645481

`A003010(n)%A000225(A016047(n+1))`
-/

namespace A129224.P4713049228110645481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003010 n) (A000225 (A016047 (n + 1)).toNat)

end

end A129224.P4713049228110645481

/-!
# A129227: a(n) is that prime number, p, less than n*Pi such that n*Pi/p has the smallest fractional part.

The programs for A129227, there is no canonical definition to state claims against.
-/

/-! ## A129227.P657749878837005338

`A000040(A274457(2*(n+2))%A274449(3*n+4))`
-/

namespace A129227.P657749878837005338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A274457 (2 * (n + 2))) (A274449 (3 * n + 4))).toNat

end

end A129227.P657749878837005338

/-! ## A129227.P1054662655101216196

`A121373(A265806(n+4))+A000040(A088444(2*n+4))`
-/

namespace A129227.P1054662655101216196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A265806 (n + 4)).toNat + A000040 (A088444 (2 * n + 4)).toNat

end

end A129227.P1054662655101216196

/-!
# A129229: a(n) = floor(n*r)-a(n-1), where r is the golden mean, (1+sqrt(5))/2.

The programs for A129229, the canonical program `A129229.P17202634793922370334` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129229 has offset 0).

The definition of A129229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129229.P17202634793922370334

`floor(ϕ*n-a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129229

/-- `floor(ϕ*n-a(n-1))` -/
def P17202634793922370334.Spec : Prop :=
  ∀ n, P17202634793922370334.a n = A129229 n

theorem P17202634793922370334.correct : P17202634793922370334.Spec := by
  intro n
  simp only [A129229]

end A129229

/-! ## A129229.P932899096761364707

`abs(∑[(-1)^n*floor(ϕ*n)])`
-/

namespace A129229.P932899096761364707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A129229.P932899096761364707

namespace A129229

/-- `abs(∑[(-1)^n*floor(ϕ*n)])` -/
def P932899096761364707.Spec : Prop :=
  ∀ n, P932899096761364707.a n = A129229 n

end A129229

/-! ## A129229.P643693578408083157

`-ceil(a(n-1)-ϕ*n)` with `a(0)=0`
-/

namespace A129229.P643693578408083157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -⌈(a (n - 1) : ℝ) - Real.goldenRatio * (n : ℝ)⌉

end

end A129229.P643693578408083157

namespace A129229

/-- `-ceil(a(n-1)-ϕ*n)` -/
def P643693578408083157.Spec : Prop :=
  ∀ n, P643693578408083157.a n = A129229 n

end A129229

/-! ## A129229.P5166466495303922553

`ceil(ϕ*n)-(a(n-1)+1)` with `a(0)=0`
-/

namespace A129229.P5166466495303922553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (n : ℝ)⌉ - (a (n - 1) + 1)

end

end A129229.P5166466495303922553

namespace A129229

/-- `ceil(ϕ*n)-(a(n-1)+1)` -/
def P5166466495303922553.Spec : Prop :=
  ∀ n, P5166466495303922553.a n = A129229 n

end A129229

/-! ## A129229.P14806760303759489743

`ceil(ϕ*n)-1-a(n-1)` with `a(0)=0`
-/

namespace A129229.P14806760303759489743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (n : ℝ)⌉ - 1 - a (n - 1)

end

end A129229.P14806760303759489743

namespace A129229

/-- `ceil(ϕ*n)-1-a(n-1)` -/
def P14806760303759489743.Spec : Prop :=
  ∀ n, P14806760303759489743.a n = A129229 n

end A129229

/-! ## A129229.P1207385428900558033

`floor(n/ϕ)-a(n-1)+n` with `a(0)=0`
-/

namespace A129229.P1207385428900558033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℝ) / Real.goldenRatio⌋ - a (n - 1) + (n : ℤ)

end

end A129229.P1207385428900558033

namespace A129229

/-- `floor(n/ϕ)-a(n-1)+n` -/
def P1207385428900558033.Spec : Prop :=
  ∀ n, P1207385428900558033.a n = A129229 n

end A129229

/-! ## A129229.P10589998637721109827

`floor(n-(a(n-1)-n/ϕ))` with `a(0)=0`
-/

namespace A129229.P10589998637721109827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℝ) - ((a (n - 1) : ℝ) - (n : ℝ) / Real.goldenRatio)⌋

end

end A129229.P10589998637721109827

namespace A129229

/-- `floor(n-(a(n-1)-n/ϕ))` -/
def P10589998637721109827.Spec : Prop :=
  ∀ n, P10589998637721109827.a n = A129229 n

end A129229

/-! ## A129229.P1030268268007673778

`A129230(n)-A129230(A259361(n²))`
-/

namespace A129229.P1030268268007673778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129230 n - A129230 (A259361 (n ^ 2)).toNat

end

end A129229.P1030268268007673778

namespace A129229

/-- `A129230(n)-A129230(A259361(n²))` -/
def P1030268268007673778.Spec : Prop :=
  ∀ n, P1030268268007673778.a n = A129229 n

end A129229

/-!
# A129230: a(n) = floor(n*r) + floor((n-2)*r) + floor((n-4)*r) + ... + floor(k*r), where r = golden ratio = (1 + sqrt(5))/2 and k = n mod 2.

The programs for A129230, the canonical program `A129230.P12651400722850919563` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129230 has offset 0).

The definition of A129230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129230.P871203921828557480

`floor(a(n-2)+ϕ*n)` with `a(0)=0, a(1)=1`
-/

namespace A129230.P871203921828557480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A129230.P871203921828557480

namespace A129230

/-- `floor(a(n-2)+ϕ*n)` -/
def P871203921828557480.Spec : Prop :=
  ∀ n, P871203921828557480.a n = A129230 n

end A129230

/-! ## A129230.P12458484798557929236

`∑[floor(ϕ*n-a(n-1))]` with `a(0)=0`
-/

namespace A129230.P12458484798557929236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊Real.goldenRatio * (n : ℝ) - (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129230.P12458484798557929236

namespace A129230

/-- `∑[floor(ϕ*n-a(n-1))]` -/
def P12458484798557929236.Spec : Prop :=
  ∀ n, P12458484798557929236.a n = A129230 n

end A129230

/-! ## A129230.P1460226762868413420

`∑[abs(∑[(-1)^n*floor(ϕ*n)])]`
-/

namespace A129230.P1460226762868413420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129230.P1460226762868413420

namespace A129230

/-- `∑[abs(∑[(-1)^n*floor(ϕ*n)])]` -/
def P1460226762868413420.Spec : Prop :=
  ∀ n, P1460226762868413420.a n = A129230 n

end A129230

/-! ## A129230.P17682801354804299297

`floor(n/ϕ)+a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A129230.P17682801354804299297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n : ℝ) / Real.goldenRatio⌋ + (a (n - 2) + (n : ℤ))

end

end A129230.P17682801354804299297

namespace A129230

/-- `floor(n/ϕ)+a(n-2)+n` -/
def P17682801354804299297.Spec : Prop :=
  ∀ n, P17682801354804299297.a n = A129230 n

end A129230

/-! ## A129230.P3998023706094921125

`ceil(a(n-2)+abs(1-ϕ*n))` with `a(0)=0, a(1)=1`
-/

namespace A129230.P3998023706094921125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(a (n - 2) : ℝ) + |1 - Real.goldenRatio * (n : ℝ)|⌉

end

end A129230.P3998023706094921125

namespace A129230

/-- `ceil(a(n-2)+abs(1-ϕ*n))` -/
def P3998023706094921125.Spec : Prop :=
  ∀ n, P3998023706094921125.a n = A129230 n

end A129230

/-! ## A129230.P2430899192100574194

`a(n-2)-1-xor(-1, floor(ϕ*n))` with `a(0)=0, a(1)=1`
-/

namespace A129230.P2430899192100574194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - 1 - Int.xor (-1) ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A129230.P2430899192100574194

namespace A129230

/-- `a(n-2)-1-xor(-1, floor(ϕ*n))` -/
def P2430899192100574194.Spec : Prop :=
  ∀ n, P2430899192100574194.a n = A129230 n

end A129230

/-! ## A129230.P12651400722850919563

`A054347(n)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129230

/-- `A054347(n)-a(n-1)` -/
def P12651400722850919563.Spec : Prop :=
  ∀ n, P12651400722850919563.a n = A129230 n

theorem P12651400722850919563.correct : P12651400722850919563.Spec := by
  intro n
  simp only [A129230]

end A129230

/-! ## A129230.P18027581293463803958

`A066096(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A129230.P18027581293463803958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A066096 n + a (n - 2)

end

end A129230.P18027581293463803958

namespace A129230

/-- `A066096(n)+a(n-2)` -/
def P18027581293463803958.Spec : Prop :=
  ∀ n, P18027581293463803958.a n = A129230 n

end A129230

/-!
# A129231: a(n) = floor(n*r) - a(n-1), where r = sqrt(2) and a(0) = 0.

The programs for A129231, the canonical program `A129231.P4429393398897307074` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129231 has offset 0).

The definition of A129231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129231.P5354169148296171495

`floor(n*sqrt(2))-a(n-1)` with `a(0)=0`
-/

namespace A129231.P5354169148296171495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - a (n - 1)

end

end A129231.P5354169148296171495

namespace A129231

/-- `floor(n*sqrt(2))-a(n-1)` -/
def P5354169148296171495.Spec : Prop :=
  ∀ n, P5354169148296171495.a n = A129231 n

end A129231

/-! ## A129231.P4429393398897307074

`Δ[A001951(n-1)+a(n-2)]` with `a(0)=2, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129231

/-- `Δ[A001951(n-1)+a(n-2)]` -/
def P4429393398897307074.Spec : Prop :=
  ∀ n, P4429393398897307074.a n = A129231 n

theorem P4429393398897307074.correct : P4429393398897307074.Spec := by
  intro n
  simp only [A129231]

end A129231

/-! ## A129231.P13051777957564507860

`abs(∑[A001951(n)*A009001(2*n)])`
-/

namespace A129231.P13051777957564507860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A129231.P13051777957564507860

namespace A129231

/-- `abs(∑[A001951(n)*A009001(2*n)])` -/
def P13051777957564507860.Spec : Prop :=
  ∀ n, P13051777957564507860.a n = A129231 n

end A129231

/-! ## A129231.P5991869973618623172

`Δ[A129232(A151622(n)-1+n)]`
-/

namespace A129231.P5991869973618623172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129232 (A151622 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129231.P5991869973618623172

namespace A129231

/-- `Δ[A129232(A151622(n)-1+n)]` -/
def P5991869973618623172.Spec : Prop :=
  ∀ n, P5991869973618623172.a n = A129231 n

end A129231

/-! ## A129231.P10128982703287943244

`Δ[A129232(A151622(n)-(1-n))]`
-/

namespace A129231.P10128982703287943244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129232 (A151622 n - (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129231.P10128982703287943244

namespace A129231

/-- `Δ[A129232(A151622(n)-(1-n))]` -/
def P10128982703287943244.Spec : Prop :=
  ∀ n, P10128982703287943244.a n = A129231 n

end A129231

/-!
# A129232: a(n) = floor(n*r) + floor((n-2)*r) + floor((n-4)*r) + ... + floor(k*r), where r = 2^(1/2) and k = 0 if n is even, k = 1 if n is odd.

The programs for A129232, the canonical program `A129232.P14690578308145464037` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129232 has offset 0).

The definition of A129232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129232.P13101501709510609130

`floor(a(n-2)+n*sqrt(2))` with `a(0)=0, a(1)=1`
-/

namespace A129232.P13101501709510609130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℝ) + (n : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A129232.P13101501709510609130

namespace A129232

/-- `floor(a(n-2)+n*sqrt(2))` -/
def P13101501709510609130.Spec : Prop :=
  ∀ n, P13101501709510609130.a n = A129232 n

end A129232

/-! ## A129232.P3954668088551258392

`∑[floor(n*sqrt(2))-a(n-1)]` with `a(0)=0`
-/

namespace A129232.P3954668088551258392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129232.P3954668088551258392

namespace A129232

/-- `∑[floor(n*sqrt(2))-a(n-1)]` -/
def P3954668088551258392.Spec : Prop :=
  ∀ n, P3954668088551258392.a n = A129232 n

end A129232

/-! ## A129232.P12272767220841168471

`a(n-2)+floor(n/cos(atan(1)))` with `a(0)=0, a(1)=1`
-/

namespace A129232.P12272767220841168471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ⌊(n : ℝ) / Real.cos (Real.arctan (1 : ℝ))⌋

end

end A129232.P12272767220841168471

namespace A129232

/-- `a(n-2)+floor(n/cos(atan(1)))` -/
def P12272767220841168471.Spec : Prop :=
  ∀ n, P12272767220841168471.a n = A129232 n

end A129232

/-! ## A129232.P14657312414327314832

`a(n-2)+ceil(n*sqrt(2))-1` with `a(0)=0, a(1)=1`
-/

namespace A129232.P14657312414327314832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉ - 1)

end

end A129232.P14657312414327314832

namespace A129232

/-- `a(n-2)+ceil(n*sqrt(2))-1` -/
def P14657312414327314832.Spec : Prop :=
  ∀ n, P14657312414327314832.a n = A129232 n

end A129232

/-! ## A129232.P12605444914892909261

`∑[∑[floor(n*sqrt(2))/(-1)^n]/(-1)^n]`
-/

namespace A129232.P12605444914892909261
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℚ) / ((-1) ^ n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129232.P12605444914892909261

namespace A129232

/-- `∑[∑[floor(n*sqrt(2))/(-1)^n]/(-1)^n]` -/
def P12605444914892909261.Spec : Prop :=
  ∀ n, P12605444914892909261.a n = (A129232 n : ℚ)

end A129232

/-! ## A129232.P15176412591356891995

`A194102(n)-a(n-1)` with `a(0)=0`
-/

namespace A129232.P15176412591356891995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194102 n - a (n - 1)

end

end A129232.P15176412591356891995

namespace A129232

/-- `A194102(n)-a(n-1)` -/
def P15176412591356891995.Spec : Prop :=
  ∀ n, P15176412591356891995.a n = A129232 n

end A129232

/-! ## A129232.P14690578308145464037

`A001951(n)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129232

/-- `A001951(n)+a(n-2)` -/
def P14690578308145464037.Spec : Prop :=
  ∀ n, P14690578308145464037.a n = A129232 n

theorem P14690578308145464037.correct : P14690578308145464037.Spec := by
  intro n
  simp only [A129232]

end A129232

/-! ## A129232.P17676760631856143817

`A049472(2*n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A129232.P17676760631856143817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A049472 (2 * n) + a (n - 2)

end

end A129232.P17676760631856143817

namespace A129232

/-- `A049472(2*n)+a(n-2)` -/
def P17676760631856143817.Spec : Prop :=
  ∀ n, P17676760631856143817.a n = A129232 n

end A129232

/-!
# A129234: Triangle read by rows: T(n,k) = n/k + k - 1 if n mod k = 0; otherwise T(n,k)=0 (1 <= k <= n).

The programs for A129234, the canonical program `A129234.P10543029796257728655` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129234 has offset 1).

The definition of A129234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129234.P5765985448055485459

`A051731(n+1)*A072030(n+1)`
-/

namespace A129234.P5765985448055485459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A072030 (n + 1)

end

end A129234.P5765985448055485459

namespace A129234

/-- `A051731(n+1)*A072030(n+1)` -/
def P5765985448055485459.Spec : Prop :=
  ∀ n, P5765985448055485459.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P3276457049132442061

`lcm(A072030(n+1), A158906(n+1))`
-/

namespace A129234.P3276457049132442061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072030 (n + 1)) (A158906 (n + 1))

end

end A129234.P3276457049132442061

namespace A129234

/-- `lcm(A072030(n+1), A158906(n+1))` -/
def P3276457049132442061.Spec : Prop :=
  ∀ n, (P3276457049132442061.a n : ℤ) = A129234 (n + 1)

end A129234

/-! ## A129234.P2911378871609362327

`(A285721(n+1)+1)*A051731(n+1)`
-/

namespace A129234.P2911378871609362327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285721 (n + 1) + 1) * A051731 (n + 1)

end

end A129234.P2911378871609362327

namespace A129234

/-- `(A285721(n+1)+1)*A051731(n+1)` -/
def P2911378871609362327.Spec : Prop :=
  ∀ n, P2911378871609362327.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P4618840059806998115

`A000007(A048158(n+1))*A072030(n+1)`
-/

namespace A129234.P4618840059806998115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A048158 (n + 1)).toNat * A072030 (n + 1)

end

end A129234.P4618840059806998115

namespace A129234

/-- `A000007(A048158(n+1))*A072030(n+1)` -/
def P4618840059806998115.Spec : Prop :=
  ∀ n, P4618840059806998115.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P11466964554245971550

`A000007(A049828(n+1))*A072030(n+1)`
-/

namespace A129234.P11466964554245971550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049828 (n + 1)).toNat * A072030 (n + 1)

end

end A129234.P11466964554245971550

namespace A129234

/-- `A000007(A049828(n+1))*A072030(n+1)` -/
def P11466964554245971550.Spec : Prop :=
  ∀ n, P11466964554245971550.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P6916793558095165005

`A057427(A054523(n+1))*A072030(n+1)`
-/

namespace A129234.P6916793558095165005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A054523 (n + 1)).toNat * A072030 (n + 1)

end

end A129234.P6916793558095165005

namespace A129234

/-- `A057427(A054523(n+1))*A072030(n+1)` -/
def P6916793558095165005.Spec : Prop :=
  ∀ n, P6916793558095165005.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P14169631718843762099

`A057427(A126988(n+1))*A072030(n+1)`
-/

namespace A129234.P14169631718843762099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A126988 (n + 1)).toNat * A072030 (n + 1)

end

end A129234.P14169631718843762099

namespace A129234

/-- `A057427(A126988(n+1))*A072030(n+1)` -/
def P14169631718843762099.Spec : Prop :=
  ∀ n, P14169631718843762099.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P2870932707431400792

`A072030(n+1)%A008349(A054522(n+1))`
-/

namespace A129234.P2870932707431400792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072030 (n + 1)) (A008349 (A054522 (n + 1)).toNat)

end

end A129234.P2870932707431400792

namespace A129234

/-- `A072030(n+1)%A008349(A054522(n+1))` -/
def P2870932707431400792.Spec : Prop :=
  ∀ n, P2870932707431400792.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P4807144051573655880

`(A051537(n+1)+A002262(n))*A051731(n+1)`
-/

namespace A129234.P4807144051573655880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051537 (n + 1) + A002262 n) * A051731 (n + 1)

end

end A129234.P4807144051573655880

namespace A129234

/-- `(A051537(n+1)+A002262(n))*A051731(n+1)` -/
def P4807144051573655880.Spec : Prop :=
  ∀ n, P4807144051573655880.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P10543029796257728655

`(A054531(n+1)+A002262(n))*A051731(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129234

/-- `(A054531(n+1)+A002262(n))*A051731(n+1)` -/
def P10543029796257728655.Spec : Prop :=
  ∀ n, P10543029796257728655.a n = A129234 (n + 1)

theorem P10543029796257728655.correct : P10543029796257728655.Spec := by
  intro n
  simp only [A129234, Nat.add_sub_cancel]

end A129234

/-! ## A129234.P10498925340568721359

`A002260(A126988(n+1)+n)*A051731(n+1)`
-/

namespace A129234.P10498925340568721359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A126988 (n + 1) + (n : ℤ)).toNat * A051731 (n + 1)

end

end A129234.P10498925340568721359

namespace A129234

/-- `A002260(A126988(n+1)+n)*A051731(n+1)` -/
def P10498925340568721359.Spec : Prop :=
  ∀ n, P10498925340568721359.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P6731573893786624230

`A126988(n+1)+A127093(n+1)-A051731(n+1)`
-/

namespace A129234.P6731573893786624230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + (A127093 (n + 1) - A051731 (n + 1))

end

end A129234.P6731573893786624230

namespace A129234

/-- `A126988(n+1)+A127093(n+1)-A051731(n+1)` -/
def P6731573893786624230.Spec : Prop :=
  ∀ n, P6731573893786624230.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P12109761721282292353

`A072030(n+1)*A113998(A038722(n+1))`
-/

namespace A129234.P12109761721282292353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (n + 1) * A113998 (A038722 (n + 1)).toNat

end

end A129234.P12109761721282292353

namespace A129234

/-- `A072030(n+1)*A113998(A038722(n+1))` -/
def P12109761721282292353.Spec : Prop :=
  ∀ n, P12109761721282292353.a n = A129234 (n + 1)

end A129234

/-! ## A129234.P8305003536878235780

`A126988(n+1)+A307662(n+1)-1`
-/

namespace A129234.P8305003536878235780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + (A307662 (n + 1) - 1)

end

end A129234.P8305003536878235780

namespace A129234

/-- `A126988(n+1)+A307662(n+1)-1` -/
def P8305003536878235780.Spec : Prop :=
  ∀ n, P8305003536878235780.a n = A129234 (n + 1)

end A129234

/-!
# A129235: a(n) = 2*sigma(n) - tau(n), where tau(n) is the number of divisors of n (A000005) and sigma(n) is the sum of divisors of n (A000203).

The programs for A129235, the canonical program `A129235.P483503928581819009` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129235 has offset 1).

The definition of A129235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-A000005(n+1)` (program `A129235.P483503928581819009`, by `A129235.P483503928581819009.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129235.P483503928581819009

`2*A000203(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129235

/-- `2*A000203(n+1)-A000005(n+1)` -/
def P483503928581819009.Spec : Prop :=
  ∀ n, P483503928581819009.a n = A129235 (n + 1)

theorem P483503928581819009.correct : P483503928581819009.Spec := by
  intro n
  simp only [A129235, Nat.add_sub_cancel]

end A129235

/-! ## A129235.P9194143163117535435

`∑{d}[n+1, 2*#-1]`
-/

namespace A129235.P9194143163117535435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 * d : ℤ) - 1)

end

end A129235.P9194143163117535435

namespace A129235

/-- `∑{d}[n+1, 2*#-1]` -/
def P9194143163117535435.Spec : Prop :=
  ∀ n, P9194143163117535435.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P17234214258391552700

`abs(∑{d}[n+1, #-1+#])`
-/

namespace A129235.P17234214258391552700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1 + (d : ℤ))|

end

end A129235.P17234214258391552700

namespace A129235

/-- `abs(∑{d}[n+1, #-1+#])` -/
def P17234214258391552700.Spec : Prop :=
  ∀ n, P17234214258391552700.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P14790434389179554974

`-∑{d}[n+1, 1-#-#]`
-/

namespace A129235.P14790434389179554974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ) - (d : ℤ)))

end

end A129235.P14790434389179554974

namespace A129235

/-- `-∑{d}[n+1, 1-#-#]` -/
def P14790434389179554974.Spec : Prop :=
  ∀ n, P14790434389179554974.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P1127445409818719472

`∑{d}[n+1, floor(2*n/#)]+1`
-/

namespace A129235.P1127445409818719472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(2 * n : ℚ) / (d : ℚ)⌋ + 1

end

end A129235.P1127445409818719472

namespace A129235

/-- `∑{d}[n+1, floor(2*n/#)]+1` -/
def P1127445409818719472.Spec : Prop :=
  ∀ n, P1127445409818719472.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P18325557798533089995

`A074400(n+1)-(∑{d}[n+1, n²%#]+1)`
-/

namespace A129235.P18325557798533089995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1 : ℕ) : ℤ)

end

end A129235.P18325557798533089995

namespace A129235

/-- `A074400(n+1)-(∑{d}[n+1, n²%#]+1)` -/
def P18325557798533089995.Spec : Prop :=
  ∀ n, P18325557798533089995.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P3483051079914501258

`Δ[2*A160664(n)-A006218(n)]`
-/

namespace A129235.P3483051079914501258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160664 n - A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129235.P3483051079914501258

namespace A129235

/-- `Δ[2*A160664(n)-A006218(n)]` -/
def P3483051079914501258.Spec : Prop :=
  ∀ n, P3483051079914501258.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P4344312894138749687

`A065608(n+1)+A000203(n+1)`
-/

namespace A129235.P4344312894138749687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + A000203 (n + 1)

end

end A129235.P4344312894138749687

namespace A129235

/-- `A065608(n+1)+A000203(n+1)` -/
def P4344312894138749687.Spec : Prop :=
  ∀ n, P4344312894138749687.a n = A129235 (n + 1)

theorem P4344312894138749687.correct : P4344312894138749687.Spec := by
  intro n
  simp only [A129235, Nat.add_sub_cancel, A129235.P4344312894138749687.a, A129235.P483503928581819009.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065608, A065608.P12445239359989980431.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129235

/-! ## A129235.P5377318118399833358

`A065387(n+1)+A046520(n+1)`
-/

namespace A129235.P5377318118399833358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) + A046520 (n + 1)

end

end A129235.P5377318118399833358

namespace A129235

/-- `A065387(n+1)+A046520(n+1)` -/
def P5377318118399833358.Spec : Prop :=
  ∀ n, P5377318118399833358.a n = A129235 (n + 1)

theorem P5377318118399833358.correct : P5377318118399833358.Spec := by
  intro n
  simp only [A129235, Nat.add_sub_cancel, A129235.P5377318118399833358.a, A129235.P483503928581819009.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046520, A046520.P408125302691526791.a, A065387, A065387.P11284875715279330998.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A129235

/-! ## A129235.P9407648940620541596

`A137319(n+1)+A001065(n+1)`
-/

namespace A129235.P9407648940620541596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) + A001065 (n + 1)

end

end A129235.P9407648940620541596

namespace A129235

/-- `A137319(n+1)+A001065(n+1)` -/
def P9407648940620541596.Spec : Prop :=
  ∀ n, P9407648940620541596.a n = A129235 (n + 1)

theorem P9407648940620541596.correct : P9407648940620541596.Spec := by
  intro n
  simp only [A129235, Nat.add_sub_cancel, A129235.P9407648940620541596.a, A129235.P483503928581819009.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A137319, A137319.P10681023325901659618.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A065608, A065608.P12445239359989980431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129235

/-! ## A129235.P8447466121254039342

`A255385(n+1)+A051612(n+1)`
-/

namespace A129235.P8447466121254039342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 1) + A051612 (n + 1)

end

end A129235.P8447466121254039342

namespace A129235

/-- `A255385(n+1)+A051612(n+1)` -/
def P8447466121254039342.Spec : Prop :=
  ∀ n, P8447466121254039342.a n = A129235 (n + 1)

theorem P8447466121254039342.correct : P8447466121254039342.Spec := by
  intro n
  simp only [A129235, Nat.add_sub_cancel, A129235.P8447466121254039342.a, A129235.P483503928581819009.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A255385, A255385.P15739975789967617263.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A129235

/-! ## A129235.P13383331805646467538

`A286002(n+1)+A091818(n+1)`
-/

namespace A129235.P13383331805646467538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) + A091818 (n + 1)

end

end A129235.P13383331805646467538

namespace A129235

/-- `A286002(n+1)+A091818(n+1)` -/
def P13383331805646467538.Spec : Prop :=
  ∀ n, P13383331805646467538.a n = A129235 (n + 1)

theorem P13383331805646467538.correct : P13383331805646467538.Spec := by
  intro n
  simp only [A129235, Nat.add_sub_cancel, A129235.P13383331805646467538.a, A129235.P483503928581819009.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A091818, A091818.P1536144604709334989.a, A286002, A286002.P1824755549209206382.a, A001065, A001065.P4097147489331274860.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129235

/-! ## A129235.P12794452467769764653

`A074400(n+1)-A000005(n+1)`
-/

namespace A129235.P12794452467769764653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A000005 (n + 1)

end

end A129235.P12794452467769764653

namespace A129235

/-- `A074400(n+1)-A000005(n+1)` -/
def P12794452467769764653.Spec : Prop :=
  ∀ n, P12794452467769764653.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P3326982602269940622

`A152211(n+1)-A081307(n+1)`
-/

namespace A129235.P3326982602269940622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152211 (n + 1) - A081307 (n + 1)

end

end A129235.P3326982602269940622

namespace A129235

/-- `A152211(n+1)-A081307(n+1)` -/
def P3326982602269940622.Spec : Prop :=
  ∀ n, P3326982602269940622.a n = A129235 (n + 1)

theorem P3326982602269940622.correct : P3326982602269940622.Spec := by
  intro n
  simp only [A129235, Nat.add_sub_cancel, A129235.P3326982602269940622.a, A129235.P483503928581819009.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A081307, A081307.P10355889230247830920.a, A152211, A152211.P8934016512484736310.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129235

/-! ## A129235.P1626435315182228233

`A274628(n+1)-A002133(n+1)`
-/

namespace A129235.P1626435315182228233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274628 (n + 1) - A002133 (n + 1)

end

end A129235.P1626435315182228233

namespace A129235

/-- `A274628(n+1)-A002133(n+1)` -/
def P1626435315182228233.Spec : Prop :=
  ∀ n, P1626435315182228233.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P4783302976000794594

`A272027(n+1)-A007503(n+1)`
-/

namespace A129235.P4783302976000794594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) - A007503 (n + 1)

end

end A129235.P4783302976000794594

namespace A129235

/-- `A272027(n+1)-A007503(n+1)` -/
def P4783302976000794594.Spec : Prop :=
  ∀ n, P4783302976000794594.a n = A129235 (n + 1)

theorem P4783302976000794594.correct : P4783302976000794594.Spec := by
  intro n
  simp only [A129235, Nat.add_sub_cancel, A129235.P4783302976000794594.a, A129235.P483503928581819009.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007503, A007503.P13484425310514315912.a, A272027, A272027.P17950759033993077215.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129235

/-! ## A129235.P8192921647657329387

`A007437(n+1)-A363610(n+1)`
-/

namespace A129235.P8192921647657329387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) - A363610 (n + 1)

end

end A129235.P8192921647657329387

namespace A129235

/-- `A007437(n+1)-A363610(n+1)` -/
def P8192921647657329387.Spec : Prop :=
  ∀ n, P8192921647657329387.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P18130188799162969317

`A038040(n+1)-A374969(n+1)`
-/

namespace A129235.P18130188799162969317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A374969 (n + 1)

end

end A129235.P18130188799162969317

namespace A129235

/-- `A038040(n+1)-A374969(n+1)` -/
def P18130188799162969317.Spec : Prop :=
  ∀ n, P18130188799162969317.a n = A129235 (n + 1)

theorem P18130188799162969317.correct : P18130188799162969317.Spec := by
  intro n
  simp only [A129235, Nat.add_sub_cancel, A129235.P18130188799162969317.a, A129235.P483503928581819009.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038040, A038040.P16512896840577774730.a, A374969, A374969.P4381911814034986725.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129235

/-! ## A129235.P16146125466596554112

`2*A000203(n+1)-Δ[A006218(n)]`
-/

namespace A129235.P16146125466596554112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A129235.P16146125466596554112

namespace A129235

/-- `2*A000203(n+1)-Δ[A006218(n)]` -/
def P16146125466596554112.Spec : Prop :=
  ∀ n, P16146125466596554112.a n = A129235 (n + 1)

end A129235

/-! ## A129235.P1094704833488831407

`2*A000203(n+1)-Δ[A054519(n)]`
-/

namespace A129235.P1094704833488831407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A129235.P1094704833488831407

namespace A129235

/-- `2*A000203(n+1)-Δ[A054519(n)]` -/
def P1094704833488831407.Spec : Prop :=
  ∀ n, P1094704833488831407.a n = A129235 (n + 1)

end A129235

/-!
# A129236: A054525 * A129234.

The programs for A129236, the canonical program `A129236.P14477264871821346647` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129236 has offset 1).

The definition of A129236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129236.P14477264871821346647

`A051340(n)*A054523(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129236

/-- `A051340(n)*A054523(n+1)` -/
def P14477264871821346647.Spec : Prop :=
  ∀ n, P14477264871821346647.a n = A129236 (n + 1)

theorem P14477264871821346647.correct : P14477264871821346647.Spec := by
  intro n
  simp only [A129236, Nat.add_sub_cancel]

end A129236

/-! ## A129236.P5867405051002321712

`A054523(n+1)*A175892(n)`
-/

namespace A129236.P5867405051002321712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A175892 n

end

end A129236.P5867405051002321712

namespace A129236

/-- `A054523(n+1)*A175892(n)` -/
def P5867405051002321712.Spec : Prop :=
  ∀ n, P5867405051002321712.a n = A129236 (n + 1)

end A129236

/-! ## A129236.P737635073392910715

`A127465(n+1)/A128227(n)`
-/

namespace A129236.P737635073392910715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A129236.P737635073392910715

namespace A129236

/-- `A127465(n+1)/A128227(n)` -/
def P737635073392910715.Spec : Prop :=
  ∀ n, P737635073392910715.a n = (A129236 (n + 1) : ℚ)

end A129236

/-! ## A129236.P18328397961239897003

`A010783(n+1)*A054523(n+1)`
-/

namespace A129236.P18328397961239897003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A054523 (n + 1)

end

end A129236.P18328397961239897003

namespace A129236

/-- `A010783(n+1)*A054523(n+1)` -/
def P18328397961239897003.Spec : Prop :=
  ∀ n, P18328397961239897003.a n = A129236 (n + 1)

end A129236

/-! ## A129236.P10875409739668894879

`A054523(n+1)*A109004(n+1)`
-/

namespace A129236.P10875409739668894879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A109004 (n + 1)

end

end A129236.P10875409739668894879

namespace A129236

/-- `A054523(n+1)*A109004(n+1)` -/
def P10875409739668894879.Spec : Prop :=
  ∀ n, P10875409739668894879.a n = A129236 (n + 1)

end A129236

/-! ## A129236.P12713416626597845642

`A054523(n+1)*A162319(n+1)`
-/

namespace A129236.P12713416626597845642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A162319 (n + 1)

end

end A129236.P12713416626597845642

namespace A129236

/-- `A054523(n+1)*A162319(n+1)` -/
def P12713416626597845642.Spec : Prop :=
  ∀ n, P12713416626597845642.a n = A129236 (n + 1)

end A129236

/-! ## A129236.P7821732237200001354

`A127465(n+1)/A003983(n+1)`
-/

namespace A129236.P7821732237200001354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A003983 (n + 1) : ℚ)

end

end A129236.P7821732237200001354

namespace A129236

/-- `A127465(n+1)/A003983(n+1)` -/
def P7821732237200001354.Spec : Prop :=
  ∀ n, P7821732237200001354.a n = (A129236 (n + 1) : ℚ)

end A129236

/-! ## A129236.P6810809738460378635

`A127465(n+1)/A273619(n+2)`
-/

namespace A129236.P6810809738460378635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A273619 (n + 2) : ℚ)

end

end A129236.P6810809738460378635

namespace A129236

/-- `A127465(n+1)/A273619(n+2)` -/
def P6810809738460378635.Spec : Prop :=
  ∀ n, P6810809738460378635.a n = (A129236 (n + 1) : ℚ)

end A129236

/-! ## A129236.P18026894468640928997

`abs(Δ[A141294(n+1)])`
-/

namespace A129236.P18026894468640928997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129236.P18026894468640928997

namespace A129236

/-- `abs(Δ[A141294(n+1)])` -/
def P18026894468640928997.Spec : Prop :=
  ∀ n, P18026894468640928997.a n = A129236 (n + 1)

end A129236

/-! ## A129236.P11496261513281322010

`∑{d}[Δ[A141294(n+1)], A000010(#)]`
-/

namespace A129236.P11496261513281322010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141294 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A129236.P11496261513281322010

namespace A129236

/-- `∑{d}[Δ[A141294(n+1)], A000010(#)]` -/
def P11496261513281322010.Spec : Prop :=
  ∀ n, P11496261513281322010.a n = A129236 (n + 1)

end A129236

/-! ## A129236.P14217179426217631509

`A054523(n+1)*A306680(n)`
-/

namespace A129236.P14217179426217631509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A306680 n

end

end A129236.P14217179426217631509

namespace A129236

/-- `A054523(n+1)*A306680(n)` -/
def P14217179426217631509.Spec : Prop :=
  ∀ n, P14217179426217631509.a n = A129236 (n + 1)

end A129236

/-! ## A129236.P7647961987903811155

`A127465(n+1)/A176346(n)`
-/

namespace A129236.P7647961987903811155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127465 (n + 1) : ℚ) / (A176346 n : ℚ)

end

end A129236.P7647961987903811155

namespace A129236

/-- `A127465(n+1)/A176346(n)` -/
def P7647961987903811155.Spec : Prop :=
  ∀ n, P7647961987903811155.a n = (A129236 (n + 1) : ℚ)

end A129236

/-! ## A129236.P18430522885573990206

`A000194(Δ[A141294(n+1)]²)`
-/

namespace A129236.P18430522885573990206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A129236.P18430522885573990206

namespace A129236

/-- `A000194(Δ[A141294(n+1)]²)` -/
def P18430522885573990206.Spec : Prop :=
  ∀ n, P18430522885573990206.a n = A129236 (n + 1)

end A129236

/-! ## A129236.P9069417106278830086

`A127649(n+1)/A183110(n+1)`
-/

namespace A129236.P9069417106278830086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127649 (n + 1) : ℚ) / (A183110 (n + 1) : ℚ)

end

end A129236.P9069417106278830086

namespace A129236

/-- `A127649(n+1)/A183110(n+1)` -/
def P9069417106278830086.Spec : Prop :=
  ∀ n, P9069417106278830086.a n = (A129236 (n + 1) : ℚ)

end A129236

/-!
# A129237: A051731 * A129234.

The programs for A129237, the canonical program `A129237.P13854613413185122732` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129237 has offset 1).

The definition of A129237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129237.P13854613413185122732

`∑{d}[A126988(n+1), A002262(n)+#]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A129237

/-- `∑{d}[A126988(n+1), A002262(n)+#]` -/
def P13854613413185122732.Spec : Prop :=
  ∀ n, P13854613413185122732.a n = A129237 (n + 1)

theorem P13854613413185122732.correct : P13854613413185122732.Spec := by
  intro n
  simp only [A129237, Nat.add_sub_cancel]

end A129237

/-! ## A129237.P4008334157692722261

`∑{d}[A126988(n+1), A176079(n+1)+#]`
-/

namespace A129237.P4008334157692722261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A176079 (n + 1) + (d : ℤ))

end

end A129237.P4008334157692722261

namespace A129237

/-- `∑{d}[A126988(n+1), A176079(n+1)+#]` -/
def P4008334157692722261.Spec : Prop :=
  ∀ n, P4008334157692722261.a n = A129237 (n + 1)

end A129237

/-! ## A129237.P14639391736716921954

`∑{d}[A126988(n+1), A183063(A059268(n))+#]`
-/

namespace A129237.P14639391736716921954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A183063 (A059268 n).toNat + (d : ℤ))

end

end A129237.P14639391736716921954

namespace A129237

/-- `∑{d}[A126988(n+1), A183063(A059268(n))+#]` -/
def P14639391736716921954.Spec : Prop :=
  ∀ n, P14639391736716921954.a n = A129237 (n + 1)

end A129237

/-! ## A129237.P5467865348340789672

`A130540(n+1)+A134577(n+1)-A127170(n+1)`
-/

namespace A129237.P5467865348340789672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130540 (n + 1) + (A134577 (n + 1) - A127170 (n + 1))

end

end A129237.P5467865348340789672

namespace A129237

/-- `A130540(n+1)+A134577(n+1)-A127170(n+1)` -/
def P5467865348340789672.Spec : Prop :=
  ∀ n, P5467865348340789672.a n = A129237 (n + 1)

end A129237

/-! ## A129237.P12547678615467637652

`A130540(n+1)+A025675(n+1)*A127170(n+1)`
-/

namespace A129237.P12547678615467637652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130540 (n + 1) + A025675 (n + 1) * A127170 (n + 1)

end

end A129237.P12547678615467637652

namespace A129237

/-- `A130540(n+1)+A025675(n+1)*A127170(n+1)` -/
def P12547678615467637652.Spec : Prop :=
  ∀ n, P12547678615467637652.a n = A129237 (n + 1)

end A129237

/-!
# A129238: Permutations with exactly 11 fixed points.

The programs for A129238, there is no canonical definition to state claims against.
-/

/-! ## A129238.P1281181049904091085

`C(n+11, 11)*A000166(n)`
-/

namespace A129238.P1281181049904091085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 11) 11 : ℤ) * A000166 n

end

end A129238.P1281181049904091085

/-! ## A129238.P3278525773001634292

`C(n+11, 11)*A008290(∑[n])`
-/

namespace A129238.P3278525773001634292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 11) 11 : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129238.P3278525773001634292

/-! ## A129238.P2474751098728929517

`A000166(n)*A001288(n)`
-/

namespace A129238.P2474751098728929517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A001288 (n + 11)

end

end A129238.P2474751098728929517

/-! ## A129238.P5278298499900752820

`∑[A001287(n)]*A000166(n)`
-/

namespace A129238.P5278298499900752820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A129238.P5278298499900752820

/-! ## A129238.P6827161740121525019

`A098825(eq[11, A025581(n)])`
-/

namespace A129238.P6827161740121525019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129238.P6827161740121525019

/-! ## A129238.P1183491931773338617

`A098825(eq[12, A004736(n+1)])`
-/

namespace A129238.P1183491931773338617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129238.P1183491931773338617

/-! ## A129238.P14237048512218635195

`A008290(eq[11, A002262(n)])`
-/

namespace A129238.P14237048512218635195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129238.P14237048512218635195

/-! ## A129238.P12368888839866400927

`A008290(eq[11, A144328(n+1)])`
-/

namespace A129238.P12368888839866400927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129238.P12368888839866400927

/-! ## A129238.P9944405462504738826

`A008290(eq[12, A002260(n+1)])`
-/

namespace A129238.P9944405462504738826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129238.P9944405462504738826

/-!
# A129241: Balanced primes q such that p = (r+q+s-1)/2 is a balanced prime, where r, q, s are consecutive primes.

The programs for A129241, there is no canonical definition to state claims against.
-/

/-! ## A129241.P11276765961448893936

`(2*A129242(n+1)+1)/3`
-/

namespace A129241.P11276765961448893936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A129242 (n + 1) + 1 : ℚ) / 3

end

end A129241.P11276765961448893936

/-!
# A129242: Balanced primes p of the form (r+q+s-1)/2, where r, q, s are consecutive primes and q is a balanced prime.

The programs for A129242, there is no canonical definition to state claims against.
-/

/-! ## A129242.P12391620251280536046

`(3*A129241(n+1)-1)/2`
-/

namespace A129242.P12391620251280536046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A129241 (n + 1) - 1 : ℚ) / 2

end

end A129242.P12391620251280536046

/-! ## A129242.P15406364620214103519

`floor(3/2*A129241(n+1))`
-/

namespace A129242.P15406364620214103519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A129241 (n + 1) : ℚ)⌋

end

end A129242.P15406364620214103519

/-!
# A129244: Least K such that K*(prime(10*n)^(10*n))-1 is prime with prime(n)=n-th prime.

The programs for A129244, there is no canonical definition to state claims against.
-/

/-! ## A129244.P5095112615293358456

`A129243(10*(n+1))`
-/

namespace A129244.P5095112615293358456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129243 (10 * (n + 1))

end

end A129244.P5095112615293358456

/-!
# A129245: Least K such that K*(prime(100*n)^(100*n))-1 is prime with prime(n)=n-th prime.

The programs for A129245, there is no canonical definition to state claims against.
-/

/-! ## A129245.P16351891526900510211

`A129244(10*(n+1))`
-/

namespace A129245.P16351891526900510211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129244 (10 * (n + 1))

end

end A129245.P16351891526900510211

/-!
# A129246: Iterated sum of divisors array A[k,n] = k-th iterate of sigma(n), by upward antidiagonals.

The programs for A129246, there is no canonical definition to state claims against.
-/

/-! ## A129246.P8697940032612042463

`A053827(3^A259016(n))`
-/

namespace A129246.P8697940032612042463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A259016 n : ℤ))).toNat

end

end A129246.P8697940032612042463

/-!
# A129247: Invert transform of the Bell numbers.

The programs for A129247, there is no canonical definition to state claims against.
-/

/-! ## A129247.P1277275455201821647

`ceil(A154381(n)/2)`
-/

namespace A129247.P1277275455201821647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154381 n : ℚ) / 2⌉

end

end A129247.P1277275455201821647

/-! ## A129247.P16283219524879312166

`A154381(round(sqrt(n²+1)))/2`
-/

namespace A129247.P16283219524879312166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154381 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A129247.P16283219524879312166

/-! ## A129247.P10617783119409864999

`round(A154381(A274399(n))/2)`
-/

namespace A129247.P10617783119409864999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154381 (A274399 n).toNat : ℚ) / 2)

end

end A129247.P10617783119409864999

/-! ## A129247.P5940904359233677226

`A007318(∑[n])*round(A154381(n)/2)`
-/

namespace A129247.P5940904359233677226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A154381 n : ℚ) / 2)

end

end A129247.P5940904359233677226

/-!
# A129252: Smallest prime factor p of n such that p^p is a divisor of n, a(n)=1 if no such factor exists.

The programs for A129252, there is no canonical definition to state claims against.
-/

/-! ## A129252.P9980146663928979032

`A020639(A327939(n+1))`
-/

namespace A129252.P9980146663928979032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A327939 (n + 1)).toNat

end

end A129252.P9980146663928979032

/-! ## A129252.P14430048064420267764

`A020639(A342007(n+1))`
-/

namespace A129252.P14430048064420267764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A342007 (n + 1)).toNat

end

end A129252.P14430048064420267764

/-! ## A129252.P219536243113233933

`A020639(A368333(n+1))`
-/

namespace A129252.P219536243113233933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A368333 (n + 1)).toNat

end

end A129252.P219536243113233933

/-! ## A129252.P5131348679879621259

`A020639((n+1)/A327937(n+1))`
-/

namespace A129252.P5131348679879621259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327937 (n + 1) : ℚ))).toNat

end

end A129252.P5131348679879621259

/-! ## A129252.P4841132837910490428

`A020639((n+1)/A327938(n+1))`
-/

namespace A129252.P4841132837910490428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327938 (n + 1) : ℚ))).toNat

end

end A129252.P4841132837910490428

/-! ## A129252.P1754456486465422622

`A020639(xor(n, xor(n, A327936(n+1))))`
-/

namespace A129252.P1754456486465422622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A327936 (n + 1)))).toNat

end

end A129252.P1754456486465422622

/-! ## A129252.P10135574694181752433

`and(Δ[A168244(3*n+4)], A327936(n+1))`
-/

namespace A129252.P10135574694181752433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168244 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A327936 (n + 1))

end

end A129252.P10135574694181752433

/-! ## A129252.P9958561153815504489

`A079879(A342007(n+1)^3)`
-/

namespace A129252.P9958561153815504489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A342007 (n + 1) ^ 3).toNat

end

end A129252.P9958561153815504489

/-! ## A129252.P6474475411729393338

`and(A139700(n+1), A327936(n+1))`
-/

namespace A129252.P6474475411729393338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139700 (n + 1)) (A327936 (n + 1))

end

end A129252.P6474475411729393338

/-! ## A129252.P1488585770641950748

`and(A036564(n+5), A327936(n+1))`
-/

namespace A129252.P1488585770641950748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036564 (n + 5)) (A327936 (n + 1))

end

end A129252.P1488585770641950748

/-! ## A129252.P10218343096172868622

`and(A088578(n), A327936(n+1))`
-/

namespace A129252.P10218343096172868622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088578 n) (A327936 (n + 1))

end

end A129252.P10218343096172868622

/-! ## A129252.P17578948713213605147

`and(A289842(n), A327936(n+1))`
-/

namespace A129252.P17578948713213605147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289842 n) (A327936 (n + 1))

end

end A129252.P17578948713213605147

/-! ## A129252.P15063940127980541027

`and(A327936(n+1), A339771(n))`
-/

namespace A129252.P15063940127980541027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327936 (n + 1)) (A339771 n)

end

end A129252.P15063940127980541027

/-! ## A129252.P17767149743404405443

`and(A075900(n), A327936(n+1))`
-/

namespace A129252.P17767149743404405443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075900 n) (A327936 (n + 1))

end

end A129252.P17767149743404405443

/-! ## A129252.P12400883965004066018

`and(A293465(n), A327936(n+1))`
-/

namespace A129252.P12400883965004066018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A293465 n) (A327936 (n + 1))

end

end A129252.P12400883965004066018

/-! ## A129252.P1985999202633732026

`and(A077946(n), A327936(n+1))`
-/

namespace A129252.P1985999202633732026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077946 n) (A327936 (n + 1))

end

end A129252.P1985999202633732026

/-! ## A129252.P3835768338484531234

`and(A259400(n), A327936(n+1))`
-/

namespace A129252.P3835768338484531234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A259400 n) (A327936 (n + 1))

end

end A129252.P3835768338484531234

/-! ## A129252.P13597312463087056211

`and(A055622(n+1), A327936(n+1))`
-/

namespace A129252.P13597312463087056211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055622 (n + 1)) (A327936 (n + 1))

end

end A129252.P13597312463087056211

/-! ## A129252.P3124872431960078748

`A106797(A347398(n+1)²)`
-/

namespace A129252.P3124872431960078748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106797 (A347398 (n + 1) ^ 2).toNat

end

end A129252.P3124872431960078748

/-! ## A129252.P2606813416526342162

`A124933(A347398(n+1)+3)`
-/

namespace A129252.P2606813416526342162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124933 (A347398 (n + 1) + 3).toNat

end

end A129252.P2606813416526342162

/-!
# A129253: Number of numbers not greater than n having at least one divisor p^e with p<=e, p prime.

The programs for A129253, the canonical program `A129253.P16887273636312743906` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129253 has offset 1).

The definition of A129253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129253.P16887273636312743906

`∑[A342023(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A129253

/-- `∑[A342023(n+1)]` -/
def P16887273636312743906.Spec : Prop :=
  ∀ n, P16887273636312743906.a n = A129253 (n + 1)

theorem P16887273636312743906.correct : P16887273636312743906.Spec := by
  intro n
  simp only [A129253, Nat.add_sub_cancel]

end A129253

/-! ## A129253.P10817329202041147048

`∑[1-A359550(n+1)]`
-/

namespace A129253.P10817329202041147048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P10817329202041147048

namespace A129253

/-- `∑[1-A359550(n+1)]` -/
def P10817329202041147048.Spec : Prop :=
  ∀ n, P10817329202041147048.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P5750596393078491659

`∑[floor(sqrt(A129251(n+1)))]`
-/

namespace A129253.P5750596393078491659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A129251 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P5750596393078491659

namespace A129253

/-- `∑[floor(sqrt(A129251(n+1)))]` -/
def P5750596393078491659.Spec : Prop :=
  ∀ n, P5750596393078491659.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P11569476392716036103

`1-A377982(n+1)+n`
-/

namespace A129253.P11569476392716036103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A377982 (n + 1) + (n : ℤ)

end

end A129253.P11569476392716036103

namespace A129253

/-- `1-A377982(n+1)+n` -/
def P11569476392716036103.Spec : Prop :=
  ∀ n, P11569476392716036103.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P5542189169378466112

`∑[char[lt[1, A327936(n+1)]]]`
-/

namespace A129253.P5542189169378466112
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P5542189169378466112

namespace A129253

/-- `∑[char[lt[1, A327936(n+1)]]]` -/
def P5542189169378466112.Spec : Prop :=
  ∀ n, (P5542189169378466112.a n : ℤ) = A129253 (n + 1)

end A129253

/-! ## A129253.P10968995441644457172

`∑[char[lt[1, A327939(n+1)]]]`
-/

namespace A129253.P10968995441644457172
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P10968995441644457172

namespace A129253

/-- `∑[char[lt[1, A327939(n+1)]]]` -/
def P10968995441644457172.Spec : Prop :=
  ∀ n, (P10968995441644457172.a n : ℤ) = A129253 (n + 1)

end A129253

/-! ## A129253.P12605215376785232686

`∑[n²%A129252(n+1)]`
-/

namespace A129253.P12605215376785232686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A129252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P12605215376785232686

namespace A129253

/-- `∑[n²%A129252(n+1)]` -/
def P12605215376785232686.Spec : Prop :=
  ∀ n, P12605215376785232686.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P9250624370195106787

`∑[(n+2)%A342007(n+1)]`
-/

namespace A129253.P9250624370195106787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A342007 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P9250624370195106787

namespace A129253

/-- `∑[(n+2)%A342007(n+1)]` -/
def P9250624370195106787.Spec : Prop :=
  ∀ n, P9250624370195106787.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P3998011355480088746

`∑[C(n, C(A327938(n+1), n))]`
-/

namespace A129253.P3998011355480088746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A327938 (n + 1)).toNat n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P3998011355480088746

namespace A129253

/-- `∑[C(n, C(A327938(n+1), n))]` -/
def P3998011355480088746.Spec : Prop :=
  ∀ n, (P3998011355480088746.a n : ℤ) = A129253 (n + 1)

end A129253

/-! ## A129253.P9852832829294231929

`∑[A341996(A327939(n+1))]`
-/

namespace A129253.P9852832829294231929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A327939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P9852832829294231929

namespace A129253

/-- `∑[A341996(A327939(n+1))]` -/
def P9852832829294231929.Spec : Prop :=
  ∀ n, P9852832829294231929.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P8632270647739968023

`∑[A109606(∑{p}[A327939(n+1), #]+1)]`
-/

namespace A129253.P8632270647739968023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P8632270647739968023

namespace A129253

/-- `∑[A109606(∑{p}[A327939(n+1), #]+1)]` -/
def P8632270647739968023.Spec : Prop :=
  ∀ n, P8632270647739968023.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P5815327355275362275

`∑[A001221((A129251(n+1)+n+1)%(n+1)+1)]`
-/

namespace A129253.P5815327355275362275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A129251 (n + 1) + (n + 1 : ℤ)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P5815327355275362275

namespace A129253

/-- `∑[A001221((A129251(n+1)+n+1)%(n+1)+1)]` -/
def P5815327355275362275.Spec : Prop :=
  ∀ n, P5815327355275362275.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P10004983761065249509

`∑[and(1, A186589(A327939(n+1)+1))]`
-/

namespace A129253.P10004983761065249509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A186589 (A327939 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P10004983761065249509

namespace A129253

/-- `∑[and(1, A186589(A327939(n+1)+1))]` -/
def P10004983761065249509.Spec : Prop :=
  ∀ n, P10004983761065249509.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P3497535623693263036

`∑[A328098(A327939(n+1)²)]`
-/

namespace A129253.P3497535623693263036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328098 (A327939 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P3497535623693263036

namespace A129253

/-- `∑[A328098(A327939(n+1)²)]` -/
def P3497535623693263036.Spec : Prop :=
  ∀ n, P3497535623693263036.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P10410386623163689166

`∑[A341999(A327939(n+1)²)]`
-/

namespace A129253.P10410386623163689166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A327939 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P10410386623163689166

namespace A129253

/-- `∑[A341999(A327939(n+1)²)]` -/
def P10410386623163689166.Spec : Prop :=
  ∀ n, P10410386623163689166.a n = A129253 (n + 1)

end A129253

/-! ## A129253.P5492272848065951799

`∑[A129251(n+1)^A100716(n+1)]`
-/

namespace A129253.P5492272848065951799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129251 (n + 1) : ℚ) ^ (A100716 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129253.P5492272848065951799

namespace A129253

/-- `∑[A129251(n+1)^A100716(n+1)]` -/
def P5492272848065951799.Spec : Prop :=
  ∀ n, P5492272848065951799.a n = (A129253 (n + 1) : ℚ)

end A129253

/-!
# A129254: Numbers k such that both k and k+1 have at least one divisor of the form p^e with p<=e, p prime.

The programs for A129254, the canonical program `A129254.P18154501842966907616` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129254 has offset 1).

The definition of A129254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129254.P3794463626358257393

`lt[gcd(A256750(n+1), A256750(n)), 1]`
-/

namespace A129254.P3794463626358257393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256750 (n + 1)) (A256750 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129254.P3794463626358257393

namespace A129254

/-- `lt[gcd(A256750(n+1), A256750(n)), 1]` -/
def P3794463626358257393.Spec : Prop :=
  ∀ n, (P3794463626358257393.a n : ℤ) = A129254 (n + 1)

end A129254

/-! ## A129254.P18154501842966907616

`∩[A100716(n+1)-1, A100716(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A129254

/-- `∩[A100716(n+1)-1, A100716(n+1)]` -/
def P18154501842966907616.Spec : Prop :=
  ∀ n, (P18154501842966907616.a n : ℤ) = A129254 (n + 1)

theorem P18154501842966907616.correct : P18154501842966907616.Spec := by
  intro n
  simp only [A129254, Nat.add_sub_cancel]

end A129254

/-! ## A129254.P16067737958171048621

`A373952(A244634(n+1))-A244634(n)`
-/

namespace A129254.P16067737958171048621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373952 (A244634 (n + 1)).toNat - A244634 n

end

end A129254.P16067737958171048621

namespace A129254

/-- `A373952(A244634(n+1))-A244634(n)` -/
def P16067737958171048621.Spec : Prop :=
  ∀ n, P16067737958171048621.a n = A129254 (n + 1)

end A129254

/-! ## A129254.P8214257108503973495

`Δ[A065033(A005897(3*n)-n)]`
-/

namespace A129254.P8214257108503973495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005897 (3 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129254.P8214257108503973495

namespace A129254

/-- `Δ[A065033(A005897(3*n)-n)]` -/
def P8214257108503973495.Spec : Prop :=
  ∀ n, P8214257108503973495.a n = A129254 (n + 1)

end A129254

/-! ## A129254.P3855167670727954164

`A354958(A005843(3*n+2))-A014577(2*(n+1))`
-/

namespace A129254.P3855167670727954164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354958 (A005843 (3 * n + 2)).toNat - A014577 (2 * (n + 1))

end

end A129254.P3855167670727954164

namespace A129254

/-- `A354958(A005843(3*n+2))-A014577(2*(n+1))` -/
def P3855167670727954164.Spec : Prop :=
  ∀ n, P3855167670727954164.a n = A129254 (n + 1)

end A129254

/-!
# A129255: Permutations with exactly 12 fixed points.

The programs for A129255, there is no canonical definition to state claims against.
-/

/-! ## A129255.P2212286684233791533

`C(n+12, 12)*A000166(n)`
-/

namespace A129255.P2212286684233791533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 12) 12 : ℤ) * A000166 n

end

end A129255.P2212286684233791533

/-! ## A129255.P14880249473179609487

`C(n+12, 12)*A008290(∑[n])`
-/

namespace A129255.P14880249473179609487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 12) 12 : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129255.P14880249473179609487

/-! ## A129255.P2062607136310934004

`A000166(n)*A010965(n)`
-/

namespace A129255.P2062607136310934004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A010965 (n + 12)

end

end A129255.P2062607136310934004

/-! ## A129255.P13242595893716813302

`∑[A001288(n)]*A000166(n)`
-/

namespace A129255.P13242595893716813302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A129255.P13242595893716813302

/-! ## A129255.P17252654263570190042

`∑[∑[A001287(n)]]*A000166(n)`
-/

namespace A129255.P17252654263570190042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000166 n

end

end A129255.P17252654263570190042

/-! ## A129255.P10618363648529508002

`A098825(eq[13, A004736(n+1)])`
-/

namespace A129255.P10618363648529508002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129255.P10618363648529508002

/-! ## A129255.P8059020064923993690

`A008290(eq[12, A002262(n)])`
-/

namespace A129255.P8059020064923993690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129255.P8059020064923993690

/-! ## A129255.P11659343893607728615

`A008290(eq[13, A002260(n+1)])`
-/

namespace A129255.P11659343893607728615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129255.P11659343893607728615

/-!
# A129256: Central coefficient of Product_{k=0..n} (1+k*x)^2.

The programs for A129256, there is no canonical definition to state claims against.
-/

/-! ## A129256.P8038294827802697447

`A358501(∑[2*n])`
-/

namespace A129256.P8038294827802697447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358501 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129256.P8038294827802697447

/-! ## A129256.P12132734176241068555

`A254882((n+1)²+1)`
-/

namespace A129256.P12132734176241068555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 ((n + 1) ^ 2 + 1)

end

end A129256.P12132734176241068555

/-! ## A129256.P11001945228412311041

`record[A254882(A003814(n+1))]`
-/

namespace A129256.P11001945228412311041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254882 (A003814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129256.P11001945228412311041

/-!
# A129257: Primes p such that k-1, k+1 are composite, where k = absolute value of q^2 - p*r and p, q, r are consecutive primes.

The programs for A129257, there is no canonical definition to state claims against.
-/

/-! ## A129257.P9728600911802487912

`A318589(A363052(n+2))`
-/

namespace A129257.P9728600911802487912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318589 (A363052 (n + 2)).toNat

end

end A129257.P9728600911802487912

/-!
# A129259: Row 1 of prime separator array A129258.

The programs for A129259, there is no canonical definition to state claims against.
-/

/-! ## A129259.P1339540657039166217

`A129258(∑[n]+1)`
-/

namespace A129259.P1339540657039166217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129258 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129259.P1339540657039166217

/-! ## A129259.P7847328699636033485

`A129258(A000124(n))%32`
-/

namespace A129259.P7847328699636033485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129258 (A000124 n).toNat) 32

end

end A129259.P7847328699636033485

/-! ## A129259.P1977236754612561007

`record[A010054(n)*A129258(n+1)]`
-/

namespace A129259.P1977236754612561007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A129258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129259.P1977236754612561007

/-! ## A129259.P17528604828428878614

`record[A129258(n+1)/A013609(n)]`
-/

namespace A129259.P17528604828428878614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129258 (n + 1) : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129259.P17528604828428878614

/-! ## A129259.P14076658083555839297

`record[A129258(n+1)/A163626(n)]`
-/

namespace A129259.P14076658083555839297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129258 (n + 1) : ℚ) / (A163626 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129259.P14076658083555839297

/-!
# A129261: a(n) = coefficient of x^n in Product_{k=0..n} (1 + 2x + 3x^2 +...+ (k+1)*x^k).

The programs for A129261, there is no canonical definition to state claims against.
-/

/-! ## A129261.P13852907555683095783

`A139769(A180415(n+1))`
-/

namespace A129261.P13852907555683095783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139769 (A180415 (n + 1)).toNat

end

end A129261.P13852907555683095783

/-! ## A129261.P4842681748771539560

`A139769(A000125(n)+n)`
-/

namespace A129261.P4842681748771539560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139769 (A000125 n + (n : ℤ)).toNat

end

end A129261.P4842681748771539560

/-!
# A129262: Triangle read by rows, A007318 * A115361.

The programs for A129262, there is no canonical definition to state claims against.
-/

/-! ## A129262.P5683949522093219188

`A199474(A110681(n))`
-/

namespace A129262.P5683949522093219188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199474 (A110681 n).toNat

end

end A129262.P5683949522093219188

/-! ## A129262.P10940373997491032627

`A295753(A054335(n))`
-/

namespace A129262.P10940373997491032627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295753 (A054335 n).toNat

end

end A129262.P10940373997491032627

/-! ## A129262.P17634210817044808649

`A225633(A048471(n)+1)`
-/

namespace A129262.P17634210817044808649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 (A048471 n + 1).toNat

end

end A129262.P17634210817044808649

/-! ## A129262.P3637644387386276917

`A295753(A110681(n)%((2*(n+1))²-2))`
-/

namespace A129262.P3637644387386276917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295753 (Int.tmod (A110681 n) (((2 * (n + 1)) ^ 2 : ℤ) - 2)).toNat

end

end A129262.P3637644387386276917

/-! ## A129262.P15170914008143452324

`A117707(A283424(n)+A091063(n))`
-/

namespace A129262.P15170914008143452324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A283424 n + A091063 n).toNat

end

end A129262.P15170914008143452324

/-!
# A129264: Triangle read by rows: A000012 * A115361 as infinite lower triangular matrices.

The programs for A129264, the canonical program `A129264.P6596499237645719087` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129264 has offset 1).

The definition of A129264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129264.P3102478839521184783

`val(A139547(n), 2)+1`
-/

namespace A129264.P3102478839521184783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139547 n).toNat 2 + 1

end

end A129264.P3102478839521184783

namespace A129264

/-- `val(A139547(n), 2)+1` -/
def P3102478839521184783.Spec : Prop :=
  ∀ n, (P3102478839521184783.a n : ℤ) = A129264 (n + 1)

end A129264

/-! ## A129264.P6662488143782450934

`ceil(log2(A050206(n+2)))`
-/

namespace A129264.P6662488143782450934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A050206 (n + 2) : ℝ)⌉

end

end A129264.P6662488143782450934

namespace A129264

/-- `ceil(log2(A050206(n+2)))` -/
def P6662488143782450934.Spec : Prop :=
  ∀ n, P6662488143782450934.a n = A129264 (n + 1)

end A129264

/-! ## A129264.P10915694475342194558

`A070939(A010766(n+1))`
-/

namespace A129264.P10915694475342194558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A010766 (n + 1)).toNat

end

end A129264.P10915694475342194558

namespace A129264

/-- `A070939(A010766(n+1))` -/
def P10915694475342194558.Spec : Prop :=
  ∀ n, P10915694475342194558.a n = A129264 (n + 1)

end A129264

/-! ## A129264.P9592822833251606678

`A162320(A128489(n+1))`
-/

namespace A129264.P9592822833251606678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162320 (A128489 (n + 1)).toNat

end

end A129264.P9592822833251606678

namespace A129264

/-- `A162320(A128489(n+1))` -/
def P9592822833251606678.Spec : Prop :=
  ∀ n, P9592822833251606678.a n = A129264 (n + 1)

end A129264

/-! ## A129264.P6596499237645719087

`A029837(A050206(n+2))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129264

/-- `A029837(A050206(n+2))` -/
def P6596499237645719087.Spec : Prop :=
  ∀ n, P6596499237645719087.a n = A129264 (n + 1)

theorem P6596499237645719087.correct : P6596499237645719087.Spec := by
  intro n
  simp only [A129264, Nat.add_sub_cancel]

end A129264

/-! ## A129264.P15413023766393263033

`A110591(A085383(n+1))`
-/

namespace A129264.P15413023766393263033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A085383 (n + 1)).toNat

end

end A129264.P15413023766393263033

namespace A129264

/-- `A110591(A085383(n+1))` -/
def P15413023766393263033.Spec : Prop :=
  ∀ n, P15413023766393263033.a n = A129264 (n + 1)

end A129264

/-! ## A129264.P1884773006883447684

`A110591(A360610(n+1))`
-/

namespace A129264.P1884773006883447684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A360610 (n + 1)).toNat

end

end A129264.P1884773006883447684

namespace A129264

/-- `A110591(A360610(n+1))` -/
def P1884773006883447684.Spec : Prop :=
  ∀ n, P1884773006883447684.a n = A129264 (n + 1)

end A129264

/-! ## A129264.P6747181822678507071

`A390766(A358877(n+1))`
-/

namespace A129264.P6747181822678507071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390766 (A358877 (n + 1)).toNat

end

end A129264.P6747181822678507071

namespace A129264

/-- `A390766(A358877(n+1))` -/
def P6747181822678507071.Spec : Prop :=
  ∀ n, P6747181822678507071.a n = A129264 (n + 1)

end A129264

/-! ## A129264.P14956544803409339770

`A110591(A331147(n+1))`
-/

namespace A129264.P14956544803409339770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A331147 (n + 1)).toNat

end

end A129264.P14956544803409339770

namespace A129264

/-- `A110591(A331147(n+1))` -/
def P14956544803409339770.Spec : Prop :=
  ∀ n, P14956544803409339770.a n = A129264 (n + 1)

end A129264

/-! ## A129264.P17767066564075875717

`A110591(A331149(n+1))`
-/

namespace A129264.P17767066564075875717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A331149 (n + 1)).toNat

end

end A129264.P17767066564075875717

namespace A129264

/-- `A110591(A331149(n+1))` -/
def P17767066564075875717.Spec : Prop :=
  ∀ n, P17767066564075875717.a n = A129264 (n + 1)

end A129264

/-!
# A129265: Triangle read by rows: T(n,k) is the number of power of two divisors of n that are less than or equal to n/k.

The programs for A129265, the canonical program `A129265.P10106076537262202523` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129265 has offset 1).

The definition of A129265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129265.P10106076537262202523

`val(or(A002024(n+1), A139547(n)), 2)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129265

/-- `val(or(A002024(n+1), A139547(n)), 2)+1` -/
def P10106076537262202523.Spec : Prop :=
  ∀ n, (P10106076537262202523.a n : ℤ) = A129265 (n + 1)

theorem P10106076537262202523.correct : P10106076537262202523.Spec := by
  intro n
  simp only [A129265, Nat.add_sub_cancel]

end A129265

/-! ## A129265.P5784240326371108053

`A001511(gcd(A002024(n+1), A139547(n)))`
-/

namespace A129265.P5784240326371108053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.gcd (A002024 (n + 1)) (A139547 n))

end

end A129265.P5784240326371108053

namespace A129265

/-- `A001511(gcd(A002024(n+1), A139547(n)))` -/
def P5784240326371108053.Spec : Prop :=
  ∀ n, P5784240326371108053.a n = A129265 (n + 1)

end A129265

/-! ## A129265.P11691631164980556294

`A001511(or(A002024(n+1), A139547(n)))`
-/

namespace A129265.P11691631164980556294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A002024 (n + 1)) (A139547 n)).toNat

end

end A129265.P11691631164980556294

namespace A129265

/-- `A001511(or(A002024(n+1), A139547(n)))` -/
def P11691631164980556294.Spec : Prop :=
  ∀ n, P11691631164980556294.a n = A129265 (n + 1)

end A129265

/-! ## A129265.P16772037406172115080

`A001511(or(A139547(n), A141294(n+1)))`
-/

namespace A129265.P16772037406172115080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A139547 n) (A141294 (n + 1))).toNat

end

end A129265.P16772037406172115080

namespace A129265

/-- `A001511(or(A139547(n), A141294(n+1)))` -/
def P16772037406172115080.Spec : Prop :=
  ∀ n, P16772037406172115080.a n = A129265 (n + 1)

end A129265

/-! ## A129265.P16159126593921275712

`A007814(6*or(A002024(n+2), A139547(n)))`
-/

namespace A129265.P16159126593921275712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (6 * Int.lor (A002024 (n + 2)) (A139547 n)).toNat

end

end A129265.P16159126593921275712

namespace A129265

/-- `A007814(6*or(A002024(n+2), A139547(n)))` -/
def P16159126593921275712.Spec : Prop :=
  ∀ n, P16159126593921275712.a n = A129265 (n + 1)

end A129265

/-!
# A129267: Triangle with T(n,k) = T(n-1,k-1) + T(n-1,k) - T(n-2,k-1) - T(n-2,k) and T(0,0)=1 .

The programs for A129267, the canonical program `A129267.P11766946197645384382` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129267 has offset 0).

The definition of A129267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)-T(n-2,k)` (program `A129267.P11766946197645384382`, by `A129267.P11766946197645384382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129267.P11766946197645384382

`T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)-T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129267

/-- `T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)-T(n-2,k)` -/
def P11766946197645384382.Spec : Prop :=
  ∀ n, P11766946197645384382.a n = A129267 n

theorem P11766946197645384382.correct : P11766946197645384382.Spec := by
  intro n
  simp only [A129267]

end A129267

/-! ## A129267.P10261386548359335992

`A097807(n)*A199324(n)`
-/

namespace A129267.P10261386548359335992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A199324 n

end

end A129267.P10261386548359335992

namespace A129267

/-- `A097807(n)*A199324(n)` -/
def P10261386548359335992.Spec : Prop :=
  ∀ n, P10261386548359335992.a n = A129267 n

end A129267

/-! ## A129267.P9395438894098340238

`A009531(A099375(n))*A199324(n)`
-/

namespace A129267.P9395438894098340238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A199324 n

end

end A129267.P9395438894098340238

namespace A129267

/-- `A009531(A099375(n))*A199324(n)` -/
def P9395438894098340238.Spec : Prop :=
  ∀ n, P9395438894098340238.a n = A129267 n

end A129267

/-! ## A129267.P6861751584475449050

`A199324(n)/A097807(A014132(n+1))`
-/

namespace A129267.P6861751584475449050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199324 n : ℚ) / (A097807 (A014132 (n + 1)).toNat : ℚ)

end

end A129267.P6861751584475449050

namespace A129267

/-- `A199324(n)/A097807(A014132(n+1))` -/
def P6861751584475449050.Spec : Prop :=
  ∀ n, P6861751584475449050.a n = (A129267 n : ℚ)

end A129267

/-! ## A129267.P4155133265161567284

`A202603(A061579(n))`
-/

namespace A129267.P4155133265161567284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202603 (A061579 n).toNat

end

end A129267.P4155133265161567284

namespace A129267

/-- `A202603(A061579(n))` -/
def P4155133265161567284.Spec : Prop :=
  ∀ n, P4155133265161567284.a n = A129267 n

end A129267

/-! ## A129267.P13596306321482343699

`A202603(A114327(n)+n)`
-/

namespace A129267.P13596306321482343699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202603 (A114327 n + (n : ℤ)).toNat

end

end A129267.P13596306321482343699

namespace A129267

/-- `A202603(A114327(n)+n)` -/
def P13596306321482343699.Spec : Prop :=
  ∀ n, P13596306321482343699.a n = A129267 n

end A129267

/-! ## A129267.P4415709559636111966

`A202603(A038722(n+1)-1)`
-/

namespace A129267.P4415709559636111966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202603 (A038722 (n + 1) - 1).toNat

end

end A129267.P4415709559636111966

namespace A129267

/-- `A202603(A038722(n+1)-1)` -/
def P4415709559636111966.Spec : Prop :=
  ∀ n, P4415709559636111966.a n = A129267 n

end A129267

/-! ## A129267.P2464700669991411307

`A202603(A023443(A038722(n+1)))`
-/

namespace A129267.P2464700669991411307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202603 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A129267.P2464700669991411307

namespace A129267

/-- `A202603(A023443(A038722(n+1)))` -/
def P2464700669991411307.Spec : Prop :=
  ∀ n, P2464700669991411307.a n = A129267 n

end A129267

/-! ## A129267.P6845537461538911347

`A202603(A038722(n+2))`
-/

namespace A129267.P6845537461538911347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202603 (A038722 (n + 2)).toNat

end

end A129267.P6845537461538911347

namespace A129267

/-- `A202603(A038722(n+2))` -/
def P6845537461538911347.Spec : Prop :=
  ∀ n, P6845537461538911347.a n = A129267 n

end A129267

/-! ## A129267.P1056805347431398538

`A158388(A168561(n))*A199324(n)`
-/

namespace A129267.P1056805347431398538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A168561 n).toNat * A199324 n

end

end A129267.P1056805347431398538

namespace A129267

/-- `A158388(A168561(n))*A199324(n)` -/
def P1056805347431398538.Spec : Prop :=
  ∀ n, P1056805347431398538.a n = A129267 n

end A129267

/-! ## A129267.P44839163523969421

`A199324(n)*A309873(A130321(n))`
-/

namespace A129267.P44839163523969421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199324 n * A309873 (A130321 n).toNat

end

end A129267.P44839163523969421

namespace A129267

/-- `A199324(n)*A309873(A130321(n))` -/
def P44839163523969421.Spec : Prop :=
  ∀ n, P44839163523969421.a n = A129267 n

end A129267

/-!
# A129268: Slowest increasing sequence: the sum of three consecutive terms shares no digit with any of the summands.

The programs for A129268, there is no canonical definition to state claims against.
-/

/-! ## A129268.P13294489619706826116

`lt[A000005(A355227(n+2)), 6]`
-/

namespace A129268.P13294489619706826116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A355227 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A129268.P13294489619706826116

/-! ## A129268.P16644260596693918840

`lt[A265344(A261224(n+1)), 8]`
-/

namespace A129268.P16644260596693918840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A261224 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A129268.P16644260596693918840

/-! ## A129268.P13657433478087995503

`lt[A355227(n+2)², A007519(n+1)]`
-/

namespace A129268.P13657433478087995503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355227 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129268.P13657433478087995503

/-! ## A129268.P16340229044424126636

`lt[A355227(n+2), A005884(3*n+1)]`
-/

namespace A129268.P16340229044424126636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355227 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005884 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129268.P16340229044424126636

/-! ## A129268.P1160500149871719025

`lt[A355227(n+2), A001359(A070939(n))]`
-/

namespace A129268.P1160500149871719025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355227 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129268.P1160500149871719025

/-!
# A129271: Number of labeled n-node connected graphs with at most one cycle.

The programs for A129271, there is no canonical definition to state claims against.
-/

/-! ## A129271.P163827299143132757

`A057500(A028310(n))+A000272(n)`
-/

namespace A129271.P163827299143132757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057500 (A028310 n).toNat + A000272 n

end

end A129271.P163827299143132757

/-! ## A129271.P68463117228904933

`A106239(A152947(n+1))+A000272(n)`
-/

namespace A129271.P68463117228904933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106239 (A152947 (n + 1)).toNat + A000272 n

end

end A129271.P68463117228904933

/-! ## A129271.P2265246123632195834

`A088956(A161680(n))+A057500(A028310(n))`
-/

namespace A129271.P2265246123632195834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088956 (A161680 n).toNat + A057500 (A028310 n).toNat

end

end A129271.P2265246123632195834

/-! ## A129271.P5458709990153505388

`A105599(A152947(n+1))+A057500(A028310(n))`
-/

namespace A129271.P5458709990153505388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A152947 (n + 1)).toNat + A057500 (A028310 n).toNat

end

end A129271.P5458709990153505388

/-! ## A129271.P4884105729786528299

`A106239(A152947(n+1))+A088956(A161680(n))`
-/

namespace A129271.P4884105729786528299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106239 (A152947 (n + 1)).toNat + A088956 (A161680 n).toNat

end

end A129271.P4884105729786528299

/-!
# A129272: a(n)=(1/2)*(2*b(n+1)-3*b(n)+(1-(-1)^b(n))/2) where b(n)=A073941(n).

The programs for A129272, the canonical program `A129272.P10695781945809431084` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129272 has offset 1).

The definition of A129272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129272.P5293010095782607300

`val(A005428(n)+1, 3)`
-/

namespace A129272.P5293010095782607300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005428 n + 1).toNat 3

end

end A129272.P5293010095782607300

namespace A129272

/-- `val(A005428(n)+1, 3)` -/
def P5293010095782607300.Spec : Prop :=
  ∀ n, (P5293010095782607300.a n : ℤ) = A129272 (n + 1)

end A129272

/-! ## A129272.P10695781945809431084

`val(dr(A061418(n+2)), 6)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129272

/-- `val(dr(A061418(n+2)), 6)` -/
def P10695781945809431084.Spec : Prop :=
  ∀ n, (P10695781945809431084.a n : ℤ) = A129272 (n + 1)

theorem P10695781945809431084.correct : P10695781945809431084.Spec := by
  intro n
  simp only [A129272, Nat.add_sub_cancel]

end A129272

/-! ## A129272.P3048013179125342345

`ceil(sin(Δ[A205083(n+1)]))`
-/

namespace A129272.P3048013179125342345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (f1 (n + 1) - f1 n : ℝ)⌉

end

end A129272.P3048013179125342345

namespace A129272

/-- `ceil(sin(Δ[A205083(n+1)]))` -/
def P3048013179125342345.Spec : Prop :=
  ∀ n, P3048013179125342345.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P12788487645275165514

`ceil(sin(Δ[A304273(n+1)]))`
-/

namespace A129272.P12788487645275165514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (f1 (n + 1) - f1 n : ℝ)⌉

end

end A129272.P12788487645275165514

namespace A129272

/-- `ceil(sin(Δ[A304273(n+1)]))` -/
def P12788487645275165514.Spec : Prop :=
  ∀ n, P12788487645275165514.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P13634646137172309885

`A000295(Δ[A205083(n+1)]+1)`
-/

namespace A129272.P13634646137172309885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (f1 (n + 1) - f1 n + 1).toNat

end

end A129272.P13634646137172309885

namespace A129272

/-- `A000295(Δ[A205083(n+1)]+1)` -/
def P13634646137172309885.Spec : Prop :=
  ∀ n, P13634646137172309885.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P10591436046057450719

`A002620(Δ[A205083(n+1)]+1)`
-/

namespace A129272.P10591436046057450719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f1 (n + 1) - f1 n + 1).toNat

end

end A129272.P10591436046057450719

namespace A129272

/-- `A002620(Δ[A205083(n+1)]+1)` -/
def P10591436046057450719.Spec : Prop :=
  ∀ n, P10591436046057450719.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P1475550453319727120

`A003415(Δ[A205083(n+1)]+1)`
-/

namespace A129272.P1475550453319727120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (n + 1) - f1 n + 1).toNat

end

end A129272.P1475550453319727120

namespace A129272

/-- `A003415(Δ[A205083(n+1)]+1)` -/
def P1475550453319727120.Spec : Prop :=
  ∀ n, P1475550453319727120.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P17819608505959538965

`A000007(1-Δ[A205083(n+1)])`
-/

namespace A129272.P17819608505959538965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A129272.P17819608505959538965

namespace A129272

/-- `A000007(1-Δ[A205083(n+1)])` -/
def P17819608505959538965.Spec : Prop :=
  ∀ n, P17819608505959538965.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P17924106386799540873

`A002264(Δ[A205083(n+1)]+2)`
-/

namespace A129272.P17924106386799540873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n + 2).toNat

end

end A129272.P17924106386799540873

namespace A129272

/-- `A002264(Δ[A205083(n+1)]+2)` -/
def P17924106386799540873.Spec : Prop :=
  ∀ n, P17924106386799540873.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P5429431884867247436

`A005044(Δ[A205083(n+1)]+2)`
-/

namespace A129272.P5429431884867247436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (f1 (n + 1) - f1 n + 2).toNat

end

end A129272.P5429431884867247436

namespace A129272

/-- `A005044(Δ[A205083(n+1)]+2)` -/
def P5429431884867247436.Spec : Prop :=
  ∀ n, P5429431884867247436.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P12676527716161705396

`A017898(1-Δ[A205083(n+1)])`
-/

namespace A129272.P12676527716161705396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A129272.P12676527716161705396

namespace A129272

/-- `A017898(1-Δ[A205083(n+1)])` -/
def P12676527716161705396.Spec : Prop :=
  ∀ n, P12676527716161705396.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P1303126800819947420

`A008683(Δ[A205083(n+1)]+9)`
-/

namespace A129272.P1303126800819947420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n + 9).toNat

end

end A129272.P1303126800819947420

namespace A129272

/-- `A008683(Δ[A205083(n+1)]+9)` -/
def P1303126800819947420.Spec : Prop :=
  ∀ n, P1303126800819947420.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P16540544163623994727

`A008683(Δ[A304273(n+1)]+9)`
-/

namespace A129272.P16540544163623994727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n + 9).toNat

end

end A129272.P16540544163623994727

namespace A129272

/-- `A008683(Δ[A304273(n+1)]+9)` -/
def P16540544163623994727.Spec : Prop :=
  ∀ n, P16540544163623994727.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P13001601606770046150

`A000041(Δ[A205083(n+1)]+1)-1`
-/

namespace A129272.P13001601606770046150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n + 1).toNat - 1

end

end A129272.P13001601606770046150

namespace A129272

/-- `A000041(Δ[A205083(n+1)]+1)-1` -/
def P13001601606770046150.Spec : Prop :=
  ∀ n, P13001601606770046150.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P4630754486675275868

`A000108(Δ[A304273(n+1)]+1)-1`
-/

namespace A129272.P4630754486675275868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n + 1).toNat - 1

end

end A129272.P4630754486675275868

namespace A129272

/-- `A000108(Δ[A304273(n+1)]+1)-1` -/
def P4630754486675275868.Spec : Prop :=
  ∀ n, P4630754486675275868.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P6349016197746219358

`A000010(Δ[A205083(n+1)]+2)-1`
-/

namespace A129272.P6349016197746219358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n + 2).toNat - 1

end

end A129272.P6349016197746219358

namespace A129272

/-- `A000010(Δ[A205083(n+1)]+2)-1` -/
def P6349016197746219358.Spec : Prop :=
  ∀ n, P6349016197746219358.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P15968684432593608570

`val(A000032(Δ[A205083(n+1)]+2), 4)`
-/

namespace A129272.P15968684432593608570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000032 (f1 (n + 1) - f1 n + 2).toNat).toNat 4

end

end A129272.P15968684432593608570

namespace A129272

/-- `val(A000032(Δ[A205083(n+1)]+2), 4)` -/
def P15968684432593608570.Spec : Prop :=
  ∀ n, (P15968684432593608570.a n : ℤ) = A129272 (n + 1)

end A129272

/-! ## A129272.P7448464883415413533

`A001221(or(1, Δ[A205083(n+1)]+1))`
-/

namespace A129272.P7448464883415413533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 (f1 (n + 1) - f1 n + 1)).toNat

end

end A129272.P7448464883415413533

namespace A129272

/-- `A001221(or(1, Δ[A205083(n+1)]+1))` -/
def P7448464883415413533.Spec : Prop :=
  ∀ n, P7448464883415413533.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P5368381596262138897

`A001222(or(1, Δ[A205083(n+1)]+1))`
-/

namespace A129272.P5368381596262138897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 1 (f1 (n + 1) - f1 n + 1)).toNat

end

end A129272.P5368381596262138897

namespace A129272

/-- `A001222(or(1, Δ[A205083(n+1)]+1))` -/
def P5368381596262138897.Spec : Prop :=
  ∀ n, P5368381596262138897.a n = A129272 (n + 1)

end A129272

/-! ## A129272.P15801630001272656288

`floor((A014963(Δ[A304273(n+1)]+2)+1)/4)`
-/

namespace A129272.P15801630001272656288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (f1 (n + 1) - f1 n + 2).toNat + 1 : ℚ) / 4⌋

end

end A129272.P15801630001272656288

namespace A129272

/-- `floor((A014963(Δ[A304273(n+1)]+2)+1)/4)` -/
def P15801630001272656288.Spec : Prop :=
  ∀ n, P15801630001272656288.a n = A129272 (n + 1)

end A129272

/-!
# A129274: Triangle, read by rows, where T(n,k) is the coefficient of q^(nk+k) in the squared q-factorial of n+1.

The programs for A129274, there is no canonical definition to state claims against.
-/

/-! ## A129274.P1304097450524716589

`2-A174728(A004914(n+1))`
-/

namespace A129274.P1304097450524716589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A174728 (A004914 (n + 1)).toNat

end

end A129274.P1304097450524716589

/-! ## A129274.P4380202592982455754

`A157274(n)²%p?[A157152(n)]`
-/

namespace A129274.P4380202592982455754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157274 n ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A129274.P4380202592982455754

/-! ## A129274.P50535512449591649

`A020639(A001551(n))-A174728(n)`
-/

namespace A129274.P50535512449591649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001551 n).toNat - A174728 n

end

end A129274.P50535512449591649

/-! ## A129274.P15386812896375904985

`A000005(A135958(n))-A174728(n)`
-/

namespace A129274.P15386812896375904985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A135958 n).toNat - A174728 n

end

end A129274.P15386812896375904985

/-!
# A129275: Column 1 of triangle A129274; a(n) is the coefficient of q^(n+2) in the squared q-factorial of n+2.

The programs for A129275, there is no canonical definition to state claims against.
-/

/-! ## A129275.P2497976883252947685

`record[ratio[A129274(n)]]`
-/

namespace A129275.P2497976883252947685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129274 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129275.P2497976883252947685

/-! ## A129275.P539046407947037425

`A129274(∑[n+1]+1)`
-/

namespace A129275.P539046407947037425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129274 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129275.P539046407947037425

/-! ## A129275.P4682520600434277144

`record[A129274(A106247(n))]`
-/

namespace A129275.P4682520600434277144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129274 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129275.P4682520600434277144

/-! ## A129275.P8202527364032495347

`record[A129274(∑[A057979(n)])]`
-/

namespace A129275.P8202527364032495347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129274 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129275.P8202527364032495347

/-!
# A129276: Triangle, read by rows, where T(n,k) is the coefficient of q^(nk-k) in the squared q-factorial of n.

The programs for A129276, there is no canonical definition to state claims against.
-/

/-! ## A129276.P17129590466665786608

`A118868(A045912(n))`
-/

namespace A129276.P17129590466665786608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118868 (A045912 n).toNat

end

end A129276.P17129590466665786608

/-! ## A129276.P9836537862877510465

`A158524(A022167(n))`
-/

namespace A129276.P9836537862877510465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158524 (A022167 n).toNat

end

end A129276.P9836537862877510465

/-! ## A129276.P7250825201893303774

`A121713(A066094(n))`
-/

namespace A129276.P7250825201893303774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121713 (A066094 n).toNat

end

end A129276.P7250825201893303774

/-! ## A129276.P7830429519676779841

`A171898(A022183(n))`
-/

namespace A129276.P7830429519676779841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171898 (A022183 n).toNat

end

end A129276.P7830429519676779841

/-! ## A129276.P7281812970937546610

`A104038(A099927(n))`
-/

namespace A129276.P7281812970937546610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104038 (A099927 n).toNat

end

end A129276.P7281812970937546610

/-!
# A129277: Column 1 of triangle A129276; a(n) is the coefficient of q^n in the squared q-factorial of n+1.

The programs for A129277, there is no canonical definition to state claims against.
-/

/-! ## A129277.P10197091125931475669

`record[ratio[A129276(n)]]`
-/

namespace A129277.P10197091125931475669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129276 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129277.P10197091125931475669

/-! ## A129277.P9511364895988800030

`A129276(∑[n+1]+1)`
-/

namespace A129277.P9511364895988800030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129276 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A129277.P9511364895988800030

/-! ## A129277.P7769228293391325850

`record[A129276(A101881(n))]`
-/

namespace A129277.P7769228293391325850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129276 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129277.P7769228293391325850

/-! ## A129277.P14743216558502274645

`record[A129276(∑[A057979(n)])]`
-/

namespace A129277.P14743216558502274645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129276 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129277.P14743216558502274645

/-!
# A129278: Column 2 of triangle A129276; a(n) is the coefficient of q^(2n+2) in the squared q-factorial of n+2.

The programs for A129278, there is no canonical definition to state claims against.
-/

/-! ## A129278.P12165067278768301087

`A129276(∑[n+3])`
-/

namespace A129278.P12165067278768301087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129276 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129278.P12165067278768301087

/-! ## A129278.P5781422950982876380

`record[A129276(A308774(n))]`
-/

namespace A129278.P5781422950982876380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129276 (A308774 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129278.P5781422950982876380

/-! ## A129278.P2373318444638440976

`record[A129276(∑[A294317(n)])]`
-/

namespace A129278.P2373318444638440976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129276 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129278.P2373318444638440976

/-!
# A129279: a(0)=1; thereafter a(n) = the sum of the earlier terms which are <= n.

The programs for A129279, there is no canonical definition to state claims against.
-/

/-! ## A129279.P18165988244891009942

`gcd(40, ∏[A060924(n)])`
-/

namespace A129279.P18165988244891009942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 40 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A129279.P18165988244891009942

/-! ## A129279.P14396715848776285069

`∏[gcd(A226834(n+1), A265283(n))]`
-/

namespace A129279.P14396715848776285069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226834 (n + 1)) (A265283 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129279.P14396715848776285069

/-! ## A129279.P1974122239724968576

`∑[A300717(A208933(n))]`
-/

namespace A129279.P1974122239724968576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A208933 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129279.P1974122239724968576

/-! ## A129279.P15740288000155416225

`∑[A300717(abs(A112128(n)))]`
-/

namespace A129279.P15740288000155416225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 |A112128 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129279.P15740288000155416225

/-! ## A129279.P7772826413705243832

`∏[A014963(A050194(n+1))%6]`
-/

namespace A129279.P7772826413705243832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A050194 (n + 1)).toNat) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129279.P7772826413705243832

/-!
# A129280: a(1)=1. a(n) = the sum of the earlier terms which are <= n.

The programs for A129280, there is no canonical definition to state claims against.
-/

/-! ## A129280.P15761214464291402694

`gcd(64, A144816(A010423(n+2)))/2`
-/

namespace A129280.P15761214464291402694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd 64 (A144816 (A010423 (n + 2)).toNat) : ℚ) / 2

end

end A129280.P15761214464291402694

/-! ## A129280.P1134672165736365397

`gcd(A008451(A336938(2*n)), A011782(n))`
-/

namespace A129280.P1134672165736365397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008451 (A336938 (2 * n)).toNat) (A011782 n)

end

end A129280.P1134672165736365397

/-! ## A129280.P11780681039091151415

`A131577(A233745(3*(n+1))%(n+2))`
-/

namespace A129280.P11780681039091151415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (Int.tmod (A233745 (3 * (n + 1))) (n + 2 : ℤ)).toNat

end

end A129280.P11780681039091151415

/-! ## A129280.P6791940316654795489

`∏[A118914(A358196(3*n+5))]`
-/

namespace A129280.P6791940316654795489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A358196 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129280.P6791940316654795489

/-! ## A129280.P16066870562866238692

`∏[A080577(∏[A268811(n+1)])]`
-/

namespace A129280.P16066870562866238692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129280.P16066870562866238692

/-!
# A129282: a(0)=1; for n > 1, a(n) = a(n-1) + (the largest value of gcd(a(k),n) for 0 <= k <= n-1).

The programs for A129282, there is no canonical definition to state claims against.
-/

/-! ## A129282.P10433341957968560780

`∑[A071191(n+1)]-eq[1, A160085(3*n+4)]`
-/

namespace A129282.P10433341957968560780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071191 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160085 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A129282.P10433341957968560780

/-! ## A129282.P8257367855371277144

`A123068(A167614(n+1))-(p?[3*n+1]+5)/3`
-/

namespace A129282.P8257367855371277144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123068 (A167614 (n + 1)).toNat : ℚ) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 5 : ℚ) / 3

end

end A129282.P8257367855371277144

/-! ## A129282.P16758127557564823012

`A133263(A087051(n))-A057944(n)`
-/

namespace A129282.P16758127557564823012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A087051 n).toNat - A057944 n

end

end A129282.P16758127557564823012

/-! ## A129282.P8303733091410188979

`A260794(n+3)-A003963(A220096(n+3))`
-/

namespace A129282.P8303733091410188979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260794 (n + 3) - A003963 (A220096 (n + 3)).toNat

end

end A129282.P8303733091410188979

/-! ## A129282.P17285830601135518420

`A227386(A006501(n+1))`
-/

namespace A129282.P17285830601135518420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227386 (A006501 (n + 1)).toNat

end

end A129282.P17285830601135518420

/-!
# A129283: a(n) = (arithmetic derivative of n) + n.

The programs for A129283, the canonical program `A129283.P3962818557550655141` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129283 has offset 0).

The definition of A129283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129283.P3962818557550655141

`n+A003415(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129283

/-- `n+A003415(n)` -/
def P3962818557550655141.Spec : Prop :=
  ∀ n, P3962818557550655141.a n = A129283 n

theorem P3962818557550655141.correct : P3962818557550655141.Spec := by
  intro n
  simp only [A129283]

end A129283

/-! ## A129283.P1494599509585320141

`∑{d}[n, A348976(#)]`
-/

namespace A129283.P1494599509585320141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348976 d

end

end A129283.P1494599509585320141

namespace A129283

/-- `∑{d}[n, A348976(#)]` -/
def P1494599509585320141.Spec : Prop :=
  ∀ n, P1494599509585320141.a n = A129283 n

end A129283

/-! ## A129283.P2507439397496916177

`A168036(n)+2*n`
-/

namespace A129283.P2507439397496916177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n + (2 * n : ℤ)

end

end A129283.P2507439397496916177

namespace A129283

/-- `A168036(n)+2*n` -/
def P2507439397496916177.Spec : Prop :=
  ∀ n, P2507439397496916177.a n = A129283 n

end A129283

/-! ## A129283.P6045041392823831525

`∑{d}[n, A300251(#)]+n`
-/

namespace A129283.P6045041392823831525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d + (n : ℤ)

end

end A129283.P6045041392823831525

namespace A129283

/-- `∑{d}[n, A300251(#)]+n` -/
def P6045041392823831525.Spec : Prop :=
  ∀ n, P6045041392823831525.a n = A129283 n

end A129283

/-! ## A129283.P5612794127084724830

`A258057(n-1)+a(n-1)+1` with `a(0)=0`
-/

namespace A129283.P5612794127084724830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A258057 (n - 1) + a (n - 1) + 1

end

end A129283.P5612794127084724830

namespace A129283

/-- `A258057(n-1)+a(n-1)+1` -/
def P5612794127084724830.Spec : Prop :=
  ∀ n, P5612794127084724830.a n = A129283 n

end A129283

/-! ## A129283.P14512205990569474364

`A003415(n)-A001489(n)`
-/

namespace A129283.P14512205990569474364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - A001489 n

end

end A129283.P14512205990569474364

namespace A129283

/-- `A003415(n)-A001489(n)` -/
def P14512205990569474364.Spec : Prop :=
  ∀ n, P14512205990569474364.a n = A129283 n

end A129283

/-! ## A129283.P1893410957506443799

`2*A003415(n)-A168036(n)`
-/

namespace A129283.P1893410957506443799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003415 n - A168036 n

end

end A129283.P1893410957506443799

namespace A129283

/-- `2*A003415(n)-A168036(n)` -/
def P1893410957506443799.Spec : Prop :=
  ∀ n, P1893410957506443799.a n = A129283 n

end A129283

/-! ## A129283.P12389953898576854050

`A068346(n)+A368921(n)+n`
-/

namespace A129283.P12389953898576854050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n + (A368921 n + (n : ℤ))

end

end A129283.P12389953898576854050

namespace A129283

/-- `A068346(n)+A368921(n)+n` -/
def P12389953898576854050.Spec : Prop :=
  ∀ n, P12389953898576854050.a n = A129283 n

end A129283

/-! ## A129283.P15017962190098752197

`A276086(n)+n-A373849(n)`
-/

namespace A129283.P15017962190098752197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n + ((n : ℤ) - A373849 n)

end

end A129283.P15017962190098752197

namespace A129283

/-- `A276086(n)+n-A373849(n)` -/
def P15017962190098752197.Spec : Prop :=
  ∀ n, P15017962190098752197.a n = A129283 n

end A129283

/-! ## A129283.P3724118294732981954

`n-(A001489(n)-A168036(n))`
-/

namespace A129283.P3724118294732981954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A001489 n - A168036 n)

end

end A129283.P3724118294732981954

namespace A129283

/-- `n-(A001489(n)-A168036(n))` -/
def P3724118294732981954.Spec : Prop :=
  ∀ n, P3724118294732981954.a n = A129283 n

end A129283

/-! ## A129283.P9984775337665437231

`n-A168036(n)-A369052(n)`
-/

namespace A129283.P9984775337665437231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A168036 n - A369052 n

end

end A129283.P9984775337665437231

namespace A129283

/-- `n-A168036(n)-A369052(n)` -/
def P9984775337665437231.Spec : Prop :=
  ∀ n, P9984775337665437231.a n = A129283 n

end A129283

/-! ## A129283.P13436320118603678880

`A327858(n)*A351230(n)+n`
-/

namespace A129283.P13436320118603678880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351230 n + (n : ℤ)

end

end A129283.P13436320118603678880

namespace A129283

/-- `A327858(n)*A351230(n)+n` -/
def P13436320118603678880.Spec : Prop :=
  ∀ n, P13436320118603678880.a n = A129283 n

end A129283

/-! ## A129283.P102466339215050232

`A358669(n)/A276086(n)+n`
-/

namespace A129283.P102466339215050232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358669 n : ℚ) / (A276086 n : ℚ) + (n : ℚ)

end

end A129283.P102466339215050232

namespace A129283

/-- `A358669(n)/A276086(n)+n` -/
def P102466339215050232.Spec : Prop :=
  ∀ n, P102466339215050232.a n = (A129283 n : ℚ)

end A129283

/-! ## A129283.P1098084502879122161

`A359423(n)/A351231(n)+n`
-/

namespace A129283.P1098084502879122161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359423 n : ℚ) / (A351231 n : ℚ) + (n : ℚ)

end

end A129283.P1098084502879122161

namespace A129283

/-- `A359423(n)/A351231(n)+n` -/
def P1098084502879122161.Spec : Prop :=
  ∀ n, P1098084502879122161.a n = (A129283 n : ℚ)

end A129283

/-! ## A129283.P1695384591675432590

`∑[A258057(A028310(n)-1)]+n`
-/

namespace A129283.P1695384591675432590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A129283.P1695384591675432590

namespace A129283

/-- `∑[A258057(A028310(n)-1)]+n` -/
def P1695384591675432590.Spec : Prop :=
  ∀ n, P1695384591675432590.a n = A129283 n

end A129283

/-! ## A129283.P16736720366167091507

`A002378(n)-(n²-A003415(n))`
-/

namespace A129283.P16736720366167091507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - ((n ^ 2 : ℤ) - A003415 n)

end

end A129283.P16736720366167091507

namespace A129283

/-- `A002378(n)-(n²-A003415(n))` -/
def P16736720366167091507.Spec : Prop :=
  ∀ n, P16736720366167091507.a n = A129283 n

end A129283

/-! ## A129283.P8014426495185660074

`∑[A258057(n)]+n-A258057(n)`
-/

namespace A129283.P8014426495185660074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A258057 n)

end

end A129283.P8014426495185660074

namespace A129283

/-- `∑[A258057(n)]+n-A258057(n)` -/
def P8014426495185660074.Spec : Prop :=
  ∀ n, P8014426495185660074.a n = A129283 n

end A129283

/-! ## A129283.P4213071936143982249

`n-A003415(n)*A008683(A020484(n))`
-/

namespace A129283.P4213071936143982249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003415 n * A008683 (A020484 n).toNat

end

end A129283.P4213071936143982249

namespace A129283

/-- `n-A003415(n)*A008683(A020484(n))` -/
def P4213071936143982249.Spec : Prop :=
  ∀ n, P4213071936143982249.a n = A129283 n

end A129283

/-! ## A129283.P10001176711411208311

`A319703(A004277(n))+n`
-/

namespace A129283.P10001176711411208311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A004277 n).toNat + (n : ℤ)

end

end A129283.P10001176711411208311

namespace A129283

/-- `A319703(A004277(n))+n` -/
def P10001176711411208311.Spec : Prop :=
  ∀ n, P10001176711411208311.a n = A129283 n

end A129283

/-!
# A129284: a(n) = A129150(n) / 4, where A129150(n) = n-th arithmetic derivative of 2^3.

The programs for A129284, there is no canonical definition to state claims against.
-/

/-! ## A129284.P3356490498835465397

`A129150(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129284.P3356490498835465397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129150 n : ℚ) / 4

end

end A129284.P3356490498835465397

/-! ## A129284.P8344736409828866717

`A090636(n+2)/4`
-/

namespace A129284.P8344736409828866717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090636 (n + 2) : ℚ) / 4

end

end A129284.P8344736409828866717

/-! ## A129284.P318155563136867980

`record[A129285(A008611(n))-A000038(n)]`
-/

namespace A129284.P318155563136867980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129285 (A008611 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129284.P318155563136867980

/-! ## A129284.P320117261166587348

`record[A129285(A057979(n))-A000038(n)]`
-/

namespace A129284.P320117261166587348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129285 (A057979 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129284.P320117261166587348

/-! ## A129284.P3331265013852159667

`∪[A129285(n)-A000007(n), A129285(n)]`
-/

namespace A129284.P3331265013852159667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129285 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129284.P3331265013852159667

/-!
# A129285: a(n) = A129151(n) / 27.

The programs for A129285, there is no canonical definition to state claims against.
-/

/-! ## A129285.P5531212146309799852

`A129284(n+1)`
-/

namespace A129285.P5531212146309799852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129284 (n + 1)

end

end A129285.P5531212146309799852

/-! ## A129285.P2046127383556414702

`A129150(n+1)/4`
-/

namespace A129285.P2046127383556414702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129150 (n + 1) : ℚ) / 4

end

end A129285.P2046127383556414702

/-! ## A129285.P8696135413412299810

`A090636(n+3)/4`
-/

namespace A129285.P8696135413412299810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090636 (n + 3) : ℚ) / 4

end

end A129285.P8696135413412299810

/-! ## A129285.P2982490213956820076

`A129151(n)/27`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129285.P2982490213956820076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129151 n : ℚ) / 27

end

end A129285.P2982490213956820076

/-! ## A129285.P11550671701197873945

`record[A129284(abs(1-n))]`
-/

namespace A129285.P11550671701197873945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129284 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129285.P11550671701197873945

/-!
# A129286: a(n) = A129152(n) / 5^5, where A129152 is the trajectory of 5^6 under A003415, the arithmetic derivative.

The programs for A129286, there is no canonical definition to state claims against.
-/

/-! ## A129286.P12169115158773165164

`A090635(n+3)/4`
-/

namespace A129286.P12169115158773165164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090635 (n + 3) : ℚ) / 4

end

end A129286.P12169115158773165164

/-! ## A129286.P17783649775908192382

`A129152(n)/5^5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129286.P17783649775908192382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129152 n : ℚ) / (5 ^ 5 : ℚ)

end

end A129286.P17783649775908192382

/-! ## A129286.P8851441448498546203

`A129152(n)%A090635(n+3)`
-/

namespace A129286.P8851441448498546203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129152 n) (A090635 (n + 3))

end

end A129286.P8851441448498546203

/-! ## A129286.P5659466994309444180

`A129283(a(n-1))` with `a(0)=5`
-/

namespace A129286.P5659466994309444180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A129283 (a (n - 1)).toNat

end

end A129286.P5659466994309444180

/-! ## A129286.P2039512547390895664

`A003415(a(n-1))+a(n-1)` with `a(0)=5`
-/

namespace A129286.P2039512547390895664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A003415 (a (n - 1)).toNat + a (n - 1)

end

end A129286.P2039512547390895664

/-!
# A129288: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2 + (x + 41)^2 = y^2.

The programs for A129288, the canonical program `A129288.P18242868440847041240` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129288 has offset 1).

The definition of A129288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129288.P18242868440847041240

`6*a(n-3)-a(n-6)+82` with `a(0)=0, a(1)=36, a(2)=39, a(3)=123, a(4)=319, a(5)=336`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129288

/-- `6*a(n-3)-a(n-6)+82` -/
def P18242868440847041240.Spec : Prop :=
  ∀ n, P18242868440847041240.a n = A129288 (n + 1)

theorem P18242868440847041240.correct : P18242868440847041240.Spec := by
  intro n
  simp only [A129288, Nat.add_sub_cancel]

end A129288

/-! ## A129288.P8696489041902401821

`A000142(a(n-1))` with `a(0)=0, a(1)=36, a(2)=39, a(3)=123, a(4)=319, a(5)=336`
-/

namespace A129288.P8696489041902401821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 36, 39, 123, 319, 336] fun n a =>
  A000142 (a (n - 1)).toNat

end

end A129288.P8696489041902401821

namespace A129288

/-- `A000142(a(n-1))` -/
def P8696489041902401821.Spec : Prop :=
  ∀ n, P8696489041902401821.a n = A129288 (n + 1)

end A129288

/-!
# A129289: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+73)^2 = y^2.

The programs for A129289, the canonical program `A129289.P7570115418482956360` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129289 has offset 1).

The definition of A129289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129289.P7570115418482956360

`6*a(n-3)-a(n-6)+146` with `a(0)=0, a(1)=44, a(2)=95, a(3)=219, a(4)=455, a(5)=744`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129289

/-- `6*a(n-3)-a(n-6)+146` -/
def P7570115418482956360.Spec : Prop :=
  ∀ n, P7570115418482956360.a n = A129289 (n + 1)

theorem P7570115418482956360.correct : P7570115418482956360.Spec := by
  intro n
  simp only [A129289, Nat.add_sub_cancel]

end A129289

/-! ## A129289.P6394996925911605852

`A118674(n+1)+A129298(n+1)-A118675(n+1)`
-/

namespace A129289.P6394996925911605852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118674 (n + 1) + (A129298 (n + 1) - A118675 (n + 1))

end

end A129289.P6394996925911605852

namespace A129289

/-- `A118674(n+1)+A129298(n+1)-A118675(n+1)` -/
def P6394996925911605852.Spec : Prop :=
  ∀ n, P6394996925911605852.a n = A129289 (n + 1)

end A129289

/-! ## A129289.P1746596018168723077

`A185394(n+1)+A118120(n)-A129544(n+1)`
-/

namespace A129289.P1746596018168723077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185394 (n + 1) + (A118120 n - A129544 (n + 1))

end

end A129289.P1746596018168723077

namespace A129289

/-- `A185394(n+1)+A118120(n)-A129544(n+1)` -/
def P1746596018168723077.Spec : Prop :=
  ∀ n, P1746596018168723077.a n = A129289 (n + 1)

end A129289

/-! ## A129289.P18176782937221012673

`A207078(3*n+1)/7`
-/

namespace A129289.P18176782937221012673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207078 (3 * n + 1) : ℚ) / 7

end

end A129289.P18176782937221012673

namespace A129289

/-- `A207078(3*n+1)/7` -/
def P18176782937221012673.Spec : Prop :=
  ∀ n, P18176782937221012673.a n = (A129289 (n + 1) : ℚ)

end A129289

/-!
# A129290: 

The programs for A129290, there is no canonical definition to state claims against.
-/

/-! ## A129290.P4290323454751099621

`3^3^n+1`
-/

namespace A129290.P4290323454751099621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ 3 ^ n + 1

end

end A129290.P4290323454751099621

/-!
# A129291: 

The programs for A129291, there is no canonical definition to state claims against.
-/

/-! ## A129291.P11172337780455665160

`1-3^3^n+9^3^n`
-/

namespace A129291.P11172337780455665160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (3 ^ 3 ^ n : ℤ) + (9 ^ 3 ^ n : ℤ)

end

end A129291.P11172337780455665160

/-!
# A129292: Number of divisors of n^4 - 1 that are not greater than n.

The programs for A129292, there is no canonical definition to state claims against.
-/

/-! ## A129292.P12818716339694375433

`A000010(n+1)-A341775(A246300(n+1))`
-/

namespace A129292.P12818716339694375433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A341775 (A246300 (n + 1)).toNat

end

end A129292.P12818716339694375433

/-! ## A129292.P3035286840012645192

`A000010(n+1)-A351014(A120040(n))`
-/

namespace A129292.P3035286840012645192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A351014 (A120040 n).toNat

end

end A129292.P3035286840012645192

/-! ## A129292.P14946886183944004255

`A000010(n+1)-A338651(A058058(n+1))`
-/

namespace A129292.P14946886183944004255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A338651 (A058058 (n + 1)).toNat

end

end A129292.P14946886183944004255

/-! ## A129292.P13435399598843851089

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A333382(A357182(n))`
-/

namespace A129292.P13435399598843851089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A333382 (A357182 n).toNat : ℚ)

end

end A129292.P13435399598843851089

/-! ## A129292.P15508838152565482843

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A329313(A033483(n+2))`
-/

namespace A129292.P15508838152565482843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A329313 (A033483 (n + 2)).toNat : ℚ)

end

end A129292.P15508838152565482843

/-!
# A129293: Numbers m such that m^4-1 has no divisors d with 1 < d < m-1.

The programs for A129293, there is no canonical definition to state claims against.
-/

/-! ## A129293.P1282224869726819484

`A070155(n%a(n-1))` with `a(0)=3`
-/

namespace A129293.P1282224869726819484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A070155 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A129293.P1282224869726819484

/-! ## A129293.P17492450561062645491

`A070155(A028310(n))-floor(acot(n))`
-/

namespace A129293.P17492450561062645491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070155 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A129293.P17492450561062645491

/-! ## A129293.P15575424696312153535

`A070155(A028310(n))-A000007(n)`
-/

namespace A129293.P15575424696312153535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070155 (A028310 n).toNat - A000007 n

end

end A129293.P15575424696312153535

/-! ## A129293.P10225134306007802782

`A108013(n-floor(acot(4*a(n-1))))+1` with `a(0)=3`
-/

namespace A129293.P10225134306007802782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A108013 ((n : ℤ) - ⌊SequenceMachineLib.acot (4 * a (n - 1) : ℝ)⌋).toNat + 1

end

end A129293.P10225134306007802782

/-! ## A129293.P5789118351555684401

`A070155(A028310(n))+A000007(n)/A099837(3*n+4)`
-/

namespace A129293.P5789118351555684401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070155 (A028310 n).toNat : ℚ) + (A000007 n : ℚ) / (A099837 (3 * n + 4) : ℚ)

end

end A129293.P5789118351555684401

/-! ## A129293.P3677281105105733057

`A070155(A028310(n))-A010051(A070528(n+1))`
-/

namespace A129293.P3677281105105733057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070155 (A028310 n).toNat - A010051 (A070528 (n + 1)).toNat

end

end A129293.P3677281105105733057

/-! ## A129293.P13541313095318899382

`A070155(A028310(n))+A027641(2*n+1)`
-/

namespace A129293.P13541313095318899382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070155 (A028310 n).toNat + A027641 (2 * n + 1)

end

end A129293.P13541313095318899382

/-!
# A129294: Number of divisors of n^3 - 1 that are not greater than n.

The programs for A129294, there is no canonical definition to state claims against.
-/

/-! ## A129294.P11669705268517700710

`A347516(A135300(n+1))`
-/

namespace A129294.P11669705268517700710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347516 (A135300 (n + 1)).toNat

end

end A129294.P11669705268517700710

/-! ## A129294.P3739807594554017298

`A165093(A144926(n))`
-/

namespace A129294.P3739807594554017298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 (A144926 n).toNat

end

end A129294.P3739807594554017298

/-! ## A129294.P2482115667562074541

`A384877(A270613(n+1))+A032741(n)`
-/

namespace A129294.P2482115667562074541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384877 (A270613 (n + 1)).toNat + A032741 n

end

end A129294.P2482115667562074541

/-! ## A129294.P8783437440853900250

`A225183(A238279(3*n+2))+A078898(n)`
-/

namespace A129294.P8783437440853900250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225183 (A238279 (3 * n + 2)).toNat + A078898 n

end

end A129294.P8783437440853900250

/-! ## A129294.P5671971366971333918

`A101787(A300549(n))`
-/

namespace A129294.P5671971366971333918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101787 (A300549 n).toNat

end

end A129294.P5671971366971333918

/-!
# A129295: Numbers m such that m^3 - 1 has no divisors d with 1 < d < m - 1.

The programs for A129295, there is no canonical definition to state claims against.
-/

/-! ## A129295.P12686072701033494155

`∪[A065900(n+1), A096175(n+1)]`
-/

namespace A129295.P12686072701033494155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129295.P12686072701033494155

/-! ## A129295.P16334837830730454746

`p?[A131717(A002384(n+1))-1]+1`
-/

namespace A129295.P16334837830730454746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A002384 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A129295.P16334837830730454746

/-! ## A129295.P8874640656663710473

`p?[n*A004525(A289356(n+1))]+1`
-/

namespace A129295.P8874640656663710473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004525 (A289356 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A129295.P8874640656663710473

/-! ## A129295.P3087019430024910039

`∪[2*A317138(n+1), A065900(n+1)]`
-/

namespace A129295.P3087019430024910039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129295.P3087019430024910039

/-! ## A129295.P6190100700452122883

`∩[A131717(A309544(n+1)), A028815(n)]`
-/

namespace A129295.P6190100700452122883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (A309544 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129295.P6190100700452122883

/-! ## A129295.P17268854475765677042

`∪[A065900(n+1), A004275(A317138(n+1)+1)]`
-/

namespace A129295.P17268854475765677042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A317138 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A129295.P17268854475765677042

/-!
# A129296: Number of divisors of n^2 - 1 that are not greater than n.

The programs for A129296, the canonical program `A129296.P6623402927569410718` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129296 has offset 1).

The definition of A129296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129296.P6623402927569410718

`ceil(∏{e}[n*(n+2), #+1]/2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129296

/-- `ceil(∏{e}[n*(n+2), #+1]/2)` -/
def P6623402927569410718.Spec : Prop :=
  ∀ n, P6623402927569410718.a n = A129296 (n + 1)

theorem P6623402927569410718.correct : P6623402927569410718.Spec := by
  intro n
  simp only [A129296, Nat.add_sub_cancel]

end A129296

/-! ## A129296.P9060544900998031926

`round(∏{e}[n*(n+2), #+1]/2)`
-/

namespace A129296.P9060544900998031926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2)

end

end A129296.P9060544900998031926

namespace A129296

/-- `round(∏{e}[n*(n+2), #+1]/2)` -/
def P9060544900998031926.Spec : Prop :=
  ∀ n, P9060544900998031926.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P17681048968010496870

`∏{e}[(abs(1-n)+2)*(n+1)-1, #+1]/2`
-/

namespace A129296.P17681048968010496870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| + 2) * (n + 1 : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2

end

end A129296.P17681048968010496870

namespace A129296

/-- `∏{e}[(abs(1-n)+2)*(n+1)-1, #+1]/2` -/
def P17681048968010496870.Spec : Prop :=
  ∀ n, P17681048968010496870.a n = (A129296 (n + 1) : ℚ)

end A129296

/-! ## A129296.P12256620407344956724

`A116921(∏{e}[n*(n+2), #+1]+1)`
-/

namespace A129296.P12256620407344956724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1)

end

end A129296.P12256620407344956724

namespace A129296

/-- `A116921(∏{e}[n*(n+2), #+1]+1)` -/
def P12256620407344956724.Spec : Prop :=
  ∀ n, P12256620407344956724.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P10099273791468086846

`A026741(∏{e}[A005563(n), #+1])`
-/

namespace A129296.P10099273791468086846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A129296.P10099273791468086846

namespace A129296

/-- `A026741(∏{e}[A005563(n), #+1])` -/
def P10099273791468086846.Spec : Prop :=
  ∀ n, P10099273791468086846.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P10726138993959150837

`A004525(∏{e}[1-(n+1)², A090107(#+1)])`
-/

namespace A129296.P10726138993959150837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A090107 (Nat.factorization (f1 n).natAbs p + 1)).toNat

end

end A129296.P10726138993959150837

namespace A129296

/-- `A004525(∏{e}[1-(n+1)², A090107(#+1)])` -/
def P10726138993959150837.Spec : Prop :=
  ∀ n, P10726138993959150837.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P8742848366321177977

`A078898(∏{e}[1-(n+1)², A188462(#+1)])`
-/

namespace A129296.P8742848366321177977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A188462 (Nat.factorization (f1 n).natAbs p + 1)).toNat

end

end A129296.P8742848366321177977

namespace A129296

/-- `A078898(∏{e}[1-(n+1)², A188462(#+1)])` -/
def P8742848366321177977.Spec : Prop :=
  ∀ n, P8742848366321177977.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P11756049936569265569

`A000005((abs(1-n)+1)*(n+1)+n)/2`
-/

namespace A129296.P11756049936569265569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((|1 - (n : ℤ)| + 1) * (n + 1 : ℤ) + (n : ℤ)).toNat : ℚ) / 2

end

end A129296.P11756049936569265569

namespace A129296

/-- `A000005((abs(1-n)+1)*(n+1)+n)/2` -/
def P11756049936569265569.Spec : Prop :=
  ∀ n, P11756049936569265569.a n = (A129296 (n + 1) : ℚ)

end A129296

/-! ## A129296.P14991776536175421142

`ceil(A000005(A132411(n+1))/2)`
-/

namespace A129296.P14991776536175421142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (A132411 (n + 1)).toNat : ℚ) / 2⌉

end

end A129296.P14991776536175421142

namespace A129296

/-- `ceil(A000005(A132411(n+1))/2)` -/
def P14991776536175421142.Spec : Prop :=
  ∀ n, P14991776536175421142.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P17030617619156666359

`ceil(A000005(A004277(n)+n²)/2)`
-/

namespace A129296.P17030617619156666359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (A004277 n + (n ^ 2 : ℤ)).toNat : ℚ) / 2⌉

end

end A129296.P17030617619156666359

namespace A129296

/-- `ceil(A000005(A004277(n)+n²)/2)` -/
def P17030617619156666359.Spec : Prop :=
  ∀ n, P17030617619156666359.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P4355314049914915303

`A004526(A000005(abs(2-(n+1)²)+1))`
-/

namespace A129296.P4355314049914915303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (|2 - ((n + 1) ^ 2 : ℤ)| + 1).toNat).toNat

end

end A129296.P4355314049914915303

namespace A129296

/-- `A004526(A000005(abs(2-(n+1)²)+1))` -/
def P4355314049914915303.Spec : Prop :=
  ∀ n, P4355314049914915303.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P12470626881114955103

`ceil(A000005(A028310(n)²+2*n)/2)`
-/

namespace A129296.P12470626881114955103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (A028310 n ^ 2 + (2 * n : ℤ)).toNat : ℚ) / 2⌉

end

end A129296.P12470626881114955103

namespace A129296

/-- `ceil(A000005(A028310(n)²+2*n)/2)` -/
def P12470626881114955103.Spec : Prop :=
  ∀ n, P12470626881114955103.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P9860943426074804644

`round(A000005(A130706(n)+n+n²+n)/2)`
-/

namespace A129296.P9860943426074804644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (A130706 n + (n : ℤ) + (n ^ 2 + n : ℤ)).toNat : ℚ) / 2)

end

end A129296.P9860943426074804644

namespace A129296

/-- `round(A000005(A130706(n)+n+n²+n)/2)` -/
def P9860943426074804644.Spec : Prop :=
  ∀ n, P9860943426074804644.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P6610809881109238244

`A081757((n+1)²)+1`
-/

namespace A129296.P6610809881109238244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081757 ((n + 1) ^ 2) + 1

end

end A129296.P6610809881109238244

namespace A129296

/-- `A081757((n+1)²)+1` -/
def P6610809881109238244.Spec : Prop :=
  ∀ n, P6610809881109238244.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P11004560609404213063

`A056924(A082562(n+1))`
-/

namespace A129296.P11004560609404213063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A082562 (n + 1)).toNat

end

end A129296.P11004560609404213063

namespace A129296

/-- `A056924(A082562(n+1))` -/
def P11004560609404213063.Spec : Prop :=
  ∀ n, P11004560609404213063.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P8065270057498167806

`A038548(A132411(n+1))`
-/

namespace A129296.P8065270057498167806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A132411 (n + 1)).toNat

end

end A129296.P8065270057498167806

namespace A129296

/-- `A038548(A132411(n+1))` -/
def P8065270057498167806.Spec : Prop :=
  ∀ n, P8065270057498167806.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P16595724435703929687

`A095686(A103505(n+1))`
-/

namespace A129296.P16595724435703929687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095686 (A103505 (n + 1)).toNat

end

end A129296.P16595724435703929687

namespace A129296

/-- `A095686(A103505(n+1))` -/
def P16595724435703929687.Spec : Prop :=
  ∀ n, P16595724435703929687.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P5772893468316060956

`A038548(A004277(n)+n²)`
-/

namespace A129296.P5772893468316060956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A004277 n + (n ^ 2 : ℤ)).toNat

end

end A129296.P5772893468316060956

namespace A129296

/-- `A038548(A004277(n)+n²)` -/
def P5772893468316060956.Spec : Prop :=
  ∀ n, P5772893468316060956.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P15252334330183002373

`A038548(A060798(n+1)+n)`
-/

namespace A129296.P15252334330183002373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A060798 (n + 1) + (n : ℤ)).toNat

end

end A129296.P15252334330183002373

namespace A129296

/-- `A038548(A060798(n+1)+n)` -/
def P15252334330183002373.Spec : Prop :=
  ∀ n, P15252334330183002373.a n = A129296 (n + 1)

end A129296

/-! ## A129296.P12680248329771430345

`A056924(A060798(n+1)+n)`
-/

namespace A129296.P12680248329771430345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A060798 (n + 1) + (n : ℤ)).toNat

end

end A129296.P12680248329771430345

namespace A129296

/-- `A056924(A060798(n+1)+n)` -/
def P12680248329771430345.Spec : Prop :=
  ∀ n, P12680248329771430345.a n = A129296 (n + 1)

end A129296

/-!
# A129297: Nonnegative integers m such that m^2-1 has no divisors d with 1

The programs for A129297, the canonical program `A129297.P6596998359982084627` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129297 has offset 1).

The definition of A129297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129297.P6596998359982084627

`eq[A000010(A166597(n)), A063919(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A129297

/-- `eq[A000010(A166597(n)), A063919(n+1)]` -/
def P6596998359982084627.Spec : Prop :=
  ∀ n, (P6596998359982084627.a n : ℤ) = A129297 (n + 1)

theorem P6596998359982084627.correct : P6596998359982084627.Spec := by
  intro n
  simp only [A129297, Nat.add_sub_cancel]

end A129297

/-! ## A129297.P10141568871439682337

`eq[A046640(n+1), A078772(n+1)]`
-/

namespace A129297.P10141568871439682337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P10141568871439682337

namespace A129297

/-- `eq[A046640(n+1), A078772(n+1)]` -/
def P10141568871439682337.Spec : Prop :=
  ∀ n, (P10141568871439682337.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P5520194997626580614

`eq[A078772(n+1), A340198(n+1)]`
-/

namespace A129297.P5520194997626580614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P5520194997626580614

namespace A129297

/-- `eq[A078772(n+1), A340198(n+1)]` -/
def P5520194997626580614.Spec : Prop :=
  ∀ n, (P5520194997626580614.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P11773445895081744495

`eq[A049992(n+1), A175078(n+1)]`
-/

namespace A129297.P11773445895081744495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P11773445895081744495

namespace A129297

/-- `eq[A049992(n+1), A175078(n+1)]` -/
def P11773445895081744495.Spec : Prop :=
  ∀ n, (P11773445895081744495.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P18440836104359836912

`lt[n, A252461(n+1)+2]`
-/

namespace A129297.P18440836104359836912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252461 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129297.P18440836104359836912

namespace A129297

/-- `lt[n, A252461(n+1)+2]` -/
def P18440836104359836912.Spec : Prop :=
  ∀ n, (P18440836104359836912.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P5751671567943177236

`lt[n, A064989(n+1)+3]`
-/

namespace A129297.P5751671567943177236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129297.P5751671567943177236

namespace A129297

/-- `lt[n, A064989(n+1)+3]` -/
def P5751671567943177236.Spec : Prop :=
  ∀ n, (P5751671567943177236.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P1199328831903692764

`lt[n+1, A331032(n+1)+5]`
-/

namespace A129297.P1199328831903692764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331032 (n + 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129297.P1199328831903692764

namespace A129297

/-- `lt[n+1, A331032(n+1)+5]` -/
def P1199328831903692764.Spec : Prop :=
  ∀ n, (P1199328831903692764.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P576219201824748494

`lt[∑{d}[1-n, #], A000010(n+1)+2]`
-/

namespace A129297.P576219201824748494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A129297.P576219201824748494

namespace A129297

/-- `lt[∑{d}[1-n, #], A000010(n+1)+2]` -/
def P576219201824748494.Spec : Prop :=
  ∀ n, (P576219201824748494.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P1543523829798192000

`eq[A130543(n), A353464(n+1)]`
-/

namespace A129297.P1543523829798192000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P1543523829798192000

namespace A129297

/-- `eq[A130543(n), A353464(n+1)]` -/
def P1543523829798192000.Spec : Prop :=
  ∀ n, (P1543523829798192000.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P7816758590382237771

`lt[A023445(n), A064989(n+1)]`
-/

namespace A129297.P7816758590382237771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129297.P7816758590382237771

namespace A129297

/-- `lt[A023445(n), A064989(n+1)]` -/
def P7816758590382237771.Spec : Prop :=
  ∀ n, (P7816758590382237771.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P18002236877419376321

`eq[A246920(n+1), A356165(n+1)]`
-/

namespace A129297.P18002236877419376321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P18002236877419376321

namespace A129297

/-- `eq[A246920(n+1), A356165(n+1)]` -/
def P18002236877419376321.Spec : Prop :=
  ∀ n, (P18002236877419376321.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P12830923274339589703

`eq[A338648(n+1), A353464(n+1)]`
-/

namespace A129297.P12830923274339589703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P12830923274339589703

namespace A129297

/-- `eq[A338648(n+1), A353464(n+1)]` -/
def P12830923274339589703.Spec : Prop :=
  ∀ n, (P12830923274339589703.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P15372628592832225591

`lt[n, A117367(A117365(n+1)+2)]`
-/

namespace A129297.P15372628592832225591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (A117365 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129297.P15372628592832225591

namespace A129297

/-- `lt[n, A117367(A117365(n+1)+2)]` -/
def P15372628592832225591.Spec : Prop :=
  ∀ n, (P15372628592832225591.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P11005617093412990337

`lt[n, A020639(A253553(n+1))+2]`
-/

namespace A129297.P11005617093412990337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A253553 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A129297.P11005617093412990337

namespace A129297

/-- `lt[n, A020639(A253553(n+1))+2]` -/
def P11005617093412990337.Spec : Prop :=
  ∀ n, (P11005617093412990337.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P10383278965263031815

`eq[A028310(n), A069817(A028310(n))]`
-/

namespace A129297.P10383278965263031815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069817 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P10383278965263031815

namespace A129297

/-- `eq[A028310(n), A069817(A028310(n))]` -/
def P10383278965263031815.Spec : Prop :=
  ∀ n, (P10383278965263031815.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P3097736824789972137

`eq[A000034(A064989(n+1)), A166597(n)]`
-/

namespace A129297.P3097736824789972137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A064989 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P3097736824789972137

namespace A129297

/-- `eq[A000034(A064989(n+1)), A166597(n)]` -/
def P3097736824789972137.Spec : Prop :=
  ∀ n, (P3097736824789972137.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P4838062831802397333

`eq[A028234(n+1), A160089(A166597(n))]`
-/

namespace A129297.P4838062831802397333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160089 (A166597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P4838062831802397333

namespace A129297

/-- `eq[A028234(n+1), A160089(A166597(n))]` -/
def P4838062831802397333.Spec : Prop :=
  ∀ n, (P4838062831802397333.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P5616768658758428567

`eq[A007875(n+1), A209388(A166597(n))]`
-/

namespace A129297.P5616768658758428567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209388 (A166597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P5616768658758428567

namespace A129297

/-- `eq[A007875(n+1), A209388(A166597(n))]` -/
def P5616768658758428567.Spec : Prop :=
  ∀ n, (P5616768658758428567.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P6908932706419569587

`eq[A065033(A349122(n+1)), A065033(n)]`
-/

namespace A129297.P6908932706419569587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A349122 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P6908932706419569587

namespace A129297

/-- `eq[A065033(A349122(n+1)), A065033(n)]` -/
def P6908932706419569587.Spec : Prop :=
  ∀ n, (P6908932706419569587.a n : ℤ) = A129297 (n + 1)

end A129297

/-! ## A129297.P2653457751783125368

`eq[A002265(n)*A325142(n), A002265(n)]`
-/

namespace A129297.P2653457751783125368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n * A325142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P2653457751783125368

namespace A129297

/-- `eq[A002265(n)*A325142(n), A002265(n)]` -/
def P2653457751783125368.Spec : Prop :=
  ∀ n, (P2653457751783125368.a n : ℤ) = A129297 (n + 1)

end A129297

/-!
# A129298: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+89)^2 = y^2.

The programs for A129298, the canonical program `A129298.P4033157134008893732` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129298 has offset 1).

The definition of A129298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129298.P4033157134008893732

`6*a(n-3)-a(n-6)+178` with `a(0)=0, a(1)=51, a(2)=120, a(3)=267, a(4)=540, a(5)=931`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A129298

/-- `6*a(n-3)-a(n-6)+178` -/
def P4033157134008893732.Spec : Prop :=
  ∀ n, P4033157134008893732.a n = A129298 (n + 1)

theorem P4033157134008893732.correct : P4033157134008893732.Spec := by
  intro n
  simp only [A129298, Nat.add_sub_cancel]

end A129298

/-! ## A129298.P8915187357961345851

`A118675(n+1)+A129289(n+1)-A118674(n+1)`
-/

namespace A129298.P8915187357961345851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118675 (n + 1) + (A129289 (n + 1) - A118674 (n + 1))

end

end A129298.P8915187357961345851

namespace A129298

/-- `A118675(n+1)+A129289(n+1)-A118674(n+1)` -/
def P8915187357961345851.Spec : Prop :=
  ∀ n, P8915187357961345851.a n = A129298 (n + 1)

end A129298

/-!
# A129299: a(1)=1, a(n) = a(n-1) + (sum of the earlier terms of the sequence which are <= n).

The programs for A129299, there is no canonical definition to state claims against.
-/

/-! ## A129299.P6745599455756075575

`record[and(A099476(n), A286905(n+1))]`
-/

namespace A129299.P6745599455756075575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099476 n) (A286905 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129299.P6745599455756075575

/-! ## A129299.P11931730280119217146

`∑[A157685(A108221(n+1)²)]`
-/

namespace A129299.P11931730280119217146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A108221 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129299.P11931730280119217146

/-! ## A129299.P6089603207656082334

`∑[A187469(A108221(n+1)²)]`
-/

namespace A129299.P6089603207656082334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187469 (A108221 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129299.P6089603207656082334

/-! ## A129299.P11281261040169329142

`∑[A000212(p?[A181512(n+1)])]`
-/

namespace A129299.P11281261040169329142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129299.P11281261040169329142

/-! ## A129299.P7381107051052145284

`and(A002522(n), A101100(A055819(n)))`
-/

namespace A129299.P7381107051052145284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002522 n) (A101100 (A055819 n).toNat)

end

end A129299.P7381107051052145284

