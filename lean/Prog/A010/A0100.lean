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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A010000: a(0) = 1, a(n) = n^2 + 2 for n > 0.

The programs for A010000, the canonical program `A010000.P14141782869447036924` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010000 has offset 0).

The definition of A010000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010000.P9873787831123152472

`ceil(cot(atan(acot(n))²))`
-/

namespace A010000.P9873787831123152472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.arctan (SequenceMachineLib.acot (n : ℝ)) ^ 2)⌉

end

end A010000.P9873787831123152472

namespace A010000

/-- `ceil(cot(atan(acot(n))²))` -/
def P9873787831123152472.Spec : Prop :=
  ∀ n, P9873787831123152472.a n = A010000 n

end A010000

/-! ## A010000.P17514590059480775661

`ceil(cot(tanh(acot(n))²))`
-/

namespace A010000.P17514590059480775661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.tanh (SequenceMachineLib.acot (n : ℝ)) ^ 2)⌉

end

end A010000.P17514590059480775661

namespace A010000

/-- `ceil(cot(tanh(acot(n))²))` -/
def P17514590059480775661.Spec : Prop :=
  ∀ n, P17514590059480775661.a n = A010000 n

end A010000

/-! ## A010000.P1566762943512777595

`ceil(n/acot(n))+1`
-/

namespace A010000.P1566762943512777595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉ + 1

end

end A010000.P1566762943512777595

namespace A010000

/-- `ceil(n/acot(n))+1` -/
def P1566762943512777595.Spec : Prop :=
  ∀ n, P1566762943512777595.a n = A010000 n

end A010000

/-! ## A010000.P16029536852217194664

`round((1/acot(n))²)+1`
-/

namespace A010000.P16029536852217194664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 / SequenceMachineLib.acot (n : ℝ)) ^ 2) + 1

end

end A010000.P16029536852217194664

namespace A010000

/-- `round((1/acot(n))²)+1` -/
def P16029536852217194664.Spec : Prop :=
  ∀ n, P16029536852217194664.a n = A010000 n

end A010000

/-! ## A010000.P14141782869447036924

`∑[record[abs(xor(1, n-2))]]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010000

/-- `∑[record[abs(xor(1, n-2))]]` -/
def P14141782869447036924.Spec : Prop :=
  ∀ n, P14141782869447036924.a n = A010000 n

theorem P14141782869447036924.correct : P14141782869447036924.Spec := by
  intro n
  simp only [A010000]

end A010000

/-! ## A010000.P142921098834567886

`floor((2/acot(n/2))²)`
-/

namespace A010000.P142921098834567886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ)) ^ 2⌋

end

end A010000.P142921098834567886

namespace A010000

/-- `floor((2/acot(n/2))²)` -/
def P142921098834567886.Spec : Prop :=
  ∀ n, P142921098834567886.a n = A010000 n

end A010000

/-! ## A010000.P11924657580516115207

`∑[comp[2*(char[1]+n)]]`
-/

namespace A010000.P11924657580516115207
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f3 j = n then 1 else 0) + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010000.P11924657580516115207

namespace A010000

/-- `∑[comp[2*(char[1]+n)]]` -/
def P11924657580516115207.Spec : Prop :=
  ∀ n, (P11924657580516115207.a n : ℤ) = A010000 n

end A010000

/-! ## A010000.P8710690933475592230

`ceil(atan(n+1)+n²)`
-/

namespace A010000.P8710690933475592230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (n ^ 2 : ℝ)⌉

end

end A010000.P8710690933475592230

namespace A010000

/-- `ceil(atan(n+1)+n²)` -/
def P8710690933475592230.Spec : Prop :=
  ∀ n, P8710690933475592230.a n = A010000 n

end A010000

/-! ## A010000.P10929745345621788789

`ceil((acot(n+1)+n)²)`
-/

namespace A010000.P10929745345621788789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)) ^ 2⌉

end

end A010000.P10929745345621788789

namespace A010000

/-- `ceil((acot(n+1)+n)²)` -/
def P10929745345621788789.Spec : Prop :=
  ∀ n, P10929745345621788789.a n = A010000 n

end A010000

/-! ## A010000.P10054036493099530062

`n²+2-floor(acot(n))`
-/

namespace A010000.P10054036493099530062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (2 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A010000.P10054036493099530062

namespace A010000

/-- `n²+2-floor(acot(n))` -/
def P10054036493099530062.Spec : Prop :=
  ∀ n, P10054036493099530062.a n = A010000 n

end A010000

/-! ## A010000.P6313773132389015938

`2-floor(acot(n)-n²)`
-/

namespace A010000.P6313773132389015938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊SequenceMachineLib.acot (n : ℝ) - (n ^ 2 : ℝ)⌋

end

end A010000.P6313773132389015938

namespace A010000

/-- `2-floor(acot(n)-n²)` -/
def P6313773132389015938.Spec : Prop :=
  ∀ n, P6313773132389015938.a n = A010000 n

end A010000

/-! ## A010000.P784645898334088648

`ceil(n²-(acot(n)-2))`
-/

namespace A010000.P784645898334088648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) - (SequenceMachineLib.acot (n : ℝ) - 2)⌉

end

end A010000.P784645898334088648

namespace A010000

/-- `ceil(n²-(acot(n)-2))` -/
def P784645898334088648.Spec : Prop :=
  ∀ n, P784645898334088648.a n = A010000 n

end A010000

/-! ## A010000.P970588256805782315

`∑[round(2/acot(n))]-n`
-/

namespace A010000.P970588256805782315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A010000.P970588256805782315

namespace A010000

/-- `∑[round(2/acot(n))]-n` -/
def P970588256805782315.Spec : Prop :=
  ∀ n, P970588256805782315.a n = A010000 n

end A010000

/-! ## A010000.P3971415110764784206

`floor(∑[acot(n²)]+n²)`
-/

namespace A010000.P3971415110764784206
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℝ)⌋

end

end A010000.P3971415110764784206

namespace A010000

/-- `floor(∑[acot(n²)]+n²)` -/
def P3971415110764784206.Spec : Prop :=
  ∀ n, P3971415110764784206.a n = A010000 n

end A010000

/-! ## A010000.P9377888089630629455

`gcd(2, C(2, n²))+n²`
-/

namespace A010000.P9377888089630629455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose 2 (n ^ 2)) + n ^ 2

end

end A010000.P9377888089630629455

namespace A010000

/-- `gcd(2, C(2, n²))+n²` -/
def P9377888089630629455.Spec : Prop :=
  ∀ n, (P9377888089630629455.a n : ℤ) = A010000 n

end A010000

/-! ## A010000.P13644526527744484124

`or(n², (2%(n+2))!)`
-/

namespace A010000.P13644526527744484124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n ^ 2) (Nat.factorial (2 % (n + 2)))

end

end A010000.P13644526527744484124

namespace A010000

/-- `or(n², (2%(n+2))!)` -/
def P13644526527744484124.Spec : Prop :=
  ∀ n, (P13644526527744484124.a n : ℤ) = A010000 n

end A010000

/-! ## A010000.P16396425170400652756

`round(atan(n+2)²+n²)`
-/

namespace A010000.P16396425170400652756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (n + 2 : ℝ) ^ 2 + (n ^ 2 : ℝ))

end

end A010000.P16396425170400652756

namespace A010000

/-- `round(atan(n+2)²+n²)` -/
def P16396425170400652756.Spec : Prop :=
  ∀ n, P16396425170400652756.a n = A010000 n

end A010000

/-! ## A010000.P2414599499372889384

`n²+2-C(2, n+2)`
-/

namespace A010000.P2414599499372889384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (2 - (Nat.choose 2 (n + 2) : ℤ))

end

end A010000.P2414599499372889384

namespace A010000

/-- `n²+2-C(2, n+2)` -/
def P2414599499372889384.Spec : Prop :=
  ∀ n, P2414599499372889384.a n = A010000 n

end A010000

/-! ## A010000.P6781549016932562305

`2-(C(n, 2*n)-n²)`
-/

namespace A010000.P6781549016932562305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose n (2 * n) : ℤ) - (n ^ 2 : ℤ))

end

end A010000.P6781549016932562305

namespace A010000

/-- `2-(C(n, 2*n)-n²)` -/
def P6781549016932562305.Spec : Prop :=
  ∀ n, P6781549016932562305.a n = A010000 n

end A010000

/-! ## A010000.P3785216094635072170

`∏{p}[2*n, gcd(4, #)]+n²`
-/

namespace A010000.P3785216094635072170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 4 p + n ^ 2

end

end A010000.P3785216094635072170

namespace A010000

/-- `∏{p}[2*n, gcd(4, #)]+n²` -/
def P3785216094635072170.Spec : Prop :=
  ∀ n, (P3785216094635072170.a n : ℤ) = A010000 n

end A010000

/-!
# A010001: a(0) = 1, a(n) = 5*n^2 + 2 for n>0.

The programs for A010001, the canonical program `A010001.P11867169511704705781` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010001 has offset 0).

The definition of A010001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010001.P3338426645468494873

`floor((2/acot(n))²)+n²`
-/

namespace A010001.P3338426645468494873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋ + (n ^ 2 : ℤ)

end

end A010001.P3338426645468494873

namespace A010001

/-- `floor((2/acot(n))²)+n²` -/
def P3338426645468494873.Spec : Prop :=
  ∀ n, P3338426645468494873.a n = A010001 n

end A010001

/-! ## A010001.P11867169511704705781

`∑[a(n-1)+10]` with `a(0)=1, a(1)=6, a(2)=15`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010001

/-- `∑[a(n-1)+10]` -/
def P11867169511704705781.Spec : Prop :=
  ∀ n, (P11867169511704705781.a n : ℤ) = A010001 n

theorem P11867169511704705781.correct : P11867169511704705781.Spec := by
  intro n
  simp only [A010001]

end A010001

/-! ## A010001.P4459908336038823510

`ceil(atan(n+1))+5*n²`
-/

namespace A010001.P4459908336038823510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ + (5 * n ^ 2 : ℤ)

end

end A010001.P4459908336038823510

namespace A010001

/-- `ceil(atan(n+1))+5*n²` -/
def P4459908336038823510.Spec : Prop :=
  ∀ n, P4459908336038823510.a n = A010001 n

end A010001

/-! ## A010001.P1662491785515402073

`∑[ogf((1+4x+4x^2+x^3)/(1-2x+x^2))]`
-/

namespace A010001.P1662491785515402073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010001.P1662491785515402073

namespace A010001

/-- `∑[ogf((1+4x+4x^2+x^3)/(1-2x+x^2))]` -/
def P1662491785515402073.Spec : Prop :=
  ∀ n, P1662491785515402073.a n = A010001 n

end A010001

/-! ## A010001.P11700790750139267510

`ogf((1+4x+4x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A010001.P11700790750139267510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4, 1] [1, -3, 3, -1] n

end

end A010001.P11700790750139267510

namespace A010001

/-- `ogf((1+4x+4x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P11700790750139267510.Spec : Prop :=
  ∀ n, P11700790750139267510.a n = A010001 n

end A010001

/-! ## A010001.P12506530037479195192

`5*n^(2%a(n-1))+2` with `a(0)=1`
-/

namespace A010001.P12506530037479195192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * n ^ (2 % a (n - 1)) + 2

end

end A010001.P12506530037479195192

namespace A010001

/-- `5*n^(2%a(n-1))+2` -/
def P12506530037479195192.Spec : Prop :=
  ∀ n, (P12506530037479195192.a n : ℤ) = A010001 n

end A010001

/-! ## A010001.P6399023908608038589

`round((2*n*5*n-1)/2)+2`
-/

namespace A010001.P6399023908608038589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n * (5 * n) : ℤ) - 1 : ℚ) / 2) + 2

end

end A010001.P6399023908608038589

namespace A010001

/-- `round((2*n*5*n-1)/2)+2` -/
def P6399023908608038589.Spec : Prop :=
  ∀ n, P6399023908608038589.a n = A010001 n

end A010001

/-! ## A010001.P7316923927481597341

`∑[A357778(2*(n+1))]`
-/

namespace A010001.P7316923927481597341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010001.P7316923927481597341

namespace A010001

/-- `∑[A357778(2*(n+1))]` -/
def P7316923927481597341.Spec : Prop :=
  ∀ n, P7316923927481597341.a n = A010001 n

end A010001

/-! ## A010001.P3268515390159008694

`A016873(n²)^floor(atan(n+1))`
-/

namespace A010001.P3268515390159008694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016873 (n ^ 2) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ)

end

end A010001.P3268515390159008694

namespace A010001

/-- `A016873(n²)^floor(atan(n+1))` -/
def P3268515390159008694.Spec : Prop :=
  ∀ n, P3268515390159008694.a n = (A010001 n : ℚ)

end A010001

/-! ## A010001.P5782199004182141528

`A305897(A005901(n))`
-/

namespace A010001.P5782199004182141528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A005901 n).toNat

end

end A010001.P5782199004182141528

namespace A010001

/-- `A305897(A005901(n))` -/
def P5782199004182141528.Spec : Prop :=
  ∀ n, P5782199004182141528.a n = A010001 n

end A010001

/-! ## A010001.P9603460495442402823

`A319702(A158187(n))`
-/

namespace A010001.P9603460495442402823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A158187 n).toNat

end

end A010001.P9603460495442402823

namespace A010001

/-- `A319702(A158187(n))` -/
def P9603460495442402823.Spec : Prop :=
  ∀ n, P9603460495442402823.a n = A010001 n

end A010001

/-!
# A010002: a(0) = 1, a(n) = 9*n^2 + 2 for n>0.

The programs for A010002, the canonical program `A010002.P4485468374303858651` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010002 has offset 0).

The definition of A010002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010002.P1804341613515248426

`ceil(atan(n+1)+(3*n)²)`
-/

namespace A010002.P1804341613515248426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + ((3 * n) ^ 2 : ℝ)⌉

end

end A010002.P1804341613515248426

namespace A010002

/-- `ceil(atan(n+1)+(3*n)²)` -/
def P1804341613515248426.Spec : Prop :=
  ∀ n, P1804341613515248426.a n = A010002 n

end A010002

/-! ## A010002.P3212071110383076949

`ceil(2/acot(2*n)²)+n²`
-/

namespace A010002.P3212071110383076949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2⌉ + (n ^ 2 : ℤ)

end

end A010002.P3212071110383076949

namespace A010002

/-- `ceil(2/acot(2*n)²)+n²` -/
def P3212071110383076949.Spec : Prop :=
  ∀ n, P3212071110383076949.a n = A010002 n

end A010002

/-! ## A010002.P4485468374303858651

`floor((1/(2*n+1)+3*n)²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010002

/-- `floor((1/(2*n+1)+3*n)²)` -/
def P4485468374303858651.Spec : Prop :=
  ∀ n, P4485468374303858651.a n = A010002 n

theorem P4485468374303858651.correct : P4485468374303858651.Spec := by
  intro n
  simp only [A010002]

end A010002

/-! ## A010002.P8711309323058570127

`A008527(n)+n²`
-/

namespace A010002.P8711309323058570127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n + (n ^ 2 : ℤ)

end

end A010002.P8711309323058570127

namespace A010002

/-- `A008527(n)+n²` -/
def P8711309323058570127.Spec : Prop :=
  ∀ n, P8711309323058570127.a n = A010002 n

end A010002

/-! ## A010002.P13993523526416530219

`A005901(n)-n²`
-/

namespace A010002.P13993523526416530219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n - (n ^ 2 : ℤ)

end

end A010002.P13993523526416530219

namespace A010002

/-- `A005901(n)-n²` -/
def P13993523526416530219.Spec : Prop :=
  ∀ n, P13993523526416530219.a n = A010002 n

end A010002

/-! ## A010002.P12349494592932955595

`ceil((A010017(n)+2)/3)`
-/

namespace A010002.P12349494592932955595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010017 n + 2 : ℚ) / 3⌉

end

end A010002.P12349494592932955595

namespace A010002

/-- `ceil((A010017(n)+2)/3)` -/
def P12349494592932955595.Spec : Prop :=
  ∀ n, P12349494592932955595.a n = A010002 n

end A010002

/-! ## A010002.P9728572359346341850

`A005919(n)+2*n²`
-/

namespace A010002.P9728572359346341850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + (2 * n ^ 2 : ℤ)

end

end A010002.P9728572359346341850

namespace A010002

/-- `A005919(n)+2*n²` -/
def P9728572359346341850.Spec : Prop :=
  ∀ n, P9728572359346341850.a n = A010002 n

end A010002

/-! ## A010002.P2836002346981749512

`A010001(n)+(2*n)²`
-/

namespace A010002.P2836002346981749512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + ((2 * n) ^ 2 : ℤ)

end

end A010002.P2836002346981749512

namespace A010002

/-- `A010001(n)+(2*n)²` -/
def P2836002346981749512.Spec : Prop :=
  ∀ n, P2836002346981749512.a n = A010002 n

end A010002

/-! ## A010002.P11025411903412902648

`A005897(n)+3*n²`
-/

namespace A010002.P11025411903412902648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n + (3 * n ^ 2 : ℤ)

end

end A010002.P11025411903412902648

namespace A010002

/-- `A005897(n)+3*n²` -/
def P11025411903412902648.Spec : Prop :=
  ∀ n, P11025411903412902648.a n = A010002 n

end A010002

/-! ## A010002.P10498584079736033681

`A010003(n)-2*n²`
-/

namespace A010002.P10498584079736033681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n - (2 * n ^ 2 : ℤ)

end

end A010002.P10498584079736033681

namespace A010002

/-- `A010003(n)-2*n²` -/
def P10498584079736033681.Spec : Prop :=
  ∀ n, P10498584079736033681.a n = A010002 n

end A010002

/-! ## A010002.P4670518578316605961

`A010004(n)-(2*n)²`
-/

namespace A010002.P4670518578316605961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010004 n - ((2 * n) ^ 2 : ℤ)

end

end A010002.P4670518578316605961

namespace A010002

/-- `A010004(n)-(2*n)²` -/
def P4670518578316605961.Spec : Prop :=
  ∀ n, P4670518578316605961.a n = A010002 n

end A010002

/-! ## A010002.P7163734316350963038

`A005914(n)-3*n²`
-/

namespace A010002.P7163734316350963038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - (3 * n ^ 2 : ℤ)

end

end A010002.P7163734316350963038

namespace A010002

/-- `A005914(n)-3*n²` -/
def P7163734316350963038.Spec : Prop :=
  ∀ n, P7163734316350963038.a n = A010002 n

end A010002

/-! ## A010002.P6053833549732637965

`A005899(n)+5*n²`
-/

namespace A010002.P6053833549732637965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + (5 * n ^ 2 : ℤ)

end

end A010002.P6053833549732637965

namespace A010002

/-- `A005899(n)+5*n²` -/
def P6053833549732637965.Spec : Prop :=
  ∀ n, P6053833549732637965.a n = A010002 n

end A010002

/-! ## A010002.P1170870887385331085

`A000032(C(2, n+2))+(3*n)²`
-/

namespace A010002.P1170870887385331085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) + ((3 * n) ^ 2 : ℤ)

end

end A010002.P1170870887385331085

namespace A010002

/-- `A000032(C(2, n+2))+(3*n)²` -/
def P1170870887385331085.Spec : Prop :=
  ∀ n, P1170870887385331085.a n = A010002 n

end A010002

/-! ## A010002.P2367948170667394124

`gcd(2, A000010(2*n+1))+(3*n)²`
-/

namespace A010002.P2367948170667394124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000010 (2 * n + 1)) + (3 * n) ^ 2

end

end A010002.P2367948170667394124

namespace A010002

/-- `gcd(2, A000010(2*n+1))+(3*n)²` -/
def P2367948170667394124.Spec : Prop :=
  ∀ n, (P2367948170667394124.a n : ℤ) = A010002 n

end A010002

/-! ## A010002.P9602958530662522353

`A016742(n)+A010001(n)`
-/

namespace A010002.P9602958530662522353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A010001 n

end

end A010002.P9602958530662522353

namespace A010002

/-- `A016742(n)+A010001(n)` -/
def P9602958530662522353.Spec : Prop :=
  ∀ n, P9602958530662522353.a n = A010002 n

end A010002

/-! ## A010002.P12981043699836958932

`A033428(n)+A005897(n)`
-/

namespace A010002.P12981043699836958932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A005897 n

end

end A010002.P12981043699836958932

namespace A010002

/-- `A033428(n)+A005897(n)` -/
def P12981043699836958932.Spec : Prop :=
  ∀ n, P12981043699836958932.a n = A010002 n

end A010002

/-! ## A010002.P11281777152621304479

`A033429(n)+A005899(n)`
-/

namespace A010002.P11281777152621304479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + A005899 n

end

end A010002.P11281777152621304479

namespace A010002

/-- `A033429(n)+A005899(n)` -/
def P11281777152621304479.Spec : Prop :=
  ∀ n, P11281777152621304479.a n = A010002 n

end A010002

/-! ## A010002.P2582446373424542820

`A033582(n)+A005893(n)`
-/

namespace A010002.P2582446373424542820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n + A005893 n

end

end A010002.P2582446373424542820

namespace A010002

/-- `A033582(n)+A005893(n)` -/
def P2582446373424542820.Spec : Prop :=
  ∀ n, P2582446373424542820.a n = A010002 n

end A010002

/-! ## A010002.P18156084309434582466

`A033581(n)+A005918(n)`
-/

namespace A010002.P18156084309434582466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A005918 n

end

end A010002.P18156084309434582466

namespace A010002

/-- `A033581(n)+A005918(n)` -/
def P18156084309434582466.Spec : Prop :=
  ∀ n, P18156084309434582466.a n = A010002 n

end A010002

/-!
# A010003: a(0) = 1, a(n) = 11*n^2 + 2 for n>0.

The programs for A010003, the canonical program `A010003.P16592010741518870894` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010003 has offset 0).

The definition of A010003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010003.P12805604353394794357

`round(3/acot(2*n)²)-n²`
-/

namespace A010003.P12805604353394794357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2) - (n ^ 2 : ℤ)

end

end A010003.P12805604353394794357

namespace A010003

/-- `round(3/acot(2*n)²)-n²` -/
def P12805604353394794357.Spec : Prop :=
  ∀ n, P12805604353394794357.a n = A010003 n

end A010003

/-! ## A010003.P3770395246698320154

`abs(floor((2/acot(2*n))²)-5*n²)`
-/

namespace A010003.P3770395246698320154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋ - (5 * n ^ 2 : ℤ)|

end

end A010003.P3770395246698320154

namespace A010003

/-- `abs(floor((2/acot(2*n))²)-5*n²)` -/
def P3770395246698320154.Spec : Prop :=
  ∀ n, P3770395246698320154.a n = A010003 n

end A010003

/-! ## A010003.P16592010741518870894

`n²+round((2*n*10*n-1)/2)+2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010003

/-- `n²+round((2*n*10*n-1)/2)+2` -/
def P16592010741518870894.Spec : Prop :=
  ∀ n, P16592010741518870894.a n = A010003 n

theorem P16592010741518870894.correct : P16592010741518870894.Spec := by
  intro n
  simp only [A010003]

end A010003

/-! ## A010003.P10698719896930623012

`abs((2*n)²+ceil(2/acot(2*n)²)-n²)`
-/

namespace A010003.P10698719896930623012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n) ^ 2 : ℤ) + (⌈2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2⌉ - (n ^ 2 : ℤ))|

end

end A010003.P10698719896930623012

namespace A010003

/-- `abs((2*n)²+ceil(2/acot(2*n)²)-n²)` -/
def P10698719896930623012.Spec : Prop :=
  ∀ n, P10698719896930623012.a n = A010003 n

end A010003

/-! ## A010003.P1354535253525868682

`abs(7*n²-A010008(n))`
-/

namespace A010003.P1354535253525868682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n ^ 2 : ℤ) - A010008 n|

end

end A010003.P1354535253525868682

namespace A010003

/-- `abs(7*n²-A010008(n))` -/
def P1354535253525868682.Spec : Prop :=
  ∀ n, P1354535253525868682.a n = A010003 n

end A010003

/-! ## A010003.P12831226188537163400

`abs(A005901(n)+∑[2*n]-n)`
-/

namespace A010003.P12831226188537163400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005901 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A010003.P12831226188537163400

namespace A010003

/-- `abs(A005901(n)+∑[2*n]-n)` -/
def P12831226188537163400.Spec : Prop :=
  ∀ n, P12831226188537163400.a n = A010003 n

end A010003

/-! ## A010003.P12839677944747021658

`abs(A010005(n)-A016742(n))`
-/

namespace A010003.P12839677944747021658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010005 n - A016742 n|

end

end A010003.P12839677944747021658

namespace A010003

/-- `abs(A010005(n)-A016742(n))` -/
def P12839677944747021658.Spec : Prop :=
  ∀ n, P12839677944747021658.a n = A010003 n

end A010003

/-! ## A010003.P10493215626596161515

`(A008527(n)+A005905(n))/2`
-/

namespace A010003.P10493215626596161515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008527 n + A005905 n : ℚ) / 2

end

end A010003.P10493215626596161515

namespace A010003

/-- `(A008527(n)+A005905(n))/2` -/
def P10493215626596161515.Spec : Prop :=
  ∀ n, P10493215626596161515.a n = (A010003 n : ℚ)

end A010003

/-! ## A010003.P8839103641340137478

`(A010011(n)+A010000(n))/2`
-/

namespace A010003.P8839103641340137478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010011 n + A010000 n : ℚ) / 2

end

end A010003.P8839103641340137478

namespace A010003

/-- `(A010011(n)+A010000(n))/2` -/
def P8839103641340137478.Spec : Prop :=
  ∀ n, P8839103641340137478.a n = (A010003 n : ℚ)

end A010003

/-! ## A010003.P14295343007369903363

`abs(A033429(n)+A005919(n)-n²)`
-/

namespace A010003.P14295343007369903363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033429 n + (A005919 n - (n ^ 2 : ℤ))|

end

end A010003.P14295343007369903363

namespace A010003

/-- `abs(A033429(n)+A005919(n)-n²)` -/
def P14295343007369903363.Spec : Prop :=
  ∀ n, P14295343007369903363.a n = A010003 n

end A010003

/-! ## A010003.P2946292131507172755

`abs(A033429(n)+A005901(n)-(2*n)²)`
-/

namespace A010003.P2946292131507172755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033429 n + (A005901 n - ((2 * n) ^ 2 : ℤ))|

end

end A010003.P2946292131507172755

namespace A010003

/-- `abs(A033429(n)+A005901(n)-(2*n)²)` -/
def P2946292131507172755.Spec : Prop :=
  ∀ n, P2946292131507172755.a n = A010003 n

end A010003

/-! ## A010003.P10070432715332552227

`record[A131179(n)+A131174(3*(n+1))]`
-/

namespace A010003.P10070432715332552227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 n + A131174 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010003.P10070432715332552227

namespace A010003

/-- `record[A131179(n)+A131174(3*(n+1))]` -/
def P10070432715332552227.Spec : Prop :=
  ∀ n, P10070432715332552227.a n = A010003 n

end A010003

/-!
# A010004: a(0) = 1, a(n) = 13*n^2 + 2 for n>0.

The programs for A010004, the canonical program `A010004.P17844424801706428347` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010004 has offset 0).

The definition of A010004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010004.P7475228171613122789

`or(13*n², ceil(cosh(sin(n))))`
-/

namespace A010004.P7475228171613122789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (13 * n ^ 2 : ℤ) ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A010004.P7475228171613122789

namespace A010004

/-- `or(13*n², ceil(cosh(sin(n))))` -/
def P7475228171613122789.Spec : Prop :=
  ∀ n, P7475228171613122789.a n = A010004 n

end A010004

/-! ## A010004.P17844424801706428347

`∑[a(n-1)+26]` with `a(0)=1, a(1)=14, a(2)=39`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010004

/-- `∑[a(n-1)+26]` -/
def P17844424801706428347.Spec : Prop :=
  ∀ n, (P17844424801706428347.a n : ℤ) = A010004 n

theorem P17844424801706428347.correct : P17844424801706428347.Spec := by
  intro n
  simp only [A010004]

end A010004

/-! ## A010004.P12436179909152800566

`round(3/acot(2*n)²)+n²`
-/

namespace A010004.P12436179909152800566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2) + (n ^ 2 : ℤ)

end

end A010004.P12436179909152800566

namespace A010004

/-- `round(3/acot(2*n)²)+n²` -/
def P12436179909152800566.Spec : Prop :=
  ∀ n, P12436179909152800566.a n = A010004 n

end A010004

/-! ## A010004.P12235618893147691658

`abs(floor((2/acot(2*n))²)-3*n²)`
-/

namespace A010004.P12235618893147691658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋ - (3 * n ^ 2 : ℤ)|

end

end A010004.P12235618893147691658

namespace A010004

/-- `abs(floor((2/acot(2*n))²)-3*n²)` -/
def P12235618893147691658.Spec : Prop :=
  ∀ n, P12235618893147691658.a n = A010004 n

end A010004

/-! ## A010004.P7812884413561106927

`abs(round(3/acot(3*n)²)-14*n²)`
-/

namespace A010004.P7812884413561106927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2) - (14 * n ^ 2 : ℤ)|

end

end A010004.P7812884413561106927

namespace A010004

/-- `abs(round(3/acot(3*n)²)-14*n²)` -/
def P7812884413561106927.Spec : Prop :=
  ∀ n, P7812884413561106927.a n = A010004 n

end A010004

/-! ## A010004.P10055109165091192421

`∑[comp[2*n+3]]+12*n²+1+n`
-/

namespace A010004.P10055109165091192421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (12 * n ^ 2 + 1 + n)

end

end A010004.P10055109165091192421

namespace A010004

/-- `∑[comp[2*n+3]]+12*n²+1+n` -/
def P10055109165091192421.Spec : Prop :=
  ∀ n, (P10055109165091192421.a n : ℤ) = A010004 n

end A010004

/-! ## A010004.P18407824044075838959

`abs(6*n²+ceil(2/acot(2*n)²)-n²)`
-/

namespace A010004.P18407824044075838959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n ^ 2 : ℤ) + (⌈2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2⌉ - (n ^ 2 : ℤ))|

end

end A010004.P18407824044075838959

namespace A010004

/-- `abs(6*n²+ceil(2/acot(2*n)²)-n²)` -/
def P18407824044075838959.Spec : Prop :=
  ∀ n, P18407824044075838959.a n = A010004 n

end A010004

/-! ## A010004.P10826859587696675369

`round((A010016(n)+1)/2)`
-/

namespace A010004.P10826859587696675369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010016 n + 1 : ℚ) / 2)

end

end A010004.P10826859587696675369

namespace A010004

/-- `round((A010016(n)+1)/2)` -/
def P10826859587696675369.Spec : Prop :=
  ∀ n, P10826859587696675369.a n = A010004 n

end A010004

/-! ## A010004.P10680103601393395607

`(13*n²+2)/A054977(n)`
-/

namespace A010004.P10680103601393395607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 * n ^ 2 + 2 : ℚ) / (A054977 n : ℚ)

end

end A010004.P10680103601393395607

namespace A010004

/-- `(13*n²+2)/A054977(n)` -/
def P10680103601393395607.Spec : Prop :=
  ∀ n, P10680103601393395607.a n = (A010004 n : ℚ)

end A010004

/-! ## A010004.P971998121320060389

`ceil(abs(A010017(n)+1-n²)/2)`
-/

namespace A010004.P971998121320060389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|A010017 n + 1 - (n ^ 2 : ℤ)| : ℚ) / 2⌉

end

end A010004.P971998121320060389

namespace A010004

/-- `ceil(abs(A010017(n)+1-n²)/2)` -/
def P971998121320060389.Spec : Prop :=
  ∀ n, P971998121320060389.a n = A010004 n

end A010004

/-! ## A010004.P10936742195984200362

`abs(A001105(n)-A010005(n))`
-/

namespace A010004.P10936742195984200362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001105 n - A010005 n|

end

end A010004.P10936742195984200362

namespace A010004

/-- `abs(A001105(n)-A010005(n))` -/
def P10936742195984200362.Spec : Prop :=
  ∀ n, P10936742195984200362.a n = A010004 n

end A010004

/-! ## A010004.P16004076085710744146

`(A010013(n)+A005918(n))/2`
-/

namespace A010004.P16004076085710744146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010013 n + A005918 n : ℚ) / 2

end

end A010004.P16004076085710744146

namespace A010004

/-- `(A010013(n)+A005918(n))/2` -/
def P16004076085710744146.Spec : Prop :=
  ∀ n, P16004076085710744146.a n = (A010004 n : ℚ)

end A010004

/-! ## A010004.P2150049754606658550

`(A010008(n)+A008527(n))/2`
-/

namespace A010004.P2150049754606658550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010008 n + A008527 n : ℚ) / 2

end

end A010004.P2150049754606658550

namespace A010004

/-- `(A010008(n)+A008527(n))/2` -/
def P2150049754606658550.Spec : Prop :=
  ∀ n, P2150049754606658550.a n = (A010004 n : ℚ)

end A010004

/-! ## A010004.P560175305201988534

`(A010005(n)+A010003(n))/2`
-/

namespace A010004.P560175305201988534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010005 n + A010003 n : ℚ) / 2

end

end A010004.P560175305201988534

namespace A010004

/-- `(A010005(n)+A010003(n))/2` -/
def P560175305201988534.Spec : Prop :=
  ∀ n, P560175305201988534.a n = (A010004 n : ℚ)

end A010004

/-! ## A010004.P3243953392962690276

`(A010015(n)+A010000(n))/2`
-/

namespace A010004.P3243953392962690276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010015 n + A010000 n : ℚ) / 2

end

end A010004.P3243953392962690276

namespace A010004

/-- `(A010015(n)+A010000(n))/2` -/
def P3243953392962690276.Spec : Prop :=
  ∀ n, P3243953392962690276.a n = (A010004 n : ℚ)

end A010004

/-! ## A010004.P3523250065133886047

`or(A152742(n), A152765(A152749(n)))`
-/

namespace A010004.P3523250065133886047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152742 n) (A152765 (A152749 n).toNat)

end

end A010004.P3523250065133886047

namespace A010004

/-- `or(A152742(n), A152765(A152749(n)))` -/
def P3523250065133886047.Spec : Prop :=
  ∀ n, P3523250065133886047.a n = A010004 n

end A010004

/-! ## A010004.P13939937686076730764

`or(A152742(n), A152765(A152740(n)))`
-/

namespace A010004.P13939937686076730764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152742 n) (A152765 (A152740 n).toNat)

end

end A010004.P13939937686076730764

namespace A010004

/-- `or(A152742(n), A152765(A152740(n)))` -/
def P13939937686076730764.Spec : Prop :=
  ∀ n, P13939937686076730764.a n = A010004 n

end A010004

/-! ## A010004.P15225184227819654286

`or(A152742(n), A152765(A152741(n)))`
-/

namespace A010004.P15225184227819654286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A152742 n) (A152765 (A152741 n).toNat)

end

end A010004.P15225184227819654286

namespace A010004

/-- `or(A152742(n), A152765(A152741(n)))` -/
def P15225184227819654286.Spec : Prop :=
  ∀ n, P15225184227819654286.a n = A010004 n

end A010004

/-!
# A010005: a(0) = 1, a(n) = 15*n^2 + 2 for n>0.

The programs for A010005, the canonical program `A010005.P11670488506535268718` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010005 has offset 0).

The definition of A010005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010005.P800938162706742539

`floor((2/acot(2*n))²)-n²`
-/

namespace A010005.P800938162706742539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋ - (n ^ 2 : ℤ)

end

end A010005.P800938162706742539

namespace A010005

/-- `floor((2/acot(2*n))²)-n²` -/
def P800938162706742539.Spec : Prop :=
  ∀ n, P800938162706742539.a n = A010005 n

end A010005

/-! ## A010005.P11670488506535268718

`round((3*n*10*n-1)/2)+2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010005

/-- `round((3*n*10*n-1)/2)+2` -/
def P11670488506535268718.Spec : Prop :=
  ∀ n, P11670488506535268718.a n = A010005 n

theorem P11670488506535268718.correct : P11670488506535268718.Spec := by
  intro n
  simp only [A010005]

end A010005

/-! ## A010005.P2444053676968201096

`ceil((6/acot(n/2+n+n))²/15)`
-/

namespace A010005.P2444053676968201096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 / SequenceMachineLib.acot ((n : ℚ) / 2 + (n : ℚ) + (n : ℚ) : ℝ)) ^ 2 / 15⌉

end

end A010005.P2444053676968201096

namespace A010005

/-- `ceil((6/acot(n/2+n+n))²/15)` -/
def P2444053676968201096.Spec : Prop :=
  ∀ n, P2444053676968201096.a n = A010005 n

end A010005

/-! ## A010005.P11227252655026972503

`abs(round(3/acot(3*n)²)-12*n²)`
-/

namespace A010005.P11227252655026972503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2) - (12 * n ^ 2 : ℤ)|

end

end A010005.P11227252655026972503

namespace A010005

/-- `abs(round(3/acot(3*n)²)-12*n²)` -/
def P11227252655026972503.Spec : Prop :=
  ∀ n, P11227252655026972503.a n = A010005 n

end A010005

/-! ## A010005.P13485228679081852445

`floor((3*A005901(n)-1)/2)`
-/

namespace A010005.P13485228679081852445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A005901 n - 1 : ℚ) / 2⌋

end

end A010005.P13485228679081852445

namespace A010005

/-- `floor((3*A005901(n)-1)/2)` -/
def P13485228679081852445.Spec : Prop :=
  ∀ n, P13485228679081852445.a n = A010005 n

end A010005

/-! ## A010005.P12781688438768790434

`(A010012(n)+A008527(n))/2`
-/

namespace A010005.P12781688438768790434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010012 n + A008527 n : ℚ) / 2

end

end A010005.P12781688438768790434

namespace A010005

/-- `(A010012(n)+A008527(n))/2` -/
def P12781688438768790434.Spec : Prop :=
  ∀ n, P12781688438768790434.a n = (A010005 n : ℚ)

end A010005

/-! ## A010005.P553997136730672796

`(A010007(n)+A010004(n))/2`
-/

namespace A010005.P553997136730672796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010007 n + A010004 n : ℚ) / 2

end

end A010005.P553997136730672796

namespace A010005

/-- `(A010007(n)+A010004(n))/2` -/
def P553997136730672796.Spec : Prop :=
  ∀ n, P553997136730672796.a n = (A010005 n : ℚ)

end A010005

/-! ## A010005.P2201299560354798976

`(A010009(n)+A010003(n))/2`
-/

namespace A010005.P2201299560354798976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010009 n + A010003 n : ℚ) / 2

end

end A010005.P2201299560354798976

namespace A010005

/-- `(A010009(n)+A010003(n))/2` -/
def P2201299560354798976.Spec : Prop :=
  ∀ n, P2201299560354798976.a n = (A010005 n : ℚ)

end A010005

/-! ## A010005.P3918774811403162349

`abs((3*n)²-A005897(2*n))`
-/

namespace A010005.P3918774811403162349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((3 * n) ^ 2 : ℤ) - A005897 (2 * n)|

end

end A010005.P3918774811403162349

namespace A010005

/-- `abs((3*n)²-A005897(2*n))` -/
def P3918774811403162349.Spec : Prop :=
  ∀ n, P3918774811403162349.a n = A010005 n

end A010005

/-! ## A010005.P2033550592898807977

`A305897(A005903(n))`
-/

namespace A010005.P2033550592898807977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A005903 n).toNat

end

end A010005.P2033550592898807977

namespace A010005

/-- `A305897(A005903(n))` -/
def P2033550592898807977.Spec : Prop :=
  ∀ n, P2033550592898807977.a n = A010005 n

end A010005

/-!
# A010006: Coordination sequence for C_3 lattice: a(n) = 16*n^2 + 2 (n>0), a(0)=1.

The programs for A010006, the canonical program `A010006.P5769748677517528426` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010006 has offset 0).

The definition of A010006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010006.P5769748677517528426

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=18, a(2)=66, a(3)=146`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010006

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5769748677517528426.Spec : Prop :=
  ∀ n, P5769748677517528426.a n = A010006 n

theorem P5769748677517528426.correct : P5769748677517528426.Spec := by
  intro n
  simp only [A010006]

end A010006

/-! ## A010006.P11676219165289757439

`floor((2/acot(2*n))²)`
-/

namespace A010006.P11676219165289757439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋

end

end A010006.P11676219165289757439

namespace A010006

/-- `floor((2/acot(2*n))²)` -/
def P11676219165289757439.Spec : Prop :=
  ∀ n, P11676219165289757439.a n = A010006 n

end A010006

/-! ## A010006.P4289079763959998273

`ceil(atan(n+1))+(4*n)²`
-/

namespace A010006.P4289079763959998273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ + ((4 * n) ^ 2 : ℤ)

end

end A010006.P4289079763959998273

namespace A010006

/-- `ceil(atan(n+1))+(4*n)²` -/
def P4289079763959998273.Spec : Prop :=
  ∀ n, P4289079763959998273.a n = A010006 n

end A010006

/-! ## A010006.P11212208639979472367

`ceil(n/(n+1))+(4*n)²+1`
-/

namespace A010006.P11212208639979472367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉ + ((4 * n) ^ 2 : ℤ) + 1

end

end A010006.P11212208639979472367

namespace A010006

/-- `ceil(n/(n+1))+(4*n)²+1` -/
def P11212208639979472367.Spec : Prop :=
  ∀ n, P11212208639979472367.a n = A010006 n

end A010006

/-! ## A010006.P13098421401675394854

`record[(n+1)*xor(3, n-3)+n+3]`
-/

namespace A010006.P13098421401675394854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor 3 ((n : ℤ) - 3) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010006.P13098421401675394854

namespace A010006

/-- `record[(n+1)*xor(3, n-3)+n+3]` -/
def P13098421401675394854.Spec : Prop :=
  ∀ n, P13098421401675394854.a n = A010006 n

end A010006

/-! ## A010006.P8833126823830512572

`A005899(2*n)`
-/

namespace A010006.P8833126823830512572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (2 * n)

end

end A010006.P8833126823830512572

namespace A010006

/-- `A005899(2*n)` -/
def P8833126823830512572.Spec : Prop :=
  ∀ n, P8833126823830512572.a n = A010006 n

end A010006

/-! ## A010006.P15726227687527549046

`A160842(A008574(n))`
-/

namespace A010006.P15726227687527549046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160842 (A008574 n).toNat

end

end A010006.P15726227687527549046

namespace A010006

/-- `A160842(A008574(n))` -/
def P15726227687527549046.Spec : Prop :=
  ∀ n, P15726227687527549046.a n = A010006 n

end A010006

/-! ## A010006.P5498169323100121974

`A086955(A014681(4*n))`
-/

namespace A010006.P5498169323100121974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086955 (A014681 (4 * n)).toNat

end

end A010006.P5498169323100121974

namespace A010006

/-- `A086955(A014681(4*n))` -/
def P5498169323100121974.Spec : Prop :=
  ∀ n, P5498169323100121974.a n = A010006 n

end A010006

/-! ## A010006.P11258672261651560184

`A160842(A008706(n)-n)`
-/

namespace A010006.P11258672261651560184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160842 (A008706 n - (n : ℤ)).toNat

end

end A010006.P11258672261651560184

namespace A010006

/-- `A160842(A008706(n)-n)` -/
def P11258672261651560184.Spec : Prop :=
  ∀ n, P11258672261651560184.a n = A010006 n

end A010006

/-! ## A010006.P13142686727000353361

`A010000(4*n)`
-/

namespace A010006.P13142686727000353361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (4 * n)

end

end A010006.P13142686727000353361

namespace A010006

/-- `A010000(4*n)` -/
def P13142686727000353361.Spec : Prop :=
  ∀ n, P13142686727000353361.a n = A010006 n

end A010006

/-! ## A010006.P3044692618433585379

`A066714(4*n)`
-/

namespace A010006.P3044692618433585379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066714 (4 * n)

end

end A010006.P3044692618433585379

namespace A010006

/-- `A066714(4*n)` -/
def P3044692618433585379.Spec : Prop :=
  ∀ n, P3044692618433585379.a n = A010006 n

end A010006

/-! ## A010006.P3194256831503042917

`A028309(A017077(n))`
-/

namespace A010006.P3194256831503042917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028309 (A017077 n).toNat

end

end A010006.P3194256831503042917

namespace A010006

/-- `A028309(A017077(n))` -/
def P3194256831503042917.Spec : Prop :=
  ∀ n, P3194256831503042917.a n = A010006 n

end A010006

/-!
# A010007: a(0) = 1, a(n) = 17*n^2 + 2 for n>0.

The programs for A010007, the canonical program `A010007.P6929461854241213576` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010007 has offset 0).

The definition of A010007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010007.P16561505994334663419

`floor((2/acot(2*n))²)+n²`
-/

namespace A010007.P16561505994334663419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋ + (n ^ 2 : ℤ)

end

end A010007.P16561505994334663419

namespace A010007

/-- `floor((2/acot(2*n))²)+n²` -/
def P16561505994334663419.Spec : Prop :=
  ∀ n, P16561505994334663419.a n = A010007 n

end A010007

/-! ## A010007.P7416720687141072858

`ceil(2/acot(3*n)²)-n²`
-/

namespace A010007.P7416720687141072858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2⌉ - (n ^ 2 : ℤ)

end

end A010007.P7416720687141072858

namespace A010007

/-- `ceil(2/acot(3*n)²)-n²` -/
def P7416720687141072858.Spec : Prop :=
  ∀ n, P7416720687141072858.a n = A010007 n

end A010007

/-! ## A010007.P6929461854241213576

`Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²-(2*n)²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010007

/-- `Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²-(2*n)²` -/
def P6929461854241213576.Spec : Prop :=
  ∀ n, P6929461854241213576.a n = A010007 n

theorem P6929461854241213576.correct : P6929461854241213576.Spec := by
  intro n
  simp only [A010007]

end A010007

/-! ## A010007.P10863243142727019242

`or(A000122(A000120(n)²), A244630(n))`
-/

namespace A010007.P10863243142727019242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A000120 n ^ 2).toNat) (A244630 n)

end

end A010007.P10863243142727019242

namespace A010007

/-- `or(A000122(A000120(n)²), A244630(n))` -/
def P10863243142727019242.Spec : Prop :=
  ∀ n, P10863243142727019242.a n = A010007 n

end A010007

/-! ## A010007.P10230482834906717250

`or(gcd(2, A008904(2*n+1)), A244630(n))`
-/

namespace A010007.P10230482834906717250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.gcd 2 (A008904 (2 * n + 1)) : ℤ) (A244630 n)

end

end A010007.P10230482834906717250

namespace A010007

/-- `or(gcd(2, A008904(2*n+1)), A244630(n))` -/
def P10230482834906717250.Spec : Prop :=
  ∀ n, P10230482834906717250.a n = A010007 n

end A010007

/-! ## A010007.P2998223348106176726

`∑[A284672(a(n-1))]` with `a(0)=1`
-/

namespace A010007.P2998223348106176726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A284672 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010007.P2998223348106176726

namespace A010007

/-- `∑[A284672(a(n-1))]` -/
def P2998223348106176726.Spec : Prop :=
  ∀ n, P2998223348106176726.a n = A010007 n

end A010007

/-! ## A010007.P235779428196709368

`or(A000122(A246277(n+1)²), A244630(n))`
-/

namespace A010007.P235779428196709368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A246277 (n + 1) ^ 2).toNat) (A244630 n)

end

end A010007.P235779428196709368

namespace A010007

/-- `or(A000122(A246277(n+1)²), A244630(n))` -/
def P235779428196709368.Spec : Prop :=
  ∀ n, P235779428196709368.a n = A010007 n

end A010007

/-! ## A010007.P8886696902570440728

`xor(gcd(2, A000984(n)), A244630(n))`
-/

namespace A010007.P8886696902570440728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.gcd 2 (A000984 n) : ℤ) (A244630 n)

end

end A010007.P8886696902570440728

namespace A010007

/-- `xor(gcd(2, A000984(n)), A244630(n))` -/
def P8886696902570440728.Spec : Prop :=
  ∀ n, P8886696902570440728.a n = A010007 n

end A010007

/-! ## A010007.P4887468808444508223

`or(A000122(n²), A244630(n))`
-/

namespace A010007.P4887468808444508223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (n ^ 2)) (A244630 n)

end

end A010007.P4887468808444508223

namespace A010007

/-- `or(A000122(n²), A244630(n))` -/
def P4887468808444508223.Spec : Prop :=
  ∀ n, P4887468808444508223.a n = A010007 n

end A010007

/-!
# A010008: a(0) = 1, a(n) = 18*n^2 + 2 for n>0.

The programs for A010008, the canonical program `A010008.P7347664314979273612` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010008 has offset 0).

The definition of A010008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010008.P13323257043492684016

`ceil(2/acot(3*n)²)`
-/

namespace A010008.P13323257043492684016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2⌉

end

end A010008.P13323257043492684016

namespace A010008

/-- `ceil(2/acot(3*n)²)` -/
def P13323257043492684016.Spec : Prop :=
  ∀ n, P13323257043492684016.a n = A010008 n

end A010008

/-! ## A010008.P14793257350236112295

`((3*n)²+1)*lcm(2, n^C(2, a(n-1)))` with `a(0)=1`
-/

namespace A010008.P14793257350236112295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((3 * n) ^ 2 + 1) * Nat.lcm 2 (n ^ Nat.choose 2 (a (n - 1)))

end

end A010008.P14793257350236112295

namespace A010008

/-- `((3*n)²+1)*lcm(2, n^C(2, a(n-1)))` -/
def P14793257350236112295.Spec : Prop :=
  ∀ n, (P14793257350236112295.a n : ℤ) = A010008 n

end A010008

/-! ## A010008.P7347664314979273612

`Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²-3*n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010008

/-- `Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²-3*n²` -/
def P7347664314979273612.Spec : Prop :=
  ∀ n, P7347664314979273612.a n = A010008 n

theorem P7347664314979273612.correct : P7347664314979273612.Spec := by
  intro n
  simp only [A010008]

end A010008

/-! ## A010008.P7634751915018749982

`A008355(n)/(n²+1)`
-/

namespace A010008.P7634751915018749982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008355 n : ℚ) / (n ^ 2 + 1 : ℚ)

end

end A010008.P7634751915018749982

namespace A010008

/-- `A008355(n)/(n²+1)` -/
def P7634751915018749982.Spec : Prop :=
  ∀ n, P7634751915018749982.a n = (A010008 n : ℚ)

end A010008

/-! ## A010008.P16681724193525806573

`abs(3*n²-A010011(n))`
-/

namespace A010008.P16681724193525806573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n ^ 2 : ℤ) - A010011 n|

end

end A010008.P16681724193525806573

namespace A010008

/-- `abs(3*n²-A010011(n))` -/
def P16681724193525806573.Spec : Prop :=
  ∀ n, P16681724193525806573.a n = A010008 n

end A010008

/-! ## A010008.P18279526932313399679

`lcm(A247792(n), A382713(n))`
-/

namespace A010008.P18279526932313399679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A247792 n) (A382713 n)

end

end A010008.P18279526932313399679

namespace A010008

/-- `lcm(A247792(n), A382713(n))` -/
def P18279526932313399679.Spec : Prop :=
  ∀ n, (P18279526932313399679.a n : ℤ) = A010008 n

end A010008

/-! ## A010008.P7746620267662272014

`(A010016(n)+A005901(n))/2`
-/

namespace A010008.P7746620267662272014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010016 n + A005901 n : ℚ) / 2

end

end A010008.P7746620267662272014

namespace A010008

/-- `(A010016(n)+A005901(n))/2` -/
def P7746620267662272014.Spec : Prop :=
  ∀ n, P7746620267662272014.a n = (A010008 n : ℚ)

end A010008

/-! ## A010008.P847977666823088575

`A009946(2*n)`
-/

namespace A010008.P847977666823088575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 (2 * n)

end

end A010008.P847977666823088575

namespace A010008

/-- `A009946(2*n)` -/
def P847977666823088575.Spec : Prop :=
  ∀ n, P847977666823088575.a n = A010008 n

end A010008

/-! ## A010008.P5371796115687176102

`A005893(3*n)`
-/

namespace A010008.P5371796115687176102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (3 * n)

end

end A010008.P5371796115687176102

namespace A010008

/-- `A005893(3*n)` -/
def P5371796115687176102.Spec : Prop :=
  ∀ n, P5371796115687176102.a n = A010008 n

end A010008

/-! ## A010008.P11841865220785008388

`∩[A005893(n), A009946(n)]`
-/

namespace A010008.P11841865220785008388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010008.P11841865220785008388

namespace A010008

/-- `∩[A005893(n), A009946(n)]` -/
def P11841865220785008388.Spec : Prop :=
  ∀ n, (P11841865220785008388.a n : ℤ) = A010008 n

end A010008

/-! ## A010008.P1714690702750077862

`A105343(6*n)`
-/

namespace A010008.P1714690702750077862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 (6 * n)

end

end A010008.P1714690702750077862

namespace A010008

/-- `A105343(6*n)` -/
def P1714690702750077862.Spec : Prop :=
  ∀ n, P1714690702750077862.a n = A010008 n

end A010008

/-! ## A010008.P3277080998557735314

`A092534(A016921(n))`
-/

namespace A010008.P3277080998557735314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092534 (A016921 n).toNat

end

end A010008.P3277080998557735314

namespace A010008

/-- `A092534(A016921(n))` -/
def P3277080998557735314.Spec : Prop :=
  ∀ n, P3277080998557735314.a n = A010008 n

end A010008

/-! ## A010008.P8935784835218919762

`A236283(A008458(n))`
-/

namespace A010008.P8935784835218919762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (A008458 n).toNat

end

end A010008.P8935784835218919762

namespace A010008

/-- `A236283(A008458(n))` -/
def P8935784835218919762.Spec : Prop :=
  ∀ n, P8935784835218919762.a n = A010008 n

end A010008

/-! ## A010008.P10020877662457598071

`A340528(A271114(n))`
-/

namespace A010008.P10020877662457598071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340528 (A271114 n).toNat

end

end A010008.P10020877662457598071

namespace A010008

/-- `A340528(A271114(n))` -/
def P10020877662457598071.Spec : Prop :=
  ∀ n, P10020877662457598071.a n = A010008 n

end A010008

/-! ## A010008.P1809762446281876085

`∩[A009946(n), A105343(n)]`
-/

namespace A010008.P1809762446281876085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010008.P1809762446281876085

namespace A010008

/-- `∩[A009946(n), A105343(n)]` -/
def P1809762446281876085.Spec : Prop :=
  ∀ n, (P1809762446281876085.a n : ℤ) = A010008 n

end A010008

/-! ## A010008.P10756240941431090309

`∩[A009946(n), A267459(n)]`
-/

namespace A010008.P10756240941431090309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267459 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010008.P10756240941431090309

namespace A010008

/-- `∩[A009946(n), A267459(n)]` -/
def P10756240941431090309.Spec : Prop :=
  ∀ n, (P10756240941431090309.a n : ℤ) = A010008 n

end A010008

/-! ## A010008.P4875597053780140490

`∩[A236283(n+1), A009946(n)]`
-/

namespace A010008.P4875597053780140490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010008.P4875597053780140490

namespace A010008

/-- `∩[A236283(n+1), A009946(n)]` -/
def P4875597053780140490.Spec : Prop :=
  ∀ n, (P4875597053780140490.a n : ℤ) = A010008 n

end A010008

/-! ## A010008.P15810403803291920113

`∩[A340528(n+1), A009946(n)]`
-/

namespace A010008.P15810403803291920113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010008.P15810403803291920113

namespace A010008

/-- `∩[A340528(n+1), A009946(n)]` -/
def P15810403803291920113.Spec : Prop :=
  ∀ n, (P15810403803291920113.a n : ℤ) = A010008 n

end A010008

/-! ## A010008.P6394262375575824760

`∩[A397042(n+1), A009946(n)]`
-/

namespace A010008.P6394262375575824760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010008.P6394262375575824760

namespace A010008

/-- `∩[A397042(n+1), A009946(n)]` -/
def P6394262375575824760.Spec : Prop :=
  ∀ n, (P6394262375575824760.a n : ℤ) = A010008 n

end A010008

/-!
# A010009: a(0) = 1, a(n) = 19*n^2 + 2 for n>0.

The programs for A010009, the canonical program `A010009.P7499749282540507796` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010009 has offset 0).

The definition of A010009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010009.P9418211965026060940

`ceil(2/acot(3*n)²)+n²`
-/

namespace A010009.P9418211965026060940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2⌉ + (n ^ 2 : ℤ)

end

end A010009.P9418211965026060940

namespace A010009

/-- `ceil(2/acot(3*n)²)+n²` -/
def P9418211965026060940.Spec : Prop :=
  ∀ n, P9418211965026060940.a n = A010009 n

end A010009

/-! ## A010009.P7499749282540507796

`Δ[C(abs(1-4*n), 3)]-13*n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010009

/-- `Δ[C(abs(1-4*n), 3)]-13*n²` -/
def P7499749282540507796.Spec : Prop :=
  ∀ n, P7499749282540507796.a n = A010009 n

theorem P7499749282540507796.correct : P7499749282540507796.Spec := by
  intro n
  simp only [A010009]

end A010009

/-! ## A010009.P9017451196181395428

`Δ[floor((2*n)²/(2*n+1))^3]+n²-6*n²`
-/

namespace A010009.P9017451196181395428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ) - (6 * n ^ 2 : ℤ)

end

end A010009.P9017451196181395428

namespace A010009

/-- `Δ[floor((2*n)²/(2*n+1))^3]+n²-6*n²` -/
def P9017451196181395428.Spec : Prop :=
  ∀ n, P9017451196181395428.a n = A010009 n

end A010009

/-! ## A010009.P1615556315417858936

`ceil(sqrt(A064415(n+1)+(19*n²+1)²+n))`
-/

namespace A010009.P1615556315417858936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A064415 (n + 1) + ((19 * n ^ 2 + 1) ^ 2 + n : ℤ) : ℝ)⌉

end

end A010009.P1615556315417858936

namespace A010009

/-- `ceil(sqrt(A064415(n+1)+(19*n²+1)²+n))` -/
def P1615556315417858936.Spec : Prop :=
  ∀ n, P1615556315417858936.a n = A010009 n

end A010009

/-! ## A010009.P14441695609373809060

`A008000(3*n)`
-/

namespace A010009.P14441695609373809060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 (3 * n)

end

end A010009.P14441695609373809060

namespace A010009

/-- `A008000(3*n)` -/
def P14441695609373809060.Spec : Prop :=
  ∀ n, P14441695609373809060.a n = A010009 n

end A010009

/-! ## A010009.P9204794651697076024

`A319702(A158593(n))`
-/

namespace A010009.P9204794651697076024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A158593 n).toNat

end

end A010009.P9204794651697076024

namespace A010009

/-- `A319702(A158593(n))` -/
def P9204794651697076024.Spec : Prop :=
  ∀ n, P9204794651697076024.a n = A010009 n

end A010009

/-!
# A010010: a(0) = 1, a(n) = 20*n^2 + 2 for n>0.

The programs for A010010, the canonical program `A010010.P7255373925509877754` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010010 has offset 0).

The definition of A010010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010010.P17692431767206048324

`Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²-∑[comp[2*(n+1)]]`
-/

namespace A010010.P17692431767206048324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ) - ((2 * n) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A010010.P17692431767206048324

namespace A010010

/-- `Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²-∑[comp[2*(n+1)]]` -/
def P17692431767206048324.Spec : Prop :=
  ∀ n, P17692431767206048324.a n = A010010 n

end A010010

/-! ## A010010.P7255373925509877754

`ceil((A010022(n)+1)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010010

/-- `ceil((A010022(n)+1)/2)` -/
def P7255373925509877754.Spec : Prop :=
  ∀ n, P7255373925509877754.a n = A010010 n

theorem P7255373925509877754.correct : P7255373925509877754.Spec := by
  intro n
  simp only [A010010]

end A010010

/-! ## A010010.P6357923661927109433

`xor(A067824(A244080(n+1)), A195322(n))`
-/

namespace A010010.P6357923661927109433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067824 (A244080 (n + 1)).toNat) (A195322 n)

end

end A010010.P6357923661927109433

namespace A010010

/-- `xor(A067824(A244080(n+1)), A195322(n))` -/
def P6357923661927109433.Spec : Prop :=
  ∀ n, P6357923661927109433.a n = A010010 n

end A010010

/-! ## A010010.P4559548415806011986

`A009925(2*n)`
-/

namespace A010010.P4559548415806011986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009925 (2 * n)

end

end A010010.P4559548415806011986

namespace A010010

/-- `A009925(2*n)` -/
def P4559548415806011986.Spec : Prop :=
  ∀ n, P4559548415806011986.a n = A010010 n

end A010010

/-! ## A010010.P8691071689740529013

`A010001(2*n)`
-/

namespace A010010.P8691071689740529013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 (2 * n)

end

end A010010.P8691071689740529013

namespace A010010

/-- `A010001(2*n)` -/
def P8691071689740529013.Spec : Prop :=
  ∀ n, P8691071689740529013.a n = A010010 n

end A010010

/-! ## A010010.P1856248768193620226

`Δ[A004068(A004273(n))]`
-/

namespace A010010.P1856248768193620226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010010.P1856248768193620226

namespace A010010

/-- `Δ[A004068(A004273(n))]` -/
def P1856248768193620226.Spec : Prop :=
  ∀ n, P1856248768193620226.a n = A010010 n

end A010010

/-! ## A010010.P2228882499769839058

`record[A010001(A129760(n+1))]`
-/

namespace A010010.P2228882499769839058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 (A129760 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010010.P2228882499769839058

namespace A010010

/-- `record[A010001(A129760(n+1))]` -/
def P2228882499769839058.Spec : Prop :=
  ∀ n, P2228882499769839058.a n = A010010 n

end A010010

/-! ## A010010.P9057968396966839750

`A008255(3*n)`
-/

namespace A010010.P9057968396966839750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008255 (3 * n)

end

end A010010.P9057968396966839750

namespace A010010

/-- `A008255(3*n)` -/
def P9057968396966839750.Spec : Prop :=
  ∀ n, P9057968396966839750.a n = A010010 n

end A010010

/-! ## A010010.P17624616630884896240

`∩[A008255(n), A010001(n)]`
-/

namespace A010010.P17624616630884896240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010010.P17624616630884896240

namespace A010010

/-- `∩[A008255(n), A010001(n)]` -/
def P17624616630884896240.Spec : Prop :=
  ∀ n, (P17624616630884896240.a n : ℤ) = A010010 n

end A010010

/-!
# A010011: a(0) = 1, a(n) = 21*n^2 + 2 for n>0.

The programs for A010011, the canonical program `A010011.P9202191135318068031` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010011 has offset 0).

The definition of A010011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010011.P9202191135318068031

`Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010011

/-- `Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²` -/
def P9202191135318068031.Spec : Prop :=
  ∀ n, P9202191135318068031.a n = A010011 n

theorem P9202191135318068031.correct : P9202191135318068031.Spec := by
  intro n
  simp only [A010011]

end A010011

/-! ## A010011.P14215157041881636345

`or(A000005(A091382(n+1)), A195049(2*n))`
-/

namespace A010011.P14215157041881636345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A091382 (n + 1)).toNat) (A195049 (2 * n))

end

end A010011.P14215157041881636345

namespace A010011

/-- `or(A000005(A091382(n+1)), A195049(2*n))` -/
def P14215157041881636345.Spec : Prop :=
  ∀ n, P14215157041881636345.a n = A010011 n

end A010011

/-! ## A010011.P5054275349413646935

`xor(A010010(n)+n², A007814(2*n+3))`
-/

namespace A010011.P5054275349413646935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010010 n + (n ^ 2 : ℤ)) (A007814 (2 * n + 3))

end

end A010011.P5054275349413646935

namespace A010011

/-- `xor(A010010(n)+n², A007814(2*n+3))` -/
def P5054275349413646935.Spec : Prop :=
  ∀ n, P5054275349413646935.a n = A010011 n

end A010011

/-! ## A010011.P13214541791760723802

`xor(A064762(n), A143432(4*n))`
-/

namespace A010011.P13214541791760723802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064762 n) (A143432 (4 * n))

end

end A010011.P13214541791760723802

namespace A010011

/-- `xor(A064762(n), A143432(4*n))` -/
def P13214541791760723802.Spec : Prop :=
  ∀ n, P13214541791760723802.a n = A010011 n

end A010011

/-! ## A010011.P10443393368780081462

`A000027(A005914(n)+(3*n)²)`
-/

namespace A010011.P10443393368780081462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005914 n + ((3 * n) ^ 2 : ℤ)).toNat

end

end A010011.P10443393368780081462

namespace A010011

/-- `A000027(A005914(n)+(3*n)²)` -/
def P10443393368780081462.Spec : Prop :=
  ∀ n, P10443393368780081462.a n = A010011 n

end A010011

/-! ## A010011.P15639500858825477466

`A000027(A008259(3*n)-n²)`
-/

namespace A010011.P15639500858825477466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008259 (3 * n) - (n ^ 2 : ℤ)).toNat

end

end A010011.P15639500858825477466

namespace A010011

/-- `A000027(A008259(3*n)-n²)` -/
def P15639500858825477466.Spec : Prop :=
  ∀ n, P15639500858825477466.a n = A010011 n

end A010011

/-! ## A010011.P18157509080980251317

`A000027(A033428(n)+A010008(n))`
-/

namespace A010011.P18157509080980251317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033428 n + A010008 n).toNat

end

end A010011.P18157509080980251317

namespace A010011

/-- `A000027(A033428(n)+A010008(n))` -/
def P18157509080980251317.Spec : Prop :=
  ∀ n, P18157509080980251317.a n = A010011 n

end A010011

/-! ## A010011.P11494016650815742708

`A000027(A064761(n)+A005897(n))`
-/

namespace A010011.P11494016650815742708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A064761 n + A005897 n).toNat

end

end A010011.P11494016650815742708

namespace A010011

/-- `A000027(A064761(n)+A005897(n))` -/
def P11494016650815742708.Spec : Prop :=
  ∀ n, P11494016650815742708.a n = A010011 n

end A010011

/-!
# A010012: a(0) = 1, a(n) = 22*n^2 + 2 for n>0.

The programs for A010012, the canonical program `A010012.P1238539700957815316` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010012 has offset 0).

The definition of A010012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010012.P1238539700957815316

`Δ[floor((2*n)²/(2*n+1))^3]+n²-3*n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010012

/-- `Δ[floor((2*n)²/(2*n+1))^3]+n²-3*n²` -/
def P1238539700957815316.Spec : Prop :=
  ∀ n, P1238539700957815316.a n = A010012 n

theorem P1238539700957815316.correct : P1238539700957815316.Spec := by
  intro n
  simp only [A010012]

end A010012

/-! ## A010012.P10767925836627719028

`A054275(2*n)`
-/

namespace A010012.P10767925836627719028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 (2 * n)

end

end A010012.P10767925836627719028

namespace A010012

/-- `A054275(2*n)` -/
def P10767925836627719028.Spec : Prop :=
  ∀ n, P10767925836627719028.a n = A010012 n

end A010012

/-! ## A010012.P17157499997734660493

`record[A054275(n)/(-1)^n]`
-/

namespace A010012.P17157499997734660493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054275 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010012.P17157499997734660493

namespace A010012

/-- `record[A054275(n)/(-1)^n]` -/
def P17157499997734660493.Spec : Prop :=
  ∀ n, P17157499997734660493.a n = (A010012 n : ℚ)

end A010012

/-! ## A010012.P2436784134434880373

`A008258(3*n)`
-/

namespace A010012.P2436784134434880373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008258 (3 * n)

end

end A010012.P2436784134434880373

namespace A010012

/-- `A008258(3*n)` -/
def P2436784134434880373.Spec : Prop :=
  ∀ n, P2436784134434880373.a n = A010012 n

end A010012

/-! ## A010012.P10269635207109416331

`A008259(3*n)`
-/

namespace A010012.P10269635207109416331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008259 (3 * n)

end

end A010012.P10269635207109416331

namespace A010012

/-- `A008259(3*n)` -/
def P10269635207109416331.Spec : Prop :=
  ∀ n, P10269635207109416331.a n = A010012 n

end A010012

/-! ## A010012.P6309753471411901425

`∩[A008258(n), A054275(n)]`
-/

namespace A010012.P6309753471411901425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010012.P6309753471411901425

namespace A010012

/-- `∩[A008258(n), A054275(n)]` -/
def P6309753471411901425.Spec : Prop :=
  ∀ n, (P6309753471411901425.a n : ℤ) = A010012 n

end A010012

/-! ## A010012.P17134215918482404899

`∩[A008259(n), A054275(n)]`
-/

namespace A010012.P17134215918482404899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010012.P17134215918482404899

namespace A010012

/-- `∩[A008259(n), A054275(n)]` -/
def P17134215918482404899.Spec : Prop :=
  ∀ n, (P17134215918482404899.a n : ℤ) = A010012 n

end A010012

/-! ## A010012.P2651374064099044737

`∑[A106252(A101103(n+1))]`
-/

namespace A010012.P2651374064099044737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106252 (A101103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010012.P2651374064099044737

namespace A010012

/-- `∑[A106252(A101103(n+1))]` -/
def P2651374064099044737.Spec : Prop :=
  ∀ n, P2651374064099044737.a n = A010012 n

end A010012

/-! ## A010012.P6271854328455804230

`A319714(A005903(n))`
-/

namespace A010012.P6271854328455804230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319714 (A005903 n).toNat

end

end A010012.P6271854328455804230

namespace A010012

/-- `A319714(A005903(n))` -/
def P6271854328455804230.Spec : Prop :=
  ∀ n, P6271854328455804230.a n = A010012 n

end A010012

/-! ## A010012.P12131786178969313626

`A143795(A005899(n))`
-/

namespace A010012.P12131786178969313626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (A005899 n).toNat

end

end A010012.P12131786178969313626

namespace A010012

/-- `A143795(A005899(n))` -/
def P12131786178969313626.Spec : Prop :=
  ∀ n, P12131786178969313626.a n = A010012 n

end A010012

/-!
# A010013: a(0) = 1, a(n) = 23*n^2 + 2 for n>0.

The programs for A010013, the canonical program `A010013.P13932641814248036944` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010013 has offset 0).

The definition of A010013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010013.P13932641814248036944

`Δ[floor((2*n)²/(2*n+1))^3]-n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010013

/-- `Δ[floor((2*n)²/(2*n+1))^3]-n²` -/
def P13932641814248036944.Spec : Prop :=
  ∀ n, P13932641814248036944.a n = A010013 n

theorem P13932641814248036944.correct : P13932641814248036944.Spec := by
  intro n
  simp only [A010013]

end A010013

/-! ## A010013.P9243645498803405699

`abs(n²-A010014(n))`
-/

namespace A010013.P9243645498803405699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A010014 n|

end

end A010013.P9243645498803405699

namespace A010013

/-- `abs(n²-A010014(n))` -/
def P9243645498803405699.Spec : Prop :=
  ∀ n, P9243645498803405699.a n = A010013 n

end A010013

/-! ## A010013.P10233974263040118818

`abs(A010017(n)-(2*n)²)`
-/

namespace A010013.P10233974263040118818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010017 n - ((2 * n) ^ 2 : ℤ)|

end

end A010013.P10233974263040118818

namespace A010013

/-- `abs(A010017(n)-(2*n)²)` -/
def P10233974263040118818.Spec : Prop :=
  ∀ n, P10233974263040118818.a n = A010013 n

end A010013

/-! ## A010013.P3062124729370580768

`abs(A010014(n)-A000290(n))`
-/

namespace A010013.P3062124729370580768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010014 n - A000290 n|

end

end A010013.P3062124729370580768

namespace A010013

/-- `abs(A010014(n)-A000290(n))` -/
def P3062124729370580768.Spec : Prop :=
  ∀ n, P3062124729370580768.a n = A010013 n

end A010013

/-! ## A010013.P7190920558326925030

`abs(A001105(n)-A010015(n))`
-/

namespace A010013.P7190920558326925030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001105 n - A010015 n|

end

end A010013.P7190920558326925030

namespace A010013

/-- `abs(A001105(n)-A010015(n))` -/
def P7190920558326925030.Spec : Prop :=
  ∀ n, P7190920558326925030.a n = A010013 n

end A010013

/-! ## A010013.P7015256196451569337

`abs(A010018(n)-A033429(n))`
-/

namespace A010013.P7015256196451569337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010018 n - A033429 n|

end

end A010013.P7015256196451569337

namespace A010013

/-- `abs(A010018(n)-A033429(n))` -/
def P7015256196451569337.Spec : Prop :=
  ∀ n, P7015256196451569337.a n = A010013 n

end A010013

/-! ## A010013.P9641274563621399683

`(A010022(n)+A005897(n))/2`
-/

namespace A010013.P9641274563621399683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010022 n + A005897 n : ℚ) / 2

end

end A010013.P9641274563621399683

namespace A010013

/-- `(A010022(n)+A005897(n))/2` -/
def P9641274563621399683.Spec : Prop :=
  ∀ n, P9641274563621399683.a n = (A010013 n : ℚ)

end A010013

/-! ## A010013.P4563236743951605811

`(A010021(n)+A005905(n))/2`
-/

namespace A010013.P4563236743951605811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010021 n + A005905 n : ℚ) / 2

end

end A010013.P4563236743951605811

namespace A010013

/-- `(A010021(n)+A005905(n))/2` -/
def P4563236743951605811.Spec : Prop :=
  ∀ n, P4563236743951605811.a n = (A010013 n : ℚ)

end A010013

/-! ## A010013.P16721640985945501090

`(A010016(n)+A010010(n))/2`
-/

namespace A010013.P16721640985945501090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010016 n + A010010 n : ℚ) / 2

end

end A010013.P16721640985945501090

namespace A010013

/-- `(A010016(n)+A010010(n))/2` -/
def P16721640985945501090.Spec : Prop :=
  ∀ n, P16721640985945501090.a n = (A010013 n : ℚ)

end A010013

/-! ## A010013.P14492178139300822850

`(A010017(n)+A010009(n))/2`
-/

namespace A010013.P14492178139300822850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010017 n + A010009 n : ℚ) / 2

end

end A010013.P14492178139300822850

namespace A010013

/-- `(A010017(n)+A010009(n))/2` -/
def P14492178139300822850.Spec : Prop :=
  ∀ n, P14492178139300822850.a n = (A010013 n : ℚ)

end A010013

/-! ## A010013.P11609637697663165744

`abs(A005897(2*n)-n²)`
-/

namespace A010013.P11609637697663165744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005897 (2 * n) - (n ^ 2 : ℤ)|

end

end A010013.P11609637697663165744

namespace A010013

/-- `abs(A005897(2*n)-n²)` -/
def P11609637697663165744.Spec : Prop :=
  ∀ n, P11609637697663165744.a n = A010013 n

end A010013

/-! ## A010013.P13907298465817736787

`A000027(A010012(n)+n²)`
-/

namespace A010013.P13907298465817736787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A010012 n + (n ^ 2 : ℤ)).toNat

end

end A010013.P13907298465817736787

namespace A010013

/-- `A000027(A010012(n)+n²)` -/
def P13907298465817736787.Spec : Prop :=
  ∀ n, P13907298465817736787.a n = A010013 n

end A010013

/-! ## A010013.P16871583979635990533

`A000027(A016802(n)+A005919(n))`
-/

namespace A010013.P16871583979635990533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A016802 n + A005919 n).toNat

end

end A010013.P16871583979635990533

namespace A010013

/-- `A000027(A016802(n)+A005919(n))` -/
def P16871583979635990533.Spec : Prop :=
  ∀ n, P16871583979635990533.a n = A010013 n

end A010013

/-! ## A010013.P5682799779271632091

`A000027(A010015(n)-A001105(n))`
-/

namespace A010013.P5682799779271632091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A010015 n - A001105 n).toNat

end

end A010013.P5682799779271632091

namespace A010013

/-- `A000027(A010015(n)-A001105(n))` -/
def P5682799779271632091.Spec : Prop :=
  ∀ n, P5682799779271632091.a n = A010013 n

end A010013

/-! ## A010013.P8449947572406616082

`abs(A244632(n)+n+1-A002262(A027379(n)))`
-/

namespace A010013.P8449947572406616082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244632 n + ((n + 1 : ℤ) - A002262 (A027379 n).toNat)|

end

end A010013.P8449947572406616082

namespace A010013

/-- `abs(A244632(n)+n+1-A002262(A027379(n)))` -/
def P8449947572406616082.Spec : Prop :=
  ∀ n, P8449947572406616082.a n = A010013 n

end A010013

/-!
# A010014: a(0) = 1, a(n) = 24*n^2 + 2 for n>0.

The programs for A010014, the canonical program `A010014.P9318243435609865965` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010014 has offset 0).

The definition of A010014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010014.P9318243435609865965

`A005899(n)+A195322(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010014

/-- `A005899(n)+A195322(n)` -/
def P9318243435609865965.Spec : Prop :=
  ∀ n, P9318243435609865965.a n = A010014 n

theorem P9318243435609865965.correct : P9318243435609865965.Spec := by
  intro n
  simp only [A010014]

end A010014

/-! ## A010014.P606458723987291531

`Δ[floor((2*n)²/(2*n+1))^3]`
-/

namespace A010014.P606458723987291531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010014.P606458723987291531

namespace A010014

/-- `Δ[floor((2*n)²/(2*n+1))^3]` -/
def P606458723987291531.Spec : Prop :=
  ∀ n, P606458723987291531.a n = A010014 n

end A010014

/-! ## A010014.P12807588469125122685

`A010013(n)+n²`
-/

namespace A010014.P12807588469125122685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010013 n + (n ^ 2 : ℤ)

end

end A010014.P12807588469125122685

namespace A010014

/-- `A010013(n)+n²` -/
def P12807588469125122685.Spec : Prop :=
  ∀ n, P12807588469125122685.a n = A010014 n

end A010014

/-! ## A010014.P1388599138807870966

`A010015(n)-n²`
-/

namespace A010014.P1388599138807870966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010015 n - (n ^ 2 : ℤ)

end

end A010014.P1388599138807870966

namespace A010014

/-- `A010015(n)-n²` -/
def P1388599138807870966.Spec : Prop :=
  ∀ n, P1388599138807870966.a n = A010014 n

end A010014

/-! ## A010014.P14752182593526882203

`A010010(n)+(2*n)²`
-/

namespace A010014.P14752182593526882203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n + ((2 * n) ^ 2 : ℤ)

end

end A010014.P14752182593526882203

namespace A010014

/-- `A010010(n)+(2*n)²` -/
def P14752182593526882203.Spec : Prop :=
  ∀ n, P14752182593526882203.a n = A010014 n

end A010014

/-! ## A010014.P10589399171632485299

`A010012(n)+2*n²`
-/

namespace A010014.P10589399171632485299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010012 n + (2 * n ^ 2 : ℤ)

end

end A010014.P10589399171632485299

namespace A010014

/-- `A010012(n)+2*n²` -/
def P10589399171632485299.Spec : Prop :=
  ∀ n, P10589399171632485299.a n = A010014 n

end A010014

/-! ## A010014.P5508273282658816168

`A010016(n)-2*n²`
-/

namespace A010014.P5508273282658816168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010016 n - (2 * n ^ 2 : ℤ)

end

end A010014.P5508273282658816168

namespace A010014

/-- `A010016(n)-2*n²` -/
def P5508273282658816168.Spec : Prop :=
  ∀ n, P5508273282658816168.a n = A010014 n

end A010014

/-! ## A010014.P12031731712366019360

`A010018(n)-(2*n)²`
-/

namespace A010014.P12031731712366019360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010018 n - ((2 * n) ^ 2 : ℤ)

end

end A010014.P12031731712366019360

namespace A010014

/-- `A010018(n)-(2*n)²` -/
def P12031731712366019360.Spec : Prop :=
  ∀ n, P12031731712366019360.a n = A010014 n

end A010014

/-! ## A010014.P11626866683740043521

`A016802(n)+A008527(n)`
-/

namespace A010014.P11626866683740043521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n + A008527 n

end

end A010014.P11626866683740043521

namespace A010014

/-- `A016802(n)+A008527(n)` -/
def P11626866683740043521.Spec : Prop :=
  ∀ n, P11626866683740043521.a n = A010014 n

end A010014

/-! ## A010014.P14171052334869760386

`A016742(n)+A010010(n)`
-/

namespace A010014.P14171052334869760386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A010010 n

end

end A010014.P14171052334869760386

namespace A010014

/-- `A016742(n)+A010010(n)` -/
def P14171052334869760386.Spec : Prop :=
  ∀ n, P14171052334869760386.a n = A010014 n

end A010014

/-! ## A010014.P4182094427681998524

`A016766(n)+A010005(n)`
-/

namespace A010014.P4182094427681998524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A010005 n

end

end A010014.P4182094427681998524

namespace A010014

/-- `A016766(n)+A010005(n)` -/
def P4182094427681998524.Spec : Prop :=
  ∀ n, P4182094427681998524.a n = A010014 n

end A010014

/-! ## A010014.P11548588181537945339

`A033583(n)+A005905(n)`
-/

namespace A010014.P11548588181537945339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A005905 n

end

end A010014.P11548588181537945339

namespace A010014

/-- `A033583(n)+A005905(n)` -/
def P11548588181537945339.Spec : Prop :=
  ∀ n, P11548588181537945339.a n = A010014 n

end A010014

/-! ## A010014.P9504230506863017139

`A033428(n)+A010011(n)`
-/

namespace A010014.P9504230506863017139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A010011 n

end

end A010014.P9504230506863017139

namespace A010014

/-- `A033428(n)+A010011(n)` -/
def P9504230506863017139.Spec : Prop :=
  ∀ n, P9504230506863017139.a n = A010014 n

end A010014

/-! ## A010014.P7683358711562997092

`A033429(n)+A010009(n)`
-/

namespace A010014.P7683358711562997092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + A010009 n

end

end A010014.P7683358711562997092

namespace A010014

/-- `A033429(n)+A010009(n)` -/
def P7683358711562997092.Spec : Prop :=
  ∀ n, P7683358711562997092.a n = A010014 n

end A010014

/-! ## A010014.P566150571706437576

`A033581(n)+A010008(n)`
-/

namespace A010014.P566150571706437576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A010008 n

end

end A010014.P566150571706437576

namespace A010014

/-- `A033581(n)+A010008(n)` -/
def P566150571706437576.Spec : Prop :=
  ∀ n, P566150571706437576.a n = A010014 n

end A010014

/-! ## A010014.P3500538973865710665

`A033582(n)+A010007(n)`
-/

namespace A010014.P3500538973865710665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n + A010007 n

end

end A010014.P3500538973865710665

namespace A010014

/-- `A033582(n)+A010007(n)` -/
def P3500538973865710665.Spec : Prop :=
  ∀ n, P3500538973865710665.a n = A010014 n

end A010014

/-! ## A010014.P18260357176299309481

`A033584(n)+A010004(n)`
-/

namespace A010014.P18260357176299309481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A010004 n

end

end A010014.P18260357176299309481

namespace A010014

/-- `A033584(n)+A010004(n)` -/
def P18260357176299309481.Spec : Prop :=
  ∀ n, P18260357176299309481.a n = A010014 n

end A010014

/-! ## A010014.P5694923059837071722

`A033996(n)+A022145(n)`
-/

namespace A010014.P5694923059837071722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n + A022145 n

end

end A010014.P5694923059837071722

namespace A010014

/-- `A033996(n)+A022145(n)` -/
def P5694923059837071722.Spec : Prop :=
  ∀ n, P5694923059837071722.a n = A010014 n

end A010014

/-! ## A010014.P4942382309680859709

`A064762(n)+A005918(n)`
-/

namespace A010014.P4942382309680859709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064762 n + A005918 n

end

end A010014.P4942382309680859709

namespace A010014

/-- `A064762(n)+A005918(n)` -/
def P4942382309680859709.Spec : Prop :=
  ∀ n, P4942382309680859709.a n = A010014 n

end A010014

/-! ## A010014.P7415770378275390591

`A064761(n)+A010002(n)`
-/

namespace A010014.P7415770378275390591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n + A010002 n

end

end A010014.P7415770378275390591

namespace A010014

/-- `A064761(n)+A010002(n)` -/
def P7415770378275390591.Spec : Prop :=
  ∀ n, P7415770378275390591.a n = A010014 n

end A010014

/-!
# A010015: a(0) = 1, a(n) = 25*n^2 + 2 for n > 0.

The programs for A010015, the canonical program `A010015.P16015543156412613921` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010015 has offset 0).

The definition of A010015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010015.P16015543156412613921

`Δ[floor((2*n)²/(2*n+1))^3]+n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010015

/-- `Δ[floor((2*n)²/(2*n+1))^3]+n²` -/
def P16015543156412613921.Spec : Prop :=
  ∀ n, P16015543156412613921.a n = A010015 n

theorem P16015543156412613921.correct : P16015543156412613921.Spec := by
  intro n
  simp only [A010015]

end A010015

/-! ## A010015.P16533047387957569214

`or((5*n)², A174296(n))`
-/

namespace A010015.P16533047387957569214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((5 * n) ^ 2 : ℤ) (A174296 n)

end

end A010015.P16533047387957569214

namespace A010015

/-- `or((5*n)², A174296(n))` -/
def P16533047387957569214.Spec : Prop :=
  ∀ n, P16533047387957569214.a n = A010015 n

end A010015

/-! ## A010015.P12802889703226238567

`abs((4*n)²-A206399(n))`
-/

namespace A010015.P12802889703226238567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((4 * n) ^ 2 : ℤ) - A206399 n|

end

end A010015.P12802889703226238567

namespace A010015

/-- `abs((4*n)²-A206399(n))` -/
def P12802889703226238567.Spec : Prop :=
  ∀ n, P12802889703226238567.a n = A010015 n

end A010015

/-! ## A010015.P1518342815519800777

`or((5*n)², A036453(n+1))`
-/

namespace A010015.P1518342815519800777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((5 * n) ^ 2 : ℤ) (A036453 (n + 1))

end

end A010015.P1518342815519800777

namespace A010015

/-- `or((5*n)², A036453(n+1))` -/
def P1518342815519800777.Spec : Prop :=
  ∀ n, P1518342815519800777.a n = A010015 n

end A010015

/-! ## A010015.P1885238825309538384

`or((5*n)², A000032(C(2, n+2)))`
-/

namespace A010015.P1885238825309538384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((5 * n) ^ 2 : ℤ) (A000032 (Nat.choose 2 (n + 2)))

end

end A010015.P1885238825309538384

namespace A010015

/-- `or((5*n)², A000032(C(2, n+2)))` -/
def P1885238825309538384.Spec : Prop :=
  ∀ n, P1885238825309538384.a n = A010015 n

end A010015

/-! ## A010015.P18039127857160693310

`xor((5*n)², A000005(A008578(n+1)))`
-/

namespace A010015.P18039127857160693310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((5 * n) ^ 2 : ℤ) (A000005 (A008578 (n + 1)).toNat)

end

end A010015.P18039127857160693310

namespace A010015

/-- `xor((5*n)², A000005(A008578(n+1)))` -/
def P18039127857160693310.Spec : Prop :=
  ∀ n, P18039127857160693310.a n = A010015 n

end A010015

/-! ## A010015.P11374009764040635222

`(A008253(2*n)+A005901(2*n))/2`
-/

namespace A010015.P11374009764040635222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008253 (2 * n) + A005901 (2 * n) : ℚ) / 2

end

end A010015.P11374009764040635222

namespace A010015

/-- `(A008253(2*n)+A005901(2*n))/2` -/
def P11374009764040635222.Spec : Prop :=
  ∀ n, P11374009764040635222.a n = (A010015 n : ℚ)

end A010015

/-! ## A010015.P16954575839316664774

`or((5*n)², A020639(A004011(n)))`
-/

namespace A010015.P16954575839316664774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((5 * n) ^ 2 : ℤ) (A020639 (A004011 n).toNat)

end

end A010015.P16954575839316664774

namespace A010015

/-- `or((5*n)², A020639(A004011(n)))` -/
def P16954575839316664774.Spec : Prop :=
  ∀ n, P16954575839316664774.a n = A010015 n

end A010015

/-! ## A010015.P17155341025311895820

`A160842(A008706(n))`
-/

namespace A010015.P17155341025311895820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160842 (A008706 n).toNat

end

end A010015.P17155341025311895820

namespace A010015

/-- `A160842(A008706(n))` -/
def P17155341025311895820.Spec : Prop :=
  ∀ n, P17155341025311895820.a n = A010015 n

end A010015

/-! ## A010015.P11340155451479153947

`A160842(A008574(n)+n)`
-/

namespace A010015.P11340155451479153947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160842 (A008574 n + (n : ℤ)).toNat

end

end A010015.P11340155451479153947

namespace A010015

/-- `A160842(A008574(n)+n)` -/
def P11340155451479153947.Spec : Prop :=
  ∀ n, P11340155451479153947.a n = A010015 n

end A010015

/-! ## A010015.P16792798138975513896

`A010000(5*n)`
-/

namespace A010015.P16792798138975513896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (5 * n)

end

end A010015.P16792798138975513896

namespace A010015

/-- `A010000(5*n)` -/
def P16792798138975513896.Spec : Prop :=
  ∀ n, P16792798138975513896.a n = A010015 n

end A010015

/-! ## A010015.P6618467770001938780

`or((5*n)², A060594(record[A000010(n+1)]+1))`
-/

namespace A010015.P6618467770001938780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((5 * n) ^ 2 : ℤ) (A060594 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat)

end

end A010015.P6618467770001938780

namespace A010015

/-- `or((5*n)², A060594(record[A000010(n+1)]+1))` -/
def P6618467770001938780.Spec : Prop :=
  ∀ n, P6618467770001938780.a n = A010015 n

end A010015

/-! ## A010015.P18091276964974426086

`A028309(A017281(n))`
-/

namespace A010015.P18091276964974426086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028309 (A017281 n).toNat

end

end A010015.P18091276964974426086

namespace A010015

/-- `A028309(A017281(n))` -/
def P18091276964974426086.Spec : Prop :=
  ∀ n, P18091276964974426086.a n = A010015 n

end A010015

/-!
# A010016: a(0) = 1, a(n) = 26*n^2 + 2 for n>0.

The programs for A010016, the canonical program `A010016.P12965143676553022093` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010016 has offset 0).

The definition of A010016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010016.P8702625715217235269

`round(3/acot(3*n)²)-n²`
-/

namespace A010016.P8702625715217235269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2) - (n ^ 2 : ℤ)

end

end A010016.P8702625715217235269

namespace A010016

/-- `round(3/acot(3*n)²)-n²` -/
def P8702625715217235269.Spec : Prop :=
  ∀ n, P8702625715217235269.a n = A010016 n

end A010016

/-! ## A010016.P12965143676553022093

`n²+Δ[floor((2*n)²/(2*n+1))^3]+n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010016

/-- `n²+Δ[floor((2*n)²/(2*n+1))^3]+n²` -/
def P12965143676553022093.Spec : Prop :=
  ∀ n, P12965143676553022093.a n = A010016 n

theorem P12965143676553022093.correct : P12965143676553022093.Spec := by
  intro n
  simp only [A010016]

end A010016

/-! ## A010016.P117296524199380446

`abs(15*n²-A206399(n))`
-/

namespace A010016.P117296524199380446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(15 * n ^ 2 : ℤ) - A206399 n|

end

end A010016.P117296524199380446

namespace A010016

/-- `abs(15*n²-A206399(n))` -/
def P117296524199380446.Spec : Prop :=
  ∀ n, P117296524199380446.a n = A010016 n

end A010016

/-! ## A010016.P15620306776245612640

`abs(A008527(2*n)-A033581(n))`
-/

namespace A010016.P15620306776245612640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008527 (2 * n) - A033581 n|

end

end A010016.P15620306776245612640

namespace A010016

/-- `abs(A008527(2*n)-A033581(n))` -/
def P15620306776245612640.Spec : Prop :=
  ∀ n, P15620306776245612640.a n = A010016 n

end A010016

/-! ## A010016.P2474228288783433693

`A299289(2*n)`
-/

namespace A010016.P2474228288783433693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 (2 * n)

end

end A010016.P2474228288783433693

namespace A010016

/-- `A299289(2*n)` -/
def P2474228288783433693.Spec : Prop :=
  ∀ n, P2474228288783433693.a n = A010016 n

end A010016

/-! ## A010016.P4138798789407358349

`record[A299289(n%or(1, n))]`
-/

namespace A010016.P4138798789407358349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 (n % Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010016.P4138798789407358349

namespace A010016

/-- `record[A299289(n%or(1, n))]` -/
def P4138798789407358349.Spec : Prop :=
  ∀ n, P4138798789407358349.a n = A010016 n

end A010016

/-! ## A010016.P15983523975934153637

`ceil(cosh(log(A010004(2*n))))`
-/

namespace A010016.P15983523975934153637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A010004 (2 * n) : ℝ))⌉

end

end A010016.P15983523975934153637

namespace A010016

/-- `ceil(cosh(log(A010004(2*n))))` -/
def P15983523975934153637.Spec : Prop :=
  ∀ n, P15983523975934153637.a n = A010016 n

end A010016

/-! ## A010016.P11414840497528827671

`or(A000007(n), A299289(A005843(n)))`
-/

namespace A010016.P11414840497528827671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299289 (A005843 n).toNat)

end

end A010016.P11414840497528827671

namespace A010016

/-- `or(A000007(n), A299289(A005843(n)))` -/
def P11414840497528827671.Spec : Prop :=
  ∀ n, P11414840497528827671.a n = A010016 n

end A010016

/-! ## A010016.P6293573568275455974

`A358243(A005899(n))`
-/

namespace A010016.P6293573568275455974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358243 (A005899 n).toNat

end

end A010016.P6293573568275455974

namespace A010016

/-- `A358243(A005899(n))` -/
def P6293573568275455974.Spec : Prop :=
  ∀ n, P6293573568275455974.a n = A010016 n

end A010016

/-!
# A010017: a(0) = 1, a(n) = 27*n^2 + 2 for n>0.

The programs for A010017, the canonical program `A010017.P4279936489675537084` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010017 has offset 0).

The definition of A010017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010017.P4279936489675537084

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=29, a(2)=110, a(3)=245`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010017

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4279936489675537084.Spec : Prop :=
  ∀ n, P4279936489675537084.a n = A010017 n

theorem P4279936489675537084.correct : P4279936489675537084.Spec := by
  intro n
  simp only [A010017]

end A010017

/-! ## A010017.P12649286341599251700

`round(3/acot(3*n)²)`
-/

namespace A010017.P12649286341599251700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2)

end

end A010017.P12649286341599251700

namespace A010017

/-- `round(3/acot(3*n)²)` -/
def P12649286341599251700.Spec : Prop :=
  ∀ n, P12649286341599251700.a n = A010017 n

end A010017

/-! ## A010017.P14141318073406859746

`ceil(abs(sin(n)))+27*n²+1`
-/

namespace A010017.P14141318073406859746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ + (27 * n ^ 2 + 1 : ℤ)

end

end A010017.P14141318073406859746

namespace A010017

/-- `ceil(abs(sin(n)))+27*n²+1` -/
def P14141318073406859746.Spec : Prop :=
  ∀ n, P14141318073406859746.a n = A010017 n

end A010017

/-! ## A010017.P18226482590900830711

`12*n²+round((3*n*10*n-1)/2)+2`
-/

namespace A010017.P18226482590900830711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 : ℤ) + (SequenceMachineLib.roundAway (((3 * n * (10 * n) : ℤ) - 1 : ℚ) / 2) + 2)

end

end A010017.P18226482590900830711

namespace A010017

/-- `12*n²+round((3*n*10*n-1)/2)+2` -/
def P18226482590900830711.Spec : Prop :=
  ∀ n, P18226482590900830711.a n = A010017 n

end A010017

/-! ## A010017.P4849161461155583455

`abs(4-3*A010002(n))`
-/

namespace A010017.P4849161461155583455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - 3 * A010002 n|

end

end A010017.P4849161461155583455

namespace A010017

/-- `abs(4-3*A010002(n))` -/
def P4849161461155583455.Spec : Prop :=
  ∀ n, P4849161461155583455.a n = A010017 n

end A010017

/-! ## A010017.P7640087832697696588

`abs(5*n²-A010021(n))`
-/

namespace A010017.P7640087832697696588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * n ^ 2 : ℤ) - A010021 n|

end

end A010017.P7640087832697696588

namespace A010017

/-- `abs(5*n²-A010021(n))` -/
def P7640087832697696588.Spec : Prop :=
  ∀ n, P7640087832697696588.a n = A010017 n

end A010017

/-! ## A010017.P4332110101605544719

`abs(14*n²-A206399(n))`
-/

namespace A010017.P4332110101605544719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(14 * n ^ 2 : ℤ) - A206399 n|

end

end A010017.P4332110101605544719

namespace A010017

/-- `abs(14*n²-A206399(n))` -/
def P4332110101605544719.Spec : Prop :=
  ∀ n, P4332110101605544719.a n = A010017 n

end A010017

/-! ## A010017.P9856157621216529334

`A005918(3*n)`
-/

namespace A010017.P9856157621216529334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (3 * n)

end

end A010017.P9856157621216529334

namespace A010017

/-- `A005918(3*n)` -/
def P9856157621216529334.Spec : Prop :=
  ∀ n, P9856157621216529334.a n = A010017 n

end A010017

/-! ## A010017.P15325802309389784500

`A005918(A008585(n))%A010018(n+3)`
-/

namespace A010017.P15325802309389784500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005918 (A008585 n).toNat) (A010018 (n + 3))

end

end A010017.P15325802309389784500

namespace A010017

/-- `A005918(A008585(n))%A010018(n+3)` -/
def P15325802309389784500.Spec : Prop :=
  ∀ n, P15325802309389784500.a n = A010017 n

end A010017

/-!
# A010018: a(0) = 1, a(n) = 28*n^2 + 2 for n>0.

The programs for A010018, the canonical program `A010018.P15175630316119601582` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010018 has offset 0).

The definition of A010018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010018.P5161279344160083074

`round(3/acot(3*n)²)+n²`
-/

namespace A010018.P5161279344160083074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2) + (n ^ 2 : ℤ)

end

end A010018.P5161279344160083074

namespace A010018

/-- `round(3/acot(3*n)²)+n²` -/
def P5161279344160083074.Spec : Prop :=
  ∀ n, P5161279344160083074.a n = A010018 n

end A010018

/-! ## A010018.P15175630316119601582

`3*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010018

/-- `3*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²` -/
def P15175630316119601582.Spec : Prop :=
  ∀ n, P15175630316119601582.a n = A010018 n

theorem P15175630316119601582.correct : P15175630316119601582.Spec := by
  intro n
  simp only [A010018]

end A010018

/-! ## A010018.P17308905407380282142

`ceil(sqrt(A158556(n)²+n))`
-/

namespace A010018.P17308905407380282142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158556 n ^ 2 + (n : ℤ) : ℝ)⌉

end

end A010018.P17308905407380282142

namespace A010018

/-- `ceil(sqrt(A158556(n)²+n))` -/
def P17308905407380282142.Spec : Prop :=
  ∀ n, P17308905407380282142.a n = A010018 n

end A010018

/-! ## A010018.P17587859688725397640

`A005919(2*n)`
-/

namespace A010018.P17587859688725397640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 (2 * n)

end

end A010018.P17587859688725397640

namespace A010018

/-- `A005919(2*n)` -/
def P17587859688725397640.Spec : Prop :=
  ∀ n, P17587859688725397640.a n = A010018 n

end A010018

/-!
# A010019: a(0) = 1, a(n) = 29*n^2 + 2 for n>0.

The programs for A010019, the canonical program `A010019.P8190451037519876388` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010019 has offset 0).

The definition of A010019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010019.P2751025296551014042

`abs(n²-(ceil(abs(sin(n)))+30*n²+1))`
-/

namespace A010019.P2751025296551014042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (⌈|Real.sin (n : ℝ)|⌉ + (30 * n ^ 2 + 1 : ℤ)))|

end

end A010019.P2751025296551014042

namespace A010019

/-- `abs(n²-(ceil(abs(sin(n)))+30*n²+1))` -/
def P2751025296551014042.Spec : Prop :=
  ∀ n, P2751025296551014042.a n = A010019 n

end A010019

/-! ## A010019.P3243958765859657616

`abs(3*n²+round(3/acot(3*n)²)-n²)`
-/

namespace A010019.P3243958765859657616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n ^ 2 : ℤ) + (SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (3 * n : ℝ) ^ 2) - (n ^ 2 : ℤ))|

end

end A010019.P3243958765859657616

namespace A010019

/-- `abs(3*n²+round(3/acot(3*n)²)-n²)` -/
def P3243958765859657616.Spec : Prop :=
  ∀ n, P3243958765859657616.a n = A010019 n

end A010019

/-! ## A010019.P8190451037519876388

`18*n²+n²+round((2*n*10*n-1)/2)+2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010019

/-- `18*n²+n²+round((2*n*10*n-1)/2)+2` -/
def P8190451037519876388.Spec : Prop :=
  ∀ n, P8190451037519876388.a n = A010019 n

theorem P8190451037519876388.correct : P8190451037519876388.Spec := by
  intro n
  simp only [A010019]

end A010019

/-! ## A010019.P9819048599383931740

`abs(3*n²-A010021(n))`
-/

namespace A010019.P9819048599383931740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n ^ 2 : ℤ) - A010021 n|

end

end A010019.P9819048599383931740

namespace A010019

/-- `abs(3*n²-A010021(n))` -/
def P9819048599383931740.Spec : Prop :=
  ∀ n, P9819048599383931740.a n = A010019 n

end A010019

/-! ## A010019.P15477640746752227111

`(A010020(n)+A010017(n))/2`
-/

namespace A010019.P15477640746752227111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010020 n + A010017 n : ℚ) / 2

end

end A010019.P15477640746752227111

namespace A010019

/-- `(A010020(n)+A010017(n))/2` -/
def P15477640746752227111.Spec : Prop :=
  ∀ n, P15477640746752227111.a n = (A010019 n : ℚ)

end A010019

/-!
# A010020: a(0) = 1, a(n) = 31*n^2 + 2 for n>0.

The programs for A010020, the canonical program `A010020.P14103844632964927194` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010020 has offset 0).

The definition of A010020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010020.P14103844632964927194

`Δ[C(abs(1-4*n), 3)]-n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010020

/-- `Δ[C(abs(1-4*n), 3)]-n²` -/
def P14103844632964927194.Spec : Prop :=
  ∀ n, P14103844632964927194.a n = A010020 n

theorem P14103844632964927194.correct : P14103844632964927194.Spec := by
  intro n
  simp only [A010020]

end A010020

/-! ## A010020.P7419447087947922891

`6*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²`
-/

namespace A010020.P7419447087947922891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) + (f1 (n + 1) - f1 n + (n ^ 2 : ℤ))

end

end A010020.P7419447087947922891

namespace A010020

/-- `6*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²` -/
def P7419447087947922891.Spec : Prop :=
  ∀ n, P7419447087947922891.a n = A010020 n

end A010020

/-! ## A010020.P14767034292326155957

`abs(record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]-(3*n)²)`
-/

namespace A010020.P14767034292326155957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((2 * n * (10 * n) : ℤ) - 1 : ℚ) / 2) + 2) * (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((3 * n) ^ 2 : ℤ)|

end

end A010020.P14767034292326155957

namespace A010020

/-- `abs(record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]-(3*n)²)` -/
def P14767034292326155957.Spec : Prop :=
  ∀ n, P14767034292326155957.a n = A010020 n

end A010020

/-! ## A010020.P7557972308105118346

`abs(10*n²-A206399(n))`
-/

namespace A010020.P7557972308105118346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n ^ 2 : ℤ) - A206399 n|

end

end A010020.P7557972308105118346

namespace A010020

/-- `abs(10*n²-A206399(n))` -/
def P7557972308105118346.Spec : Prop :=
  ∀ n, P7557972308105118346.a n = A010020 n

end A010020

/-! ## A010020.P14654185550720966914

`A299287(2*n)`
-/

namespace A010020.P14654185550720966914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299287 (2 * n)

end

end A010020.P14654185550720966914

namespace A010020

/-- `A299287(2*n)` -/
def P14654185550720966914.Spec : Prop :=
  ∀ n, P14654185550720966914.a n = A010020 n

end A010020

/-! ## A010020.P10927748811520535979

`and((-1)^n-2, A299287(A005843(n)))`
-/

namespace A010020.P10927748811520535979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n - 2) (A299287 (A005843 n).toNat)

end

end A010020.P10927748811520535979

namespace A010020

/-- `and((-1)^n-2, A299287(A005843(n)))` -/
def P10927748811520535979.Spec : Prop :=
  ∀ n, P10927748811520535979.a n = A010020 n

end A010020

/-! ## A010020.P12255454419099969147

`A299287(A005843(n))%A165016(n+5)`
-/

namespace A010020.P12255454419099969147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299287 (A005843 n).toNat) (A165016 (n + 5))

end

end A010020.P12255454419099969147

namespace A010020

/-- `A299287(A005843(n))%A165016(n+5)` -/
def P12255454419099969147.Spec : Prop :=
  ∀ n, P12255454419099969147.a n = A010020 n

end A010020

/-! ## A010020.P16071443832142184150

`record[A299287(n-A051176(n))]`
-/

namespace A010020.P16071443832142184150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299287 ((n : ℤ) - A051176 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010020.P16071443832142184150

namespace A010020

/-- `record[A299287(n-A051176(n))]` -/
def P16071443832142184150.Spec : Prop :=
  ∀ n, P16071443832142184150.a n = A010020 n

end A010020

/-! ## A010020.P13738640360780585840

`abs(A005899(3*n)-A033429(n))`
-/

namespace A010020.P13738640360780585840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005899 (3 * n) - A033429 n|

end

end A010020.P13738640360780585840

namespace A010020

/-- `abs(A005899(3*n)-A033429(n))` -/
def P13738640360780585840.Spec : Prop :=
  ∀ n, P13738640360780585840.a n = A010020 n

end A010020

/-! ## A010020.P17970944101261941330

`A000027(A016850(n)+A005897(n))`
-/

namespace A010020.P17970944101261941330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A016850 n + A005897 n).toNat

end

end A010020.P17970944101261941330

namespace A010020

/-- `A000027(A016850(n)+A005897(n))` -/
def P17970944101261941330.Spec : Prop :=
  ∀ n, P17970944101261941330.a n = A010020 n

end A010020

/-! ## A010020.P2012024938226706737

`A000027(A033581(n)+A010000(5*n))`
-/

namespace A010020.P2012024938226706737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033581 n + A010000 (5 * n)).toNat

end

end A010020.P2012024938226706737

namespace A010020

/-- `A000027(A033581(n)+A010000(5*n))` -/
def P2012024938226706737.Spec : Prop :=
  ∀ n, P2012024938226706737.a n = A010020 n

end A010020

/-! ## A010020.P5609858604345119949

`A000027(A033581(n)+or((5*n)², A036453(n+1)))`
-/

namespace A010020.P5609858604345119949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033581 n + Int.lor ((5 * n) ^ 2 : ℤ) (A036453 (n + 1))).toNat

end

end A010020.P5609858604345119949

namespace A010020

/-- `A000027(A033581(n)+or((5*n)², A036453(n+1)))` -/
def P5609858604345119949.Spec : Prop :=
  ∀ n, P5609858604345119949.a n = A010020 n

end A010020

/-!
# A010021: a(0) = 1, a(n) = 32*n^2 + 2 for n > 0.

The programs for A010021, the canonical program `A010021.P18321663100364544978` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010021 has offset 0).

The definition of A010021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010021.P18321663100364544978

`A008527(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010021

/-- `A008527(2*n)` -/
def P18321663100364544978.Spec : Prop :=
  ∀ n, P18321663100364544978.a n = A010021 n

theorem P18321663100364544978.correct : P18321663100364544978.Spec := by
  intro n
  simp only [A010021]

end A010021

/-! ## A010021.P12435522904033375601

`A005893(4*n)`
-/

namespace A010021.P12435522904033375601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (4 * n)

end

end A010021.P12435522904033375601

namespace A010021

/-- `A005893(4*n)` -/
def P12435522904033375601.Spec : Prop :=
  ∀ n, P12435522904033375601.a n = A010021 n

end A010021

/-! ## A010021.P34681523597240345

`Δ[C(abs(1-4*n), 3)]`
-/

namespace A010021.P34681523597240345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (4 * n : ℤ)|.toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A010021.P34681523597240345

namespace A010021

/-- `Δ[C(abs(1-4*n), 3)]` -/
def P34681523597240345.Spec : Prop :=
  ∀ n, P34681523597240345.a n = A010021 n

end A010021

/-! ## A010021.P14305084135792213159

`11*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²`
-/

namespace A010021.P14305084135792213159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n ^ 2 : ℤ) + (f1 (n + 1) - f1 n + (n ^ 2 : ℤ) - ((2 * n) ^ 2 : ℤ))

end

end A010021.P14305084135792213159

namespace A010021

/-- `11*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²` -/
def P14305084135792213159.Spec : Prop :=
  ∀ n, P14305084135792213159.a n = A010021 n

end A010021

/-! ## A010021.P8639874253397241056

`abs((3*n)²-A206399(n))`
-/

namespace A010021.P8639874253397241056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((3 * n) ^ 2 : ℤ) - A206399 n|

end

end A010021.P8639874253397241056

namespace A010021

/-- `abs((3*n)²-A206399(n))` -/
def P8639874253397241056.Spec : Prop :=
  ∀ n, P8639874253397241056.a n = A010021 n

end A010021

/-! ## A010021.P3665957486803010194

`lcm((4*n)²+1, A157532(n+1)-1)`
-/

namespace A010021.P3665957486803010194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((4 * n) ^ 2 + 1 : ℤ) (A157532 (n + 1) - 1)

end

end A010021.P3665957486803010194

namespace A010021

/-- `lcm((4*n)²+1, A157532(n+1)-1)` -/
def P3665957486803010194.Spec : Prop :=
  ∀ n, (P3665957486803010194.a n : ℤ) = A010021 n

end A010021

/-! ## A010021.P4446947611297749577

`Δ[A000447(A004273(n))]`
-/

namespace A010021.P4446947611297749577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010021.P4446947611297749577

namespace A010021

/-- `Δ[A000447(A004273(n))]` -/
def P4446947611297749577.Spec : Prop :=
  ∀ n, P4446947611297749577.a n = A010021 n

end A010021

/-! ## A010021.P6951864723619176775

`A117216(2*n)/A022144(n)`
-/

namespace A010021.P6951864723619176775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117216 (2 * n) : ℚ) / (A022144 n : ℚ)

end

end A010021.P6951864723619176775

namespace A010021

/-- `A117216(2*n)/A022144(n)` -/
def P6951864723619176775.Spec : Prop :=
  ∀ n, P6951864723619176775.a n = (A010021 n : ℚ)

end A010021

/-! ## A010021.P865063984103540659

`A049486(3*n+n+1)`
-/

namespace A010021.P865063984103540659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049486 (3 * n + (n + 1))

end

end A010021.P865063984103540659

namespace A010021

/-- `A049486(3*n+n+1)` -/
def P865063984103540659.Spec : Prop :=
  ∀ n, P865063984103540659.a n = A010021 n

end A010021

/-! ## A010021.P9367190654881126936

`A105343(8*n)`
-/

namespace A010021.P9367190654881126936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 (8 * n)

end

end A010021.P9367190654881126936

namespace A010021

/-- `A105343(8*n)` -/
def P9367190654881126936.Spec : Prop :=
  ∀ n, P9367190654881126936.a n = A010021 n

end A010021

/-! ## A010021.P7955834286009788212

`A236283(A022144(n))`
-/

namespace A010021.P7955834286009788212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (A022144 n).toNat

end

end A010021.P7955834286009788212

namespace A010021

/-- `A236283(A022144(n))` -/
def P7955834286009788212.Spec : Prop :=
  ∀ n, P7955834286009788212.a n = A010021 n

end A010021

/-! ## A010021.P5858650704397065210

`A092534(A017077(n))`
-/

namespace A010021.P5858650704397065210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092534 (A017077 n).toNat

end

end A010021.P5858650704397065210

namespace A010021

/-- `A092534(A017077(n))` -/
def P5858650704397065210.Spec : Prop :=
  ∀ n, P5858650704397065210.a n = A010021 n

end A010021

/-!
# A010022: a(0) = 1, a(n) = 40*n^2 + 2 for n>0.

The programs for A010022, the canonical program `A010022.P6815587963491131346` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010022 has offset 0).

The definition of A010022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010022.P6815587963491131346

`A008253(4*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010022

/-- `A008253(4*n)` -/
def P6815587963491131346.Spec : Prop :=
  ∀ n, P6815587963491131346.a n = A010022 n

theorem P6815587963491131346.correct : P6815587963491131346.Spec := by
  intro n
  simp only [A010022]

end A010022

/-! ## A010022.P13007322511354116172

`record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]`
-/

namespace A010022.P13007322511354116172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((2 * n * (10 * n) : ℤ) - 1 : ℚ) / 2) + 2) * (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010022.P13007322511354116172

namespace A010022

/-- `record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]` -/
def P13007322511354116172.Spec : Prop :=
  ∀ n, P13007322511354116172.a n = A010022 n

end A010022

/-! ## A010022.P6681684649239047385

`A206399(n)-n²`
-/

namespace A010022.P6681684649239047385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206399 n - (n ^ 2 : ℤ)

end

end A010022.P6681684649239047385

namespace A010022

/-- `A206399(n)-n²` -/
def P6681684649239047385.Spec : Prop :=
  ∀ n, P6681684649239047385.a n = A010022 n

end A010022

/-! ## A010022.P1233637005811114455

`A010020(n)+(3*n)²`
-/

namespace A010022.P1233637005811114455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010020 n + ((3 * n) ^ 2 : ℤ)

end

end A010022.P1233637005811114455

namespace A010022

/-- `A010020(n)+(3*n)²` -/
def P1233637005811114455.Spec : Prop :=
  ∀ n, P1233637005811114455.a n = A010022 n

end A010022

/-! ## A010022.P16774141830151866804

`A010023(n)-2*n²`
-/

namespace A010022.P16774141830151866804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010023 n - (2 * n ^ 2 : ℤ)

end

end A010022.P16774141830151866804

namespace A010022

/-- `A010023(n)-2*n²` -/
def P16774141830151866804.Spec : Prop :=
  ∀ n, P16774141830151866804.a n = A010022 n

end A010022

/-! ## A010022.P7936802689876907237

`A010014(n)+(4*n)²`
-/

namespace A010022.P7936802689876907237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010014 n + ((4 * n) ^ 2 : ℤ)

end

end A010022.P7936802689876907237

namespace A010022

/-- `A010014(n)+(4*n)²` -/
def P7936802689876907237.Spec : Prop :=
  ∀ n, P7936802689876907237.a n = A010022 n

end A010022

/-! ## A010022.P6568017654374634054

`A010021(n)+8*n²`
-/

namespace A010022.P6568017654374634054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010021 n + (8 * n ^ 2 : ℤ)

end

end A010022.P6568017654374634054

namespace A010022

/-- `A010021(n)+8*n²` -/
def P6568017654374634054.Spec : Prop :=
  ∀ n, P6568017654374634054.a n = A010022 n

end A010022

/-! ## A010022.P2063451586076858030

`ceil(sqrt(A158602(n)²+n))`
-/

namespace A010022.P2063451586076858030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A158602 n ^ 2 + (n : ℤ) : ℝ)⌉

end

end A010022.P2063451586076858030

namespace A010022

/-- `ceil(sqrt(A158602(n)²+n))` -/
def P2063451586076858030.Spec : Prop :=
  ∀ n, P2063451586076858030.a n = A010022 n

end A010022

/-! ## A010022.P2196083865449610968

`A016910(n)+A005899(n)`
-/

namespace A010022.P2196083865449610968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 n + A005899 n

end

end A010022.P2196083865449610968

namespace A010022

/-- `A016910(n)+A005899(n)` -/
def P2196083865449610968.Spec : Prop :=
  ∀ n, P2196083865449610968.a n = A010022 n

end A010022

/-! ## A010022.P8660135971758944988

`A016766(n)+A010020(n)`
-/

namespace A010022.P8660135971758944988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n + A010020 n

end

end A010022.P8660135971758944988

namespace A010022

/-- `A016766(n)+A010020(n)` -/
def P8660135971758944988.Spec : Prop :=
  ∀ n, P8660135971758944988.a n = A010022 n

end A010022

/-! ## A010022.P12993217870063753925

`A016802(n)+A010014(n)`
-/

namespace A010022.P12993217870063753925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n + A010014 n

end

end A010022.P12993217870063753925

namespace A010022

/-- `A016802(n)+A010014(n)` -/
def P12993217870063753925.Spec : Prop :=
  ∀ n, P12993217870063753925.a n = A010022 n

end A010022

/-! ## A010022.P3213908430465573835

`A016850(n)+A010005(n)`
-/

namespace A010022.P3213908430465573835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016850 n + A010005 n

end

end A010022.P3213908430465573835

namespace A010022

/-- `A016850(n)+A010005(n)` -/
def P3213908430465573835.Spec : Prop :=
  ∀ n, P3213908430465573835.a n = A010022 n

end A010022

/-! ## A010022.P14244788693163423119

`A033583(n)+A005903(n)`
-/

namespace A010022.P14244788693163423119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A005903 n

end

end A010022.P14244788693163423119

namespace A010022

/-- `A033583(n)+A005903(n)` -/
def P14244788693163423119.Spec : Prop :=
  ∀ n, P14244788693163423119.a n = A010022 n

end A010022

/-! ## A010022.P6532190789887130163

`A033584(n)+A010019(n)`
-/

namespace A010022.P6532190789887130163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 n + A010019 n

end

end A010022.P6532190789887130163

namespace A010022

/-- `A033584(n)+A010019(n)` -/
def P6532190789887130163.Spec : Prop :=
  ∀ n, P6532190789887130163.a n = A010022 n

end A010022

/-! ## A010022.P5460870580758757877

`A064763(n)+A005914(n)`
-/

namespace A010022.P5460870580758757877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064763 n + A005914 n

end

end A010022.P5460870580758757877

namespace A010022

/-- `A064763(n)+A005914(n)` -/
def P5460870580758757877.Spec : Prop :=
  ∀ n, P5460870580758757877.a n = A010022 n

end A010022

/-! ## A010022.P18307248382626546225

`A064761(n)+A010015(n)`
-/

namespace A010022.P18307248382626546225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064761 n + A010015 n

end

end A010022.P18307248382626546225

namespace A010022

/-- `A064761(n)+A010015(n)` -/
def P18307248382626546225.Spec : Prop :=
  ∀ n, P18307248382626546225.a n = A010022 n

end A010022

/-! ## A010022.P9403078334708033080

`A064762(n)+A010009(n)`
-/

namespace A010022.P9403078334708033080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064762 n + A010009 n

end

end A010022.P9403078334708033080

namespace A010022

/-- `A064762(n)+A010009(n)` -/
def P9403078334708033080.Spec : Prop :=
  ∀ n, P9403078334708033080.a n = A010022 n

end A010022

/-! ## A010022.P14762878021320352342

`A135453(n)+A010018(n)`
-/

namespace A010022.P14762878021320352342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n + A010018 n

end

end A010022.P14762878021320352342

namespace A010022

/-- `A135453(n)+A010018(n)` -/
def P14762878021320352342.Spec : Prop :=
  ∀ n, P14762878021320352342.a n = A010022 n

end A010022

/-! ## A010022.P4211217372030994115

`A139098(n)+A010021(n)`
-/

namespace A010022.P4211217372030994115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 n + A010021 n

end

end A010022.P4211217372030994115

namespace A010022

/-- `A139098(n)+A010021(n)` -/
def P4211217372030994115.Spec : Prop :=
  ∀ n, P4211217372030994115.a n = A010022 n

end A010022

/-! ## A010022.P13812592422134273984

`A144555(n)+A010016(n)`
-/

namespace A010022.P13812592422134273984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n + A010016 n

end

end A010022.P13812592422134273984

namespace A010022

/-- `A144555(n)+A010016(n)` -/
def P13812592422134273984.Spec : Prop :=
  ∀ n, P13812592422134273984.a n = A010022 n

end A010022

/-!
# A010023: a(0) = 1, a(n) = 42*n^2 + 2 for n>0.

The programs for A010023, the canonical program `A010023.P8476347428738836522` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010023 has offset 0).

The definition of A010023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010023.P8476347428738836522

`record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]+2*n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010023

/-- `record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]+2*n²` -/
def P8476347428738836522.Spec : Prop :=
  ∀ n, P8476347428738836522.a n = A010023 n

theorem P8476347428738836522.correct : P8476347428738836522.Spec := by
  intro n
  simp only [A010023]

end A010023

/-! ## A010023.P11659942785687012734

`21*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²`
-/

namespace A010023.P11659942785687012734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * n ^ 2 : ℤ) + (f1 (n + 1) - f1 n + (n ^ 2 : ℤ) - ((2 * n) ^ 2 : ℤ))

end

end A010023.P11659942785687012734

namespace A010023

/-- `21*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²` -/
def P11659942785687012734.Spec : Prop :=
  ∀ n, P11659942785687012734.a n = A010023 n

end A010023

/-! ## A010023.P8670531784724416755

`abs(2*A005897(2*n)-A005897(n))`
-/

namespace A010023.P8670531784724416755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A005897 (2 * n) - A005897 n|

end

end A010023.P8670531784724416755

namespace A010023

/-- `abs(2*A005897(2*n)-A005897(n))` -/
def P8670531784724416755.Spec : Prop :=
  ∀ n, P8670531784724416755.a n = A010023 n

end A010023

/-! ## A010023.P16963594913139137933

`A007899(2*n)`
-/

namespace A010023.P16963594913139137933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 (2 * n)

end

end A010023.P16963594913139137933

namespace A010023

/-- `A007899(2*n)` -/
def P16963594913139137933.Spec : Prop :=
  ∀ n, P16963594913139137933.a n = A010023 n

end A010023

/-! ## A010023.P14957203956816529339

`xor(A000007(n+4), A007899(A005843(n)))`
-/

namespace A010023.P14957203956816529339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 4)) (A007899 (A005843 n).toNat)

end

end A010023.P14957203956816529339

namespace A010023

/-- `xor(A000007(n+4), A007899(A005843(n)))` -/
def P14957203956816529339.Spec : Prop :=
  ∀ n, P14957203956816529339.a n = A010023 n

end A010023

/-! ## A010023.P14327677813907874987

`A008264(4*n)`
-/

namespace A010023.P14327677813907874987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008264 (4 * n)

end

end A010023.P14327677813907874987

namespace A010023

/-- `A008264(4*n)` -/
def P14327677813907874987.Spec : Prop :=
  ∀ n, P14327677813907874987.a n = A010023 n

end A010023

/-! ## A010023.P15399103047664661887

`A000027(A206399(n)+n²)`
-/

namespace A010023.P15399103047664661887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A206399 n + (n ^ 2 : ℤ)).toNat

end

end A010023.P15399103047664661887

namespace A010023

/-- `A000027(A206399(n)+n²)` -/
def P15399103047664661887.Spec : Prop :=
  ∀ n, P15399103047664661887.a n = A010023 n

end A010023

/-!
# A010025: Crystal ball sequence for squashed {D_5}^* lattice, perhaps the smallest example of a "non-superficial" lattice.

The programs for A010025, the canonical program `A010025.P18095770870607995152` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010025 has offset 0).

The definition of A010025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010025.P18095770870607995152

`n*(n*(n*(n*(8*n+15)+30)+45)+46)/12+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010025

/-- `n*(n*(n*(n*(8*n+15)+30)+45)+46)/12+1` -/
def P18095770870607995152.Spec : Prop :=
  ∀ n, P18095770870607995152.a n = (A010025 n : ℚ)

end A010025

/-! ## A010025.P16299810594178579692

`∑[A010024(n)]`
-/

namespace A010025.P16299810594178579692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010025.P16299810594178579692

namespace A010025

/-- `∑[A010024(n)]` -/
def P16299810594178579692.Spec : Prop :=
  ∀ n, P16299810594178579692.a n = A010025 n

end A010025

/-!
# A010026: Triangle read by rows: number of permutations of 1..n by length of longest run.

The programs for A010026, there is no canonical definition to state claims against.
-/

/-! ## A010026.P715050809380972953

`A211318(A038722(comp[∑[n]]))`
-/

namespace A010026.P715050809380972953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A010026.P715050809380972953

/-! ## A010026.P16695350930307714614

`A211318(A099375(n)+2+n)`
-/

namespace A010026.P16695350930307714614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A099375 n + 2 + (n : ℤ)).toNat

end

end A010026.P16695350930307714614

/-! ## A010026.P9725630214805781306

`A211318(A038722(n+1)+A003057(n+2))`
-/

namespace A010026.P9725630214805781306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A038722 (n + 1) + A003057 (n + 2)).toNat

end

end A010026.P9725630214805781306

/-! ## A010026.P2462583992381287372

`A211318(A003057(n+2)+A061579(n)+1)`
-/

namespace A010026.P2462583992381287372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A003057 (n + 2) + (A061579 n + 1)).toNat

end

end A010026.P2462583992381287372

/-! ## A010026.P12730459178973584816

`A121998(A091515(3*(n+1))-A056115(n))`
-/

namespace A010026.P12730459178973584816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121998 (A091515 (3 * (n + 1)) - A056115 n).toNat

end

end A010026.P12730459178973584816

/-!
# A010027: Triangle read by rows: T(n,k) is the number of permutations of [n] having k consecutive ascending pairs (0 <= k <= n-1).

The programs for A010027, the canonical program `A010027.P2698919876476170280` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010027 has offset 1).

The definition of A010027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2551 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010027.P2698919876476170280

`A000255(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A010027

/-- `A000255(A002262(n))*A007318(n)` -/
def P2698919876476170280.Spec : Prop :=
  ∀ n, P2698919876476170280.a n = A010027 (n + 1)

theorem P2698919876476170280.correct : P2698919876476170280.Spec := by
  intro n
  simp only [A010027, Nat.add_sub_cancel]

end A010027

/-! ## A010027.P7136882413622433473

`A123513(A038722(n+1))`
-/

namespace A010027.P7136882413622433473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A038722 (n + 1)).toNat

end

end A010027.P7136882413622433473

namespace A010027

/-- `A123513(A038722(n+1))` -/
def P7136882413622433473.Spec : Prop :=
  ∀ n, P7136882413622433473.a n = A010027 (n + 1)

end A010027

/-! ## A010027.P14507576085939336230

`A123513(A061579(n)+1)`
-/

namespace A010027.P14507576085939336230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A061579 n + 1).toNat

end

end A010027.P14507576085939336230

namespace A010027

/-- `A123513(A061579(n)+1)` -/
def P14507576085939336230.Spec : Prop :=
  ∀ n, P14507576085939336230.a n = A010027 (n + 1)

end A010027

/-! ## A010027.P13543877476200030090

`A123513(∑[A198954(n)]-n)`
-/

namespace A010027.P13543877476200030090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A010027.P13543877476200030090

namespace A010027

/-- `A123513(∑[A198954(n)]-n)` -/
def P13543877476200030090.Spec : Prop :=
  ∀ n, P13543877476200030090.a n = A010027 (n + 1)

end A010027

/-! ## A010027.P113379028687907470

`A123513(A114327(n)+1+n)`
-/

namespace A010027.P113379028687907470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A114327 n + 1 + (n : ℤ)).toNat

end

end A010027.P113379028687907470

namespace A010027

/-- `A123513(A114327(n)+1+n)` -/
def P113379028687907470.Spec : Prop :=
  ∀ n, P113379028687907470.a n = A010027 (n + 1)

end A010027

/-! ## A010027.P9229294241434348351

`A123513(A093995(n+1)-n)`
-/

namespace A010027.P9229294241434348351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A010027.P9229294241434348351

namespace A010027

/-- `A123513(A093995(n+1)-n)` -/
def P9229294241434348351.Spec : Prop :=
  ∀ n, P9229294241434348351.a n = A010027 (n + 1)

end A010027

/-! ## A010027.P11707053767341568324

`A123513(A002024(n+1)²-n)`
-/

namespace A010027.P11707053767341568324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123513 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A010027.P11707053767341568324

namespace A010027

/-- `A123513(A002024(n+1)²-n)` -/
def P11707053767341568324.Spec : Prop :=
  ∀ n, P11707053767341568324.a n = A010027 (n + 1)

end A010027

/-!
# A010028: Triangle read by rows: T(n,k) is one-half the number of permutations of length n with exactly n-k rising or falling successions, for n >= 1, 1 <= k <= n. T(1,1) = 1 by convention.

The programs for A010028, there is no canonical definition to state claims against.
-/

/-! ## A010028.P13450593543117070206

`A086856(A038722(n+1))`
-/

namespace A010028.P13450593543117070206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (A038722 (n + 1)).toNat

end

end A010028.P13450593543117070206

/-! ## A010028.P3373966955469384489

`A086856(A061579(n)+1)`
-/

namespace A010028.P3373966955469384489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (A061579 n + 1).toNat

end

end A010028.P3373966955469384489

/-! ## A010028.P2822628659244490659

`A086856(A093995(n+1)-n)`
-/

namespace A010028.P2822628659244490659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A010028.P2822628659244490659

/-! ## A010028.P5315868130546691311

`A086856(A002024(n+1)²-n)`
-/

namespace A010028.P5315868130546691311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A010028.P5315868130546691311

/-!
# A010033: The one-sided one-lie Rényi-Ulam game: a(n) is the maximum size of a set M such that one can determine a chosen element x with at most n questions of the form "Is x in T?" for some set T, when the answer can be a lie once, but only when the true answer is Yes.

The programs for A010033, there is no canonical definition to state claims against.
-/

/-! ## A010033.P11661031258592629008

`A082447(A024175(n))`
-/

namespace A010033.P11661031258592629008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A024175 n).toNat

end

end A010033.P11661031258592629008

/-! ## A010033.P5233526538072366824

`A082447(A054393(n))`
-/

namespace A010033.P5233526538072366824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A054393 n).toNat

end

end A010033.P5233526538072366824

/-! ## A010033.P2812026236886099888

`A055086(A148242(n))`
-/

namespace A010033.P2812026236886099888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A148242 n).toNat

end

end A010033.P2812026236886099888

/-! ## A010033.P5560975770040635184

`A055086(A243412(n))`
-/

namespace A010033.P5560975770040635184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A243412 n).toNat

end

end A010033.P5560975770040635184

/-! ## A010033.P8840230026161269027

`A082447(A261589(n))`
-/

namespace A010033.P8840230026161269027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A261589 n).toNat

end

end A010033.P8840230026161269027

/-!
# A010035: a(n) = 2*3^(2*n)-3^n.

The programs for A010035, the canonical program `A010035.P14596443823200811789` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010035 has offset 0).

The definition of A010035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^(2*n)-3^n` (program `A010035.P14596443823200811789`, by `A010035.P14596443823200811789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010035.P14596443823200811789

`2*3^(2*n)-3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010035

/-- `2*3^(2*n)-3^n` -/
def P14596443823200811789.Spec : Prop :=
  ∀ n, P14596443823200811789.a n = A010035 n

theorem P14596443823200811789.correct : P14596443823200811789.Spec := by
  intro n
  simp only [A010035]

end A010035

/-! ## A010035.P14280343562142647970

`lcm(1-Δ[3^n], 3^n)`
-/

namespace A010035.P14280343562142647970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (3 ^ n : ℤ)

end

end A010035.P14280343562142647970

namespace A010035

/-- `lcm(1-Δ[3^n], 3^n)` -/
def P14280343562142647970.Spec : Prop :=
  ∀ n, (P14280343562142647970.a n : ℤ) = A010035 n

end A010035

/-! ## A010035.P1446528287316340432

`A255442(2*n)`
-/

namespace A010035.P1446528287316340432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255442 (2 * n)

end

end A010035.P1446528287316340432

namespace A010035

/-- `A255442(2*n)` -/
def P1446528287316340432.Spec : Prop :=
  ∀ n, P1446528287316340432.a n = A010035 n

end A010035

/-! ## A010035.P10069926946150363403

`Δ[A003462(n)²]`
-/

namespace A010035.P10069926946150363403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P10069926946150363403

namespace A010035

/-- `Δ[A003462(n)²]` -/
def P10069926946150363403.Spec : Prop :=
  ∀ n, P10069926946150363403.a n = A010035 n

end A010035

/-! ## A010035.P4151741700632504674

`Δ[A076040(n)²]`
-/

namespace A010035.P4151741700632504674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P4151741700632504674

namespace A010035

/-- `Δ[A076040(n)²]` -/
def P4151741700632504674.Spec : Prop :=
  ∀ n, P4151741700632504674.a n = A010035 n

end A010035

/-! ## A010035.P16581815521054820539

`Δ[A238976(n+1)]`
-/

namespace A010035.P16581815521054820539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P16581815521054820539

namespace A010035

/-- `Δ[A238976(n+1)]` -/
def P16581815521054820539.Spec : Prop :=
  ∀ n, P16581815521054820539.a n = A010035 n

end A010035

/-! ## A010035.P5029831651028971517

`3^n*A048473(n)`
-/

namespace A010035.P5029831651028971517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A048473 n

end

end A010035.P5029831651028971517

namespace A010035

/-- `3^n*A048473(n)` -/
def P5029831651028971517.Spec : Prop :=
  ∀ n, P5029831651028971517.a n = A010035 n

theorem P5029831651028971517.correct : P5029831651028971517.Spec := by
  intro n
  simp only [A010035, Nat.add_sub_cancel, A010035.P5029831651028971517.a, A010035.P14596443823200811789.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010035

/-! ## A010035.P17034640341497600533

`Δ[(1-A007051(n))²]`
-/

namespace A010035.P17034640341497600533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A007051 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P17034640341497600533

namespace A010035

/-- `Δ[(1-A007051(n))²]` -/
def P17034640341497600533.Spec : Prop :=
  ∀ n, P17034640341497600533.a n = A010035 n

end A010035

/-! ## A010035.P11408178561715739604

`Δ[(2-A115098(n))²]`
-/

namespace A010035.P11408178561715739604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A115098 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P11408178561715739604

namespace A010035

/-- `Δ[(2-A115098(n))²]` -/
def P11408178561715739604.Spec : Prop :=
  ∀ n, P11408178561715739604.a n = A010035 n

end A010035

/-! ## A010035.P9653893306459365299

`Δ[A232801(2*n)²]`
-/

namespace A010035.P9653893306459365299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P9653893306459365299

namespace A010035

/-- `Δ[A232801(2*n)²]` -/
def P9653893306459365299.Spec : Prop :=
  ∀ n, P9653893306459365299.a n = A010035 n

end A010035

/-! ## A010035.P1475310390889655895

`Δ[(A024023(n)/2)²]`
-/

namespace A010035.P1475310390889655895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A024023 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P1475310390889655895

namespace A010035

/-- `Δ[(A024023(n)/2)²]` -/
def P1475310390889655895.Spec : Prop :=
  ∀ n, P1475310390889655895.a n = (A010035 n : ℚ)

theorem P1475310390889655895.correct : P1475310390889655895.Spec := by
  intro n
  simp only [A010035, Nat.add_sub_cancel, A010035.P1475310390889655895.f1, A010035.P1475310390889655895.a, A010035.P14596443823200811789.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010035

/-! ## A010035.P4109736636953412555

`3^n*∑[A003946(n)]`
-/

namespace A010035.P4109736636953412555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010035.P4109736636953412555

namespace A010035

/-- `3^n*∑[A003946(n)]` -/
def P4109736636953412555.Spec : Prop :=
  ∀ n, P4109736636953412555.a n = A010035 n

end A010035

/-! ## A010035.P12935381599351640770

`3^n*A154992(n+2)`
-/

namespace A010035.P12935381599351640770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A154992 (n + 2)

end

end A010035.P12935381599351640770

namespace A010035

/-- `3^n*A154992(n+2)` -/
def P12935381599351640770.Spec : Prop :=
  ∀ n, P12935381599351640770.a n = A010035 n

end A010035

/-! ## A010035.P10906566279786761533

`Δ[(1-A124302(n+1))²]`
-/

namespace A010035.P10906566279786761533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A124302 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P10906566279786761533

namespace A010035

/-- `Δ[(1-A124302(n+1))²]` -/
def P10906566279786761533.Spec : Prop :=
  ∀ n, P10906566279786761533.a n = A010035 n

end A010035

/-! ## A010035.P1740276914388469911

`Δ[(A029858(n+1)/3)²]`
-/

namespace A010035.P1740276914388469911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A029858 (n + 1) : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P1740276914388469911

namespace A010035

/-- `Δ[(A029858(n+1)/3)²]` -/
def P1740276914388469911.Spec : Prop :=
  ∀ n, P1740276914388469911.a n = (A010035 n : ℚ)

end A010035

/-! ## A010035.P9994612406860218806

`Δ[(n+1-A233656(n))²]`
-/

namespace A010035.P9994612406860218806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A233656 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010035.P9994612406860218806

namespace A010035

/-- `Δ[(n+1-A233656(n))²]` -/
def P9994612406860218806.Spec : Prop :=
  ∀ n, P9994612406860218806.a n = A010035 n

end A010035

/-! ## A010035.P867052065691674491

`(A100774(n)+1)*A000244(n)`
-/

namespace A010035.P867052065691674491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100774 n + 1) * A000244 n

end

end A010035.P867052065691674491

namespace A010035

/-- `(A100774(n)+1)*A000244(n)` -/
def P867052065691674491.Spec : Prop :=
  ∀ n, P867052065691674491.a n = A010035 n

theorem P867052065691674491.correct : P867052065691674491.Spec := by
  intro n
  simp only [A010035, Nat.add_sub_cancel, A010035.P867052065691674491.a, A010035.P14596443823200811789.a, A000244, A000244.P17162167222172810417.a, A100774, A100774.P2437826719099000407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010035

/-! ## A010035.P12485551107041379636

`A048473(n)*A140429(n+1)`
-/

namespace A010035.P12485551107041379636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n * A140429 (n + 1)

end

end A010035.P12485551107041379636

namespace A010035

/-- `A048473(n)*A140429(n+1)` -/
def P12485551107041379636.Spec : Prop :=
  ∀ n, P12485551107041379636.a n = A010035 n

end A010035

/-! ## A010035.P11591404771675323130

`(A008776(n)-1)*A000244(n)`
-/

namespace A010035.P11591404771675323130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 n - 1) * A000244 n

end

end A010035.P11591404771675323130

namespace A010035

/-- `(A008776(n)-1)*A000244(n)` -/
def P11591404771675323130.Spec : Prop :=
  ∀ n, P11591404771675323130.a n = A010035 n

theorem P11591404771675323130.correct : P11591404771675323130.Spec := by
  intro n
  simp only [A010035, Nat.add_sub_cancel, A010035.P11591404771675323130.a, A010035.P14596443823200811789.a, A000244, A000244.P17162167222172810417.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A010035

/-! ## A010035.P12880384755633345097

`A000244(n)*A062318(2*(n+1))`
-/

namespace A010035.P12880384755633345097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A062318 (2 * (n + 1))

end

end A010035.P12880384755633345097

namespace A010035

/-- `A000244(n)*A062318(2*(n+1))` -/
def P12880384755633345097.Spec : Prop :=
  ∀ n, P12880384755633345097.a n = A010035 n

end A010035

/-!
# A010036: Sum of 2^n, ..., 2^(n+1) - 1.

The programs for A010036, the canonical program `A010036.P12471279002526875859` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010036 has offset 0).

The definition of A010036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010036.P12471279002526875859

`3*2^(2*n-1)-2^(n-1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010036

/-- `3*2^(2*n-1)-2^(n-1)` -/
def P12471279002526875859.Spec : Prop :=
  ∀ n, P12471279002526875859.a n = (A010036 n : ℚ)

end A010036

/-! ## A010036.P12538248890259366078

`ogf((1-x)/(1-6x+8x^2))`
-/

namespace A010036.P12538248890259366078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 8] n

end

end A010036.P12538248890259366078

namespace A010036

/-- `ogf((1-x)/(1-6x+8x^2))` -/
def P12538248890259366078.Spec : Prop :=
  ∀ n, P12538248890259366078.a n = A010036 n

end A010036

/-! ## A010036.P14148279919369759969

`or(4^n, C(2^n, 2))`
-/

namespace A010036.P14148279919369759969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 ^ n) (Nat.choose (2 ^ n) 2)

end

end A010036.P14148279919369759969

namespace A010036

/-- `or(4^n, C(2^n, 2))` -/
def P14148279919369759969.Spec : Prop :=
  ∀ n, (P14148279919369759969.a n : ℤ) = A010036 n

end A010036

/-! ## A010036.P7402592729377211870

`or(4*a(n-1), 2^(n-1))` with `a(0)=1`
-/

namespace A010036.P7402592729377211870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A010036.P7402592729377211870

namespace A010036

/-- `or(4*a(n-1), 2^(n-1))` -/
def P7402592729377211870.Spec : Prop :=
  ∀ n, P7402592729377211870.a n = A010036 n

end A010036

/-! ## A010036.P15910155779691708842

`xor(4*a(n-1), 2^(n-1))` with `a(0)=1`
-/

namespace A010036.P15910155779691708842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (4 * a (n - 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A010036.P15910155779691708842

namespace A010036

/-- `xor(4*a(n-1), 2^(n-1))` -/
def P15910155779691708842.Spec : Prop :=
  ∀ n, P15910155779691708842.a n = A010036 n

end A010036

/-! ## A010036.P7236627632109758797

`Δ[A006516(n)]`
-/

namespace A010036.P7236627632109758797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P7236627632109758797

namespace A010036

/-- `Δ[A006516(n)]` -/
def P7236627632109758797.Spec : Prop :=
  ∀ n, P7236627632109758797.a n = A010036 n

end A010036

/-! ## A010036.P16193664218739033329

`Δ[A134169(n)]`
-/

namespace A010036.P16193664218739033329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P16193664218739033329

namespace A010036

/-- `Δ[A134169(n)]` -/
def P16193664218739033329.Spec : Prop :=
  ∀ n, P16193664218739033329.a n = A010036 n

end A010036

/-! ## A010036.P1282599507887439922

`A135098(2*n)`
-/

namespace A010036.P1282599507887439922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135098 (2 * n)

end

end A010036.P1282599507887439922

namespace A010036

/-- `A135098(2*n)` -/
def P1282599507887439922.Spec : Prop :=
  ∀ n, P1282599507887439922.a n = A010036 n

end A010036

/-! ## A010036.P5513832484383920135

`Δ[Δ[A006095(n)]]`
-/

namespace A010036.P5513832484383920135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P5513832484383920135

namespace A010036

/-- `Δ[Δ[A006095(n)]]` -/
def P5513832484383920135.Spec : Prop :=
  ∀ n, P5513832484383920135.a n = A010036 n

end A010036

/-! ## A010036.P5799919975875296581

`Δ[A007179(2*n)]`
-/

namespace A010036.P5799919975875296581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P5799919975875296581

namespace A010036

/-- `Δ[A007179(2*n)]` -/
def P5799919975875296581.Spec : Prop :=
  ∀ n, P5799919975875296581.a n = A010036 n

end A010036

/-! ## A010036.P612702770182349277

`Δ[A137173(2*n)]`
-/

namespace A010036.P612702770182349277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137173 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P612702770182349277

namespace A010036

/-- `Δ[A137173(2*n)]` -/
def P612702770182349277.Spec : Prop :=
  ∀ n, P612702770182349277.a n = A010036 n

end A010036

/-! ## A010036.P10516537480673231268

`Δ[A020515(n)/2]`
-/

namespace A010036.P10516537480673231268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020515 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P10516537480673231268

namespace A010036

/-- `Δ[A020515(n)/2]` -/
def P10516537480673231268.Spec : Prop :=
  ∀ n, P10516537480673231268.a n = (A010036 n : ℚ)

end A010036

/-! ## A010036.P564173502443736686

`Δ[A020522(n)/2]`
-/

namespace A010036.P564173502443736686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020522 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P564173502443736686

namespace A010036

/-- `Δ[A020522(n)/2]` -/
def P564173502443736686.Spec : Prop :=
  ∀ n, P564173502443736686.a n = (A010036 n : ℚ)

end A010036

/-! ## A010036.P16399511745876206022

`Δ[A156589(n)/2]`
-/

namespace A010036.P16399511745876206022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156589 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P16399511745876206022

namespace A010036

/-- `Δ[A156589(n)/2]` -/
def P16399511745876206022.Spec : Prop :=
  ∀ n, P16399511745876206022.a n = (A010036 n : ℚ)

end A010036

/-! ## A010036.P1157041677700834625

`Δ[A170939(n)/2]`
-/

namespace A010036.P1157041677700834625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170939 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P1157041677700834625

namespace A010036

/-- `Δ[A170939(n)/2]` -/
def P1157041677700834625.Spec : Prop :=
  ∀ n, P1157041677700834625.a n = (A010036 n : ℚ)

end A010036

/-! ## A010036.P5015527121903729645

`A135098(Δ[n²])/2`
-/

namespace A010036.P5015527121903729645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135098 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A010036.P5015527121903729645

namespace A010036

/-- `A135098(Δ[n²])/2` -/
def P5015527121903729645.Spec : Prop :=
  ∀ n, P5015527121903729645.a n = (A010036 n : ℚ)

end A010036

/-! ## A010036.P9218054659625045265

`Δ[A113979(2*n+1)]`
-/

namespace A010036.P9218054659625045265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113979 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010036.P9218054659625045265

namespace A010036

/-- `Δ[A113979(2*n+1)]` -/
def P9218054659625045265.Spec : Prop :=
  ∀ n, P9218054659625045265.a n = A010036 n

end A010036

/-! ## A010036.P13669761868549913177

`ceil(Δ[record[A279879(n)/2]])`
-/

namespace A010036.P13669761868549913177
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279879 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A010036.P13669761868549913177

namespace A010036

/-- `ceil(Δ[record[A279879(n)/2]])` -/
def P13669761868549913177.Spec : Prop :=
  ∀ n, P13669761868549913177.a n = A010036 n

end A010036

/-! ## A010036.P15930804611784521187

`2^(n-1)*A153893(n)`
-/

namespace A010036.P15930804611784521187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A153893 n : ℚ)

end

end A010036.P15930804611784521187

namespace A010036

/-- `2^(n-1)*A153893(n)` -/
def P15930804611784521187.Spec : Prop :=
  ∀ n, P15930804611784521187.a n = (A010036 n : ℚ)

end A010036

/-! ## A010036.P9060441762380210302

`2^(n-1)*A055010(n+1)`
-/

namespace A010036.P9060441762380210302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A055010 (n + 1) : ℚ)

end

end A010036.P9060441762380210302

namespace A010036

/-- `2^(n-1)*A055010(n+1)` -/
def P9060441762380210302.Spec : Prop :=
  ∀ n, P9060441762380210302.a n = (A010036 n : ℚ)

end A010036

/-!
# A010039: High-temperature expansion of Ising model susceptibility chi_2 for square lattice.

The programs for A010039, there is no canonical definition to state claims against.
-/

/-! ## A010039.P10272888454769117275

`A008574(A124212(n)-A011782(n))`
-/

namespace A010039.P10272888454769117275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A124212 n - A011782 n).toNat

end

end A010039.P10272888454769117275

/-!
# A010040: High-temperature expansion of Ising model susceptibility chi_2 for cubic lattice.

The programs for A010040, there is no canonical definition to state claims against.
-/

/-! ## A010040.P6803036905302469327

`A008458(A229558(n)-A324328(n))`
-/

namespace A010040.P6803036905302469327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A229558 n - A324328 n).toNat

end

end A010040.P6803036905302469327

/-!
# A010042: High-temperature expansion of susceptibility mu_2 for square lattice.

The programs for A010042, there is no canonical definition to state claims against.
-/

/-! ## A010042.P2377678788483867800

`4*A228087(A092391(n^(n+2)))`
-/

namespace A010042.P2377678788483867800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A228087 (A092391 (n ^ (n + 2))).toNat

end

end A010042.P2377678788483867800

/-!
# A010048: Triangle of Fibonomial coefficients, read by rows.

The programs for A010048, there is no canonical definition to state claims against.
-/

/-! ## A010048.P4509337357632413689

`abs(A055870(n))`
-/

namespace A010048.P4509337357632413689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055870 n|

end

end A010048.P4509337357632413689

/-! ## A010048.P12177162393611563883

`gcd(A000038(n), A055870(n))`
-/

namespace A010048.P12177162393611563883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A055870 n)

end

end A010048.P12177162393611563883

/-! ## A010048.P14435438842896558284

`lcm(A020985(n), A055870(n))`
-/

namespace A010048.P14435438842896558284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A055870 n)

end

end A010048.P14435438842896558284

/-! ## A010048.P6054052431591383835

`gcd(A010816(n)-A055870(n), A010816(n))`
-/

namespace A010048.P6054052431591383835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n - A055870 n) (A010816 n)

end

end A010048.P6054052431591383835

/-! ## A010048.P14975554093624419771

`sqrt(A055870(n)^(2%A007448(n)))`
-/

namespace A010048.P14975554093624419771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A055870 n : ℚ) ^ (Int.tmod 2 (A007448 n) : ℤ) : ℝ)

end

end A010048.P14975554093624419771

/-! ## A010048.P7660515103524334117

`∑{d}[A055870(n), A000010(#)]`
-/

namespace A010048.P7660515103524334117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A010048.P7660515103524334117

/-! ## A010048.P18124646370024908052

`A385626(n)/A007318(n)`
-/

namespace A010048.P18124646370024908052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385626 n : ℚ) / (A007318 n : ℚ)

end

end A010048.P18124646370024908052

/-! ## A010048.P6131705382722290087

`A055870(n)*A099927(n)/A383715(n)`
-/

namespace A010048.P6131705382722290087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055870 n * A099927 n : ℚ) / (A383715 n : ℚ)

end

end A010048.P6131705382722290087

/-!
# A010049: Second-order Fibonacci numbers.

The programs for A010049, the canonical program `A010049.P2470396957428042949` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010049 has offset 0).

The definition of A010049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010049.P2470396957428042949

`(3-n)*a(n-1)+n*a(n-2)+n*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010049

/-- `(3-n)*a(n-1)+n*a(n-2)+n*a(n-3)` -/
def P2470396957428042949.Spec : Prop :=
  ∀ n, P2470396957428042949.a n = A010049 n

theorem P2470396957428042949.correct : P2470396957428042949.Spec := by
  intro n
  simp only [A010049]

end A010049

/-! ## A010049.P3794886689571184061

`ogf((x-x^2)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A010049.P3794886689571184061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, -1, 2, 1] n

end

end A010049.P3794886689571184061

namespace A010049

/-- `ogf((x-x^2)/(1-2x-x^2+2x^3+x^4))` -/
def P3794886689571184061.Spec : Prop :=
  ∀ n, P3794886689571184061.a n = A010049 n

end A010049

/-! ## A010049.P15075407827117590176

`∑[A006367(abs(1-n))]`
-/

namespace A010049.P15075407827117590176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010049.P15075407827117590176

namespace A010049

/-- `∑[A006367(abs(1-n))]` -/
def P15075407827117590176.Spec : Prop :=
  ∀ n, P15075407827117590176.a n = A010049 n

end A010049

/-! ## A010049.P10014899557257990793

`A006367(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A010049.P10014899557257990793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A006367 (n - 1) + a (n - 1)

end

end A010049.P10014899557257990793

namespace A010049

/-- `A006367(n-1)+a(n-1)` -/
def P10014899557257990793.Spec : Prop :=
  ∀ n, P10014899557257990793.a n = A010049 n

end A010049

/-! ## A010049.P9530727180209821731

`a(n-1)+a(n-2)+A000045(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A010049.P9530727180209821731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + A000045 (n - 2)

end

end A010049.P9530727180209821731

namespace A010049

/-- `a(n-1)+a(n-2)+A000045(n-2)` -/
def P9530727180209821731.Spec : Prop :=
  ∀ n, P9530727180209821731.a n = A010049 n

end A010049

/-! ## A010049.P17551087170831999653

`A208354(n)-A212804(n)`
-/

namespace A010049.P17551087170831999653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n - A212804 n

end

end A010049.P17551087170831999653

namespace A010049

/-- `A208354(n)-A212804(n)` -/
def P17551087170831999653.Spec : Prop :=
  ∀ n, P17551087170831999653.a n = A010049 n

end A010049

/-! ## A010049.P8241412848561268523

`A006367(n+1)-A000045(n)`
-/

namespace A010049.P8241412848561268523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 1) - A000045 n

end

end A010049.P8241412848561268523

namespace A010049

/-- `A006367(n+1)-A000045(n)` -/
def P8241412848561268523.Spec : Prop :=
  ∀ n, P8241412848561268523.a n = A010049 n

end A010049

/-! ## A010049.P18293611908308727199

`A094188(n+2)-A078024(n)`
-/

namespace A010049.P18293611908308727199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094188 (n + 2) - A078024 n

end

end A010049.P18293611908308727199

namespace A010049

/-- `A094188(n+2)-A078024(n)` -/
def P18293611908308727199.Spec : Prop :=
  ∀ n, P18293611908308727199.a n = A010049 n

end A010049

/-! ## A010049.P3487031845084479132

`A006367(n+1)-A212804(n+1)`
-/

namespace A010049.P3487031845084479132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 1) - A212804 (n + 1)

end

end A010049.P3487031845084479132

namespace A010049

/-- `A006367(n+1)-A212804(n+1)` -/
def P3487031845084479132.Spec : Prop :=
  ∀ n, P3487031845084479132.a n = A010049 n

end A010049

/-! ## A010049.P11423074737625726743

`A191830(n+1)-A240847(n+1)`
-/

namespace A010049.P11423074737625726743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191830 (n + 1) - A240847 (n + 1)

end

end A010049.P11423074737625726743

namespace A010049

/-- `A191830(n+1)-A240847(n+1)` -/
def P11423074737625726743.Spec : Prop :=
  ∀ n, P11423074737625726743.a n = A010049 n

end A010049

/-! ## A010049.P13150482651616374806

`A000045(n+1)-A240847(n+2)`
-/

namespace A010049.P13150482651616374806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A240847 (n + 2)

end

end A010049.P13150482651616374806

namespace A010049

/-- `A000045(n+1)-A240847(n+2)` -/
def P13150482651616374806.Spec : Prop :=
  ∀ n, P13150482651616374806.a n = A010049 n

end A010049

/-! ## A010049.P10440082662282162448

`A006367(n+1)-A053602(2*n)`
-/

namespace A010049.P10440082662282162448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 1) - A053602 (2 * n)

end

end A010049.P10440082662282162448

namespace A010049

/-- `A006367(n+1)-A053602(2*n)` -/
def P10440082662282162448.Spec : Prop :=
  ∀ n, P10440082662282162448.a n = A010049 n

end A010049

/-! ## A010049.P11373088507368547772

`A006367(n+1)-(A002062(n)-n)`
-/

namespace A010049.P11373088507368547772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 1) - (A002062 n - (n : ℤ))

end

end A010049.P11373088507368547772

namespace A010049

/-- `A006367(n+1)-(A002062(n)-n)` -/
def P11373088507368547772.Spec : Prop :=
  ∀ n, P11373088507368547772.a n = A010049 n

end A010049

/-! ## A010049.P16322227903117753081

`A006367(n+1)-A006355(n+1)/2`
-/

namespace A010049.P16322227903117753081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006367 (n + 1) : ℚ) - (A006355 (n + 1) : ℚ) / 2

end

end A010049.P16322227903117753081

namespace A010049

/-- `A006367(n+1)-A006355(n+1)/2` -/
def P16322227903117753081.Spec : Prop :=
  ∀ n, P16322227903117753081.a n = (A010049 n : ℚ)

end A010049

/-! ## A010049.P5520514671414658867

`A006367(n+1)-A118658(n+1)/2`
-/

namespace A010049.P5520514671414658867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006367 (n + 1) : ℚ) - (A118658 (n + 1) : ℚ) / 2

end

end A010049.P5520514671414658867

namespace A010049

/-- `A006367(n+1)-A118658(n+1)/2` -/
def P5520514671414658867.Spec : Prop :=
  ∀ n, P5520514671414658867.a n = (A010049 n : ℚ)

end A010049

/-! ## A010049.P6237990502854204267

`A000045(n)+A208354(n)-A000045(n+1)`
-/

namespace A010049.P6237990502854204267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A208354 n - A000045 (n + 1))

end

end A010049.P6237990502854204267

namespace A010049

/-- `A000045(n)+A208354(n)-A000045(n+1)` -/
def P6237990502854204267.Spec : Prop :=
  ∀ n, P6237990502854204267.a n = A010049 n

end A010049

/-! ## A010049.P9915452916331838883

`A006355(n+1)-(A240847(n+1)+A240847(n))`
-/

namespace A010049.P9915452916331838883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) - (A240847 (n + 1) + A240847 n)

end

end A010049.P9915452916331838883

namespace A010049

/-- `A006355(n+1)-(A240847(n+1)+A240847(n))` -/
def P9915452916331838883.Spec : Prop :=
  ∀ n, P9915452916331838883.a n = A010049 n

end A010049

/-! ## A010049.P9454266876032953826

`A029907(n)-a(n-1)` with `a(0)=0`
-/

namespace A010049.P9454266876032953826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A029907 n - a (n - 1)

end

end A010049.P9454266876032953826

namespace A010049

/-- `A029907(n)-a(n-1)` -/
def P9454266876032953826.Spec : Prop :=
  ∀ n, P9454266876032953826.a n = A010049 n

end A010049

/-! ## A010049.P6642025240044554677

`∑[A006367(n)]-A006367(n)`
-/

namespace A010049.P6642025240044554677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006367 n

end

end A010049.P6642025240044554677

namespace A010049

/-- `∑[A006367(n)]-A006367(n)` -/
def P6642025240044554677.Spec : Prop :=
  ∀ n, P6642025240044554677.a n = A010049 n

end A010049

/-! ## A010049.P10152894753874922892

`A240847(n+1)+A001629(n)`
-/

namespace A010049.P10152894753874922892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 (n + 1) + A001629 n

end

end A010049.P10152894753874922892

namespace A010049

/-- `A240847(n+1)+A001629(n)` -/
def P10152894753874922892.Spec : Prop :=
  ∀ n, P10152894753874922892.a n = A010049 n

end A010049

/-!
# A010050: a(n) = (2n)!.

The programs for A010050, the canonical program `A010050.P16096830225553856271` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010050 has offset 0).

The definition of A010050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n)!` (program `A010050.P16096830225553856271`, by `A010050.P16096830225553856271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010050.P16096830225553856271

`(2*n)!`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010050

/-- `(2*n)!` -/
def P16096830225553856271.Spec : Prop :=
  ∀ n, (P16096830225553856271.a n : ℤ) = A010050 n

theorem P16096830225553856271.correct : P16096830225553856271.Spec := by
  intro n
  simp only [A010050]

end A010050

/-! ## A010050.P11214335951363263180

`2^n*A000680(n)`
-/

namespace A010050.P11214335951363263180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000680 n

end

end A010050.P11214335951363263180

namespace A010050

/-- `2^n*A000680(n)` -/
def P11214335951363263180.Spec : Prop :=
  ∀ n, P11214335951363263180.a n = A010050 n

end A010050

/-! ## A010050.P9842842903253810499

`record[∏[xor(1, -n)]]`
-/

namespace A010050.P9842842903253810499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010050.P9842842903253810499

namespace A010050

/-- `record[∏[xor(1, -n)]]` -/
def P9842842903253810499.Spec : Prop :=
  ∀ n, P9842842903253810499.a n = A010050 n

end A010050

/-! ## A010050.P8092958707533902155

`record[(n%4+n)!]`
-/

namespace A010050.P8092958707533902155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 4 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010050.P8092958707533902155

namespace A010050

/-- `record[(n%4+n)!]` -/
def P8092958707533902155.Spec : Prop :=
  ∀ n, (P8092958707533902155.a n : ℤ) = A010050 n

end A010050

/-! ## A010050.P16655635613240542989

`record[and(n, n+1)!]`
-/

namespace A010050.P16655635613240542989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010050.P16655635613240542989

namespace A010050

/-- `record[and(n, n+1)!]` -/
def P16655635613240542989.Spec : Prop :=
  ∀ n, (P16655635613240542989.a n : ℤ) = A010050 n

end A010050

/-!
# A010051: Characteristic function of primes: 1 if n is prime, else 0.

The programs for A010051, the canonical program `A010051.P15078252821583414300` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010051 has offset 1).

The definition of A010051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A193056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A010051.P15078252821583414300

`A100995(n+1)-sqrt(A100995(n+1)*A193056(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010051

/-- `A100995(n+1)-sqrt(A100995(n+1)*A193056(n+1))` -/
def P15078252821583414300.Spec : Prop :=
  ∀ n, P15078252821583414300.a n = (A010051 (n + 1) : ℝ)

end A010051

/-! ## A010051.P11046804377853198888

`A014963(n+1)-A072211(n+1)`
-/

namespace A010051.P11046804377853198888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - A072211 (n + 1)

end

end A010051.P11046804377853198888

namespace A010051

/-- `A014963(n+1)-A072211(n+1)` -/
def P11046804377853198888.Spec : Prop :=
  ∀ n, P11046804377853198888.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P8739887427668209959

`C(C(2, ∑{e}[n+1, #]), 2)`
-/

namespace A010051.P8739887427668209959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2

end

end A010051.P8739887427668209959

namespace A010051

/-- `C(C(2, ∑{e}[n+1, #]), 2)` -/
def P8739887427668209959.Spec : Prop :=
  ∀ n, (P8739887427668209959.a n : ℤ) = A010051 (n + 1)

end A010051

/-! ## A010051.P9154149505774802930

`∑{p}[n+1, val(#, n+1)]`
-/

namespace A010051.P9154149505774802930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1)

end

end A010051.P9154149505774802930

namespace A010051

/-- `∑{p}[n+1, val(#, n+1)]` -/
def P9154149505774802930.Spec : Prop :=
  ∀ n, (P9154149505774802930.a n : ℤ) = A010051 (n + 1)

end A010051

/-! ## A010051.P2964579406648181973

`∑{p}[n+1, C(#, n+1)]`
-/

namespace A010051.P2964579406648181973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1)

end

end A010051.P2964579406648181973

namespace A010051

/-- `∑{p}[n+1, C(#, n+1)]` -/
def P2964579406648181973.Spec : Prop :=
  ∀ n, (P2964579406648181973.a n : ℤ) = A010051 (n + 1)

end A010051

/-! ## A010051.P12568999714359381964

`C(n, ∏{e}[n+1, n*#])`
-/

namespace A010051.P12568999714359381964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p)

end

end A010051.P12568999714359381964

namespace A010051

/-- `C(n, ∏{e}[n+1, n*#])` -/
def P12568999714359381964.Spec : Prop :=
  ∀ n, (P12568999714359381964.a n : ℤ) = A010051 (n + 1)

end A010051

/-! ## A010051.P4928636940456773008

`∑{p}[n+1, floor(#/(n+1))]`
-/

namespace A010051.P4928636940456773008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A010051.P4928636940456773008

namespace A010051

/-- `∑{p}[n+1, floor(#/(n+1))]` -/
def P4928636940456773008.Spec : Prop :=
  ∀ n, P4928636940456773008.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P17178112988930843511

`floor(n/(∑{d}[n+1, #]-2))`
-/

namespace A010051.P17178112988930843511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 2 : ℚ)⌋

end

end A010051.P17178112988930843511

namespace A010051

/-- `floor(n/(∑{d}[n+1, #]-2))` -/
def P17178112988930843511.Spec : Prop :=
  ∀ n, P17178112988930843511.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P14897694917674288065

`∏{p}[n+1, ceil(#/n)]-1`
-/

namespace A010051.P14897694917674288065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / (n : ℚ)⌉ - 1

end

end A010051.P14897694917674288065

namespace A010051

/-- `∏{p}[n+1, ceil(#/n)]-1` -/
def P14897694917674288065.Spec : Prop :=
  ∀ n, P14897694917674288065.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P3997237819277685567

`floor(n^(1-∑{e}[n+1, #]))`
-/

namespace A010051.P3997237819277685567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) : ℤ)⌋

end

end A010051.P3997237819277685567

namespace A010051

/-- `floor(n^(1-∑{e}[n+1, #]))` -/
def P3997237819277685567.Spec : Prop :=
  ∀ n, P3997237819277685567.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P13246369242999018090

`round(n^(1-∑{e}[n+1, #]))`
-/

namespace A010051.P13246369242999018090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) : ℤ))

end

end A010051.P13246369242999018090

namespace A010051

/-- `round(n^(1-∑{e}[n+1, #]))` -/
def P13246369242999018090.Spec : Prop :=
  ∀ n, P13246369242999018090.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P10755517785253830527

`floor(∑{p}[n+1, ϕ^(#-n)])`
-/

namespace A010051.P10755517785253830527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), Real.goldenRatio ^ ((p : ℤ) - (n : ℤ) : ℤ)⌋

end

end A010051.P10755517785253830527

namespace A010051

/-- `floor(∑{p}[n+1, ϕ^(#-n)])` -/
def P10755517785253830527.Spec : Prop :=
  ∀ n, P10755517785253830527.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P939071939416817371

`floor(n/∏{e}[n+1, n*#])`
-/

namespace A010051.P939071939416817371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A010051.P939071939416817371

namespace A010051

/-- `floor(n/∏{e}[n+1, n*#])` -/
def P939071939416817371.Spec : Prop :=
  ∀ n, P939071939416817371.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P8102989354575644463

`C(n, ∏{e}[n+1, n^#])²`
-/

namespace A010051.P8102989354575644463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), n ^ Nat.factorization (f1 n) p) ^ 2

end

end A010051.P8102989354575644463

namespace A010051

/-- `C(n, ∏{e}[n+1, n^#])²` -/
def P8102989354575644463.Spec : Prop :=
  ∀ n, (P8102989354575644463.a n : ℤ) = A010051 (n + 1)

end A010051

/-! ## A010051.P2415734230034996662

`floor(n/n^∑{e}[n+1, #])`
-/

namespace A010051.P2415734230034996662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)⌋

end

end A010051.P2415734230034996662

namespace A010051

/-- `floor(n/n^∑{e}[n+1, #])` -/
def P2415734230034996662.Spec : Prop :=
  ∀ n, P2415734230034996662.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P16690063933065454312

`round(n/n^∑{e}[n+1, #])`
-/

namespace A010051.P16690063933065454312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ))

end

end A010051.P16690063933065454312

namespace A010051

/-- `round(n/n^∑{e}[n+1, #])` -/
def P16690063933065454312.Spec : Prop :=
  ∀ n, P16690063933065454312.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P12713912310604750169

`round(n/∏{e}[n+1, n^#])`
-/

namespace A010051.P12713912310604750169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), n ^ Nat.factorization (f1 n) p : ℕ) : ℚ))

end

end A010051.P12713912310604750169

namespace A010051

/-- `round(n/∏{e}[n+1, n^#])` -/
def P12713912310604750169.Spec : Prop :=
  ∀ n, P12713912310604750169.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P10101509273463897162

`val(n+3, ∑{d}[n+1, #]+1)`
-/

namespace A010051.P10101509273463897162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A010051.P10101509273463897162

namespace A010051

/-- `val(n+3, ∑{d}[n+1, #]+1)` -/
def P10101509273463897162.Spec : Prop :=
  ∀ n, (P10101509273463897162.a n : ℤ) = A010051 (n + 1)

end A010051

/-! ## A010051.P14470749384785794078

`round(∑{p}[n+1, (#/(n+1))²])`
-/

namespace A010051.P14470749384785794078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) / (n + 1 : ℚ)) ^ 2)

end

end A010051.P14470749384785794078

namespace A010051

/-- `round(∑{p}[n+1, (#/(n+1))²])` -/
def P14470749384785794078.Spec : Prop :=
  ∀ n, P14470749384785794078.a n = A010051 (n + 1)

end A010051

/-! ## A010051.P14499117547408942656

`round(∑{p}[n+1, #/2]/(n+1))`
-/

namespace A010051.P14499117547408942656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / 2) / (n + 1 : ℚ))

end

end A010051.P14499117547408942656

namespace A010051

/-- `round(∑{p}[n+1, #/2]/(n+1))` -/
def P14499117547408942656.Spec : Prop :=
  ∀ n, P14499117547408942656.a n = A010051 (n + 1)

end A010051

/-!
# A010052: Characteristic function of squares: a(n) = 1 if n is a square, otherwise 0.

The programs for A010052, the canonical program `A010052.P917763524850441347` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010052 has offset 0).

The definition of A010052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010052.P917763524850441347

`char[n²]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010052

/-- `char[n²]` -/
def P917763524850441347.Spec : Prop :=
  ∀ n, (P917763524850441347.a n : ℤ) = A010052 n

theorem P917763524850441347.correct : P917763524850441347.Spec := by
  intro n
  simp only [A010052]

end A010052

/-!
# A010053: a(n) = 4^n*(2*n+1)!*(n!)^2/(n+1).

The programs for A010053, the canonical program `A010053.P9170328253155346133` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010053 has offset 0).

The definition of A010053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010053.P9170328253155346133

`4^n*(2*n+1)!*n!²/(n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010053

/-- `4^n*(2*n+1)!*n!²/(n+1)` -/
def P9170328253155346133.Spec : Prop :=
  ∀ n, P9170328253155346133.a n = (A010053 n : ℚ)

end A010053

/-! ## A010053.P5081579045535490380

`A000165(n)*A000165(n)*A110468(n)`
-/

namespace A010053.P5081579045535490380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A000165 n * A110468 n

end

end A010053.P5081579045535490380

namespace A010053

/-- `A000165(n)*A000165(n)*A110468(n)` -/
def P5081579045535490380.Spec : Prop :=
  ∀ n, P5081579045535490380.a n = A010053 n

end A010053

/-!
# A010054: a(n) = 1 if n is a triangular number, otherwise 0.

The programs for A010054, the canonical program `A010054.P18347828677204923252` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010054 has offset 0).

The definition of A010054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010054.P14801828653426752646

`round(sqrt(2*n+1))-round(sqrt(2*n))`
-/

namespace A010054.P14801828653426752646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A010054.P14801828653426752646

namespace A010054

/-- `round(sqrt(2*n+1))-round(sqrt(2*n))` -/
def P14801828653426752646.Spec : Prop :=
  ∀ n, P14801828653426752646.a n = A010054 n

end A010054

/-! ## A010054.P8523800989840707599

`floor((1-cos(π*sqrt(8*n+1)))/2)`
-/

namespace A010054.P8523800989840707599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - Real.cos (Real.pi * Real.sqrt (8 * n + 1 : ℝ))) / 2⌋

end

end A010054.P8523800989840707599

namespace A010054

/-- `floor((1-cos(π*sqrt(8*n+1)))/2)` -/
def P8523800989840707599.Spec : Prop :=
  ∀ n, P8523800989840707599.a n = A010054 n

end A010054

/-! ## A010054.P8293385740731248110

`(-1)^n*A106459(n)`
-/

namespace A010054.P8293385740731248110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A106459 n

end

end A010054.P8293385740731248110

namespace A010054

/-- `(-1)^n*A106459(n)` -/
def P8293385740731248110.Spec : Prop :=
  ∀ n, P8293385740731248110.a n = A010054 n

end A010054

/-! ## A010054.P18347828677204923252

`A005369(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010054

/-- `A005369(2*n)` -/
def P18347828677204923252.Spec : Prop :=
  ∀ n, P18347828677204923252.a n = A010054 n

theorem P18347828677204923252.correct : P18347828677204923252.Spec := by
  intro n
  simp only [A010054]

end A010054

/-! ## A010054.P17165829510977034640

`and(1, char[C(n, 2)])`
-/

namespace A010054.P17165829510977034640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A010054.P17165829510977034640

namespace A010054

/-- `and(1, char[C(n, 2)])` -/
def P17165829510977034640.Spec : Prop :=
  ∀ n, (P17165829510977034640.a n : ℤ) = A010054 n

end A010054

/-! ## A010054.P5180413561029425857

`ceil(sin(char[C(n, 2)]))`
-/

namespace A010054.P5180413561029425857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A010054.P5180413561029425857

namespace A010054

/-- `ceil(sin(char[C(n, 2)]))` -/
def P5180413561029425857.Spec : Prop :=
  ∀ n, P5180413561029425857.a n = A010054 n

end A010054

/-! ## A010054.P15255188772132206323

`floor(tan(char[C(n, 2)]))`
-/

namespace A010054.P15255188772132206323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A010054.P15255188772132206323

namespace A010054

/-- `floor(tan(char[C(n, 2)]))` -/
def P15255188772132206323.Spec : Prop :=
  ∀ n, P15255188772132206323.a n = A010054 n

end A010054

/-! ## A010054.P17850415358969783045

`round(sin(char[C(n, 2)]))`
-/

namespace A010054.P17850415358969783045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A010054.P17850415358969783045

namespace A010054

/-- `round(sin(char[C(n, 2)]))` -/
def P17850415358969783045.Spec : Prop :=
  ∀ n, P17850415358969783045.a n = A010054 n

end A010054

/-! ## A010054.P275968281525563180

`floor(asin(char[C(n, 2)]))`
-/

namespace A010054.P275968281525563180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A010054.P275968281525563180

namespace A010054

/-- `floor(asin(char[C(n, 2)]))` -/
def P275968281525563180.Spec : Prop :=
  ∀ n, P275968281525563180.a n = A010054 n

end A010054

/-! ## A010054.P15077444992901243916

`ceil(atan(char[C(n, 2)]))`
-/

namespace A010054.P15077444992901243916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A010054.P15077444992901243916

namespace A010054

/-- `ceil(atan(char[C(n, 2)]))` -/
def P15077444992901243916.Spec : Prop :=
  ∀ n, P15077444992901243916.a n = A010054 n

end A010054

/-! ## A010054.P10294265064516878550

`round(atan(char[C(n, 2)]))`
-/

namespace A010054.P10294265064516878550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A010054.P10294265064516878550

namespace A010054

/-- `round(atan(char[C(n, 2)]))` -/
def P10294265064516878550.Spec : Prop :=
  ∀ n, P10294265064516878550.a n = A010054 n

end A010054

/-! ## A010054.P8452943630399870677

`floor(sinh(char[C(n, 2)]))`
-/

namespace A010054.P8452943630399870677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A010054.P8452943630399870677

namespace A010054

/-- `floor(sinh(char[C(n, 2)]))` -/
def P8452943630399870677.Spec : Prop :=
  ∀ n, P8452943630399870677.a n = A010054 n

end A010054

/-! ## A010054.P18233086452966347336

`round(sinh(char[C(n, 2)]))`
-/

namespace A010054.P18233086452966347336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A010054.P18233086452966347336

namespace A010054

/-- `round(sinh(char[C(n, 2)]))` -/
def P18233086452966347336.Spec : Prop :=
  ∀ n, P18233086452966347336.a n = A010054 n

end A010054

/-! ## A010054.P12019324743893135737

`ceil(tanh(char[C(n, 2)]))`
-/

namespace A010054.P12019324743893135737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A010054.P12019324743893135737

namespace A010054

/-- `ceil(tanh(char[C(n, 2)]))` -/
def P12019324743893135737.Spec : Prop :=
  ∀ n, P12019324743893135737.a n = A010054 n

end A010054

/-! ## A010054.P10431919103020295067

`round(tanh(char[C(n, 2)]))`
-/

namespace A010054.P10431919103020295067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A010054.P10431919103020295067

namespace A010054

/-- `round(tanh(char[C(n, 2)]))` -/
def P10431919103020295067.Spec : Prop :=
  ∀ n, P10431919103020295067.a n = A010054 n

end A010054

/-! ## A010054.P5479799128812898588

`acos(cos(char[C(n, 2)]))`
-/

namespace A010054.P5479799128812898588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A010054.P5479799128812898588

namespace A010054

/-- `acos(cos(char[C(n, 2)]))` -/
def P5479799128812898588.Spec : Prop :=
  ∀ n, P5479799128812898588.a n = (A010054 n : ℝ)

end A010054

/-! ## A010054.P14046726748515916409

`asin(sin(char[C(n, 2)]))`
-/

namespace A010054.P14046726748515916409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A010054.P14046726748515916409

namespace A010054

/-- `asin(sin(char[C(n, 2)]))` -/
def P14046726748515916409.Spec : Prop :=
  ∀ n, P14046726748515916409.a n = (A010054 n : ℝ)

end A010054

/-! ## A010054.P6857398186136702478

`atan(tan(char[C(n, 2)]))`
-/

namespace A010054.P6857398186136702478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A010054.P6857398186136702478

namespace A010054

/-- `atan(tan(char[C(n, 2)]))` -/
def P6857398186136702478.Spec : Prop :=
  ∀ n, P6857398186136702478.a n = (A010054 n : ℝ)

end A010054

/-! ## A010054.P7429227357949918337

`dr(Δ[round(sqrt(2*n))])`
-/

namespace A010054.P7429227357949918337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A010054.P7429227357949918337

namespace A010054

/-- `dr(Δ[round(sqrt(2*n))])` -/
def P7429227357949918337.Spec : Prop :=
  ∀ n, (P7429227357949918337.a n : ℤ) = A010054 n

end A010054

/-! ## A010054.P17269549630212437602

`C(char[C(n, 2)]+1, 2)`
-/

namespace A010054.P17269549630212437602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 1) 2

end

end A010054.P17269549630212437602

namespace A010054

/-- `C(char[C(n, 2)]+1, 2)` -/
def P17269549630212437602.Spec : Prop :=
  ∀ n, (P17269549630212437602.a n : ℤ) = A010054 n

end A010054

/-!
# A010055: 1 if n is a prime power p^k (k >= 0), otherwise 0.

The programs for A010055, the canonical program `A010055.P13747394931985969733` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010055 has offset 1).

The definition of A010055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010055.P5630930897367647872

`round(∏{p}[n+1, acot(atan(#))])`
-/

namespace A010055.P5630930897367647872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.acot (Real.arctan (p : ℝ)))

end

end A010055.P5630930897367647872

namespace A010055

/-- `round(∏{p}[n+1, acot(atan(#))])` -/
def P5630930897367647872.Spec : Prop :=
  ∀ n, P5630930897367647872.a n = A010055 (n + 1)

end A010055

/-! ## A010055.P13747394931985969733

`and(1, ∑{p}[n+1, gcd(n, #)]!)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010055

/-- `and(1, ∑{p}[n+1, gcd(n, #)]!)` -/
def P13747394931985969733.Spec : Prop :=
  ∀ n, (P13747394931985969733.a n : ℤ) = A010055 (n + 1)

theorem P13747394931985969733.correct : P13747394931985969733.Spec := by
  intro n
  simp only [A010055, Nat.add_sub_cancel]

end A010055

/-! ## A010055.P1068703404171539192

`round((n+1)/∏{p}[n+1, #+n])`
-/

namespace A010055.P1068703404171539192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (p + n) : ℕ) : ℚ))

end

end A010055.P1068703404171539192

namespace A010055

/-- `round((n+1)/∏{p}[n+1, #+n])` -/
def P1068703404171539192.Spec : Prop :=
  ∀ n, P1068703404171539192.a n = A010055 (n + 1)

end A010055

/-! ## A010055.P11562603920191548227

`floor((2*n+1)/∏{p}[n+1, #+n])`
-/

namespace A010055.P11562603920191548227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (p + n) : ℕ) : ℚ)⌋

end

end A010055.P11562603920191548227

namespace A010055

/-- `floor((2*n+1)/∏{p}[n+1, #+n])` -/
def P11562603920191548227.Spec : Prop :=
  ∀ n, P11562603920191548227.a n = A010055 (n + 1)

end A010055

/-! ## A010055.P330471943662447986

`floor((n+1)/∏{e}[n+1, n+2-#])`
-/

namespace A010055.P330471943662447986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), ((n + 2 : ℤ) - (Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℚ)⌋

end

end A010055.P330471943662447986

namespace A010055

/-- `floor((n+1)/∏{e}[n+1, n+2-#])` -/
def P330471943662447986.Spec : Prop :=
  ∀ n, P330471943662447986.a n = A010055 (n + 1)

end A010055

/-! ## A010055.P10308922466201391318

`char[A181062(n+1)]`
-/

namespace A010055.P10308922466201391318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010055.P10308922466201391318

namespace A010055

/-- `char[A181062(n+1)]` -/
def P10308922466201391318.Spec : Prop :=
  ∀ n, (P10308922466201391318.a n : ℤ) = A010055 (n + 1)

end A010055

/-! ## A010055.P15339572202403739285

`1-A143731(n+1)`
-/

namespace A010055.P15339572202403739285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A143731 (n + 1)

end

end A010055.P15339572202403739285

namespace A010055

/-- `1-A143731(n+1)` -/
def P15339572202403739285.Spec : Prop :=
  ∀ n, P15339572202403739285.a n = A010055 (n + 1)

end A010055

/-! ## A010055.P4292780252650018947

`A354924(2*(n+1))`
-/

namespace A010055.P4292780252650018947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354924 (2 * (n + 1))

end

end A010055.P4292780252650018947

namespace A010055

/-- `A354924(2*(n+1))` -/
def P4292780252650018947.Spec : Prop :=
  ∀ n, P4292780252650018947.a n = A010055 (n + 1)

end A010055

/-! ## A010055.P6443826223363373500

`A007875(n+1)%2`
-/

namespace A010055.P6443826223363373500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007875 (n + 1)) 2

end

end A010055.P6443826223363373500

namespace A010055

/-- `A007875(n+1)%2` -/
def P6443826223363373500.Spec : Prop :=
  ∀ n, P6443826223363373500.a n = A010055 (n + 1)

end A010055

/-! ## A010055.P1028417411989977541

`A333175(n+1)%2`
-/

namespace A010055.P1028417411989977541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333175 (n + 1)) 2

end

end A010055.P1028417411989977541

namespace A010055

/-- `A333175(n+1)%2` -/
def P1028417411989977541.Spec : Prop :=
  ∀ n, P1028417411989977541.a n = A010055 (n + 1)

end A010055

/-!
# A010056: Characteristic function of Fibonacci numbers: a(n) = 1 if n is a Fibonacci number, otherwise 0.

The programs for A010056, the canonical program `A010056.P4215187913350317449` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010056 has offset 0).

The definition of A010056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010056.P15518499554490705046

`char[ogf(x/(1-x-x^2))]`
-/

namespace A010056.P15518499554490705046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -1] n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P15518499554490705046

namespace A010056

/-- `char[ogf(x/(1-x-x^2))]` -/
def P15518499554490705046.Spec : Prop :=
  ∀ n, (P15518499554490705046.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P4215187913350317449

`char[round(ϕ*a(n-1))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010056

/-- `char[round(ϕ*a(n-1))]` -/
def P4215187913350317449.Spec : Prop :=
  ∀ n, (P4215187913350317449.a n : ℤ) = A010056 n

theorem P4215187913350317449.correct : P4215187913350317449.Spec := by
  intro n
  simp only [A010056]

end A010056

/-! ## A010056.P9103882266530276371

`char[a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A010056.P9103882266530276371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A010056.P9103882266530276371

namespace A010056

/-- `char[a(n-1)+a(n-2)]` -/
def P9103882266530276371.Spec : Prop :=
  ∀ n, (P9103882266530276371.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P17259781233767101918

`char[Δ[floor(ϕ²*a(n-2))]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A010056.P17259781233767101918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f2 =>
  ⌊Real.goldenRatio ^ 2 * (f2 (n - 2) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P17259781233767101918

namespace A010056

/-- `char[Δ[floor(ϕ²*a(n-2))]]` -/
def P17259781233767101918.Spec : Prop :=
  ∀ n, (P17259781233767101918.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P18073635628511959652

`char[a(n-1)-floor(-a(n-2))]` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A010056.P18073635628511959652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P18073635628511959652

namespace A010056

/-- `char[a(n-1)-floor(-a(n-2))]` -/
def P18073635628511959652.Spec : Prop :=
  ∀ n, (P18073635628511959652.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P13295416409296551402

`char[a(n-1)-ceil(-a(n-2))]` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A010056.P13295416409296551402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P13295416409296551402

namespace A010056

/-- `char[a(n-1)-ceil(-a(n-2))]` -/
def P13295416409296551402.Spec : Prop :=
  ∀ n, (P13295416409296551402.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P8199187655582467325

`char[a(n-1)-round(-a(n-2))]` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A010056.P8199187655582467325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P8199187655582467325

namespace A010056

/-- `char[a(n-1)-round(-a(n-2))]` -/
def P8199187655582467325.Spec : Prop :=
  ∀ n, (P8199187655582467325.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P3345428888367679240

`char[Δ[a(n-4)-a(n-2)]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A010056.P3345428888367679240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1] fun n f2 =>
  f2 (n - 4) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P3345428888367679240

namespace A010056

/-- `char[Δ[a(n-4)-a(n-2)]]` -/
def P3345428888367679240.Spec : Prop :=
  ∀ n, (P3345428888367679240.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P17147647039743105483

`char[A000045(n)]`
-/

namespace A010056.P17147647039743105483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P17147647039743105483

namespace A010056

/-- `char[A000045(n)]` -/
def P17147647039743105483.Spec : Prop :=
  ∀ n, (P17147647039743105483.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P5326041742120819502

`char[A020345(n)]`
-/

namespace A010056.P5326041742120819502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P5326041742120819502

namespace A010056

/-- `char[A020345(n)]` -/
def P5326041742120819502.Spec : Prop :=
  ∀ n, (P5326041742120819502.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P3276217070744819527

`char[A053602(n)]`
-/

namespace A010056.P3276217070744819527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P3276217070744819527

namespace A010056

/-- `char[A053602(n)]` -/
def P3276217070744819527.Spec : Prop :=
  ∀ n, (P3276217070744819527.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P10732753222347379684

`char[A079977(n)]`
-/

namespace A010056.P10732753222347379684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P10732753222347379684

namespace A010056

/-- `char[A079977(n)]` -/
def P10732753222347379684.Spec : Prop :=
  ∀ n, (P10732753222347379684.a n : ℤ) = A010056 n

end A010056

/-! ## A010056.P2920595201319091311

`char[A097637(n)]`
-/

namespace A010056.P2920595201319091311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010056.P2920595201319091311

namespace A010056

/-- `char[A097637(n)]` -/
def P2920595201319091311.Spec : Prop :=
  ∀ n, (P2920595201319091311.a n : ℤ) = A010056 n

end A010056

/-!
# A010057: a(n) = 1 if n is a cube, else 0.

The programs for A010057, the canonical program `A010057.P3441922768549040012` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010057 has offset 0).

The definition of A010057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010057.P3441922768549040012

`1+floor(n^(1/3))-ceil(n^(1/3))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010057

/-- `1+floor(n^(1/3))-ceil(n^(1/3))` -/
def P3441922768549040012.Spec : Prop :=
  ∀ n, P3441922768549040012.a n = A010057 n

theorem P3441922768549040012.correct : P3441922768549040012.Spec := by
  intro n
  simp only [A010057]

end A010057

/-! ## A010057.P17156332211234985636

`and(1, char[n*n²])`
-/

namespace A010057.P17156332211234985636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A010057.P17156332211234985636

namespace A010057

/-- `and(1, char[n*n²])` -/
def P17156332211234985636.Spec : Prop :=
  ∀ n, (P17156332211234985636.a n : ℤ) = A010057 n

end A010057

/-! ## A010057.P4701545251216502230

`∏{e}[n, 1-#²%3]`
-/

namespace A010057.P4701545251216502230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - ((Nat.factorization (f1 n) p ^ 2 % 3 : ℕ) : ℤ))

end

end A010057.P4701545251216502230

namespace A010057

/-- `∏{e}[n, 1-#²%3]` -/
def P4701545251216502230.Spec : Prop :=
  ∀ n, P4701545251216502230.a n = A010057 n

end A010057

/-! ## A010057.P5825118351427690031

`or(char[1], char[n*n²])`
-/

namespace A010057.P5825118351427690031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = n then 1 else 0)

end

end A010057.P5825118351427690031

namespace A010057

/-- `or(char[1], char[n*n²])` -/
def P5825118351427690031.Spec : Prop :=
  ∀ n, (P5825118351427690031.a n : ℤ) = A010057 n

end A010057

/-! ## A010057.P7457274286886002277

`4%(char[n*n²]+2)`
-/

namespace A010057.P7457274286886002277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A010057.P7457274286886002277

namespace A010057

/-- `4%(char[n*n²]+2)` -/
def P7457274286886002277.Spec : Prop :=
  ∀ n, (P7457274286886002277.a n : ℤ) = A010057 n

end A010057

/-! ## A010057.P13481250500430456002

`C(n, A018797(n))`
-/

namespace A010057.P13481250500430456002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A018797 n).toNat

end

end A010057.P13481250500430456002

namespace A010057

/-- `C(n, A018797(n))` -/
def P13481250500430456002.Spec : Prop :=
  ∀ n, (P13481250500430456002.a n : ℤ) = A010057 n

end A010057

/-! ## A010057.P9800006396262980012

`C(n, A048763(n))`
-/

namespace A010057.P9800006396262980012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A048763 n).toNat

end

end A010057.P9800006396262980012

namespace A010057

/-- `C(n, A048763(n))` -/
def P9800006396262980012.Spec : Prop :=
  ∀ n, (P9800006396262980012.a n : ℤ) = A010057 n

end A010057

/-! ## A010057.P10012655629207796861

`C(A048762(n), n)`
-/

namespace A010057.P10012655629207796861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048762 n).toNat n

end

end A010057.P10012655629207796861

namespace A010057

/-- `C(A048762(n), n)` -/
def P10012655629207796861.Spec : Prop :=
  ∀ n, (P10012655629207796861.a n : ℤ) = A010057 n

end A010057

/-! ## A010057.P17741468974064319659

`∏{e}[n, A057078(#²)]`
-/

namespace A010057.P17741468974064319659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A057078 (Nat.factorization (f1 n) p ^ 2)

end

end A010057.P17741468974064319659

namespace A010057

/-- `∏{e}[n, A057078(#²)]` -/
def P17741468974064319659.Spec : Prop :=
  ∀ n, P17741468974064319659.a n = A010057 n

end A010057

/-! ## A010057.P2283448593300312917

`char[n*n²]/(char[A319307(n)+1]+1)`
-/

namespace A010057.P2283448593300312917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319307 n + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / (((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

end

end A010057.P2283448593300312917

namespace A010057

/-- `char[n*n²]/(char[A319307(n)+1]+1)` -/
def P2283448593300312917.Spec : Prop :=
  ∀ n, P2283448593300312917.a n = (A010057 n : ℚ)

end A010057

/-! ## A010057.P2323196523825349599

`floor(atan(A000040(n+1)-n))*char[n*n²]`
-/

namespace A010057.P2323196523825349599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A000040 (n + 1) - (n : ℤ) : ℝ)⌋ * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A010057.P2323196523825349599

namespace A010057

/-- `floor(atan(A000040(n+1)-n))*char[n*n²]` -/
def P2323196523825349599.Spec : Prop :=
  ∀ n, P2323196523825349599.a n = A010057 n

end A010057

/-! ## A010057.P8705421475495884797

`char[n*n²]/(char[A016777(3*n)+1]+1)`
-/

namespace A010057.P8705421475495884797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (3 * n) + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / (((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

end

end A010057.P8705421475495884797

namespace A010057

/-- `char[n*n²]/(char[A016777(3*n)+1]+1)` -/
def P8705421475495884797.Spec : Prop :=
  ∀ n, P8705421475495884797.a n = (A010057 n : ℚ)

end A010057

/-! ## A010057.P609232656784296333

`A000007(A055400(n))`
-/

namespace A010057.P609232656784296333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A055400 n).toNat

end

end A010057.P609232656784296333

namespace A010057

/-- `A000007(A055400(n))` -/
def P609232656784296333.Spec : Prop :=
  ∀ n, P609232656784296333.a n = A010057 n

end A010057

/-! ## A010057.P17842090909100630329

`A000007(A074989(n))`
-/

namespace A010057.P17842090909100630329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A074989 n).toNat

end

end A010057.P17842090909100630329

namespace A010057

/-- `A000007(A074989(n))` -/
def P17842090909100630329.Spec : Prop :=
  ∀ n, P17842090909100630329.a n = A010057 n

end A010057

/-! ## A010057.P6385383005086680529

`A059620(A175365(n))`
-/

namespace A010057.P6385383005086680529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 (A175365 n).toNat

end

end A010057.P6385383005086680529

namespace A010057

/-- `A059620(A175365(n))` -/
def P6385383005086680529.Spec : Prop :=
  ∀ n, P6385383005086680529.a n = A010057 n

end A010057

/-! ## A010057.P16893280372703055600

`A329678(A055401(n)²)`
-/

namespace A010057.P16893280372703055600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A055401 n ^ 2).toNat

end

end A010057.P16893280372703055600

namespace A010057

/-- `A329678(A055401(n)²)` -/
def P16893280372703055600.Spec : Prop :=
  ∀ n, P16893280372703055600.a n = A010057 n

end A010057

/-! ## A010057.P6829872756720780077

`A329678(A055401(n)+2)`
-/

namespace A010057.P6829872756720780077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A055401 n + 2).toNat

end

end A010057.P6829872756720780077

namespace A010057

/-- `A329678(A055401(n)+2)` -/
def P6829872756720780077.Spec : Prop :=
  ∀ n, P6829872756720780077.a n = A010057 n

end A010057

/-! ## A010057.P8937878184025706594

`A329678(2*A055401(n))`
-/

namespace A010057.P8937878184025706594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (2 * A055401 n).toNat

end

end A010057.P8937878184025706594

namespace A010057

/-- `A329678(2*A055401(n))` -/
def P8937878184025706594.Spec : Prop :=
  ∀ n, P8937878184025706594.a n = A010057 n

end A010057

/-! ## A010057.P17676948292313128670

`C(n, A277494(n))`
-/

namespace A010057.P17676948292313128670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A277494 n).toNat

end

end A010057.P17676948292313128670

namespace A010057

/-- `C(n, A277494(n))` -/
def P17676948292313128670.Spec : Prop :=
  ∀ n, (P17676948292313128670.a n : ℤ) = A010057 n

end A010057

/-! ## A010057.P1075292277952613838

`C(n, A178983(n))`
-/

namespace A010057.P1075292277952613838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A178983 n).toNat

end

end A010057.P1075292277952613838

namespace A010057

/-- `C(n, A178983(n))` -/
def P1075292277952613838.Spec : Prop :=
  ∀ n, (P1075292277952613838.a n : ℤ) = A010057 n

end A010057

/-!
# A010058: 1 if n is a Catalan number else 0.

The programs for A010058, the canonical program `A010058.P9795488456409401604` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010058 has offset 0).

The definition of A010058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010058.P9795488456409401604

`char[A000108(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010058

/-- `char[A000108(n)]` -/
def P9795488456409401604.Spec : Prop :=
  ∀ n, (P9795488456409401604.a n : ℤ) = A010058 n

theorem P9795488456409401604.correct : P9795488456409401604.Spec := by
  intro n
  simp only [A010058]

end A010058

/-! ## A010058.P1934855659685772482

`char[A099363(n)]`
-/

namespace A010058.P1934855659685772482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P1934855659685772482

namespace A010058

/-- `char[A099363(n)]` -/
def P1934855659685772482.Spec : Prop :=
  ∀ n, (P1934855659685772482.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P3078230703391313303

`char[A099364(n)]`
-/

namespace A010058.P3078230703391313303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P3078230703391313303

namespace A010058

/-- `char[A099364(n)]` -/
def P3078230703391313303.Spec : Prop :=
  ∀ n, (P3078230703391313303.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P8433311427411186183

`char[A120588(n)]`
-/

namespace A010058.P8433311427411186183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P8433311427411186183

namespace A010058

/-- `char[A120588(n)]` -/
def P8433311427411186183.Spec : Prop :=
  ∀ n, (P8433311427411186183.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P8810815689233848498

`char[A208355(n)]`
-/

namespace A010058.P8810815689233848498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P8810815689233848498

namespace A010058

/-- `char[A208355(n)]` -/
def P8810815689233848498.Spec : Prop :=
  ∀ n, (P8810815689233848498.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P8646644538389852814

`char[A211216(n)]`
-/

namespace A010058.P8646644538389852814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P8646644538389852814

namespace A010058

/-- `char[A211216(n)]` -/
def P8646644538389852814.Spec : Prop :=
  ∀ n, (P8646644538389852814.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P9110950661616973875

`char[-A106270(n)]`
-/

namespace A010058.P9110950661616973875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106270 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P9110950661616973875

namespace A010058

/-- `char[-A106270(n)]` -/
def P9110950661616973875.Spec : Prop :=
  ∀ n, (P9110950661616973875.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P18176516021424147091

`char[A008313(n²)]`
-/

namespace A010058.P18176516021424147091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P18176516021424147091

namespace A010058

/-- `char[A008313(n²)]` -/
def P18176516021424147091.Spec : Prop :=
  ∀ n, (P18176516021424147091.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P17694337914796688976

`char[A091894(n²)]`
-/

namespace A010058.P17694337914796688976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091894 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P17694337914796688976

namespace A010058

/-- `char[A091894(n²)]` -/
def P17694337914796688976.Spec : Prop :=
  ∀ n, (P17694337914796688976.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P12268434524192970409

`char[A296666(n²)]`
-/

namespace A010058.P12268434524192970409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296666 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P12268434524192970409

namespace A010058

/-- `char[A296666(n²)]` -/
def P12268434524192970409.Spec : Prop :=
  ∀ n, (P12268434524192970409.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P17288692445379526164

`char[A028364(∑[n])]`
-/

namespace A010058.P17288692445379526164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P17288692445379526164

namespace A010058

/-- `char[A028364(∑[n])]` -/
def P17288692445379526164.Spec : Prop :=
  ∀ n, (P17288692445379526164.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P12497200590307917735

`char[A039599(∑[n])]`
-/

namespace A010058.P12497200590307917735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P12497200590307917735

namespace A010058

/-- `char[A039599(∑[n])]` -/
def P12497200590307917735.Spec : Prop :=
  ∀ n, (P12497200590307917735.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P14604535498191183435

`char[A078391(∑[n])]`
-/

namespace A010058.P14604535498191183435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P14604535498191183435

namespace A010058

/-- `char[A078391(∑[n])]` -/
def P14604535498191183435.Spec : Prop :=
  ∀ n, (P14604535498191183435.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P10569604594890660819

`char[A085880(∑[n])]`
-/

namespace A010058.P10569604594890660819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P10569604594890660819

namespace A010058

/-- `char[A085880(∑[n])]` -/
def P10569604594890660819.Spec : Prop :=
  ∀ n, (P10569604594890660819.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P3849253323722204772

`char[A104978(∑[n])]`
-/

namespace A010058.P3849253323722204772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P3849253323722204772

namespace A010058

/-- `char[A104978(∑[n])]` -/
def P3849253323722204772.Spec : Prop :=
  ∀ n, (P3849253323722204772.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P304839318107877760

`char[A110488(∑[n])]`
-/

namespace A010058.P304839318107877760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A010058.P304839318107877760

namespace A010058

/-- `char[A110488(∑[n])]` -/
def P304839318107877760.Spec : Prop :=
  ∀ n, (P304839318107877760.a n : ℤ) = A010058 n

end A010058

/-! ## A010058.P3370096597876496180

`A085200(A085200(A236855(n)²))`
-/

namespace A010058.P3370096597876496180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085200 (A085200 (A236855 n ^ 2).toNat).toNat

end

end A010058.P3370096597876496180

namespace A010058

/-- `A085200(A085200(A236855(n)²))` -/
def P3370096597876496180.Spec : Prop :=
  ∀ n, P3370096597876496180.a n = A010058 n

end A010058

/-!
# A010059: Another version of the Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 0's and 1's.

The programs for A010059, the canonical program `A010059.P6338678923093357896` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010059 has offset 0).

The definition of A010059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010059.P6338678923093357896

`1-A010060(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A010059

/-- `1-A010060(n)` -/
def P6338678923093357896.Spec : Prop :=
  ∀ n, P6338678923093357896.a n = A010059 n

theorem P6338678923093357896.correct : P6338678923093357896.Spec := by
  intro n
  simp only [A010059]

end A010059

/-! ## A010059.P1550237649700356194

`(A106400(n)+1)/2`
-/

namespace A010059.P1550237649700356194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106400 n + 1 : ℚ) / 2

end

end A010059.P1550237649700356194

namespace A010059

/-- `(A106400(n)+1)/2` -/
def P1550237649700356194.Spec : Prop :=
  ∀ n, P1550237649700356194.a n = (A010059 n : ℚ)

theorem P1550237649700356194.correct : P1550237649700356194.Spec := by
  intro n
  simp only [A010059, Nat.add_sub_cancel, A010059.P1550237649700356194.a, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A106400, A106400.P11201390576172776043.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A010059

/-! ## A010059.P17263537930812794178

`(1+(-1)^A000120(n))/2`
-/

namespace A010059.P17263537930812794178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1 : ℚ) ^ (A000120 n : ℤ)) / 2

end

end A010059.P17263537930812794178

namespace A010059

/-- `(1+(-1)^A000120(n))/2` -/
def P17263537930812794178.Spec : Prop :=
  ∀ n, P17263537930812794178.a n = (A010059 n : ℚ)

end A010059

/-! ## A010059.P15296582650866903846

`A059448(A054429(n+1)+1)`
-/

namespace A010059.P15296582650866903846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (A054429 (n + 1) + 1).toNat

end

end A010059.P15296582650866903846

namespace A010059

/-- `A059448(A054429(n+1)+1)` -/
def P15296582650866903846.Spec : Prop :=
  ∀ n, P15296582650866903846.a n = A010059 n

end A010059

/-! ## A010059.P3751200777034507472

`(1+A008836(A005940(1+n)))/2`
-/

namespace A010059.P3751200777034507472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A008836 (A005940 (1 + n)).toNat : ℚ) / 2

end

end A010059.P3751200777034507472

namespace A010059

/-- `(1+A008836(A005940(1+n)))/2` -/
def P3751200777034507472.Spec : Prop :=
  ∀ n, P3751200777034507472.a n = (A010059 n : ℚ)

end A010059

/-! ## A010059.P9345851811342853227

`char[xor(n, 2*n)]`
-/

namespace A010059.P9345851811342853227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A010059.P9345851811342853227

namespace A010059

/-- `char[xor(n, 2*n)]` -/
def P9345851811342853227.Spec : Prop :=
  ∀ n, (P9345851811342853227.a n : ℤ) = A010059 n

end A010059

/-! ## A010059.P16797835584553253200

`comp[xor(n, 2*n)]%2`
-/

namespace A010059.P16797835584553253200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A010059.P16797835584553253200

namespace A010059

/-- `comp[xor(n, 2*n)]%2` -/
def P16797835584553253200.Spec : Prop :=
  ∀ n, (P16797835584553253200.a n : ℤ) = A010059 n

end A010059

/-! ## A010059.P3490121385914216173

`and(1, comp[xor(n, 2*n)])`
-/

namespace A010059.P3490121385914216173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A010059.P3490121385914216173

namespace A010059

/-- `and(1, comp[xor(n, 2*n)])` -/
def P3490121385914216173.Spec : Prop :=
  ∀ n, (P3490121385914216173.a n : ℤ) = A010059 n

end A010059

/-! ## A010059.P8187950994671726975

`1-a(and(n, n-1))` with `a(0)=1`
-/

namespace A010059.P8187950994671726975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A010059.P8187950994671726975

namespace A010059

/-- `1-a(and(n, n-1))` -/
def P8187950994671726975.Spec : Prop :=
  ∀ n, P8187950994671726975.a n = A010059 n

end A010059

/-! ## A010059.P129925612784478807

`∑[∏{e}[xor(n, -n), #]]%2`
-/

namespace A010059.P129925612784478807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A010059.P129925612784478807

namespace A010059

/-- `∑[∏{e}[xor(n, -n), #]]%2` -/
def P129925612784478807.Spec : Prop :=
  ∀ n, (P129925612784478807.a n : ℤ) = A010059 n

end A010059

/-! ## A010059.P8754231552761963814

`and(1, ∑[∏{e}[xor(n, -n), #]])`
-/

namespace A010059.P8754231552761963814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010059.P8754231552761963814

namespace A010059

/-- `and(1, ∑[∏{e}[xor(n, -n), #]])` -/
def P8754231552761963814.Spec : Prop :=
  ∀ n, (P8754231552761963814.a n : ℤ) = A010059 n

end A010059

/-! ## A010059.P13683850002581218078

`(a(floor(n/2))+n)%2` with `a(0)=1`
-/

namespace A010059.P13683850002581218078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + n) % 2

end

end A010059.P13683850002581218078

namespace A010059

/-- `(a(floor(n/2))+n)%2` -/
def P13683850002581218078.Spec : Prop :=
  ∀ n, (P13683850002581218078.a n : ℤ) = A010059 n

end A010059

/-! ## A010059.P7350760468444398661

`(n-a(floor(n/2)))%2` with `a(0)=1`
-/

namespace A010059.P7350760468444398661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat) 2

end

end A010059.P7350760468444398661

namespace A010059

/-- `(n-a(floor(n/2)))%2` -/
def P7350760468444398661.Spec : Prop :=
  ∀ n, P7350760468444398661.a n = A010059 n

end A010059

/-! ## A010059.P5672255644699181087

`1-char[xor(n, n+1+n)]`
-/

namespace A010059.P5672255644699181087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A010059.P5672255644699181087

namespace A010059

/-- `1-char[xor(n, n+1+n)]` -/
def P5672255644699181087.Spec : Prop :=
  ∀ n, P5672255644699181087.a n = A010059 n

end A010059

/-! ## A010059.P8756360613877995839

`comp[xor(n, 2*n)]-2*n`
-/

namespace A010059.P8756360613877995839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (2 * n : ℤ)

end

end A010059.P8756360613877995839

namespace A010059

/-- `comp[xor(n, 2*n)]-2*n` -/
def P8756360613877995839.Spec : Prop :=
  ∀ n, P8756360613877995839.a n = A010059 n

end A010059

/-! ## A010059.P6429776256472647428

`xor(2*n, comp[xor(n, 2*n)])`
-/

namespace A010059.P6429776256472647428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A010059.P6429776256472647428

namespace A010059

/-- `xor(2*n, comp[xor(n, 2*n)])` -/
def P6429776256472647428.Spec : Prop :=
  ∀ n, (P6429776256472647428.a n : ℤ) = A010059 n

end A010059

/-! ## A010059.P16991561639495306505

`∑[1-∑{e}[or(n, -n), #]]%2`
-/

namespace A010059.P16991561639495306505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A010059.P16991561639495306505

namespace A010059

/-- `∑[1-∑{e}[or(n, -n), #]]%2` -/
def P16991561639495306505.Spec : Prop :=
  ∀ n, P16991561639495306505.a n = A010059 n

end A010059

/-! ## A010059.P2498388172605803845

`and(1, ∑[1-∑{e}[or(n, -n), #]])`
-/

namespace A010059.P2498388172605803845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010059.P2498388172605803845

namespace A010059

/-- `and(1, ∑[1-∑{e}[or(n, -n), #]])` -/
def P2498388172605803845.Spec : Prop :=
  ∀ n, P2498388172605803845.a n = A010059 n

end A010059

/-! ## A010059.P11827439513536368521

`2-gcd(2, a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A010059.P11827439513536368521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (Int.gcd 2 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) : ℤ)

end

end A010059.P11827439513536368521

namespace A010059

/-- `2-gcd(2, a(floor(n/2))+n)` -/
def P11827439513536368521.Spec : Prop :=
  ∀ n, P11827439513536368521.a n = A010059 n

end A010059

/-!
# A010060: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 0 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 0's and 1's.

The programs for A010060, the canonical program `A010060.P3080921269106500717` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010060 has offset 0).

The definition of A010060 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A010060.anchor (n : ℕ) : A010060 n = (((Nat.digits 2 n).sum % 2 : ℕ) : ℤ)` in `Proof.A010.A010060`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010060.P1837886045034778280

`A001285(n)-1`
-/

namespace A010060.P1837886045034778280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - 1

end

end A010060.P1837886045034778280

namespace A010060

/-- `A001285(n)-1` -/
def P1837886045034778280.Spec : Prop :=
  ∀ n, P1837886045034778280.a n = A010060 n

theorem P1837886045034778280.correct : P1837886045034778280.Spec := by
  intro n
  simp only [A010060, Nat.add_sub_cancel, A010060.P1837886045034778280.a, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A001285, A001285.P11616636227895161122.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A010060

/-! ## A010060.P17014653467983254048

`1-A010059(n)`
-/

namespace A010060.P17014653467983254048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010059 n

end

end A010060.P17014653467983254048

namespace A010060

/-- `1-A010059(n)` -/
def P17014653467983254048.Spec : Prop :=
  ∀ n, P17014653467983254048.a n = A010060 n

theorem P17014653467983254048.correct : P17014653467983254048.Spec := by
  intro n
  simp only [A010060, Nat.add_sub_cancel, A010060.P17014653467983254048.a, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A010059, A010059.P6338678923093357896.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A010060

/-! ## A010060.P3312726502291887049

`A001969(n+1)-2*n`
-/

namespace A010060.P3312726502291887049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) - (2 * n : ℤ)

end

end A010060.P3312726502291887049

namespace A010060

/-- `A001969(n+1)-2*n` -/
def P3312726502291887049.Spec : Prop :=
  ∀ n, P3312726502291887049.a n = A010060 n

theorem P3312726502291887049.correct : P3312726502291887049.Spec := by
  intro n
  simp only [A010060, Nat.add_sub_cancel, A010060.P3312726502291887049.a, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A001969, A001969.P9139304774861292784.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A010060

/-! ## A010060.P3080921269106500717

`A000035(A000120(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010060

/-- `A000035(A000120(n))` -/
def P3080921269106500717.Spec : Prop :=
  ∀ n, P3080921269106500717.a n = A010060 n

theorem P3080921269106500717.correct : P3080921269106500717.Spec := by
  intro n
  simp only [A010060]

end A010060

/-! ## A010060.P3474851809658851365

`A000035(A193231(n))`
-/

namespace A010060.P3474851809658851365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A193231 n).toNat

end

end A010060.P3474851809658851365

namespace A010060

/-- `A000035(A193231(n))` -/
def P3474851809658851365.Spec : Prop :=
  ∀ n, P3474851809658851365.a n = A010060 n

end A010060

/-! ## A010060.P3646386742662196649

`char[comp[xor(n, 2*n)]]`
-/

namespace A010060.P3646386742662196649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A010060.P3646386742662196649

namespace A010060

/-- `char[comp[xor(n, 2*n)]]` -/
def P3646386742662196649.Spec : Prop :=
  ∀ n, (P3646386742662196649.a n : ℤ) = A010060 n

end A010060

/-! ## A010060.P16910929638088916000

`char[xor(n, 2*n+1)]`
-/

namespace A010060.P16910929638088916000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A010060.P16910929638088916000

namespace A010060

/-- `char[xor(n, 2*n+1)]` -/
def P16910929638088916000.Spec : Prop :=
  ∀ n, (P16910929638088916000.a n : ℤ) = A010060 n

end A010060

/-! ## A010060.P3239222264593001330

`1-char[xor(n, 2*n)]`
-/

namespace A010060.P3239222264593001330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A010060.P3239222264593001330

namespace A010060

/-- `1-char[xor(n, 2*n)]` -/
def P3239222264593001330.Spec : Prop :=
  ∀ n, P3239222264593001330.a n = A010060 n

end A010060

/-! ## A010060.P7505822753786428840

`xor(1, char[xor(n, 2*n)])`
-/

namespace A010060.P7505822753786428840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A010060.P7505822753786428840

namespace A010060

/-- `xor(1, char[xor(n, 2*n)])` -/
def P7505822753786428840.Spec : Prop :=
  ∀ n, (P7505822753786428840.a n : ℤ) = A010060 n

end A010060

/-! ## A010060.P1353889857531653871

`1-a(and(n, n-1))` with `a(0)=0`
-/

namespace A010060.P1353889857531653871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A010060.P1353889857531653871

namespace A010060

/-- `1-a(and(n, n-1))` -/
def P1353889857531653871.Spec : Prop :=
  ∀ n, P1353889857531653871.a n = A010060 n

end A010060

/-! ## A010060.P3118553826813026296

`(a(floor(n/2))+n)%2` with `a(0)=0`
-/

namespace A010060.P3118553826813026296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + n) % 2

end

end A010060.P3118553826813026296

namespace A010060

/-- `(a(floor(n/2))+n)%2` -/
def P3118553826813026296.Spec : Prop :=
  ∀ n, (P3118553826813026296.a n : ℤ) = A010060 n

end A010060

/-! ## A010060.P2198524773485522364

`(n-a(floor(n/2)))%2` with `a(0)=0`
-/

namespace A010060.P2198524773485522364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat) 2

end

end A010060.P2198524773485522364

namespace A010060

/-- `(n-a(floor(n/2)))%2` -/
def P2198524773485522364.Spec : Prop :=
  ∀ n, P2198524773485522364.a n = A010060 n

end A010060

/-! ## A010060.P8807156368106347991

`comp[xor(n, 2*n+1)]%2`
-/

namespace A010060.P8807156368106347991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A010060.P8807156368106347991

namespace A010060

/-- `comp[xor(n, 2*n+1)]%2` -/
def P8807156368106347991.Spec : Prop :=
  ∀ n, (P8807156368106347991.a n : ℤ) = A010060 n

end A010060

/-! ## A010060.P3176856160927981513

`and(1, comp[xor(n, 2*n+1)])`
-/

namespace A010060.P3176856160927981513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A010060.P3176856160927981513

namespace A010060

/-- `and(1, comp[xor(n, 2*n+1)])` -/
def P3176856160927981513.Spec : Prop :=
  ∀ n, (P3176856160927981513.a n : ℤ) = A010060 n

end A010060

/-! ## A010060.P17393006718494609571

`C(2*n, comp[xor(n, 2*n)])`
-/

namespace A010060.P17393006718494609571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A010060.P17393006718494609571

namespace A010060

/-- `C(2*n, comp[xor(n, 2*n)])` -/
def P17393006718494609571.Spec : Prop :=
  ∀ n, (P17393006718494609571.a n : ℤ) = A010060 n

end A010060

/-! ## A010060.P12086589181214490722

`∑[a(∑[n]%n)+1]%2` with `a(0)=2`
-/

namespace A010060.P12086589181214490722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A010060.P12086589181214490722

namespace A010060

/-- `∑[a(∑[n]%n)+1]%2` -/
def P12086589181214490722.Spec : Prop :=
  ∀ n, (P12086589181214490722.a n : ℤ) = A010060 n

end A010060

/-! ## A010060.P7940494819178261908

`2-gcd(2, a(floor(n/2))+n)` with `a(0)=0`
-/

namespace A010060.P7940494819178261908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (Int.gcd 2 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) : ℤ)

end

end A010060.P7940494819178261908

namespace A010060

/-- `2-gcd(2, a(floor(n/2))+n)` -/
def P7940494819178261908.Spec : Prop :=
  ∀ n, P7940494819178261908.a n = A010060 n

end A010060

/-! ## A010060.P1461572042010671373

`char[xor(n+1, n+1+n)+1]`
-/

namespace A010060.P1461572042010671373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 1 + n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A010060.P1461572042010671373

namespace A010060

/-- `char[xor(n+1, n+1+n)+1]` -/
def P1461572042010671373.Spec : Prop :=
  ∀ n, (P1461572042010671373.a n : ℤ) = A010060 n

end A010060

/-! ## A010060.P6424848467647783078

`2*n+1-comp[xor(n, 2*n)]`
-/

namespace A010060.P6424848467647783078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A010060.P6424848467647783078

namespace A010060

/-- `2*n+1-comp[xor(n, 2*n)]` -/
def P6424848467647783078.Spec : Prop :=
  ∀ n, P6424848467647783078.a n = A010060 n

end A010060

/-!
# A010061: Binary self or Colombian numbers: numbers that cannot be expressed as the sum of distinct terms of the form 2^k+1 (k>=0), or equivalently, numbers not of form m + sum of binary digits of m.

The programs for A010061, the canonical program `A010061.P12788892755683281699` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010061 has offset 1).

The definition of A010061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010061.P12788892755683281699

`comp[a(n-1)+2-val(n, 2)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010061

/-- `comp[a(n-1)+2-val(n, 2)]` -/
def P12788892755683281699.Spec : Prop :=
  ∀ n, (P12788892755683281699.a n : ℤ) = A010061 (n + 1)

theorem P12788892755683281699.correct : P12788892755683281699.Spec := by
  intro n
  simp only [A010061, Nat.add_sub_cancel]

end A010061

/-! ## A010061.P7107710620722182754

`A230301(n+1)-1`
-/

namespace A010061.P7107710620722182754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230301 (n + 1) - 1

end

end A010061.P7107710620722182754

namespace A010061

/-- `A230301(n+1)-1` -/
def P7107710620722182754.Spec : Prop :=
  ∀ n, P7107710620722182754.a n = A010061 (n + 1)

theorem P7107710620722182754.correct : P7107710620722182754.Spec := by
  intro n
  simp only [A010061, Nat.add_sub_cancel, A010061.P7107710620722182754.a, A010061.P12788892755683281699.f1, A010061.P12788892755683281699.a, A230301, A230301.P11949614508306179088.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A010061

/-! ## A010061.P15785446745664985339

`comp[A228082(n+1)]`
-/

namespace A010061.P15785446745664985339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010061.P15785446745664985339

namespace A010061

/-- `comp[A228082(n+1)]` -/
def P15785446745664985339.Spec : Prop :=
  ∀ n, (P15785446745664985339.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P12477870337104199489

`record[(A228082(n+1)+1)%A228082(n+2)]`
-/

namespace A010061.P12477870337104199489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228082 (n + 1) + 1) (A228082 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010061.P12477870337104199489

namespace A010061

/-- `record[(A228082(n+1)+1)%A228082(n+2)]` -/
def P12477870337104199489.Spec : Prop :=
  ∀ n, P12477870337104199489.a n = A010061 (n + 1)

end A010061

/-! ## A010061.P5095800943140500785

`eq[1, A227643(n+1)]+1`
-/

namespace A010061.P5095800943140500785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A010061.P5095800943140500785

namespace A010061

/-- `eq[1, A227643(n+1)]+1` -/
def P5095800943140500785.Spec : Prop :=
  ∀ n, (P5095800943140500785.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P3621684634138984768

`A023443(A230301(n+1))`
-/

namespace A010061.P3621684634138984768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A230301 (n + 1)).toNat

end

end A010061.P3621684634138984768

namespace A010061

/-- `A023443(A230301(n+1))` -/
def P3621684634138984768.Spec : Prop :=
  ∀ n, P3621684634138984768.a n = A010061 (n + 1)

end A010061

/-! ## A010061.P6669341722733002399

`eq[A054977(n), A227643(n)]`
-/

namespace A010061.P6669341722733002399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P6669341722733002399

namespace A010061

/-- `eq[A054977(n), A227643(n)]` -/
def P6669341722733002399.Spec : Prop :=
  ∀ n, (P6669341722733002399.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P9305985292100656123

`eq[A057427(n), A227643(n)]`
-/

namespace A010061.P9305985292100656123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P9305985292100656123

namespace A010061

/-- `eq[A057427(n), A227643(n)]` -/
def P9305985292100656123.Spec : Prop :=
  ∀ n, (P9305985292100656123.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P1559765435762851734

`eq[A158388(n), A227643(n)]`
-/

namespace A010061.P1559765435762851734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P1559765435762851734

namespace A010061

/-- `eq[A158388(n), A227643(n)]` -/
def P1559765435762851734.Spec : Prop :=
  ∀ n, (P1559765435762851734.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P18433805155922765513

`eq[A164349(n), A227643(n)]`
-/

namespace A010061.P18433805155922765513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P18433805155922765513

namespace A010061

/-- `eq[A164349(n), A227643(n)]` -/
def P18433805155922765513.Spec : Prop :=
  ∀ n, (P18433805155922765513.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P17493205070235670331

`eq[A227643(n), A334820(n)]`
-/

namespace A010061.P17493205070235670331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334820 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P17493205070235670331

namespace A010061

/-- `eq[A227643(n), A334820(n)]` -/
def P17493205070235670331.Spec : Prop :=
  ∀ n, (P17493205070235670331.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P4717086340463712060

`eq[A132126(n+1), A227643(n)]`
-/

namespace A010061.P4717086340463712060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P4717086340463712060

namespace A010061

/-- `eq[A132126(n+1), A227643(n)]` -/
def P4717086340463712060.Spec : Prop :=
  ∀ n, (P4717086340463712060.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P3890508325380468498

`eq[A227643(n), A267084(n+1)]`
-/

namespace A010061.P3890508325380468498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P3890508325380468498

namespace A010061

/-- `eq[A227643(n), A267084(n+1)]` -/
def P3890508325380468498.Spec : Prop :=
  ∀ n, (P3890508325380468498.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P16600654923222331458

`eq[0, A228085(n)]`
-/

namespace A010061.P16600654923222331458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010061.P16600654923222331458

namespace A010061

/-- `eq[0, A228085(n)]` -/
def P16600654923222331458.Spec : Prop :=
  ∀ n, (P16600654923222331458.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P12205123885406408489

`lt[2*A228086(n), n]`
-/

namespace A010061.P12205123885406408489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228086 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010061.P12205123885406408489

namespace A010061

/-- `lt[2*A228086(n), n]` -/
def P12205123885406408489.Spec : Prop :=
  ∀ n, (P12205123885406408489.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P15130408289205313403

`eq[A000007(n), A228086(n)]`
-/

namespace A010061.P15130408289205313403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P15130408289205313403

namespace A010061

/-- `eq[A000007(n), A228086(n)]` -/
def P15130408289205313403.Spec : Prop :=
  ∀ n, (P15130408289205313403.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P7147720856327972243

`eq[A000007(n), A228087(n)]`
-/

namespace A010061.P7147720856327972243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P7147720856327972243

namespace A010061

/-- `eq[A000007(n), A228087(n)]` -/
def P7147720856327972243.Spec : Prop :=
  ∀ n, (P7147720856327972243.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P14239078778265441019

`eq[A000038(n), A228086(n)]`
-/

namespace A010061.P14239078778265441019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P14239078778265441019

namespace A010061

/-- `eq[A000038(n), A228086(n)]` -/
def P14239078778265441019.Spec : Prop :=
  ∀ n, (P14239078778265441019.a n : ℤ) = A010061 (n + 1)

end A010061

/-! ## A010061.P3826420518264757439

`eq[A000038(n), A228087(n)]`
-/

namespace A010061.P3826420518264757439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010061.P3826420518264757439

namespace A010061

/-- `eq[A000038(n), A228087(n)]` -/
def P3826420518264757439.Spec : Prop :=
  ∀ n, (P3826420518264757439.a n : ℤ) = A010061 (n + 1)

end A010061

/-!
# A010062: a(0)=1; thereafter a(n+1) = a(n) + number of 1's in binary representation of a(n).

The programs for A010062, the canonical program `A010062.P15615876908879694029` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010062 has offset 0).

The definition of A010062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6753 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010062.P3628114701062145051

`∑[A309674(n+1)]`
-/

namespace A010062.P3628114701062145051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010062.P3628114701062145051

namespace A010062

/-- `∑[A309674(n+1)]` -/
def P3628114701062145051.Spec : Prop :=
  ∀ n, P3628114701062145051.a n = A010062 n

end A010062

/-! ## A010062.P4358965249423021057

`A230088(n+1)-(A309674(n+2)+A230088(n))`
-/

namespace A010062.P4358965249423021057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230088 (n + 1) - (A309674 (n + 2) + A230088 n)

end

end A010062.P4358965249423021057

namespace A010062

/-- `A230088(n+1)-(A309674(n+2)+A230088(n))` -/
def P4358965249423021057.Spec : Prop :=
  ∀ n, P4358965249423021057.a n = A010062 n

end A010062

/-! ## A010062.P15615876908879694029

`A001222(A001316(a(n-1)))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A010062

/-- `A001222(A001316(a(n-1)))+a(n-1)` -/
def P15615876908879694029.Spec : Prop :=
  ∀ n, P15615876908879694029.a n = A010062 n

theorem P15615876908879694029.correct : P15615876908879694029.Spec := by
  intro n
  simp only [A010062]

end A010062

/-! ## A010062.P9939119652168443544

`3*a(n-1)-A005187(a(n-1))` with `a(0)=1`
-/

namespace A010062.P9939119652168443544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A005187 (a (n - 1)).toNat

end

end A010062.P9939119652168443544

namespace A010062

/-- `3*a(n-1)-A005187(a(n-1))` -/
def P9939119652168443544.Spec : Prop :=
  ∀ n, P9939119652168443544.a n = A010062 n

end A010062

/-! ## A010062.P7137191443442919722

`A092391(a(n-1))` with `a(0)=1`
-/

namespace A010062.P7137191443442919722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092391 (a (n - 1)).toNat

end

end A010062.P7137191443442919722

namespace A010062

/-- `A092391(a(n-1))` -/
def P7137191443442919722.Spec : Prop :=
  ∀ n, P7137191443442919722.a n = A010062 n

end A010062

/-! ## A010062.P179212994845841475

`A000120(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010062.P179212994845841475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000120 (a (n - 1)).toNat + a (n - 1)

end

end A010062.P179212994845841475

namespace A010062

/-- `A000120(a(n-1))+a(n-1)` -/
def P179212994845841475.Spec : Prop :=
  ∀ n, P179212994845841475.a n = A010062 n

end A010062

/-! ## A010062.P15096942691123953191

`a(n-1)+a(n-1)-A011371(a(n-1))` with `a(0)=1`
-/

namespace A010062.P15096942691123953191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A011371 (a (n - 1)).toNat)

end

end A010062.P15096942691123953191

namespace A010062

/-- `a(n-1)+a(n-1)-A011371(a(n-1))` -/
def P15096942691123953191.Spec : Prop :=
  ∀ n, P15096942691123953191.a n = A010062 n

end A010062

/-! ## A010062.P2614425084111247510

`lt[A096303(n+1), 1]+1`
-/

namespace A010062.P2614425084111247510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096303 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A010062.P2614425084111247510

namespace A010062

/-- `lt[A096303(n+1), 1]+1` -/
def P2614425084111247510.Spec : Prop :=
  ∀ n, (P2614425084111247510.a n : ℤ) = A010062 n

end A010062

/-! ## A010062.P13799703256360802249

`A048881(a(n-1)+a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010062.P13799703256360802249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048881 (a (n - 1) + a (n - 1)).toNat + a (n - 1)

end

end A010062.P13799703256360802249

namespace A010062

/-- `A048881(a(n-1)+a(n-1))+a(n-1)` -/
def P13799703256360802249.Spec : Prop :=
  ∀ n, P13799703256360802249.a n = A010062 n

end A010062

/-! ## A010062.P5083974441047202524

`A227361(a(n-1)+a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A010062.P5083974441047202524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A227361 (a (n - 1) + a (n - 1)).toNat - a (n - 1)

end

end A010062.P5083974441047202524

namespace A010062

/-- `A227361(a(n-1)+a(n-1))-a(n-1)` -/
def P5083974441047202524.Spec : Prop :=
  ∀ n, P5083974441047202524.a n = A010062 n

end A010062

/-! ## A010062.P12952866792766928489

`A228083(∑[n]+1)`
-/

namespace A010062.P12952866792766928489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228083 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A010062.P12952866792766928489

namespace A010062

/-- `A228083(∑[n]+1)` -/
def P12952866792766928489.Spec : Prop :=
  ∀ n, P12952866792766928489.a n = A010062 n

end A010062

/-!
# A010063: a(n+1) = a(n) + sum of digits in base 3 representation of a(n), with a(0) = 1.

The programs for A010063, the canonical program `A010063.P7006521606686204256` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010063 has offset 0).

The definition of A010063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010063.P7006521606686204256

`A230641(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A010063

/-- `A230641(a(n-1))` -/
def P7006521606686204256.Spec : Prop :=
  ∀ n, P7006521606686204256.a n = A010063 n

theorem P7006521606686204256.correct : P7006521606686204256.Spec := by
  intro n
  simp only [A010063]

end A010063

/-! ## A010063.P252705019151111682

`A053735(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010063.P252705019151111682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053735 (a (n - 1)).toNat + a (n - 1)

end

end A010063.P252705019151111682

namespace A010063

/-- `A053735(a(n-1))+a(n-1)` -/
def P252705019151111682.Spec : Prop :=
  ∀ n, P252705019151111682.a n = A010063 n

end A010063

/-! ## A010063.P17555734359049921154

`2*(a(n-1)-A054861(a(n-1)))` with `a(0)=1`
-/

namespace A010063.P17555734359049921154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A054861 (a (n - 1)).toNat)

end

end A010063.P17555734359049921154

namespace A010063

/-- `2*(a(n-1)-A054861(a(n-1)))` -/
def P17555734359049921154.Spec : Prop :=
  ∀ n, P17555734359049921154.a n = A010063 n

end A010063

/-! ## A010063.P9805425856909328380

`2*A089792(a(n-1))` with `a(0)=1`
-/

namespace A010063.P9805425856909328380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A089792 (a (n - 1)).toNat

end

end A010063.P9805425856909328380

namespace A010063

/-- `2*A089792(a(n-1))` -/
def P9805425856909328380.Spec : Prop :=
  ∀ n, P9805425856909328380.a n = A010063 n

theorem P9805425856909328380.correct : P9805425856909328380.Spec := by
  intro n
  simp only [A010063, Nat.add_sub_cancel, A010063.P9805425856909328380.a, A010063.P7006521606686204256.a, A089792, A089792.P9464686631977204043.a, A230641, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A010063

/-! ## A010063.P17001100990432815952

`A005843(A089792(a(n-1)))` with `a(0)=1`
-/

namespace A010063.P17001100990432815952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (A089792 (a (n - 1)).toNat).toNat

end

end A010063.P17001100990432815952

namespace A010063

/-- `A005843(A089792(a(n-1)))` -/
def P17001100990432815952.Spec : Prop :=
  ∀ n, P17001100990432815952.a n = A010063 n

end A010063

/-!
# A010064: Base 4 self or Colombian numbers (not of form k + sum of base 4 digits of k).

The programs for A010064, there is no canonical definition to state claims against.
-/

/-! ## A010064.P1375435558352024902

`comp[A349829(n+1)]`
-/

namespace A010064.P1375435558352024902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010064.P1375435558352024902

/-! ## A010064.P10693792593256628155

`eq[1-A230632(n), 1]`
-/

namespace A010064.P10693792593256628155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A230632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A010064.P10693792593256628155

/-! ## A010064.P1902641711532933658

`eq[0, A007318(n)*A230632(n)]`
-/

namespace A010064.P1902641711532933658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010064.P1902641711532933658

/-! ## A010064.P4991828060829939214

`record[A028310(n)-n*A230632(n)]`
-/

namespace A010064.P4991828060829939214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ) * A230632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010064.P4991828060829939214

/-! ## A010064.P4175179130489575713

`record[n-A158463(n)*A230632(n)]`
-/

namespace A010064.P4175179130489575713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A158463 n * A230632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010064.P4175179130489575713

/-! ## A010064.P16072418373474359555

`lt[A228082(n+1)*A230632(n), n]`
-/

namespace A010064.P16072418373474359555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1) * A230632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010064.P16072418373474359555

/-! ## A010064.P16353307557146475031

`eq[2, A151800(A151800(n)*A230632(n))]`
-/

namespace A010064.P16353307557146475031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n * A230632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010064.P16353307557146475031

/-! ## A010064.P445570329640993415

`eq[A082285(n)*A230632(n), A230632(n)]`
-/

namespace A010064.P445570329640993415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082285 n * A230632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010064.P445570329640993415

/-! ## A010064.P8352926787719126892

`comp[A230631(n)]`
-/

namespace A010064.P8352926787719126892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010064.P8352926787719126892

/-! ## A010064.P17638737944681603993

`eq[A018876(n*A230632(n)), A230632(n)]`
-/

namespace A010064.P17638737944681603993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018876 ((n : ℤ) * A230632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010064.P17638737944681603993

/-! ## A010064.P18251593670575485740

`eq[1, A005408(A005408(n)*A230632(n))]`
-/

namespace A010064.P18251593670575485740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n * A230632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010064.P18251593670575485740

/-! ## A010064.P6154624326553865114

`eq[1, A008574(A008574(n)*A230632(n))]`
-/

namespace A010064.P6154624326553865114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008574 n * A230632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010064.P6154624326553865114

/-!
# A010065: a(n+1) = a(n) + sum of digits in base 4 representation of a(n), with a(0) = 1.

The programs for A010065, the canonical program `A010065.P1949019084322697027` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010065 has offset 0).

The definition of A010065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010065.P1949019084322697027

`A230631(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A010065

/-- `A230631(a(n-1))` -/
def P1949019084322697027.Spec : Prop :=
  ∀ n, P1949019084322697027.a n = A010065 n

theorem P1949019084322697027.correct : P1949019084322697027.Spec := by
  intro n
  simp only [A010065]

end A010065

/-! ## A010065.P16876065183288556509

`A053737(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010065.P16876065183288556509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053737 (a (n - 1)).toNat + a (n - 1)

end

end A010065.P16876065183288556509

namespace A010065

/-- `A053737(a(n-1))+a(n-1)` -/
def P16876065183288556509.Spec : Prop :=
  ∀ n, P16876065183288556509.a n = A010065 n

end A010065

/-! ## A010065.P1285297051859886091

`record[A230631(a(A064989(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A010065.P1285297051859886091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A230631 (f1 (A064989 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010065.P1285297051859886091

namespace A010065

/-- `record[A230631(a(A064989(n)))]` -/
def P1285297051859886091.Spec : Prop :=
  ∀ n, P1285297051859886091.a n = A010065 n

end A010065

/-! ## A010065.P1661921519264857305

`a(n-1)+A139352(a(n-1))+A000120(a(n-1))` with `a(0)=1`
-/

namespace A010065.P1661921519264857305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A139352 (a (n - 1)).toNat + A000120 (a (n - 1)).toNat)

end

end A010065.P1661921519264857305

namespace A010065

/-- `a(n-1)+A139352(a(n-1))+A000120(a(n-1))` -/
def P1661921519264857305.Spec : Prop :=
  ∀ n, P1661921519264857305.a n = A010065 n

end A010065

/-! ## A010065.P6208574260453494596

`record[A230631(a(A301336(n)))]` with `a(0)=1`
-/

namespace A010065.P6208574260453494596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A230631 (f1 (A301336 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010065.P6208574260453494596

namespace A010065

/-- `record[A230631(a(A301336(n)))]` -/
def P6208574260453494596.Spec : Prop :=
  ∀ n, P6208574260453494596.a n = A010065 n

end A010065

/-!
# A010066: a(n+1) = a(n) + sum of digits in base 5 representation of a(n).

The programs for A010066, the canonical program `A010066.P7325660255468530179` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010066 has offset 0).

The definition of A010066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010066.P7325660255468530179

`A230865(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A010066

/-- `A230865(a(n-1))` -/
def P7325660255468530179.Spec : Prop :=
  ∀ n, P7325660255468530179.a n = A010066 n

theorem P7325660255468530179.correct : P7325660255468530179.Spec := by
  intro n
  simp only [A010066]

end A010066

/-! ## A010066.P12166091456294714150

`A053824(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010066.P12166091456294714150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053824 (a (n - 1)).toNat + a (n - 1)

end

end A010066.P12166091456294714150

namespace A010066

/-- `A053824(a(n-1))+a(n-1)` -/
def P12166091456294714150.Spec : Prop :=
  ∀ n, P12166091456294714150.a n = A010066 n

end A010066

/-! ## A010066.P11939987415763508923

`A230865(abs(a(A023443(n))))` with `a(0)=1`
-/

namespace A010066.P11939987415763508923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230865 |a (A023443 n).toNat|.toNat

end

end A010066.P11939987415763508923

namespace A010066

/-- `A230865(abs(a(A023443(n))))` -/
def P11939987415763508923.Spec : Prop :=
  ∀ n, P11939987415763508923.a n = A010066 n

end A010066

/-! ## A010066.P16017614150801728981

`A230865(round(a(A023443(n))))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A010066.P16017614150801728981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230865 (a (A023443 n).toNat).toNat

end

end A010066.P16017614150801728981

namespace A010066

/-- `A230865(round(a(A023443(n))))` -/
def P16017614150801728981.Spec : Prop :=
  ∀ n, P16017614150801728981.a n = A010066 n

end A010066

/-! ## A010066.P3623630249710740665

`A004275(A065520(n+1)%A093483(n+1))`
-/

namespace A010066.P3623630249710740665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (A065520 (n + 1)) (A093483 (n + 1))).toNat

end

end A010066.P3623630249710740665

namespace A010066

/-- `A004275(A065520(n+1)%A093483(n+1))` -/
def P3623630249710740665.Spec : Prop :=
  ∀ n, P3623630249710740665.a n = A010066 n

end A010066

/-!
# A010067: Base 6 self or Colombian numbers (not of form k + sum of base 6 digits of k).

The programs for A010067, the canonical program `A010067.P2197668765657089128` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010067 has offset 1).

The definition of A010067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 783 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010067.P5168484989022469320

`comp[A053827(n)+n]`
-/

namespace A010067.P5168484989022469320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010067.P5168484989022469320

namespace A010067

/-- `comp[A053827(n)+n]` -/
def P5168484989022469320.Spec : Prop :=
  ∀ n, (P5168484989022469320.a n : ℤ) = A010067 (n + 1)

end A010067

/-! ## A010067.P2197668765657089128

`lt[char[A053827(n)+n], 1/A055151(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A010067

/-- `lt[char[A053827(n)+n], 1/A055151(n)]` -/
def P2197668765657089128.Spec : Prop :=
  ∀ n, (P2197668765657089128.a n : ℤ) = A010067 (n + 1)

theorem P2197668765657089128.correct : P2197668765657089128.Spec := by
  intro n
  simp only [A010067, Nat.add_sub_cancel]

end A010067

/-! ## A010067.P10292062813021704445

`lt[char[A053827(n)+n]*A096962(n+1), n]`
-/

namespace A010067.P10292062813021704445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A096962 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A010067.P10292062813021704445

namespace A010067

/-- `lt[char[A053827(n)+n]*A096962(n+1), n]` -/
def P10292062813021704445.Spec : Prop :=
  ∀ n, (P10292062813021704445.a n : ℤ) = A010067 (n + 1)

end A010067

/-! ## A010067.P18373910698120360283

`∑[A002487(A003887(n+1)+1)]`
-/

namespace A010067.P18373910698120360283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A003887 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010067.P18373910698120360283

namespace A010067

/-- `∑[A002487(A003887(n+1)+1)]` -/
def P18373910698120360283.Spec : Prop :=
  ∀ n, P18373910698120360283.a n = A010067 (n + 1)

end A010067

/-! ## A010067.P12731274148693307589

`∑[7%A325785(A164314(n+2))]`
-/

namespace A010067.P12731274148693307589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A325785 (A164314 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010067.P12731274148693307589

namespace A010067

/-- `∑[7%A325785(A164314(n+2))]` -/
def P12731274148693307589.Spec : Prop :=
  ∀ n, P12731274148693307589.a n = A010067 (n + 1)

end A010067

/-!
# A010068: a(n+1) = a(n) + sum of digits in base 6 representation of a(n).

The programs for A010068, the canonical program `A010068.P5749664514502212165` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010068 has offset 0).

The definition of A010068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010068.P5749664514502212165

`A053827(a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A010068

/-- `A053827(a(n-1))+a(n-1)` -/
def P5749664514502212165.Spec : Prop :=
  ∀ n, P5749664514502212165.a n = A010068 n

theorem P5749664514502212165.correct : P5749664514502212165.Spec := by
  intro n
  simp only [A010068]

end A010068

/-! ## A010068.P15784102197706168724

`a(n-1)-(1-A173526(a(n-1)+1))` with `a(0)=1`
-/

namespace A010068.P15784102197706168724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (1 - A173526 (a (n - 1) + 1).toNat)

end

end A010068.P15784102197706168724

namespace A010068

/-- `a(n-1)-(1-A173526(a(n-1)+1))` -/
def P15784102197706168724.Spec : Prop :=
  ∀ n, P15784102197706168724.a n = A010068 n

end A010068

/-! ## A010068.P13712498051317653957

`A072175(A365532(n+1))+A000217(n)`
-/

namespace A010068.P13712498051317653957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072175 (A365532 (n + 1)).toNat + A000217 n

end

end A010068.P13712498051317653957

namespace A010068

/-- `A072175(A365532(n+1))+A000217(n)` -/
def P13712498051317653957.Spec : Prop :=
  ∀ n, P13712498051317653957.a n = A010068 n

end A010068

/-!
# A010069: a(n+1) = a(n) + sum of digits in base 7 representation of a(n).

The programs for A010069, the canonical program `A010069.P133090985606594522` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010069 has offset 0).

The definition of A010069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010069.P133090985606594522

`A053828(a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010069

/-- `A053828(a(n-1))+a(n-1)` -/
def P133090985606594522.Spec : Prop :=
  ∀ n, P133090985606594522.a n = A010069 n

theorem P133090985606594522.correct : P133090985606594522.Spec := by
  intro n
  simp only [A010069]

end A010069

/-! ## A010069.P9963419591966896958

`eq[A172359(A035115(n+1)), A291763(n)]`
-/

namespace A010069.P9963419591966896958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172359 (A035115 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010069.P9963419591966896958

namespace A010069

/-- `eq[A172359(A035115(n+1)), A291763(n)]` -/
def P9963419591966896958.Spec : Prop :=
  ∀ n, (P9963419591966896958.a n : ℤ) = A010069 n

end A010069

/-! ## A010069.P15130763920301826433

`eq[A187715(A214956(n+1)), A291763(n)]`
-/

namespace A010069.P15130763920301826433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (A214956 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010069.P15130763920301826433

namespace A010069

/-- `eq[A187715(A214956(n+1)), A291763(n)]` -/
def P15130763920301826433.Spec : Prop :=
  ∀ n, (P15130763920301826433.a n : ℤ) = A010069 n

end A010069

/-! ## A010069.P11527437689971149721

`record[gcd(n+1, A074612(3*n))]`
-/

namespace A010069.P11527437689971149721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A074612 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010069.P11527437689971149721

namespace A010069

/-- `record[gcd(n+1, A074612(3*n))]` -/
def P11527437689971149721.Spec : Prop :=
  ∀ n, (P11527437689971149721.a n : ℤ) = A010069 n

end A010069

/-! ## A010069.P1570837757452829877

`record[A002652(A037462(n))]`
-/

namespace A010069.P1570837757452829877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 (A037462 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010069.P1570837757452829877

namespace A010069

/-- `record[A002652(A037462(n))]` -/
def P1570837757452829877.Spec : Prop :=
  ∀ n, P1570837757452829877.a n = A010069 n

end A010069

/-!
# A010070: Base 8 self or Colombian numbers (not of form k + sum of base 8 digits of k).

The programs for A010070, the canonical program `A010070.P9415386238020052903` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010070 has offset 1).

The definition of A010070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010070.P9415386238020052903

`comp[A173528(n+1)+n-1]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A010070

/-- `comp[A173528(n+1)+n-1]` -/
def P9415386238020052903.Spec : Prop :=
  ∀ n, (P9415386238020052903.a n : ℤ) = A010070 (n + 1)

theorem P9415386238020052903.correct : P9415386238020052903.Spec := by
  intro n
  simp only [A010070, Nat.add_sub_cancel]

end A010070

/-! ## A010070.P9063589602324663661

`∑[∑[A213358(∏{d}[n+1, #])]]`
-/

namespace A010070.P9063589602324663661
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213358 (∏ d ∈ Nat.divisors (f3 n), d)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010070.P9063589602324663661

namespace A010070

/-- `∑[∑[A213358(∏{d}[n+1, #])]]` -/
def P9063589602324663661.Spec : Prop :=
  ∀ n, P9063589602324663661.a n = A010070 (n + 1)

end A010070

/-! ## A010070.P8988427593211032293

`A171722(a(n-1)+3)-1` with `a(0)=1`
-/

namespace A010070.P8988427593211032293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171722 (a (n - 1) + 3).toNat - 1

end

end A010070.P8988427593211032293

namespace A010070

/-- `A171722(a(n-1)+3)-1` -/
def P8988427593211032293.Spec : Prop :=
  ∀ n, P8988427593211032293.a n = A010070 (n + 1)

end A010070

/-! ## A010070.P10248007680276317774

`A143152(A026097(n))`
-/

namespace A010070.P10248007680276317774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143152 (A026097 n).toNat

end

end A010070.P10248007680276317774

namespace A010070

/-- `A143152(A026097(n))` -/
def P10248007680276317774.Spec : Prop :=
  ∀ n, P10248007680276317774.a n = A010070 (n + 1)

end A010070

/-! ## A010070.P17577104464126272931

`∑[∑[A127775(A000085(n))]]`
-/

namespace A010070.P17577104464126272931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (A000085 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010070.P17577104464126272931

namespace A010070

/-- `∑[∑[A127775(A000085(n))]]` -/
def P17577104464126272931.Spec : Prop :=
  ∀ n, P17577104464126272931.a n = A010070 (n + 1)

end A010070

/-!
# A010071: a(n+1) = a(n) + sum of digits in base 8 representation of a(n).

The programs for A010071, the canonical program `A010071.P8562185197263536109` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010071 has offset 0).

The definition of A010071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 735 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010071.P16193057405610766638

`A053829(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A010071.P16193057405610766638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053829 (a (n - 1)).toNat + a (n - 1)

end

end A010071.P16193057405610766638

namespace A010071

/-- `A053829(a(n-1))+a(n-1)` -/
def P16193057405610766638.Spec : Prop :=
  ∀ n, P16193057405610766638.a n = A010071 n

end A010071

/-! ## A010071.P8562185197263536109

`a(n-1)+A173528(a(n-1)+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A010071

/-- `a(n-1)+A173528(a(n-1)+1)-1` -/
def P8562185197263536109.Spec : Prop :=
  ∀ n, P8562185197263536109.a n = A010071 n

theorem P8562185197263536109.correct : P8562185197263536109.Spec := by
  intro n
  simp only [A010071]

end A010071

/-! ## A010071.P3047036393657901097

`A084824(A259201(2*(n+2)))`
-/

namespace A010071.P3047036393657901097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084824 (A259201 (2 * (n + 2) + 20)).toNat

end

end A010071.P3047036393657901097

namespace A010071

/-- `A084824(A259201(2*(n+2)))` -/
def P3047036393657901097.Spec : Prop :=
  ∀ n, P3047036393657901097.a n = A010071 n

end A010071

/-! ## A010071.P14117217661373833996

`record[A120752(n+1)-A223012(n+1)]`
-/

namespace A010071.P14117217661373833996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1) - A223012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010071.P14117217661373833996

namespace A010071

/-- `record[A120752(n+1)-A223012(n+1)]` -/
def P14117217661373833996.Spec : Prop :=
  ∀ n, P14117217661373833996.a n = A010071 n

end A010071

/-!
# A010072: a(n+1) = a(n) + sum of digits in base 9 representation of a(n).

The programs for A010072, the canonical program `A010072.P10490192665339776689` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010072 has offset 0).

The definition of A010072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010072.P10490192665339776689

`A053830(a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A010072

/-- `A053830(a(n-1))+a(n-1)` -/
def P10490192665339776689.Spec : Prop :=
  ∀ n, P10490192665339776689.a n = A010072 n

theorem P10490192665339776689.correct : P10490192665339776689.Spec := by
  intro n
  simp only [A010072]

end A010072

/-! ## A010072.P6098001465226422162

`A053830(a(n-1))-A001489(a(n-1))` with `a(0)=1`
-/

namespace A010072.P6098001465226422162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053830 (a (n - 1)).toNat - A001489 (a (n - 1)).toNat

end

end A010072.P6098001465226422162

namespace A010072

/-- `A053830(a(n-1))-A001489(a(n-1))` -/
def P6098001465226422162.Spec : Prop :=
  ∀ n, P6098001465226422162.a n = A010072 n

end A010072

/-! ## A010072.P4195738701495014213

`lt[A259363(n), A006519(n+1)]+1`
-/

namespace A010072.P4195738701495014213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A010072.P4195738701495014213

namespace A010072

/-- `lt[A259363(n), A006519(n+1)]+1` -/
def P4195738701495014213.Spec : Prop :=
  ∀ n, (P4195738701495014213.a n : ℤ) = A010072 n

end A010072

/-! ## A010072.P12653314583651849526

`record[and(A008458(n), A096603(n+1))]`
-/

namespace A010072.P12653314583651849526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008458 n) (A096603 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010072.P12653314583651849526

namespace A010072

/-- `record[and(A008458(n), A096603(n+1))]` -/
def P12653314583651849526.Spec : Prop :=
  ∀ n, P12653314583651849526.a n = A010072 n

end A010072

/-! ## A010072.P13551152655894900061

`∑[gcd(A011782(n), A272598(2*n+1))]`
-/

namespace A010072.P13551152655894900061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011782 n) (A272598 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010072.P13551152655894900061

namespace A010072

/-- `∑[gcd(A011782(n), A272598(2*n+1))]` -/
def P13551152655894900061.Spec : Prop :=
  ∀ n, (P13551152655894900061.a n : ℤ) = A010072 n

end A010072

/-!
# A010073: a(n) = sum of base-6 digits of a(n-1) + sum of base-6 digits of a(n-2); a(0)=0, a(1)=1.

The programs for A010073, the canonical program `A010073.P17104728851019224169` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010073 has offset 0).

The definition of A010073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010073.P17104728851019224169

`a(n-1)+a(n-2)-5*(floor(a(n-1)/6)+floor(a(n-2)/6))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010073

/-- `a(n-1)+a(n-2)-5*(floor(a(n-1)/6)+floor(a(n-2)/6))` -/
def P17104728851019224169.Spec : Prop :=
  ∀ n, P17104728851019224169.a n = A010073 n

theorem P17104728851019224169.correct : P17104728851019224169.Spec := by
  intro n
  simp only [A010073]

end A010073

/-!
# A010074: a(n) = sum of base-7 digits of a(n-1) + sum of base-7 digits of a(n-2).

The programs for A010074, the canonical program `A010074.P6839260468520047240` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010074 has offset 0).

The definition of A010074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010074.P6839260468520047240

`a(n-1)+a(n-2)-6*(floor(a(n-1)/7)+floor(a(n-2)/7))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010074

/-- `a(n-1)+a(n-2)-6*(floor(a(n-1)/7)+floor(a(n-2)/7))` -/
def P6839260468520047240.Spec : Prop :=
  ∀ n, P6839260468520047240.a n = A010074 n

theorem P6839260468520047240.correct : P6839260468520047240.Spec := by
  intro n
  simp only [A010074]

end A010074

/-!
# A010075: a(n) = sum of base-8 digits of a(n-1) + sum of base-8 digits of a(n-2).

The programs for A010075, the canonical program `A010075.P3459006349990461590` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010075 has offset 0).

The definition of A010075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010075.P3459006349990461590

`a(n-1)+a(n-2)-7*(floor(a(n-1)/8)+floor(a(n-2)/8))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010075

/-- `a(n-1)+a(n-2)-7*(floor(a(n-1)/8)+floor(a(n-2)/8))` -/
def P3459006349990461590.Spec : Prop :=
  ∀ n, P3459006349990461590.a n = A010075 n

theorem P3459006349990461590.correct : P3459006349990461590.Spec := by
  intro n
  simp only [A010075]

end A010075

/-!
# A010076: a(n) = sum of base-9 digits of a(n-1) + sum of base-9 digits of a(n-2).

The programs for A010076, the canonical program `A010076.P9138790686699649697` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010076 has offset 0).

The definition of A010076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010076.P9138790686699649697

`a(n-1)+a(n-2)-8*(floor(a(n-1)/9)+floor(a(n-2)/9))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010076

/-- `a(n-1)+a(n-2)-8*(floor(a(n-1)/9)+floor(a(n-2)/9))` -/
def P9138790686699649697.Spec : Prop :=
  ∀ n, P9138790686699649697.a n = A010076 n

theorem P9138790686699649697.correct : P9138790686699649697.Spec := by
  intro n
  simp only [A010076]

end A010076

/-!
# A010077: a(n) = sum of digits of a(n-1) + sum of digits of a(n-2); a(0) = 0, a(1) = 1.

The programs for A010077, the canonical program `A010077.P15853634980569873792` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010077 has offset 0).

The definition of A010077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010077.P15853634980569873792

`a(n-1)+a(n-2)-9*(floor(a(n-1)/10)+floor(a(n-2)/10))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010077

/-- `a(n-1)+a(n-2)-9*(floor(a(n-1)/10)+floor(a(n-2)/10))` -/
def P15853634980569873792.Spec : Prop :=
  ∀ n, P15853634980569873792.a n = A010077 n

theorem P15853634980569873792.correct : P15853634980569873792.Spec := by
  intro n
  simp only [A010077]

end A010077

/-!
# A010078: Shortest representation of -n in 2's-complement format.

The programs for A010078, the canonical program `A010078.P2731512905775427404` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010078 has offset 1).

The definition of A010078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010078.P5939666550830967689

`log2(gcd(2, n))+2*a(floor(n/2))` with `a(0)=1`
-/

namespace A010078.P5939666550830967689
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A010078.P5939666550830967689

namespace A010078

/-- `log2(gcd(2, n))+2*a(floor(n/2))` -/
def P5939666550830967689.Spec : Prop :=
  ∀ n, P5939666550830967689.a n = (A010078 (n + 1) : ℝ)

end A010078

/-! ## A010078.P2731512905775427404

`∑[∏{p}[2*n, n*val(#², 2)]]-n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010078

/-- `∑[∏{p}[2*n, n*val(#², 2)]]-n` -/
def P2731512905775427404.Spec : Prop :=
  ∀ n, P2731512905775427404.a n = A010078 (n + 1)

theorem P2731512905775427404.correct : P2731512905775427404.Spec := by
  intro n
  simp only [A010078, Nat.add_sub_cancel]

end A010078

/-! ## A010078.P10358538657662305605

`1-(n%2-2*a(floor(n/2)))` with `a(0)=1`
-/

namespace A010078.P10358538657662305605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - 2 * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A010078.P10358538657662305605

namespace A010078

/-- `1-(n%2-2*a(floor(n/2)))` -/
def P10358538657662305605.Spec : Prop :=
  ∀ n, P10358538657662305605.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P16475027405891717969

`(a(n-1)-1+n)%(2*n)+n` with `a(0)=1`
-/

namespace A010078.P16475027405891717969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) - 1 + (n : ℤ)) (2 * n : ℤ) + (n : ℤ)

end

end A010078.P16475027405891717969

namespace A010078

/-- `(a(n-1)-1+n)%(2*n)+n` -/
def P16475027405891717969.Spec : Prop :=
  ∀ n, P16475027405891717969.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P17332338366803101877

`n-(1-a(n-1)-n)%(2*n)` with `a(0)=1`
-/

namespace A010078.P17332338366803101877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.tmod (1 - a (n - 1) - (n : ℤ)) (2 * n : ℤ)

end

end A010078.P17332338366803101877

namespace A010078

/-- `n-(1-a(n-1)-n)%(2*n)` -/
def P17332338366803101877.Spec : Prop :=
  ∀ n, P17332338366803101877.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P18093516119547781191

`or(a(n-1)+n-1, 2*n)-n` with `a(0)=1`
-/

namespace A010078.P18093516119547781191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1) + ((n : ℤ) - 1)) (2 * n : ℤ) - (n : ℤ)

end

end A010078.P18093516119547781191

namespace A010078

/-- `or(a(n-1)+n-1, 2*n)-n` -/
def P18093516119547781191.Spec : Prop :=
  ∀ n, P18093516119547781191.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P6109458757491965265

`or(2*a(floor(n/2)), 2^val(n+1, 2))` with `a(0)=1`
-/

namespace A010078.P6109458757491965265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a ⌊(n : ℚ) / 2⌋.toNat) (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A010078.P6109458757491965265

namespace A010078

/-- `or(2*a(floor(n/2)), 2^val(n+1, 2))` -/
def P6109458757491965265.Spec : Prop :=
  ∀ n, (P6109458757491965265.a n : ℤ) = A010078 (n + 1)

end A010078

/-! ## A010078.P6102151060139533859

`(2*floor(n/a(n-1))+1)*a(n-1)-1` with `a(0)=1`
-/

namespace A010078.P6102151060139533859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * ⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ + 1) * a (n - 1) - 1

end

end A010078.P6102151060139533859

namespace A010078

/-- `(2*floor(n/a(n-1))+1)*a(n-1)-1` -/
def P6102151060139533859.Spec : Prop :=
  ∀ n, P6102151060139533859.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P4666310927044149564

`2*n*floor(n/a(n-1))-(1-a(n-1))` with `a(0)=1`
-/

namespace A010078.P4666310927044149564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) * ⌊(n : ℚ) / (a (n - 1) : ℚ)⌋) - (1 - a (n - 1))

end

end A010078.P4666310927044149564

namespace A010078

/-- `2*n*floor(n/a(n-1))-(1-a(n-1))` -/
def P4666310927044149564.Spec : Prop :=
  ∀ n, P4666310927044149564.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P1786167807519918018

`or(1, A261693(n))+n`
-/

namespace A010078.P1786167807519918018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261693 n) + (n : ℤ)

end

end A010078.P1786167807519918018

namespace A010078

/-- `or(1, A261693(n))+n` -/
def P1786167807519918018.Spec : Prop :=
  ∀ n, P1786167807519918018.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P8637845125279319839

`∑{d}[A062383(n), #]-n`
-/

namespace A010078.P8637845125279319839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - (n : ℤ)

end

end A010078.P8637845125279319839

namespace A010078

/-- `∑{d}[A062383(n), #]-n` -/
def P8637845125279319839.Spec : Prop :=
  ∀ n, P8637845125279319839.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P18276067738733084091

`2*A003817(n)-(n-1)`
-/

namespace A010078.P18276067738733084091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003817 n - ((n : ℤ) - 1)

end

end A010078.P18276067738733084091

namespace A010078

/-- `2*A003817(n)-(n-1)` -/
def P18276067738733084091.Spec : Prop :=
  ∀ n, P18276067738733084091.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P16672325170500370503

`2^A070941(n)-(n+1)`
-/

namespace A010078.P16672325170500370503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A070941 n : ℤ) - (n + 1 : ℚ)

end

end A010078.P16672325170500370503

namespace A010078

/-- `2^A070941(n)-(n+1)` -/
def P16672325170500370503.Spec : Prop :=
  ∀ n, P16672325170500370503.a n = (A010078 (n + 1) : ℚ)

end A010078

/-! ## A010078.P5754856220568323113

`3*n+1-2*A006257(n)`
-/

namespace A010078.P5754856220568323113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - 2 * A006257 n

end

end A010078.P5754856220568323113

namespace A010078

/-- `3*n+1-2*A006257(n)` -/
def P5754856220568323113.Spec : Prop :=
  ∀ n, P5754856220568323113.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P17629596043278878034

`A000203(2^ceil(log2(n+1)))-n`
-/

namespace A010078.P17629596043278878034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat - (n : ℤ)

end

end A010078.P17629596043278878034

namespace A010078

/-- `A000203(2^ceil(log2(n+1)))-n` -/
def P17629596043278878034.Spec : Prop :=
  ∀ n, P17629596043278878034.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P12168452952374904817

`∑[∏{d}[n, 2*A000203(#)%2]]-n`
-/

namespace A010078.P12168452952374904817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), 2 * Int.tmod (A000203 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A010078.P12168452952374904817

namespace A010078

/-- `∑[∏{d}[n, 2*A000203(#)%2]]-n` -/
def P12168452952374904817.Spec : Prop :=
  ∀ n, P12168452952374904817.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P1199798614985837205

`A261693(A028310(n))+n`
-/

namespace A010078.P1199798614985837205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261693 (A028310 n).toNat + (n : ℤ)

end

end A010078.P1199798614985837205

namespace A010078

/-- `A261693(A028310(n))+n` -/
def P1199798614985837205.Spec : Prop :=
  ∀ n, P1199798614985837205.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P5113245781623706320

`A209639(A003817(n))-n`
-/

namespace A010078.P5113245781623706320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 (A003817 n).toNat - (n : ℤ)

end

end A010078.P5113245781623706320

namespace A010078

/-- `A209639(A003817(n))-n` -/
def P5113245781623706320.Spec : Prop :=
  ∀ n, P5113245781623706320.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P16672204402934603855

`or(A035327(n), A062383(n))`
-/

namespace A010078.P16672204402934603855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 n) (A062383 n)

end

end A010078.P16672204402934603855

namespace A010078

/-- `or(A035327(n), A062383(n))` -/
def P16672204402934603855.Spec : Prop :=
  ∀ n, P16672204402934603855.a n = A010078 (n + 1)

end A010078

/-! ## A010078.P15195934488072168434

`A006257(A122155(n+1))+n`
-/

namespace A010078.P15195934488072168434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A122155 (n + 1)).toNat + (n : ℤ)

end

end A010078.P15195934488072168434

namespace A010078

/-- `A006257(A122155(n+1))+n` -/
def P15195934488072168434.Spec : Prop :=
  ∀ n, P15195934488072168434.a n = A010078 (n + 1)

end A010078

/-!
# A010079: Coordination sequence for net formed by holes in D_4 lattice.

The programs for A010079, there is no canonical definition to state claims against.
-/

/-! ## A010079.P15935982027485992983

`A357490(or(A059993(n), A107429(n+1)))`
-/

namespace A010079.P15935982027485992983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357490 (Int.lor (A059993 n) (A107429 (n + 1))).toNat

end

end A010079.P15935982027485992983

/-!
# A010081: Weight distribution of extended Hamming code of length 32 (or 3rd-order Reed-Muller code).

The programs for A010081, there is no canonical definition to state claims against.
-/

/-! ## A010081.P7836684328344252803

`A340312(2*n+36)`
-/

namespace A010081.P7836684328344252803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340312 (2 * n + 36)

end

end A010081.P7836684328344252803

/-! ## A010081.P3798811105852457575

`A010086(2*n)+A010086(A004280(n+1))`
-/

namespace A010081.P3798811105852457575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010086 (2 * n) + A010086 (A004280 (n + 1)).toNat

end

end A010081.P3798811105852457575

/-! ## A010081.P2954077682011828091

`A010091(n)+A010086(A004280(n+1))`
-/

namespace A010081.P2954077682011828091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010091 n + A010086 (A004280 (n + 1)).toNat

end

end A010081.P2954077682011828091

/-!
# A010082: Weight distribution of extended Hamming code of length 64.

The programs for A010082, there is no canonical definition to state claims against.
-/

/-! ## A010082.P14576476804072632706

`A340312(A144396(n+4)+60)`
-/

namespace A010082.P14576476804072632706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340312 (A144396 (n + 4) + 60).toNat

end

end A010082.P14576476804072632706

/-! ## A010082.P10525270366228543836

`A010087(2*n)+A010087(A004280(n+1))`
-/

namespace A010082.P10525270366228543836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010087 (2 * n) + A010087 (A004280 (n + 1)).toNat

end

end A010082.P10525270366228543836

/-! ## A010082.P7838388703033886340

`A340312(lt[A340301(n+1)+A081362(n), n])`
-/

namespace A010082.P7838388703033886340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340301 (n + 1) + A081362 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340312 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A010082.P7838388703033886340

/-! ## A010082.P4408046537043438036

`A010092(n)+A010087(A004280(n+1))`
-/

namespace A010082.P4408046537043438036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010092 n + A010087 (A004280 (n + 1)).toNat

end

end A010082.P4408046537043438036

/-!
# A010084: Weight distribution of extended Hamming code of length 256.

The programs for A010084, there is no canonical definition to state claims against.
-/

/-! ## A010084.P1072584554359504475

`A010095(n)+A010089(A004280(n+1))`
-/

namespace A010084.P1072584554359504475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010095 n + A010089 (A004280 (n + 1)).toNat

end

end A010084.P1072584554359504475

/-!
# A010085: Weight distribution of [15,11,3] Hamming code of length 15 and minimal distance 3.

The programs for A010085, there is no canonical definition to state claims against.
-/

/-! ## A010085.P2941701097565895643

`A340030(A043663(n+1))`
-/

namespace A010085.P2941701097565895643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (A043663 (n + 1)).toNat

end

end A010085.P2941701097565895643

/-! ## A010085.P9268441534117931166

`A340030(xor(31, A077168(n)))`
-/

namespace A010085.P9268441534117931166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (Int.xor 31 (A077168 n)).toNat

end

end A010085.P9268441534117931166

/-! ## A010085.P11311269773855015076

`A340030(A062399(n)+15)`
-/

namespace A010085.P11311269773855015076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (A062399 n + 15).toNat

end

end A010085.P11311269773855015076

/-! ## A010085.P15698763806479284862

`A340030(A045918(n)+5)`
-/

namespace A010085.P15698763806479284862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (A045918 n + 5).toNat

end

end A010085.P15698763806479284862

/-!
# A010086: Weight distribution of d=3 Hamming code of length 31.

The programs for A010086, there is no canonical definition to state claims against.
-/

/-! ## A010086.P8359274399648134805

`A340030(A242474(n+1)+30)`
-/

namespace A010086.P8359274399648134805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (A242474 (n + 1) + 30).toNat

end

end A010086.P8359274399648134805

/-! ## A010086.P5924568410934738066

`A340030(A077168(n)+30)`
-/

namespace A010086.P5924568410934738066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (A077168 n + 30).toNat

end

end A010086.P5924568410934738066

/-! ## A010086.P2057101343112873258

`A340030(A032555(n+1)+30)`
-/

namespace A010086.P2057101343112873258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (A032555 (n + 1) + 30).toNat

end

end A010086.P2057101343112873258

/-!
# A010087: Weight distribution of d=3 Hamming code of length 63.

The programs for A010087, there is no canonical definition to state claims against.
-/

/-! ## A010087.P2229422093935824624

`A340030(A077168(n)+62)`
-/

namespace A010087.P2229422093935824624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (A077168 n + 62).toNat

end

end A010087.P2229422093935824624

/-!
# A010088: Weight distribution of d=3 Hamming code of length 127.

The programs for A010088, there is no canonical definition to state claims against.
-/

/-! ## A010088.P16956300331833116016

`A052410(A349007(n+1))*A363881(n)`
-/

namespace A010088.P16956300331833116016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A349007 (n + 1)).toNat * A363881 n

end

end A010088.P16956300331833116016

/-!
# A010091: Weight distribution of d=4 Hamming code of length 31.

The programs for A010091, there is no canonical definition to state claims against.
-/

/-! ## A010091.P10887595936143424023

`A010086(2*n)`
-/

namespace A010091.P10887595936143424023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010086 (2 * n)

end

end A010091.P10887595936143424023

/-! ## A010091.P3277405359289983579

`A340030(2*n+31)`
-/

namespace A010091.P3277405359289983579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (2 * n + 31)

end

end A010091.P3277405359289983579

/-! ## A010091.P18265080436549700592

`A010086(A005843(n))+char[16]`
-/

namespace A010091.P18265080436549700592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010086 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A010091.P18265080436549700592

/-! ## A010091.P12164103488237922191

`A010086(A005843(n))/A007318(∑[n])`
-/

namespace A010091.P12164103488237922191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010086 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A010091.P12164103488237922191

/-! ## A010091.P3064060988936491903

`A010081(n)-A010086(A004280(n+1))`
-/

namespace A010091.P3064060988936491903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010081 n - A010086 (A004280 (n + 1)).toNat

end

end A010091.P3064060988936491903

/-!
# A010092: Weight distribution of d=4 Hamming code of length 63.

The programs for A010092, there is no canonical definition to state claims against.
-/

/-! ## A010092.P7307576600560200103

`A010087(2*n)`
-/

namespace A010092.P7307576600560200103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010087 (2 * n)

end

end A010092.P7307576600560200103

/-! ## A010092.P7468701660750008088

`A340030(A005408(n)+62)`
-/

namespace A010092.P7468701660750008088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (A005408 n + 62).toNat

end

end A010092.P7468701660750008088

/-! ## A010092.P13975030388809056802

`A340030(A296766(n+2)+n)`
-/

namespace A010092.P13975030388809056802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340030 (A296766 (n + 2) + (n : ℤ)).toNat

end

end A010092.P13975030388809056802

/-! ## A010092.P17163233846032501451

`A010087(A004277(n))+A000007(n)`
-/

namespace A010092.P17163233846032501451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010087 (A004277 n).toNat + A000007 n

end

end A010092.P17163233846032501451

/-! ## A010092.P16805467575857761323

`or(A000007(n), A010087(A005843(n)))`
-/

namespace A010092.P16805467575857761323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A010087 (A005843 n).toNat)

end

end A010092.P16805467575857761323

/-!
# A010093: Weight distribution of d=4 Hamming code of length 127.

The programs for A010093, there is no canonical definition to state claims against.
-/

/-! ## A010093.P3253111856345843324

`A010088(2*n)`
-/

namespace A010093.P3253111856345843324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010088 (2 * n)

end

end A010093.P3253111856345843324

/-! ## A010093.P4409977353884548351

`gcd(A000038(n), A010088(A005843(n)))`
-/

namespace A010093.P4409977353884548351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A010088 (A005843 n).toNat)

end

end A010093.P4409977353884548351

/-! ## A010093.P7522773287739123046

`lcm(A010088(A005843(n)), A020985(n))`
-/

namespace A010093.P7522773287739123046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010088 (A005843 n).toNat) (A020985 n)

end

end A010093.P7522773287739123046

/-! ## A010093.P15602850241177705033

`or(A000007(n), A010088(A005843(n)))`
-/

namespace A010093.P15602850241177705033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A010088 (A005843 n).toNat)

end

end A010093.P15602850241177705033

/-! ## A010093.P12792933581029978583

`A010088(A005843(n))/A007318(C(3, n))`
-/

namespace A010093.P12792933581029978583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010088 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A010093.P12792933581029978583

/-! ## A010093.P8841816653877925752

`A010088(A005843(n))^(A000040(n+1)%2)`
-/

namespace A010093.P8841816653877925752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010088 (A005843 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A010093.P8841816653877925752

/-! ## A010093.P9891414544140730965

`A010088(A005843(n))/and(1, A001359(n+1))`
-/

namespace A010093.P9891414544140730965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010088 (A005843 n).toNat : ℚ) / (Int.land 1 (A001359 (n + 1)) : ℚ)

end

end A010093.P9891414544140730965

/-!
# A010094: Triangle of Euler-Bernoulli or Entringer numbers.

The programs for A010094, there is no canonical definition to state claims against.
-/

/-! ## A010094.P3903336778985830131

`A008282(A038722(n+1))`
-/

namespace A010094.P3903336778985830131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A038722 (n + 1)).toNat

end

end A010094.P3903336778985830131

/-! ## A010094.P4236677291887130016

`A008282(A061579(n)+1)`
-/

namespace A010094.P4236677291887130016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A061579 n + 1).toNat

end

end A010094.P4236677291887130016

/-! ## A010094.P1988749550593560119

`A064192(A064578(n+1))`
-/

namespace A010094.P1988749550593560119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064192 (A064578 (n + 1)).toNat

end

end A010094.P1988749550593560119

/-! ## A010094.P10692849707894767376

`A008281(A099375(n)+1+n)`
-/

namespace A010094.P10692849707894767376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A099375 n + 1 + (n : ℤ)).toNat

end

end A010094.P10692849707894767376

/-! ## A010094.P6212111635039662360

`A008282(A093995(n+1)-n)`
-/

namespace A010094.P6212111635039662360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A010094.P6212111635039662360

/-! ## A010094.P17490360353269209784

`A008281(A038722(n+1)+A002024(n+1))`
-/

namespace A010094.P17490360353269209784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A010094.P17490360353269209784

/-!
# A010095: Weight distribution of d=4 Hamming code of length 255.

The programs for A010095, there is no canonical definition to state claims against.
-/

/-! ## A010095.P4571659965924992571

`A010089(2*n)`
-/

namespace A010095.P4571659965924992571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010089 (2 * n)

end

end A010095.P4571659965924992571

/-!
# A010096: log2*(n) (version 1): number of times floor(log_2(x)) is used in floor(log_2(floor(log_2(...(floor(log_2(n)))...)))) = 0.

The programs for A010096, there is no canonical definition to state claims against.
-/

/-! ## A010096.P2050403422989630177

`A001069(n+1)+1`
-/

namespace A010096.P2050403422989630177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001069 (n + 1) + 1

end

end A010096.P2050403422989630177

/-!
# A010097: Prefix (or Levenshtein) codes for natural numbers.

The programs for A010097, there is no canonical definition to state claims against.
-/

/-! ## A010097.P14539258953878409249

`record[A326108(n+1)%A322851(n)]`
-/

namespace A010097.P14539258953878409249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326108 (n + 1)) (A322851 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010097.P14539258953878409249

/-! ## A010097.P12827118678244604364

`eq[2, A229895(A103889(3*n+5))]`
-/

namespace A010097.P12827118678244604364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229895 (A103889 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010097.P12827118678244604364

/-! ## A010097.P6806031850032514554

`eq[2, A229895(A114112(3*n+5))]`
-/

namespace A010097.P6806031850032514554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229895 (A114112 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010097.P6806031850032514554

/-! ## A010097.P11014417189976906206

`eq[A131818(A131818(n+1)), A222210(n)]`
-/

namespace A010097.P11014417189976906206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A131818 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010097.P11014417189976906206

/-!
# A010098: a(n) = a(n-1)*a(n-2) with a(0)=1, a(1)=3.

The programs for A010098, the canonical program `A010098.P6725421239295073081` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010098 has offset 0).

The definition of A010098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A010098.P6725421239295073081`, by `A010098.P6725421239295073081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010098.P6725421239295073081

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010098

/-- `a(n-1)*a(n-2)` -/
def P6725421239295073081.Spec : Prop :=
  ∀ n, (P6725421239295073081.a n : ℤ) = A010098 n

theorem P6725421239295073081.correct : P6725421239295073081.Spec := by
  intro n
  simp only [A010098]

end A010098

/-! ## A010098.P9885156208193213685

`3^round(ϕ^n/sqrt(5))`
-/

namespace A010098.P9885156208193213685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ)

end

end A010098.P9885156208193213685

namespace A010098

/-- `3^round(ϕ^n/sqrt(5))` -/
def P9885156208193213685.Spec : Prop :=
  ∀ n, P9885156208193213685.a n = (A010098 n : ℚ)

end A010098

/-!
# A010099: a(n) = a(n-1)*a(n-2) with a(0)=1, a(1)=4.

The programs for A010099, the canonical program `A010099.P14065874260573592647` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010099 has offset 0).

The definition of A010099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A010099.P14065874260573592647`, by `A010099.P14065874260573592647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A010099.P14065874260573592647

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A010099

/-- `a(n-1)*a(n-2)` -/
def P14065874260573592647.Spec : Prop :=
  ∀ n, (P14065874260573592647.a n : ℤ) = A010099 n

theorem P14065874260573592647.correct : P14065874260573592647.Spec := by
  intro n
  simp only [A010099]

end A010099

/-! ## A010099.P10750743902395865431

`4^round(ϕ^n/sqrt(5))`
-/

namespace A010099.P10750743902395865431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ)

end

end A010099.P10750743902395865431

namespace A010099

/-- `4^round(ϕ^n/sqrt(5))` -/
def P10750743902395865431.Spec : Prop :=
  ∀ n, P10750743902395865431.a n = (A010099 n : ℚ)

end A010099

