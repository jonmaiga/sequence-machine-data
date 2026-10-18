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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A259900: n*a(n+1) = (2*n^2 + 3*n + 2)*a(n) - (n^2 - n - 2)*a(n-1) with n>1, a(0)=0, a(1)=1.

The programs for A259900, there is no canonical definition to state claims against.
-/

/-! ## A259900.P6440888032419411767

`A065033((3*n+7)*a(n-1))` with `a(0)=0`
-/

namespace A259900.P6440888032419411767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A065033 ((3 * n + 7 : ℤ) * a (n - 1)).toNat

end

end A259900.P6440888032419411767

/-!
# A259901: n*a(n+1) = (2*n^2+3*n+2)*a(n)-(n^2-n-2)*a(n-1); a(0)=1, a(1)=0.

The programs for A259901, there is no canonical definition to state claims against.
-/

/-! ## A259901.P4335449686342596629

`A300076(A000357(n)-A025227(n))`
-/

namespace A259901.P4335449686342596629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (A000357 n - A025227 n).toNat

end

end A259901.P4335449686342596629

/-! ## A259901.P15072045622036319563

`A004396(A107879(n)-A065843(n+1))`
-/

namespace A259901.P15072045622036319563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A107879 n - A065843 (n + 1)).toNat

end

end A259901.P15072045622036319563

/-!
# A259902: n*a(n+1) = (2*n^2+3n-1)*a(n)-(n^2-n-2)*a(n-1); a(0)=0, a(1)=1.

The programs for A259902, there is no canonical definition to state claims against.
-/

/-! ## A259902.P3240763963088990070

`A057356(A259903(n)+1)`
-/

namespace A259902.P3240763963088990070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A259903 n + 1).toNat

end

end A259902.P3240763963088990070

/-! ## A259902.P16183601177461320898

`A002110(n)-A140756(A277407(n))`
-/

namespace A259902.P16183601177461320898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A140756 (A277407 n).toNat

end

end A259902.P16183601177461320898

/-!
# A259903: n*a(n+1) = (2*n^2+3*n-1)*a(n)-(n^2-n-2)*a(n-1); a(0)=1, a(1)=3.

The programs for A259903, there is no canonical definition to state claims against.
-/

/-! ## A259903.P12617829299595079481

`ceil(root(A243686(n+1), 4))`
-/

namespace A259903.P12617829299595079481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A243686 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A259903.P12617829299595079481

/-!
# A259904: n*a(n+1) = (2*n^2+2n-1)*a(n)+(n+1)*a(n-1); a(0)=0, a(1)=1.

The programs for A259904, there is no canonical definition to state claims against.
-/

/-! ## A259904.P15425557541990489637

`A057363(A000207(2*n+1)+n)`
-/

namespace A259904.P15425557541990489637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A000207 (2 * n + 1) + (n : ℤ)).toNat

end

end A259904.P15425557541990489637

/-! ## A259904.P2285758527080213126

`A262694(A060150(n))+A110654(n)`
-/

namespace A259904.P2285758527080213126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262694 (A060150 n).toNat + A110654 n

end

end A259904.P2285758527080213126

/-!
# A259905: n*a(n+1) = (2*n^2+2n-1)*a(n)+(n+1)*a(n-1); a(0)=1, a(1)=2.

The programs for A259905, there is no canonical definition to state claims against.
-/

/-! ## A259905.P18263869116591460342

`A005100(∑[A308946(n)])`
-/

namespace A259905.P18263869116591460342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259905.P18263869116591460342

/-!
# A259906: n*a(n+1) = (2*n^2+2n-1)*a(n) + (n+1)*a(n-1); a(0)=0, a(1)=1.

The programs for A259906, there is no canonical definition to state claims against.
-/

/-! ## A259906.P2041745878340988224

`((2*n²-2*n+1)*a(n-1)+n*a(n-2))/(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A259906.P2041745878340988224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (((2 * n ^ 2 : ℤ) - (2 * n : ℤ) + 1 : ℚ) * a (n - 1) + (n : ℚ) * a (n - 2)) / ((n : ℤ) - 1 : ℚ)

end

end A259906.P2041745878340988224

/-! ## A259906.P13732180237939908739

`A253553(a(n-1)*Δ[n²]+n)` with `a(0)=0`
-/

namespace A259906.P13732180237939908739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A253553 (a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)).toNat

end

end A259906.P13732180237939908739

/-!
# A259910: Expansion of f(-x^2, -x^3)^3 / f(-x)^2 in powers of x where f(,) is the Ramanujan general theta function.

The programs for A259910, there is no canonical definition to state claims against.
-/

/-! ## A259910.P5389254517221510559

`A010051(n+1)+A007895(A034943(n))`
-/

namespace A259910.P5389254517221510559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A007895 (A034943 n).toNat

end

end A259910.P5389254517221510559

/-! ## A259910.P12068634375142564219

`A102347(A006723(n))+A006705(n+1)`
-/

namespace A259910.P12068634375142564219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (A006723 n).toNat + A006705 (n + 1)

end

end A259910.P12068634375142564219

/-! ## A259910.P7992989412089918976

`A005811(A003137(2*n+1)+A000081(n))`
-/

namespace A259910.P7992989412089918976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A003137 (2 * n + 1) + A000081 n).toNat

end

end A259910.P7992989412089918976

/-! ## A259910.P452141292792632626

`A005811(A054635(2*n+1)+A000081(n))`
-/

namespace A259910.P452141292792632626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A054635 (2 * n + 1) + A000081 n).toNat

end

end A259910.P452141292792632626

/-! ## A259910.P7187776779267377458

`A000120(A000031(n)*A061579(2*n+1))`
-/

namespace A259910.P7187776779267377458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000031 n * A061579 (2 * n + 1)).toNat

end

end A259910.P7187776779267377458

/-!
# A259911: Triangular array; row k shows the discriminant of the field of the number having purely periodic continued fraction with period (j,k+1-j), for j=1..k.

The programs for A259911, the canonical program `A259911.P9755070438546537918` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259911 has offset 1).

The definition of A259911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259911.P9755070438546537918

`A259913(A003991(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A259911

/-- `A259913(A003991(n+1))` -/
def P9755070438546537918.Spec : Prop :=
  ∀ n, P9755070438546537918.a n = A259911 (n + 1)

theorem P9755070438546537918.correct : P9755070438546537918.Spec := by
  intro n
  simp only [A259911, Nat.add_sub_cancel]

end A259911

/-! ## A259911.P10772608349649758144

`A259913(A059036(n)+1)`
-/

namespace A259911.P10772608349649758144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259913 (A059036 n + 1).toNat

end

end A259911.P10772608349649758144

namespace A259911

/-- `A259913(A059036(n)+1)` -/
def P10772608349649758144.Spec : Prop :=
  ∀ n, P10772608349649758144.a n = A259911 (n + 1)

end A259911

/-! ## A259911.P329403193462637193

`A259913(A098352(n+1)/4)`
-/

namespace A259911.P329403193462637193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259913 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 4)).toNat

end

end A259911.P329403193462637193

namespace A259911

/-- `A259913(A098352(n+1)/4)` -/
def P329403193462637193.Spec : Prop :=
  ∀ n, P329403193462637193.a n = A259911 (n + 1)

end A259911

/-! ## A259911.P221846495427262969

`A259913(A077028(n)+A003056(n))`
-/

namespace A259911.P221846495427262969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259913 (A077028 n + A003056 n).toNat

end

end A259911.P221846495427262969

namespace A259911

/-- `A259913(A077028(n)+A003056(n))` -/
def P221846495427262969.Spec : Prop :=
  ∀ n, P221846495427262969.a n = A259911 (n + 1)

end A259911

/-! ## A259911.P5514318423318580905

`A259913(A000005(A036561(n)))`
-/

namespace A259911.P5514318423318580905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259913 (A000005 (A036561 n).toNat).toNat

end

end A259911.P5514318423318580905

namespace A259911

/-- `A259913(A000005(A036561(n)))` -/
def P5514318423318580905.Spec : Prop :=
  ∀ n, P5514318423318580905.a n = A259911 (n + 1)

end A259911

/-!
# A259912: Discriminant of the field of the number having constant continued fraction [n,n,n,...].

The programs for A259912, the canonical program `A259912.P8957557712481011937` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259912 has offset 1).

The definition of A259912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259912.P8957557712481011937

`A010121(n+3)*A013946(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259912

/-- `A010121(n+3)*A013946(n+1)` -/
def P8957557712481011937.Spec : Prop :=
  ∀ n, P8957557712481011937.a n = A259912 (n + 1)

theorem P8957557712481011937.correct : P8957557712481011937.Spec := by
  intro n
  simp only [A259912, Nat.add_sub_cancel]

end A259912

/-! ## A259912.P8537689598292754649

`A138191(n+1)²*A013946(n+1)`
-/

namespace A259912.P8537689598292754649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) ^ 2 * A013946 (n + 1)

end

end A259912.P8537689598292754649

namespace A259912

/-- `A138191(n+1)²*A013946(n+1)` -/
def P8537689598292754649.Spec : Prop :=
  ∀ n, P8537689598292754649.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P9428783032452362449

`A010685(∑[A001057(n)])*A013946(n+1)`
-/

namespace A259912.P9428783032452362449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A013946 (n + 1)

end

end A259912.P9428783032452362449

namespace A259912

/-- `A010685(∑[A001057(n)])*A013946(n+1)` -/
def P9428783032452362449.Spec : Prop :=
  ∀ n, P9428783032452362449.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P11160618314170087932

`A010685(A326055(n+1))*A013946(n+1)`
-/

namespace A259912.P11160618314170087932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A326055 (n + 1)).toNat * A013946 (n + 1)

end

end A259912.P11160618314170087932

namespace A259912

/-- `A010685(A326055(n+1))*A013946(n+1)` -/
def P11160618314170087932.Spec : Prop :=
  ∀ n, P11160618314170087932.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P17519265048974089444

`Δ[A047322(n+1)]*A013946(n+1)`
-/

namespace A259912.P17519265048974089444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A013946 (n + 1)

end

end A259912.P17519265048974089444

namespace A259912

/-- `Δ[A047322(n+1)]*A013946(n+1)` -/
def P17519265048974089444.Spec : Prop :=
  ∀ n, P17519265048974089444.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P15096187992937131759

`A008833(2*A013946(n+1))*A013946(n+1)`
-/

namespace A259912.P15096187992937131759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * A013946 (n + 1)).toNat * A013946 (n + 1)

end

end A259912.P15096187992937131759

namespace A259912

/-- `A008833(2*A013946(n+1))*A013946(n+1)` -/
def P15096187992937131759.Spec : Prop :=
  ∀ n, P15096187992937131759.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P991002342567024780

`∏{p}[A013946(n+1), A195161(#)]`
-/

namespace A259912.P991002342567024780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A195161 p

end

end A259912.P991002342567024780

namespace A259912

/-- `∏{p}[A013946(n+1), A195161(#)]` -/
def P991002342567024780.Spec : Prop :=
  ∀ n, P991002342567024780.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P7602682804460508986

`A259913((n+1)²)`
-/

namespace A259912.P7602682804460508986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259913 ((n + 1) ^ 2)

end

end A259912.P7602682804460508986

namespace A259912

/-- `A259913((n+1)²)` -/
def P7602682804460508986.Spec : Prop :=
  ∀ n, P7602682804460508986.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P8479862327539003301

`A037449(A013946(n+1))`
-/

namespace A259912.P8479862327539003301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A013946 (n + 1)).toNat

end

end A259912.P8479862327539003301

namespace A259912

/-- `A037449(A013946(n+1))` -/
def P8479862327539003301.Spec : Prop :=
  ∀ n, P8479862327539003301.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P15496314064738572391

`A037449(A261327(n+1))`
-/

namespace A259912.P15496314064738572391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A261327 (n + 1)).toNat

end

end A259912.P15496314064738572391

namespace A259912

/-- `A037449(A261327(n+1))` -/
def P15496314064738572391.Spec : Prop :=
  ∀ n, P15496314064738572391.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P1686013212098955209

`A037449(A049457((n+1)²))`
-/

namespace A259912.P1686013212098955209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A049457 ((n + 1) ^ 2)).toNat

end

end A259912.P1686013212098955209

namespace A259912

/-- `A037449(A049457((n+1)²))` -/
def P1686013212098955209.Spec : Prop :=
  ∀ n, P1686013212098955209.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P14548691419076706675

`A195161(A007913((n+1)²+4))`
-/

namespace A259912.P14548691419076706675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A007913 ((n + 1) ^ 2 + 4)).toNat

end

end A259912.P14548691419076706675

namespace A259912

/-- `A195161(A007913((n+1)²+4))` -/
def P14548691419076706675.Spec : Prop :=
  ∀ n, P14548691419076706675.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P6641979291605934824

`∏{d}[A013946(n+1), A195161(A014963(#))]`
-/

namespace A259912.P6641979291605934824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A195161 (A014963 d).toNat

end

end A259912.P6641979291605934824

namespace A259912

/-- `∏{d}[A013946(n+1), A195161(A014963(#))]` -/
def P6641979291605934824.Spec : Prop :=
  ∀ n, P6641979291605934824.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P11775578785425760765

`A010685(A013946(n+1)+1)*A013946(n+1)`
-/

namespace A259912.P11775578785425760765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A013946 (n + 1) + 1).toNat * A013946 (n + 1)

end

end A259912.P11775578785425760765

namespace A259912

/-- `A010685(A013946(n+1)+1)*A013946(n+1)` -/
def P11775578785425760765.Spec : Prop :=
  ∀ n, P11775578785425760765.a n = A259912 (n + 1)

end A259912

/-! ## A259912.P3611978299983590502

`A259913((n+1)^2)+A127648(A057944(n+1))`
-/

namespace A259912.P3611978299983590502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259913 ((n + 1) ^ 2) + A127648 (A057944 (n + 1)).toNat

end

end A259912.P3611978299983590502

namespace A259912

/-- `A259913((n+1)^2)+A127648(A057944(n+1))` -/
def P3611978299983590502.Spec : Prop :=
  ∀ n, P3611978299983590502.a n = A259912 (n + 1)

end A259912

/-!
# A259913: Discriminant of the number field containing the number with periodic continued fraction [1,n,1,n,1,n,...].

The programs for A259913, the canonical program `A259913.P750605552926668623` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259913 has offset 1).

The definition of A259913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259913.P750605552926668623

`A037449(A049457(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259913

/-- `A037449(A049457(n+1))` -/
def P750605552926668623.Spec : Prop :=
  ∀ n, P750605552926668623.a n = A259913 (n + 1)

theorem P750605552926668623.correct : P750605552926668623.Spec := by
  intro n
  simp only [A259913, Nat.add_sub_cancel]

end A259913

/-! ## A259913.P16426262157965533741

`A037449((n+5)*A007913(n+1))`
-/

namespace A259913.P16426262157965533741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 ((n + 5 : ℤ) * A007913 (n + 1)).toNat

end

end A259913.P16426262157965533741

namespace A259913

/-- `A037449((n+5)*A007913(n+1))` -/
def P16426262157965533741.Spec : Prop :=
  ∀ n, P16426262157965533741.a n = A259913 (n + 1)

end A259913

/-! ## A259913.P3010322480116988648

`A037449((n+5)*A038387(n+1))`
-/

namespace A259913.P3010322480116988648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 ((n + 5 : ℤ) * A038387 (n + 1)).toNat

end

end A259913.P3010322480116988648

namespace A259913

/-- `A037449((n+5)*A038387(n+1))` -/
def P3010322480116988648.Spec : Prop :=
  ∀ n, P3010322480116988648.a n = A259913 (n + 1)

end A259913

/-! ## A259913.P11992635101909605964

`A037449((n+3)²-4)`
-/

namespace A259913.P11992635101909605964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 ((n + 3) ^ 2 - 4)

end

end A259913.P11992635101909605964

namespace A259913

/-- `A037449((n+3)²-4)` -/
def P11992635101909605964.Spec : Prop :=
  ∀ n, P11992635101909605964.a n = A259913 (n + 1)

end A259913

/-! ## A259913.P1748331317923114788

`lcm((-1)^n, A037449(A061037(n+3)))`
-/

namespace A259913.P1748331317923114788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A037449 (A061037 (n + 3)).toNat)

end

end A259913.P1748331317923114788

namespace A259913

/-- `lcm((-1)^n, A037449(A061037(n+3)))` -/
def P1748331317923114788.Spec : Prop :=
  ∀ n, (P1748331317923114788.a n : ℤ) = A259913 (n + 1)

end A259913

/-! ## A259913.P8371027440424951055

`A037449(A070262(n+1))+A007814(2*n+5)`
-/

namespace A259913.P8371027440424951055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A070262 (n + 1)).toNat + A007814 (2 * n + 5)

end

end A259913.P8371027440424951055

namespace A259913

/-- `A037449(A070262(n+1))+A007814(2*n+5)` -/
def P8371027440424951055.Spec : Prop :=
  ∀ n, P8371027440424951055.a n = A259913 (n + 1)

end A259913

/-!
# A259914: Staircase path through the array P(n,k) of the k-th partial sums of cubes (A000578).

The programs for A259914, there is no canonical definition to state claims against.
-/

/-! ## A259914.P14330130959415962816

`A125166(A080476(n+2))`
-/

namespace A259914.P14330130959415962816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125166 (A080476 (n + 2)).toNat

end

end A259914.P14330130959415962816

/-! ## A259914.P15113517214107203669

`A090850(A085913(n+5))`
-/

namespace A259914.P15113517214107203669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090850 (A085913 (n + 5)).toNat

end

end A259914.P15113517214107203669

/-! ## A259914.P16968075874257204603

`A090850(A008619((n+4)²))`
-/

namespace A259914.P16968075874257204603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090850 (A008619 ((n + 4) ^ 2)).toNat

end

end A259914.P16968075874257204603

/-! ## A259914.P15216986551686302351

`A125166(∑[2*A008619(n)])`
-/

namespace A259914.P15216986551686302351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125166 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259914.P15216986551686302351

/-! ## A259914.P17719400906254369392

`A125166(A001972(2*n+1))`
-/

namespace A259914.P17719400906254369392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125166 (A001972 (2 * n + 1)).toNat

end

end A259914.P17719400906254369392

/-!
# A259916: Least positive integer k such that sigma(k) and phi(k*n) are both squares, where sigma(k) is the sum of all positive divisors of k, and phi(.) is Euler's totient function.

The programs for A259916, there is no canonical definition to state claims against.
-/

/-! ## A259916.P16134491890738194165

`gcd(A013584(n+1), A338591(A279571(n)))`
-/

namespace A259916.P16134491890738194165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013584 (n + 1)) (A338591 (A279571 n).toNat)

end

end A259916.P16134491890738194165

/-!
# A259918: Friendly numbers that are smallest in their clubs, ordered by the second-smallest member of the clubs.

The programs for A259918, there is no canonical definition to state claims against.
-/

/-! ## A259918.P3938413066670861263

`A050972(A190218(n+1)%A050956(n+1))`
-/

namespace A259918.P3938413066670861263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050972 (Int.tmod (A190218 (n + 1)) (A050956 (n + 1))).toNat

end

end A259918.P3938413066670861263

/-! ## A259918.P1174161922462873008

`A050972(A190218(n+1))%A050962(2*(n+2))`
-/

namespace A259918.P1174161922462873008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050972 (A190218 (n + 1)).toNat) (A050962 (2 * (n + 2)))

end

end A259918.P1174161922462873008

/-! ## A259918.P1397114452873845775

`A002262(A230875(n+3))*A050972(A277046(n+1))`
-/

namespace A259918.P1397114452873845775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A230875 (n + 3)).toNat * A050972 (A277046 (n + 1)).toNat

end

end A259918.P1397114452873845775

/-! ## A259918.P11208820106457163397

`A050972(A190218(n+1))%A050954(n+1)`
-/

namespace A259918.P11208820106457163397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050972 (A190218 (n + 1)).toNat) (A050954 (n + 1))

end

end A259918.P11208820106457163397

/-! ## A259918.P4400395757773824215

`A050972(∪[A107276(n+1), A190218(n+1)])`
-/

namespace A259918.P4400395757773824215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050972 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A259918.P4400395757773824215

/-!
# A259919: Number of n X n upper triangular matrices (m_{i,j}) of nonnegative integers with 2 = Sum_{j=h..n} m_{h,j} - Sum_{i=1..h-1} m_{i,h} for all h in {1,...,n}.

The programs for A259919, there is no canonical definition to state claims against.
-/

/-! ## A259919.P13096268869416393299

`A259844(∑[n+3])`
-/

namespace A259919.P13096268869416393299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259919.P13096268869416393299

/-! ## A259919.P13347613437589596748

`or(A025462(n), A259844(A141214(n)))`
-/

namespace A259919.P13347613437589596748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025462 n) (A259844 (A141214 n).toNat)

end

end A259919.P13347613437589596748

/-! ## A259919.P8608239003671819423

`or(A259844(A141214(n)), A279760(n))`
-/

namespace A259919.P8608239003671819423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259844 (A141214 n).toNat) (A279760 n)

end

end A259919.P8608239003671819423

/-! ## A259919.P6684622098194823296

`lcm(A033999(n), A259844(A027379(n+1)))`
-/

namespace A259919.P6684622098194823296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A259844 (A027379 (n + 1)).toNat)

end

end A259919.P6684622098194823296

/-! ## A259919.P17547312865851744520

`or(A016389(n), A259844(A027379(n+1)))`
-/

namespace A259919.P17547312865851744520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A259844 (A027379 (n + 1)).toNat)

end

end A259919.P17547312865851744520

/-!
# A259920: Expansion of phi(-x^5) * f(-x^5) / f(-x, -x^4) in powers of x where phi() and f() are Ramanujan theta functions.

The programs for A259920, there is no canonical definition to state claims against.
-/

/-! ## A259920.P10168001260163725317

`A193929(A324055(n)+A003178(n))`
-/

namespace A259920.P10168001260163725317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A324055 n + A003178 n).toNat

end

end A259920.P10168001260163725317

/-! ## A259920.P16775982152743172165

`A267015(A251655(n))+A236627(n+1)`
-/

namespace A259920.P16775982152743172165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267015 (A251655 n).toNat + A236627 (n + 1)

end

end A259920.P16775982152743172165

/-! ## A259920.P7148344686474610570

`A092331(n+1)-A031346(A007088(n))`
-/

namespace A259920.P7148344686474610570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092331 (n + 1) - A031346 (A007088 n).toNat

end

end A259920.P7148344686474610570

/-! ## A259920.P5807474731190187110

`A092331(n+1)-A121262(A000079(n))`
-/

namespace A259920.P5807474731190187110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092331 (n + 1) - A121262 (A000079 n).toNat

end

end A259920.P5807474731190187110

/-! ## A259920.P11572490157456912633

`A092331(n+1)-A295306(A014551(n))`
-/

namespace A259920.P11572490157456912633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092331 (n + 1) - A295306 (A014551 n).toNat

end

end A259920.P11572490157456912633

/-!
# A259923: a(n) = prime(n)^pi(n).

The programs for A259923, the canonical program `A259923.P16057684249123722244` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259923 has offset 1).

The definition of A259923 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259923.P16057684249123722244

`A000040(n+1)^A000720(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259923

/-- `A000040(n+1)^A000720(n+1)` -/
def P16057684249123722244.Spec : Prop :=
  ∀ n, P16057684249123722244.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P18250862774307822372

`(A014692(n+1)+n)^∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A259923.P18250862774307822372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259923.P18250862774307822372

namespace A259923

/-- `(A014692(n+1)+n)^∑[∑{p}[n+1, val(#, n+1)]]` -/
def P18250862774307822372.Spec : Prop :=
  ∀ n, P18250862774307822372.a n = A259923 (n + 1)

end A259923

/-! ## A259923.P11471079009322114218

`Δ[A007504(n)]^A000720(n+1)`
-/

namespace A259923.P11471079009322114218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P11471079009322114218

namespace A259923

/-- `Δ[A007504(n)]^A000720(n+1)` -/
def P11471079009322114218.Spec : Prop :=
  ∀ n, P11471079009322114218.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P8799097613448829140

`p?[A014681(n)]^A000720(n+1)`
-/

namespace A259923.P8799097613448829140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P8799097613448829140

namespace A259923

/-- `p?[A014681(n)]^A000720(n+1)` -/
def P8799097613448829140.Spec : Prop :=
  ∀ n, P8799097613448829140.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P13069201437861762843

`A000040(n+1)^A230980(n+1)`
-/

namespace A259923.P13069201437861762843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A230980 (n + 1) : ℤ)

end

end A259923.P13069201437861762843

namespace A259923

/-- `A000040(n+1)^A230980(n+1)` -/
def P13069201437861762843.Spec : Prop :=
  ∀ n, P13069201437861762843.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P15745565626490850689

`Δ[A007504(n)]^∑[A010051(n+1)]`
-/

namespace A259923.P15745565626490850689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

end

end A259923.P15745565626490850689

namespace A259923

/-- `Δ[A007504(n)]^∑[A010051(n+1)]` -/
def P15745565626490850689.Spec : Prop :=
  ∀ n, P15745565626490850689.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P10520708961683006649

`A000040(n+1)^∑[A010051(n+1)]`
-/

namespace A259923.P10520708961683006649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A259923.P10520708961683006649

namespace A259923

/-- `A000040(n+1)^∑[A010051(n+1)]` -/
def P10520708961683006649.Spec : Prop :=
  ∀ n, P10520708961683006649.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P8413533102248914468

`p?[A000961(n+1)]^A000720(n+1)`
-/

namespace A259923.P8413533102248914468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P8413533102248914468

namespace A259923

/-- `p?[A000961(n+1)]^A000720(n+1)` -/
def P8413533102248914468.Spec : Prop :=
  ∀ n, P8413533102248914468.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P16146144925045036587

`record[A006530(n+2)]^A000720(n+1)`
-/

namespace A259923.P16146144925045036587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P16146144925045036587

namespace A259923

/-- `record[A006530(n+2)]^A000720(n+1)` -/
def P16146144925045036587.Spec : Prop :=
  ∀ n, P16146144925045036587.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P5381536883318478125

`record[A014963(n+2)]^A000720(n+1)`
-/

namespace A259923.P5381536883318478125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P5381536883318478125

namespace A259923

/-- `record[A014963(n+2)]^A000720(n+1)` -/
def P5381536883318478125.Spec : Prop :=
  ∀ n, P5381536883318478125.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P14054068965616587851

`p?[A015919(n+1)]^A000720(n+1)`
-/

namespace A259923.P14054068965616587851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P14054068965616587851

namespace A259923

/-- `p?[A015919(n+1)]^A000720(n+1)` -/
def P14054068965616587851.Spec : Prop :=
  ∀ n, P14054068965616587851.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P148369475425125844

`record[A020639(n+2)]^A000720(n+1)`
-/

namespace A259923.P148369475425125844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P148369475425125844

namespace A259923

/-- `record[A020639(n+2)]^A000720(n+1)` -/
def P148369475425125844.Spec : Prop :=
  ∀ n, P148369475425125844.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P8795001792169926697

`(A014692(n+1)+n)^A000720(n+1)`
-/

namespace A259923.P8795001792169926697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P8795001792169926697

namespace A259923

/-- `(A014692(n+1)+n)^A000720(n+1)` -/
def P8795001792169926697.Spec : Prop :=
  ∀ n, P8795001792169926697.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P4302596836822927735

`A000040(n+1)^∑[round(A020639(n+1)/(n+3))]`
-/

namespace A259923.P4302596836822927735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) / (n + 3 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A259923.P4302596836822927735

namespace A259923

/-- `A000040(n+1)^∑[round(A020639(n+1)/(n+3))]` -/
def P4302596836822927735.Spec : Prop :=
  ∀ n, P4302596836822927735.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P3777092730886980349

`A000040(n+1)^∑[char[(n+2)%A006530(n+3)]]`
-/

namespace A259923.P3777092730886980349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A006530 (n + 3))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259923.P3777092730886980349

namespace A259923

/-- `A000040(n+1)^∑[char[(n+2)%A006530(n+3)]]` -/
def P3777092730886980349.Spec : Prop :=
  ∀ n, P3777092730886980349.a n = A259923 (n + 1)

end A259923

/-! ## A259923.P14911809052416589967

`A151800(A006093(n+1))^A000720(n+1)`
-/

namespace A259923.P14911809052416589967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 (A006093 (n + 1)).toNat : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P14911809052416589967

namespace A259923

/-- `A151800(A006093(n+1))^A000720(n+1)` -/
def P14911809052416589967.Spec : Prop :=
  ∀ n, P14911809052416589967.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P884410849649805485

`A151800(A006093(n+1))^∑[A010051(n+1)]`
-/

namespace A259923.P884410849649805485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 (A006093 (n + 1)).toNat : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A259923.P884410849649805485

namespace A259923

/-- `A151800(A006093(n+1))^∑[A010051(n+1)]` -/
def P884410849649805485.Spec : Prop :=
  ∀ n, P884410849649805485.a n = (A259923 (n + 1) : ℚ)

end A259923

/-! ## A259923.P9548812718250612813

`A000040(n+1)^A056811((n+1)²)`
-/

namespace A259923.P9548812718250612813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A056811 ((n + 1) ^ 2) : ℤ)

end

end A259923.P9548812718250612813

namespace A259923

/-- `A000040(n+1)^A056811((n+1)²)` -/
def P9548812718250612813.Spec : Prop :=
  ∀ n, P9548812718250612813.a n = (A259923 (n + 1) : ℚ)

end A259923

/-!
# A259925: a(n) = (n^2 - n - 1)^n.

The programs for A259925, the canonical program `A259925.P6372648146589951918` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259925 has offset 0).

The definition of A259925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259925.P6372648146589951918

`A165900(n)^n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259925

/-- `A165900(n)^n` -/
def P6372648146589951918.Spec : Prop :=
  ∀ n, P6372648146589951918.a n = A259925 n

theorem P6372648146589951918.correct : P6372648146589951918.Spec := by
  intro n
  simp only [A259925]

end A259925

/-! ## A259925.P15446893415063546750

`(n²-(n+1))^n`
-/

namespace A259925.P15446893415063546750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n + 1 : ℤ)) ^ n

end

end A259925.P15446893415063546750

namespace A259925

/-- `(n²-(n+1))^n` -/
def P15446893415063546750.Spec : Prop :=
  ∀ n, P15446893415063546750.a n = A259925 n

end A259925

/-! ## A259925.P4220051158876414435

`xor(1, (n²-n-1)^n-1)`
-/

namespace A259925.P4220051158876414435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n ^ 2 : ℤ) - (n : ℤ) - 1) ^ n - 1)

end

end A259925.P4220051158876414435

namespace A259925

/-- `xor(1, (n²-n-1)^n-1)` -/
def P4220051158876414435.Spec : Prop :=
  ∀ n, P4220051158876414435.a n = A259925 n

end A259925

/-! ## A259925.P8779388134455338390

`floor(∑[a(n-1)+2]^n)` with `a(0)=-1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A259925.P8779388134455338390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A259925.P8779388134455338390

namespace A259925

/-- `floor(∑[a(n-1)+2]^n)` -/
def P8779388134455338390.Spec : Prop :=
  ∀ n, P8779388134455338390.a n = A259925 n

end A259925

/-! ## A259925.P1487249899155742569

`floor((1-∑[a(n-1)-2])^n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A259925.P1487249899155742569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A259925.P1487249899155742569

namespace A259925

/-- `floor((1-∑[a(n-1)-2])^n)` -/
def P1487249899155742569.Spec : Prop :=
  ∀ n, P1487249899155742569.a n = A259925 n

end A259925

/-!
# A259926: a(n) = n^(2*n) - n^(2*n - 1).

The programs for A259926, the canonical program `A259926.P13988662505080891204` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259926 has offset 1).

The definition of A259926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259926.P13988662505080891204

`(n+1)^(2*(n+1))-(n+1)^(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A259926

/-- `(n+1)^(2*(n+1))-(n+1)^(2*(n+1)-1)` -/
def P13988662505080891204.Spec : Prop :=
  ∀ n, P13988662505080891204.a n = (A259926 (n + 1) : ℚ)

end A259926

/-! ## A259926.P17794071741751745485

`lcm(n, (n+1)^Δ[n²])`
-/

namespace A259926.P17794071741751745485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)))

end

end A259926.P17794071741751745485

namespace A259926

/-- `lcm(n, (n+1)^Δ[n²])` -/
def P17794071741751745485.Spec : Prop :=
  ∀ n, (P17794071741751745485.a n : ℤ) = A259926 (n + 1)

end A259926

/-! ## A259926.P6574212805806091875

`∏{digits}[10^(2*n+1), n+1-#]`
-/

namespace A259926.P6574212805806091875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n + 1 : ℤ) - (x : ℤ)).prod

end

end A259926.P6574212805806091875

namespace A259926

/-- `∏{digits}[10^(2*n+1), n+1-#]` -/
def P6574212805806091875.Spec : Prop :=
  ∀ n, P6574212805806091875.a n = A259926 (n + 1)

end A259926

/-! ## A259926.P16495778042376720678

`and(n*(n+1)^(2*n+1), -2)`
-/

namespace A259926.P16495778042376720678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n * (n + 1) ^ (2 * n + 1) : ℤ) (-2)

end

end A259926.P16495778042376720678

namespace A259926

/-- `and(n*(n+1)^(2*n+1), -2)` -/
def P16495778042376720678.Spec : Prop :=
  ∀ n, P16495778042376720678.a n = A259926 (n + 1)

end A259926

/-! ## A259926.P1064692351302895374

`A086815(n+1)/(n+1)`
-/

namespace A259926.P1064692351302895374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086815 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A259926.P1064692351302895374

namespace A259926

/-- `A086815(n+1)/(n+1)` -/
def P1064692351302895374.Spec : Prop :=
  ∀ n, P1064692351302895374.a n = (A259926 (n + 1) : ℚ)

end A259926

/-!
# A259932: Primes whose anti-divisors sum to a prime.

The programs for A259932, there is no canonical definition to state claims against.
-/

/-! ## A259932.P7503310242193910098

`p?[A109350(n+1)]`
-/

namespace A259932.P7503310242193910098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259932.P7503310242193910098

/-! ## A259932.P13196586984593072845

`p?[record[A109350(A052938(n))]]`
-/

namespace A259932.P13196586984593072845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109350 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259932.P13196586984593072845

/-! ## A259932.P5919032828701502615

`p?[record[A109350(A126759(n))]]`
-/

namespace A259932.P5919032828701502615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109350 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259932.P5919032828701502615

/-! ## A259932.P4203252389958186249

`p?[record[A109350(A324346(n))]]`
-/

namespace A259932.P4203252389958186249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109350 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259932.P4203252389958186249

/-! ## A259932.P17150587494045931562

`p?[record[A109350(A324347(n))]]`
-/

namespace A259932.P17150587494045931562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109350 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259932.P17150587494045931562

/-!
# A259933: Amicable pairs (x < y) ordered by nondecreasing sum (x + y) and then by increasing x.

The programs for A259933, there is no canonical definition to state claims against.
-/

/-! ## A259933.P8418360103711273208

`A063990(lt[A035382(n), A245603(n+1)])`
-/

namespace A259933.P8418360103711273208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259933.P8418360103711273208

/-! ## A259933.P12573013623436266120

`A063990(lt[A307974(n+1), A059675(n+1)])`
-/

namespace A259933.P12573013623436266120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259933.P12573013623436266120

/-! ## A259933.P6424264836298221151

`record[A259180(n+1)%A024975(A052163(n+1))]`
-/

namespace A259933.P6424264836298221151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259180 (n + 1)) (A024975 (A052163 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259933.P6424264836298221151

/-! ## A259933.P1629507303942836820

`record[A063990(n+1)%A347770(2*(n+2))]`
-/

namespace A259933.P1629507303942836820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063990 (n + 1)) (A347770 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259933.P1629507303942836820

/-! ## A259933.P16453888622083829464

`A063990(comp[A073510(n+3)*A197774(n+1)])`
-/

namespace A259933.P16453888622083829464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073510 (n + 3) * A197774 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A259933.P16453888622083829464

/-!
# A259934: Infinite sequence starting with a(0)=0 such that A049820(a(k)) = a(k-1) for all k>=1, where A049820(n) = n - (number of divisors of n).

The programs for A259934, there is no canonical definition to state claims against.
-/

/-! ## A259934.P3109711522949343915

`A262679(A262896(n))`
-/

namespace A259934.P3109711522949343915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 (A262896 n).toNat

end

end A259934.P3109711522949343915

/-! ## A259934.P8129306967247242315

`A261103(n)+A261089(n)`
-/

namespace A259934.P8129306967247242315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261103 n + A261089 n

end

end A259934.P8129306967247242315

/-! ## A259934.P10208221898170209876

`A262503(n)-A262506(n)`
-/

namespace A259934.P10208221898170209876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - A262506 n

end

end A259934.P10208221898170209876

/-! ## A259934.P2332316500588698213

`∑[A259935(n+1)]-A259935(n+1)`
-/

namespace A259934.P2332316500588698213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A259935 (n + 1)

end

end A259934.P2332316500588698213

/-! ## A259934.P11675493853440355946

`A263265(A263260(n)-1)-A262506(n)`
-/

namespace A259934.P11675493853440355946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (A263260 n - 1).toNat - A262506 n

end

end A259934.P11675493853440355946

/-! ## A259934.P4960992022805453629

`A261089(n)+A262505(n)-A262506(n)`
-/

namespace A259934.P4960992022805453629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261089 n + (A262505 n - A262506 n)

end

end A259934.P4960992022805453629

/-! ## A259934.P15950583483568195513

`A261103(n)+A262503(n)-A262505(n)`
-/

namespace A259934.P15950583483568195513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261103 n + (A262503 n - A262505 n)

end

end A259934.P15950583483568195513

/-! ## A259934.P402365369068305311

`record[A262679(n)]`
-/

namespace A259934.P402365369068305311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259934.P402365369068305311

/-! ## A259934.P6833499989588190495

`record[n*A262693(n)]`
-/

namespace A259934.P6833499989588190495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A262693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259934.P6833499989588190495

/-! ## A259934.P1978278460363905039

`lt[0, A262693(n)]`
-/

namespace A259934.P1978278460363905039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A259934.P1978278460363905039

/-! ## A259934.P13732115457112810676

`eq[n, A262906(n)+A155043(n)]`
-/

namespace A259934.P13732115457112810676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262906 n + A155043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259934.P13732115457112810676

/-! ## A259934.P10820603239395149861

`eq[A262693(n*A262693(n)), A262693(n)]`
-/

namespace A259934.P10820603239395149861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 ((n : ℤ) * A262693 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259934.P10820603239395149861

/-! ## A259934.P18108486517129464647

`eq[A155043(n), A262904(n)]`
-/

namespace A259934.P18108486517129464647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259934.P18108486517129464647

/-! ## A259934.P653858868123408844

`eq[0, A262522(n)]`
-/

namespace A259934.P653858868123408844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259934.P653858868123408844

/-! ## A259934.P10156296060763475401

`eq[0, A262695(n)]`
-/

namespace A259934.P10156296060763475401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259934.P10156296060763475401

/-! ## A259934.P18167584261626100343

`eq[0, A262696(n)]`
-/

namespace A259934.P18167584261626100343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259934.P18167584261626100343

/-! ## A259934.P4525090067750086379

`eq[0, A262697(n)]`
-/

namespace A259934.P4525090067750086379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259934.P4525090067750086379

/-! ## A259934.P13902189405256144683

`filter[A092451(n), A262693(#)]`
-/

namespace A259934.P13902189405256144683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262693 (f1 j).toNat = 1) n)

end

end A259934.P13902189405256144683

/-! ## A259934.P2100145559967204726

`filter[A236562(n+1), A262693(#)]`
-/

namespace A259934.P2100145559967204726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262693 (f1 j).toNat = 1) n)

end

end A259934.P2100145559967204726

/-! ## A259934.P12903957007338720743

`filter[A004773(n), A262693(#)]`
-/

namespace A259934.P12903957007338720743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262693 (f1 j).toNat = 1) n)

end

end A259934.P12903957007338720743

/-!
# A259935: Infinite sequence of positive integers such that a(n) = A000005(a(1) + a(2) + ... + a(n)) for all n >= 1.

The programs for A259935, there is no canonical definition to state claims against.
-/

/-! ## A259935.P5349379265704643546

`A259934(n+1)-A259934(n)`
-/

namespace A259935.P5349379265704643546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (n + 1) - A259934 n

end

end A259935.P5349379265704643546

/-! ## A259935.P8534191097577946181

`A000005(A259934(n+1))`
-/

namespace A259935.P8534191097577946181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A259934 (n + 1)).toNat

end

end A259935.P8534191097577946181

/-! ## A259935.P10106544425915313534

`Δ[A259934(n)]`
-/

namespace A259935.P10106544425915313534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259935.P10106544425915313534

/-! ## A259935.P7793454962781827662

`A000005(A278232(n+1))`
-/

namespace A259935.P7793454962781827662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278232 (n + 1)).toNat

end

end A259935.P7793454962781827662

/-! ## A259935.P16780213764528778080

`Δ[A261103(n)+A261089(n)]`
-/

namespace A259935.P16780213764528778080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261103 n + A261089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259935.P16780213764528778080

/-! ## A259935.P4112654780085791298

`Δ[A262503(n)-A262506(n)]`
-/

namespace A259935.P4112654780085791298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262503 n - A262506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259935.P4112654780085791298

/-! ## A259935.P10663820675943588664

`A000005(A261103(n+1)+A261089(n+1))`
-/

namespace A259935.P10663820675943588664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A261103 (n + 1) + A261089 (n + 1)).toNat

end

end A259935.P10663820675943588664

/-! ## A259935.P1537555635759348065

`A000005(A262503(n+1)-A262506(n+1))`
-/

namespace A259935.P1537555635759348065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A262503 (n + 1) - A262506 (n + 1)).toNat

end

end A259935.P1537555635759348065

/-! ## A259935.P9099500641178574517

`Δ[record[A262679(n)]]`
-/

namespace A259935.P9099500641178574517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259935.P9099500641178574517

/-! ## A259935.P1797108967195998378

`A000005(record[A262679(n+2)])`
-/

namespace A259935.P1797108967195998378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259935.P1797108967195998378

/-! ## A259935.P11496468976415124194

`Δ[A262679(A262896(n))]`
-/

namespace A259935.P11496468976415124194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 (A262896 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259935.P11496468976415124194

/-! ## A259935.P9107176789430401332

`A000005(A262679(A262896(n+1)))`
-/

namespace A259935.P9107176789430401332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A262679 (A262896 (n + 1)).toNat).toNat

end

end A259935.P9107176789430401332

/-! ## A259935.P7703846880097583226

`Δ[lt[0, A262693(n)]]`
-/

namespace A259935.P7703846880097583226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A259935.P7703846880097583226

/-! ## A259935.P915013290137068922

`Δ[eq[0, A262522(n)]]`
-/

namespace A259935.P915013290137068922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262522 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A259935.P915013290137068922

/-! ## A259935.P6001975058130742309

`A000005(lt[A262522(n), n])`
-/

namespace A259935.P6001975058130742309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262522 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A259935.P6001975058130742309

/-! ## A259935.P16560564224299576722

`Δ[eq[0, A263254(n)]]`
-/

namespace A259935.P16560564224299576722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263254 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A259935.P16560564224299576722

/-! ## A259935.P732217017582884732

`Δ[record[n-A001567(A263275(n))]]`
-/

namespace A259935.P732217017582884732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001567 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259935.P732217017582884732

/-! ## A259935.P15894828382261979823

`Δ[A263255(∑[n])]`
-/

namespace A259935.P15894828382261979823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263255 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259935.P15894828382261979823

/-!
# A259936: Number of ways to express the integer n as a product of its unitary divisors (A034444).

The programs for A259936, the canonical program `A259936.P5139569933053793896` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259936 has offset 1).

The definition of A259936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259936.P17274051483244725458

`A001055(∏{p}[n+1, #])`
-/

namespace A259936.P17274051483244725458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P17274051483244725458

namespace A259936

/-- `A001055(∏{p}[n+1, #])` -/
def P17274051483244725458.Spec : Prop :=
  ∀ n, P17274051483244725458.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P6597914705273617498

`A045778(∏{p}[n+1, #])`
-/

namespace A259936.P6597914705273617498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P6597914705273617498

namespace A259936

/-- `A045778(∏{p}[n+1, #])` -/
def P6597914705273617498.Spec : Prop :=
  ∀ n, P6597914705273617498.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P6944883020190954808

`A050320(∏{p}[n+1, #])`
-/

namespace A259936.P6944883020190954808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P6944883020190954808

namespace A259936

/-- `A050320(∏{p}[n+1, #])` -/
def P6944883020190954808.Spec : Prop :=
  ∀ n, P6944883020190954808.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P15527962679087212739

`A050326(∏{p}[n+1, #])`
-/

namespace A259936.P15527962679087212739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P15527962679087212739

namespace A259936

/-- `A050326(∏{p}[n+1, #])` -/
def P15527962679087212739.Spec : Prop :=
  ∀ n, P15527962679087212739.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P3028852965790824343

`A252665(∏{p}[n+1, #])`
-/

namespace A259936.P3028852965790824343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P3028852965790824343

namespace A259936

/-- `A252665(∏{p}[n+1, #])` -/
def P3028852965790824343.Spec : Prop :=
  ∀ n, P3028852965790824343.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P5139569933053793896

`A305150(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A259936

/-- `A305150(∏{p}[n+1, #])` -/
def P5139569933053793896.Spec : Prop :=
  ∀ n, P5139569933053793896.a n = A259936 (n + 1)

theorem P5139569933053793896.correct : P5139569933053793896.Spec := by
  intro n
  simp only [A259936, Nat.add_sub_cancel]

end A259936

/-! ## A259936.P1129577101425964262

`A317545(∏{p}[n+1, #])`
-/

namespace A259936.P1129577101425964262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P1129577101425964262

namespace A259936

/-- `A317545(∏{p}[n+1, #])` -/
def P1129577101425964262.Spec : Prop :=
  ∀ n, P1129577101425964262.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P5964391951912036084

`A028422(∏{p}[n+1, #])+1`
-/

namespace A259936.P5964391951912036084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A259936.P5964391951912036084

namespace A259936

/-- `A028422(∏{p}[n+1, #])+1` -/
def P5964391951912036084.Spec : Prop :=
  ∀ n, P5964391951912036084.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P8083450593058698517

`A281116(∏{p}[n+1, #])+1`
-/

namespace A259936.P8083450593058698517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A259936.P8083450593058698517

namespace A259936

/-- `A281116(∏{p}[n+1, #])+1` -/
def P8083450593058698517.Spec : Prop :=
  ∀ n, P8083450593058698517.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P2259846630725783245

`A001055(A007947(n+1))`
-/

namespace A259936.P2259846630725783245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A007947 (n + 1)).toNat

end

end A259936.P2259846630725783245

namespace A259936

/-- `A001055(A007947(n+1))` -/
def P2259846630725783245.Spec : Prop :=
  ∀ n, P2259846630725783245.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P5458741336494597871

`A000110(A001222(∏{p}[n+1, #]))`
-/

namespace A259936.P5458741336494597871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A259936.P5458741336494597871

namespace A259936

/-- `A000110(A001222(∏{p}[n+1, #]))` -/
def P5458741336494597871.Spec : Prop :=
  ∀ n, P5458741336494597871.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P11050851988515484326

`A001055((n+1)/A003557(n+1))`
-/

namespace A259936.P11050851988515484326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A259936.P11050851988515484326

namespace A259936

/-- `A001055((n+1)/A003557(n+1))` -/
def P11050851988515484326.Spec : Prop :=
  ∀ n, P11050851988515484326.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P7346891228875338894

`A050320((n+1)/A003557(n+1))`
-/

namespace A259936.P7346891228875338894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A259936.P7346891228875338894

namespace A259936

/-- `A050320((n+1)/A003557(n+1))` -/
def P7346891228875338894.Spec : Prop :=
  ∀ n, P7346891228875338894.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P15185417550296337611

`A050326((n+1)/A003557(n+1))`
-/

namespace A259936.P15185417550296337611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A259936.P15185417550296337611

namespace A259936

/-- `A050326((n+1)/A003557(n+1))` -/
def P15185417550296337611.Spec : Prop :=
  ∀ n, P15185417550296337611.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P15545400135384931836

`A000110(A000120(A325446(n+1)))`
-/

namespace A259936.P15545400135384931836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A000120 (A325446 (n + 1)).toNat).toNat

end

end A259936.P15545400135384931836

namespace A259936

/-- `A000110(A000120(A325446(n+1)))` -/
def P15545400135384931836.Spec : Prop :=
  ∀ n, P15545400135384931836.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P17780617957647184003

`A000001(A082476(n+1))`
-/

namespace A259936.P17780617957647184003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A082476 (n + 1)).toNat

end

end A259936.P17780617957647184003

namespace A259936

/-- `A000001(A082476(n+1))` -/
def P17780617957647184003.Spec : Prop :=
  ∀ n, P17780617957647184003.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P17474564554400486697

`A292886(∏{p}[n+1, #])`
-/

namespace A259936.P17474564554400486697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292886 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259936.P17474564554400486697

namespace A259936

/-- `A292886(∏{p}[n+1, #])` -/
def P17474564554400486697.Spec : Prop :=
  ∀ n, P17474564554400486697.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P8471167282852585589

`A050320(A007947((n+1)²))`
-/

namespace A259936.P8471167282852585589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A007947 ((n + 1) ^ 2)).toNat

end

end A259936.P8471167282852585589

namespace A259936

/-- `A050320(A007947((n+1)²))` -/
def P8471167282852585589.Spec : Prop :=
  ∀ n, P8471167282852585589.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P8659912566577749278

`A000001(A000005(∏{p}[n+1, #²]))`
-/

namespace A259936.P8659912566577749278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)).toNat

end

end A259936.P8659912566577749278

namespace A259936

/-- `A000001(A000005(∏{p}[n+1, #²]))` -/
def P8659912566577749278.Spec : Prop :=
  ∀ n, P8659912566577749278.a n = A259936 (n + 1)

end A259936

/-! ## A259936.P9738126153589088945

`A001055(A336643((n+1)²))`
-/

namespace A259936.P9738126153589088945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A336643 ((n + 1) ^ 2)).toNat

end

end A259936.P9738126153589088945

namespace A259936

/-- `A001055(A336643((n+1)²))` -/
def P9738126153589088945.Spec : Prop :=
  ∀ n, P9738126153589088945.a n = A259936 (n + 1)

end A259936

/-!
# A259937: Concatenation of the numbers from 1 to n with numbers from n down to 1.

The programs for A259937, there is no canonical definition to state claims against.
-/

/-! ## A259937.P10784358878890775636

`A007907(2*(n+1))`
-/

namespace A259937.P10784358878890775636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007907 (2 * (n + 1))

end

end A259937.P10784358878890775636

/-! ## A259937.P15982542306513691784

`record[A007907(A099375(n)+1)]`
-/

namespace A259937.P15982542306513691784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007907 (A099375 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259937.P15982542306513691784

/-! ## A259937.P14824474255079909049

`A019566(n+1)+A019524(n+1)`
-/

namespace A259937.P14824474255079909049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019566 (n + 1) + A019524 (n + 1)

end

end A259937.P14824474255079909049

/-! ## A259937.P15805692926568577090

`A272617(n+1)-A083827(n+1)`
-/

namespace A259937.P15805692926568577090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272617 (n + 1) - A083827 (n + 1)

end

end A259937.P15805692926568577090

/-! ## A259937.P408388936223307845

`A000422(n+1)+A019524(n+1)-A007908(n+1)`
-/

namespace A259937.P408388936223307845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) + (A019524 (n + 1) - A007908 (n + 1))

end

end A259937.P408388936223307845

/-!
# A259939: Smallest Product_{i:lambda} prime(i) for any perfect partition lambda of n.

The programs for A259939, there is no canonical definition to state claims against.
-/

/-! ## A259939.P3166264656954857194

`A258119(A173382(n))`
-/

namespace A259939.P3166264656954857194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258119 (A173382 n).toNat

end

end A259939.P3166264656954857194

/-! ## A259939.P4753664923996763772

`A258119(∑[A074206(n)])`
-/

namespace A259939.P4753664923996763772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258119 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259939.P4753664923996763772

/-! ## A259939.P2251640024766745941

`A258119(∑[A002033(n)]-A002033(n))`
-/

namespace A259939.P2251640024766745941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258119 (∑ j ∈ Finset.range (n + 1), f1 j - A002033 n).toNat

end

end A259939.P2251640024766745941

/-! ## A259939.P11394428831733230370

`A258119(A025523(n+1)-A002033(n))`
-/

namespace A259939.P11394428831733230370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258119 (A025523 (n + 1) - A002033 n).toNat

end

end A259939.P11394428831733230370

/-! ## A259939.P14555747029606570431

`A258119(A025523(n+1)-A074206(n+1))`
-/

namespace A259939.P14555747029606570431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258119 (A025523 (n + 1) - A074206 (n + 1)).toNat

end

end A259939.P14555747029606570431

/-! ## A259939.P16338838608520656800

`A258119(A025523(n+1)-∑{d}[n+1, #*A323910((n+1)/#)])`
-/

namespace A259939.P16338838608520656800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258119 (A025523 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A259939.P16338838608520656800

/-! ## A259939.P6894239778628872716

`A258119(A025523(n+1)-(A008683(n+1)+2*A174726(n+1)))`
-/

namespace A259939.P6894239778628872716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258119 (A025523 (n + 1) - (A008683 (n + 1) + 2 * A174726 (n + 1))).toNat

end

end A259939.P6894239778628872716

/-!
# A259940: Let A={A005574(n)}, the set of all numbers n for which n^2+1 is prime. The sequence lists the number of decompositions A005574(n) = A005574(n1) + A005574(n2) for some n1, n2 and every A005574(n)>1.

The programs for A259940, there is no canonical definition to state claims against.
-/

/-! ## A259940.P3726852422267565651

`gcd(A001221(A283606(n)), A286108(n))`
-/

namespace A259940.P3726852422267565651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A283606 n).toNat) (A286108 n)

end

end A259940.P3726852422267565651

/-! ## A259940.P10080755961828051632

`A001221(A126646(n)+Δ[A020985(n)])`
-/

namespace A259940.P10080755961828051632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A126646 n + (f1 (n + 1) - f1 n)).toNat

end

end A259940.P10080755961828051632

/-! ## A259940.P11568787484199996424

`A318306(A126646(n)+Δ[A020985(n)])`
-/

namespace A259940.P11568787484199996424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (A126646 n + (f1 (n + 1) - f1 n)).toNat

end

end A259940.P11568787484199996424

/-! ## A259940.P9945992175745744124

`A001222(A309307(n+1)+A247630(n))`
-/

namespace A259940.P9945992175745744124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A309307 (n + 1) + A247630 n).toNat

end

end A259940.P9945992175745744124

/-!
# A259941: Smallest Product_{i:lambda} prime(i) for any complete partition lambda of n.

The programs for A259941, there is no canonical definition to state claims against.
-/

/-! ## A259941.P3336795770804112589

`A258118(∑[A126796(n)]-A126796(n))`
-/

namespace A259941.P3336795770804112589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258118 (∑ j ∈ Finset.range (n + 1), f1 j - A126796 n).toNat

end

end A259941.P3336795770804112589

/-! ## A259941.P1277691056298608330

`∑[A126615(A094967(n))]`
-/

namespace A259941.P1277691056298608330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126615 (A094967 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259941.P1277691056298608330

/-! ## A259941.P408269909288720680

`∑[A141729(A055879(n+1))]`
-/

namespace A259941.P408269909288720680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141729 (A055879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259941.P408269909288720680

/-! ## A259941.P13720693307093575194

`∑[A126615(A000045(or(1, n)))]`
-/

namespace A259941.P13720693307093575194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126615 (A000045 (Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259941.P13720693307093575194

/-! ## A259941.P16240081491925472370

`∑[A181803(A301724(floor(n/2)²))]`
-/

namespace A259941.P16240081491925472370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181803 (A301724 (⌊(n : ℚ) / 2⌋ ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259941.P16240081491925472370

/-!
# A259942: Numbers that are larger than or equal to the sum of the cubes of their prime factors (with multiplicity).

The programs for A259942, the canonical program `A259942.P4163868911876891632` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259942 has offset 1).

The definition of A259942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259942.P4163868911876891632

`lt[A224787(abs(1-n)+1), n]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A259942

/-- `lt[A224787(abs(1-n)+1), n]` -/
def P4163868911876891632.Spec : Prop :=
  ∀ n, (P4163868911876891632.a n : ℤ) = A259942 (n + 1)

theorem P4163868911876891632.correct : P4163868911876891632.Spec := by
  intro n
  simp only [A259942, Nat.add_sub_cancel]

end A259942

/-! ## A259942.P18355448623762021765

`lt[A224787(n+1), n+1]+1`
-/

namespace A259942.P18355448623762021765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A259942.P18355448623762021765

namespace A259942

/-- `lt[A224787(n+1), n+1]+1` -/
def P18355448623762021765.Spec : Prop :=
  ∀ n, (P18355448623762021765.a n : ℤ) = A259942 (n + 1)

end A259942

/-!
# A259943: Integers n dividing A000009(n)+1.

The programs for A259943, there is no canonical definition to state claims against.
-/

/-! ## A259943.P1515235992235713

`eq[n, gcd(n, A052839(n))]`
-/

namespace A259943.P1515235992235713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A052839 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259943.P1515235992235713

/-! ## A259943.P13506783857410449081

`A324698(a(n-1))+4` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A259943.P13506783857410449081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A324698 (a (n - 1)).toNat + 4

end

end A259943.P13506783857410449081

/-!
# A259944: Number of (n+2) X (n+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000101.

The programs for A259944, there is no canonical definition to state claims against.
-/

/-! ## A259944.P3804544439944832911

`A259952(∑[4*n]+1)`
-/

namespace A259944.P3804544439944832911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259944.P3804544439944832911

/-! ## A259944.P17844914903746851411

`record[A259952(Δ[A235355(n)])]`
-/

namespace A259944.P17844914903746851411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259944.P17844914903746851411

/-! ## A259944.P12977248886203577339

`record[A003982(n)*A259952(n+1)]`
-/

namespace A259944.P12977248886203577339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A259952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259944.P12977248886203577339

/-! ## A259944.P15727393086460236468

`record[A214505(n)*A259952(n+1)]`
-/

namespace A259944.P15727393086460236468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A259952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259944.P15727393086460236468

/-! ## A259944.P12339751554109809663

`record[root(A259952(n+1), A027420(n))]`
-/

namespace A259944.P12339751554109809663
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A259952 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259944.P12339751554109809663

/-!
# A259945: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000101.

The programs for A259945, there is no canonical definition to state claims against.
-/

/-! ## A259945.P16891844380476215189

`A259952(∑[n]+1)`
-/

namespace A259945.P16891844380476215189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259945.P16891844380476215189

/-! ## A259945.P7960875556810179407

`record[A010054(n)*A259952(n+1)]`
-/

namespace A259945.P7960875556810179407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259945.P7960875556810179407

/-! ## A259945.P15439930229578765554

`record[root(A259952(n+1), A131404(n))]`
-/

namespace A259945.P15439930229578765554
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A259952 (n + 1) : ℝ) ^ (1 / (A131404 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259945.P15439930229578765554

/-! ## A259945.P12467428067278312495

`record[gcd(A205341(n+1), A259952(n+1))]`
-/

namespace A259945.P12467428067278312495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205341 (n + 1)) (A259952 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259945.P12467428067278312495

/-! ## A259945.P1869368713810735029

`A259952(A000124(n))%A250669(n+1)`
-/

namespace A259945.P1869368713810735029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259952 (A000124 n).toNat) (A250669 (n + 1))

end

end A259945.P1869368713810735029

/-!
# A259946: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000101.

The programs for A259946, there is no canonical definition to state claims against.
-/

/-! ## A259946.P17358800455008891533

`A259952(∑[n+1]+2)`
-/

namespace A259946.P17358800455008891533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259946.P17358800455008891533

/-! ## A259946.P13626442999970519653

`record[A259952(A008795(n+1)+2)]`
-/

namespace A259946.P13626442999970519653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A008795 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259946.P13626442999970519653

/-! ## A259946.P10193560118312981687

`record[A010054(n)*A259952(n+2)]`
-/

namespace A259946.P10193560118312981687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259952 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259946.P10193560118312981687

/-! ## A259946.P11094321689282920842

`A259952(A167487(n)-5)%A259947(n+1)`
-/

namespace A259946.P11094321689282920842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259952 (A167487 n - 5).toNat) (A259947 (n + 1))

end

end A259946.P11094321689282920842

/-! ## A259946.P11883762517348320266

`A259952(A167487(n)-5)+A008683(8*n+4)`
-/

namespace A259946.P11883762517348320266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A167487 n - 5).toNat + A008683 (8 * n + 4)

end

end A259946.P11883762517348320266

/-!
# A259947: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000101.

The programs for A259947, there is no canonical definition to state claims against.
-/

/-! ## A259947.P16546651195895208099

`A259952(∑[n+2]+4)`
-/

namespace A259947.P16546651195895208099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259947.P16546651195895208099

/-! ## A259947.P14676215823585733257

`lcm(A033999(n), A259952(A167614(n+1)))`
-/

namespace A259947.P14676215823585733257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A259952 (A167614 (n + 1)).toNat)

end

end A259947.P14676215823585733257

/-! ## A259947.P4339378760921345901

`A259952(A167614(n+1))+A034547(n+1)`
-/

namespace A259947.P4339378760921345901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A167614 (n + 1)).toNat + A034547 (n + 1)

end

end A259947.P4339378760921345901

/-! ## A259947.P11545187418019149706

`A259952(A167614(n+1))%A234880(n+1)`
-/

namespace A259947.P11545187418019149706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259952 (A167614 (n + 1)).toNat) (A234880 (n + 1))

end

end A259947.P11545187418019149706

/-! ## A259947.P4635146914489074673

`or(A259952(A167614(n+1)), A319581(n+1))`
-/

namespace A259947.P4635146914489074673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259952 (A167614 (n + 1)).toNat) (A319581 (n + 1))

end

end A259947.P4635146914489074673

/-!
# A259948: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000101.

The programs for A259948, there is no canonical definition to state claims against.
-/

/-! ## A259948.P15901225736783395130

`A259952(∑[n+3]+7)`
-/

namespace A259948.P15901225736783395130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A259948.P15901225736783395130

/-! ## A259948.P7330010513008063432

`lcm((-1)^n, A259952(A055999(n)+10))`
-/

namespace A259948.P7330010513008063432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A259952 (A055999 n + 10).toNat)

end

end A259948.P7330010513008063432

/-! ## A259948.P10501891403963087388

`dr((-1)^n)*A259952(A141214(n)+7)`
-/

namespace A259948.P10501891403963087388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((-1) ^ n) : ℤ) * A259952 (A141214 n + 7).toNat

end

end A259948.P10501891403963087388

/-! ## A259948.P15245292619195624442

`A000041(C(2, 2*n))*A259952(A141214(n)+7)`
-/

namespace A259948.P15245292619195624442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A259952 (A141214 n + 7).toNat

end

end A259948.P15245292619195624442

/-! ## A259948.P627349846558872809

`A259952(A034856(n+2)+6)+A099313(A014963(n+1))`
-/

namespace A259948.P627349846558872809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A034856 (n + 2) + 6).toNat + A099313 (A014963 (n + 1)).toNat

end

end A259948.P627349846558872809

/-!
# A259949: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000101.

The programs for A259949, there is no canonical definition to state claims against.
-/

/-! ## A259949.P504768146503380347

`A259952(A374005(n+1))`
-/

namespace A259949.P504768146503380347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A374005 (n + 1)).toNat

end

end A259949.P504768146503380347

/-! ## A259949.P1441857312397688456

`A259952(A167499(n+3))`
-/

namespace A259949.P1441857312397688456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A167499 (n + 3)).toNat

end

end A259949.P1441857312397688456

/-! ## A259949.P5340664878613385472

`A259952(A077169(n+5))`
-/

namespace A259949.P5340664878613385472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A077169 (n + 5)).toNat

end

end A259949.P5340664878613385472

/-! ## A259949.P5686547345564104320

`A259952(A038722(Δ[A264443(n)]))`
-/

namespace A259949.P5686547345564104320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A259949.P5686547345564104320

/-! ## A259949.P15519506335528790841

`A259952(Δ[A264443(n)])`
-/

namespace A259949.P15519506335528790841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (f1 (n + 1) - f1 n).toNat

end

end A259949.P15519506335528790841

/-!
# A259950: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000101.

The programs for A259950, there is no canonical definition to state claims against.
-/

/-! ## A259950.P14195517825102148442

`A259952(A374007(n+1))`
-/

namespace A259950.P14195517825102148442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A374007 (n + 1)).toNat

end

end A259950.P14195517825102148442

/-! ## A259950.P5151249111726603637

`A259952(A167614(n+4)+3)`
-/

namespace A259950.P5151249111726603637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A167614 (n + 4) + 3).toNat

end

end A259950.P5151249111726603637

/-! ## A259950.P11153327040391588838

`A259952(A000124(n+5)+5)`
-/

namespace A259950.P11153327040391588838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A000124 (n + 5) + 5).toNat

end

end A259950.P11153327040391588838

/-! ## A259950.P13265579886267778754

`A259952(A000217(n+5)+6)`
-/

namespace A259950.P13265579886267778754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A000217 (n + 5) + 6).toNat

end

end A259950.P13265579886267778754

/-! ## A259950.P3056560709914406163

`A259952(A052905(n+2)+11)`
-/

namespace A259950.P3056560709914406163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A052905 (n + 2) + 11).toNat

end

end A259950.P3056560709914406163

/-!
# A259951: Number of (n+2) X (7+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00000101.

The programs for A259951, there is no canonical definition to state claims against.
-/

/-! ## A259951.P13799052542719986316

`A259952(A374008(n+1))`
-/

namespace A259951.P13799052542719986316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A374008 (n + 1)).toNat

end

end A259951.P13799052542719986316

/-! ## A259951.P17919308283960622208

`A259952(A000124(n+6)+6)`
-/

namespace A259951.P17919308283960622208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A000124 (n + 6) + 6).toNat

end

end A259951.P17919308283960622208

/-! ## A259951.P286484881963754301

`A259952(eq[8, A131818(n+1)])`
-/

namespace A259951.P286484881963754301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259951.P286484881963754301

/-! ## A259951.P439257269453759583

`A259952(A055999(n+4))`
-/

namespace A259951.P439257269453759583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (A055999 (n + 4)).toNat

end

end A259951.P439257269453759583

/-! ## A259951.P13016235146605900988

`A259952(eq[6, A193592(n)])`
-/

namespace A259951.P13016235146605900988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259952 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259951.P13016235146605900988

/-!
# A259953: The sum (in nondecreasing order) of the two numbers in an amicable pair.

The programs for A259953, there is no canonical definition to state claims against.
-/

/-! ## A259953.P3419490171315014762

`A260086(n+1)+A260087(n+1)`
-/

namespace A259953.P3419490171315014762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260086 (n + 1) + A260087 (n + 1)

end

end A259953.P3419490171315014762

/-! ## A259953.P818982850498527355

`A259933(2*(n+1)-1)+A259933(2*(n+1))`
-/

namespace A259953.P818982850498527355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259933 (2 * (n + 1) - 1) + A259933 (2 * (n + 1))

end

end A259953.P818982850498527355

/-! ## A259953.P6255873903994859376

`2*A275316(n+1)`
-/

namespace A259953.P6255873903994859376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275316 (n + 1)

end

end A259953.P6255873903994859376

/-! ## A259953.P7025428911016228895

`∑{d}[A260086(n+1), #]`
-/

namespace A259953.P7025428911016228895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A259953.P7025428911016228895

/-! ## A259953.P11397007686315046387

`2*(A260087(n+1)-A275470(n+1))`
-/

namespace A259953.P11397007686315046387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A260087 (n + 1) - A275470 (n + 1))

end

end A259953.P11397007686315046387

/-!
# A259954: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001001.

The programs for A259954, there is no canonical definition to state claims against.
-/

/-! ## A259954.P29800504285409674

`A259962(∑[4*n]+1)`
-/

namespace A259954.P29800504285409674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259954.P29800504285409674

/-! ## A259954.P3815250840688035980

`record[A003982(n)*A259962(n+1)]`
-/

namespace A259954.P3815250840688035980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A259962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259954.P3815250840688035980

/-! ## A259954.P10808679610878156456

`record[gcd(A114327(n), A259962(n+1))]`
-/

namespace A259954.P10808679610878156456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A259962 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259954.P10808679610878156456

/-! ## A259954.P730830548591302985

`lcm(A033999(n), A259962(A001844(n)))`
-/

namespace A259954.P730830548591302985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A259962 (A001844 n).toNat)

end

end A259954.P730830548591302985

/-! ## A259954.P3548147772156246060

`A014963(A325777(n+1))*A259962(A001844(n))`
-/

namespace A259954.P3548147772156246060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A325777 (n + 1)).toNat * A259962 (A001844 n).toNat

end

end A259954.P3548147772156246060

/-!
# A259955: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001001.

The programs for A259955, there is no canonical definition to state claims against.
-/

/-! ## A259955.P12381442760787467130

`A259962(∑[n]+1)`
-/

namespace A259955.P12381442760787467130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259955.P12381442760787467130

/-! ## A259955.P13192705579029219456

`record[A103451(n)*A259962(n+1)]`
-/

namespace A259955.P13192705579029219456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A259962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259955.P13192705579029219456

/-! ## A259955.P13580427892401638907

`record[root(A259962(n+1), A009998(n))]`
-/

namespace A259955.P13580427892401638907
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A259962 (n + 1) : ℝ) ^ (1 / (A009998 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259955.P13580427892401638907

/-! ## A259955.P8731051999228795679

`record[root(A259962(n+1), A013619(n))]`
-/

namespace A259955.P8731051999228795679
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A259962 (n + 1) : ℝ) ^ (1 / (A013619 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259955.P8731051999228795679

/-! ## A259955.P7036249452324955002

`A259962(A000124(n))%A253743(n+1)`
-/

namespace A259955.P7036249452324955002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259962 (A000124 n).toNat) (A253743 (n + 1))

end

end A259955.P7036249452324955002

/-!
# A259956: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001001.

The programs for A259956, there is no canonical definition to state claims against.
-/

/-! ## A259956.P8499181129250399945

`A259962(∑[n+1]+2)`
-/

namespace A259956.P8499181129250399945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259956.P8499181129250399945

/-! ## A259956.P15664761859599475658

`A259962(A167487(n)-5)+char[29]`
-/

namespace A259956.P15664761859599475658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A167487 n - 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A259956.P15664761859599475658

/-! ## A259956.P8640465172678059655

`record[gcd(A129065(n+1), A259962(n+3))]`
-/

namespace A259956.P8640465172678059655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129065 (n + 1)) (A259962 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259956.P8640465172678059655

/-! ## A259956.P2712682979739106642

`A259962(A167499(n)-3)+A000007(n+1)`
-/

namespace A259956.P2712682979739106642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A167499 n - 3).toNat + A000007 (n + 1)

end

end A259956.P2712682979739106642

/-! ## A259956.P8155011606036071842

`lcm(A153881(n+1), A259962(A167499(n)-3))`
-/

namespace A259956.P8155011606036071842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A259962 (A167499 n - 3).toNat)

end

end A259956.P8155011606036071842

/-!
# A259957: Number of (n+2) X (3+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001001.

The programs for A259957, there is no canonical definition to state claims against.
-/

/-! ## A259957.P12771852927574132710

`A259962(∑[n+2]+4)`
-/

namespace A259957.P12771852927574132710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259957.P12771852927574132710

/-! ## A259957.P15364551534859374540

`or(1, A259962(A167614(n+1)))`
-/

namespace A259957.P15364551534859374540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259962 (A167614 (n + 1)).toNat)

end

end A259957.P15364551534859374540

/-! ## A259957.P1028676913594615981

`or(1, A259962(A167499(n)+n))`
-/

namespace A259957.P1028676913594615981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259962 (A167499 n + (n : ℤ)).toNat)

end

end A259957.P1028676913594615981

/-! ## A259957.P3097696826347935429

`lcm(A033999(n), A259962(A167614(n+1)))`
-/

namespace A259957.P3097696826347935429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A259962 (A167614 (n + 1)).toNat)

end

end A259957.P3097696826347935429

/-! ## A259957.P8437400892293746739

`A259962(A167499(n)+n)%A259947(n+1)`
-/

namespace A259957.P8437400892293746739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259962 (A167499 n + (n : ℤ)).toNat) (A259947 (n + 1))

end

end A259957.P8437400892293746739

/-!
# A259958: Number of (n+2) X (4+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001001.

The programs for A259958, there is no canonical definition to state claims against.
-/

/-! ## A259958.P13245621690686593815

`A259962(∑[n+3]+7)`
-/

namespace A259958.P13245621690686593815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A259958.P13245621690686593815

/-! ## A259958.P11707689178240472168

`A087960(A005563(n))*A259962(A027379(n+2))`
-/

namespace A259958.P11707689178240472168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A005563 n).toNat * A259962 (A027379 (n + 2)).toNat

end

end A259958.P11707689178240472168

/-! ## A259958.P9456723894492881176

`A087960(A206584(2*(n+1)))*A259962(A027379(n+2))`
-/

namespace A259958.P9456723894492881176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A206584 (2 * (n + 1))).toNat * A259962 (A027379 (n + 2)).toNat

end

end A259958.P9456723894492881176

/-!
# A259959: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001001.

The programs for A259959, there is no canonical definition to state claims against.
-/

/-! ## A259959.P2842116585523442929

`A259962(A167499(n+3))`
-/

namespace A259959.P2842116585523442929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A167499 (n + 3)).toNat

end

end A259959.P2842116585523442929

/-! ## A259959.P14084872070949678334

`A259962(A000217(n+4)+5)`
-/

namespace A259959.P14084872070949678334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A000217 (n + 4) + 5).toNat

end

end A259959.P14084872070949678334

/-! ## A259959.P8264661220671187402

`A259962(A038722(Δ[A264443(n)]))`
-/

namespace A259959.P8264661220671187402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A259959.P8264661220671187402

/-! ## A259959.P6665548010681742253

`A259962(Δ[A264443(n)])`
-/

namespace A259959.P6665548010681742253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (f1 (n + 1) - f1 n).toNat

end

end A259959.P6665548010681742253

/-! ## A259959.P908657337672823055

`A259962(A374005(n+1))`
-/

namespace A259959.P908657337672823055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A374005 (n + 1)).toNat

end

end A259959.P908657337672823055

/-!
# A259960: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001001.

The programs for A259960, there is no canonical definition to state claims against.
-/

/-! ## A259960.P2939876665717053039

`A259962(A166136(n+4))`
-/

namespace A259960.P2939876665717053039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A166136 (n + 4)).toNat

end

end A259960.P2939876665717053039

/-! ## A259960.P5268475845527820998

`A259962(A056115(n)+21)`
-/

namespace A259960.P5268475845527820998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A056115 n + 21).toNat

end

end A259960.P5268475845527820998

/-! ## A259960.P5673948707403320070

`A259962(Δ[A264443(n)]+10)`
-/

namespace A259960.P5673948707403320070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (f1 (n + 1) - f1 n + 10).toNat

end

end A259960.P5673948707403320070

/-! ## A259960.P11181606200071707773

`A259962(A000217(n+5)+6)`
-/

namespace A259960.P11181606200071707773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A000217 (n + 5) + 6).toNat

end

end A259960.P11181606200071707773

/-! ## A259960.P4411330589777759813

`A259962(A046691(n+3)+10)`
-/

namespace A259960.P4411330589777759813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A046691 (n + 3) + 10).toNat

end

end A259960.P4411330589777759813

/-!
# A259961: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001001.

The programs for A259961, there is no canonical definition to state claims against.
-/

/-! ## A259961.P7071592473577487736

`A259962(A167487(n+5))`
-/

namespace A259961.P7071592473577487736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A167487 (n + 5)).toNat

end

end A259961.P7071592473577487736

/-! ## A259961.P15376266950832161711

`A259962(eq[8, A131818(n+1)])`
-/

namespace A259961.P15376266950832161711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259961.P15376266950832161711

/-! ## A259961.P10103075442618261182

`A259962(A374008(n+1))`
-/

namespace A259961.P10103075442618261182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (A374008 (n + 1)).toNat

end

end A259961.P10103075442618261182

/-! ## A259961.P12283764935122665077

`A259962(eq[4, A219347(n)])`
-/

namespace A259961.P12283764935122665077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259961.P12283764935122665077

/-! ## A259961.P5413589124583989500

`A259962(eq[6, A193592(n)])`
-/

namespace A259961.P5413589124583989500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259961.P5413589124583989500

/-!
# A259962: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001001.

The programs for A259962, there is no canonical definition to state claims against.
-/

/-! ## A259962.P14432778595909955917

`or(2, A000267(A206118(n+1)))`
-/

namespace A259962.P14432778595909955917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A000267 (A206118 (n + 1)).toNat)

end

end A259962.P14432778595909955917

/-!
# A259965: Triangle read by rows: representation degeneracies of bosonic strings.

The programs for A259965, there is no canonical definition to state claims against.
-/

/-! ## A259965.P12154011389458319406

`A115513(n)+A001222(A347811(n))`
-/

namespace A259965.P12154011389458319406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115513 n + A001222 (A347811 n).toNat

end

end A259965.P12154011389458319406

/-! ## A259965.P9565192846118165056

`A178112(n)-A010894(A240058(n+1))`
-/

namespace A259965.P9565192846118165056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 n - A010894 ((A240058 (n + 1)).toNat + 21)

end

end A259965.P9565192846118165056

/-! ## A259965.P14302635417029001543

`A004396(∑{e}[A049310(n)^n+1, #])-A101365(3*n+7)`
-/

namespace A259965.P14302635417029001543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) - A101365 (3 * n + 7)

end

end A259965.P14302635417029001543

/-! ## A259965.P6059046345026772883

`A112761(n+1)+A010815(A102025(n+1))`
-/

namespace A259965.P6059046345026772883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112761 (n + 1) + A010815 (A102025 (n + 1)).toNat

end

end A259965.P6059046345026772883

/-! ## A259965.P15817630672836103831

`A013595((A065333(n+1)-A265200(n+1))²)`
-/

namespace A259965.P15817630672836103831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013595 ((A065333 (n + 1) - A265200 (n + 1)) ^ 2).toNat

end

end A259965.P15817630672836103831

/-!
# A259966: Total binary weight (cf. A000120) of all A005251(n) binary sequences of length n not containing any isolated 1's.

The programs for A259966, the canonical program `A259966.P1129345898442510754` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259966 has offset 0).

The definition of A259966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259966.P1129345898442510754

`A118430(n+1)+Δ[A118430(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A259966

/-- `A118430(n+1)+Δ[A118430(n)]` -/
def P1129345898442510754.Spec : Prop :=
  ∀ n, P1129345898442510754.a n = A259966 n

theorem P1129345898442510754.correct : P1129345898442510754.Spec := by
  intro n
  simp only [A259966]

end A259966

/-! ## A259966.P9726992650378738700

`A136444(n+1)+A118430(n+1)`
-/

namespace A259966.P9726992650378738700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 (n + 1) + A118430 (n + 1)

end

end A259966.P9726992650378738700

namespace A259966

/-- `A136444(n+1)+A118430(n+1)` -/
def P9726992650378738700.Spec : Prop :=
  ∀ n, P9726992650378738700.a n = A259966 n

end A259966

/-! ## A259966.P17265366224539525828

`∑[A136444(n+1)+Δ[A136444(n)]]`
-/

namespace A259966.P17265366224539525828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259966.P17265366224539525828

namespace A259966

/-- `∑[A136444(n+1)+Δ[A136444(n)]]` -/
def P17265366224539525828.Spec : Prop :=
  ∀ n, P17265366224539525828.a n = A259966 n

end A259966

/-! ## A259966.P7580742531864358184

`Δ[A118430(n)+∑[A118430(n)]]`
-/

namespace A259966.P7580742531864358184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259966.P7580742531864358184

namespace A259966

/-- `Δ[A118430(n)+∑[A118430(n)]]` -/
def P7580742531864358184.Spec : Prop :=
  ∀ n, P7580742531864358184.a n = A259966 n

end A259966

/-! ## A259966.P13425014212329713870

`Δ[A011782(n)*A118430(n)]/A011782(n)`
-/

namespace A259966.P13425014212329713870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A118430 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A011782 n : ℚ)

end

end A259966.P13425014212329713870

namespace A259966

/-- `Δ[A011782(n)*A118430(n)]/A011782(n)` -/
def P13425014212329713870.Spec : Prop :=
  ∀ n, P13425014212329713870.a n = (A259966 n : ℚ)

end A259966

/-!
# A259967: a(n) = a(n-1) + a(n-2) + a(n-4).

The programs for A259967, the canonical program `A259967.P1361222038179124354` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259967 has offset 0).

The definition of A259967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A259967.P1361222038179124354`, by `A259967.P1361222038179124354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259967.P1361222038179124354

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=3, a(1)=2, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A259967

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P1361222038179124354.Spec : Prop :=
  ∀ n, (P1361222038179124354.a n : ℤ) = A259967 n

theorem P1361222038179124354.correct : P1361222038179124354.Spec := by
  intro n
  simp only [A259967]

end A259967

/-! ## A259967.P117279540137768668

`2*a(n-1)-(a(n-2)-a(n-3))` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A259967.P117279540137768668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 2] fun n a =>
  2 * a (n - 1) - (a (n - 2) - a (n - 3))

end

end A259967.P117279540137768668

namespace A259967

/-- `2*a(n-1)-(a(n-2)-a(n-3))` -/
def P117279540137768668.Spec : Prop :=
  ∀ n, P117279540137768668.a n = A259967 n

end A259967

/-! ## A259967.P6203814181289750013

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A259967.P6203814181289750013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A259967.P6203814181289750013

namespace A259967

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P6203814181289750013.Spec : Prop :=
  ∀ n, P6203814181289750013.a n = A259967 n

end A259967

/-! ## A259967.P11613048254347928336

`A001608(2*n)`
-/

namespace A259967.P11613048254347928336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (2 * n)

end

end A259967.P11613048254347928336

namespace A259967

/-- `A001608(2*n)` -/
def P11613048254347928336.Spec : Prop :=
  ∀ n, P11613048254347928336.a n = A259967 n

end A259967

/-! ## A259967.P2009479996077343284

`A192932(n)+2*A078712(n)`
-/

namespace A259967.P2009479996077343284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192932 n + 2 * A078712 n

end

end A259967.P2009479996077343284

namespace A259967

/-- `A192932(n)+2*A078712(n)` -/
def P2009479996077343284.Spec : Prop :=
  ∀ n, P2009479996077343284.a n = A259967 n

end A259967

/-! ## A259967.P3188628440219272521

`A049853(n)+Δ[2*A005251(n)]`
-/

namespace A259967.P3188628440219272521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n + (f1 (n + 1) - f1 n)

end

end A259967.P3188628440219272521

namespace A259967

/-- `A049853(n)+Δ[2*A005251(n)]` -/
def P3188628440219272521.Spec : Prop :=
  ∀ n, P3188628440219272521.a n = A259967 n

end A259967

/-! ## A259967.P679454585228612996

`A141038(2*n)+A078027(2*n)`
-/

namespace A259967.P679454585228612996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (2 * n) + A078027 (2 * n)

end

end A259967.P679454585228612996

namespace A259967

/-- `A141038(2*n)+A078027(2*n)` -/
def P679454585228612996.Spec : Prop :=
  ∀ n, P679454585228612996.a n = A259967 n

end A259967

/-! ## A259967.P5847403381939908117

`A141038(2*n)+A124745(2*n)`
-/

namespace A259967.P5847403381939908117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (2 * n) + A124745 (2 * n)

end

end A259967.P5847403381939908117

namespace A259967

/-- `A141038(2*n)+A124745(2*n)` -/
def P5847403381939908117.Spec : Prop :=
  ∀ n, P5847403381939908117.a n = A259967 n

end A259967

/-! ## A259967.P7320664751444593166

`A001945(2*n)-A078712(2*n)`
-/

namespace A259967.P7320664751444593166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (2 * n) - A078712 (2 * n)

end

end A259967.P7320664751444593166

namespace A259967

/-- `A001945(2*n)-A078712(2*n)` -/
def P7320664751444593166.Spec : Prop :=
  ∀ n, P7320664751444593166.a n = A259967 n

end A259967

/-! ## A259967.P7730495695973974216

`A049853(n+1)-Δ[A000931(2*n)]`
-/

namespace A259967.P7730495695973974216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (n + 1) - (f1 (n + 1) - f1 n)

end

end A259967.P7730495695973974216

namespace A259967

/-- `A049853(n+1)-Δ[A000931(2*n)]` -/
def P7730495695973974216.Spec : Prop :=
  ∀ n, P7730495695973974216.a n = A259967 n

end A259967

/-! ## A259967.P17820662991608064702

`A049853(n+1)-A078027(2*n+1)`
-/

namespace A259967.P17820662991608064702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (n + 1) - A078027 (2 * n + 1)

end

end A259967.P17820662991608064702

namespace A259967

/-- `A049853(n+1)-A078027(2*n+1)` -/
def P17820662991608064702.Spec : Prop :=
  ∀ n, P17820662991608064702.a n = A259967 n

end A259967

/-! ## A259967.P6019423600234303453

`A000931(2*n)+2*A005251(n+1)`
-/

namespace A259967.P6019423600234303453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n) + 2 * A005251 (n + 1)

end

end A259967.P6019423600234303453

namespace A259967

/-- `A000931(2*n)+2*A005251(n+1)` -/
def P6019423600234303453.Spec : Prop :=
  ∀ n, P6019423600234303453.a n = A259967 n

end A259967

/-! ## A259967.P12183373458867024043

`A000931(2*n)+2*A182097(2*n)`
-/

namespace A259967.P12183373458867024043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n) + 2 * A182097 (2 * n)

end

end A259967.P12183373458867024043

namespace A259967

/-- `A000931(2*n)+2*A182097(2*n)` -/
def P12183373458867024043.Spec : Prop :=
  ∀ n, P12183373458867024043.a n = A259967 n

end A259967

/-! ## A259967.P1599427525450287087

`A000931(2*n+3)-A109248(2*n+3)`
-/

namespace A259967.P1599427525450287087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 3) - A109248 (2 * n + 3)

end

end A259967.P1599427525450287087

namespace A259967

/-- `A000931(2*n+3)-A109248(2*n+3)` -/
def P1599427525450287087.Spec : Prop :=
  ∀ n, P1599427525450287087.a n = A259967 n

end A259967

/-! ## A259967.P18226045361208320761

`A005251(n+1)+A049853(n+1)-A005314(n)`
-/

namespace A259967.P18226045361208320761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1) + (A049853 (n + 1) - A005314 n)

end

end A259967.P18226045361208320761

namespace A259967

/-- `A005251(n+1)+A049853(n+1)-A005314(n)` -/
def P18226045361208320761.Spec : Prop :=
  ∀ n, P18226045361208320761.a n = A259967 n

end A259967

/-! ## A259967.P2029661972475983484

`A109248(2*n)+A005251(n+1)-A109248(2*n+1)`
-/

namespace A259967.P2029661972475983484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 (2 * n) + (A005251 (n + 1) - A109248 (2 * n + 1))

end

end A259967.P2029661972475983484

namespace A259967

/-- `A109248(2*n)+A005251(n+1)-A109248(2*n+1)` -/
def P2029661972475983484.Spec : Prop :=
  ∀ n, P2029661972475983484.a n = A259967 n

end A259967

/-! ## A259967.P3652862911706252945

`A134816(2*n+1)+A078027(2*n)+A000931(2*n)`
-/

namespace A259967.P3652862911706252945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * n + 1) + (A078027 (2 * n) + A000931 (2 * n))

end

end A259967.P3652862911706252945

namespace A259967

/-- `A134816(2*n+1)+A078027(2*n)+A000931(2*n)` -/
def P3652862911706252945.Spec : Prop :=
  ∀ n, P3652862911706252945.a n = A259967 n

end A259967

/-! ## A259967.P14967146611425100237

`A134816(2*(n+1))+A078027(2*n)-A133034(2*n)`
-/

namespace A259967.P14967146611425100237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 1)) + (A078027 (2 * n) - A133034 (2 * n))

end

end A259967.P14967146611425100237

namespace A259967

/-- `A134816(2*(n+1))+A078027(2*n)-A133034(2*n)` -/
def P14967146611425100237.Spec : Prop :=
  ∀ n, P14967146611425100237.a n = A259967 n

end A259967

/-! ## A259967.P16518183355551269691

`A007307(2*n+1)+A124745(2*n+1)+A124745(2*n)`
-/

namespace A259967.P16518183355551269691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (2 * n + 1) + (A124745 (2 * n + 1) + A124745 (2 * n))

end

end A259967.P16518183355551269691

namespace A259967

/-- `A007307(2*n+1)+A124745(2*n+1)+A124745(2*n)` -/
def P16518183355551269691.Spec : Prop :=
  ∀ n, P16518183355551269691.a n = A259967 n

end A259967

/-!
# A259968: a(n) = a(n-1) + a(n-2) + a(n-4), with a(1)=1, a(2)=1, a(3)=3, a(4)=6.

The programs for A259968, the canonical program `A259968.P2919764147648229394` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259968 has offset 1).

The definition of A259968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A259968.P2919764147648229394`, by `A259968.P2919764147648229394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259968.P2919764147648229394

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A259968

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P2919764147648229394.Spec : Prop :=
  ∀ n, (P2919764147648229394.a n : ℤ) = A259968 (n + 1)

theorem P2919764147648229394.correct : P2919764147648229394.Spec := by
  intro n
  simp only [A259968, Nat.add_sub_cancel]

end A259968

/-! ## A259968.P6345911719286288628

`2*a(n-1)-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A259968.P6345911719286288628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * a (n - 1) - (a (n - 2) - a (n - 3))

end

end A259968.P6345911719286288628

namespace A259968

/-- `2*a(n-1)-(a(n-2)-a(n-3))` -/
def P6345911719286288628.Spec : Prop :=
  ∀ n, P6345911719286288628.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P6618787964529409313

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A259968.P6618787964529409313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A259968.P6618787964529409313

namespace A259968

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P6618787964529409313.Spec : Prop :=
  ∀ n, P6618787964529409313.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P17845213499913161846

`A007307(Δ[n²])`
-/

namespace A259968.P17845213499913161846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259968.P17845213499913161846

namespace A259968

/-- `A007307(Δ[n²])` -/
def P17845213499913161846.Spec : Prop :=
  ∀ n, P17845213499913161846.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P12020483842620674767

`A098601(2*(n+1))+1`
-/

namespace A259968.P12020483842620674767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098601 (2 * (n + 1)) + 1

end

end A259968.P12020483842620674767

namespace A259968

/-- `A098601(2*(n+1))+1` -/
def P12020483842620674767.Spec : Prop :=
  ∀ n, P12020483842620674767.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P12139895729109714584

`A137495(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A259968.P12139895729109714584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A137495 (n - 2) + a (n - 1)

end

end A259968.P12139895729109714584

namespace A259968

/-- `A137495(n-2)+a(n-1)` -/
def P12139895729109714584.Spec : Prop :=
  ∀ n, P12139895729109714584.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P6171341591384564982

`A005251(n+3)-A005251(n)`
-/

namespace A259968.P6171341591384564982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 3) - A005251 n

end

end A259968.P6171341591384564982

namespace A259968

/-- `A005251(n+3)-A005251(n)` -/
def P6171341591384564982.Spec : Prop :=
  ∀ n, P6171341591384564982.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P4691404030002437565

`Δ[A049853(n)]+∑[A005251(n)]`
-/

namespace A259968.P4691404030002437565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A259968.P4691404030002437565

namespace A259968

/-- `Δ[A049853(n)]+∑[A005251(n)]` -/
def P4691404030002437565.Spec : Prop :=
  ∀ n, P4691404030002437565.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P17671367204226022224

`A182097(Δ[n²])+Δ[A049853(n)]`
-/

namespace A259968.P17671367204226022224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (f2 (n + 1) - f2 n)

end

end A259968.P17671367204226022224

namespace A259968

/-- `A182097(Δ[n²])+Δ[A049853(n)]` -/
def P17671367204226022224.Spec : Prop :=
  ∀ n, P17671367204226022224.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P12434813152526037578

`A049853(n+1)-A078027(2*n)`
-/

namespace A259968.P12434813152526037578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (n + 1) - A078027 (2 * n)

end

end A259968.P12434813152526037578

namespace A259968

/-- `A049853(n+1)-A078027(2*n)` -/
def P12434813152526037578.Spec : Prop :=
  ∀ n, P12434813152526037578.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P12960568083888082378

`A109248(2*n)+A007307(2*n)`
-/

namespace A259968.P12960568083888082378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 (2 * n) + A007307 (2 * n)

end

end A259968.P12960568083888082378

namespace A259968

/-- `A109248(2*n)+A007307(2*n)` -/
def P12960568083888082378.Spec : Prop :=
  ∀ n, P12960568083888082378.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P18022464606262658068

`A276477(2*n)-A000931(2*n)`
-/

namespace A259968.P18022464606262658068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 (2 * n) - A000931 (2 * n)

end

end A259968.P18022464606262658068

namespace A259968

/-- `A276477(2*n)-A000931(2*n)` -/
def P18022464606262658068.Spec : Prop :=
  ∀ n, P18022464606262658068.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P13942215884969126677

`Δ[A005251(n+2)]+Δ[A049853(n)]`
-/

namespace A259968.P13942215884969126677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A259968.P13942215884969126677

namespace A259968

/-- `Δ[A005251(n+2)]+Δ[A049853(n)]` -/
def P13942215884969126677.Spec : Prop :=
  ∀ n, P13942215884969126677.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P15825736254178210796

`A109248(2*n)+record[A109248(n+4)]`
-/

namespace A259968.P15825736254178210796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259968.P15825736254178210796

namespace A259968

/-- `A109248(2*n)+record[A109248(n+4)]` -/
def P15825736254178210796.Spec : Prop :=
  ∀ n, P15825736254178210796.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P6074484437139909214

`A005251(n+2)+A000931(2*(n+1))`
-/

namespace A259968.P6074484437139909214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 2) + A000931 (2 * (n + 1))

end

end A259968.P6074484437139909214

namespace A259968

/-- `A005251(n+2)+A000931(2*(n+1))` -/
def P6074484437139909214.Spec : Prop :=
  ∀ n, P6074484437139909214.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P2919846709112130908

`A141038(2*n)+A078027(2*n+1)`
-/

namespace A259968.P2919846709112130908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (2 * n) + A078027 (2 * n + 1)

end

end A259968.P2919846709112130908

namespace A259968

/-- `A141038(2*n)+A078027(2*n+1)` -/
def P2919846709112130908.Spec : Prop :=
  ∀ n, P2919846709112130908.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P13888679835770505366

`A276275(2*n+1)+A133034(2*n)`
-/

namespace A259968.P13888679835770505366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276275 (2 * n + 1) + A133034 (2 * n)

end

end A259968.P13888679835770505366

namespace A259968

/-- `A276275(2*n+1)+A133034(2*n)` -/
def P13888679835770505366.Spec : Prop :=
  ∀ n, P13888679835770505366.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P1977958167512081244

`A141038(2*n)-A124745(2*n+1)`
-/

namespace A259968.P1977958167512081244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (2 * n) - A124745 (2 * n + 1)

end

end A259968.P1977958167512081244

namespace A259968

/-- `A141038(2*n)-A124745(2*n+1)` -/
def P1977958167512081244.Spec : Prop :=
  ∀ n, P1977958167512081244.a n = A259968 (n + 1)

end A259968

/-! ## A259968.P11016205260484508705

`A049853(n+1)-Δ[Δ[A000931(2*n)]]`
-/

namespace A259968.P11016205260484508705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (n + 1) - (f1 (n + 1) - f1 n)

end

end A259968.P11016205260484508705

namespace A259968

/-- `A049853(n+1)-Δ[Δ[A000931(2*n)]]` -/
def P11016205260484508705.Spec : Prop :=
  ∀ n, P11016205260484508705.a n = A259968 (n + 1)

end A259968

/-!
# A259969: a(n) = n*A259968(n).

The programs for A259969, the canonical program `A259969.P6346311147704205363` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259969 has offset 0).

The definition of A259969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259969.P6346311147704205363

`n*Δ[A007307(2*n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259969

/-- `n*Δ[A007307(2*n)]` -/
def P6346311147704205363.Spec : Prop :=
  ∀ n, P6346311147704205363.a n = A259969 n

theorem P6346311147704205363.correct : P6346311147704205363.Spec := by
  intro n
  simp only [A259969]

end A259969

/-! ## A259969.P7815075712968589653

`n*(A098601(2*n)+1)`
-/

namespace A259969.P7815075712968589653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A098601 (2 * n) + 1)

end

end A259969.P7815075712968589653

namespace A259969

/-- `n*(A098601(2*n)+1)` -/
def P7815075712968589653.Spec : Prop :=
  ∀ n, P7815075712968589653.a n = A259969 n

end A259969

/-! ## A259969.P15632035331225018180

`n*Δ[Δ[A259968(n+1)]]`
-/

namespace A259969.P15632035331225018180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259968 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A259969.P15632035331225018180

namespace A259969

/-- `n*Δ[Δ[A259968(n+1)]]` -/
def P15632035331225018180.Spec : Prop :=
  ∀ n, P15632035331225018180.a n = A259969 n

end A259969

/-! ## A259969.P3284328543376520349

`n*Δ[Δ[A117363(2*n)]]`
-/

namespace A259969.P3284328543376520349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117363 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A259969.P3284328543376520349

namespace A259969

/-- `n*Δ[Δ[A117363(2*n)]]` -/
def P3284328543376520349.Spec : Prop :=
  ∀ n, P3284328543376520349.a n = A259969 n

end A259969

/-! ## A259969.P15186211117904120490

`n*A259968(abs(1-n)+1)`
-/

namespace A259969.P15186211117904120490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259968 (|1 - (n : ℤ)| + 1).toNat

end

end A259969.P15186211117904120490

namespace A259969

/-- `n*A259968(abs(1-n)+1)` -/
def P15186211117904120490.Spec : Prop :=
  ∀ n, P15186211117904120490.a n = A259969 n

end A259969

/-! ## A259969.P12485306363080496517

`n*A007307(A004273(n))`
-/

namespace A259969.P12485306363080496517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007307 (A004273 n).toNat

end

end A259969.P12485306363080496517

namespace A259969

/-- `n*A007307(A004273(n))` -/
def P12485306363080496517.Spec : Prop :=
  ∀ n, P12485306363080496517.a n = A259969 n

end A259969

/-! ## A259969.P933434071639657474

`n*Δ[A109248(A103517(n+1))]`
-/

namespace A259969.P933434071639657474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 (A103517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A259969.P933434071639657474

namespace A259969

/-- `n*Δ[A109248(A103517(n+1))]` -/
def P933434071639657474.Spec : Prop :=
  ∀ n, P933434071639657474.a n = A259969 n

end A259969

/-! ## A259969.P7723401561316362822

`n*Δ[A005314(n)+A005251(n)]`
-/

namespace A259969.P7723401561316362822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 n + A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A259969.P7723401561316362822

namespace A259969

/-- `n*Δ[A005314(n)+A005251(n)]` -/
def P7723401561316362822.Spec : Prop :=
  ∀ n, P7723401561316362822.a n = A259969 n

end A259969

/-! ## A259969.P8349419998254911745

`n*(A005251(n+1)+Δ[A005251(n)])`
-/

namespace A259969.P8349419998254911745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005251 (n + 1) + (f1 (n + 1) - f1 n))

end

end A259969.P8349419998254911745

namespace A259969

/-- `n*(A005251(n+1)+Δ[A005251(n)])` -/
def P8349419998254911745.Spec : Prop :=
  ∀ n, P8349419998254911745.a n = A259969 n

end A259969

/-! ## A259969.P7693898225244506451

`n*(A005251(n+1)+A000931(2*n))`
-/

namespace A259969.P7693898225244506451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005251 (n + 1) + A000931 (2 * n))

end

end A259969.P7693898225244506451

namespace A259969

/-- `n*(A005251(n+1)+A000931(2*n))` -/
def P7693898225244506451.Spec : Prop :=
  ∀ n, P7693898225244506451.a n = A259969 n

end A259969

/-! ## A259969.P10059247693548788146

`n*(A001608(2*n)-A005251(n+1))`
-/

namespace A259969.P10059247693548788146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001608 (2 * n) - A005251 (n + 1))

end

end A259969.P10059247693548788146

namespace A259969

/-- `n*(A001608(2*n)-A005251(n+1))` -/
def P10059247693548788146.Spec : Prop :=
  ∀ n, P10059247693548788146.a n = A259969 n

end A259969

/-! ## A259969.P5356008377082130017

`n*(A182097(2*n)+A000931(2*n))`
-/

namespace A259969.P5356008377082130017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A182097 (2 * n) + A000931 (2 * n))

end

end A259969.P5356008377082130017

namespace A259969

/-- `n*(A182097(2*n)+A000931(2*n))` -/
def P5356008377082130017.Spec : Prop :=
  ∀ n, P5356008377082130017.a n = A259969 n

end A259969

/-! ## A259969.P3248160928841198757

`n*(A001608(2*n)-A182097(2*n))`
-/

namespace A259969.P3248160928841198757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001608 (2 * n) - A182097 (2 * n))

end

end A259969.P3248160928841198757

namespace A259969

/-- `n*(A001608(2*n)-A182097(2*n))` -/
def P3248160928841198757.Spec : Prop :=
  ∀ n, P3248160928841198757.a n = A259969 n

end A259969

/-! ## A259969.P13364964265602283966

`n*(A049853(n+1)-A182097(2*n+1))`
-/

namespace A259969.P13364964265602283966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A049853 (n + 1) - A182097 (2 * n + 1))

end

end A259969.P13364964265602283966

namespace A259969

/-- `n*(A049853(n+1)-A182097(2*n+1))` -/
def P13364964265602283966.Spec : Prop :=
  ∀ n, P13364964265602283966.a n = A259969 n

end A259969

/-! ## A259969.P7913580256872562154

`n*(A232582(n+2)-A001608(2*n+1))`
-/

namespace A259969.P7913580256872562154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A232582 (n + 2) - A001608 (2 * n + 1))

end

end A259969.P7913580256872562154

namespace A259969

/-- `n*(A232582(n+2)-A001608(2*n+1))` -/
def P7913580256872562154.Spec : Prop :=
  ∀ n, P7913580256872562154.a n = A259969 n

end A259969

/-! ## A259969.P18192275272791851442

`n*(A109248(2*n)-A109248(2*n+1))`
-/

namespace A259969.P18192275272791851442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A109248 (2 * n) - A109248 (2 * n + 1))

end

end A259969.P18192275272791851442

namespace A259969

/-- `n*(A109248(2*n)-A109248(2*n+1))` -/
def P18192275272791851442.Spec : Prop :=
  ∀ n, P18192275272791851442.a n = A259969 n

end A259969

/-! ## A259969.P11807776444012327366

`n*(A228361(2*n)-A078027(2*n+1))`
-/

namespace A259969.P11807776444012327366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228361 (2 * n) - A078027 (2 * n + 1))

end

end A259969.P11807776444012327366

namespace A259969

/-- `n*(A228361(2*n)-A078027(2*n+1))` -/
def P11807776444012327366.Spec : Prop :=
  ∀ n, P11807776444012327366.a n = A259969 n

end A259969

/-! ## A259969.P2559066276676291715

`n*(A134816(2*n+1)+A124745(2*n+1))`
-/

namespace A259969.P2559066276676291715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A134816 (2 * n + 1) + A124745 (2 * n + 1))

end

end A259969.P2559066276676291715

namespace A259969

/-- `n*(A134816(2*n+1)+A124745(2*n+1))` -/
def P2559066276676291715.Spec : Prop :=
  ∀ n, P2559066276676291715.a n = A259969 n

end A259969

/-! ## A259969.P13436571894146129396

`n*(A134816(2*n+1)-A078027(2*n+1))`
-/

namespace A259969.P13436571894146129396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A134816 (2 * n + 1) - A078027 (2 * n + 1))

end

end A259969.P13436571894146129396

namespace A259969

/-- `n*(A134816(2*n+1)-A078027(2*n+1))` -/
def P13436571894146129396.Spec : Prop :=
  ∀ n, P13436571894146129396.a n = A259969 n

end A259969

/-!
# A259970: Triangle read by rows: coefficients eta(n,k) arising from the study of completely transitive graphs on n nodes.

The programs for A259970, there is no canonical definition to state claims against.
-/

/-! ## A259970.P3337452450063353573

`filter[A240449(n), A176723(#)]`
-/

namespace A259970.P3337452450063353573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A176723 (f1 j).toNat = 1) n)

end

end A259970.P3337452450063353573

/-! ## A259970.P10541423736734263947

`A003984(A013985(n)+A007025(n+4))`
-/

namespace A259970.P10541423736734263947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A013985 n + A007025 (n + 4)).toNat

end

end A259970.P10541423736734263947

/-!
# A259973: Numbers n such that sigma(n) + product of divisors of n is prime.

The programs for A259973, there is no canonical definition to state claims against.
-/

/-! ## A259973.P12796175033120074131

`eq[A049710(n+1), A102443(A327641(n))]`
-/

namespace A259973.P12796175033120074131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A327641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259973.P12796175033120074131

/-! ## A259973.P17485328905462837102

`eq[A088569(n+1), A305433(A284463(n))]`
-/

namespace A259973.P17485328905462837102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305433 (A284463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259973.P17485328905462837102

/-! ## A259973.P9743891929621897855

`lt[∏{e}[A076720(n+1), #+1], 3]+1`
-/

namespace A259973.P9743891929621897855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A259973.P9743891929621897855

/-! ## A259973.P10297316097782066059

`eq[A214455(n+1), A317840(n+1)]`
-/

namespace A259973.P10297316097782066059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259973.P10297316097782066059

/-!
# A259976: Irregular triangle T(n, k) read by rows (n >= 0, 0 <= k <= A011848(n)): T(n, k) is the number of occurrences of the principal character in the restriction of xi_k to S_(n)^(2).

The programs for A259976, there is no canonical definition to state claims against.
-/

/-! ## A259976.P3228390255521347218

`A097100(A335024(n+1))%4`
-/

namespace A259976.P3228390255521347218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097100 (A335024 (n + 1)).toNat) 4

end

end A259976.P3228390255521347218

/-! ## A259976.P12833825337268673326

`A075223(A347129(n+2))%4`
-/

namespace A259976.P12833825337268673326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075223 (A347129 (n + 2)).toNat) 4

end

end A259976.P12833825337268673326

/-! ## A259976.P15699169696518442670

`A045872(A167325(n+1)%(n+1))`
-/

namespace A259976.P15699169696518442670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045872 ((Int.tmod (A167325 (n + 1)) (n + 1 : ℤ)).toNat + 10)

end

end A259976.P15699169696518442670

/-! ## A259976.P4520842417127000716

`and(A016026(2*(n+1)), A374629(5*n))`
-/

namespace A259976.P4520842417127000716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016026 (2 * (n + 1))) (A374629 (5 * n))

end

end A259976.P4520842417127000716

/-! ## A259976.P17438540560114437335

`A113129(A345958(3*(n+1))%((n+1)/2^val(n+1, 2)))`
-/

namespace A259976.P17438540560114437335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113129 (Int.tmod (A345958 (3 * (n + 1))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A259976.P17438540560114437335

/-!
# A259977: Number of proper divisors of A005381(n).

The programs for A259977, the canonical program `A259977.P15727269731360921676` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259977 has offset 1).

The definition of A259977 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005381, A070824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259977.P15727269731360921676

`A070824(A005381(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A259977

/-- `A070824(A005381(n+1))` -/
def P15727269731360921676.Spec : Prop :=
  ∀ n, P15727269731360921676.a n = A259977 (n + 1)

theorem P15727269731360921676.correct : P15727269731360921676.Spec := by
  intro n
  simp only [A259977, Nat.add_sub_cancel]

end A259977

/-! ## A259977.P861750547520591368

`∏{e}[lt[A006530(or(1, n)), n]+1, #+1]-2`
-/

namespace A259977.P861750547520591368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 2

end

end A259977.P861750547520591368

namespace A259977

/-- `∏{e}[lt[A006530(or(1, n)), n]+1, #+1]-2` -/
def P861750547520591368.Spec : Prop :=
  ∀ n, P861750547520591368.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P15190465142478589732

`A144925(record[A205793(n+3)])`
-/

namespace A259977.P15190465142478589732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144925 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259977.P15190465142478589732

namespace A259977

/-- `A144925(record[A205793(n+3)])` -/
def P15190465142478589732.Spec : Prop :=
  ∀ n, P15190465142478589732.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P8125459525137098602

`A070824(A068780(n+1)+1)`
-/

namespace A259977.P8125459525137098602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A068780 (n + 1) + 1).toNat

end

end A259977.P8125459525137098602

namespace A259977

/-- `A070824(A068780(n+1)+1)` -/
def P8125459525137098602.Spec : Prop :=
  ∀ n, P8125459525137098602.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P17582309402430561078

`A032741(A068780(n+1)+1)-1`
-/

namespace A259977.P17582309402430561078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A068780 (n + 1) + 1).toNat - 1

end

end A259977.P17582309402430561078

namespace A259977

/-- `A032741(A068780(n+1)+1)-1` -/
def P17582309402430561078.Spec : Prop :=
  ∀ n, P17582309402430561078.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P13949717348769326618

`A000005(A068780(n+1)+1)-2`
-/

namespace A259977.P13949717348769326618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068780 (n + 1) + 1).toNat - 2

end

end A259977.P13949717348769326618

namespace A259977

/-- `A000005(A068780(n+1)+1)-2` -/
def P13949717348769326618.Spec : Prop :=
  ∀ n, P13949717348769326618.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P14660801261237415330

`A000005(A308833(n+2)+2)-2`
-/

namespace A259977.P14660801261237415330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A308833 (n + 2) + 2).toNat - 2

end

end A259977.P14660801261237415330

namespace A259977

/-- `A000005(A308833(n+2)+2)-2` -/
def P14660801261237415330.Spec : Prop :=
  ∀ n, P14660801261237415330.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P5458762412196786240

`A000005(lt[1, A175078(n+1)])-2`
-/

namespace A259977.P5458762412196786240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 2

end

end A259977.P5458762412196786240

namespace A259977

/-- `A000005(lt[1, A175078(n+1)])-2` -/
def P5458762412196786240.Spec : Prop :=
  ∀ n, P5458762412196786240.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P4676913709621374770

`A070824(lt[1, A342001(or(1, n))]+1)`
-/

namespace A259977.P4676913709621374770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A259977.P4676913709621374770

namespace A259977

/-- `A070824(lt[1, A342001(or(1, n))]+1)` -/
def P4676913709621374770.Spec : Prop :=
  ∀ n, P4676913709621374770.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P3413359800962156626

`A000005(eq[1, A323162(n+1)]+1)-2`
-/

namespace A259977.P3413359800962156626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 2

end

end A259977.P3413359800962156626

namespace A259977

/-- `A000005(eq[1, A323162(n+1)]+1)-2` -/
def P3413359800962156626.Spec : Prop :=
  ∀ n, P3413359800962156626.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P4969001466859745359

`A000005(lt[1, A064722(n+1)]+1)-2`
-/

namespace A259977.P4969001466859745359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 2

end

end A259977.P4969001466859745359

namespace A259977

/-- `A000005(lt[1, A064722(n+1)]+1)-2` -/
def P4969001466859745359.Spec : Prop :=
  ∀ n, P4969001466859745359.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P16732109837735998033

`A000005(lt[1, A103509(n+1)-2])-2`
-/

namespace A259977.P16732109837735998033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 2

end

end A259977.P16732109837735998033

namespace A259977

/-- `A000005(lt[1, A103509(n+1)-2])-2` -/
def P16732109837735998033.Spec : Prop :=
  ∀ n, P16732109837735998033.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P3117029666524779700

`A000005(lt[2, A000005(or(1, n))]+1)-2`
-/

namespace A259977.P3117029666524779700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 2

end

end A259977.P3117029666524779700

namespace A259977

/-- `A000005(lt[2, A000005(or(1, n))]+1)-2` -/
def P3117029666524779700.Spec : Prop :=
  ∀ n, P3117029666524779700.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P16521171090040743046

`A000005(lt[A006530((n+1)*(n+2)), n]+2)-2`
-/

namespace A259977.P16521171090040743046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) - 2

end

end A259977.P16521171090040743046

namespace A259977

/-- `A000005(lt[A006530((n+1)*(n+2)), n]+2)-2` -/
def P16521171090040743046.Spec : Prop :=
  ∀ n, P16521171090040743046.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P9423819728674920020

`A088226(A032741(A005381(n+1))²)`
-/

namespace A259977.P9423819728674920020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A032741 (A005381 (n + 1)).toNat ^ 2).toNat

end

end A259977.P9423819728674920020

namespace A259977

/-- `A088226(A032741(A005381(n+1))²)` -/
def P9423819728674920020.Spec : Prop :=
  ∀ n, P9423819728674920020.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P17341346995213610732

`A144925(A000720(A005381(n+1))+n)`
-/

namespace A259977.P17341346995213610732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144925 (A000720 (A005381 (n + 1)).toNat + (n : ℤ)).toNat

end

end A259977.P17341346995213610732

namespace A259977

/-- `A144925(A000720(A005381(n+1))+n)` -/
def P17341346995213610732.Spec : Prop :=
  ∀ n, P17341346995213610732.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P1356924711782810599

`∑{d}[A005381(n+1), A309873(A000040(#))]`
-/

namespace A259977.P1356924711782810599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A309873 (A000040 d).toNat

end

end A259977.P1356924711782810599

namespace A259977

/-- `∑{d}[A005381(n+1), A309873(A000040(#))]` -/
def P1356924711782810599.Spec : Prop :=
  ∀ n, P1356924711782810599.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P1045718634416504262

`A032741(A005381(n+1))-A007318(val(n²+2, 2))`
-/

namespace A259977.P1045718634416504262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A005381 (n + 1)).toNat - A007318 (SequenceMachineLib.valuation (n ^ 2 + 2) 2)

end

end A259977.P1045718634416504262

namespace A259977

/-- `A032741(A005381(n+1))-A007318(val(n²+2, 2))` -/
def P1045718634416504262.Spec : Prop :=
  ∀ n, P1045718634416504262.a n = A259977 (n + 1)

end A259977

/-! ## A259977.P11214952416000442013

`A000005(∩[A018252(n+1)+1, A018252(n+1)])-2`
-/

namespace A259977.P11214952416000442013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 2

end

end A259977.P11214952416000442013

namespace A259977

/-- `A000005(∩[A018252(n+1)+1, A018252(n+1)])-2` -/
def P11214952416000442013.Spec : Prop :=
  ∀ n, P11214952416000442013.a n = A259977 (n + 1)

end A259977

/-!
# A259978: Terms in A053177 that are relatively prime to 3.

The programs for A259978, the canonical program `A259978.P11955456678990968788` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259978 has offset 1).

The definition of A259978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275770, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259978.P11955456678990968788

`2*A275770(n+1)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259978

/-- `2*A275770(n+1)+1` -/
def P11955456678990968788.Spec : Prop :=
  ∀ n, P11955456678990968788.a n = A259978 (n + 1)

theorem P11955456678990968788.correct : P11955456678990968788.Spec := by
  intro n
  simp only [A259978, Nat.add_sub_cancel]

end A259978

/-! ## A259978.P4601526932613772202

`∩[A053177(n+1), A017653(n)]`
-/

namespace A259978.P4601526932613772202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P4601526932613772202

namespace A259978

/-- `∩[A053177(n+1), A017653(n)]` -/
def P4601526932613772202.Spec : Prop :=
  ∀ n, (P4601526932613772202.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P8117142249972652698

`filter[A053177(n+1), A187074(#)]`
-/

namespace A259978.P8117142249972652698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A259978.P8117142249972652698

namespace A259978

/-- `filter[A053177(n+1), A187074(#)]` -/
def P8117142249972652698.Spec : Prop :=
  ∀ n, P8117142249972652698.a n = A259978 (n + 1)

end A259978

/-! ## A259978.P8483620078303222933

`filter[A053177(n+1), A359374(#)]`
-/

namespace A259978.P8483620078303222933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A259978.P8483620078303222933

namespace A259978

/-- `filter[A053177(n+1), A359374(#)]` -/
def P8483620078303222933.Spec : Prop :=
  ∀ n, P8483620078303222933.a n = A259978 (n + 1)

end A259978

/-! ## A259978.P14497570770855238108

`filter[A053177(n+1), A373155(#)]`
-/

namespace A259978.P14497570770855238108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A259978.P14497570770855238108

namespace A259978

/-- `filter[A053177(n+1), A373155(#)]` -/
def P14497570770855238108.Spec : Prop :=
  ∀ n, P14497570770855238108.a n = A259978 (n + 1)

end A259978

/-! ## A259978.P16925201462353352138

`filter[A053177(n+1), A373156(#)]`
-/

namespace A259978.P16925201462353352138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A259978.P16925201462353352138

namespace A259978

/-- `filter[A053177(n+1), A373156(#)]` -/
def P16925201462353352138.Spec : Prop :=
  ∀ n, P16925201462353352138.a n = A259978 (n + 1)

end A259978

/-! ## A259978.P7884891199439940914

`filter[A053177(n+1), A374043(#)]`
-/

namespace A259978.P7884891199439940914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A259978.P7884891199439940914

namespace A259978

/-- `filter[A053177(n+1), A374043(#)]` -/
def P7884891199439940914.Spec : Prop :=
  ∀ n, P7884891199439940914.a n = A259978 (n + 1)

end A259978

/-! ## A259978.P566678868852660622

`∩[A053177(n+1), A092256(n+1)]`
-/

namespace A259978.P566678868852660622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P566678868852660622

namespace A259978

/-- `∩[A053177(n+1), A092256(n+1)]` -/
def P566678868852660622.Spec : Prop :=
  ∀ n, (P566678868852660622.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P17260066631010405348

`∩[A072055(n+1), A092256(n+1)]`
-/

namespace A259978.P17260066631010405348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P17260066631010405348

namespace A259978

/-- `∩[A072055(n+1), A092256(n+1)]` -/
def P17260066631010405348.Spec : Prop :=
  ∀ n, (P17260066631010405348.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P8637623195286750560

`∩[A092256(n+1), A166496(n+1)]`
-/

namespace A259978.P8637623195286750560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P8637623195286750560

namespace A259978

/-- `∩[A092256(n+1), A166496(n+1)]` -/
def P8637623195286750560.Spec : Prop :=
  ∀ n, (P8637623195286750560.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P14426576827248819293

`filter[A053177(n+1), A320106(#)]`
-/

namespace A259978.P14426576827248819293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A259978.P14426576827248819293

namespace A259978

/-- `filter[A053177(n+1), A320106(#)]` -/
def P14426576827248819293.Spec : Prop :=
  ∀ n, P14426576827248819293.a n = A259978 (n + 1)

end A259978

/-! ## A259978.P11535381784764946797

`filter[A053177(n+1), A354354(#)]`
-/

namespace A259978.P11535381784764946797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A259978.P11535381784764946797

namespace A259978

/-- `filter[A053177(n+1), A354354(#)]` -/
def P11535381784764946797.Spec : Prop :=
  ∀ n, P11535381784764946797.a n = A259978 (n + 1)

end A259978

/-! ## A259978.P10829540132678806624

`filter[A053177(n+1), A369653(#)]`
-/

namespace A259978.P10829540132678806624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369653 (f1 j).toNat = 1) n)

end

end A259978.P10829540132678806624

namespace A259978

/-- `filter[A053177(n+1), A369653(#)]` -/
def P10829540132678806624.Spec : Prop :=
  ∀ n, P10829540132678806624.a n = A259978 (n + 1)

end A259978

/-! ## A259978.P11790388666533558469

`∩[A053177(n+1), A267999(n+1)]`
-/

namespace A259978.P11790388666533558469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P11790388666533558469

namespace A259978

/-- `∩[A053177(n+1), A267999(n+1)]` -/
def P11790388666533558469.Spec : Prop :=
  ∀ n, (P11790388666533558469.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P16324649904417322676

`∩[A072055(n+1), A267999(n+1)]`
-/

namespace A259978.P16324649904417322676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P16324649904417322676

namespace A259978

/-- `∩[A072055(n+1), A267999(n+1)]` -/
def P16324649904417322676.Spec : Prop :=
  ∀ n, (P16324649904417322676.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P374505871264931024

`∩[A166496(n+1), A267999(n+1)]`
-/

namespace A259978.P374505871264931024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P374505871264931024

namespace A259978

/-- `∩[A166496(n+1), A267999(n+1)]` -/
def P374505871264931024.Spec : Prop :=
  ∀ n, (P374505871264931024.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P15249452425489040434

`∩[A053177(n+1), A121707(n+1)]`
-/

namespace A259978.P15249452425489040434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P15249452425489040434

namespace A259978

/-- `∩[A053177(n+1), A121707(n+1)]` -/
def P15249452425489040434.Spec : Prop :=
  ∀ n, (P15249452425489040434.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P4418712189476316724

`∩[A072055(n+1), A121707(n+1)]`
-/

namespace A259978.P4418712189476316724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P4418712189476316724

namespace A259978

/-- `∩[A072055(n+1), A121707(n+1)]` -/
def P4418712189476316724.Spec : Prop :=
  ∀ n, (P4418712189476316724.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P11174729554014216768

`∩[A121707(n+1), A166496(n+1)]`
-/

namespace A259978.P11174729554014216768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P11174729554014216768

namespace A259978

/-- `∩[A121707(n+1), A166496(n+1)]` -/
def P11174729554014216768.Spec : Prop :=
  ∀ n, (P11174729554014216768.a n : ℤ) = A259978 (n + 1)

end A259978

/-! ## A259978.P17069780176199284538

`∩[A053177(n+1), A016969(n)]`
-/

namespace A259978.P17069780176199284538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259978.P17069780176199284538

namespace A259978

/-- `∩[A053177(n+1), A016969(n)]` -/
def P17069780176199284538.Spec : Prop :=
  ∀ n, (P17069780176199284538.a n : ℤ) = A259978 (n + 1)

end A259978

/-!
# A259979: Numbers that are both 1 + square of a prime and twice a prime.

The programs for A259979, there is no canonical definition to state claims against.
-/

/-! ## A259979.P9288236798838642752

`A263951(n+1)+1`
-/

namespace A259979.P9288236798838642752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263951 (n + 1) + 1

end

end A259979.P9288236798838642752

/-! ## A259979.P18309861691528544304

`2*A067756(n+1)`
-/

namespace A259979.P18309861691528544304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067756 (n + 1)

end

end A259979.P18309861691528544304

/-! ## A259979.P14842713941872025843

`A048161(n+1)²+1`
-/

namespace A259979.P14842713941872025843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1) ^ 2 + 1

end

end A259979.P14842713941872025843

/-! ## A259979.P13356526847806548714

`2*(A067755(n+1)+1)`
-/

namespace A259979.P13356526847806548714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A067755 (n + 1) + 1)

end

end A259979.P13356526847806548714

/-! ## A259979.P9945434159542311631

`A067755(n+1)+A067756(n+1)+1`
-/

namespace A259979.P9945434159542311631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067755 (n + 1) + (A067756 (n + 1) + 1)

end

end A259979.P9945434159542311631

/-! ## A259979.P3444935065866961061

`2/A048161(n+1)*A334802(n+1)`
-/

namespace A259979.P3444935065866961061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A048161 (n + 1) : ℚ) * (A334802 (n + 1) : ℚ)

end

end A259979.P3444935065866961061

/-! ## A259979.P3869576775020082702

`(A178659(n+1)+A068501(n+1))²+1`
-/

namespace A259979.P3869576775020082702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178659 (n + 1) + A068501 (n + 1)) ^ 2 + 1

end

end A259979.P3869576775020082702

/-! ## A259979.P15918863126574216284

`(A334802(n+1)/A067756(n+1))²+1`
-/

namespace A259979.P15918863126574216284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A334802 (n + 1) : ℚ) / (A067756 (n + 1) : ℚ)) ^ 2 + 1

end

end A259979.P15918863126574216284

/-! ## A259979.P10456349883383679618

`A067756(n+1)+A334802(n+1)/A048161(n+1)`
-/

namespace A259979.P10456349883383679618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067756 (n + 1) : ℚ) + (A334802 (n + 1) : ℚ) / (A048161 (n + 1) : ℚ)

end

end A259979.P10456349883383679618

/-! ## A259979.P14894217208811866893

`(A334802(n+1)-A067756(n+1))/A068501(n+1)`
-/

namespace A259979.P14894217208811866893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334802 (n + 1) - A067756 (n + 1) : ℚ) / (A068501 (n + 1) : ℚ)

end

end A259979.P14894217208811866893

/-! ## A259979.P16391233370042616582

`2*∩[A230444(n+1), A308442(n+1)]`
-/

namespace A259979.P16391233370042616582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259979.P16391233370042616582

/-! ## A259979.P7936023459925254483

`p?[A281575(n+1)]²+1`
-/

namespace A259979.P7936023459925254483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1

end

end A259979.P7936023459925254483

/-! ## A259979.P15332575411397838569

`p?[A172438(n+1)]²+1`
-/

namespace A259979.P15332575411397838569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1

end

end A259979.P15332575411397838569

/-! ## A259979.P13566512592702327737

`∩[A172438(n+1), A281575(n+1)]²+1`
-/

namespace A259979.P13566512592702327737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A259979.P13566512592702327737

/-! ## A259979.P3156193846412905330

`p?[A002731(n+1)]²+1`
-/

namespace A259979.P3156193846412905330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1

end

end A259979.P3156193846412905330

/-! ## A259979.P6503147438677068684

`p?[2*A027861(n+1)+1]²+1`
-/

namespace A259979.P6503147438677068684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027861 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1

end

end A259979.P6503147438677068684

/-! ## A259979.P8576568212217236673

`2*∩[A027862(n+1), A230444(n+1)]`
-/

namespace A259979.P8576568212217236673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259979.P8576568212217236673

/-! ## A259979.P24965737030365101

`p?[A002731(n+1)]*A048161(n+1)+1`
-/

namespace A259979.P24965737030365101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A048161 (n + 1) + 1

end

end A259979.P24965737030365101

/-! ## A259979.P9259806131913583560

`∩[A002731(n+1), A045405(n+1)]²+1`
-/

namespace A259979.P9259806131913583560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A259979.P9259806131913583560

/-! ## A259979.P10057499976026982168

`∩[A045405(n+1), A281575(n+1)]²+1`
-/

namespace A259979.P10057499976026982168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A259979.P10057499976026982168

/-!
# A259980: Numbers that are 1+prime and have 4 proper divisors.

The programs for A259980, the canonical program `A259980.P4270422269286264128` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259980 has offset 1).

The definition of A259980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259980.P4270422269286264128

`p?[A030515(n+1)-1]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A259980

/-- `p?[A030515(n+1)-1]+1` -/
def P4270422269286264128.Spec : Prop :=
  ∀ n, P4270422269286264128.a n = A259980 (n + 1)

theorem P4270422269286264128.correct : P4270422269286264128.Spec := by
  intro n
  simp only [A259980, Nat.add_sub_cancel]

end A259980

/-! ## A259980.P17942385740014273075

`∩[A030515(n+1), A028815(n)]`
-/

namespace A259980.P17942385740014273075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259980.P17942385740014273075

namespace A259980

/-- `∩[A030515(n+1), A028815(n)]` -/
def P17942385740014273075.Spec : Prop :=
  ∀ n, (P17942385740014273075.a n : ℤ) = A259980 (n + 1)

end A259980

/-! ## A259980.P1873552881290103251

`∩[A008864(n+1), A030515(n+1)]`
-/

namespace A259980.P1873552881290103251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259980.P1873552881290103251

namespace A259980

/-- `∩[A008864(n+1), A030515(n+1)]` -/
def P1873552881290103251.Spec : Prop :=
  ∀ n, (P1873552881290103251.a n : ℤ) = A259980 (n + 1)

end A259980

/-! ## A259980.P7990862649126894488

`∩[A030515(n+1), A055670(n+1)]`
-/

namespace A259980.P7990862649126894488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259980.P7990862649126894488

namespace A259980

/-- `∩[A030515(n+1), A055670(n+1)]` -/
def P7990862649126894488.Spec : Prop :=
  ∀ n, (P7990862649126894488.a n : ℤ) = A259980 (n + 1)

end A259980

/-! ## A259980.P3721602728582269346

`∩[A030515(n+1), A135731(n+1)]`
-/

namespace A259980.P3721602728582269346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259980.P3721602728582269346

namespace A259980

/-- `∩[A030515(n+1), A135731(n+1)]` -/
def P3721602728582269346.Spec : Prop :=
  ∀ n, (P3721602728582269346.a n : ℤ) = A259980 (n + 1)

end A259980

/-! ## A259980.P12917682776832714526

`∩[A030515(n+1), A299763(n+1)]`
-/

namespace A259980.P12917682776832714526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259980.P12917682776832714526

namespace A259980

/-- `∩[A030515(n+1), A299763(n+1)]` -/
def P12917682776832714526.Spec : Prop :=
  ∀ n, (P12917682776832714526.a n : ℤ) = A259980 (n + 1)

end A259980

/-! ## A259980.P15101070182692829762

`∩[A030515(n+1), A351863(n+1)]`
-/

namespace A259980.P15101070182692829762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259980.P15101070182692829762

namespace A259980

/-- `∩[A030515(n+1), A351863(n+1)]` -/
def P15101070182692829762.Spec : Prop :=
  ∀ n, (P15101070182692829762.a n : ℤ) = A259980 (n + 1)

end A259980

/-! ## A259980.P3384834960716890489

`∩[A030515(n+1), A093515(n+1)]`
-/

namespace A259980.P3384834960716890489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259980.P3384834960716890489

namespace A259980

/-- `∩[A030515(n+1), A093515(n+1)]` -/
def P3384834960716890489.Spec : Prop :=
  ∀ n, (P3384834960716890489.a n : ℤ) = A259980 (n + 1)

end A259980

/-! ## A259980.P13030852001357686353

`∩[A030515(n+1), A111688(n+1)]`
-/

namespace A259980.P13030852001357686353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259980.P13030852001357686353

namespace A259980

/-- `∩[A030515(n+1), A111688(n+1)]` -/
def P13030852001357686353.Spec : Prop :=
  ∀ n, (P13030852001357686353.a n : ℤ) = A259980 (n + 1)

end A259980

/-! ## A259980.P11875758551663757006

`1+p?[A230654(n+1)]`
-/

namespace A259980.P11875758551663757006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259980.P11875758551663757006

namespace A259980

/-- `1+p?[A230654(n+1)]` -/
def P11875758551663757006.Spec : Prop :=
  ∀ n, P11875758551663757006.a n = A259980 (n + 1)

end A259980

/-! ## A259980.P7542653224098140643

`A003959(p?[A230654(n+1)])`
-/

namespace A259980.P7542653224098140643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259980.P7542653224098140643

namespace A259980

/-- `A003959(p?[A230654(n+1)])` -/
def P7542653224098140643.Spec : Prop :=
  ∀ n, P7542653224098140643.a n = A259980 (n + 1)

end A259980

/-! ## A259980.P6231592487513847768

`A003959(record[A020639(A230654(n+1))])`
-/

namespace A259980.P6231592487513847768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A230654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259980.P6231592487513847768

namespace A259980

/-- `A003959(record[A020639(A230654(n+1))])` -/
def P6231592487513847768.Spec : Prop :=
  ∀ n, P6231592487513847768.a n = A259980 (n + 1)

end A259980

/-! ## A259980.P16361795484588061097

`A057427(n+1)+record[A020639(A230654(n+1))]`
-/

namespace A259980.P16361795484588061097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A230654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259980.P16361795484588061097

namespace A259980

/-- `A057427(n+1)+record[A020639(A230654(n+1))]` -/
def P16361795484588061097.Spec : Prop :=
  ∀ n, P16361795484588061097.a n = A259980 (n + 1)

end A259980

/-! ## A259980.P14873229421452900731

`∩[A030515(n+1), A203444(n+1)]`
-/

namespace A259980.P14873229421452900731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259980.P14873229421452900731

namespace A259980

/-- `∩[A030515(n+1), A203444(n+1)]` -/
def P14873229421452900731.Spec : Prop :=
  ∀ n, (P14873229421452900731.a n : ℤ) = A259980 (n + 1)

end A259980

/-! ## A259980.P10079078543600763420

`A053158(p?[A230654(n+1)])`
-/

namespace A259980.P10079078543600763420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259980.P10079078543600763420

namespace A259980

/-- `A053158(p?[A230654(n+1)])` -/
def P10079078543600763420.Spec : Prop :=
  ∀ n, P10079078543600763420.a n = A259980 (n + 1)

end A259980

/-! ## A259980.P8299462925152279298

`A092486(p?[A230654(n+1)])`
-/

namespace A259980.P8299462925152279298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259980.P8299462925152279298

namespace A259980

/-- `A092486(p?[A230654(n+1)])` -/
def P8299462925152279298.Spec : Prop :=
  ∀ n, P8299462925152279298.a n = A259980 (n + 1)

end A259980

/-! ## A259980.P41061826906988424

`A343226(p?[A230654(n+1)])`
-/

namespace A259980.P41061826906988424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343226 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259980.P41061826906988424

namespace A259980

/-- `A343226(p?[A230654(n+1)])` -/
def P41061826906988424.Spec : Prop :=
  ∀ n, P41061826906988424.a n = A259980 (n + 1)

end A259980

/-! ## A259980.P6624596448113289192

`A092486(record[A008472(A230654(n+1))])`
-/

namespace A259980.P6624596448113289192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A230654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259980.P6624596448113289192

namespace A259980

/-- `A092486(record[A008472(A230654(n+1))])` -/
def P6624596448113289192.Spec : Prop :=
  ∀ n, P6624596448113289192.a n = A259980 (n + 1)

end A259980

/-! ## A259980.P5077908544913966953

`A343226(record[A006530(A230654(n+1))])`
-/

namespace A259980.P5077908544913966953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A230654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343226 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259980.P5077908544913966953

namespace A259980

/-- `A343226(record[A006530(A230654(n+1))])` -/
def P5077908544913966953.Spec : Prop :=
  ∀ n, P5077908544913966953.a n = A259980 (n + 1)

end A259980

/-! ## A259980.P2847010931852338352

`A332993(p?[A230654(n+1)])`
-/

namespace A259980.P2847010931852338352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259980.P2847010931852338352

namespace A259980

/-- `A332993(p?[A230654(n+1)])` -/
def P2847010931852338352.Spec : Prop :=
  ∀ n, P2847010931852338352.a n = A259980 (n + 1)

end A259980

/-!
# A259981: Let b be the n-th composite number, A002808(n); a(n) is number of base-b digits x,y,z such that (xb+y)/(zb+x)=y/z.

The programs for A259981, there is no canonical definition to state claims against.
-/

/-! ## A259981.P2464835784648678665

`A094907(A002808(n+1))`
-/

namespace A259981.P2464835784648678665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (A002808 (n + 1)).toNat

end

end A259981.P2464835784648678665

/-! ## A259981.P14070661672841631220

`A094907(A018252(n+2))`
-/

namespace A259981.P14070661672841631220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (A018252 (n + 2)).toNat

end

end A259981.P14070661672841631220

/-! ## A259981.P16875153339677325099

`A094907(A164028(n+1)+3)`
-/

namespace A259981.P16875153339677325099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (A164028 (n + 1) + 3).toNat

end

end A259981.P16875153339677325099

/-! ## A259981.P3023997239515241674

`A094907(eq[0, A339579(n+1)])`
-/

namespace A259981.P3023997239515241674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259981.P3023997239515241674

/-! ## A259981.P6105916406054324836

`A094907(lt[A020639(n+1), n]+1)`
-/

namespace A259981.P6105916406054324836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A259981.P6105916406054324836

/-! ## A259981.P4897848918086540057

`A094907(A026239(p?[A014681(n)]))`
-/

namespace A259981.P4897848918086540057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A259981.P4897848918086540057

/-! ## A259981.P13968818284422152607

`A094907(A026239(p?[A000961(n+1)]))`
-/

namespace A259981.P13968818284422152607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A259981.P13968818284422152607

/-!
# A259983: Subsequence of A259981 for bases b in A005381.

The programs for A259983, there is no canonical definition to state claims against.
-/

/-! ## A259983.P12938882527456655061

`A259981(A000720(A005381(n+1))+n)`
-/

namespace A259983.P12938882527456655061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259981 (A000720 (A005381 (n + 1)).toNat + (n : ℤ)).toNat

end

end A259983.P12938882527456655061

/-! ## A259983.P16669204613464488468

`A094907(A005381(n+1))`
-/

namespace A259983.P16669204613464488468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (A005381 (n + 1)).toNat

end

end A259983.P16669204613464488468

/-! ## A259983.P5399641659178646934

`A094907(A308833(n+2)+2)`
-/

namespace A259983.P5399641659178646934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (A308833 (n + 2) + 2).toNat

end

end A259983.P5399641659178646934

/-! ## A259983.P13357422906133414180

`A094907(lt[A020639(or(1, n)), n]+1)`
-/

namespace A259983.P13357422906133414180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A259983.P13357422906133414180

/-! ## A259983.P5706077558839440922

`A094907(eq[A110560(n)², A261143(n)]+2)`
-/

namespace A259983.P5706077558839440922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A259983.P5706077558839440922

/-! ## A259983.P15036716924983235000

`A094907(eq[A061397(n+1)², A109578(n+1)]+2)`
-/

namespace A259983.P15036716924983235000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094907 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A259983.P15036716924983235000

/-! ## A259983.P9013655306968059218

`A259981(A375926(n+1))`
-/

namespace A259983.P9013655306968059218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259981 (A375926 (n + 1)).toNat

end

end A259983.P9013655306968059218

/-!
# A259984: a(n) = A000787(n) + 1.

The programs for A259984, there is no canonical definition to state claims against.
-/

/-! ## A259984.P8994843222950467543

`A000787(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259984.P8994843222950467543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (n + 1) + 1

end

end A259984.P8994843222950467543

/-! ## A259984.P11408371365449366497

`Δ[A230833(A028310(n))]+1`
-/

namespace A259984.P11408371365449366497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230833 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A259984.P11408371365449366497

/-! ## A259984.P4915758825859264541

`record[Δ[A230833(A008619(n))]+1]`
-/

namespace A259984.P4915758825859264541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230833 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259984.P4915758825859264541

/-! ## A259984.P13862652447324905831

`-xor(-1, record[A000787(A331742(n))])`
-/

namespace A259984.P13862652447324905831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000787 (A331742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A259984.P13862652447324905831

/-! ## A259984.P17209398844254876036

`abs(xor(-1, A000787(A008621(4*n))))`
-/

namespace A259984.P17209398844254876036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A000787 (A008621 (4 * n)).toNat)|

end

end A259984.P17209398844254876036

/-! ## A259984.P2047649235541827020

`record[Δ[A230833(A064542(n+1))]+1]`
-/

namespace A259984.P2047649235541827020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230833 (A064542 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259984.P2047649235541827020

/-! ## A259984.P12888994034420949990

`∩[A018846(n+1), A051791(n+1)]+1`
-/

namespace A259984.P12888994034420949990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259984.P12888994034420949990

/-! ## A259984.P6305600231806980267

`Δ[A230833(A028310(n))-A024000(n)]`
-/

namespace A259984.P6305600231806980267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230833 (A028310 n).toNat - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259984.P6305600231806980267

/-! ## A259984.P15991434786586731932

`A230833(n+1)+1-A230833(A028310(n))`
-/

namespace A259984.P15991434786586731932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230833 (n + 1) + (1 - A230833 (A028310 n).toNat)

end

end A259984.P15991434786586731932

/-! ## A259984.P15465841229000300319

`∩[A018846(n+1), A045574(n+1)]+1`
-/

namespace A259984.P15465841229000300319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259984.P15465841229000300319

/-! ## A259984.P6438371530623494806

`∩[A045574(n+1), A051791(n+1)]+1`
-/

namespace A259984.P6438371530623494806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259984.P6438371530623494806

/-! ## A259984.P14571265429248319120

`∩[A018846(n+1), A054047(n)]+1`
-/

namespace A259984.P14571265429248319120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259984.P14571265429248319120

/-! ## A259984.P14808793507959881688

`∩[A051791(n+1), A054047(n)]+1`
-/

namespace A259984.P14808793507959881688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259984.P14808793507959881688

/-! ## A259984.P12575832438232197700

`∩[A018846(n+1), A084984(n+1)]+1`
-/

namespace A259984.P12575832438232197700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259984.P12575832438232197700

/-! ## A259984.P8794652867765689568

`∩[A051791(n+1), A084984(n+1)]+1`
-/

namespace A259984.P8794652867765689568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259984.P8794652867765689568

/-!
# A259985: Triangle read by rows: coefficients of rook polynomials.

The programs for A259985, there is no canonical definition to state claims against.
-/

/-! ## A259985.P1065673148557313618

`A144084(n)-A112316(A168548(n))`
-/

namespace A259985.P1065673148557313618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144084 n - A112316 (A168548 n).toNat

end

end A259985.P1065673148557313618

/-! ## A259985.P10061206010215065791

`A144084(n)-A208736(A283666(n+1))`
-/

namespace A259985.P10061206010215065791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144084 n - A208736 (A283666 (n + 1)).toNat

end

end A259985.P10061206010215065791

/-!
# A259986: This sequence and A259987 are base-6 analogs of A007185 and A016090, written in base 10.

The programs for A259986, there is no canonical definition to state claims against.
-/

/-! ## A259986.P5916180629313286663

`∑[6^n*A054869(n)]`
-/

namespace A259986.P5916180629313286663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A054869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259986.P5916180629313286663

/-! ## A259986.P15175213658980110317

`∑[(5-(A055620(n)-A000038(n)))*A000400(n)]`
-/

namespace A259986.P15175213658980110317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (A055620 n - A000038 n)) * A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259986.P15175213658980110317

/-! ## A259986.P12380059139118574899

`∑[(2*A266220(2*n)+5-A055620(n))*A000400(n)]`
-/

namespace A259986.P12380059139118574899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A266220 (2 * n) + (5 - A055620 n)) * A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259986.P12380059139118574899

/-! ## A259986.P7684477719137213235

`a(n-1)²%(6^(n+1))` with `a(0)=3`
-/

namespace A259986.P7684477719137213235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ 2 % 6 ^ (n + 1)

end

end A259986.P7684477719137213235

/-! ## A259986.P8625282722538619789

`(a(n-1)^2)%(6^(n+1))` with `a(0)=3`
-/

namespace A259986.P8625282722538619789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ 2 % 6 ^ (n + 1)

end

end A259986.P8625282722538619789

/-!
# A259987: This sequence and A259986 are base 6 analogs of A007185 and A016090, written in base 10.

The programs for A259987, there is no canonical definition to state claims against.
-/

/-! ## A259987.P16351144955260694966

`∑[6^n*A055620(n)]`
-/

namespace A259987.P16351144955260694966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A055620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259987.P16351144955260694966

/-! ## A259987.P3220040021666601922

`2^(n+1)*A283754(n+1)`
-/

namespace A259987.P3220040021666601922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A283754 (n + 1)

end

end A259987.P3220040021666601922

/-! ## A259987.P10534800147152261293

`2*A283754(n+1)*A000079(n)`
-/

namespace A259987.P10534800147152261293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283754 (n + 1) * A000079 n

end

end A259987.P10534800147152261293

/-! ## A259987.P11454984879327681461

`2*A283754(n+1)*record[A059268(n)]`
-/

namespace A259987.P11454984879327681461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283754 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259987.P11454984879327681461

/-! ## A259987.P11526522355514306421

`(a(n-1)^3)%(6^(n+1))` with `a(0)=4`
-/

namespace A259987.P11526522355514306421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ 3 % 6 ^ (n + 1)

end

end A259987.P11526522355514306421

/-!
# A259988: This sequence and A259989 are base-6 analogs of A007185 and A016090, written in base 6.

The programs for A259988, there is no canonical definition to state claims against.
-/

/-! ## A259988.P1804463513543044973

`∑[A011557(n)*A054869(n)]`
-/

namespace A259988.P1804463513543044973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A054869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259988.P1804463513543044973

/-!
# A259989: This sequence and A259988 are base-6 analogs of A007185 and A016090, written in base 6.

The programs for A259989, there is no canonical definition to state claims against.
-/

/-! ## A259989.P13319637632989541270

`∑[10^n*A055620(n)]`
-/

namespace A259989.P13319637632989541270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A055620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259989.P13319637632989541270

/-! ## A259989.P5329508713615225669

`∑[A055620(n)*A373278(3*n)]`
-/

namespace A259989.P5329508713615225669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055620 n * A373278 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259989.P5329508713615225669

/-!
# A259990: This sequence and A259991 are base-14 analogs of A007185 and A016090, written in base 10.

The programs for A259990, there is no canonical definition to state claims against.
-/

/-! ## A259990.P12441837412922727008

`a(n-1)²%(14^(n+1))` with `a(0)=7`
-/

namespace A259990.P12441837412922727008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) ^ 2 % 14 ^ (n + 1)

end

end A259990.P12441837412922727008

/-!
# A259991: This sequence and A259990 are base-14 analogs of A007185 and A016090, written in base 10.

The programs for A259991, there is no canonical definition to state claims against.
-/

/-! ## A259991.P1071489932984018113

`A201919(lt[A214326(3*n+4), A004694(n)])`
-/

namespace A259991.P1071489932984018113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214326 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201919 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259991.P1071489932984018113

/-!
# A259993: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000101.

The programs for A259993, there is no canonical definition to state claims against.
-/

/-! ## A259993.P16318880514923920132

`A260001(∑[4*n]+1)`
-/

namespace A259993.P16318880514923920132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259993.P16318880514923920132

/-! ## A259993.P15813026996953185379

`lcm((-1)^n, A260001(A001844(n)))`
-/

namespace A259993.P15813026996953185379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A260001 (A001844 n).toNat)

end

end A259993.P15813026996953185379

/-! ## A259993.P7911512652141741351

`record[A003982(n)*A260001(n+1)]`
-/

namespace A259993.P7911512652141741351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259993.P7911512652141741351

/-! ## A259993.P5187744608396504144

`record[gcd(A003987(n), A260001(n+1))]`
-/

namespace A259993.P5187744608396504144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A260001 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259993.P5187744608396504144

/-! ## A259993.P5070246250693048592

`A260001(A000982(2*n+1))+char[17]`
-/

namespace A259993.P5070246250693048592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A000982 (2 * n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A259993.P5070246250693048592

/-!
# A259994: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000101.

The programs for A259994, there is no canonical definition to state claims against.
-/

/-! ## A259994.P16935715025159013413

`A260001(∑[n]+1)`
-/

namespace A259994.P16935715025159013413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259994.P16935715025159013413

/-! ## A259994.P11625983954301868053

`record[A260001(A114091(n+1))]`
-/

namespace A259994.P11625983954301868053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259994.P11625983954301868053

/-! ## A259994.P8547802052535642458

`record[A260001(A254052(n+1))]`
-/

namespace A259994.P8547802052535642458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259994.P8547802052535642458

/-! ## A259994.P11688905540145740145

`record[A260001(A254108(n+1))]`
-/

namespace A259994.P11688905540145740145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A254108 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259994.P11688905540145740145

/-! ## A259994.P10844469856993010279

`record[A260001(A267104(n+1))]`
-/

namespace A259994.P10844469856993010279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259994.P10844469856993010279

/-!
# A259995: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000101.

The programs for A259995, there is no canonical definition to state claims against.
-/

/-! ## A259995.P13358880072323229814

`A260001(∑[n+1]+2)`
-/

namespace A259995.P13358880072323229814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259995.P13358880072323229814

/-! ## A259995.P3385251867611614456

`record[A260001(n+3)/A039813(n+1)]`
-/

namespace A259995.P3385251867611614456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260001 (n + 3) : ℚ) / (A039813 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259995.P3385251867611614456

/-! ## A259995.P1825985302104135163

`record[A260001(abs(A201163(n)))]`
-/

namespace A259995.P1825985302104135163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259995.P1825985302104135163

/-! ## A259995.P6240495749676418912

`record[A260001(n+2)/A143565(n+3)]`
-/

namespace A259995.P6240495749676418912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260001 (n + 2) : ℚ) / (A143565 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259995.P6240495749676418912

/-! ## A259995.P5951521937892809158

`A260001(A152948(n+3))%A105979(n+1)`
-/

namespace A259995.P5951521937892809158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260001 (A152948 (n + 3)).toNat) (A105979 (n + 1))

end

end A259995.P5951521937892809158

/-!
# A259996: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000101.

The programs for A259996, there is no canonical definition to state claims against.
-/

/-! ## A259996.P10010018681847354747

`A260001(∑[n+2]+4)`
-/

namespace A259996.P10010018681847354747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259996.P10010018681847354747

/-! ## A259996.P13734693075057375632

`or(char[1], A260001(A167614(n+1)))`
-/

namespace A259996.P13734693075057375632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260001 (A167614 (n + 1)).toNat)

end

end A259996.P13734693075057375632

/-! ## A259996.P8995336453842428778

`or(char[1], A260001(A046691(n)+7))`
-/

namespace A259996.P8995336453842428778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260001 (A046691 n + 7).toNat)

end

end A259996.P8995336453842428778

/-! ## A259996.P6974124826680824001

`A260001(A167614(n+1))+A000007(n+1)`
-/

namespace A259996.P6974124826680824001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A259996.P6974124826680824001

/-! ## A259996.P5810499606419690293

`A260001(A167614(n+1))%A259998(n+1)`
-/

namespace A259996.P5810499606419690293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260001 (A167614 (n + 1)).toNat) (A259998 (n + 1))

end

end A259996.P5810499606419690293

/-!
# A259997: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000101.

The programs for A259997, there is no canonical definition to state claims against.
-/

/-! ## A259997.P5343516388224727249

`A260001(A374004(n+1))`
-/

namespace A259997.P5343516388224727249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A374004 (n + 1)).toNat

end

end A259997.P5343516388224727249

/-! ## A259997.P15149855892636768066

`A260001(A141214(n)+7)`
-/

namespace A259997.P15149855892636768066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A141214 n + 7).toNat

end

end A259997.P15149855892636768066

/-! ## A259997.P7851978813625801026

`A260001(A052905(n)+9)`
-/

namespace A259997.P7851978813625801026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A052905 n + 9).toNat

end

end A259997.P7851978813625801026

/-! ## A259997.P8397569932702718616

`A260001(A055999(n)+10)`
-/

namespace A259997.P8397569932702718616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A055999 n + 10).toNat

end

end A259997.P8397569932702718616

/-! ## A259997.P4868411392473680554

`A260001(Δ[A008778(n)]+6)`
-/

namespace A259997.P4868411392473680554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (f1 (n + 1) - f1 n + 6).toNat

end

end A259997.P4868411392473680554

/-!
# A259998: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000101.

The programs for A259998, there is no canonical definition to state claims against.
-/

/-! ## A259998.P4618904963485526128

`A260001(A374005(n+1))`
-/

namespace A259998.P4618904963485526128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A374005 (n + 1)).toNat

end

end A259998.P4618904963485526128

/-! ## A259998.P10565137876001623491

`A260001(A167499(n+3))`
-/

namespace A259998.P10565137876001623491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A167499 (n + 3)).toNat

end

end A259998.P10565137876001623491

/-! ## A259998.P2693949003885287736

`A260001(A155212(n)+13)`
-/

namespace A259998.P2693949003885287736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A155212 n + 13).toNat

end

end A259998.P2693949003885287736

/-! ## A259998.P4529249255256140035

`A260001(A056000(n)+15)`
-/

namespace A259998.P4529249255256140035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A056000 n + 15).toNat

end

end A259998.P4529249255256140035

/-! ## A259998.P7584112873036249465

`A260001(A167614(n+3)+2)`
-/

namespace A259998.P7584112873036249465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A167614 (n + 3) + 2).toNat

end

end A259998.P7584112873036249465

/-!
# A259999: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00000101.

The programs for A259999, there is no canonical definition to state claims against.
-/

/-! ## A259999.P9443627396327234074

`A260001(A374007(n+1))`
-/

namespace A259999.P9443627396327234074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A374007 (n + 1)).toNat

end

end A259999.P9443627396327234074

/-! ## A259999.P17624054525199147843

`A260001(A167499(n+4)+1)`
-/

namespace A259999.P17624054525199147843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A167499 (n + 4) + 1).toNat

end

end A259999.P17624054525199147843

/-! ## A259999.P9265163702183524850

`A260001(A167614(n+4)+3)`
-/

namespace A259999.P9265163702183524850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A167614 (n + 4) + 3).toNat

end

end A259999.P9265163702183524850

/-! ## A259999.P3164061916483184610

`A260001(A000124(n+5)+5)`
-/

namespace A259999.P3164061916483184610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A000124 (n + 5) + 5).toNat

end

end A259999.P3164061916483184610

/-! ## A259999.P14211339411587849161

`A260001(A000096(n+4)+7)`
-/

namespace A259999.P14211339411587849161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260001 (A000096 (n + 4) + 7).toNat

end

end A259999.P14211339411587849161

