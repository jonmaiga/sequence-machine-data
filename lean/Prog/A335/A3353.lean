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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
# A335301: a(n) = prime(n+1) mod (10^k) where k is the least positive integer such that floor(prime(n)/(10^k)) = floor(prime(n+1)/(10^k)) and prime(n) denotes the n-th prime number.

The programs for A335301, there is no canonical definition to state claims against.
-/

/-! ## A335301.P2672520145933942838

`A065091(n+1)%A299754(A329973(n+1))`
-/

namespace A335301.P2672520145933942838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 1)) (A299754 (A329973 (n + 1)).toNat)

end

end A335301.P2672520145933942838

/-!
# A335302: a(n) = prime(n+1) mod (2^k) where k is the least positive integer such that floor(prime(n)/(2^k)) = floor(prime(n+1)/(2^k)) and prime(n) denotes the n-th prime number.

The programs for A335302, the canonical program `A335302.P3858910890328538740` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335302 has offset 1).

The definition of A335302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335302.P3858910890328538740

`and(A003817(A112591(n+1)), A065091(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A335302

/-- `and(A003817(A112591(n+1)), A065091(n+1))` -/
def P3858910890328538740.Spec : Prop :=
  ∀ n, P3858910890328538740.a n = A335302 (n + 1)

theorem P3858910890328538740.correct : P3858910890328538740.Spec := by
  intro n
  simp only [A335302, Nat.add_sub_cancel]

end A335302

/-! ## A335302.P6336068434490321428

`and(A000040(n+2), A003817(A112591(n+1)))`
-/

namespace A335302.P6336068434490321428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 2)) (A003817 (A112591 (n + 1)).toNat)

end

end A335302.P6336068434490321428

namespace A335302

/-- `and(A000040(n+2), A003817(A112591(n+1)))` -/
def P6336068434490321428.Spec : Prop :=
  ∀ n, P6336068434490321428.a n = A335302 (n + 1)

end A335302

/-!
# A335303: Numbers k such that k divides sum of k-th twin prime pair.

The programs for A335303, there is no canonical definition to state claims against.
-/

/-! ## A335303.P15419305208282340187

`record[gcd(n+1, A054735(n+1))]`
-/

namespace A335303.P15419305208282340187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A054735 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335303.P15419305208282340187

/-! ## A335303.P15868847439873884176

`record[gcd(n-log2(1/2), 2*A014574(n+1))]`
-/

namespace A335303.P15868847439873884176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (2 * A014574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335303.P15868847439873884176

/-! ## A335303.P8666855954723053033

`record[gcd(2*A014574(n+1), A000027(n+1))]`
-/

namespace A335303.P8666855954723053033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A014574 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335303.P8666855954723053033

/-! ## A335303.P2056940789273162385

`record[gcd(1-A001489(n), A111046(n+1)/2)]`
-/

namespace A335303.P2056940789273162385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A001489 n) (SequenceMachineLib.roundAway ((A111046 (n + 1) : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335303.P2056940789273162385

/-! ## A335303.P17956891596440388097

`record[gcd(A003602(n+1), A096281(n+1))]`
-/

namespace A335303.P17956891596440388097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (n + 1)) (A096281 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335303.P17956891596440388097

/-!
# A335306: a(n) is the smallest composite number whose sum of distinct prime divisors is prime(n).

The programs for A335306, there is no canonical definition to state claims against.
-/

/-! ## A335306.P11131346487588178055

`A081382(p?[comp[n²]])`
-/

namespace A335306.P11131346487588178055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081382 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A335306.P11131346487588178055

/-! ## A335306.P8418922634456427302

`A081382(A000040(n+1))`
-/

namespace A335306.P8418922634456427302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081382 (A000040 (n + 1)).toNat

end

end A335306.P8418922634456427302

/-! ## A335306.P12577140154390433303

`A081382(A008578(n+2))`
-/

namespace A335306.P12577140154390433303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081382 (A008578 (n + 2)).toNat

end

end A335306.P12577140154390433303

/-! ## A335306.P16989738720821229909

`A081382(A182986(n+2))`
-/

namespace A335306.P16989738720821229909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081382 (A182986 (n + 2)).toNat

end

end A335306.P16989738720821229909

/-! ## A335306.P4422160879057789190

`A081382(record[A006530(n+2)])`
-/

namespace A335306.P4422160879057789190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081382 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335306.P4422160879057789190

/-! ## A335306.P368914213718859033

`A081382(record[A014963(n+2)])`
-/

namespace A335306.P368914213718859033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081382 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335306.P368914213718859033

/-! ## A335306.P1208829939028967684

`A093872(record[A006530(n+2)])`
-/

namespace A335306.P1208829939028967684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335306.P1208829939028967684

/-! ## A335306.P7870845878805957896

`A081382(record[A020639(n+2)])`
-/

namespace A335306.P7870845878805957896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081382 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335306.P7870845878805957896

/-! ## A335306.P2861802940284959044

`A093872(record[A014963(n+2)])`
-/

namespace A335306.P2861802940284959044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335306.P2861802940284959044

/-! ## A335306.P4134464752602774902

`A093872(record[A020639(n+2)])`
-/

namespace A335306.P4134464752602774902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335306.P4134464752602774902

/-!
# A335307: The number of hanging vertically stable self-avoiding walks of length n on a 2D square lattice where only the nodes have mass.

The programs for A335307, there is no canonical definition to state claims against.
-/

/-! ## A335307.P1196208336098228053

`or(A242498(n), A265370(A130463(n)))`
-/

namespace A335307.P1196208336098228053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A242498 n) (A265370 (A130463 n).toNat)

end

end A335307.P1196208336098228053

/-!
# A335308: Number of permutations p of [n] such that the sequence of ascents and descents of p is encoded by the 0's and 1's, respectively, in the binary expansion of n (read from right to left and using leading 0's if necessary).

The programs for A335308, there is no canonical definition to state claims against.
-/

/-! ## A335308.P9878970243698828952

`A060351(A000295(n))%A036563(n)`
-/

namespace A335308.P9878970243698828952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060351 (A000295 n).toNat) (A036563 n)

end

end A335308.P9878970243698828952

/-!
# A335309: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+k,k) * n^(n-k).

The programs for A335309, there is no canonical definition to state claims against.
-/

/-! ## A335309.P16037792056673839599

`A307883(A056220(n+1))`
-/

namespace A335309.P16037792056673839599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (A056220 (n + 1)).toNat

end

end A335309.P16037792056673839599

/-! ## A335309.P7854610848385339948

`A307883(eq[1, A114327(n)])`
-/

namespace A335309.P7854610848385339948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335309.P7854610848385339948

/-! ## A335309.P7109422207194502115

`record[A307883(A105638(n+3))]`
-/

namespace A335309.P7109422207194502115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (A105638 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335309.P7109422207194502115

/-! ## A335309.P6647342384001816755

`A307883(A054000(n+1)+1)`
-/

namespace A335309.P6647342384001816755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (A054000 (n + 1) + 1).toNat

end

end A335309.P6647342384001816755

/-! ## A335309.P10828111201786869839

`A307883(A105638(2*(n+2)))`
-/

namespace A335309.P10828111201786869839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (A105638 (2 * (n + 2))).toNat

end

end A335309.P10828111201786869839

/-!
# A335310: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+k,k) * (-n)^(n-k).

The programs for A335310, there is no canonical definition to state claims against.
-/

/-! ## A335310.P5395389578238081226

`A307884(2*n²)`
-/

namespace A335310.P5395389578238081226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307884 (2 * n ^ 2)

end

end A335310.P5395389578238081226

/-! ## A335310.P11585074720376902296

`A307884(A001105(n))+A000007(3*n+2)`
-/

namespace A335310.P11585074720376902296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307884 (A001105 n).toNat + A000007 (3 * n + 2)

end

end A335310.P11585074720376902296

/-! ## A335310.P4775553676389759893

`A038712(2*n+5)*A307884(A001105(n))`
-/

namespace A335310.P4775553676389759893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 5) * A307884 (A001105 n).toNat

end

end A335310.P4775553676389759893

/-! ## A335310.P9894242457899690765

`ceil(A307884(A001105(n))/A049076(3*(n+1)))`
-/

namespace A335310.P9894242457899690765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307884 (A001105 n).toNat : ℚ) / (A049076 (3 * (n + 1)) : ℚ)⌉

end

end A335310.P9894242457899690765

/-! ## A335310.P11844743071570904700

`A307884(A001105(n))/A049076(A016825(n+1))`
-/

namespace A335310.P11844743071570904700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307884 (A001105 n).toNat : ℚ) / (A049076 (A016825 (n + 1)).toNat : ℚ)

end

end A335310.P11844743071570904700

/-!
# A335311: Coefficients of polynomials arising in the series expansion of the multiplicative inverse of an analytic function. Irregular triangle read by rows.

The programs for A335311, there is no canonical definition to state claims against.
-/

/-! ## A335311.P18342799470325718444

`A008480(xor(A032148(n), A176260(n)))`
-/

namespace A335311.P18342799470325718444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (Int.xor (A032148 n) (A176260 n)).toNat

end

end A335311.P18342799470325718444

/-! ## A335311.P14518438102023362299

`A089231(n+1)*A165413(A082733(n+1))`
-/

namespace A335311.P14518438102023362299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089231 (n + 1) * A165413 (A082733 (n + 1)).toNat

end

end A335311.P14518438102023362299

/-! ## A335311.P936220517678613356

`A085152(A193794(n))*A193821(A193832(n+1))`
-/

namespace A335311.P936220517678613356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085152 (A193794 n).toNat * A193821 (A193832 (n + 1)).toNat

end

end A335311.P936220517678613356

/-!
# A335312: A(n, k) = k! [x^k] exp(2*x)*(y*sinh(x*y) + cosh(x*y)) and y = sqrt(n). Square array read by ascending antidiagonals, for n >= 0 and k >= 0.

The programs for A335312, there is no canonical definition to state claims against.
-/

/-! ## A335312.P16873405843875358514

`A051128(A028310(n))-A257685(A185144(n))`
-/

namespace A335312.P16873405843875358514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A028310 n).toNat - A257685 (A185144 n).toNat

end

end A335312.P16873405843875358514

/-! ## A335312.P11557783700409071654

`A051128(A028310(n))-A067898(A065026(n+1))`
-/

namespace A335312.P11557783700409071654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A028310 n).toNat - A067898 (A065026 (n + 1)).toNat

end

end A335312.P11557783700409071654

/-! ## A335312.P4646143769566450673

`A051128(A051135(2^n)-1)-A103822(A144074(n))`
-/

namespace A335312.P4646143769566450673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A051135 (2 ^ n) - 1).toNat - A103822 (A144074 n).toNat

end

end A335312.P4646143769566450673

/-! ## A335312.P6030936534741645722

`A051128(A051135(2^n)-1)-A007818(A334549(n))`
-/

namespace A335312.P6030936534741645722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A051135 (2 ^ n) - 1).toNat - A007818 (A334549 n).toNat

end

end A335312.P6030936534741645722

/-! ## A335312.P773627712799588419

`A107616(A043317(n+1))`
-/

namespace A335312.P773627712799588419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107616 (A043317 (n + 1)).toNat

end

end A335312.P773627712799588419

/-!
# A335313: Smallest k such that 2^(3*2^n) - k is a safe prime.

The programs for A335313, there is no canonical definition to state claims against.
-/

/-! ## A335313.P1332707121208583572

`A057821(3*2^n)`
-/

namespace A335313.P1332707121208583572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057821 (3 * 2 ^ n)

end

end A335313.P1332707121208583572

/-! ## A335313.P2586051602819765039

`or(1, A057821(A007283(n)))`
-/

namespace A335313.P2586051602819765039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057821 (A007283 n).toNat)

end

end A335313.P2586051602819765039

/-! ## A335313.P15050865321352102058

`A355451(n+1)+A057821(A007283(n))`
-/

namespace A335313.P15050865321352102058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (n + 1) + A057821 (A007283 n).toNat

end

end A335313.P15050865321352102058

/-! ## A335313.P1835655480042946653

`A054977(n+1)*A057821(A007283(n))`
-/

namespace A335313.P1835655480042946653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A057821 (A007283 n).toNat

end

end A335313.P1835655480042946653

/-! ## A335313.P18015066978365398196

`A057821(A007283(n))*A340596(n+1)`
-/

namespace A335313.P18015066978365398196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057821 (A007283 n).toNat * A340596 (n + 1)

end

end A335313.P18015066978365398196

/-!
# A335314: Full autoinsertable of reversed multidigit primes are such primes that remain prime after all the possible internal autoinsertions of the reversed prime, one at a time.

The programs for A335314, there is no canonical definition to state claims against.
-/

/-! ## A335314.P17743022897481660259

`p?[A325266(2*(n+1))+61]`
-/

namespace A335314.P17743022897481660259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325266 (2 * (n + 1)) + 61

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335314.P17743022897481660259

/-!
# A335316: Harmonic numbers (A001599) with a record harmonic mean of divisors.

The programs for A335316, there is no canonical definition to state claims against.
-/

/-! ## A335316.P806757404095110244

`A091911(record[A001600(n+1)])`
-/

namespace A335316.P806757404095110244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091911 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335316.P806757404095110244

/-! ## A335316.P457744993341610998

`A001599(A102363(n)%A057624(3*(n+1)))`
-/

namespace A335316.P457744993341610998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (Int.tmod (A102363 n) (A057624 (3 * (n + 1)))).toNat

end

end A335316.P457744993341610998

/-! ## A335316.P11125164276435958825

`A001599(A102363(n)^A110030(n+1))`
-/

namespace A335316.P11125164276435958825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (SequenceMachineLib.roundAway ((A102363 n : ℚ) ^ (A110030 (n + 1) : ℤ))).toNat

end

end A335316.P11125164276435958825

/-! ## A335316.P10636765069823920876

`A001599(A102363(n)%A348922(n+1))`
-/

namespace A335316.P10636765069823920876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (Int.tmod (A102363 n) (A348922 (n + 1))).toNat

end

end A335316.P10636765069823920876

/-!
# A335317: Harmonic numbers (A001599) with a record number of divisors.

The programs for A335317, there is no canonical definition to state claims against.
-/

/-! ## A335317.P10672083006525743541

`A001599(record[A356233(n+1)])`
-/

namespace A335317.P10672083006525743541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335317.P10672083006525743541

/-! ## A335317.P6882641530123836226

`A001599(A272948(n+1)%A029873(2*n))`
-/

namespace A335317.P6882641530123836226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (Int.tmod (A272948 (n + 1)) (A029873 (2 * n))).toNat

end

end A335317.P6882641530123836226

/-! ## A335317.P4617250935762385489

`A001599(A053251(2*n+3)%A309900(3*n+4))`
-/

namespace A335317.P4617250935762385489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (Int.tmod (A053251 (2 * n + 3)) (A309900 (3 * n + 4))).toNat

end

end A335317.P4617250935762385489

/-! ## A335317.P16192533039218934660

`A335316(A038101(n+1))`
-/

namespace A335317.P16192533039218934660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335316 (A038101 (n + 1)).toNat

end

end A335317.P16192533039218934660

/-!
# A335318: Harmonic numbers (A001599) k with a record abundancy index sigma(k)/k.

The programs for A335318, there is no canonical definition to state claims against.
-/

/-! ## A335318.P14502921459914697295

`A335317(∑[A001222(2*n+5)%A107083(2*n+3)])`
-/

namespace A335318.P14502921459914697295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (2 * n + 5)) (A107083 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335318.P14502921459914697295

/-! ## A335318.P3327241583356480953

`A335316(lt[A007380(n+1), ∏{p}[n+1, 3%#²]])`
-/

namespace A335318.P3327241583356480953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 3 % p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335316 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A335318.P3327241583356480953

/-! ## A335318.P3972453917504746464

`A335317(A249115(n+1)^A025788(n))`
-/

namespace A335318.P3972453917504746464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335317 (SequenceMachineLib.roundAway ((A249115 (n + 1) : ℚ) ^ (A025788 n : ℤ))).toNat

end

end A335318.P3972453917504746464

/-!
# A335322: Triangle read by rows: T(n, k) = binomial(n, floor((n+k+1)/2)) with k <= n.

The programs for A335322, the canonical program `A335322.P3876703138502484102` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335322 has offset 1).

The definition of A335322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335322.P4933185400776750622

`C(∑[char[∑[n]]], A004526(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A335322.P4933185400776750622
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A004526 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))).toNat

end

end A335322.P4933185400776750622

namespace A335322

/-- `C(∑[char[∑[n]]], A004526(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P4933185400776750622.Spec : Prop :=
  ∀ n, (P4933185400776750622.a n : ℤ) = A335322 (n + 1)

end A335322

/-! ## A335322.P16667570087148617087

`C(∑[char[∑[n]]], A008619(n+1-C(∑[char[∑[n+1]]], 2)))`
-/

namespace A335322.P16667570087148617087
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A008619 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2)).toNat

end

end A335322.P16667570087148617087

namespace A335322

/-- `C(∑[char[∑[n]]], A008619(n+1-C(∑[char[∑[n+1]]], 2)))` -/
def P16667570087148617087.Spec : Prop :=
  ∀ n, (P16667570087148617087.a n : ℤ) = A335322 (n + 1)

end A335322

/-! ## A335322.P3876703138502484102

`A007318(floor(A189151(n+1)/2))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A335322

/-- `A007318(floor(A189151(n+1)/2))` -/
def P3876703138502484102.Spec : Prop :=
  ∀ n, P3876703138502484102.a n = A335322 (n + 1)

theorem P3876703138502484102.correct : P3876703138502484102.Spec := by
  intro n
  simp only [A335322, Nat.add_sub_cancel]

end A335322

/-! ## A335322.P15203065545649847664

`gcd(Δ[A111527(n)], A111527(n))`
-/

namespace A335322.P15203065545649847664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A111527 n)

end

end A335322.P15203065545649847664

namespace A335322

/-- `gcd(Δ[A111527(n)], A111527(n))` -/
def P15203065545649847664.Spec : Prop :=
  ∀ n, (P15203065545649847664.a n : ℤ) = A335322 (n + 1)

end A335322

/-! ## A335322.P18105609664618212251

`gcd(Δ[A117178(n)], A117178(n))`
-/

namespace A335322.P18105609664618212251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A117178 n)

end

end A335322.P18105609664618212251

namespace A335322

/-- `gcd(Δ[A117178(n)], A117178(n))` -/
def P18105609664618212251.Spec : Prop :=
  ∀ n, (P18105609664618212251.a n : ℤ) = A335322 (n + 1)

end A335322

/-! ## A335322.P6042998259269575574

`A061554(comp[∑[n]])`
-/

namespace A335322.P6042998259269575574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A335322.P6042998259269575574

namespace A335322

/-- `A061554(comp[∑[n]])` -/
def P6042998259269575574.Spec : Prop :=
  ∀ n, P6042998259269575574.a n = A335322 (n + 1)

end A335322

/-! ## A335322.P12250705919164295018

`or(char[1], A061554(A014132(n+1)))`
-/

namespace A335322.P12250705919164295018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A061554 (A014132 (n + 1)).toNat)

end

end A335322.P12250705919164295018

namespace A335322

/-- `or(char[1], A061554(A014132(n+1)))` -/
def P12250705919164295018.Spec : Prop :=
  ∀ n, P12250705919164295018.a n = A335322 (n + 1)

end A335322

/-! ## A335322.P3603205818287699485

`A107430(∑[char[∑[n]]]²-∑[char[comp[∑[n]]]])`
-/

namespace A335322.P3603205818287699485
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - ∑ j ∈ Finset.range (n + 1), f4 j)

end

end A335322.P3603205818287699485

namespace A335322

/-- `A107430(∑[char[∑[n]]]²-∑[char[comp[∑[n]]]])` -/
def P3603205818287699485.Spec : Prop :=
  ∀ n, P3603205818287699485.a n = A335322 (n + 1)

end A335322

/-! ## A335322.P833567020172806820

`A152905(A189151(n+1))`
-/

namespace A335322.P833567020172806820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A189151 (n + 1)).toNat

end

end A335322.P833567020172806820

namespace A335322

/-- `A152905(A189151(n+1))` -/
def P833567020172806820.Spec : Prop :=
  ∀ n, P833567020172806820.a n = A335322 (n + 1)

end A335322

/-! ## A335322.P48145832606229448

`∑{d}[A061554(A014132(n+1)), A000010(#)]`
-/

namespace A335322.P48145832606229448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A335322.P48145832606229448

namespace A335322

/-- `∑{d}[A061554(A014132(n+1)), A000010(#)]` -/
def P48145832606229448.Spec : Prop :=
  ∀ n, P48145832606229448.a n = A335322 (n + 1)

end A335322

/-!
# A335323: First lower diagonal of Parker's triangle A047812.

The programs for A335323, there is no canonical definition to state claims against.
-/

/-! ## A335323.P11416042698266096748

`A002865(n+3)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A335323.P11416042698266096748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A002865 (n + 3) + a (n - 1)

end

end A335323.P11416042698266096748

/-! ## A335323.P17752420416209601033

`record[A000041(n)-A113311(n)]`
-/

namespace A335323.P17752420416209601033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A113311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335323.P17752420416209601033

/-! ## A335323.P4410096710731498975

`record[A000041(n)-A123932(n)]`
-/

namespace A335323.P4410096710731498975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A123932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335323.P4410096710731498975

/-! ## A335323.P11933357356454785751

`A238607(n+2)-A238742(n+1)`
-/

namespace A335323.P11933357356454785751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238607 (n + 2) - A238742 (n + 1)

end

end A335323.P11933357356454785751

/-! ## A335323.P9646531117764057955

`A000041(n+3)+A000007(n)-4`
-/

namespace A335323.P9646531117764057955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 3) + (A000007 n - 4)

end

end A335323.P9646531117764057955

/-! ## A335323.P6229777759505066515

`Δ[A026905(n+2)-A004273(2*n)]`
-/

namespace A335323.P6229777759505066515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 2) - A004273 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335323.P6229777759505066515

/-! ## A335323.P10267665533509123458

`A007042(n+2)-A001227(A000040(n+1))`
-/

namespace A335323.P10267665533509123458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007042 (n + 2) - A001227 (A000040 (n + 1)).toNat

end

end A335323.P10267665533509123458

/-! ## A335323.P7878324275921372560

`A000041(n+3)-A000005(A161344(n+1))`
-/

namespace A335323.P7878324275921372560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 3) - A000005 (A161344 (n + 1)).toNat

end

end A335323.P7878324275921372560

/-! ## A335323.P10704147550519390006

`A000041(n+3)-A328166(A000040(n+1))`
-/

namespace A335323.P10704147550519390006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 3) - A328166 (A000040 (n + 1)).toNat

end

end A335323.P10704147550519390006

/-!
# A335324: Square part of 4th-power-free part of n.

The programs for A335324, the canonical program `A335324.P12641586174237596728` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335324 has offset 1).

The definition of A335324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A053165, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335324.P7891511475539663662

`A053165(A008833(n+1))`
-/

namespace A335324.P7891511475539663662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A008833 (n + 1)).toNat

end

end A335324.P7891511475539663662

namespace A335324

/-- `A053165(A008833(n+1))` -/
def P7891511475539663662.Spec : Prop :=
  ∀ n, P7891511475539663662.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P15989612545764966130

`A008833(n+1)/A008835(n+1)`
-/

namespace A335324.P15989612545764966130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) / (A008835 (n + 1) : ℚ)

end

end A335324.P15989612545764966130

namespace A335324

/-- `A008833(n+1)/A008835(n+1)` -/
def P15989612545764966130.Spec : Prop :=
  ∀ n, P15989612545764966130.a n = (A335324 (n + 1) : ℚ)

end A335324

/-! ## A335324.P12641586174237596728

`A053165(n+1)/A007913(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A335324

/-- `A053165(n+1)/A007913(n+1)` -/
def P12641586174237596728.Spec : Prop :=
  ∀ n, P12641586174237596728.a n = (A335324 (n + 1) : ℚ)

end A335324

/-! ## A335324.P4230338322054647306

`A055491(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A335324.P4230338322054647306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A335324.P4230338322054647306

namespace A335324

/-- `A055491(∏{p}[n+1, #^val(n+1, #²)])` -/
def P4230338322054647306.Spec : Prop :=
  ∀ n, P4230338322054647306.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P13190766348781827979

`A007913(∏{p}[n+1, #^val(n+1, #²)])²`
-/

namespace A335324.P13190766348781827979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2

end

end A335324.P13190766348781827979

namespace A335324

/-- `A007913(∏{p}[n+1, #^val(n+1, #²)])²` -/
def P13190766348781827979.Spec : Prop :=
  ∀ n, P13190766348781827979.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P849391348235008030

`A053165(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A335324.P849391348235008030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A335324.P849391348235008030

namespace A335324

/-- `A053165(∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P849391348235008030.Spec : Prop :=
  ∀ n, P849391348235008030.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P13590096875695748906

`A056555(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A335324.P13590096875695748906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A335324.P13590096875695748906

namespace A335324

/-- `A056555(∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P13590096875695748906.Spec : Prop :=
  ∀ n, P13590096875695748906.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P5101440181093118572

`A056554(∏{p}[n+1, #^val(n+1, #²)]²)²`
-/

namespace A335324.P5101440181093118572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2) ^ 2

end

end A335324.P5101440181093118572

namespace A335324

/-- `A056554(∏{p}[n+1, #^val(n+1, #²)]²)²` -/
def P5101440181093118572.Spec : Prop :=
  ∀ n, P5101440181093118572.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P6590317383929438557

`sqrt(A056553(∏{p}[n+1, #^val(n+1, #²)]²))`
-/

namespace A335324.P6590317383929438557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056553 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2) : ℝ)

end

end A335324.P6590317383929438557

namespace A335324

/-- `sqrt(A056553(∏{p}[n+1, #^val(n+1, #²)]²))` -/
def P6590317383929438557.Spec : Prop :=
  ∀ n, P6590317383929438557.a n = (A335324 (n + 1) : ℝ)

end A335324

/-! ## A335324.P5741248396722016091

`A336643(∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])²`
-/

namespace A335324.P5741248396722016091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p)) ^ 2

end

end A335324.P5741248396722016091

namespace A335324

/-- `A336643(∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])²` -/
def P5741248396722016091.Spec : Prop :=
  ∀ n, P5741248396722016091.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P8381094392408723217

`A055491(A000188(n+1))`
-/

namespace A335324.P8381094392408723217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A000188 (n + 1)).toNat

end

end A335324.P8381094392408723217

namespace A335324

/-- `A055491(A000188(n+1))` -/
def P8381094392408723217.Spec : Prop :=
  ∀ n, P8381094392408723217.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P2466828651957190732

`A008833(A384555(n+1))`
-/

namespace A335324.P2466828651957190732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A384555 (n + 1)).toNat

end

end A335324.P2466828651957190732

namespace A335324

/-- `A008833(A384555(n+1))` -/
def P2466828651957190732.Spec : Prop :=
  ∀ n, P2466828651957190732.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P11004866270578774779

`A053165(A000188(n+1)²)`
-/

namespace A335324.P11004866270578774779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A000188 (n + 1) ^ 2).toNat

end

end A335324.P11004866270578774779

namespace A335324

/-- `A053165(A000188(n+1)²)` -/
def P11004866270578774779.Spec : Prop :=
  ∀ n, P11004866270578774779.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P15498710694028085568

`A056555(A000188(n+1)²)`
-/

namespace A335324.P15498710694028085568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A000188 (n + 1) ^ 2).toNat

end

end A335324.P15498710694028085568

namespace A335324

/-- `A056555(A000188(n+1)²)` -/
def P15498710694028085568.Spec : Prop :=
  ∀ n, P15498710694028085568.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P3892967240746897620

`A056552(A000190(n+1))²`
-/

namespace A335324.P3892967240746897620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (A000190 (n + 1)).toNat ^ 2

end

end A335324.P3892967240746897620

namespace A335324

/-- `A056552(A000190(n+1))²` -/
def P3892967240746897620.Spec : Prop :=
  ∀ n, P3892967240746897620.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P3134153033444505890

`A055491(Δ[2*A211422(n)])`
-/

namespace A335324.P3134153033444505890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (f1 (n + 1) - f1 n).toNat

end

end A335324.P3134153033444505890

namespace A335324

/-- `A055491(Δ[2*A211422(n)])` -/
def P3134153033444505890.Spec : Prop :=
  ∀ n, P3134153033444505890.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P2623470915733780431

`A055491(Δ[A211422(n)/2])`
-/

namespace A335324.P2623470915733780431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211422 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A335324.P2623470915733780431

namespace A335324

/-- `A055491(Δ[A211422(n)/2])` -/
def P2623470915733780431.Spec : Prop :=
  ∀ n, P2623470915733780431.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P12146129914446681687

`A055491(A057918(n+1)+1)`
-/

namespace A335324.P12146129914446681687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A057918 (n + 1) + 1).toNat

end

end A335324.P12146129914446681687

namespace A335324

/-- `A055491(A057918(n+1)+1)` -/
def P12146129914446681687.Spec : Prop :=
  ∀ n, P12146129914446681687.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P11460063071023964367

`A055491(A337101(2*(n+1)))`
-/

namespace A335324.P11460063071023964367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A337101 (2 * (n + 1))).toNat

end

end A335324.P11460063071023964367

namespace A335324

/-- `A055491(A337101(2*(n+1)))` -/
def P11460063071023964367.Spec : Prop :=
  ∀ n, P11460063071023964367.a n = A335324 (n + 1)

end A335324

/-! ## A335324.P8206138984571017422

`A056554(A000188(n+1)²)²`
-/

namespace A335324.P8206138984571017422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (A000188 (n + 1) ^ 2).toNat ^ 2

end

end A335324.P8206138984571017422

namespace A335324

/-- `A056554(A000188(n+1)²)²` -/
def P8206138984571017422.Spec : Prop :=
  ∀ n, P8206138984571017422.a n = A335324 (n + 1)

end A335324

/-!
# A335325: Primes p such that d(p^2-1) sets a record, where d(n) is the number of divisors of n.

The programs for A335325, there is no canonical definition to state claims against.
-/

/-! ## A335325.P16335715384814562514

`ceil(sqrt(A323278(n+1)))`
-/

namespace A335325.P16335715384814562514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A323278 (n + 1) : ℝ)⌉

end

end A335325.P16335715384814562514

/-! ## A335325.P3376746874792685892

`A034694(floor(sqrt(A323278(n+1))))`
-/

namespace A335325.P3376746874792685892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.sqrt (A323278 (n + 1))).toNat

end

end A335325.P3376746874792685892

/-! ## A335325.P10337366440411488303

`p?[∏{d}[A347192(n+1), #]]`
-/

namespace A335325.P10337366440411488303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347192 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A335325.P10337366440411488303

/-! ## A335325.P3565002818820824477

`p?[A347192(n+1)%A331948(2*n+3)]`
-/

namespace A335325.P3565002818820824477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347192 (n + 1)) (A331948 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335325.P3565002818820824477

/-! ## A335325.P14868363785789154431

`A006530(p?[A347192(n+1)]*A168497(n+1))`
-/

namespace A335325.P14868363785789154431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A168497 (n + 1)).toNat

end

end A335325.P14868363785789154431

/-!
# A335327: Numbers k such that iphi(k) divides k, where iphi is an infinitary analog of Euler's phi function (A091732).

The programs for A335327, there is no canonical definition to state claims against.
-/

/-! ## A335327.P8004820522529980883

`record[Δ[A257686(A133500(n))]]`
-/

namespace A335327.P8004820522529980883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 (A133500 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335327.P8004820522529980883

/-! ## A335327.P9045846199735923093

`record[Δ[A257686(A086066(n))]]`
-/

namespace A335327.P9045846199735923093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 (A086066 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335327.P9045846199735923093

/-! ## A335327.P18147946725223500211

`record[gcd(A156992(n+1), A215225(n+1))]`
-/

namespace A335327.P18147946725223500211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156992 (n + 1)) (A215225 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335327.P18147946725223500211

/-! ## A335327.P14888208982769741301

`record[A007318(A193592(n))*A134413(n+1)]`
-/

namespace A335327.P14888208982769741301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A193592 n).toNat * A134413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335327.P14888208982769741301

/-!
# A335328: Number k such that both k and k+1 have an equal number of unitary and nonunitary divisors.

The programs for A335328, the canonical program `A335328.P9024646742360157798` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335328 has offset 1).

The definition of A335328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335328.P9024646742360157798

`∩[A048109(n+1)-1, A048109(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A335328

/-- `∩[A048109(n+1)-1, A048109(n+1)]` -/
def P9024646742360157798.Spec : Prop :=
  ∀ n, (P9024646742360157798.a n : ℤ) = A335328 (n + 1)

theorem P9024646742360157798.correct : P9024646742360157798.Spec := by
  intro n
  simp only [A335328, Nat.add_sub_cancel]

end A335328

/-! ## A335328.P17719560843429030515

`∩[A048109(n+1), A199969(A048109(n+1))]`
-/

namespace A335328.P17719560843429030515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A048109 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335328.P17719560843429030515

namespace A335328

/-- `∩[A048109(n+1), A199969(A048109(n+1))]` -/
def P17719560843429030515.Spec : Prop :=
  ∀ n, (P17719560843429030515.a n : ℤ) = A335328 (n + 1)

end A335328

/-! ## A335328.P13684723890842938839

`A176313(∑[A039754(n+3)%A117538(3*n+1)])`
-/

namespace A335328.P13684723890842938839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039754 (n + 3)) (A117538 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176313 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335328.P13684723890842938839

namespace A335328

/-- `A176313(∑[A039754(n+3)%A117538(3*n+1)])` -/
def P13684723890842938839.Spec : Prop :=
  ∀ n, P13684723890842938839.a n = A335328 (n + 1)

end A335328

/-!
# A335330: Triangle read by rows: T(n,k) is the number of k-colored graphs on n nodes with restricted labels, n>=0, 0<=k<=n.

The programs for A335330, there is no canonical definition to state claims against.
-/

/-! ## A335330.P17295213497980107649

`and(A057028(A000079(n)), A256116(n))`
-/

namespace A335330.P17295213497980107649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057028 (A000079 n).toNat) (A256116 n)

end

end A335330.P17295213497980107649

/-! ## A335330.P7786765270855207206

`A265519(A256116(n))`
-/

namespace A335330.P7786765270855207206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265519 (A256116 n).toNat

end

end A335330.P7786765270855207206

/-! ## A335330.P16643688784073198717

`A353847(A304336(n))`
-/

namespace A335330.P16643688784073198717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A304336 n).toNat

end

end A335330.P16643688784073198717

/-! ## A335330.P6511349344447641251

`A089262(2*A256116(n))`
-/

namespace A335330.P6511349344447641251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089262 (2 * A256116 n).toNat

end

end A335330.P6511349344447641251

/-! ## A335330.P4619742513119531773

`A111810(A135313(n))`
-/

namespace A335330.P4619742513119531773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111810 (A135313 n).toNat

end

end A335330.P4619742513119531773

/-!
# A335331: a(n) = prime(k) where k is the n-th 7-smooth number.

The programs for A335331, the canonical program `A335331.P15046392971874812568` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335331 has offset 1).

The definition of A335331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335331.P3881639378588859408

`A000040(A002473(n+1))`
-/

namespace A335331.P3881639378588859408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002473 (n + 1)).toNat

end

end A335331.P3881639378588859408

namespace A335331

/-- `A000040(A002473(n+1))` -/
def P3881639378588859408.Spec : Prop :=
  ∀ n, P3881639378588859408.a n = A335331 (n + 1)

end A335331

/-! ## A335331.P8166590044646161622

`A000040(A085127(n+1)/4)`
-/

namespace A335331.P8166590044646161622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

end

end A335331.P8166590044646161622

namespace A335331

/-- `A000040(A085127(n+1)/4)` -/
def P8166590044646161622.Spec : Prop :=
  ∀ n, P8166590044646161622.a n = A335331 (n + 1)

end A335331

/-! ## A335331.P15046392971874812568

`record[A000040(n+1)*A086299(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335331

/-- `record[A000040(n+1)*A086299(n+1)]` -/
def P15046392971874812568.Spec : Prop :=
  ∀ n, P15046392971874812568.a n = A335331 (n + 1)

theorem P15046392971874812568.correct : P15046392971874812568.Spec := by
  intro n
  simp only [A335331, Nat.add_sub_cancel]

end A335331

/-! ## A335331.P4532976412757604873

`A000040(gcd(A080194(n+1), A085127(n+1)))`
-/

namespace A335331.P4532976412757604873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.gcd (A080194 (n + 1)) (A085127 (n + 1)))

end

end A335331.P4532976412757604873

namespace A335331

/-- `A000040(gcd(A080194(n+1), A085127(n+1)))` -/
def P4532976412757604873.Spec : Prop :=
  ∀ n, P4532976412757604873.a n = A335331 (n + 1)

end A335331

/-! ## A335331.P970551881360626683

`A008578(A002473(n+1)+1)`
-/

namespace A335331.P970551881360626683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A002473 (n + 1) + 1).toNat

end

end A335331.P970551881360626683

namespace A335331

/-- `A008578(A002473(n+1)+1)` -/
def P970551881360626683.Spec : Prop :=
  ∀ n, P970551881360626683.a n = A335331 (n + 1)

end A335331

/-! ## A335331.P22136312350123071

`A073846(A085125(n+1))`
-/

namespace A335331.P22136312350123071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A085125 (n + 1)).toNat

end

end A335331.P22136312350123071

namespace A335331

/-- `A073846(A085125(n+1))` -/
def P22136312350123071.Spec : Prop :=
  ∀ n, P22136312350123071.a n = A335331 (n + 1)

end A335331

/-! ## A335331.P5271296255678016447

`A000040(A007954(A280249(n+1)))`
-/

namespace A335331.P5271296255678016447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007954 (A280249 (n + 1)).toNat).toNat

end

end A335331.P5271296255678016447

namespace A335331

/-- `A000040(A007954(A280249(n+1)))` -/
def P5271296255678016447.Spec : Prop :=
  ∀ n, P5271296255678016447.a n = A335331 (n + 1)

end A335331

/-!
# A335333: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 1/sqrt(1 - 2*(2*k+1)*x + x^2).

The programs for A335333, there is no canonical definition to state claims against.
-/

/-! ## A335333.P17191965056021346549

`A341470(n)+A088194(A294950(n))`
-/

namespace A335333.P17191965056021346549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341470 n + A088194 (A294950 n).toNat

end

end A335333.P17191965056021346549

/-! ## A335333.P18293542157207174578

`A341470(n)+A111829(A299905(n))`
-/

namespace A335333.P18293542157207174578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341470 n + A111829 (A299905 n).toNat

end

end A335333.P18293542157207174578

/-! ## A335333.P13908453688355342563

`A083075(n)-A088194(A294950(n))`
-/

namespace A335333.P13908453688355342563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 n - A088194 (A294950 n).toNat

end

end A335333.P13908453688355342563

/-! ## A335333.P6232353082141822574

`A083075(n)-A111829(A299905(n))`
-/

namespace A335333.P6232353082141822574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 n - A111829 (A299905 n).toNat

end

end A335333.P6232353082141822574

/-! ## A335333.P2887065856316803381

`or(A010362(A035317(n)), A083075(n))`
-/

namespace A335333.P2887065856316803381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010362 (A035317 n).toNat) (A083075 n)

end

end A335333.P2887065856316803381

/-!
# A335334: Sum of the integers in the reduced residue system of A002110(n).

The programs for A335334, there is no canonical definition to state claims against.
-/

/-! ## A335334.P2824256346100920265

`A070826(n+1)*A005867(n+1)`
-/

namespace A335334.P2824256346100920265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1) * A005867 (n + 1)

end

end A335334.P2824256346100920265

/-! ## A335334.P7265258229083796258

`A002110(n+1)*A005867(n+1)/2`
-/

namespace A335334.P7265258229083796258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) * A005867 (n + 1) : ℚ) / 2

end

end A335334.P7265258229083796258

/-! ## A335334.P16078741833997270175

`A002110(n+1)*A038110(n+2)/2*A058250(n+1)`
-/

namespace A335334.P16078741833997270175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) * A038110 (n + 2) : ℚ) / 2 * (A058250 (n + 1) : ℚ)

end

end A335334.P16078741833997270175

/-! ## A335334.P10025188954974899412

`∏[record[A009262(2*n+1)]]`
-/

namespace A335334.P10025188954974899412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009262 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A335334.P10025188954974899412

/-! ## A335334.P8695891585977025102

`∏[record[A079579(2*n+1)]]`
-/

namespace A335334.P8695891585977025102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079579 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A335334.P8695891585977025102

/-!
# A335338: P_5(2n+1), the Legendre polynomial of order 5 at 2n+1.

The programs for A335338, the canonical program `A335338.P10098281563502059336` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335338 has offset 0).

The definition of A335338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335338.P10098281563502059336

`(2*n+1)*(126*n^4+252*n^3+154*n²+28*n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A335338

/-- `(2*n+1)*(126*n^4+252*n^3+154*n²+28*n+1)` -/
def P10098281563502059336.Spec : Prop :=
  ∀ n, (P10098281563502059336.a n : ℤ) = A335338 n

theorem P10098281563502059336.correct : P10098281563502059336.Spec := by
  intro n
  simp only [A335338]

end A335338

/-! ## A335338.P7346964566485661466

`A160737(2*n+1)/4`
-/

namespace A335338.P7346964566485661466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160737 (2 * n + 1) : ℚ) / 4

end

end A335338.P7346964566485661466

namespace A335338

/-- `A160737(2*n+1)/4` -/
def P7346964566485661466.Spec : Prop :=
  ∀ n, P7346964566485661466.a n = (A335338 n : ℚ)

end A335338

/-! ## A335338.P9984319403947364860

`record[A160737(A000265(n+1))/4]`
-/

namespace A335338.P9984319403947364860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160737 (A000265 (n + 1)).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335338.P9984319403947364860

namespace A335338

/-- `record[A160737(A000265(n+1))/4]` -/
def P9984319403947364860.Spec : Prop :=
  ∀ n, P9984319403947364860.a n = (A335338 n : ℚ)

end A335338

/-! ## A335338.P17379857598148031651

`A335333(A167499(n+4))`
-/

namespace A335338.P17379857598148031651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (A167499 (n + 4)).toNat

end

end A335338.P17379857598148031651

namespace A335338

/-- `A335333(A167499(n+4))` -/
def P17379857598148031651.Spec : Prop :=
  ∀ n, P17379857598148031651.a n = A335338 n

end A335338

/-! ## A335338.P1295574255386109882

`A335333(eq[5, A002262(n)])`
-/

namespace A335338.P1295574255386109882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335338.P1295574255386109882

namespace A335338

/-- `A335333(eq[5, A002262(n)])` -/
def P1295574255386109882.Spec : Prop :=
  ∀ n, P1295574255386109882.a n = A335338 n

end A335338

/-! ## A335338.P4827874605684933561

`A335333(eq[6, A002260(n+1)])`
-/

namespace A335338.P4827874605684933561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335338.P4827874605684933561

namespace A335338

/-- `A335333(eq[6, A002260(n+1)])` -/
def P4827874605684933561.Spec : Prop :=
  ∀ n, P4827874605684933561.a n = A335338 n

end A335338

/-! ## A335338.P4317865028254436278

`A335333(Δ[A023545(n+1)]+9)`
-/

namespace A335338.P4317865028254436278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 (f1 (n + 1) - f1 n + 9).toNat

end

end A335338.P4317865028254436278

namespace A335338

/-- `A335333(Δ[A023545(n+1)]+9)` -/
def P4317865028254436278.Spec : Prop :=
  ∀ n, P4317865028254436278.a n = A335338 n

end A335338

/-!
# A335340: North-East paths from (0,0) to (n,n) with k cyclic descents.

The programs for A335340, the canonical program `A335340.P11147850247702893830` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335340 has offset 1).

The definition of A335340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103371, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335340.P11147850247702893830

`2*A103371(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A335340

/-- `2*A103371(n)` -/
def P11147850247702893830.Spec : Prop :=
  ∀ n, P11147850247702893830.a n = A335340 (n + 1)

theorem P11147850247702893830.correct : P11147850247702893830.Spec := by
  intro n
  simp only [A335340, Nat.add_sub_cancel]

end A335340

/-! ## A335340.P6996796977079964632

`2*(C(comp[∑[n]]-n, 2)-n)*A001263(n+1)`
-/

namespace A335340.P6996796977079964632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A001263 (n + 1))

end

end A335340.P6996796977079964632

namespace A335340

/-- `2*(C(comp[∑[n]]-n, 2)-n)*A001263(n+1)` -/
def P6996796977079964632.Spec : Prop :=
  ∀ n, P6996796977079964632.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P7281976933719702727

`A028326(n)*A135278(n)`
-/

namespace A335340.P7281976933719702727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n * A135278 n

end

end A335340.P7281976933719702727

namespace A335340

/-- `A028326(n)*A135278(n)` -/
def P7281976933719702727.Spec : Prop :=
  ∀ n, P7281976933719702727.a n = A335340 (n + 1)

theorem P7281976933719702727.correct : P7281976933719702727.Spec := by
  intro n
  simp only [A335340, Nat.add_sub_cancel, A335340.P7281976933719702727.a, A335340.P11147850247702893830.a, A028326, A028326.P16610217584664895500.a, A103371, A103371.P12505102515609200163.a, A135278, A135278.P10862305414900331449.a, A007318, A007318.P302227728145965961.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A335340

/-! ## A335340.P15447635711612288789

`2*A191521(A004201(n+1))`
-/

namespace A335340.P15447635711612288789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191521 (A004201 (n + 1)).toNat

end

end A335340.P15447635711612288789

namespace A335340

/-- `2*A191521(A004201(n+1))` -/
def P15447635711612288789.Spec : Prop :=
  ∀ n, P15447635711612288789.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P12470445037716732861

`A028326(n)*A074909(n+1)`
-/

namespace A335340.P12470445037716732861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n * A074909 (n + 1)

end

end A335340.P12470445037716732861

namespace A335340

/-- `A028326(n)*A074909(n+1)` -/
def P12470445037716732861.Spec : Prop :=
  ∀ n, P12470445037716732861.a n = A335340 (n + 1)

theorem P12470445037716732861.correct : P12470445037716732861.Spec := by
  intro n
  simp only [A335340, Nat.add_sub_cancel, A335340.P12470445037716732861.a, A335340.P11147850247702893830.a, A028326, A028326.P16610217584664895500.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A103371, A103371.P12505102515609200163.a, A002262, A002262.P12129691700837801527.a, A007318, A007318.P302227728145965961.a, A010054, A010054.P18347828677204923252.a, A135278, A135278.P10862305414900331449.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A335340

/-! ## A335340.P8703768390930162145

`(A131768(n)+1)*A007318(n)`
-/

namespace A335340.P8703768390930162145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131768 n + 1) * A007318 n

end

end A335340.P8703768390930162145

namespace A335340

/-- `(A131768(n)+1)*A007318(n)` -/
def P8703768390930162145.Spec : Prop :=
  ∀ n, P8703768390930162145.a n = A335340 (n + 1)

theorem P8703768390930162145.correct : P8703768390930162145.Spec := by
  intro n
  simp only [A335340, Nat.add_sub_cancel, A335340.P8703768390930162145.a, A335340.P11147850247702893830.a, A007318, A007318.P302227728145965961.a, A103371, A103371.P12505102515609200163.a, A131768, A131768.P3623680832176526672.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A135278, A135278.P10862305414900331449.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A335340

/-! ## A335340.P13136684753711079227

`2*A007318(n)*A135278(n)`
-/

namespace A335340.P13136684753711079227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007318 n * A135278 n)

end

end A335340.P13136684753711079227

namespace A335340

/-- `2*A007318(n)*A135278(n)` -/
def P13136684753711079227.Spec : Prop :=
  ∀ n, P13136684753711079227.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P374642590444868795

`2*A135227(n)*A184049(n)`
-/

namespace A335340.P374642590444868795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135227 n * A184049 n)

end

end A335340.P374642590444868795

namespace A335340

/-- `2*A135227(n)*A184049(n)` -/
def P374642590444868795.Spec : Prop :=
  ∀ n, P374642590444868795.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P8854784090603435329

`A128821(n+1)+A001263(n+1)`
-/

namespace A335340.P8854784090603435329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128821 (n + 1) + A001263 (n + 1)

end

end A335340.P8854784090603435329

namespace A335340

/-- `A128821(n+1)+A001263(n+1)` -/
def P8854784090603435329.Spec : Prop :=
  ∀ n, P8854784090603435329.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P872369153216666750

`(A099375(n)+1)*A001263(n+1)`
-/

namespace A335340.P872369153216666750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099375 n + 1) * A001263 (n + 1)

end

end A335340.P872369153216666750

namespace A335340

/-- `(A099375(n)+1)*A001263(n+1)` -/
def P872369153216666750.Spec : Prop :=
  ∀ n, P872369153216666750.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P9871226345824234889

`A001263(n+1)*A212012(n+1)`
-/

namespace A335340.P9871226345824234889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A212012 (n + 1)

end

end A335340.P9871226345824234889

namespace A335340

/-- `A001263(n+1)*A212012(n+1)` -/
def P9871226345824234889.Spec : Prop :=
  ∀ n, P9871226345824234889.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P12810431331295162590

`2*A007318(n)*A074909(n+1)`
-/

namespace A335340.P12810431331295162590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n * A074909 (n + 1)

end

end A335340.P12810431331295162590

namespace A335340

/-- `2*A007318(n)*A074909(n+1)` -/
def P12810431331295162590.Spec : Prop :=
  ∀ n, P12810431331295162590.a n = A335340 (n + 1)

theorem P12810431331295162590.correct : P12810431331295162590.Spec := by
  intro n
  simp only [A335340, Nat.add_sub_cancel, A335340.P12810431331295162590.a, A335340.P11147850247702893830.a, A007318, A007318.P302227728145965961.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A103371, A103371.P12505102515609200163.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A135278, A135278.P10862305414900331449.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A335340

/-! ## A335340.P16913992794404526093

`(A132787(n+1)+1)*A004736(n+1)`
-/

namespace A335340.P16913992794404526093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132787 (n + 1) + 1) * A004736 (n + 1)

end

end A335340.P16913992794404526093

namespace A335340

/-- `(A132787(n+1)+1)*A004736(n+1)` -/
def P16913992794404526093.Spec : Prop :=
  ∀ n, P16913992794404526093.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P18018648520755248984

`2*A001263(n+1)*A004736(n+1)`
-/

namespace A335340.P18018648520755248984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001263 (n + 1) * A004736 (n + 1))

end

end A335340.P18018648520755248984

namespace A335340

/-- `2*A001263(n+1)*A004736(n+1)` -/
def P18018648520755248984.Spec : Prop :=
  ∀ n, P18018648520755248984.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P16103172621741731524

`2*A133084(n+1)*A133567(n+1)`
-/

namespace A335340.P16103172621741731524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133084 (n + 1) * A133567 (n + 1))

end

end A335340.P16103172621741731524

namespace A335340

/-- `2*A133084(n+1)*A133567(n+1)` -/
def P16103172621741731524.Spec : Prop :=
  ∀ n, P16103172621741731524.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P1727457246984377989

`(A110813(n)+A007318(n))*A007318(n)`
-/

namespace A335340.P1727457246984377989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110813 n + A007318 n) * A007318 n

end

end A335340.P1727457246984377989

namespace A335340

/-- `(A110813(n)+A007318(n))*A007318(n)` -/
def P1727457246984377989.Spec : Prop :=
  ∀ n, P1727457246984377989.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P6232917132474884473

`(A028326(n)-A156644(n))*A028326(n)`
-/

namespace A335340.P6232917132474884473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028326 n - A156644 n) * A028326 n

end

end A335340.P6232917132474884473

namespace A335340

/-- `(A028326(n)-A156644(n))*A028326(n)` -/
def P6232917132474884473.Spec : Prop :=
  ∀ n, P6232917132474884473.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P6183589123427405758

`(A007318(n+1)+A007318(n))*A129994(n)`
-/

namespace A335340.P6183589123427405758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (n + 1) + A007318 n) * A129994 n

end

end A335340.P6183589123427405758

namespace A335340

/-- `(A007318(n+1)+A007318(n))*A129994(n)` -/
def P6183589123427405758.Spec : Prop :=
  ∀ n, P6183589123427405758.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P8259543126938251241

`2*A132813(∑[2*n]%comp[∑[n]])`
-/

namespace A335340.P8259543126938251241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132813 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A335340.P8259543126938251241

namespace A335340

/-- `2*A132813(∑[2*n]%comp[∑[n]])` -/
def P8259543126938251241.Spec : Prop :=
  ∀ n, P8259543126938251241.a n = A335340 (n + 1)

end A335340

/-! ## A335340.P11710669938099679735

`2*A132813(A061579(n))`
-/

namespace A335340.P11710669938099679735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132813 (A061579 n).toNat

end

end A335340.P11710669938099679735

namespace A335340

/-- `2*A132813(A061579(n))` -/
def P11710669938099679735.Spec : Prop :=
  ∀ n, P11710669938099679735.a n = A335340 (n + 1)

end A335340

/-!
# A335341: Sum of divisors of A003557(n).

The programs for A335341, the canonical program `A335341.P15141081390874697399` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335341 has offset 1).

The definition of A335341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335341.P10707602899311205937

`A000203(A003557(n+1))`
-/

namespace A335341.P10707602899311205937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003557 (n + 1)).toNat

end

end A335341.P10707602899311205937

namespace A335341

/-- `A000203(A003557(n+1))` -/
def P10707602899311205937.Spec : Prop :=
  ∀ n, P10707602899311205937.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P7049067061887197409

`A336567(n+1)+A003557(n+1)`
-/

namespace A335341.P7049067061887197409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336567 (n + 1) + A003557 (n + 1)

end

end A335341.P7049067061887197409

namespace A335341

/-- `A336567(n+1)+A003557(n+1)` -/
def P7049067061887197409.Spec : Prop :=
  ∀ n, P7049067061887197409.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P15141081390874697399

`A047994(n+1)/A173557(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A335341

/-- `A047994(n+1)/A173557(n+1)` -/
def P15141081390874697399.Spec : Prop :=
  ∀ n, P15141081390874697399.a n = (A335341 (n + 1) : ℚ)

end A335341

/-! ## A335341.P16526443726831800506

`∑{d}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A335341.P16526443726831800506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A335341.P16526443726831800506

namespace A335341

/-- `∑{d}[(n+1)/∏{p}[n+1, #], #]` -/
def P16526443726831800506.Spec : Prop :=
  ∀ n, (P16526443726831800506.a n : ℤ) = A335341 (n + 1)

end A335341

/-! ## A335341.P12109288797812355939

`A000203((n+1)/∏{p}[n+1, #])`
-/

namespace A335341.P12109288797812355939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A335341.P12109288797812355939

namespace A335341

/-- `A000203((n+1)/∏{p}[n+1, #])` -/
def P12109288797812355939.Spec : Prop :=
  ∀ n, P12109288797812355939.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P1468687089056547445

`A000203(A336551(n+1)+1)`
-/

namespace A335341.P1468687089056547445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A336551 (n + 1) + 1).toNat

end

end A335341.P1468687089056547445

namespace A335341

/-- `A000203(A336551(n+1)+1)` -/
def P1468687089056547445.Spec : Prop :=
  ∀ n, P1468687089056547445.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P17036180121147194267

`A245092(2*A003557(n+1)-1)`
-/

namespace A335341.P17036180121147194267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * A003557 (n + 1) - 1).toNat

end

end A335341.P17036180121147194267

namespace A335341

/-- `A245092(2*A003557(n+1)-1)` -/
def P17036180121147194267.Spec : Prop :=
  ∀ n, P17036180121147194267.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P6538371479516272298

`A146076(2*A003557(n+1))/2`
-/

namespace A335341.P6538371479516272298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * A003557 (n + 1)).toNat : ℚ) / 2

end

end A335341.P6538371479516272298

namespace A335341

/-- `A146076(2*A003557(n+1))/2` -/
def P6538371479516272298.Spec : Prop :=
  ∀ n, P6538371479516272298.a n = (A335341 (n + 1) : ℚ)

end A335341

/-! ## A335341.P10784135152442451974

`A000203(1-A010848(n+1)+n)`
-/

namespace A335341.P10784135152442451974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 - A010848 (n + 1) + (n : ℤ)).toNat

end

end A335341.P10784135152442451974

namespace A335341

/-- `A000203(1-A010848(n+1)+n)` -/
def P10784135152442451974.Spec : Prop :=
  ∀ n, P10784135152442451974.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P8741458687443343563

`A140670(n+1)*A336649(n+1)`
-/

namespace A335341.P8741458687443343563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (n + 1) * A336649 (n + 1)

end

end A335341.P8741458687443343563

namespace A335341

/-- `A140670(n+1)*A336649(n+1)` -/
def P8741458687443343563.Spec : Prop :=
  ∀ n, P8741458687443343563.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P7360269084224248297

`A000203((n+1)/A007947(n+1))`
-/

namespace A335341.P7360269084224248297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A335341.P7360269084224248297

namespace A335341

/-- `A000203((n+1)/A007947(n+1))` -/
def P7360269084224248297.Spec : Prop :=
  ∀ n, P7360269084224248297.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P12868794119080490617

`A057723(n+1)/A007947(n+1)`
-/

namespace A335341.P12868794119080490617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A335341.P12868794119080490617

namespace A335341

/-- `A057723(n+1)/A007947(n+1)` -/
def P12868794119080490617.Spec : Prop :=
  ∀ n, P12868794119080490617.a n = (A335341 (n + 1) : ℚ)

end A335341

/-! ## A335341.P13842084783224423206

`A000203(A102631(n+1)/(n+1))`
-/

namespace A335341.P13842084783224423206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A335341.P13842084783224423206

namespace A335341

/-- `A000203(A102631(n+1)/(n+1))` -/
def P13842084783224423206.Spec : Prop :=
  ∀ n, P13842084783224423206.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P15806205115168892880

`A000203((n+1)²/A064549(n+1))`
-/

namespace A335341.P15806205115168892880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A064549 (n + 1) : ℚ))).toNat

end

end A335341.P15806205115168892880

namespace A335341

/-- `A000203((n+1)²/A064549(n+1))` -/
def P15806205115168892880.Spec : Prop :=
  ∀ n, P15806205115168892880.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P13733033201577350589

`∑{d}[A160467(n+1)*A336651(n+1), #]`
-/

namespace A335341.P13733033201577350589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A336651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A335341.P13733033201577350589

namespace A335341

/-- `∑{d}[A160467(n+1)*A336651(n+1), #]` -/
def P13733033201577350589.Spec : Prop :=
  ∀ n, (P13733033201577350589.a n : ℤ) = A335341 (n + 1)

end A335341

/-! ## A335341.P15139274310318477682

`∑{d}[A348037(n+1)*A348039(n+1), #]`
-/

namespace A335341.P15139274310318477682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (n + 1) * A348039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A335341.P15139274310318477682

namespace A335341

/-- `∑{d}[A348037(n+1)*A348039(n+1), #]` -/
def P15139274310318477682.Spec : Prop :=
  ∀ n, (P15139274310318477682.a n : ℤ) = A335341 (n + 1)

end A335341

/-! ## A335341.P4475171286045150606

`∑{d}[A000010(n+1)/A173557(n+1), #]`
-/

namespace A335341.P4475171286045150606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A335341.P4475171286045150606

namespace A335341

/-- `∑{d}[A000010(n+1)/A173557(n+1), #]` -/
def P4475171286045150606.Spec : Prop :=
  ∀ n, (P4475171286045150606.a n : ℤ) = A335341 (n + 1)

end A335341

/-! ## A335341.P8515116297590252157

`∑{d}[A217434(n+1)/A006530(n+1), #]`
-/

namespace A335341.P8515116297590252157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A335341.P8515116297590252157

namespace A335341

/-- `∑{d}[A217434(n+1)/A006530(n+1), #]` -/
def P8515116297590252157.Spec : Prop :=
  ∀ n, (P8515116297590252157.a n : ℤ) = A335341 (n + 1)

end A335341

/-! ## A335341.P11053877222350749045

`A000203(A000203(n+1)-A326187(n+1))`
-/

namespace A335341.P11053877222350749045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1) - A326187 (n + 1)).toNat

end

end A335341.P11053877222350749045

namespace A335341

/-- `A000203(A000203(n+1)-A326187(n+1))` -/
def P11053877222350749045.Spec : Prop :=
  ∀ n, P11053877222350749045.a n = A335341 (n + 1)

end A335341

/-! ## A335341.P3215081041817152289

`A000203(A001065(n+1)-A326188(n+1))`
-/

namespace A335341.P3215081041817152289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001065 (n + 1) - A326188 (n + 1)).toNat

end

end A335341.P3215081041817152289

namespace A335341

/-- `A000203(A001065(n+1)-A326188(n+1))` -/
def P3215081041817152289.Spec : Prop :=
  ∀ n, P3215081041817152289.a n = A335341 (n + 1)

end A335341

/-!
# A335342: Number of free trees with exactly n nodes with fewer than three neighbors.

The programs for A335342, there is no canonical definition to state claims against.
-/

/-! ## A335342.P7646512252875237832

`A132781(A321994(n+1)+1)`
-/

namespace A335342.P7646512252875237832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132781 (A321994 (n + 1) + 1).toNat

end

end A335342.P7646512252875237832

/-! ## A335342.P8276594842718734060

`A157271(A297708(n)+A016116(n))`
-/

namespace A335342.P8276594842718734060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A297708 n + A016116 n).toNat

end

end A335342.P8276594842718734060

/-! ## A335342.P12880042770415847983

`A194640(A358011(n)+A148306(n))`
-/

namespace A335342.P12880042770415847983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A358011 n + A148306 n).toNat

end

end A335342.P12880042770415847983

/-! ## A335342.P12061979982611258970

`A000085(n)-A279871(A133221(n))`
-/

namespace A335342.P12061979982611258970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A279871 (A133221 n).toNat

end

end A335342.P12061979982611258970

/-!
# A335343: Number of k-colored graphs on n nodes with restricted labels.

The programs for A335343, there is no canonical definition to state claims against.
-/

/-! ## A335343.P9959645616619679434

`A324659(∑[A324638(n)])+1`
-/

namespace A335343.P9959645616619679434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324659 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A335343.P9959645616619679434

/-! ## A335343.P14195402497757041123

`and(A000265(A256016(n)), A164299(n))`
-/

namespace A335343.P14195402497757041123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 (A256016 n).toNat) (A164299 n)

end

end A335343.P14195402497757041123

/-!
# A335344: Expansion of e.g.f. exp(x^2/(2*(1 - x)^2)).

The programs for A335344, there is no canonical definition to state claims against.
-/

/-! ## A335344.P11470773447303873901

`A324750(n*∑[round(sqrt(n))])`
-/

namespace A335344.P11470773447303873901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A335344.P11470773447303873901

/-! ## A335344.P10124309758129802422

`A273376(A012718(n)+1)`
-/

namespace A335344.P10124309758129802422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273376 (A012718 n + 1).toNat

end

end A335344.P10124309758129802422

/-!
# A335345: Expansion of e.g.f. exp(x^2/(2*(1 - x)^3)).

The programs for A335345, there is no canonical definition to state claims against.
-/

/-! ## A335345.P12387498250162919407

`A008621(A123307(n))-n`
-/

namespace A335345.P12387498250162919407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A123307 n).toNat - (n : ℤ)

end

end A335345.P12387498250162919407

/-! ## A335345.P1166949959739647192

`A140106(A025164(n))+A025149(n)`
-/

namespace A335345.P1166949959739647192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A025164 n).toNat + A025149 n

end

end A335345.P1166949959739647192

/-!
# A335346: Lesser of two consecutive semiprimes whose sum and difference are also semiprimes.

The programs for A335346, there is no canonical definition to state claims against.
-/

/-! ## A335346.P6393368476068757244

`∩[A272306(n+1), A272307(n+1)]`
-/

namespace A335346.P6393368476068757244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335346.P6393368476068757244

/-! ## A335346.P13372832361748559902

`∩[A001358(A109310(n+1)), A272306(n+1)]`
-/

namespace A335346.P13372832361748559902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A109310 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335346.P13372832361748559902

/-! ## A335346.P553599398655112405

`∩[A001358(A092191(n+1)), A272307(n+1)]`
-/

namespace A335346.P553599398655112405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A092191 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335346.P553599398655112405

/-! ## A335346.P3045938392618917131

`A001358(∩[A109310(n+1), A092191(n+5)])`
-/

namespace A335346.P3045938392618917131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092191 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A335346.P3045938392618917131

/-! ## A335346.P6706194178100508364

`∩[A129767(2*A092191(n+1)), A272307(n+1)]`
-/

namespace A335346.P6706194178100508364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A092191 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335346.P6706194178100508364

/-!
# A335347: Middle side of primitive triples for integer-sided triangles that have two perpendicular medians, the triples being ordered by increasing perimeter.

The programs for A335347, there is no canonical definition to state claims against.
-/

/-! ## A335347.P13647873379860613751

`A335035(n+1)-A335036(n+1)-A335348(n+1)`
-/

namespace A335347.P13647873379860613751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335035 (n + 1) - A335036 (n + 1) - A335348 (n + 1)

end

end A335347.P13647873379860613751

/-! ## A335347.P2007811318830150608

`A335034(3*(n+1)-1)`
-/

namespace A335347.P2007811318830150608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (3 * (n + 1) - 1)

end

end A335347.P2007811318830150608

/-! ## A335347.P10330323495496758536

`A335273(n+1)+A335418(n+1)-A335348(n+1)`
-/

namespace A335347.P10330323495496758536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335273 (n + 1) + (A335418 (n + 1) - A335348 (n + 1))

end

end A335347.P10330323495496758536

/-! ## A335347.P261039208386988836

`A335034(A016789(n))+char[20]`
-/

namespace A335347.P261039208386988836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (A016789 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A335347.P261039208386988836

/-! ## A335347.P2720693124876614318

`A000027(A335034(comp[2*n-ceil(n/2)]))`
-/

namespace A335347.P2720693124876614318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌈(n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A335034 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A335347.P2720693124876614318

/-!
# A335348: Largest side of primitive triples for integer-sided triangles that have two perpendicular medians, the triples being ordered by increasing perimeter.

The programs for A335348, there is no canonical definition to state claims against.
-/

/-! ## A335348.P2666961101545140805

`A335035(n+1)-A335036(n+1)-A335347(n+1)`
-/

namespace A335348.P2666961101545140805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335035 (n + 1) - A335036 (n + 1) - A335347 (n + 1)

end

end A335348.P2666961101545140805

/-! ## A335348.P16426355342834009348

`A335034(3*(n+1))`
-/

namespace A335348.P16426355342834009348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (3 * (n + 1))

end

end A335348.P16426355342834009348

/-! ## A335348.P18405831519434601354

`A335273(n+1)+A335418(n+1)-A335347(n+1)`
-/

namespace A335348.P18405831519434601354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335273 (n + 1) + (A335418 (n + 1) - A335347 (n + 1))

end

end A335348.P18405831519434601354

/-! ## A335348.P16210427775195087994

`record[A335034(A329926(n+1))]`
-/

namespace A335348.P16210427775195087994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (A329926 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335348.P16210427775195087994

/-!
# A335349: a(n) counts anti-chains of size three in "0,1,2" Motzkin trees on n edges.

The programs for A335349, there is no canonical definition to state claims against.
-/

/-! ## A335349.P3881832213923407428

`A052928(A285043(n)+A104984(3*n))`
-/

namespace A335349.P3881832213923407428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A285043 n + A104984 (3 * n)).toNat

end

end A335349.P3881832213923407428

/-!
# A335350: a(n) is the number of regions formed in a square by dividing each of its sides into n equal parts giving a total of 4*n nodes and drawing straight line segments from node k to node (k+n+1) mod 4*n, 0 <= k < 4*n.

The programs for A335350, there is no canonical definition to state claims against.
-/

/-! ## A335350.P9419782752544294866

`A335351(n+1)+1-A335352(n+1)`
-/

namespace A335350.P9419782752544294866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335351 (n + 1) + (1 - A335352 (n + 1))

end

end A335350.P9419782752544294866

/-! ## A335350.P596136861491421729

`A335351(n+1)+A024000(A335352(n+1))`
-/

namespace A335350.P596136861491421729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335351 (n + 1) + A024000 (A335352 (n + 1)).toNat

end

end A335350.P596136861491421729

/-! ## A335350.P5569227317757518461

`A020725(A335351(n+1)-A335352(n+1))`
-/

namespace A335350.P5569227317757518461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335351 (n + 1) - A335352 (n + 1)).toNat

end

end A335350.P5569227317757518461

/-! ## A335350.P11464083952811269185

`A065475(A335351(n+1)-A335352(n+1))`
-/

namespace A335350.P11464083952811269185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335351 (n + 1) - A335352 (n + 1)).toNat

end

end A335350.P11464083952811269185

/-!
# A335351: a(n) is the number of edges formed in a square by dividing each of its sides into n equal parts giving a total of 4*n nodes and drawing straight line segments from node k to node (k+n+1) mod 4*n, 0 <= k < 4*n.

The programs for A335351, there is no canonical definition to state claims against.
-/

/-! ## A335351.P2647571250691762629

`A335350(n+1)+A335352(n+1)-1`
-/

namespace A335351.P2647571250691762629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335350 (n + 1) + (A335352 (n + 1) - 1)

end

end A335351.P2647571250691762629

/-! ## A335351.P10333923970784186479

`A335350(n+1)+A023443(A335352(n+1))`
-/

namespace A335351.P10333923970784186479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335350 (n + 1) + A023443 (A335352 (n + 1)).toNat

end

end A335351.P10333923970784186479

/-! ## A335351.P10825508930506468803

`A185048(A335352(n+1)+A335350(n+1))`
-/

namespace A335351.P10825508930506468803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A335352 (n + 1) + A335350 (n + 1)).toNat

end

end A335351.P10825508930506468803

/-! ## A335351.P13717790842800116347

`A004442(A335352(n+1)+A335350(n+1))`
-/

namespace A335351.P13717790842800116347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A335352 (n + 1) + A335350 (n + 1)).toNat

end

end A335351.P13717790842800116347

/-! ## A335351.P2396527738233822124

`A029578(A335352(n+1)+A335350(n+1))`
-/

namespace A335351.P2396527738233822124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A335352 (n + 1) + A335350 (n + 1)).toNat

end

end A335351.P2396527738233822124

/-!
# A335352: a(n) is the number of vertices formed in a square by dividing each of its sides into n equal parts giving a total of 4*n nodes and drawing straight line segments from node k to node (k+n+1) mod 4*n, 0 <= k < 4*n.

The programs for A335352, there is no canonical definition to state claims against.
-/

/-! ## A335352.P12610843630597825439

`A335351(n+1)+1-A335350(n+1)`
-/

namespace A335352.P12610843630597825439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335351 (n + 1) + (1 - A335350 (n + 1))

end

end A335352.P12610843630597825439

/-! ## A335352.P55116423867719613

`A335351(n+1)+A024000(A335350(n+1))`
-/

namespace A335352.P55116423867719613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335351 (n + 1) + A024000 (A335350 (n + 1)).toNat

end

end A335352.P55116423867719613

/-! ## A335352.P4966370399677759653

`A020725(A335351(n+1)-A335350(n+1))`
-/

namespace A335352.P4966370399677759653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335351 (n + 1) - A335350 (n + 1)).toNat

end

end A335352.P4966370399677759653

/-! ## A335352.P9975031357425523488

`A065475(A335351(n+1)-A335350(n+1))`
-/

namespace A335352.P9975031357425523488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335351 (n + 1) - A335350 (n + 1)).toNat

end

end A335352.P9975031357425523488

/-!
# A335355: a(n) counts anti-chains of size four in "0,1,2" Motzkin trees on n edges.

The programs for A335355, there is no canonical definition to state claims against.
-/

/-! ## A335355.P7608467787254184674

`5*A330966(n+6)`
-/

namespace A335355.P7608467787254184674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A330966 (n + 6)

end

end A335355.P7608467787254184674

/-!
# A335356: Number of ways to linearly order the connected components of a simple labeled graph on n nodes.

The programs for A335356, there is no canonical definition to state claims against.
-/

/-! ## A335356.P8622643084012153118

`A220466(A080896(n))+A096273(n)`
-/

namespace A335356.P8622643084012153118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A080896 n).toNat + A096273 n

end

end A335356.P8622643084012153118

/-! ## A335356.P16733387105695213437

`A005185(A360832(n)+A360810(n))`
-/

namespace A335356.P16733387105695213437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A360832 n + A360810 n).toNat

end

end A335356.P16733387105695213437

/-!
# A335357: Number of compositions of n such that every subsequence has a different sum.

The programs for A335357, there is no canonical definition to state claims against.
-/

/-! ## A335357.P15810154126159652792

`A325696(n)+A084320(ceil(2^or(1, n-1)))`
-/

namespace A335357.P15810154126159652792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325696 n + A084320 ⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉.toNat

end

end A335357.P15810154126159652792

/-!
# A335358: a(n) is the X-coordinate of the n-th point of the Koch curve; sequence A335359 gives Y-coordinates.

The programs for A335358, there is no canonical definition to state claims against.
-/

/-! ## A335358.P13051423942838860215

`A335359(2*n)+A335359(n)`
-/

namespace A335358.P13051423942838860215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335359 (2 * n) + A335359 n

end

end A335358.P13051423942838860215

/-! ## A335358.P9068287125095114595

`∑[A128834(n)^A137400(n)]-A335359(n)`
-/

namespace A335358.P9068287125095114595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128834 n : ℚ) ^ (A137400 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A335359 n : ℚ)

end

end A335358.P9068287125095114595

/-! ## A335358.P13816298162826272118

`∑[A128834(n)^A080022(n+1)]-A335359(n)`
-/

namespace A335358.P13816298162826272118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128834 n : ℚ) ^ (A080022 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A335359 n : ℚ)

end

end A335358.P13816298162826272118

/-! ## A335358.P3454439603401264863

`A266123(2*n)%A348273(n+3)`
-/

namespace A335358.P3454439603401264863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266123 (2 * n)) (A348273 (n + 3))

end

end A335358.P3454439603401264863

/-! ## A335358.P1476722495367547887

`A054977(A000045(n))*A266123(2*n)`
-/

namespace A335358.P1476722495367547887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000045 n).toNat * A266123 (2 * n)

end

end A335358.P1476722495367547887

/-!
# A335359: a(n) is the Y-coordinate of the n-th point of the Koch curve; sequence A335358 gives X-coordinates.

The programs for A335359, there is no canonical definition to state claims against.
-/

/-! ## A335359.P8535661255393824600

`A004525(A335358(2*n)-A335358(n))`
-/

namespace A335359.P8535661255393824600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A335358 (2 * n) - A335358 n).toNat

end

end A335359.P8535661255393824600

/-! ## A335359.P7054842370263073009

`A004526(A335358(2*n)-A335358(n))`
-/

namespace A335359.P7054842370263073009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A335358 (2 * n) - A335358 n).toNat

end

end A335359.P7054842370263073009

/-! ## A335359.P1215843026563425226

`A014682(A335358(2*n)-A335358(n))`
-/

namespace A335359.P1215843026563425226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A335358 (2 * n) - A335358 n).toNat

end

end A335359.P1215843026563425226

/-! ## A335359.P13779876732280580323

`A026741(A335358(2*n)-A335358(n))`
-/

namespace A335359.P13779876732280580323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A335358 (2 * n) - A335358 n).toNat

end

end A335359.P13779876732280580323

/-! ## A335359.P6625021213761520670

`A142150(A335358(2*n)-A335358(n))`
-/

namespace A335359.P6625021213761520670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A335358 (2 * n) - A335358 n).toNat

end

end A335359.P6625021213761520670

/-! ## A335359.P7135239132291222464

`A185452(A335358(2*n)-A335358(n))`
-/

namespace A335359.P7135239132291222464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 (A335358 (2 * n) - A335358 n).toNat

end

end A335359.P7135239132291222464

/-!
# A335361: Prime numbers p such that p!*i + 1 is composite for i = 1..p.

The programs for A335361, there is no canonical definition to state claims against.
-/

/-! ## A335361.P9905935800130964331

`p?[A335233(n+1)]`
-/

namespace A335361.P9905935800130964331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335361.P9905935800130964331

/-! ## A335361.P15660262416120643506

`p?[record[A335233(A126759(n))]]`
-/

namespace A335361.P15660262416120643506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335233 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335361.P15660262416120643506

/-! ## A335361.P8740567584519672795

`p?[record[A335233(A134478(n))]]`
-/

namespace A335361.P8740567584519672795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335233 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335361.P8740567584519672795

/-! ## A335361.P4466431161957873535

`p?[record[A335233(A328396(n))]]`
-/

namespace A335361.P4466431161957873535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335233 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A335361.P4466431161957873535

/-! ## A335361.P7277813117378412837

`record[A006530(A335233(n+3))]`
-/

namespace A335361.P7277813117378412837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A335233 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335361.P7277813117378412837

/-!
# A335364: The squares visited on the Ulam spiral when starting at square 1 and then stepping to the closest visible unvisited square which contains a prime number. If two or more visible squares are the same distance from the current square then the one with the smallest prime number is chosen.

The programs for A335364, there is no canonical definition to state claims against.
-/

/-! ## A335364.P10177731749043193853

`A330979(n+1)+A307553(A213743(n))`
-/

namespace A335364.P10177731749043193853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330979 (n + 1) + A307553 (A213743 n).toNat

end

end A335364.P10177731749043193853

/-! ## A335364.P9471259957513333140

`xor(A219901(A335803(n+1)), A335816(n+1))`
-/

namespace A335364.P9471259957513333140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A219901 (A335803 (n + 1)).toNat) (A335816 (n + 1))

end

end A335364.P9471259957513333140

/-!
# A335365: Numbers that are unreachable by the process of starting from 1 and adding 5 and/or multiplying by 3.

The programs for A335365, there is no canonical definition to state claims against.
-/

/-! ## A335365.P12474029895693266941

`lt[A335392(n+1), 1]+1`
-/

namespace A335365.P12474029895693266941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335392 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A335365.P12474029895693266941

/-!
# A335366: Primes preceding the first-occurrence gaps in A014320.

The programs for A335366, there is no canonical definition to state claims against.
-/

/-! ## A335366.P9615395313853907654

`A335367(n+1)-A014320(n+1)`
-/

namespace A335366.P9615395313853907654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335367 (n + 1) - A014320 (n + 1)

end

end A335366.P9615395313853907654

/-! ## A335366.P11313193153516962380

`A335367(C(n+1, n))+A001489(A014320(n+1))`
-/

namespace A335366.P11313193153516962380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335367 (Nat.choose (n + 1) n) + A001489 (A014320 (n + 1)).toNat

end

end A335366.P11313193153516962380

/-! ## A335366.P5921721140416447698

`A335367(A000027(n+1))+A001489(A014320(n+1))`
-/

namespace A335366.P5921721140416447698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335367 (A000027 (n + 1)).toNat + A001489 (A014320 (n + 1)).toNat

end

end A335366.P5921721140416447698

/-! ## A335366.P11004920125460554554

`A000230(floor(A014320(n+1)/2))`
-/

namespace A335366.P11004920125460554554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ⌊(A014320 (n + 1) : ℚ) / 2⌋.toNat

end

end A335366.P11004920125460554554

/-! ## A335366.P5799247153751041886

`A000230(A014320(n+1)%A014320(n+1)²/2)`
-/

namespace A335366.P5799247153751041886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((Int.tmod (A014320 (n + 1)) (A014320 (n + 1) ^ 2) : ℚ) / 2)).toNat

end

end A335366.P5799247153751041886

/-!
# A335367: Primes at the end of the first-occurrence gaps in A014320.

The programs for A335367, there is no canonical definition to state claims against.
-/

/-! ## A335367.P2587014604092281439

`A335366(n+1)+A014320(n+1)`
-/

namespace A335367.P2587014604092281439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335366 (n + 1) + A014320 (n + 1)

end

end A335367.P2587014604092281439

/-! ## A335367.P8936871889293577183

`A014320(n+1)+A000230(floor(A014320(n+1)/2))`
-/

namespace A335367.P8936871889293577183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1) + A000230 ⌊(A014320 (n + 1) : ℚ) / 2⌋.toNat

end

end A335367.P8936871889293577183

/-! ## A335367.P15792753422998194557

`A014320(n+1)+A000230(A014320(n+1)%A014320(n+1)²/2)`
-/

namespace A335367.P15792753422998194557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1) + A000230 (SequenceMachineLib.roundAway ((Int.tmod (A014320 (n + 1)) (A014320 (n + 1) ^ 2) : ℚ) / 2)).toNat

end

end A335367.P15792753422998194557

/-! ## A335367.P16793293942239440137

`A151800(A335366(n+1))`
-/

namespace A335367.P16793293942239440137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A335366 (n + 1)).toNat

end

end A335367.P16793293942239440137

/-! ## A335367.P9922097131541220898

`A335366(n+1)+A166597(A335366(n+1)+n)`
-/

namespace A335367.P9922097131541220898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335366 (n + 1) + A166597 (A335366 (n + 1) + (n : ℤ)).toNat

end

end A335367.P9922097131541220898

/-!
# A335368: Harmonic numbers k with a record number of primes p not dividing k such that k*p is also a harmonic number.

The programs for A335368, there is no canonical definition to state claims against.
-/

/-! ## A335368.P5712530435469721765

`A001599(A084122(n+1)+A020344(n))`
-/

namespace A335368.P5712530435469721765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (A084122 (n + 1) + A020344 n).toNat

end

end A335368.P5712530435469721765

/-!
# A335369: Harmonic numbers k such that k*p is not a harmonic number for all the primes p that do not divide k.

The programs for A335369, there is no canonical definition to state claims against.
-/

/-! ## A335369.P3299684551150043757

`filter[A001599(n+1), A116937(#)]`
-/

namespace A335369.P3299684551150043757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116937 (f1 j).toNat = 1) n)

end

end A335369.P3299684551150043757

/-! ## A335369.P6163502074553169549

`A001599(A001222(49*a(n-1)))` with `a(0)=1`
-/

namespace A335369.P6163502074553169549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001599 (A001222 (49 * a (n - 1)).toNat).toNat

end

end A335369.P6163502074553169549

/-!
# A335370: Harmonic numbers m with a record number k of distinct prime numbers p_i (i = 1..k) that do not divide m such that m*p_1, m*p_1*p_2, ... , m*p_1*...*p_k are all harmonic numbers.

The programs for A335370, there is no canonical definition to state claims against.
-/

/-! ## A335370.P11404252309162666729

`A335371(∑[A090182(3*n)])`
-/

namespace A335370.P11404252309162666729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090182 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335371 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335370.P11404252309162666729

/-! ## A335370.P1276133351089850554

`A335371(∑[A074909((n+1)/2^val(n+1, 2))])`
-/

namespace A335370.P1276133351089850554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335371 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335370.P1276133351089850554

/-! ## A335370.P6922989673835794724

`A335371(A365311(n)+A272351(n+1))`
-/

namespace A335370.P6922989673835794724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335371 (A365311 n + A272351 (n + 1)).toNat

end

end A335370.P6922989673835794724

/-! ## A335370.P10378931426400953194

`A335371(∪[A187219(2*(n+1)), A026424(3*n+2)])`
-/

namespace A335370.P10378931426400953194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335371 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A335370.P10378931426400953194

/-!
# A335371: Harmonic numbers with a record number of harmonic numbers that can be generated from them using an iterative process of multiplying by primes (see Comments).

The programs for A335371, there is no canonical definition to state claims against.
-/

/-! ## A335371.P2599496909565491676

`A349476(A268524(n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A335371.P2599496909565491676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349476 (A268524 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)).toNat

end

end A335371.P2599496909565491676

/-!
# A335373: Numbers k such that the k-th composition in standard order (A066099) is not unimodal.

The programs for A335373, there is no canonical definition to state claims against.
-/

/-! ## A335373.P18199308899725399741

`record[A057979(A335375(n+1))]`
-/

namespace A335373.P18199308899725399741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A335375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335373.P18199308899725399741

/-! ## A335373.P14629304075745340882

`record[A025480(A335375(n+1)-1)]`
-/

namespace A335373.P14629304075745340882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A335375 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335373.P14629304075745340882

/-! ## A335373.P13834478704396062767

`A004526(record[A000265(A335375(n+1))])`
-/

namespace A335373.P13834478704396062767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A335375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335373.P13834478704396062767

/-! ## A335373.P14556481472033100755

`A028242(record[A000265(A335375(n+1))])`
-/

namespace A335373.P14556481472033100755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A335375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335373.P14556481472033100755

/-! ## A335373.P13173020979673678361

`lt[A033264((2*n+1)%(n+2)+1), A037861(2*A335587(n+1))]`
-/

namespace A335373.P13173020979673678361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 ((2 * n + 1) % (n + 2) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A335587 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335373.P13173020979673678361

/-!
# A335374: Numbers k such that the k-th composition in standard order (A066099) is not co-unimodal.

The programs for A335374, there is no canonical definition to state claims against.
-/

/-! ## A335374.P5763988404798083556

`∪[A335480(n+1), A375296(n+1)]`
-/

namespace A335374.P5763988404798083556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335374.P5763988404798083556

/-! ## A335374.P17304353804598849388

`∪[A335482(n+1), A375295(n+1)]`
-/

namespace A335374.P17304353804598849388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335374.P17304353804598849388

/-! ## A335374.P4361792251208543304

`∪[A335466(n+1), A391624(n+1)]`
-/

namespace A335374.P4361792251208543304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335374.P4361792251208543304

/-! ## A335374.P267011197813275022

`∪[A375137(n+1), A375296(n+1)]`
-/

namespace A335374.P267011197813275022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335374.P267011197813275022

/-! ## A335374.P17297671490657351593

`∪[A375138(n+1), A375295(n+1)]`
-/

namespace A335374.P17297671490657351593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335374.P17297671490657351593

/-! ## A335374.P133195352955213182

`∪[A375295(n+1), A375296(n+1)]`
-/

namespace A335374.P133195352955213182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335374.P133195352955213182

/-! ## A335374.P10573175244437199642

`∪[A375295(n+1), A391624(n+1)]`
-/

namespace A335374.P10573175244437199642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335374.P10573175244437199642

/-! ## A335374.P18407249673195809458

`∪[A375296(n+1), A391624(n+1)]`
-/

namespace A335374.P18407249673195809458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335374.P18407249673195809458

/-!
# A335375: Numbers k such that the k-th composition in standard order (A066099) is neither unimodal nor co-unimodal.

The programs for A335375, there is no canonical definition to state claims against.
-/

/-! ## A335375.P13474088683345714824

`∩[A335373(n+1), A335466(n+1)]`
-/

namespace A335375.P13474088683345714824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335375.P13474088683345714824

/-! ## A335375.P6986945428376667740

`∩[A335373(n+1), A335374(n+1)]`
-/

namespace A335375.P6986945428376667740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335375.P6986945428376667740

/-!
# A335376: Heinz numbers of totally co-strong integer partitions.

The programs for A335376, there is no canonical definition to state claims against.
-/

/-! ## A335376.P15842374249568312092

`comp[-A349436(16*n+11)]`
-/

namespace A335376.P15842374249568312092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A349436 (16 * n + 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335376.P15842374249568312092

/-! ## A335376.P8546239673248088260

`comp[A335377(n+1)-1]+1`
-/

namespace A335376.P8546239673248088260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335377 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335376.P8546239673248088260

/-! ## A335376.P11163387883695594802

`comp[2*A061669(2*n+3)]`
-/

namespace A335376.P11163387883695594802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061669 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335376.P11163387883695594802

/-! ## A335376.P10040796027778401744

`comp[lcm(n, A024978(4*n+5))]`
-/

namespace A335376.P10040796027778401744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A024978 (4 * n + 5))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335376.P10040796027778401744

/-! ## A335376.P6552318647974300949

`comp[lcm(C(n, 2), A054397(n+1))]`
-/

namespace A335376.P6552318647974300949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose n 2 : ℤ) (A054397 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335376.P6552318647974300949

/-! ## A335376.P1045921884227110848

`comp[∏{p}[n+1, -#]*A131728(n)]`
-/

namespace A335376.P1045921884227110848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) * A131728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335376.P1045921884227110848

/-! ## A335376.P15303575994938557042

`comp[∏{p}[n+1, -#]*A077814(n+1)]`
-/

namespace A335376.P15303575994938557042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) * A077814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335376.P15303575994938557042

/-! ## A335376.P10635792687596832749

`comp[2*xor(n, 2*n)*A324288(3*n)]`
-/

namespace A335376.P10635792687596832749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor n (2 * n) : ℤ) * A324288 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335376.P10635792687596832749

/-! ## A335376.P5227821616586222554

`comp[2*xor(n, 2*n)*A003986(n+17)]`
-/

namespace A335376.P5227821616586222554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor n (2 * n) : ℤ) * A003986 (n + 17)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335376.P5227821616586222554

/-! ## A335376.P13681596649459603560

`comp[2*n*A250120(ceil((n+1)/∏{p}[n+1, (n+1)/#]))]`
-/

namespace A335376.P13681596649459603560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A250120 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335376.P13681596649459603560

/-!
# A335377: Heinz numbers of non-totally co-strong integer partitions.

The programs for A335377, there is no canonical definition to state claims against.
-/

/-! ## A335377.P7315670646333606806

`∪[A071365(n+1), A350140(n+1)]`
-/

namespace A335377.P7315670646333606806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335377.P7315670646333606806

/-! ## A335377.P501387680174860264

`∪[A071365(n+1), A396642(n+1)]`
-/

namespace A335377.P501387680174860264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335377.P501387680174860264

/-!
# A335378: Number of ways to linearly order the components of a simple labeled graph on n nodes so that the label 1 is in the first component.

The programs for A335378, there is no canonical definition to state claims against.
-/

/-! ## A335378.P6435537422591494142

`A047453(A113296(n)+A112713(n))`
-/

namespace A335378.P6435537422591494142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (A113296 n + A112713 n).toNat

end

end A335378.P6435537422591494142

/-! ## A335378.P11329632617232973114

`A000213(n)*A238881(A006117(n))`
-/

namespace A335378.P11329632617232973114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n * A238881 (A006117 n).toNat

end

end A335378.P11329632617232973114

/-!
# A335379: a(n) is the number of Mersenne prime (irreducible) polynomials M = x^k(x+1)^(n-k)+1 of degree n in GF(2)[x] (k goes from 1 to n-1) such that Phi_7(M) has an odd number of prime divisors (omega(Phi_7(M)) is odd).

The programs for A335379, there is no canonical definition to state claims against.
-/

/-! ## A335379.P12718825809000278984

`and(A188510(n)+1, A335383(n+2))`
-/

namespace A335379.P12718825809000278984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188510 n + 1) (A335383 (n + 2))

end

end A335379.P12718825809000278984

/-! ## A335379.P3251214206797312740

`and(A188510(A008706(n)), A335383(n+2))`
-/

namespace A335379.P3251214206797312740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188510 (A008706 n).toNat) (A335383 (n + 2))

end

end A335379.P3251214206797312740

/-! ## A335379.P3559184378997689572

`A000122(xor(A351230(n)², A004273(n)))`
-/

namespace A335379.P3559184378997689572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.xor (A351230 n ^ 2) (A004273 n)).toNat

end

end A335379.P3559184378997689572

/-! ## A335379.P9211941590778374679

`A006996(n*A113520(3*n+5))`
-/

namespace A335379.P9211941590778374679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 ((n : ℤ) * A113520 (3 * n + 5)).toNat

end

end A335379.P9211941590778374679

/-! ## A335379.P14150095834369360619

`and(A006996(n²), A305534(n+1))`
-/

namespace A335379.P14150095834369360619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006996 (n ^ 2)) (A305534 (n + 1))

end

end A335379.P14150095834369360619

/-!
# A335380: a(n) is the X-coordinate of the n-th point of the Kochawave curve; sequence A335381 gives Y-coordinates.

The programs for A335380, there is no canonical definition to state claims against.
-/

/-! ## A335380.P18242217339845101814

`∑[round(sin(n%6))^A080022(n+1)]`
-/

namespace A335380.P18242217339845101814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ)) : ℚ) ^ (A080022 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335380.P18242217339845101814

/-! ## A335380.P16843600169512149329

`∑[A128834(n)^A128941(n)]`
-/

namespace A335380.P16843600169512149329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128834 n : ℚ) ^ (A128941 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335380.P16843600169512149329

/-! ## A335380.P10139921503147293729

`∑[A128834(n)^A137400(n)]`
-/

namespace A335380.P10139921503147293729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128834 n : ℚ) ^ (A137400 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335380.P10139921503147293729

/-! ## A335380.P10836486397507176671

`∑[A128834(n)^A080022(n+1)]`
-/

namespace A335380.P10836486397507176671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128834 n : ℚ) ^ (A080022 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335380.P10836486397507176671

/-! ## A335380.P4745157173364921101

`A335358(n)+A335359(n)%A000404(A079908(n))`
-/

namespace A335380.P4745157173364921101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335358 n + Int.tmod (A335359 n) (A000404 (A079908 n).toNat)

end

end A335380.P4745157173364921101

/-!
# A335381: a(n) is the Y-coordinate of the n-th point of the Kochawave curve; sequence A335380 gives X-coordinates.

The programs for A335381, there is no canonical definition to state claims against.
-/

/-! ## A335381.P6548500876561022117

`A004428(A335359(n)^A028310(n))`
-/

namespace A335381.P6548500876561022117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 (SequenceMachineLib.roundAway ((A335359 n : ℚ) ^ (A028310 n : ℤ))).toNat

end

end A335381.P6548500876561022117

/-! ## A335381.P16773675208707495157

`Δ[A104147(A003215(n))]*A332205(n)`
-/

namespace A335381.P16773675208707495157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104147 (A003215 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A332205 n

end

end A335381.P16773675208707495157

/-! ## A335381.P10786826450197386923

`A335294(A335297(n+1))*A335359(n)`
-/

namespace A335381.P10786826450197386923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335294 (A335297 (n + 1)).toNat * A335359 n

end

end A335381.P10786826450197386923

/-! ## A335381.P945891295080734876

`A007423(A023550(n+1))*A287730(n+1)`
-/

namespace A335381.P945891295080734876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A023550 (n + 1)).toNat * A287730 (n + 1)

end

end A335381.P945891295080734876

/-! ## A335381.P11078622051288621722

`A286277(A018059(n+1))`
-/

namespace A335381.P11078622051288621722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286277 (A018059 (n + 1)).toNat

end

end A335381.P11078622051288621722

/-!
# A335384: Order of the finite groups GL(m,q) [or GL_m(q)] in increasing order as q runs through the prime powers.

The programs for A335384, there is no canonical definition to state claims against.
-/

/-! ## A335384.P12893368966529383319

`A023187(A066907(n+2))`
-/

namespace A335384.P12893368966529383319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023187 (A066907 (n + 2)).toNat

end

end A335384.P12893368966529383319

/-!
# A335385: The number of tri-unitary divisors of n.

The programs for A335385, the canonical program `A335385.P17534177448668786288` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335385 has offset 1).

The definition of A335385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335385.P17534177448668786288

`∏{e}[n+1, A000122(A131830(#²))+2]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A335385

/-- `∏{e}[n+1, A000122(A131830(#²))+2]` -/
def P17534177448668786288.Spec : Prop :=
  ∀ n, P17534177448668786288.a n = A335385 (n + 1)

theorem P17534177448668786288.correct : P17534177448668786288.Spec := by
  intro n
  simp only [A335385, Nat.add_sub_cancel]

end A335385

/-! ## A335385.P5305367298971735619

`∏{e}[A046523(n+1), A068504(A215602(#))]`
-/

namespace A335385.P5305367298971735619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A068504 (A215602 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A335385.P5305367298971735619

namespace A335385

/-- `∏{e}[A046523(n+1), A068504(A215602(#))]` -/
def P5305367298971735619.Spec : Prop :=
  ∀ n, P5305367298971735619.a n = A335385 (n + 1)

end A335385

/-! ## A335385.P7136806359374489799

`∏{e}[(n+1)², A001222((21-#)²)]`
-/

namespace A335385.P7136806359374489799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001222 ((21 - (Nat.factorization (f1 n) p : ℤ)) ^ 2).toNat

end

end A335385.P7136806359374489799

namespace A335385

/-- `∏{e}[(n+1)², A001222((21-#)²)]` -/
def P7136806359374489799.Spec : Prop :=
  ∀ n, P7136806359374489799.a n = A335385 (n + 1)

end A335385

/-! ## A335385.P4828606580298079231

`∏{e}[∑[A005408(n)], A275342(#)+2]`
-/

namespace A335385.P4828606580298079231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A275342 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A335385.P4828606580298079231

namespace A335385

/-- `∏{e}[∑[A005408(n)], A275342(#)+2]` -/
def P4828606580298079231.Spec : Prop :=
  ∀ n, P4828606580298079231.a n = A335385 (n + 1)

end A335385

/-! ## A335385.P6886862035285386167

`∏{e}[n+1, A000005(A108981(#))]`
-/

namespace A335385.P6886862035285386167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A108981 (Nat.factorization (f1 n) p)).toNat

end

end A335385.P6886862035285386167

namespace A335385

/-- `∏{e}[n+1, A000005(A108981(#))]` -/
def P6886862035285386167.Spec : Prop :=
  ∀ n, P6886862035285386167.a n = A335385 (n + 1)

end A335385

/-! ## A335385.P17177285744092411086

`A286363(A247513((n+1)²))`
-/

namespace A335385.P17177285744092411086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (A247513 ((n + 1) ^ 2)).toNat

end

end A335385.P17177285744092411086

namespace A335385

/-- `A286363(A247513((n+1)²))` -/
def P17177285744092411086.Spec : Prop :=
  ∀ n, P17177285744092411086.a n = A335385 (n + 1)

end A335385

/-! ## A335385.P11137799428422169611

`∏{e}[(n+1)^3, val(#², 3)]`
-/

namespace A335385.P11137799428422169611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p ^ 2) 3

end

end A335385.P11137799428422169611

namespace A335385

/-- `∏{e}[(n+1)^3, val(#², 3)]` -/
def P11137799428422169611.Spec : Prop :=
  ∀ n, (P11137799428422169611.a n : ℤ) = A335385 (n + 1)

end A335385

/-! ## A335385.P629742428743587655

`∏{e}[A000578(n+1), A000005(A000290(#)+#+1)]`
-/

namespace A335385.P629742428743587655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (A000290 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ) + 1).toNat

end

end A335385.P629742428743587655

namespace A335385

/-- `∏{e}[A000578(n+1), A000005(A000290(#)+#+1)]` -/
def P629742428743587655.Spec : Prop :=
  ∀ n, P629742428743587655.a n = A335385 (n + 1)

end A335385

/-! ## A335385.P11376817156042055058

`A278908(A129194(n+1)*A278908(2*(n+1)))`
-/

namespace A335385.P11376817156042055058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A129194 (n + 1) * A278908 (2 * (n + 1))).toNat

end

end A335385.P11376817156042055058

namespace A335385

/-- `A278908(A129194(n+1)*A278908(2*(n+1)))` -/
def P11376817156042055058.Spec : Prop :=
  ∀ n, P11376817156042055058.a n = A335385 (n + 1)

end A335385

/-!
# A335386: Tri-unitary highly composite numbers: where the number of tri-unitary divisors (A335385) increases to a record.

The programs for A335386, there is no canonical definition to state claims against.
-/

/-! ## A335386.P2783134466050263275

`sqrt(A306736(n+1))`
-/

namespace A335386.P2783134466050263275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A306736 (n + 1) : ℝ)

end

end A335386.P2783134466050263275

/-! ## A335386.P4501480172439849156

`∏[A166684(n+1)]`
-/

namespace A335386.P4501480172439849156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A335386.P4501480172439849156

/-! ## A335386.P9929102131898915534

`∏[lt[A357312(n), n]]`
-/

namespace A335386.P9929102131898915534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357312 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A335386.P9929102131898915534

/-! ## A335386.P4510486113560490715

`∏[record[A140271(n+1)]]`
-/

namespace A335386.P4510486113560490715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A335386.P4510486113560490715

/-! ## A335386.P15208728197999197974

`∏[record[A392843(n+1)]]`
-/

namespace A335386.P15208728197999197974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392843 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A335386.P15208728197999197974

/-!
# A335388: Harmonic numbers (A001599) with a record number of divisors that are harmonic numbers.

The programs for A335388, there is no canonical definition to state claims against.
-/

/-! ## A335388.P2128598041594570438

`A335318(∑[A079218(n)!])`
-/

namespace A335388.P2128598041594570438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A079218 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335388.P2128598041594570438

/-! ## A335388.P17703925901336865680

`A335318(∑[A196839(n+4)])`
-/

namespace A335388.P17703925901336865680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335388.P17703925901336865680

/-!
# A335389: Numbers k such that k and k+1 are both antiharmonic numbers (A020487).

The programs for A335389, there is no canonical definition to state claims against.
-/

/-! ## A335389.P9034405308237050979

`∩[A020487(n+1)-1, A020487(n+1)]`
-/

namespace A335389.P9034405308237050979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335389.P9034405308237050979

/-! ## A335389.P6704460662211108858

`∩[A020487(n+1), A023443(A020487(n+1))]`
-/

namespace A335389.P6704460662211108858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A020487 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335389.P6704460662211108858

/-!
# A335390: a(n) = Sum_{k=0..n} Stirling2(n,k) * 2^binomial(k,2).

The programs for A335390, there is no canonical definition to state claims against.
-/

/-! ## A335390.P16283634051988809611

`A286547(A307363(n))`
-/

namespace A335390.P16283634051988809611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286547 (A307363 n).toNat

end

end A335390.P16283634051988809611

/-! ## A335390.P17897030376517093465

`A106151(A325849(n²))`
-/

namespace A335390.P17897030376517093465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A325849 (n ^ 2)).toNat

end

end A335390.P17897030376517093465

/-!
# A335392: a(n) is the number of ways to reach n by the process of starting from 1 and repeatedly adding 5 or multiplying by 3.

The programs for A335392, there is no canonical definition to state claims against.
-/

/-! ## A335392.P9985050300351665605

`A055641(lcm(A144448(n+1), A184441(n+1)))`
-/

namespace A335392.P9985050300351665605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Int.lcm (A144448 (n + 1)) (A184441 (n + 1)))

end

end A335392.P9985050300351665605

/-! ## A335392.P15888410495300818899

`and(A002033(A139550(n)), A226894(n+1))`
-/

namespace A335392.P15888410495300818899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 (A139550 n).toNat) (A226894 (n + 1))

end

end A335392.P15888410495300818899

/-! ## A335392.P14479993909739677326

`and(A002033(A139550(n)), A277644(n+1))`
-/

namespace A335392.P14479993909739677326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 (A139550 n).toNat) (A277644 (n + 1))

end

end A335392.P14479993909739677326

/-! ## A335392.P14444934652108705150

`and(A175244(A089759(n)), A226894(n+1))`
-/

namespace A335392.P14444934652108705150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175244 (A089759 n).toNat) (A226894 (n + 1))

end

end A335392.P14444934652108705150

/-! ## A335392.P12273736892354449028

`and(A194146(n+1), A226898(A100104(n)))`
-/

namespace A335392.P12273736892354449028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194146 (n + 1)) (A226898 (A100104 n).toNat)

end

end A335392.P12273736892354449028

/-!
# A335396: Numbers m such that sigma(m)/esigma(m) > sigma(k)/esigma(k) for all k < m, where sigma(m) is the sum of divisors of m (A000203) and esigma(m) is the sum of exponential divisors of m (A051377).

The programs for A335396, there is no canonical definition to state claims against.
-/

/-! ## A335396.P14058051322707128570

`∩[A032957(n+1), A377711(n+1)]`
-/

namespace A335396.P14058051322707128570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335396.P14058051322707128570

/-! ## A335396.P15848040129595309237

`filter[A377711(n+1), A266848(#)]`
-/

namespace A335396.P15848040129595309237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266848 (f1 j).toNat = 1) n)

end

end A335396.P15848040129595309237

/-! ## A335396.P11231379535659573006

`∩[A272325(n+1), A377711(n+1)]`
-/

namespace A335396.P11231379535659573006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335396.P11231379535659573006

/-!
# A335397: Starts of runs of 3 consecutive numbers that have an equal number of unitary and nonunitary divisors (A048109).

The programs for A335397, the canonical program `A335397.P14891039673154172877` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335397 has offset 1).

The definition of A335397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335397.P14891039673154172877

`∩[A335328(n+1)-1, A335328(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A335397

/-- `∩[A335328(n+1)-1, A335328(n+1)]` -/
def P14891039673154172877.Spec : Prop :=
  ∀ n, (P14891039673154172877.a n : ℤ) = A335397 (n + 1)

theorem P14891039673154172877.correct : P14891039673154172877.Spec := by
  intro n
  simp only [A335397, Nat.add_sub_cancel]

end A335397

/-! ## A335397.P11946587509675406092

`A074591(A176350(n+2))`
-/

namespace A335397.P11946587509675406092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A176350 (n + 2)).toNat

end

end A335397.P11946587509675406092

namespace A335397

/-- `A074591(A176350(n+2))` -/
def P11946587509675406092.Spec : Prop :=
  ∀ n, P11946587509675406092.a n = A335397 (n + 1)

end A335397

/-! ## A335397.P16650634368913346406

`filter[A176350(n+1), A115971(#)]`
-/

namespace A335397.P16650634368913346406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A335397.P16650634368913346406

namespace A335397

/-- `filter[A176350(n+1), A115971(#)]` -/
def P16650634368913346406.Spec : Prop :=
  ∀ n, P16650634368913346406.a n = A335397 (n + 1)

end A335397

