import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

/-!
# A395700: k is term if and only if k = gcd(k^2, k!) / gcd(k^2, k!/floor(k/2)!^2).

The programs for A395700, the canonical program `A395700.P10863328374740441814` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395700 has offset 1).

The definition of A395700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395700.P10863328374740441814

`eq[n, A181859(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395700

/-- `eq[n, A181859(n)]` -/
def P10863328374740441814.Spec : Prop :=
  ∀ n, (P10863328374740441814.a n : ℤ) = A395700 (n + 1)

theorem P10863328374740441814.correct : P10863328374740441814.Spec := by
  intro n
  simp only [A395700, Nat.add_sub_cancel]

end A395700

/-!
# A395701: Triangle read by rows: T(n, k) = binomial(n, k) * k^k.

The programs for A395701, there is no canonical definition to state claims against.
-/

/-! ## A395701.P6560387955132983739

`A356955(A059836(n+1))`
-/

namespace A395701.P6560387955132983739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (A059836 (n + 1)).toNat

end

end A395701.P6560387955132983739

/-! ## A395701.P14358764255277811201

`A138768(A128570(n))`
-/

namespace A395701.P14358764255277811201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (A128570 n).toNat

end

end A395701.P14358764255277811201

/-!
# A395702: Number of transitive relations on an n-set that are neither reflexive nor symmetric.

The programs for A395702, there is no canonical definition to state claims against.
-/

/-! ## A395702.P8415663374132904249

`A006905(n)-A000798(n)-A000110(n+1)+A000110(n)`
-/

namespace A395702.P8415663374132904249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A000798 n - A000110 (n + 1) + A000110 n

end

end A395702.P8415663374132904249

/-!
# A395704: Expansion of g^4*(2*g-1)/(3-2*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A395704, there is no canonical definition to state claims against.
-/

/-! ## A395704.P16133964373773942356

`(n+1)*A036829(n+1)`
-/

namespace A395704.P16133964373773942356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036829 (n + 1)

end

end A395704.P16133964373773942356

/-!
# A395705: Expansion of g^5*(3*g-2)/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A395705, there is no canonical definition to state claims against.
-/

/-! ## A395705.P15236237571732691539

`(n+1)*A308523(n+1)`
-/

namespace A395705.P15236237571732691539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308523 (n + 1)

end

end A395705.P15236237571732691539

/-!
# A395706: Expansion of g^6*(4*g-3)/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395706, there is no canonical definition to state claims against.
-/

/-! ## A395706.P726234389815810436

`(n+1)*A386367(n+1)`
-/

namespace A395706.P726234389815810436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386367 (n + 1)

end

end A395706.P726234389815810436

/-!
# A395707: Expansion of g^7*(5*g-4)/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

The programs for A395707, there is no canonical definition to state claims against.
-/

/-! ## A395707.P1084172933383618630

`(n+1)*A386368(n+1)`
-/

namespace A395707.P1084172933383618630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386368 (n + 1)

end

end A395707.P1084172933383618630

/-!
# A395708: Expansion of g^4*(4*g-3)/(3-2*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A395708, there is no canonical definition to state claims against.
-/

/-! ## A395708.P4395769601045900910

`(n+1)*A062236(n+1)`
-/

namespace A395708.P4395769601045900910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062236 (n + 1)

end

end A395708.P4395769601045900910

/-!
# A395709: Expansion of g^5*(5*g-4)/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A395709, there is no canonical definition to state claims against.
-/

/-! ## A395709.P9088190485973165721

`(n+1)*A386565(n+1)`
-/

namespace A395709.P9088190485973165721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386565 (n + 1)

end

end A395709.P9088190485973165721

/-!
# A395710: Expansion of g^6*(6*g-5)/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395710, there is no canonical definition to state claims against.
-/

/-! ## A395710.P3437402016473658810

`(n+1)*A386566(n+1)`
-/

namespace A395710.P3437402016473658810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386566 (n + 1)

end

end A395710.P3437402016473658810

/-!
# A395711: Expansion of g^7*(7*g-6)/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

The programs for A395711, there is no canonical definition to state claims against.
-/

/-! ## A395711.P18341920642502358831

`(n+1)*A386567(n+1)`
-/

namespace A395711.P18341920642502358831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386567 (n + 1)

end

end A395711.P18341920642502358831

/-!
# A395712: Number of valid manual turn-on sequences for n computers in a line, where a computer turns on automatically if its two neighbors are already on.

The programs for A395712, there is no canonical definition to state claims against.
-/

/-! ## A395712.P11331539015064104682

`A238617(A000098(n))`
-/

namespace A395712.P11331539015064104682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (A000098 n).toNat

end

end A395712.P11331539015064104682

/-! ## A395712.P195765348898760278

`A238617(A339656(n)+A022559(n))`
-/

namespace A395712.P195765348898760278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (A339656 n + A022559 n).toNat

end

end A395712.P195765348898760278

/-!
# A395715: Number of relations on an n-set that are reflexive and transitive, but not symmetric.

The programs for A395715, there is no canonical definition to state claims against.
-/

/-! ## A395715.P4884740577988994625

`A000798(n)-A000110(n)`
-/

namespace A395715.P4884740577988994625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n - A000110 n

end

end A395715.P4884740577988994625

/-!
# A395720: Kangaroo numbers are numbers that are multiples of their inner number; that is, the number obtained by removing its first and last digits.

The programs for A395720, there is no canonical definition to state claims against.
-/

/-! ## A395720.P5164806769273730048

`A324100(A289867(n+2))`
-/

namespace A395720.P5164806769273730048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324100 (A289867 (n + 2)).toNat

end

end A395720.P5164806769273730048

/-!
# A395726: Array read by ascending antidiagonals: A(n, k) = A(n, k-A002024(k)) + A002024(k) * A(n-1, k) with A(n, 0) = 0^n, A(0, k) = 1.

The programs for A395726, there is no canonical definition to state claims against.
-/

/-! ## A395726.P3132404095882718433

`A341883(A091480(n+1))`
-/

namespace A395726.P3132404095882718433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341883 (A091480 (n + 1)).toNat

end

end A395726.P3132404095882718433

/-!
# A395741: a(n) is the smallest positive integer m such that m mod k < k/2 for each 1 <= k <= n.

The programs for A395741, there is no canonical definition to state claims against.
-/

/-! ## A395741.P7600945423926439275

`A014682(A362532(n+1))`
-/

namespace A395741.P7600945423926439275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A362532 (n + 1)).toNat

end

end A395741.P7600945423926439275

/-! ## A395741.P8087485316456806961

`A322554(A130618(n+2))`
-/

namespace A395741.P8087485316456806961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A130618 (n + 2)).toNat

end

end A395741.P8087485316456806961

/-!
# A395742: Superior highly composite numbers (A002201) where a new prime factor is introduced for the first time.

The programs for A395742, there is no canonical definition to state claims against.
-/

/-! ## A395742.P12980556073712537159

`A062856(A296264(n))`
-/

namespace A395742.P12980556073712537159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (A296264 n).toNat

end

end A395742.P12980556073712537159

/-! ## A395742.P9383669410167696662

`A057144(2*A053304(2*n))`
-/

namespace A395742.P9383669410167696662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (2 * A053304 (2 * n)).toNat

end

end A395742.P9383669410167696662

/-!
# A395743: Sum of the cumulative number of previous occurrences of the digits of n in the sequence 1..n excluding the current occurrence of each digit.

The programs for A395743, there is no canonical definition to state claims against.
-/

/-! ## A395743.P4145310378716443346

`A343644(n+1)-A055642(n+1)`
-/

namespace A395743.P4145310378716443346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343644 (n + 1) - A055642 (n + 1)

end

end A395743.P4145310378716443346

/-!
# A395744: Number of occurrences of the n-th smallest value in A000793.

The programs for A395744, there is no canonical definition to state claims against.
-/

/-! ## A395744.P10032087189337745512

`Δ[A006644(n+1)]`
-/

namespace A395744.P10032087189337745512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395744.P10032087189337745512

/-! ## A395744.P16445108114758090162

`A006644(n+2)-A006644(n+1)`
-/

namespace A395744.P16445108114758090162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006644 (n + 2) - A006644 (n + 1)

end

end A395744.P16445108114758090162

/-! ## A395744.P7780044502504179649

`A375001(A121369(n+2))`
-/

namespace A395744.P7780044502504179649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375001 (A121369 (n + 2)).toNat

end

end A395744.P7780044502504179649

/-!
# A395754: Number of k < m^2 such that both rad(k) and rad(k+1) divide m, where rad = A007947 and m = A005117(n).

The programs for A395754, there is no canonical definition to state claims against.
-/

/-! ## A395754.P7892049180958111896

`A395896(A048672(n+1))`
-/

namespace A395754.P7892049180958111896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395896 (A048672 (n + 1)).toNat

end

end A395754.P7892049180958111896

/-!
# A395760: Number of labeled squarefree bipartite graphs on n vertices.

The programs for A395760, there is no canonical definition to state claims against.
-/

/-! ## A395760.P132930419110120856

`A156833(A022302(n))`
-/

namespace A395760.P132930419110120856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156833 (A022302 n).toNat

end

end A395760.P132930419110120856

/-!
# A395762: Array read by ascending antidiagonals: A(n, k) = Sum_{j=0..n} Stirling2(n, j)*5^j*(k)_j.

The programs for A395762, there is no canonical definition to state claims against.
-/

/-! ## A395762.P4899491953490388370

`A007305(A122542(n)^5)`
-/

namespace A395762.P4899491953490388370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A122542 n ^ 5).toNat

end

end A395762.P4899491953490388370

/-!
# A395764: First column of the triangular array with T(0, m) = m! and T(n, m) = T(n - 1, m + 3) - 2*T(n - 1, m + 2) + T(n - 1, m + 1).

The programs for A395764, there is no canonical definition to state claims against.
-/

/-! ## A395764.P4462682270954876329

`A047920(A062728(n))`
-/

namespace A395764.P4462682270954876329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A062728 n).toNat

end

end A395764.P4462682270954876329

/-! ## A395764.P4443953394327824413

`A068106(A062725(n))`
-/

namespace A395764.P4443953394327824413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A062725 n).toNat

end

end A395764.P4443953394327824413

/-! ## A395764.P9333151575412346219

`A116854(A064225(n))`
-/

namespace A395764.P9333151575412346219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (A064225 n).toNat

end

end A395764.P9333151575412346219

/-!
# A395765: First column of the triangular array with T(0, m) = m! and T(n, m) = T(n - 1, m + 3) - T(n - 1, m + 2).

The programs for A395765, there is no canonical definition to state claims against.
-/

/-! ## A395765.P11522508879416848335

`A047920(A062725(n))`
-/

namespace A395765.P11522508879416848335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A062725 n).toNat

end

end A395765.P11522508879416848335

/-! ## A395765.P8100028748031592335

`A068106(A062728(n))`
-/

namespace A395765.P8100028748031592335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A062728 n).toNat

end

end A395765.P8100028748031592335

/-! ## A395765.P13677485109688904246

`A116854(A081267(n))`
-/

namespace A395765.P13677485109688904246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (A081267 n).toNat

end

end A395765.P13677485109688904246

/-! ## A395765.P4657184436803611979

`A068106(A024966(n)+n²)`
-/

namespace A395765.P4657184436803611979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A024966 n + (n ^ 2 : ℤ)).toNat

end

end A395765.P4657184436803611979

/-! ## A395765.P4828072718997185116

`A047920(A000217(3*n)+n)`
-/

namespace A395765.P4828072718997185116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A395765.P4828072718997185116

/-!
# A395767: Minimal value of p(1) + Sum_{i=2...n} p(i-1)*p(i), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

The programs for A395767, the canonical program `A395767.P6540470511524819013` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395767 has offset 1).

The definition of A395767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395767.P6540470511524819013

`A394572(n)+2^n`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395767

/-- `A394572(n)+2^n` -/
def P6540470511524819013.Spec : Prop :=
  ∀ n, P6540470511524819013.a n = A395767 (n + 1)

theorem P6540470511524819013.correct : P6540470511524819013.Spec := by
  intro n
  simp only [A395767, Nat.add_sub_cancel]

end A395767

/-! ## A395767.P16989537861245372279

`A395770(n+1)+A011782(n)`
-/

namespace A395767.P16989537861245372279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395770 (n + 1) + A011782 n

end

end A395767.P16989537861245372279

namespace A395767

/-- `A395770(n+1)+A011782(n)` -/
def P16989537861245372279.Spec : Prop :=
  ∀ n, P16989537861245372279.a n = A395767 (n + 1)

end A395767

/-! ## A395767.P11213690137614388919

`A395770(n+2)+A394572(n)-A394572(n+1)`
-/

namespace A395767.P11213690137614388919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395770 (n + 2) + (A394572 n - A394572 (n + 1))

end

end A395767.P11213690137614388919

namespace A395767

/-- `A395770(n+2)+A394572(n)-A394572(n+1)` -/
def P11213690137614388919.Spec : Prop :=
  ∀ n, P11213690137614388919.a n = A395767 (n + 1)

end A395767

/-!
# A395768: The twisted Euler phi-function for the Dirichlet character kronecker(-4,.) mod 4.

The programs for A395768, the canonical program `A395768.P1059238046107922784` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395768 has offset 1).

The definition of A395768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395768.P12394104628215582133

`A204617(2*(n+1))`
-/

namespace A395768.P12394104628215582133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204617 (2 * (n + 1))

end

end A395768.P12394104628215582133

namespace A395768

/-- `A204617(2*(n+1))` -/
def P12394104628215582133.Spec : Prop :=
  ∀ n, P12394104628215582133.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P1059238046107922784

`∑{d}[n+1, #*A374367((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A395768

/-- `∑{d}[n+1, #*A374367((n+1)/#)]` -/
def P1059238046107922784.Spec : Prop :=
  ∀ n, P1059238046107922784.a n = A395768 (n + 1)

theorem P1059238046107922784.correct : P1059238046107922784.Spec := by
  intro n
  simp only [A395768, Nat.add_sub_cancel]

end A395768

/-! ## A395768.P16799943259967393337

`A060968(n+1)/A177704(n)`
-/

namespace A395768.P16799943259967393337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060968 (n + 1) : ℚ) / (A177704 n : ℚ)

end

end A395768.P16799943259967393337

namespace A395768

/-- `A060968(n+1)/A177704(n)` -/
def P16799943259967393337.Spec : Prop :=
  ∀ n, P16799943259967393337.a n = (A395768 (n + 1) : ℚ)

end A395768

/-! ## A395768.P3096175418037686211

`A079458(n+1)/A000010(n+1)`
-/

namespace A395768.P3096175418037686211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A395768.P3096175418037686211

namespace A395768

/-- `A079458(n+1)/A000010(n+1)` -/
def P3096175418037686211.Spec : Prop :=
  ∀ n, P3096175418037686211.a n = (A395768 (n + 1) : ℚ)

end A395768

/-! ## A395768.P10551596134192565744

`∑{d}[n+1, A000203(#)*A120630((n+1)/#)]`
-/

namespace A395768.P10551596134192565744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A120630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P10551596134192565744

namespace A395768

/-- `∑{d}[n+1, A000203(#)*A120630((n+1)/#)]` -/
def P10551596134192565744.Spec : Prop :=
  ∀ n, P10551596134192565744.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P17380768330038655001

`∑{d}[n+1, A065332(#)*A182158((n+1)/#)]`
-/

namespace A395768.P17380768330038655001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065332 d * A182158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P17380768330038655001

namespace A395768

/-- `∑{d}[n+1, A065332(#)*A182158((n+1)/#)]` -/
def P17380768330038655001.Spec : Prop :=
  ∀ n, P17380768330038655001.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P7785789785476320208

`∑{d}[n+1, A000010(#)*A374366((n+1)/#)]`
-/

namespace A395768.P7785789785476320208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P7785789785476320208

namespace A395768

/-- `∑{d}[n+1, A000010(#)*A374366((n+1)/#)]` -/
def P7785789785476320208.Spec : Prop :=
  ∀ n, P7785789785476320208.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P5299324630503628806

`A006519(n+1)*A060968(A000265(n+1))`
-/

namespace A395768.P5299324630503628806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A060968 (A000265 (n + 1)).toNat

end

end A395768.P5299324630503628806

namespace A395768

/-- `A006519(n+1)*A060968(A000265(n+1))` -/
def P5299324630503628806.Spec : Prop :=
  ∀ n, P5299324630503628806.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P241920691882686703

`A060968(A204455(n+1))*A357689(n+1)`
-/

namespace A395768.P241920691882686703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (A204455 (n + 1)).toNat * A357689 (n + 1)

end

end A395768.P241920691882686703

namespace A395768

/-- `A060968(A204455(n+1))*A357689(n+1)` -/
def P241920691882686703.Spec : Prop :=
  ∀ n, P241920691882686703.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P8968661352761146067

`A079458(2*(n+1))/A062570(2*(n+1))`
-/

namespace A395768.P8968661352761146067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (2 * (n + 1)) : ℚ) / (A062570 (2 * (n + 1)) : ℚ)

end

end A395768.P8968661352761146067

namespace A395768

/-- `A079458(2*(n+1))/A062570(2*(n+1))` -/
def P8968661352761146067.Spec : Prop :=
  ∀ n, P8968661352761146067.a n = (A395768 (n + 1) : ℚ)

end A395768

/-! ## A395768.P10951007231319740502

`A079458(2*(n+1))/A140434(2*(n+1))`
-/

namespace A395768.P10951007231319740502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (2 * (n + 1)) : ℚ) / (A140434 (2 * (n + 1)) : ℚ)

end

end A395768.P10951007231319740502

namespace A395768

/-- `A079458(2*(n+1))/A140434(2*(n+1))` -/
def P10951007231319740502.Spec : Prop :=
  ∀ n, P10951007231319740502.a n = (A395768 (n + 1) : ℚ)

end A395768

/-! ## A395768.P13675368954138920047

`A096445(2*(n+1))`
-/

namespace A395768.P13675368954138920047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096445 (2 * (n + 1))

end

end A395768.P13675368954138920047

namespace A395768

/-- `A096445(2*(n+1))` -/
def P13675368954138920047.Spec : Prop :=
  ∀ n, P13675368954138920047.a n = A395768 (n + 1)

end A395768

/-!
# A395769: The twisted Euler phi-function for the Dirichlet character kronecker(-8,.) mod 8.

The programs for A395769, there is no canonical definition to state claims against.
-/

/-! ## A395769.P2309648224152240816

`A000003(2*(n+1)²)`
-/

namespace A395769.P2309648224152240816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (2 * (n + 1) ^ 2)

end

end A395769.P2309648224152240816

/-! ## A395769.P8211351445773478548

`A014600(A000466(n+1))`
-/

namespace A395769.P8211351445773478548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (A000466 (n + 1)).toNat

end

end A395769.P8211351445773478548

/-! ## A395769.P6194955749419262220

`A066360(A139098(n+1))`
-/

namespace A395769.P6194955749419262220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066360 (A139098 (n + 1)).toNat

end

end A395769.P6194955749419262220

/-!
# A395770: Minimal value of Sum_{i=1..n-1} p(i)*p(i+1), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

The programs for A395770, the canonical program `A395770.P6054457820381532371` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395770 has offset 1).

The definition of A395770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395770.P6054457820381532371

`A394572(n)+A131577(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395770

/-- `A394572(n)+A131577(n)` -/
def P6054457820381532371.Spec : Prop :=
  ∀ n, P6054457820381532371.a n = A395770 (n + 1)

theorem P6054457820381532371.correct : P6054457820381532371.Spec := by
  intro n
  simp only [A395770, Nat.add_sub_cancel]

end A395770

/-! ## A395770.P16966019493068547943

`A395767(n+1)-A011782(n)`
-/

namespace A395770.P16966019493068547943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395767 (n + 1) - A011782 n

end

end A395770.P16966019493068547943

namespace A395770

/-- `A395767(n+1)-A011782(n)` -/
def P16966019493068547943.Spec : Prop :=
  ∀ n, P16966019493068547943.a n = A395770 (n + 1)

end A395770

/-!
# A395773: The twisted Euler phi-function for the Dirichlet character kronecker(-15,.) mod 15.

The programs for A395773, there is no canonical definition to state claims against.
-/

/-! ## A395773.P1670718934447643678

`A117332(A105658(n+1))`
-/

namespace A395773.P1670718934447643678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A105658 (n + 1)).toNat

end

end A395773.P1670718934447643678

/-! ## A395773.P15151574035570576778

`A320443(A284463(n))+floor(n/(n%2+1))`
-/

namespace A395773.P15151574035570576778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320443 (A284463 n).toNat + ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

end

end A395773.P15151574035570576778

/-!
# A395778: Squarefree numbers k with least prime factor p and m distinct prime factors, such that not all larger prime factors q > p are less than p^m.

The programs for A395778, there is no canonical definition to state claims against.
-/

/-! ## A395778.P265615989600075271

`∩[A253785(n+1), A325362(n+1)]`
-/

namespace A395778.P265615989600075271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P265615989600075271

/-! ## A395778.P16329692801715290358

`∩[A245729(n+1), A301899(n+1)]`
-/

namespace A395778.P16329692801715290358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P16329692801715290358

/-! ## A395778.P15584634506845844177

`∩[A253785(n+1), A301899(n+1)]`
-/

namespace A395778.P15584634506845844177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P15584634506845844177

/-! ## A395778.P9283429632481810976

`∩[A245729(n+1), A319315(n+1)]`
-/

namespace A395778.P9283429632481810976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P9283429632481810976

/-! ## A395778.P7457415088758513650

`∩[A245729(n+1), A325398(n+1)]`
-/

namespace A395778.P7457415088758513650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P7457415088758513650

/-!
# A395790: Numbers k such that gcd(i!,k) > gcd((i-1)!,k) for every i <= A002034(k) not coprime to k.

The programs for A395790, there is no canonical definition to state claims against.
-/

/-! ## A395790.P7741491916337437005

`lt[A266770(n), A070667(A070667(3*n+2))]`
-/

namespace A395790.P7741491916337437005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A070667 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395790.P7741491916337437005

/-! ## A395790.P12363209901470215054

`lt[A053120(A250120(n+2)), A358134(3*n+5)]`
-/

namespace A395790.P12363209901470215054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A250120 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358134 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395790.P12363209901470215054

/-!
# A395791: Numbers k such that gcd(i!,k) = gcd((i-1)!,k) for some i <= A002034(k) not coprime to k.

The programs for A395791, there is no canonical definition to state claims against.
-/

/-! ## A395791.P6617155726159100897

`lt[A272332(A017666(2*n+3)), A333627(2*(n+1))]`
-/

namespace A395791.P6617155726159100897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272332 (A017666 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395791.P6617155726159100897

/-!
# A395792: Numbers k such that k-3 and k+3 are prime and gcd(k, sigma(k)) is prime.

The programs for A395792, the canonical program `A395792.P15440842927184700187` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395792 has offset 1).

The definition of A395792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395792.P15440842927184700187

`∩[A087695(n+1), A392199(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A395792

/-- `∩[A087695(n+1), A392199(n+1)]` -/
def P15440842927184700187.Spec : Prop :=
  ∀ n, (P15440842927184700187.a n : ℤ) = A395792 (n + 1)

theorem P15440842927184700187.correct : P15440842927184700187.Spec := by
  intro n
  simp only [A395792, Nat.add_sub_cancel]

end A395792

/-!
# A395795: Lexicographically earliest sequence of the form 1 followed by semiprimes (A001358), with the property that (a) for all k>=0, a(k) shares a factor with exactly k other terms, and (b) for all k >= 1, a(k) is divisible by a prime which does not divide any earlier term.

The programs for A395795, there is no canonical definition to state claims against.
-/

/-! ## A395795.P4612784745316121022

`A064505(A396178(n))`
-/

namespace A395795.P4612784745316121022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064505 (A396178 n).toNat

end

end A395795.P4612784745316121022

/-! ## A395795.P17009340571023041067

`A373565(n)*A396178(n)`
-/

namespace A395795.P17009340571023041067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n * A396178 n

end

end A395795.P17009340571023041067

/-! ## A395795.P16735224156896527130

`A396178(n)+A000122(A161639(n+1))`
-/

namespace A395795.P16735224156896527130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396178 n + A000122 (A161639 (n + 1)).toNat

end

end A395795.P16735224156896527130

/-! ## A395795.P17575594181402568903

`∩[A083875(n+1), A395970(n)]`
-/

namespace A395795.P17575594181402568903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395970 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395795.P17575594181402568903

/-! ## A395795.P5668440636012892900

`∩[A324689(n), A395970(n)]`
-/

namespace A395795.P5668440636012892900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395970 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395795.P5668440636012892900

/-!
# A395796: Expansion of -1/(Sum_{k>=0} binomial(4*k+1,k) * x^k).

The programs for A395796, there is no canonical definition to state claims against.
-/

/-! ## A395796.P903921451286357783

`A007047(n)-A164272(A001147(n+1))`
-/

namespace A395796.P903921451286357783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007047 n - A164272 (A001147 (n + 1)).toNat

end

end A395796.P903921451286357783

