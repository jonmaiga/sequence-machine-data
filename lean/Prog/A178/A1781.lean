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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C049
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A178101: Cardinality of the set of d, 2<=d<=n/2, which divide binomial(n-d-1,d-1) and are not coprime to n.

The programs for A178101, there is no canonical definition to state claims against.
-/

/-! ## A178101.P17350686655273939319

`A177501(n+1)-A004525(Δ[A002088(n)])`
-/

namespace A178101.P17350686655273939319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (n + 1) - A004525 (f1 (n + 1) - f1 n).toNat

end

end A178101.P17350686655273939319

/-! ## A178101.P6502659823617625398

`A177501(n+1)-A316388(Δ[A002088(n)])`
-/

namespace A178101.P6502659823617625398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (n + 1) - A316388 (f1 (n + 1) - f1 n).toNat

end

end A178101.P6502659823617625398

/-! ## A178101.P6982862525487781890

`A177501(n+1)-A004525(A000010(n+1))`
-/

namespace A178101.P6982862525487781890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (n + 1) - A004525 (A000010 (n + 1)).toNat

end

end A178101.P6982862525487781890

/-! ## A178101.P985324552960351668

`A177501(n+1)-A004526(A039649(n+1))`
-/

namespace A178101.P985324552960351668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (n + 1) - A004526 (A039649 (n + 1)).toNat

end

end A178101.P985324552960351668

/-! ## A178101.P4026316358214440593

`A177501(n+1)-A004525(sqrt(A127473(n+1)))`
-/

namespace A178101.P4026316358214440593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (n + 1) - A004525 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A178101.P4026316358214440593

/-! ## A178101.P14375835795491735972

`A177501(n+1)-A004526(A000010(n+1)+1)`
-/

namespace A178101.P14375835795491735972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (n + 1) - A004526 (A000010 (n + 1) + 1).toNat

end

end A178101.P14375835795491735972

/-!
# A178102: 2^(absolute difference between prime factors of n-th semiprime) mod (n-th semiprime).

The programs for A178102, the canonical program `A178102.P15075668303995911891` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178102 has offset 1).

The definition of A178102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178102.P15075668303995911891

`A000079(A109313(n+1))%A001358(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A178102

/-- `A000079(A109313(n+1))%A001358(n+1)` -/
def P15075668303995911891.Spec : Prop :=
  ∀ n, P15075668303995911891.a n = A178102 (n + 1)

theorem P15075668303995911891.correct : P15075668303995911891.Spec := by
  intro n
  simp only [A178102, Nat.add_sub_cancel]

end A178102

/-! ## A178102.P15405822953855421699

`A000079(A084127(n+1)-A084126(n+1))%A001358(n+1)`
-/

namespace A178102.P15405822953855421699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A084127 (n + 1) - A084126 (n + 1)).toNat) (A001358 (n + 1))

end

end A178102.P15405822953855421699

namespace A178102

/-- `A000079(A084127(n+1)-A084126(n+1))%A001358(n+1)` -/
def P15405822953855421699.Spec : Prop :=
  ∀ n, P15405822953855421699.a n = A178102 (n + 1)

end A178102

/-! ## A178102.P10694496850358829476

`A000079(A176347(n+1)%A084127(n+1))%A001358(n+1)`
-/

namespace A178102.P10694496850358829476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (Int.tmod (A176347 (n + 1)) (A084127 (n + 1))).toNat) (A001358 (n + 1))

end

end A178102.P10694496850358829476

namespace A178102

/-- `A000079(A176347(n+1)%A084127(n+1))%A001358(n+1)` -/
def P10694496850358829476.Spec : Prop :=
  ∀ n, P10694496850358829476.a n = A178102 (n + 1)

end A178102

/-! ## A178102.P4654586601745916912

`A000079(A068318(n+1)-2*A084126(n+1))%(A088707(n+1)-1)`
-/

namespace A178102.P4654586601745916912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A068318 (n + 1) - 2 * A084126 (n + 1)).toNat) (A088707 (n + 1) - 1)

end

end A178102.P4654586601745916912

namespace A178102

/-- `A000079(A068318(n+1)-2*A084126(n+1))%(A088707(n+1)-1)` -/
def P4654586601745916912.Spec : Prop :=
  ∀ n, P4654586601745916912.a n = A178102 (n + 1)

end A178102

/-! ## A178102.P15838239634666909475

`A000079(2*A084127(n+1)-A068318(n+1))%(A088707(n+1)-1)`
-/

namespace A178102.P15838239634666909475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (2 * A084127 (n + 1) - A068318 (n + 1)).toNat) (A088707 (n + 1) - 1)

end

end A178102.P15838239634666909475

namespace A178102

/-- `A000079(2*A084127(n+1)-A068318(n+1))%(A088707(n+1)-1)` -/
def P15838239634666909475.Spec : Prop :=
  ∀ n, P15838239634666909475.a n = A178102 (n + 1)

end A178102

/-!
# A178103: Coefficient array of orthogonal polynomials P(n,x)=x*P(n-1,x)-(2n-3)*P(n-2,x), P(0,x)=1,P(1,x)=x.

The programs for A178103, there is no canonical definition to state claims against.
-/

/-! ## A178103.P18157887184639979536

`T(n-1,k-1)+(2*(1-row(n))+1)*T(n-2,k)` with `a(0)=1`
-/

namespace A178103.P18157887184639979536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (2 * (1 - (SequenceMachineLib.triRow n : ℤ)) + 1) * SequenceMachineLib.triUp2 a n

end

end A178103.P18157887184639979536

/-! ## A178103.P6328380990978617966

`T(n-1,k-1)-(2*(row(n)-1)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A178103.P6328380990978617966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 * ((SequenceMachineLib.triRow n : ℤ) - 1) - 1) * SequenceMachineLib.triUp2 a n

end

end A178103.P6328380990978617966

/-! ## A178103.P14161981883245462740

`A049310(n)*A119026(A141751(n))`
-/

namespace A178103.P14161981883245462740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A119026 (A141751 n).toNat

end

end A178103.P14161981883245462740

/-! ## A178103.P15735049209381992753

`A053119(A061579(n))*A119026(A141751(n))`
-/

namespace A178103.P15735049209381992753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A061579 n).toNat * A119026 (A141751 n).toNat

end

end A178103.P15735049209381992753

/-! ## A178103.P1324998499851150628

`A053119(A038722(n+2))*A119026(A141751(n))`
-/

namespace A178103.P1324998499851150628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A038722 (n + 2)).toNat * A119026 (A141751 n).toNat

end

end A178103.P1324998499851150628

/-!
# A178104: Inverse of coefficient array of orthogonal polynomials P(n,x)=x*P(n-1,x)-(2n-3)*P(n-2,x), P(0,x)=1,P(1,x)=x.

The programs for A178104, there is no canonical definition to state claims against.
-/

/-! ## A178104.P7045590076917228331

`T(n-1,k-1)+(2*col(n)+1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A178104.P7045590076917228331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (2 * SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUpRight a n

end

end A178104.P7045590076917228331

/-! ## A178104.P10288887212204559047

`T(n-1,k-1)-(2*(1-col(n))-3)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A178104.P10288887212204559047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 * (1 - (SequenceMachineLib.triCol n : ℤ)) - 3) * SequenceMachineLib.triUpRight a n

end

end A178104.P10288887212204559047

/-! ## A178104.P11719402411642701843

`or(A185284(A257470(n)), A213600(n))`
-/

namespace A178104.P11719402411642701843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A257470 n).toNat) (A213600 n)

end

end A178104.P11719402411642701843

/-! ## A178104.P6170794136610780538

`A119026(A256036(n))`
-/

namespace A178104.P6170794136610780538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A256036 n).toNat

end

end A178104.P6170794136610780538

/-! ## A178104.P3256474785113471420

`A369236(A060524(n))`
-/

namespace A178104.P3256474785113471420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369236 (A060524 n).toNat

end

end A178104.P3256474785113471420

/-!
# A178105: Let B_n be the set of divisors 2 <= d <= n/2 of binomial(n-d-1,d-1) such that gcd(n,d)>1. The sequence lists the minimal d of B_n, or a(n)=0 if B_n is empty.

The programs for A178105, there is no canonical definition to state claims against.
-/

/-! ## A178105.P2245573314736384422

`A101684(A178109(n+1)%A273728(n+1))`
-/

namespace A178105.P2245573314736384422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101684 (Int.tmod (A178109 (n + 1)) (A273728 (n + 1))).toNat

end

end A178105.P2245573314736384422

/-! ## A178105.P17924020867125185375

`A101684(A178109(n+1))%A043330(n+8)`
-/

namespace A178105.P17924020867125185375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101684 (A178109 (n + 1)).toNat) (A043330 (n + 8))

end

end A178105.P17924020867125185375

/-! ## A178105.P14814649931668838039

`∑{e}[A005809(A178109(n+1)), #]`
-/

namespace A178105.P14814649931668838039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 (A178109 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A178105.P14814649931668838039

/-! ## A178105.P2044448852069805251

`A024406(A296659(3*(n+1)))%A366806(n)`
-/

namespace A178105.P2044448852069805251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024406 (A296659 (3 * (n + 1))).toNat) (A366806 n)

end

end A178105.P2044448852069805251

/-!
# A178107: Coefficient array for orthogonal polynomials P(n,x)=x*P(n-1,x)-(2*floor((n+2)/2)-3)*P(n-2,x), P(0,x)=1,P(1,x)=x.

The programs for A178107, there is no canonical definition to state claims against.
-/

/-! ## A178107.P12968246721840889568

`A066325(n)+A010051(A282987(n))`
-/

namespace A178107.P12968246721840889568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n + A010051 (A282987 n).toNat

end

end A178107.P12968246721840889568

/-! ## A178107.P3488259814922941574

`A339825(A000602(n))+A066325(n)`
-/

namespace A178107.P3488259814922941574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339825 (A000602 n).toNat + A066325 n

end

end A178107.P3488259814922941574

/-! ## A178107.P10073584789981697853

`A152148(A257565(n))+A066325(n)`
-/

namespace A178107.P10073584789981697853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152148 (A257565 n).toNat + A066325 n

end

end A178107.P10073584789981697853

/-! ## A178107.P4180789608783428368

`A108723(A347811(n))+A066325(n)`
-/

namespace A178107.P4180789608783428368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108723 (A347811 n).toNat + A066325 n

end

end A178107.P4180789608783428368

/-! ## A178107.P12843914789959991850

`A307598(A185410(n))+A066325(n)`
-/

namespace A178107.P12843914789959991850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A185410 n).toNat + A066325 n

end

end A178107.P12843914789959991850

/-!
# A178108: Inverse of coefficient array for orthogonal polynomials P(n,x)=x*P(n-1,x)-(2*floor((n+2)/2)-3)*P(n-2,x), P(0,x)=1,P(1,x)=x.

The programs for A178108, there is no canonical definition to state claims against.
-/

/-! ## A178108.P13234322853598802968

`dr(A096005(A213600(n)))`
-/

namespace A178108.P13234322853598802968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096005 (A213600 n).toNat)

end

end A178108.P13234322853598802968

/-! ## A178108.P9915297254581039784

`A088226(3^A053121(n))`
-/

namespace A178108.P9915297254581039784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A053121 n : ℤ))).toNat

end

end A178108.P9915297254581039784

/-! ## A178108.P6813969074951291499

`A088226(3^A322378(n))`
-/

namespace A178108.P6813969074951291499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A322378 n : ℤ))).toNat

end

end A178108.P6813969074951291499

/-! ## A178108.P17158391738162973688

`dr(A000982(A124321(n)²))`
-/

namespace A178108.P17158391738162973688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000982 (A124321 n ^ 2).toNat)

end

end A178108.P17158391738162973688

/-! ## A178108.P6982668503422994407

`dr(A096005(A053121(n)²))`
-/

namespace A178108.P6982668503422994407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096005 (A053121 n ^ 2).toNat)

end

end A178108.P6982668503422994407

/-!
# A178109: The maximum number d, 2 <= d <= n/2, which divides binomial(n-d-1,d-1) and is not coprime to n.

The programs for A178109, there is no canonical definition to state claims against.
-/

/-! ## A178109.P6517501110324161048

`A005811(A094202(2*(n+1))*A178105(n+1))`
-/

namespace A178109.P6517501110324161048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A094202 (2 * (n + 1)) * A178105 (n + 1)).toNat

end

end A178109.P6517501110324161048

/-!
# A178110: Consider the set of divisors d of binomial(n-d-1,d-1) where gcd(n,d)>1 and 1<d<=n/2. If the smallest element of this set is 6, n is in the sequence.

The programs for A178110, there is no canonical definition to state claims against.
-/

/-! ## A178110.P6075363611965202989

`eq[6, A178105(n+1)]+1`
-/

namespace A178110.P6075363611965202989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178105 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178110.P6075363611965202989

/-! ## A178110.P3480615661490166817

`eq[6, A178105(A028310(n))]`
-/

namespace A178110.P3480615661490166817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178105 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178110.P3480615661490166817

/-! ## A178110.P16670677552753251334

`A020725(eq[6, A178105(n+1)])`
-/

namespace A178110.P16670677552753251334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178110.P16670677552753251334

/-! ## A178110.P5442087861983476180

`A065475(eq[6, A178105(n+1)])`
-/

namespace A178110.P5442087861983476180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178110.P5442087861983476180

/-! ## A178110.P16816248547222471280

`eq[6, A178105(A233583(n+1))]`
-/

namespace A178110.P16816248547222471280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178105 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178110.P16816248547222471280

/-!
# A178111: Number triangle T(n,k)=(-1)^((n-k)/2)*C(floor(n/2),floor(k/2))*(1+(-1)^(n-k))/2.

The programs for A178111, there is no canonical definition to state claims against.
-/

/-! ## A178111.P17010367202284864429

`T(n-1,k-1)-T(n-1,k+1)*T(T(row(n)-1, 2), T(n-1,k))` with `a(0)=1`
-/

namespace A178111.P17010367202284864429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUpRight a n * SequenceMachineLib.triAt a (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) 2) (SequenceMachineLib.triUp a n)

end

end A178111.P17010367202284864429

/-! ## A178111.P17662313655990622113

`T(n-1,k-1)+(T(T(col(n), T(n-1,k)), T(n-1,k))-1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A178111.P17662313655990622113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triAt a (SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (SequenceMachineLib.triUp a n)) (SequenceMachineLib.triUp a n) - 1) * SequenceMachineLib.triUpRight a n

end

end A178111.P17662313655990622113

/-! ## A178111.P9754527573275344433

`T(n-1,k-1)-(1-T(T(col(n), T(n-1,k)), T(n-1,k)))*T(n-1,k+1)` with `a(0)=1`
-/

namespace A178111.P9754527573275344433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (1 - SequenceMachineLib.triAt a (SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (SequenceMachineLib.triUp a n)) (SequenceMachineLib.triUp a n)) * SequenceMachineLib.triUpRight a n

end

end A178111.P9754527573275344433

/-! ## A178111.P18345460858168330876

`(col(n)+1)*(T(n-1,k-1)-T(n-1,k+1))-row(n)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A178111.P18345460858168330876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUpRight a n) - (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUpLeft a n

end

end A178111.P18345460858168330876

/-! ## A178111.P12923439272291538790

`A106470(n)*A178112(n)`
-/

namespace A178111.P12923439272291538790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 n * A178112 n

end

end A178111.P12923439272291538790

/-! ## A178111.P3715614400197122455

`A117568(n)*A178112(n)`
-/

namespace A178111.P3715614400197122455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A178112 n

end

end A178111.P3715614400197122455

/-! ## A178111.P11742113743599454544

`A051159(n)*A369736(n)`
-/

namespace A178111.P11742113743599454544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n * A369736 n

end

end A178111.P11742113743599454544

/-! ## A178111.P7245794290811745279

`A119963(n)*A369736(n)`
-/

namespace A178111.P7245794290811745279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A369736 n

end

end A178111.P7245794290811745279

/-! ## A178111.P2351535451637605339

`A178112(n)*A369736(n)`
-/

namespace A178111.P2351535451637605339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 n * A369736 n

end

end A178111.P2351535451637605339

/-! ## A178111.P13564610015457245587

`A211226(n)*A369736(n)`
-/

namespace A178111.P13564610015457245587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 n * A369736 n

end

end A178111.P13564610015457245587

/-!
# A178112: Number triangle T(n,k)=C(floor(n/2),floor(k/2))*(1+(-1)^(n-k))/2.

The programs for A178112, the canonical program `A178112.P7431733683419964115` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178112 has offset 0).

The definition of A178112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178112.P7431733683419964115

`C(floor(row(n)/2), floor(col(n)/2))*(1+(-1)^(row(n)-col(n)))/2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178112

/-- `C(floor(row(n)/2), floor(col(n)/2))*(1+(-1)^(row(n)-col(n)))/2` -/
def P7431733683419964115.Spec : Prop :=
  ∀ n, P7431733683419964115.a n = (A178112 n : ℚ)

end A178112

/-! ## A178112.P18432150795576171617

`T(n-1,k-1)+T(n-1,k+1)*T(col(n), T(n-1,k))` with `a(0)=1`
-/

namespace A178112.P18432150795576171617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A178112.P18432150795576171617

namespace A178112

/-- `T(n-1,k-1)+T(n-1,k+1)*T(col(n), T(n-1,k))` -/
def P18432150795576171617.Spec : Prop :=
  ∀ n, (P18432150795576171617.a n : ℤ) = A178112 n

end A178112

/-! ## A178112.P1529496627542261490

`T(n-1,k-1)+T(n-1,k+1)*T(row(n)-1, 1)` with `a(0)=1`
-/

namespace A178112.P1529496627542261490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) 1

end

end A178112.P1529496627542261490

namespace A178112

/-- `T(n-1,k-1)+T(n-1,k+1)*T(row(n)-1, 1)` -/
def P1529496627542261490.Spec : Prop :=
  ∀ n, (P1529496627542261490.a n : ℤ) = A178112 n

end A178112

/-! ## A178112.P13437739647162885707

`T(n-1,k-1)-(T(n-1,k)-T(col(n), T(n-1,k)))*T(n-1,k+1)` with `a(0)=1`
-/

namespace A178112.P13437739647162885707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp a n - SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (SequenceMachineLib.triUp a n)) * SequenceMachineLib.triUpRight a n

end

end A178112.P13437739647162885707

namespace A178112

/-- `T(n-1,k-1)-(T(n-1,k)-T(col(n), T(n-1,k)))*T(n-1,k+1)` -/
def P13437739647162885707.Spec : Prop :=
  ∀ n, P13437739647162885707.a n = A178112 n

end A178112

/-! ## A178112.P7206493517894910956

`T(n-1,k-1)-(T(row(n)-2, 1)-1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A178112.P7206493517894910956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) 1 - 1) * SequenceMachineLib.triUpRight a n

end

end A178112.P7206493517894910956

namespace A178112

/-- `T(n-1,k-1)-(T(row(n)-2, 1)-1)*T(n-1,k+1)` -/
def P7206493517894910956.Spec : Prop :=
  ∀ n, P7206493517894910956.a n = A178112 n

end A178112

/-! ## A178112.P12695967657277372278

`T(n-1,k-1)+T(n-1,k+1)*T(col(n), T(1, T(n-1,k+1)+2))` with `a(0)=1`
-/

namespace A178112.P12695967657277372278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triAt a 1 (SequenceMachineLib.triUpRight a n + 2 : ℤ) : ℕ) : ℤ)

end

end A178112.P12695967657277372278

namespace A178112

/-- `T(n-1,k-1)+T(n-1,k+1)*T(col(n), T(1, T(n-1,k+1)+2))` -/
def P12695967657277372278.Spec : Prop :=
  ∀ n, (P12695967657277372278.a n : ℤ) = A178112 n

end A178112

/-! ## A178112.P5337883797820878149

`T(n-1,k-1)+(1+(-1)^col(n))/2*T(n-2,k)` with `a(0)=1`
-/

namespace A178112.P5337883797820878149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (1 + (-1) ^ SequenceMachineLib.triCol n : ℚ) / 2 * SequenceMachineLib.triUp2 a n

end

end A178112.P5337883797820878149

namespace A178112

/-- `T(n-1,k-1)+(1+(-1)^col(n))/2*T(n-2,k)` -/
def P5337883797820878149.Spec : Prop :=
  ∀ n, P5337883797820878149.a n = (A178112 n : ℚ)

end A178112

/-! ## A178112.P11236817221090832368

`T(row(n)-2, col(n)-2)+T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A178112.P11236817221090832368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUp2 a n

end

end A178112.P11236817221090832368

namespace A178112

/-- `T(row(n)-2, col(n)-2)+T(n-2,k)` -/
def P11236817221090832368.Spec : Prop :=
  ∀ n, (P11236817221090832368.a n : ℤ) = A178112 n

end A178112

/-! ## A178112.P6851896674319371387

`(col(n)+1)*(T(n-1,k-1)+T(n-1,k+1))-row(n)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A178112.P6851896674319371387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n) - (SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUpLeft a n

end

end A178112.P6851896674319371387

namespace A178112

/-- `(col(n)+1)*(T(n-1,k-1)+T(n-1,k+1))-row(n)*T(n-1,k-1)` -/
def P6851896674319371387.Spec : Prop :=
  ∀ n, P6851896674319371387.a n = A178112 n

end A178112

/-! ## A178112.P14911506672788462483

`T(n-1,k-1)+T(row(n)-2, col(n))*T(col(n), T(n-1,k))` with `a(0)=1`
-/

namespace A178112.P14911506672788462483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A178112.P14911506672788462483

namespace A178112

/-- `T(n-1,k-1)+T(row(n)-2, col(n))*T(col(n), T(n-1,k))` -/
def P14911506672788462483.Spec : Prop :=
  ∀ n, (P14911506672788462483.a n : ℤ) = A178112 n

end A178112

/-! ## A178112.P9372346266685232075

`A119963(n)-T(n-1,k)` with `a(0)=1`
-/

namespace A178112.P9372346266685232075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119963 n - SequenceMachineLib.triUp a n

end

end A178112.P9372346266685232075

namespace A178112

/-- `A119963(n)-T(n-1,k)` -/
def P9372346266685232075.Spec : Prop :=
  ∀ n, P9372346266685232075.a n = A178112 n

end A178112

/-! ## A178112.P721390632758675589

`lcm(A051159(n), A369736(n))`
-/

namespace A178112.P721390632758675589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051159 n) (A369736 n)

end

end A178112.P721390632758675589

namespace A178112

/-- `lcm(A051159(n), A369736(n))` -/
def P721390632758675589.Spec : Prop :=
  ∀ n, (P721390632758675589.a n : ℤ) = A178112 n

end A178112

/-! ## A178112.P10234567992871743151

`A369736(n)²*A119963(n)`
-/

namespace A178112.P10234567992871743151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369736 n ^ 2 * A119963 n

end

end A178112.P10234567992871743151

namespace A178112

/-- `A369736(n)²*A119963(n)` -/
def P10234567992871743151.Spec : Prop :=
  ∀ n, P10234567992871743151.a n = A178112 n

end A178112

/-! ## A178112.P8986308768398296988

`A369736(n)²*A211226(n)`
-/

namespace A178112.P8986308768398296988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369736 n ^ 2 * A211226 n

end

end A178112.P8986308768398296988

namespace A178112

/-- `A369736(n)²*A211226(n)` -/
def P8986308768398296988.Spec : Prop :=
  ∀ n, P8986308768398296988.a n = A178112 n

end A178112

/-! ## A178112.P6210304787021061564

`A051159(n)*A128174(n+1)`
-/

namespace A178112.P6210304787021061564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n * A128174 (n + 1)

end

end A178112.P6210304787021061564

namespace A178112

/-- `A051159(n)*A128174(n+1)` -/
def P6210304787021061564.Spec : Prop :=
  ∀ n, P6210304787021061564.a n = A178112 n

end A178112

/-! ## A178112.P16100568636668246353

`A119963(n)*A128174(n+1)`
-/

namespace A178112.P16100568636668246353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n * A128174 (n + 1)

end

end A178112.P16100568636668246353

namespace A178112

/-- `A119963(n)*A128174(n+1)` -/
def P16100568636668246353.Spec : Prop :=
  ∀ n, P16100568636668246353.a n = A178112 n

end A178112

/-! ## A178112.P7958437622242267242

`A128174(n+1)*A211226(n)`
-/

namespace A178112.P7958437622242267242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A211226 n

end

end A178112.P7958437622242267242

namespace A178112

/-- `A128174(n+1)*A211226(n)` -/
def P7958437622242267242.Spec : Prop :=
  ∀ n, P7958437622242267242.a n = A178112 n

end A178112

/-! ## A178112.P5415628403537967948

`A004736(n+1)%2*A051159(n)`
-/

namespace A178112.P5415628403537967948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 1)) 2 * A051159 n

end

end A178112.P5415628403537967948

namespace A178112

/-- `A004736(n+1)%2*A051159(n)` -/
def P5415628403537967948.Spec : Prop :=
  ∀ n, P5415628403537967948.a n = A178112 n

end A178112

/-! ## A178112.P9530614609731357189

`A051159(n)%A225750(n)`
-/

namespace A178112.P9530614609731357189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051159 n) (A225750 n)

end

end A178112.P9530614609731357189

namespace A178112

/-- `A051159(n)%A225750(n)` -/
def P9530614609731357189.Spec : Prop :=
  ∀ n, P9530614609731357189.a n = A178112 n

end A178112

/-! ## A178112.P418969177332731697

`A119963(n)%A225750(n)`
-/

namespace A178112.P418969177332731697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119963 n) (A225750 n)

end

end A178112.P418969177332731697

namespace A178112

/-- `A119963(n)%A225750(n)` -/
def P418969177332731697.Spec : Prop :=
  ∀ n, P418969177332731697.a n = A178112 n

end A178112

/-!
# A178113: Transform of C(n+1,floor((n+1)/2)) by A178112.

The programs for A178113, there is no canonical definition to state claims against.
-/

/-! ## A178113.P3101150063827066000

`A180562(∑[or(1, n+1)])`
-/

namespace A178113.P3101150063827066000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178113.P3101150063827066000

/-! ## A178113.P12978476944861473051

`A180562(∑[n+2]-1-floor(n/2))`
-/

namespace A178113.P12978476944861473051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - ⌊(n : ℚ) / 2⌋).toNat

end

end A178113.P12978476944861473051

/-! ## A178113.P6390639555038092708

`gcd(2, n+1)*A005773(floor(n/2)+1)`
-/

namespace A178113.P6390639555038092708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A005773 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A178113.P6390639555038092708

/-! ## A178113.P17256294455935767468

`A005213(n+1)+A002426(floor(n/2))`
-/

namespace A178113.P17256294455935767468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (n + 1) + A002426 ⌊(n : ℚ) / 2⌋.toNat

end

end A178113.P17256294455935767468

/-! ## A178113.P11388590730855127829

`A000034(n)*A005773(∑[∑[(-1)^n]])`
-/

namespace A178113.P11388590730855127829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A005773 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178113.P11388590730855127829

/-!
# A178115: a(n)=(-1)^C(n+1,2)*(F(n+1)*(1+(-1)^n)/2+F(n+2)*(1-(-1)^n)/2).

The programs for A178115, the canonical program `A178115.P14466053834847224509` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178115 has offset 0).

The definition of A178115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178115.P14466053834847224509

`ogf((1-2x+x^2-x^3)/(1+3x^2+x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178115

/-- `ogf((1-2x+x^2-x^3)/(1+3x^2+x^4))` -/
def P14466053834847224509.Spec : Prop :=
  ∀ n, P14466053834847224509.a n = A178115 n

theorem P14466053834847224509.correct : P14466053834847224509.Spec := by
  intro n
  simp only [A178115]

end A178115

/-! ## A178115.P7064342339426813291

`A099496(∑[n%2])`
-/

namespace A178115.P7064342339426813291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178115.P7064342339426813291

namespace A178115

/-- `A099496(∑[n%2])` -/
def P7064342339426813291.Spec : Prop :=
  ∀ n, P7064342339426813291.a n = A178115 n

end A178115

/-! ## A178115.P14911235671445567382

`A099496(∑[char[2*n+1]])`
-/

namespace A178115.P14911235671445567382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178115.P14911235671445567382

namespace A178115

/-- `A099496(∑[char[2*n+1]])` -/
def P14911235671445567382.Spec : Prop :=
  ∀ n, P14911235671445567382.a n = A178115 n

end A178115

/-! ## A178115.P2196423212252848013

`A087960(n)*A094967(n+1)`
-/

namespace A178115.P2196423212252848013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A094967 (n + 1)

end

end A178115.P2196423212252848013

namespace A178115

/-- `A087960(n)*A094967(n+1)` -/
def P2196423212252848013.Spec : Prop :=
  ∀ n, P2196423212252848013.a n = A178115 n

end A178115

/-! ## A178115.P17068923957281463894

`∑[A000032(n+1)*A163805(n)]`
-/

namespace A178115.P17068923957281463894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A163805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178115.P17068923957281463894

namespace A178115

/-- `∑[A000032(n+1)*A163805(n)]` -/
def P17068923957281463894.Spec : Prop :=
  ∀ n, P17068923957281463894.a n = A178115 n

end A178115

/-! ## A178115.P5239093571482998835

`∑[A000204(n+1)*A163805(n)]`
-/

namespace A178115.P5239093571482998835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A163805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178115.P5239093571482998835

namespace A178115

/-- `∑[A000204(n+1)*A163805(n)]` -/
def P5239093571482998835.Spec : Prop :=
  ∀ n, P5239093571482998835.a n = A178115 n

end A178115

/-! ## A178115.P3278714697813614681

`A000045(or(1, n+1))*A057077(n+1)`
-/

namespace A178115.P3278714697813614681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.lor 1 (n + 1)) * A057077 (n + 1)

end

end A178115.P3278714697813614681

namespace A178115

/-- `A000045(or(1, n+1))*A057077(n+1)` -/
def P3278714697813614681.Spec : Prop :=
  ∀ n, P3278714697813614681.a n = A178115 n

end A178115

/-! ## A178115.P16715208999177301808

`A333378(or(1, n+1))`
-/

namespace A178115.P16715208999177301808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (Nat.lor 1 (n + 1))

end

end A178115.P16715208999177301808

namespace A178115

/-- `A333378(or(1, n+1))` -/
def P16715208999177301808.Spec : Prop :=
  ∀ n, P16715208999177301808.a n = A178115 n

end A178115

/-! ## A178115.P8531526066880527904

`A333378(gcd(2, n+1)+n)`
-/

namespace A178115.P8531526066880527904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (Nat.gcd 2 (n + 1) + n)

end

end A178115.P8531526066880527904

namespace A178115

/-- `A333378(gcd(2, n+1)+n)` -/
def P8531526066880527904.Spec : Prop :=
  ∀ n, P8531526066880527904.a n = A178115 n

end A178115

/-! ## A178115.P13696126296668880826

`A333378(A109613(n+1))`
-/

namespace A178115.P13696126296668880826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (A109613 (n + 1)).toNat

end

end A178115.P13696126296668880826

namespace A178115

/-- `A333378(A109613(n+1))` -/
def P13696126296668880826.Spec : Prop :=
  ∀ n, P13696126296668880826.a n = A178115 n

end A178115

/-! ## A178115.P7292560795690433260

`A333378(A063196(n+2))`
-/

namespace A178115.P7292560795690433260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (A063196 (n + 2)).toNat

end

end A178115.P7292560795690433260

namespace A178115

/-- `A333378(A063196(n+2))` -/
def P7292560795690433260.Spec : Prop :=
  ∀ n, P7292560795690433260.a n = A178115 n

end A178115

/-!
# A178116: Coefficient array for polynomials P(n,x)=x*P(n-1,x)+floor(n^2/4)*P(n-2,x), P(0,x)=1,P(1,x)=x.

The programs for A178116, there is no canonical definition to state claims against.
-/

/-! ## A178116.P8455808039157410765

`A034584(A164652(n))`
-/

namespace A178116.P8455808039157410765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 (A164652 n).toNat

end

end A178116.P8455808039157410765

/-! ## A178116.P13502510521317495661

`A157477(A060524(n))`
-/

namespace A178116.P13502510521317495661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A060524 n).toNat

end

end A178116.P13502510521317495661

/-! ## A178116.P14638532794419388560

`A162351(A097591(n))`
-/

namespace A178116.P14638532794419388560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A097591 n).toNat

end

end A178116.P14638532794419388560

/-! ## A178116.P9749204856920028741

`A382397(A053121(n)^A382397(n+2))`
-/

namespace A178116.P9749204856920028741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (SequenceMachineLib.roundAway ((A053121 n : ℚ) ^ (A382397 (n + 2) : ℤ))).toNat

end

end A178116.P9749204856920028741

/-! ## A178116.P7190223652786906652

`and(A290348(n+1), A336383(A185951(n+1)))`
-/

namespace A178116.P7190223652786906652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290348 (n + 1)) (A336383 (A185951 (n + 1)).toNat)

end

end A178116.P7190223652786906652

/-!
# A178117: Inverse of coefficient array for polynomials P(n,x)=x*P(n-1,x)+floor(n^2/4)*P(n-2,x), P(0,x)=1,P(1,x)=x.

The programs for A178117, there is no canonical definition to state claims against.
-/

/-! ## A178117.P5424687505627380471

`A066325(n)+A016424(A316209(n+1))`
-/

namespace A178117.P5424687505627380471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n + A016424 (A316209 (n + 1)).toNat

end

end A178117.P5424687505627380471

/-! ## A178117.P13952612761341873608

`A137297(n+1)-A055641(A172343(n))`
-/

namespace A178117.P13952612761341873608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137297 (n + 1) - A055641 (A172343 n).toNat

end

end A178117.P13952612761341873608

/-! ## A178117.P7881408498772096054

`A178798(A045912(n))+A066325(n)`
-/

namespace A178117.P7881408498772096054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A045912 n).toNat + A066325 n

end

end A178117.P7881408498772096054

/-! ## A178117.P15958070955624353651

`A066325(n)-A016389(A001935(n))`
-/

namespace A178117.P15958070955624353651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n - A016389 (A001935 n).toNat

end

end A178117.P15958070955624353651

/-! ## A178117.P4222957448324930659

`A066325(n)-A102683(A001405(n))`
-/

namespace A178117.P4222957448324930659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 n - A102683 (A001405 n).toNat

end

end A178117.P4222957448324930659

/-!
# A178119: Expansion of 1/(1-2x-x^2/(1-4x-3x^2/(1-6x-5x^2/(1-8x-7x^2/(1-...))))) (continued fraction).

The programs for A178119, there is no canonical definition to state claims against.
-/

/-! ## A178119.P6453221420787512207

`A185998(1+n)`
-/

namespace A178119.P6453221420787512207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185998 (1 + n)

end

end A178119.P6453221420787512207

/-! ## A178119.P12639933618815527647

`record[A185998(n)-char[1]]`
-/

namespace A178119.P12639933618815527647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185998 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178119.P12639933618815527647

/-! ## A178119.P2584878328404219887

`record[A185998(A008611(n))]`
-/

namespace A178119.P2584878328404219887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185998 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178119.P2584878328404219887

/-! ## A178119.P7548273388525207136

`record[A185998(A008612(n))]`
-/

namespace A178119.P7548273388525207136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185998 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178119.P7548273388525207136

/-! ## A178119.P7718682672493727101

`record[A185998(A056926(n))]`
-/

namespace A178119.P7718682672493727101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185998 (A056926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178119.P7718682672493727101

/-!
# A178121: Inverse of coefficient array of orthogonal polynomials P(n,x)=(x-2n)*P(n-1,x)-(2n-3)*P(n-2,x), P(0,x)=1,P(1,x)=x-2.

The programs for A178121, there is no canonical definition to state claims against.
-/

/-! ## A178121.P14543342111948335056

`A239088(A007318(n)*A143409(n))`
-/

namespace A178121.P14543342111948335056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (A007318 n * A143409 n).toNat

end

end A178121.P14543342111948335056

/-! ## A178121.P3878449690706917285

`A239088(lcm(A007318(n), A143409(n)))`
-/

namespace A178121.P3878449690706917285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (Int.lcm (A007318 n) (A143409 n))

end

end A178121.P3878449690706917285

/-!
# A178122: Triangle T(n,m) = A060187(n+1,m+1) + 2*binomial(n,m) - 2, read by rows.

The programs for A178122, the canonical program `A178122.P3290147267730046538` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178122 has offset 0).

The definition of A178122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A060187(C(row(n)+1, 2)+col(n)+1)+2*C(row(n), col(n))-2` (program `A178122.P3290147267730046538`, by `A178122.P3290147267730046538.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178122.P3290147267730046538

`A060187(C(row(n)+1, 2)+col(n)+1)+2*C(row(n), col(n))-2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A178122

/-- `A060187(C(row(n)+1, 2)+col(n)+1)+2*C(row(n), col(n))-2` -/
def P3290147267730046538.Spec : Prop :=
  ∀ n, P3290147267730046538.a n = A178122 n

theorem P3290147267730046538.correct : P3290147267730046538.Spec := by
  intro n
  simp only [A178122]

end A178122

/-! ## A178122.P4956501265360315451

`A060187(n+1)+A109128(n)-1`
-/

namespace A178122.P4956501265360315451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A109128 n - 1)

end

end A178122.P4956501265360315451

namespace A178122

/-- `A060187(n+1)+A109128(n)-1` -/
def P4956501265360315451.Spec : Prop :=
  ∀ n, P4956501265360315451.a n = A178122 n

end A178122

/-! ## A178122.P14676803408364282667

`A060187(n+1)+A028326(n)-2`
-/

namespace A178122.P14676803408364282667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A028326 n - 2)

end

end A178122.P14676803408364282667

namespace A178122

/-- `A060187(n+1)+A028326(n)-2` -/
def P14676803408364282667.Spec : Prop :=
  ∀ n, P14676803408364282667.a n = A178122 n

end A178122

/-! ## A178122.P16047248855732987207

`A060187(n+1)+2*A014473(n)`
-/

namespace A178122.P16047248855732987207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + 2 * A014473 n

end

end A178122.P16047248855732987207

namespace A178122

/-- `A060187(n+1)+2*A014473(n)` -/
def P16047248855732987207.Spec : Prop :=
  ∀ n, P16047248855732987207.a n = A178122 n

end A178122

/-! ## A178122.P1637432759131568468

`A028326(n)+(A168551(n)+A168517(n))/2-2`
-/

namespace A178122.P1637432759131568468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) + ((A168551 n + A168517 n : ℚ) / 2 - 2)

end

end A178122.P1637432759131568468

namespace A178122

/-- `A028326(n)+(A168551(n)+A168517(n))/2-2` -/
def P1637432759131568468.Spec : Prop :=
  ∀ n, P1637432759131568468.a n = (A178122 n : ℚ)

end A178122

/-! ## A178122.P5803323207365038632

`A109128(n)+A176200(n)-A154338(n)`
-/

namespace A178122.P5803323207365038632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (A176200 n - A154338 n)

end

end A178122.P5803323207365038632

namespace A178122

/-- `A109128(n)+A176200(n)-A154338(n)` -/
def P5803323207365038632.Spec : Prop :=
  ∀ n, P5803323207365038632.a n = A178122 n

end A178122

/-! ## A178122.P5722581124956973811

`A060187(n+1)+A005843(A014473(n))`
-/

namespace A178122.P5722581124956973811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + A005843 (A014473 n).toNat

end

end A178122.P5722581124956973811

namespace A178122

/-- `A060187(n+1)+A005843(A014473(n))` -/
def P5722581124956973811.Spec : Prop :=
  ∀ n, P5722581124956973811.a n = A178122 n

end A178122

/-! ## A178122.P15478962171690518280

`A060187(n+1)+A005843(A007318(n)-1)`
-/

namespace A178122.P15478962171690518280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + A005843 (A007318 n - 1).toNat

end

end A178122.P15478962171690518280

namespace A178122

/-- `A060187(n+1)+A005843(A007318(n)-1)` -/
def P15478962171690518280.Spec : Prop :=
  ∀ n, P15478962171690518280.a n = A178122 n

end A178122

/-! ## A178122.P3323089888583760658

`A060187(n+1)+A004442(A109128(n))`
-/

namespace A178122.P3323089888583760658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + A004442 (A109128 n).toNat

end

end A178122.P3323089888583760658

namespace A178122

/-- `A060187(n+1)+A004442(A109128(n))` -/
def P3323089888583760658.Spec : Prop :=
  ∀ n, P3323089888583760658.a n = A178122 n

end A178122

/-! ## A178122.P8160786592657847126

`A060187(n+1)+A004524(A131061(n))`
-/

namespace A178122.P8160786592657847126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + A004524 (A131061 n).toNat

end

end A178122.P8160786592657847126

namespace A178122

/-- `A060187(n+1)+A004524(A131061(n))` -/
def P8160786592657847126.Spec : Prop :=
  ∀ n, P8160786592657847126.a n = A178122 n

end A178122

/-!
# A178123: Expansion of 1/(1-x-x^2/(1-2x-3x^2/(1-3x-5x^2/(1-4x-7x^2/(1-... (continued fraction).

The programs for A178123, there is no canonical definition to state claims against.
-/

/-! ## A178123.P4971126567135263352

`A178125(∑[n])`
-/

namespace A178123.P4971126567135263352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178125 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178123.P4971126567135263352

/-! ## A178123.P1449892836467303732

`and(-1, A178125(A000217(n)))`
-/

namespace A178123.P1449892836467303732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A178125 (A000217 n).toNat)

end

end A178123.P1449892836467303732

/-! ## A178123.P10476472801742088689

`and(-1, A178125(A179865(n+1)))`
-/

namespace A178123.P10476472801742088689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A178125 (A179865 (n + 1)).toNat)

end

end A178123.P10476472801742088689

/-! ## A178123.P5063034848356931143

`A178125(C(n+1, 2))+A178105(n+1)`
-/

namespace A178123.P5063034848356931143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178125 (Nat.choose (n + 1) 2) + A178105 (n + 1)

end

end A178123.P5063034848356931143

/-! ## A178123.P8411733568509355989

`A178125(A000217(n))+A033665(n)`
-/

namespace A178123.P8411733568509355989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178125 (A000217 n).toNat + A033665 n

end

end A178123.P8411733568509355989

/-!
# A178125: Inverse of coefficient array of orthogonal polynomials P(n,x)=(x-n)*P(n-1,x)-(2n-3)*P(n-2,x), P(0,x)=1,P(1,x)=x-1.

The programs for A178125, there is no canonical definition to state claims against.
-/

/-! ## A178125.P14356886943485083105

`A147315(n)-A010054(A020732(n))`
-/

namespace A178125.P14356886943485083105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147315 n - A010054 (A020732 n).toNat

end

end A178125.P14356886943485083105

/-! ## A178125.P4336605868407934305

`A147315(n)-A025465(A036653(n))`
-/

namespace A178125.P4336605868407934305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147315 n - A025465 (A036653 n).toNat

end

end A178125.P4336605868407934305

/-! ## A178125.P17389162665116453353

`A147315(n)-A172542(A078121(n))`
-/

namespace A178125.P17389162665116453353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147315 n - A172542 (A078121 n).toNat

end

end A178125.P17389162665116453353

/-! ## A178125.P3629297464230992664

`A147315(n)-A147314(A155451(n))`
-/

namespace A178125.P3629297464230992664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147315 n - A147314 (A155451 n).toNat

end

end A178125.P3629297464230992664

/-! ## A178125.P10931402166954295875

`A147315(n)-A185254(A132393(n))`
-/

namespace A178125.P10931402166954295875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147315 n - A185254 (A132393 n).toNat

end

end A178125.P10931402166954295875

/-!
# A178126: Triangle T(n, k) = coefficients of (n+1)!*(binomial(x+n+1, n+1) - binomial(x, n+1)), read by rows.

The programs for A178126, the canonical program `A178126.P4675890471506172200` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178126 has offset 0).

The definition of A178126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178126.P4675890471506172200

`A130534(A007401(n+1))-A048994(A007401(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A178126

/-- `A130534(A007401(n+1))-A048994(A007401(n+1))` -/
def P4675890471506172200.Spec : Prop :=
  ∀ n, P4675890471506172200.a n = A178126 n

theorem P4675890471506172200.correct : P4675890471506172200.Spec := by
  intro n
  simp only [A178126]

end A178126

/-! ## A178126.P11332626404715357159

`A125714(n+1)-A048994(A007401(n+1))`
-/

namespace A178126.P11332626404715357159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125714 (n + 1) - A048994 (A007401 (n + 1)).toNat

end

end A178126.P11332626404715357159

namespace A178126

/-- `A125714(n+1)-A048994(A007401(n+1))` -/
def P11332626404715357159.Spec : Prop :=
  ∀ n, P11332626404715357159.a n = A178126 n

end A178126

/-!
# A178127: Lesser of twin Ramanujan primes.

The programs for A178127, there is no canonical definition to state claims against.
-/

/-! ## A178127.P18105895712667681806

`A190654(2*n+1)`
-/

namespace A178127.P18105895712667681806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (2 * n + 1)

end

end A178127.P18105895712667681806

/-! ## A178127.P15279161580967371476

`∩[A001359(n+1), A190654(n+1)]`
-/

namespace A178127.P15279161580967371476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P15279161580967371476

/-! ## A178127.P16557555484928323388

`∩[A178128(n+1), A190654(n+1)]`
-/

namespace A178127.P16557555484928323388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P16557555484928323388

/-! ## A178127.P2411471804551353532

`∩[A190654(n+1), A378983(n+1)]`
-/

namespace A178127.P2411471804551353532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P2411471804551353532

/-! ## A178127.P245048773585411996

`∩[A190654(n+1), A087693(n)]`
-/

namespace A178127.P245048773585411996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P245048773585411996

/-! ## A178127.P15288576212246841882

`∩[A111166(n+1), A190654(n+1)]`
-/

namespace A178127.P15288576212246841882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P15288576212246841882

/-! ## A178127.P3278534359122548724

`∩[A124588(n+1), A190654(n+1)]`
-/

namespace A178127.P3278534359122548724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P3278534359122548724

/-! ## A178127.P16958613736264385880

`∩[A181747(n+1), A190654(n+1)]`
-/

namespace A178127.P16958613736264385880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P16958613736264385880

/-! ## A178127.P12501368950989512631

`∩[A190654(n+1), A238528(n+1)]`
-/

namespace A178127.P12501368950989512631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P12501368950989512631

/-! ## A178127.P4714478795405847932

`∩[A054799(n+1), A190654(n+1)]`
-/

namespace A178127.P4714478795405847932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P4714478795405847932

/-! ## A178127.P726922586685549239

`∩[A063700(n+1), A190654(n+1)]`
-/

namespace A178127.P726922586685549239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P726922586685549239

/-! ## A178127.P2933445986473996248

`∩[A190654(n+1), A280255(n+1)]`
-/

namespace A178127.P2933445986473996248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P2933445986473996248

/-! ## A178127.P10982640287246900280

`∩[A063693(n+1), A190654(n+1)]`
-/

namespace A178127.P10982640287246900280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P10982640287246900280

/-! ## A178127.P8323962469199723022

`∩[A190654(n+1), A229064(n+1)]`
-/

namespace A178127.P8323962469199723022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P8323962469199723022

/-! ## A178127.P4709994455137243111

`∩[A395788(n+1), A190654(n+1)]`
-/

namespace A178127.P4709994455137243111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P4709994455137243111

/-! ## A178127.P15614256402528347829

`∩[A073534(n+1), A190654(n+1)]`
-/

namespace A178127.P15614256402528347829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P15614256402528347829

/-! ## A178127.P7810136566303307295

`∩[A190654(n+1), A280590(n+1)]`
-/

namespace A178127.P7810136566303307295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P7810136566303307295

/-! ## A178127.P1777513914736124666

`∩[A001838(n+1), A190654(n+1)]`
-/

namespace A178127.P1777513914736124666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P1777513914736124666

/-! ## A178127.P11452635035329426718

`∩[A190654(n+1), A274212(n+1)]`
-/

namespace A178127.P11452635035329426718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178127.P11452635035329426718

/-! ## A178127.P7091330775988290244

`p?[∑[A182873(n+1)]]`
-/

namespace A178127.P7091330775988290244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182873 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178127.P7091330775988290244

/-!
# A178128: Lesser of twin primes if it is a Ramanujan prime.

The programs for A178128, there is no canonical definition to state claims against.
-/

/-! ## A178128.P8008469403753741343

`p?[A104272(n+1)+2]-2`
-/

namespace A178128.P8008469403753741343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A178128.P8008469403753741343

/-! ## A178128.P11076481523736536388

`∩[A001359(n+1), A104272(n+1)]`
-/

namespace A178128.P11076481523736536388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P11076481523736536388

/-! ## A178128.P5580975639365569104

`∩[A001838(n+1), A104272(n+1)]`
-/

namespace A178128.P5580975639365569104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P5580975639365569104

/-! ## A178128.P3346482248543757553

`∩[A054799(n+1), A104272(n+1)]`
-/

namespace A178128.P3346482248543757553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P3346482248543757553

/-! ## A178128.P10793411520198379274

`∩[A063693(n+1), A104272(n+1)]`
-/

namespace A178128.P10793411520198379274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P10793411520198379274

/-! ## A178128.P5536791291004053189

`∩[A063700(n+1), A104272(n+1)]`
-/

namespace A178128.P5536791291004053189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P5536791291004053189

/-! ## A178128.P907183879285515624

`∩[A104272(n+1), A181747(n+1)]`
-/

namespace A178128.P907183879285515624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P907183879285515624

/-! ## A178128.P2265422063401163330

`∩[A104272(n+1), A274212(n+1)]`
-/

namespace A178128.P2265422063401163330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P2265422063401163330

/-! ## A178128.P11617853156094730005

`∩[A104272(n+1), A280255(n+1)]`
-/

namespace A178128.P11617853156094730005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P11617853156094730005

/-! ## A178128.P256795703918875685

`∩[A104272(n+1), A280590(n+1)]`
-/

namespace A178128.P256795703918875685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P256795703918875685

/-! ## A178128.P7298273636775846387

`∩[A002476(n+1)-2, A104272(n+1)]`
-/

namespace A178128.P7298273636775846387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P7298273636775846387

/-! ## A178128.P11432690590049950736

`∩[A007645(n+1)-2, A104272(n+1)]`
-/

namespace A178128.P11432690590049950736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P11432690590049950736

/-! ## A178128.P3615199761848576326

`∩[A104272(n+1), A123365(n+1)-2]`
-/

namespace A178128.P3615199761848576326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P3615199761848576326

/-! ## A178128.P4389217134256369243

`∩[A104272(n+2), A279815(n+2)-2]`
-/

namespace A178128.P4389217134256369243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P4389217134256369243

/-! ## A178128.P2306809617769599990

`∩[A066147(n+1), A104272(n+1)]`
-/

namespace A178128.P2306809617769599990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P2306809617769599990

/-! ## A178128.P14755145518158606957

`∩[A072282(n+1), A104272(n+1)]`
-/

namespace A178128.P14755145518158606957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P14755145518158606957

/-! ## A178128.P4095999592204536258

`∩[A065873(n+1), A104272(n+1)]`
-/

namespace A178128.P4095999592204536258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P4095999592204536258

/-! ## A178128.P12244757048069212674

`∩[A067532(n+1), A104272(n+1)]`
-/

namespace A178128.P12244757048069212674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P12244757048069212674

/-! ## A178128.P2108181429481328987

`∩[A040976(n+1), A104272(n+1)]`
-/

namespace A178128.P2108181429481328987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178128.P2108181429481328987

/-! ## A178128.P13363074935568987455

`p?[A000040(A179196(n+1)+1)-2]`
-/

namespace A178128.P13363074935568987455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1) + 1).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178128.P13363074935568987455

/-!
# A178129: Partial sums of A050508.

The programs for A178129, the canonical program `A178129.P7515760070660203896` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178129 has offset 0).

The definition of A178129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178129.P16392297092727235700

`∑[n*round(ϕ*n)]`
-/

namespace A178129.P16392297092727235700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178129.P16392297092727235700

namespace A178129

/-- `∑[n*round(ϕ*n)]` -/
def P16392297092727235700.Spec : Prop :=
  ∀ n, P16392297092727235700.a n = A178129 n

end A178129

/-! ## A178129.P14732757551686313151

`a(n-1)+n*round(ϕ*n)` with `a(0)=0`
-/

namespace A178129.P14732757551686313151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ))

end

end A178129.P14732757551686313151

namespace A178129

/-- `a(n-1)+n*round(ϕ*n)` -/
def P14732757551686313151.Spec : Prop :=
  ∀ n, P14732757551686313151.a n = A178129 n

end A178129

/-! ## A178129.P15509706807849913105

`∑[2*A050508(n)]/2`
-/

namespace A178129.P15509706807849913105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050508 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A178129.P15509706807849913105

namespace A178129

/-- `∑[2*A050508(n)]/2` -/
def P15509706807849913105.Spec : Prop :=
  ∀ n, P15509706807849913105.a n = (A178129 n : ℚ)

end A178129

/-! ## A178129.P7317284852325436933

`lcm(∑[A050508(n)], A020985(n))`
-/

namespace A178129.P7317284852325436933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A178129.P7317284852325436933

namespace A178129

/-- `lcm(∑[A050508(n)], A020985(n))` -/
def P7317284852325436933.Spec : Prop :=
  ∀ n, (P7317284852325436933.a n : ℤ) = A178129 n

end A178129

/-! ## A178129.P15902300938694253812

`∑[A005843(n)*A007067(n)]/2`
-/

namespace A178129.P15902300938694253812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A007067 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A178129.P15902300938694253812

namespace A178129

/-- `∑[A005843(n)*A007067(n)]/2` -/
def P15902300938694253812.Spec : Prop :=
  ∀ n, P15902300938694253812.a n = (A178129 n : ℚ)

end A178129

/-! ## A178129.P14942942574636806073

`∑[A050508(n)]%A000594(n+1)`
-/

namespace A178129.P14942942574636806073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000594 (n + 1))

end

end A178129.P14942942574636806073

namespace A178129

/-- `∑[A050508(n)]%A000594(n+1)` -/
def P14942942574636806073.Spec : Prop :=
  ∀ n, P14942942574636806073.a n = A178129 n

end A178129

/-! ## A178129.P7515760070660203896

`A007318(C(3, n))*∑[A050508(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A178129

/-- `A007318(C(3, n))*∑[A050508(n)]` -/
def P7515760070660203896.Spec : Prop :=
  ∀ n, P7515760070660203896.a n = A178129 n

theorem P7515760070660203896.correct : P7515760070660203896.Spec := by
  intro n
  simp only [A178129]

end A178129

/-! ## A178129.P1616092655728302105

`A001221(A001316(n))*∑[A050508(n)]`
-/

namespace A178129.P1616092655728302105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178129.P1616092655728302105

namespace A178129

/-- `A001221(A001316(n))*∑[A050508(n)]` -/
def P1616092655728302105.Spec : Prop :=
  ∀ n, P1616092655728302105.a n = A178129 n

end A178129

/-! ## A178129.P10520030848752541608

`A000007(n+1)+∑[A050508(n)]`
-/

namespace A178129.P10520030848752541608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178129.P10520030848752541608

namespace A178129

/-- `A000007(n+1)+∑[A050508(n)]` -/
def P10520030848752541608.Spec : Prop :=
  ∀ n, P10520030848752541608.a n = A178129 n

end A178129

/-! ## A178129.P7884738863402653731

`∑[A050508(n)]*A000035(2*n+1)`
-/

namespace A178129.P7884738863402653731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000035 (2 * n + 1)

end

end A178129.P7884738863402653731

namespace A178129

/-- `∑[A050508(n)]*A000035(2*n+1)` -/
def P7884738863402653731.Spec : Prop :=
  ∀ n, P7884738863402653731.a n = A178129 n

end A178129

/-! ## A178129.P3919152398687279804

`A007318(∑[n+1])*∑[A050508(n)]`
-/

namespace A178129.P3919152398687279804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A178129.P3919152398687279804

namespace A178129

/-- `A007318(∑[n+1])*∑[A050508(n)]` -/
def P3919152398687279804.Spec : Prop :=
  ∀ n, P3919152398687279804.a n = A178129 n

end A178129

/-!
# A178130: Numbers whose fifth power is the sum of a positive square and cube: n^5 = x^2 + y^3 with x, y > 0.

The programs for A178130, there is no canonical definition to state claims against.
-/

/-! ## A178130.P11256687137797113984

`A227029(A077342(n+1))`
-/

namespace A178130.P11256687137797113984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227029 (A077342 (n + 1)).toNat

end

end A178130.P11256687137797113984

/-! ## A178130.P11355848035609664417

`A227029(A242474(n+1))`
-/

namespace A178130.P11355848035609664417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227029 (A242474 (n + 1)).toNat

end

end A178130.P11355848035609664417

/-! ## A178130.P18307509512873052451

`A227029(A351374(n+1))`
-/

namespace A178130.P18307509512873052451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227029 (A351374 (n + 1)).toNat

end

end A178130.P18307509512873052451

/-! ## A178130.P8639457761172395029

`A227029(∑[A271955(n)^n])`
-/

namespace A178130.P8639457761172395029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271955 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227029 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178130.P8639457761172395029

/-! ## A178130.P5357296662441397453

`A227029(n+1)%A325042(A001358(n+1))`
-/

namespace A178130.P5357296662441397453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227029 (n + 1)) (A325042 (A001358 (n + 1)).toNat)

end

end A178130.P5357296662441397453

/-!
# A178132: Partial sums of A003995.

The programs for A178132, there is no canonical definition to state claims against.
-/

/-! ## A178132.P14424427173338678683

`∑[A003995(n+1)]`
-/

namespace A178132.P14424427173338678683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P14424427173338678683

/-! ## A178132.P17579856027558319638

`a(n-1)+A014963(4*n+2)*A003995(n+1)` with `a(0)=0`
-/

namespace A178132.P17579856027558319638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A014963 (4 * n + 2) * A003995 (n + 1)

end

end A178132.P17579856027558319638

/-! ## A178132.P2576970940166175340

`∑[eq[0, A000007(A279360(n))]]`
-/

namespace A178132.P2576970940166175340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A279360 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P2576970940166175340

/-! ## A178132.P8932767240270959683

`∑[record[A003995(A286602(n))]]`
-/

namespace A178132.P8932767240270959683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (A286602 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P8932767240270959683

/-! ## A178132.P6134786928832542749

`∑[record[A003995(A134478(n))]]`
-/

namespace A178132.P6134786928832542749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P6134786928832542749

/-! ## A178132.P10993040782146087551

`∑[lt[2, A000005(A331844(n)+1)+1]]`
-/

namespace A178132.P10993040782146087551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A331844 n + 1).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P10993040782146087551

/-! ## A178132.P4634517842930472278

`∑[record[A003995(A028920(n))]]`
-/

namespace A178132.P4634517842930472278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P4634517842930472278

/-! ## A178132.P6923451661523897719

`∑[eq[0, A000038(A331844(n))]]`
-/

namespace A178132.P6923451661523897719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A331844 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P6923451661523897719

/-! ## A178132.P10384469909091262194

`∑[lt[2, A017665(A331844(n)+1)²]]`
-/

namespace A178132.P10384469909091262194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A331844 n + 1).toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P10384469909091262194

/-! ## A178132.P1716018553265724904

`∑[record[A003995(A193592(n))]]`
-/

namespace A178132.P1716018553265724904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P1716018553265724904

/-! ## A178132.P4738993703381332932

`∑[record[A003995(A308622(n))]]`
-/

namespace A178132.P4738993703381332932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (A308622 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178132.P4738993703381332932

/-!
# A178133: Number of odd semiprimes between consecutive squares.

The programs for A178133, there is no canonical definition to state claims against.
-/

/-! ## A178133.P15566050182284498519

`Δ[A205728(n+1)]`
-/

namespace A178133.P15566050182284498519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178133.P15566050182284498519

/-! ## A178133.P985691428231235616

`abs(Δ[A205728(A052938(2*n))])`
-/

namespace A178133.P985691428231235616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A178133.P985691428231235616

/-! ## A178133.P7686976252312555964

`Δ[A023443(A205728(Δ[n²]-n))]`
-/

namespace A178133.P7686976252312555964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A205728 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178133.P7686976252312555964

/-! ## A178133.P15013333922833788156

`A205728(n+2)-A205728(n+1)`
-/

namespace A178133.P15013333922833788156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (n + 2) - A205728 (n + 1)

end

end A178133.P15013333922833788156

/-! ## A178133.P8702713112077076709

`Δ[A205728(A052938(2*n))]*A057427(n)`
-/

namespace A178133.P8702713112077076709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057427 n

end

end A178133.P8702713112077076709

/-! ## A178133.P17288448352266345478

`Δ[A205728(A052938(2*n))]%A015986(n)`
-/

namespace A178133.P17288448352266345478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A015986 n)

end

end A178133.P17288448352266345478

/-! ## A178133.P1204825921199817532

`A033999(n)²*Δ[A205728(A052938(2*n))]`
-/

namespace A178133.P1204825921199817532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205728 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A178133.P1204825921199817532

/-! ## A178133.P10780447697377903119

`Δ[A205727(n+1)-A033270(n+1)]`
-/

namespace A178133.P10780447697377903119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205727 (n + 1) - A033270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178133.P10780447697377903119

/-!
# A178136: Balanced primes separated from the next lower and next higher prime neighbors by 60.

The programs for A178136, there is no canonical definition to state claims against.
-/

/-! ## A178136.P7242485818576446207

`A089234(n+1)+60`
-/

namespace A178136.P7242485818576446207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089234 (n + 1) + 60

end

end A178136.P7242485818576446207

/-!
# A178137: Partial sums of A068148.

The programs for A178137, there is no canonical definition to state claims against.
-/

/-! ## A178137.P3648352062390152654

`∑[A068148(n+1)]`
-/

namespace A178137.P3648352062390152654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178137.P3648352062390152654

/-! ## A178137.P8611409192720069677

`∑[record[A068148(A082854(n))]]`
-/

namespace A178137.P8611409192720069677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (A082854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178137.P8611409192720069677

/-! ## A178137.P7137919137458751001

`∑[record[A068148(A106466(n))]]`
-/

namespace A178137.P7137919137458751001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178137.P7137919137458751001

/-! ## A178137.P5181940979204926900

`∑[record[A068148(A263131(n))]]`
-/

namespace A178137.P5181940979204926900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178137.P5181940979204926900

/-! ## A178137.P5439339199938258766

`∑[p?[A376425(n+1)]]`
-/

namespace A178137.P5439339199938258766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376425 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178137.P5439339199938258766

/-! ## A178137.P10505586620196023531

`∑[record[A068148(A020986(n))]]`
-/

namespace A178137.P10505586620196023531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178137.P10505586620196023531

/-! ## A178137.P12569854622931670472

`∑[record[A068148(A028920(n))]]`
-/

namespace A178137.P12569854622931670472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068148 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178137.P12569854622931670472

/-!
# A178138: Apply partial sum operator 4 times to primes.

The programs for A178138, the canonical program `A178138.P5916652078066067568` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178138 has offset 1).

The definition of A178138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178138.P5916652078066067568

`∑[A014150(1+n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A178138

/-- `∑[A014150(1+n)]` -/
def P5916652078066067568.Spec : Prop :=
  ∀ n, P5916652078066067568.a n = A178138 (n + 1)

theorem P5916652078066067568.correct : P5916652078066067568.Spec := by
  intro n
  simp only [A178138, Nat.add_sub_cancel]

end A178138

/-! ## A178138.P1828778186199828513

`∑[∑[A014148(1+n)]]`
-/

namespace A178138.P1828778186199828513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178138.P1828778186199828513

namespace A178138

/-- `∑[∑[A014148(1+n)]]` -/
def P1828778186199828513.Spec : Prop :=
  ∀ n, P1828778186199828513.a n = A178138 (n + 1)

end A178138

/-! ## A178138.P3217444422444755814

`∑[∑[∑[A007504(n+1)]]]`
-/

namespace A178138.P3217444422444755814
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178138.P3217444422444755814

namespace A178138

/-- `∑[∑[∑[A007504(n+1)]]]` -/
def P3217444422444755814.Spec : Prop :=
  ∀ n, P3217444422444755814.a n = A178138 (n + 1)

end A178138

/-! ## A178138.P15050426702185134645

`∑[∑[∑[∑[A000040(n+1)]]]]`
-/

namespace A178138.P15050426702185134645
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178138.P15050426702185134645

namespace A178138

/-- `∑[∑[∑[∑[A000040(n+1)]]]]` -/
def P15050426702185134645.Spec : Prop :=
  ∀ n, P15050426702185134645.a n = A178138 (n + 1)

end A178138

/-! ## A178138.P919635005874455502

`A254784(n+2)-(A254784(n+1)+A014150(n+2))`
-/

namespace A178138.P919635005874455502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254784 (n + 2) - (A254784 (n + 1) + A014150 (n + 2))

end

end A178138.P919635005874455502

namespace A178138

/-- `A254784(n+2)-(A254784(n+1)+A014150(n+2))` -/
def P919635005874455502.Spec : Prop :=
  ∀ n, P919635005874455502.a n = A178138 (n + 1)

end A178138

/-! ## A178138.P7768497572390946869

`∑[∑[∑[∑[p?[comp[n²]]]]]]`
-/

namespace A178138.P7768497572390946869
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => (f5 j).Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178138.P7768497572390946869

namespace A178138

/-- `∑[∑[∑[∑[p?[comp[n²]]]]]]` -/
def P7768497572390946869.Spec : Prop :=
  ∀ n, (P7768497572390946869.a n : ℤ) = A178138 (n + 1)

end A178138

/-! ## A178138.P14163116349639598000

`∑[∑[A254858(∑[n+3])]]`
-/

namespace A178138.P14163116349639598000
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254858 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178138.P14163116349639598000

namespace A178138

/-- `∑[∑[A254858(∑[n+3])]]` -/
def P14163116349639598000.Spec : Prop :=
  ∀ n, P14163116349639598000.a n = A178138 (n + 1)

end A178138

/-!
# A178139: Distance between n and the next number with the same number of prime factors (counted with multiplicity).

The programs for A178139, there is no canonical definition to state claims against.
-/

/-! ## A178139.P11637922337675778238

`A165712(n+2)-(n+2)`
-/

namespace A178139.P11637922337675778238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165712 (n + 2) - (n + 2 : ℤ)

end

end A178139.P11637922337675778238

/-! ## A178139.P1973668754077679819

`A165712((n^(1/2))²+2)%(n+2)`
-/

namespace A178139.P1973668754077679819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165712 (SequenceMachineLib.roundAway (((n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2 + 2)).toNat) (n + 2 : ℤ)

end

end A178139.P1973668754077679819

/-! ## A178139.P14800825228931391980

`A023444(A165712(n+2)-n)`
-/

namespace A178139.P14800825228931391980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A165712 (n + 2) - (n : ℤ)).toNat

end

end A178139.P14800825228931391980

/-! ## A178139.P2805964172207125821

`A289207(A165712(n+2)-n)`
-/

namespace A178139.P2805964172207125821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A165712 (n + 2) - (n : ℤ)).toNat

end

end A178139.P2805964172207125821

/-! ## A178139.P1052125967996131098

`A000027(A165712(n+2)%(n+2))`
-/

namespace A178139.P1052125967996131098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A165712 (n + 2)) (n + 2 : ℤ)).toNat

end

end A178139.P1052125967996131098

/-! ## A178139.P7457337186649761778

`(A165712(n+2)+2*A000217(n+1))%(n+2)`
-/

namespace A178139.P7457337186649761778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165712 (n + 2) + 2 * A000217 (n + 1)) (n + 2 : ℤ)

end

end A178139.P7457337186649761778

/-! ## A178139.P5418412771926424210

`A144328(A165712(n+2)+∑[n])`
-/

namespace A178139.P5418412771926424210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A165712 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A178139.P5418412771926424210

/-!
# A178141: Period 6: repeat [4, -1, 2, -4, 1, 2].

The programs for A178141, the canonical program `A178141.P13575097462792676694` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178141 has offset 0).

The definition of A178141 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A178141.anchor (n : ℕ) : A178141 n = [4, -1, 2, -4, 1, 2].getD (n % 6) 0` in `Proof.A178.A178141`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178141.P13575097462792676694

`a(n-6)` with `a(0)=4, a(1)=-1, a(2)=2, a(3)=-4, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178141

/-- `a(n-6)` -/
def P13575097462792676694.Spec : Prop :=
  ∀ n, P13575097462792676694.a n = A178141 n

theorem P13575097462792676694.correct : P13575097462792676694.Spec := by
  intro n
  simp only [A178141]

end A178141

/-!
# A178142: Sum over the divisors d = 2 and/or 3 of n.

The programs for A178142, the canonical program `A178142.P6439760989200656419` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178142 has offset 1).

The definition of A178142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178142.P6439760989200656419

`ogf((2x+5x^2+5x^3)/(1+x-x^3-x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178142

/-- `ogf((2x+5x^2+5x^3)/(1+x-x^3-x^4))` -/
def P6439760989200656419.Spec : Prop :=
  ∀ n, P6439760989200656419.a n = A178142 (n + 1)

theorem P6439760989200656419.correct : P6439760989200656419.Spec := by
  intro n
  simp only [A178142, Nat.add_sub_cancel]

end A178142

/-!
# A178143: Sum of squares d^2 over the divisors d=2 and/or d=3 of n.

The programs for A178143, the canonical program `A178143.P1114114414471345084` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178143 has offset 1).

The definition of A178143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178143.P1114114414471345084

`ogf((4x+13x^2+13x^3)/(1+x-x^3-x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178143

/-- `ogf((4x+13x^2+13x^3)/(1+x-x^3-x^4))` -/
def P1114114414471345084.Spec : Prop :=
  ∀ n, P1114114414471345084.a n = A178143 (n + 1)

theorem P1114114414471345084.correct : P1114114414471345084.Spec := by
  intro n
  simp only [A178143, Nat.add_sub_cancel]

end A178143

/-!
# A178144: Sum of divisors d of n which are d=2, 3 or 5.

The programs for A178144, the canonical program `A178144.P5836184226760988605` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178144 has offset 1).

The definition of A178144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178144.P5836184226760988605

`ogf((2x+7x^2+12x^3+17x^4+22x^5+20x^6+10x^7)/(1+2x+2x^2+x^3-x^5-2x^6-2x^7-x^8))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178144

/-- `ogf((2x+7x^2+12x^3+17x^4+22x^5+20x^6+10x^7)/(1+2x+2x^2+x^3-x^5-2x^6-2x^7-x^8))` -/
def P5836184226760988605.Spec : Prop :=
  ∀ n, P5836184226760988605.a n = A178144 (n + 1)

theorem P5836184226760988605.correct : P5836184226760988605.Spec := by
  intro n
  simp only [A178144, Nat.add_sub_cancel]

end A178144

/-!
# A178145: 6n-1,6n+1, 6n+5, 6n+7 are all primes. That is they are adjacent pairs of twin primes.

The programs for A178145, there is no canonical definition to state claims against.
-/

/-! ## A178145.P11409672961926985707

`floor(A173092(n+1)/2)`
-/

namespace A178145.P11409672961926985707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173092 (n + 1) : ℚ) / 2⌋

end

end A178145.P11409672961926985707

/-! ## A178145.P14198793365646303518

`ceil(A222960(n+1)/3)`
-/

namespace A178145.P14198793365646303518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222960 (n + 1) : ℚ) / 3⌉

end

end A178145.P14198793365646303518

/-! ## A178145.P13934930203266841548

`floor(A136720(n+1)/6)`
-/

namespace A178145.P13934930203266841548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136720 (n + 1) : ℚ) / 6⌋

end

end A178145.P13934930203266841548

/-! ## A178145.P5838684677180946122

`floor(A136721(n+1)/6)`
-/

namespace A178145.P5838684677180946122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136721 (n + 1) : ℚ) / 6⌋

end

end A178145.P5838684677180946122

/-! ## A178145.P1521723313652609660

`floor(A173037(n+1)/6)`
-/

namespace A178145.P1521723313652609660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173037 (n + 1) : ℚ) / 6⌋

end

end A178145.P1521723313652609660

/-! ## A178145.P2370265222491672740

`ceil(A007530(n+1)/6)`
-/

namespace A178145.P2370265222491672740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007530 (n + 1) : ℚ) / 6⌉

end

end A178145.P2370265222491672740

/-! ## A178145.P16669404238766646308

`ceil(A125855(n+1)/6)`
-/

namespace A178145.P16669404238766646308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A125855 (n + 1) : ℚ) / 6⌉

end

end A178145.P16669404238766646308

/-! ## A178145.P8693772446615701915

`∩[A174359(n+1), A215918(n+1)]`
-/

namespace A178145.P8693772446615701915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178145.P8693772446615701915

/-! ## A178145.P2585621540079596384

`∩[A174359(n+1), A307562(n+1)]`
-/

namespace A178145.P2585621540079596384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178145.P2585621540079596384

/-! ## A178145.P5948849239411494301

`∩[A002822(n+1), A215918(n+1)]`
-/

namespace A178145.P5948849239411494301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178145.P5948849239411494301

/-! ## A178145.P8553704227538634749

`∩[A056956(n+1), A307563(n+1)]`
-/

namespace A178145.P8553704227538634749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178145.P8553704227538634749

/-! ## A178145.P18234095437222564868

`∩[A174359(n+1), A307563(n+1)]`
-/

namespace A178145.P18234095437222564868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178145.P18234095437222564868

/-! ## A178145.P12650896986588640407

`∩[A215918(n+1), A307561(n+1)]`
-/

namespace A178145.P12650896986588640407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178145.P12650896986588640407

/-! ## A178145.P922610450859826602

`∩[A215918(n+1), A307563(n+1)]`
-/

namespace A178145.P922610450859826602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178145.P922610450859826602

/-! ## A178145.P16902665751085354303

`∩[A307561(n+1), A307562(n+1)]`
-/

namespace A178145.P16902665751085354303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178145.P16902665751085354303

/-!
# A178146: a(n) is the number of distinct prime factors <= 5 of n.

The programs for A178146, the canonical program `A178146.P16917388451360551297` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178146 has offset 1).

The definition of A178146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178146.P16917388451360551297

`ogf((x+3x^2+5x^3+6x^4+7x^5+6x^6+3x^7)/(1+2x+2x^2+x^3-x^5-2x^6-2x^7-x^8))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178146

/-- `ogf((x+3x^2+5x^3+6x^4+7x^5+6x^6+3x^7)/(1+2x+2x^2+x^3-x^5-2x^6-2x^7-x^8))` -/
def P16917388451360551297.Spec : Prop :=
  ∀ n, P16917388451360551297.a n = A178146 (n + 1)

theorem P16917388451360551297.correct : P16917388451360551297.Spec := by
  intro n
  simp only [A178146, Nat.add_sub_cancel]

end A178146

/-!
# A178147: Sum of squares d^2 of distinct divisors of n, d in {2, 3, 5}.

The programs for A178147, the canonical program `A178147.P2987494733207284523` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178147 has offset 1).

The definition of A178147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178147.P2987494733207284523

`a(n-2)+a(n-3)-a(n-7)-a(n-8)+a(n-10)` with `a(0)=0, a(1)=4, a(2)=9, a(3)=4, a(4)=25, a(5)=13, a(6)=0, a(7)=4, a(8)=9, a(9)=29`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178147

/-- `a(n-2)+a(n-3)-a(n-7)-a(n-8)+a(n-10)` -/
def P2987494733207284523.Spec : Prop :=
  ∀ n, P2987494733207284523.a n = A178147 (n + 1)

theorem P2987494733207284523.correct : P2987494733207284523.Spec := by
  intro n
  simp only [A178147, Nat.add_sub_cancel]

end A178147

/-!
# A178150: Primes p with digital sum dividing p+1.

The programs for A178150, there is no canonical definition to state claims against.
-/

/-! ## A178150.P10037312759078346020

`p?[A144980(n+1)]`
-/

namespace A178150.P10037312759078346020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178150.P10037312759078346020

/-! ## A178150.P3605830598713878666

`p?[record[A144980(A052938(n))]]`
-/

namespace A178150.P3605830598713878666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178150.P3605830598713878666

/-! ## A178150.P905227748143829179

`or(1, p?[A144980(A004442(2*n)-n)])`
-/

namespace A178150.P905227748143829179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (A004442 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A178150.P905227748143829179

/-! ## A178150.P18173605972634799813

`∩[A034849(n+1), A144980(n+1)]`
-/

namespace A178150.P18173605972634799813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P18173605972634799813

/-! ## A178150.P1592979900714641306

`∩[A144980(n+1), A176897(n+1)]`
-/

namespace A178150.P1592979900714641306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P1592979900714641306

/-! ## A178150.P15735418767313007561

`∩[A000040(n+1), A144980(n+1)]`
-/

namespace A178150.P15735418767313007561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P15735418767313007561

/-! ## A178150.P11682959736843767416

`∩[A004139(n+1), A144980(n+1)]`
-/

namespace A178150.P11682959736843767416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P11682959736843767416

/-! ## A178150.P2461927781451570099

`∩[A045319(n+1), A144980(n+1)]`
-/

namespace A178150.P2461927781451570099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P2461927781451570099

/-! ## A178150.P17768663123947629298

`∩[A045344(n+1), A144980(n+1)]`
-/

namespace A178150.P17768663123947629298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P17768663123947629298

/-! ## A178150.P11448693201396947539

`∩[A051948(n+1), A144980(n+1)]`
-/

namespace A178150.P11448693201396947539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P11448693201396947539

/-! ## A178150.P1601362561873218943

`∩[A053813(n+1), A144980(n+1)]`
-/

namespace A178150.P1601362561873218943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P1601362561873218943

/-! ## A178150.P13107239465335917618

`∩[A065091(n+1), A144980(n+1)]`
-/

namespace A178150.P13107239465335917618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P13107239465335917618

/-! ## A178150.P11147469851371592766

`∩[A083249(n+1), A144980(n+1)]`
-/

namespace A178150.P11147469851371592766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P11147469851371592766

/-! ## A178150.P5708291529751120899

`∩[A116974(n+1), A144980(n+1)]`
-/

namespace A178150.P5708291529751120899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P5708291529751120899

/-! ## A178150.P4795941455457529356

`∩[A140826(n+1), A144980(n+1)]`
-/

namespace A178150.P4795941455457529356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P4795941455457529356

/-! ## A178150.P1716248962907934320

`∩[A144980(n+1), A157996(n+1)]`
-/

namespace A178150.P1716248962907934320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P1716248962907934320

/-! ## A178150.P16941077234064331574

`∩[A144980(n+1), A161346(n+1)]`
-/

namespace A178150.P16941077234064331574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P16941077234064331574

/-! ## A178150.P6042135589285182572

`∩[A144980(n+1), A161428(n+1)]`
-/

namespace A178150.P6042135589285182572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P6042135589285182572

/-! ## A178150.P7826783895204193880

`∩[A144980(n+1), A175787(n+1)]`
-/

namespace A178150.P7826783895204193880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P7826783895204193880

/-! ## A178150.P11890778345228332700

`∩[A144980(n+1), A182986(n+1)]`
-/

namespace A178150.P11890778345228332700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178150.P11890778345228332700

/-!
# A178151: The number of quadratic residues (mod p) less than p/2, where p=prime(n).

The programs for A178151, there is no canonical definition to state claims against.
-/

/-! ## A178151.P2355310466670602287

`A005097(n+1)-A178152(n+2)`
-/

namespace A178151.P2355310466670602287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A178152 (n + 2)

end

end A178151.P2355310466670602287

/-! ## A178151.P18154630960061937616

`A178153(n+2)+A178152(n+2)`
-/

namespace A178151.P18154630960061937616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2) + A178152 (n + 2)

end

end A178151.P18154630960061937616

/-! ## A178151.P11155849333861258878

`(A178153(n+2)+A005097(n+1))/2`
-/

namespace A178151.P11155849333861258878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178153 (n + 2) + A005097 (n + 1) : ℚ) / 2

end

end A178151.P11155849333861258878

/-! ## A178151.P9199618992410373494

`A130290(n+2)-A178152(n+2)`
-/

namespace A178151.P9199618992410373494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) - A178152 (n + 2)

end

end A178151.P9199618992410373494

/-! ## A178151.P9126458047751626254

`(A178153(n+2)+record[A069897(n+1)])/2`
-/

namespace A178151.P9126458047751626254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178153 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A178151.P9126458047751626254

/-! ## A178151.P13686073073703931721

`A006370(A178153(n+2)+A005097(n+1))`
-/

namespace A178151.P13686073073703931721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A178153 (n + 2) + A005097 (n + 1)).toNat

end

end A178151.P13686073073703931721

/-! ## A178151.P4797994358896209945

`A028242(A178153(n+2)+A006254(n+1))`
-/

namespace A178151.P4797994358896209945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A178153 (n + 2) + A006254 (n + 1)).toNat

end

end A178151.P4797994358896209945

/-! ## A178151.P1976754427134471558

`A032742(A178153(n+2)+A005097(n+1))`
-/

namespace A178151.P1976754427134471558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A178153 (n + 2) + A005097 (n + 1)).toNat

end

end A178151.P1976754427134471558

/-! ## A178151.P16395672588592878921

`A317640(A178153(n+2)+A005097(n+1))`
-/

namespace A178151.P16395672588592878921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317640 (A178153 (n + 2) + A005097 (n + 1)).toNat

end

end A178151.P16395672588592878921

/-! ## A178151.P14579568175500242178

`A006370(A178153(n+2)+record[A069897(n+1)])`
-/

namespace A178151.P14579568175500242178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A178153 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A178151.P14579568175500242178

/-!
# A178152: The number of quadratic residues (mod p) greater than p/2, where p=prime(n).

The programs for A178152, there is no canonical definition to state claims against.
-/

/-! ## A178152.P5080358113362758595

`A005097(n+1)-A178151(n+2)`
-/

namespace A178152.P5080358113362758595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A178151 (n + 2)

end

end A178152.P5080358113362758595

/-! ## A178152.P17647697392310255994

`A178151(n+2)-A178153(n+2)`
-/

namespace A178152.P17647697392310255994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178151 (n + 2) - A178153 (n + 2)

end

end A178152.P17647697392310255994

/-! ## A178152.P9041583381980620596

`A006254(n+1)-(A178151(n+2)+1)`
-/

namespace A178152.P9041583381980620596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - (A178151 (n + 2) + 1)

end

end A178152.P9041583381980620596

/-! ## A178152.P206019988142588765

`(A005097(n+1)-A178153(n+2))/2`
-/

namespace A178152.P206019988142588765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) - A178153 (n + 2) : ℚ) / 2

end

end A178152.P206019988142588765

/-! ## A178152.P24225046031451336

`A130290(n+2)-A178151(n+2)`
-/

namespace A178152.P24225046031451336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) - A178151 (n + 2)

end

end A178152.P24225046031451336

/-! ## A178152.P2055114825868910361

`floor(A000040(n+2)/2)-A178151(n+2)`
-/

namespace A178152.P2055114825868910361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / 2⌋ - A178151 (n + 2)

end

end A178152.P2055114825868910361

/-! ## A178152.P15338703139876294590

`record[A000010(n+3)/2]-A178151(n+2)`
-/

namespace A178152.P15338703139876294590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A178151 (n + 2) : ℚ)

end

end A178152.P15338703139876294590

/-! ## A178152.P5478282607039112290

`record[A069897(n+1)]-A178151(n+2)`
-/

namespace A178152.P5478282607039112290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A178151 (n + 2)

end

end A178152.P5478282607039112290

/-! ## A178152.P395450245913839280

`record[sqrt(A067721(n))]-A178151(n+2)`
-/

namespace A178152.P395450245913839280
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067721 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A178151 (n + 2) : ℝ)

end

end A178152.P395450245913839280

/-! ## A178152.P9763978162923584358

`record[A078709(n+1)]-A178151(n+2)`
-/

namespace A178152.P9763978162923584358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A178151 (n + 2)

end

end A178152.P9763978162923584358

/-!
# A178153: Difference between the numbers of quadratic residues (mod p) less than p/2 and greater than p/2, where p=prime(n).

The programs for A178153, there is no canonical definition to state claims against.
-/

/-! ## A178153.P17831203466438424966

`A178151(n+2)-A178152(n+2)`
-/

namespace A178153.P17831203466438424966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178151 (n + 2) - A178152 (n + 2)

end

end A178153.P17831203466438424966

/-! ## A178153.P9112081433922152608

`2*A178151(n+2)-A005097(n+1)`
-/

namespace A178153.P9112081433922152608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178151 (n + 2) - A005097 (n + 1)

end

end A178153.P9112081433922152608

/-! ## A178153.P958607153943950704

`A005408(A178151(n+2))-A006254(n+1)`
-/

namespace A178153.P958607153943950704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A178151 (n + 2)).toNat - A006254 (n + 1)

end

end A178153.P958607153943950704

/-! ## A178153.P15035423990942093378

`2*A178151(n+2)-record[A069897(n+1)]`
-/

namespace A178153.P15035423990942093378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178151 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178153.P15035423990942093378

/-! ## A178153.P13778497379591533928

`A193356(A000003(p?[2*n+1]))`
-/

namespace A178153.P13778497379591533928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A000003 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A178153.P13778497379591533928

/-! ## A178153.P7113610311380043086

`∑{p}[A266724(A006254(n+1)), A000003(#)]`
-/

namespace A178153.P7113610311380043086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 (A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000003 p

end

end A178153.P7113610311380043086

/-! ## A178153.P417766277452917448

`A372876(p?[2*n+1])`
-/

namespace A178153.P417766277452917448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A178153.P417766277452917448

/-! ## A178153.P18439872747485211609

`A372876(A045344(n+1))`
-/

namespace A178153.P18439872747485211609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A045344 (n + 1)).toNat

end

end A178153.P18439872747485211609

/-! ## A178153.P553295356487180689

`A372876(A065091(n+1))`
-/

namespace A178153.P553295356487180689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A065091 (n + 1)).toNat

end

end A178153.P553295356487180689

/-! ## A178153.P547287360296028817

`A372876(A140475(n+1))`
-/

namespace A178153.P547287360296028817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A140475 (n + 1)).toNat

end

end A178153.P547287360296028817

/-! ## A178153.P16471296469177042263

`A372876(A000040(n+2))`
-/

namespace A178153.P16471296469177042263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A000040 (n + 2)).toNat

end

end A178153.P16471296469177042263

/-! ## A178153.P12423383027885944533

`A372876(A006005(n+2))`
-/

namespace A178153.P12423383027885944533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A006005 (n + 2)).toNat

end

end A178153.P12423383027885944533

/-! ## A178153.P4297900802532348790

`A372876(A171577(n+2))`
-/

namespace A178153.P4297900802532348790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A171577 (n + 2)).toNat

end

end A178153.P4297900802532348790

/-! ## A178153.P7277795867472065846

`A372876(A400325(n+2))`
-/

namespace A178153.P7277795867472065846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A400325 (n + 2)).toNat

end

end A178153.P7277795867472065846

/-! ## A178153.P14939445914532481662

`2*A178151(n+2)-record[A078709(n+1)]`
-/

namespace A178153.P14939445914532481662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178151 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178153.P14939445914532481662

/-!
# A178154: Sum_{a=1..(p-1)/2} LegendreSymbol(a, p) for primes p == 3 (mod 4).

The programs for A178154, there is no canonical definition to state claims against.
-/

/-! ## A178154.P352329734182090536

`A165601(A095278(n+1))`
-/

namespace A178154.P352329734182090536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (A095278 (n + 1)).toNat

end

end A178154.P352329734182090536

/-! ## A178154.P11933344385347775794

`A178153(A080148(n+1))`
-/

namespace A178154.P11933344385347775794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (A080148 (n + 1)).toNat

end

end A178154.P11933344385347775794

/-! ## A178154.P5000386106664932629

`filter[A178153(n+2), A000035(#)]`
-/

namespace A178154.P5000386106664932629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A178154.P5000386106664932629

/-! ## A178154.P15547860634303463035

`filter[A178153(n+2), A097325(#)]`
-/

namespace A178154.P15547860634303463035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A178154.P15547860634303463035

/-! ## A178154.P1095011390061519909

`filter[A178153(n+2), A098725(#)]`
-/

namespace A178154.P1095011390061519909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A178154.P1095011390061519909

/-! ## A178154.P2198108991253159424

`filter[A178153(n+2), A115971(#)]`
-/

namespace A178154.P2198108991253159424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A178154.P2198108991253159424

/-! ## A178154.P5281206899963337853

`filter[A178153(n+2), A166486(#)]`
-/

namespace A178154.P5281206899963337853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A178154.P5281206899963337853

/-! ## A178154.P17600444199186107602

`filter[A178153(n+2), A168181(#)]`
-/

namespace A178154.P17600444199186107602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A178154.P17600444199186107602

/-! ## A178154.P8563850190034141028

`filter[A178153(n+2), A168184(#)]`
-/

namespace A178154.P8563850190034141028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A178154.P8563850190034141028

/-! ## A178154.P12941201547171198309

`filter[A178153(n+2), A168185(#)]`
-/

namespace A178154.P12941201547171198309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A178154.P12941201547171198309

/-! ## A178154.P11926565051255011245

`filter[A178153(n+2), A257680(#)]`
-/

namespace A178154.P11926565051255011245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j).toNat = 1) n)

end

end A178154.P11926565051255011245

/-! ## A178154.P2731615284046111605

`filter[A178153(n+2), A259044(#)]`
-/

namespace A178154.P2731615284046111605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A178154.P2731615284046111605

/-! ## A178154.P4539430702345188784

`filter[A178153(n+2), A276950(#)]`
-/

namespace A178154.P4539430702345188784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276950 (f1 j).toNat = 1) n)

end

end A178154.P4539430702345188784

/-! ## A178154.P13355144533851068338

`filter[A178153(n+2), A316829(#)]`
-/

namespace A178154.P13355144533851068338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A178154.P13355144533851068338

/-! ## A178154.P15811320123347437355

`A238872(A005099(n+1))`
-/

namespace A178154.P15811320123347437355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (A005099 (n + 1)).toNat

end

end A178154.P15811320123347437355

/-! ## A178154.P6639895104008572622

`A000003(p?[record[xor(3, n)]])`
-/

namespace A178154.P6639895104008572622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A178154.P6639895104008572622

/-! ## A178154.P12330706466883586522

`A000003(p?[4*n-1])`
-/

namespace A178154.P12330706466883586522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A178154.P12330706466883586522

/-! ## A178154.P14699066452644091121

`A000003(A002145(n+1))`
-/

namespace A178154.P14699066452644091121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A002145 (n + 1)).toNat

end

end A178154.P14699066452644091121

/-! ## A178154.P9192792151754996410

`A110248(A104635(n+1))`
-/

namespace A178154.P9192792151754996410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A104635 (n + 1)).toNat

end

end A178154.P9192792151754996410

/-! ## A178154.P5061766016245069408

`A000003(A045326(n+2))`
-/

namespace A178154.P5061766016245069408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A045326 (n + 2)).toNat

end

end A178154.P5061766016245069408

/-!
# A178155: Partial sums of A003407 (starting at n=1).

The programs for A178155, there is no canonical definition to state claims against.
-/

/-! ## A178155.P11117479082687185793

`∑[A003407(n+1)]`
-/

namespace A178155.P11117479082687185793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178155.P11117479082687185793

/-! ## A178155.P10602142990462562755

`Δ[∑[∑[A003407(n)]]-n]`
-/

namespace A178155.P10602142990462562755
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178155.P10602142990462562755

/-! ## A178155.P8632239593536615586

`∑[record[A003407(round(xor(1, n)/6))]]`
-/

namespace A178155.P8632239593536615586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003407 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178155.P8632239593536615586

/-! ## A178155.P17120464235115172950

`∑[record[A003407(n-2*floor(n/10))]]`
-/

namespace A178155.P17120464235115172950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003407 ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178155.P17120464235115172950

/-! ## A178155.P7221971840620500555

`A003407(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A178155.P7221971840620500555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003407 (n + 1) + a (A023443 n).toNat

end

end A178155.P7221971840620500555

/-!
# A178156: Numbers m such that (m-1)! is not divisible by m^2.

The programs for A178156, there is no canonical definition to state claims against.
-/

/-! ## A178156.P8120375251741717434

`record[A265310(n+2)]`
-/

namespace A178156.P8120375251741717434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178156.P8120375251741717434

/-! ## A178156.P8353881605078622910

`comp[A056583(n+2)]`
-/

namespace A178156.P8353881605078622910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A178156.P8353881605078622910

/-! ## A178156.P2453947863312461177

`lt[A072480(n), γ*n]`
-/

namespace A178156.P2453947863312461177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant * (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A178156.P2453947863312461177

/-! ## A178156.P18259669980241207019

`comp[A061837(n+1)]+2`
-/

namespace A178156.P18259669980241207019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A178156.P18259669980241207019

/-! ## A178156.P1423952252585921139

`lt[0, A242427(n+1)]+1`
-/

namespace A178156.P1423952252585921139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A178156.P1423952252585921139

/-! ## A178156.P1015940732435568710

`eq[n, A265310(round(acot(n)+n))]`
-/

namespace A178156.P1015940732435568710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265310 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178156.P1015940732435568710

/-! ## A178156.P5495411893695359199

`lt[n-3, 2*A006530(n+2)]+2`
-/

namespace A178156.P5495411893695359199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A178156.P5495411893695359199

/-! ## A178156.P5396465424066857516

`lt[0, A242427(A028310(n))]`
-/

namespace A178156.P5396465424066857516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242427 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A178156.P5396465424066857516

/-! ## A178156.P13644482042273943058

`eq[A004530(n), A375512(n)]`
-/

namespace A178156.P13644482042273943058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178156.P13644482042273943058

/-! ## A178156.P7513869887239210341

`eq[A375512(n), A387646(n)]`
-/

namespace A178156.P7513869887239210341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387646 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178156.P7513869887239210341

/-!
# A178157: Numbers k that are divisible by every prefix of k.

The programs for A178157, the canonical program `A178157.P7181085318826071123` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178157 has offset 1).

The definition of A178157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178157.P7181085318826071123

`eq[n, lcm(n, a(A059995(n)))]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A178157

/-- `eq[n, lcm(n, a(A059995(n)))]` -/
def P7181085318826071123.Spec : Prop :=
  ∀ n, (P7181085318826071123.a n : ℤ) = A178157 (n + 1)

theorem P7181085318826071123.correct : P7181085318826071123.Spec := by
  intro n
  simp only [A178157, Nat.add_sub_cancel]

end A178157

/-! ## A178157.P5163968550839940237

`A266143(A247678(n+1))+A096105(n+1)`
-/

namespace A178157.P5163968550839940237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266143 (A247678 (n + 1)).toNat + A096105 (n + 1)

end

end A178157.P5163968550839940237

namespace A178157

/-- `A266143(A247678(n+1))+A096105(n+1)` -/
def P5163968550839940237.Spec : Prop :=
  ∀ n, P5163968550839940237.a n = A178157 (n + 1)

end A178157

/-! ## A178157.P15419611444212616327

`A096105(n+1)+A008683(A198436(n+3))`
-/

namespace A178157.P15419611444212616327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1) + A008683 (A198436 (n + 3)).toNat

end

end A178157.P15419611444212616327

namespace A178157

/-- `A096105(n+1)+A008683(A198436(n+3))` -/
def P15419611444212616327.Spec : Prop :=
  ∀ n, P15419611444212616327.a n = A178157 (n + 1)

end A178157

/-! ## A178157.P4148666682652332419

`A096105(n+1)*A354108(A045991(n+4))`
-/

namespace A178157.P4148666682652332419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1) * A354108 (A045991 (n + 4)).toNat

end

end A178157.P4148666682652332419

namespace A178157

/-- `A096105(n+1)*A354108(A045991(n+4))` -/
def P4148666682652332419.Spec : Prop :=
  ∀ n, P4148666682652332419.a n = A178157 (n + 1)

end A178157

/-! ## A178157.P1584391566950129760

`A049347(A120623(2*n+1))*A096105(n+1)`
-/

namespace A178157.P1584391566950129760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A120623 (2 * n + 1)).toNat * A096105 (n + 1)

end

end A178157.P1584391566950129760

namespace A178157

/-- `A049347(A120623(2*n+1))*A096105(n+1)` -/
def P1584391566950129760.Spec : Prop :=
  ∀ n, P1584391566950129760.a n = A178157 (n + 1)

end A178157

/-!
# A178159: Modified variant of A006645, the self-convolution of the Pell series.

The programs for A178159, the canonical program `A178159.P13815897961637268872` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178159 has offset 1).

The definition of A178159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178159.P13815897961637268872

`ogf((1-2x+2x^3)/(1-4x+12x^3-4x^4-4x^5-4x^6-4x^7-x^8))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178159

/-- `ogf((1-2x+2x^3)/(1-4x+12x^3-4x^4-4x^5-4x^6-4x^7-x^8))` -/
def P13815897961637268872.Spec : Prop :=
  ∀ n, P13815897961637268872.a n = A178159 (n + 1)

theorem P13815897961637268872.correct : P13815897961637268872.Spec := by
  intro n
  simp only [A178159, Nat.add_sub_cancel]

end A178159

/-! ## A178159.P13872885567784077877

`A084469(A017928(n))`
-/

namespace A178159.P13872885567784077877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084469 (A017928 n).toNat

end

end A178159.P13872885567784077877

namespace A178159

/-- `A084469(A017928(n))` -/
def P13872885567784077877.Spec : Prop :=
  ∀ n, P13872885567784077877.a n = A178159 (n + 1)

end A178159

/-!
# A178160: Digits (after the leading "0.") of "Type-2 Trott-like Constants" (see Comments lines for definition).

The programs for A178160, there is no canonical definition to state claims against.
-/

/-! ## A178160.P6653489229739268039

`lt[A026584(n+2), A053824(A272919(n+1))]`
-/

namespace A178160.P6653489229739268039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026584 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A272919 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178160.P6653489229739268039

/-! ## A178160.P5103906656160874035

`lt[A001222(A239144(2*(n+1))), A131579(3*n)]`
-/

namespace A178160.P5103906656160874035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239144 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131579 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178160.P5103906656160874035

/-! ## A178160.P160615306968824638

`eq[A010109(A060361(n)), A127844(n+1)]`
-/

namespace A178160.P160615306968824638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010109 (A060361 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178160.P160615306968824638

/-! ## A178160.P9084737452804329377

`eq[A127844(n+1), A294930(A296725(n+1))]`
-/

namespace A178160.P9084737452804329377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (A296725 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178160.P9084737452804329377

/-! ## A178160.P246116392946073349

`eq[A127844(2*A060361(n)), A127844(n+1)]`
-/

namespace A178160.P246116392946073349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (2 * A060361 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178160.P246116392946073349

/-!
# A178165: Number of unordered collections of distinct nonempty subsets of an n-element set where each element appears in at most 2 subsets.

The programs for A178165, there is no canonical definition to state claims against.
-/

/-! ## A178165.P1261023389464452939

`∑{#}[n, C(n, #)*A094574(#)]`
-/

namespace A178165.P1261023389464452939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A094574 k

end

end A178165.P1261023389464452939

/-! ## A178165.P10532662365621353158

`A330964(∑[n+2]+3)`
-/

namespace A178165.P10532662365621353158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A178165.P10532662365621353158

/-! ## A178165.P792218740832329714

`record[A114284(n)*A330964(n+3)]`
-/

namespace A178165.P792218740832329714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 n * A330964 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178165.P792218740832329714

/-! ## A178165.P15006883581007358951

`record[gcd(A330964(n+2), A331039(n))]`
-/

namespace A178165.P15006883581007358951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330964 (n + 2)) (A331039 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178165.P15006883581007358951

/-! ## A178165.P13153727556889302792

`record[gcd(A060959(n), A330964(n+3))]`
-/

namespace A178165.P13153727556889302792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060959 n) (A330964 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178165.P13153727556889302792

/-!
# A178166: 10^a(n) Pascal triangle, where a(n) = A007318(n).

The programs for A178166, the canonical program `A178166.P4307574261712288853` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178166 has offset 0).

The definition of A178166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178166.P4307574261712288853

`10^C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178166

/-- `10^C(row(n), col(n))` -/
def P4307574261712288853.Spec : Prop :=
  ∀ n, (P4307574261712288853.a n : ℤ) = A178166 n

theorem P4307574261712288853.correct : P4307574261712288853.Spec := by
  intro n
  simp only [A178166]

end A178166

/-! ## A178166.P9757234379498280329

`10^(row(n)!/(col(n)!*(row(n)-col(n))!))`
-/

namespace A178166.P9757234379498280329
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 : ℝ) ^ ((Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) * Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) : ℝ)

end

end A178166.P9757234379498280329

namespace A178166

/-- `10^(row(n)!/(col(n)!*(row(n)-col(n))!))` -/
def P9757234379498280329.Spec : Prop :=
  ∀ n, P9757234379498280329.a n = (A178166 n : ℝ)

end A178166

/-! ## A178166.P8358957257550098504

`10^A007318(n)`
-/

namespace A178166.P8358957257550098504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A007318 n : ℤ)

end

end A178166.P8358957257550098504

namespace A178166

/-- `10^A007318(n)` -/
def P8358957257550098504.Spec : Prop :=
  ∀ n, P8358957257550098504.a n = (A178166 n : ℚ)

end A178166

/-! ## A178166.P10175291497451204093

`10^abs(A108086(n))`
-/

namespace A178166.P10175291497451204093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|A108086 n| : ℤ)

end

end A178166.P10175291497451204093

namespace A178166

/-- `10^abs(A108086(n))` -/
def P10175291497451204093.Spec : Prop :=
  ∀ n, P10175291497451204093.a n = (A178166 n : ℚ)

end A178166

/-! ## A178166.P17057193125430478886

`10^abs(A117440(n))`
-/

namespace A178166.P17057193125430478886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|A117440 n| : ℤ)

end

end A178166.P17057193125430478886

namespace A178166

/-- `10^abs(A117440(n))` -/
def P17057193125430478886.Spec : Prop :=
  ∀ n, P17057193125430478886.a n = (A178166 n : ℚ)

end A178166

/-!
# A178167: Binomial transform of odd primes.

The programs for A178167, the canonical program `A178167.P10966866406558041042` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178167 has offset 1).

The definition of A178167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178167.P10966866406558041042

`Δ[A007443(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A178167

/-- `Δ[A007443(n+1)]` -/
def P10966866406558041042.Spec : Prop :=
  ∀ n, P10966866406558041042.a n = A178167 (n + 1)

theorem P10966866406558041042.correct : P10966866406558041042.Spec := by
  intro n
  simp only [A178167, Nat.add_sub_cancel]

end A178167

/-! ## A178167.P803728825345708154

`A007443(n+2)-A007443(n+1)`
-/

namespace A178167.P803728825345708154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007443 (n + 2) - A007443 (n + 1)

end

end A178167.P803728825345708154

namespace A178167

/-- `A007443(n+2)-A007443(n+1)` -/
def P803728825345708154.Spec : Prop :=
  ∀ n, P803728825345708154.a n = A178167 (n + 1)

theorem P803728825345708154.correct : P803728825345708154.Spec := by
  intro n
  simp only [A178167, Nat.add_sub_cancel, A178167.P803728825345708154.a, A178167.P10966866406558041042.f1, A178167.P10966866406558041042.a, SequenceMachineLib.memo_apply]

end A178167

/-! ## A178167.P6379242151467328427

`Δ[Δ[A030015(n)]]`
-/

namespace A178167.P6379242151467328427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178167.P6379242151467328427

namespace A178167

/-- `Δ[Δ[A030015(n)]]` -/
def P6379242151467328427.Spec : Prop :=
  ∀ n, P6379242151467328427.a n = A178167 (n + 1)

end A178167

/-! ## A178167.P16939206193173985295

`∑{#}[n, C(n, #)*A065091(#+1)]`
-/

namespace A178167.P16939206193173985295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A065091 (k + 1)

end

end A178167.P16939206193173985295

namespace A178167

/-- `∑{#}[n, C(n, #)*A065091(#+1)]` -/
def P16939206193173985295.Spec : Prop :=
  ∀ n, P16939206193173985295.a n = A178167 (n + 1)

end A178167

/-! ## A178167.P18034188810150858075

`Δ[A287919(∑[n]+n)]`
-/

namespace A178167.P18034188810150858075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178167.P18034188810150858075

namespace A178167

/-- `Δ[A287919(∑[n]+n)]` -/
def P18034188810150858075.Spec : Prop :=
  ∀ n, P18034188810150858075.a n = A178167 (n + 1)

end A178167

/-! ## A178167.P1886669423432442192

`A287919(∑[n+2]-1)`
-/

namespace A178167.P1886669423432442192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287919 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A178167.P1886669423432442192

namespace A178167

/-- `A287919(∑[n+2]-1)` -/
def P1886669423432442192.Spec : Prop :=
  ∀ n, P1886669423432442192.a n = A178167 (n + 1)

end A178167

/-!
# A178169: Numbers in A178168, sorted.

The programs for A178169, there is no canonical definition to state claims against.
-/

/-! ## A178169.P1076119978844729170

`∏[2^n]%A301291(2*A000079(n)²)`
-/

namespace A178169.P1076119978844729170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A301291 (2 * A000079 n ^ 2).toNat)

end

end A178169.P1076119978844729170

/-! ## A178169.P2551913441069124166

`A062383(A003463(n))*A326173(n)`
-/

namespace A178169.P2551913441069124166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A003463 n).toNat * A326173 n

end

end A178169.P2551913441069124166

/-! ## A178169.P10185980567287912399

`A006125(A141769(n+1))%A002063(n)`
-/

namespace A178169.P10185980567287912399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006125 (A141769 (n + 1)).toNat) (A002063 n)

end

end A178169.P10185980567287912399

/-!
# A178171: Number of collections of nonempty subsets of an n-element set where each element appears in at most 3 subsets.

The programs for A178171, there is no canonical definition to state claims against.
-/

/-! ## A178171.P2932787620224269884

`record[A330964(∑[n]+3)]`
-/

namespace A178171.P2932787620224269884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178171.P2932787620224269884

/-! ## A178171.P3756847625923597192

`A330964(A167614(n+2))`
-/

namespace A178171.P3756847625923597192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (A167614 (n + 2)).toNat

end

end A178171.P3756847625923597192

/-! ## A178171.P5765532989143360791

`A330964(A141214(n)+6)`
-/

namespace A178171.P5765532989143360791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (A141214 n + 6).toNat

end

end A178171.P5765532989143360791

/-! ## A178171.P15495188777243578220

`A330964(eq[3, A002262(n)])`
-/

namespace A178171.P15495188777243578220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178171.P15495188777243578220

/-! ## A178171.P433171043260943191

`A330964(eq[8, A059268(n)])`
-/

namespace A178171.P433171043260943191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178171.P433171043260943191

/-!
# A178173: Number of collections of nonempty subsets of an n-element set where each element appears in at most 4 subsets.

The programs for A178173, there is no canonical definition to state claims against.
-/

/-! ## A178173.P14890233636344477366

`A330964(eq[4, A002262(n)])`
-/

namespace A178173.P14890233636344477366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178173.P14890233636344477366

/-! ## A178173.P11939896218731908098

`A330964(eq[4, A025675(n+1)])`
-/

namespace A178173.P11939896218731908098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178173.P11939896218731908098

/-! ## A178173.P1086509891603878820

`A330964(eq[4, A144328(n+1)])`
-/

namespace A178173.P1086509891603878820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178173.P1086509891603878820

/-! ## A178173.P9508684278734458553

`A330964(eq[5, A002260(n+1)])`
-/

namespace A178173.P9508684278734458553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178173.P9508684278734458553

/-! ## A178173.P15732485413366371760

`A330964(eq[5, A134868(n+1)])`
-/

namespace A178173.P15732485413366371760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178173.P15732485413366371760

/-!
# A178174: a(1)=a(2)=a(3)=a(4)=1; thereafter a(n) = gpf(a(n-1)+a(n-2)+a(n-3)+a(n-4)), where gpf is the greatest prime factor.

The programs for A178174, the canonical program `A178174.P16217601774829929629` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178174 has offset 1).

The definition of A178174 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178174.P16217601774829929629

`A006530(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A178174

/-- `A006530(a(n-1)+a(n-2)+a(n-3)+a(n-4))` -/
def P16217601774829929629.Spec : Prop :=
  ∀ n, P16217601774829929629.a n = A178174 (n + 1)

theorem P16217601774829929629.correct : P16217601774829929629.Spec := by
  intro n
  simp only [A178174, Nat.add_sub_cancel]

end A178174

/-!
# A178176: a(n) is the number of central quotients of simple compact Lie groups of dimension n.

The programs for A178176, there is no canonical definition to state claims against.
-/

/-! ## A178176.P6974392322300768663

`A106249(n+6)%A249061(A249061(A241909(n+9)))`
-/

namespace A178176.P6974392322300768663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106249 (n + 6)) (A249061 (A249061 (A241909 (n + 9)).toNat).toNat)

end

end A178176.P6974392322300768663

/-! ## A178176.P18273669027510878262

`A036496(n)%A074625(A074625(n+1))`
-/

namespace A178176.P18273669027510878262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036496 n) (A074625 (A074625 (n + 1)).toNat)

end

end A178176.P18273669027510878262

/-! ## A178176.P9255601213516636090

`A245049(n)%A074625(A074625(n+1))`
-/

namespace A178176.P9255601213516636090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245049 n) (A074625 (A074625 (n + 1)).toNat)

end

end A178176.P9255601213516636090

/-! ## A178176.P12077911347735505825

`A314049(n)%A074625(A074625(n+1))`
-/

namespace A178176.P12077911347735505825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314049 n) (A074625 (A074625 (n + 1)).toNat)

end

end A178176.P12077911347735505825

/-! ## A178176.P14914901648036759373

`A326114(n)%A074625(A074625(n+1))`
-/

namespace A178176.P14914901648036759373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326114 n) (A074625 (A074625 (n + 1)).toNat)

end

end A178176.P14914901648036759373

/-!
# A178178: Primes of the form A177353(n) + 1 sorted with respect to increasing n.

The programs for A178178, the canonical program `A178178.P13798652792377946234` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178178 has offset 1).

The definition of A178178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178178.P13798652792377946234

`p?[A177353(n+1)+1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A178178

/-- `p?[A177353(n+1)+1]` -/
def P13798652792377946234.Spec : Prop :=
  ∀ n, P13798652792377946234.a n = A178178 (n + 1)

theorem P13798652792377946234.correct : P13798652792377946234.Spec := by
  intro n
  simp only [A178178, Nat.add_sub_cancel]

end A178178

/-! ## A178178.P5615226266997765620

`p?[(n+1)!%((n+1)²+1)+1]`
-/

namespace A178178.P5615226266997765620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) % ((n + 1) ^ 2 + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A178178.P5615226266997765620

namespace A178178

/-- `p?[(n+1)!%((n+1)²+1)+1]` -/
def P5615226266997765620.Spec : Prop :=
  ∀ n, (P5615226266997765620.a n : ℤ) = A178178 (n + 1)

end A178178

/-!
# A178179: Like A177904, but start with a(1)=0, a(2)=a(3)=1.

The programs for A178179, the canonical program `A178179.P13880318293807739231` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178179 has offset 1).

The definition of A178179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178179.P13880318293807739231

`A006530(a(n-1)+a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A178179

/-- `A006530(a(n-1)+a(n-2)+a(n-3))` -/
def P13880318293807739231.Spec : Prop :=
  ∀ n, P13880318293807739231.a n = A178179 (n + 1)

theorem P13880318293807739231.correct : P13880318293807739231.Spec := by
  intro n
  simp only [A178179, Nat.add_sub_cancel]

end A178179

/-!
# A178180: Numbers k such that prime(2k) mod prime(k) = prime(2k+2) mod prime(k+1).

The programs for A178180, the canonical program `A178180.P18394938514477420911` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178180 has offset 1).

The definition of A178180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178180.P18394938514477420911

`eq[A022457(A028310(n)), A066066(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A178180

/-- `eq[A022457(A028310(n)), A066066(n+1)]` -/
def P18394938514477420911.Spec : Prop :=
  ∀ n, (P18394938514477420911.a n : ℤ) = A178180 (n + 1)

theorem P18394938514477420911.correct : P18394938514477420911.Spec := by
  intro n
  simp only [A178180, Nat.add_sub_cancel]

end A178180

/-! ## A178180.P17559423264908505924

`eq[A022457(A000007(n)+n), A066066(n+1)]`
-/

namespace A178180.P17559423264908505924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178180.P17559423264908505924

namespace A178180

/-- `eq[A022457(A000007(n)+n), A066066(n+1)]` -/
def P17559423264908505924.Spec : Prop :=
  ∀ n, (P17559423264908505924.a n : ℤ) = A178180 (n + 1)

end A178180

/-! ## A178180.P16232877369126057751

`eq[A022457(A065033(2*n)), A066066(n+1)]`
-/

namespace A178180.P16232877369126057751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178180.P16232877369126057751

namespace A178180

/-- `eq[A022457(A065033(2*n)), A066066(n+1)]` -/
def P16232877369126057751.Spec : Prop :=
  ∀ n, (P16232877369126057751.a n : ℤ) = A178180 (n + 1)

end A178180

/-! ## A178180.P1349242984252973409

`eq[A115061(2*n+1), A254667(A054541(n+1))]`
-/

namespace A178180.P1349242984252973409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178180.P1349242984252973409

namespace A178180

/-- `eq[A115061(2*n+1), A254667(A054541(n+1))]` -/
def P1349242984252973409.Spec : Prop :=
  ∀ n, (P1349242984252973409.a n : ℤ) = A178180 (n + 1)

end A178180

/-! ## A178180.P4940811937405378873

`eq[A022457(A233583(n+1)), A066066(n+1)]`
-/

namespace A178180.P4940811937405378873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178180.P4940811937405378873

namespace A178180

/-- `eq[A022457(A233583(n+1)), A066066(n+1)]` -/
def P4940811937405378873.Spec : Prop :=
  ∀ n, (P4940811937405378873.a n : ℤ) = A178180 (n + 1)

end A178180

/-!
# A178181: Minute with hour hand overlap problem on analog clock.

The programs for A178181, there is no canonical definition to state claims against.
-/

/-! ## A178181.P4206395131440141113

`floor(n*sqrt(30))`
-/

namespace A178181.P4206395131440141113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (30 : ℝ)⌋

end

end A178181.P4206395131440141113

/-! ## A178181.P9106082815898109407

`a(n-2)+11` with `a(0)=0, a(1)=5, a(2)=10`
-/

namespace A178181.P9106082815898109407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 10] fun n a =>
  a (n - 2) + 11

end

end A178181.P9106082815898109407

/-! ## A178181.P3978632350629728757

`or(floor(2*e*n), char[9])`
-/

namespace A178181.P3978632350629728757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊2 * (Real.exp 1 * (n : ℝ))⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A178181.P3978632350629728757

/-! ## A178181.P252259646559117258

`xor(floor(2*e*n), char[9])`
-/

namespace A178181.P252259646559117258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊2 * (Real.exp 1 * (n : ℝ))⌋ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A178181.P252259646559117258

/-! ## A178181.P14101527195285594492

`record[n-dr(2*n)]+n`
-/

namespace A178181.P14101527195285594492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (2 * n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A178181.P14101527195285594492

/-!
# A178182: Minimal polynomials of sin(2Pi/n) are mapped to those of cos(2Pi/a(n)).

The programs for A178182, the canonical program `A178182.P155025824760058700` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178182 has offset 1).

The definition of A178182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178182.P155025824760058700

`4*(n+1)/gcd(n-3, 16)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178182

/-- `4*(n+1)/gcd(n-3, 16)` -/
def P155025824760058700.Spec : Prop :=
  ∀ n, P155025824760058700.a n = (A178182 (n + 1) : ℚ)

end A178182

/-! ## A178182.P5504811010190388337

`lcm(4*(n+1), 3*n+7)/(3*n+7)`
-/

namespace A178182.P5504811010190388337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (4 * (n + 1)) (3 * n + 7) : ℚ) / (3 * n + 7 : ℚ)

end

end A178182.P5504811010190388337

namespace A178182

/-- `lcm(4*(n+1), 3*n+7)/(3*n+7)` -/
def P5504811010190388337.Spec : Prop :=
  ∀ n, P5504811010190388337.a n = (A178182 (n + 1) : ℚ)

end A178182

/-! ## A178182.P3933042437471718938

`A060819(n+1)*A176895(A225058(A060791(n+1)))`
-/

namespace A178182.P3933042437471718938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) * A176895 (A225058 (A060791 (n + 1)).toNat).toNat

end

end A178182.P3933042437471718938

namespace A178182

/-- `A060819(n+1)*A176895(A225058(A060791(n+1)))` -/
def P3933042437471718938.Spec : Prop :=
  ∀ n, P3933042437471718938.a n = A178182 (n + 1)

end A178182

/-! ## A178182.P17599420892303675870

`A188134(n+1)*A247004(n+9)`
-/

namespace A178182.P17599420892303675870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (n + 1) * A247004 (n + 9)

end

end A178182.P17599420892303675870

namespace A178182

/-- `A188134(n+1)*A247004(n+9)` -/
def P17599420892303675870.Spec : Prop :=
  ∀ n, P17599420892303675870.a n = A178182 (n + 1)

end A178182

/-! ## A178182.P2000955191228778187

`A060819(n+1)*A176895(A225058(n+1))`
-/

namespace A178182.P2000955191228778187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) * A176895 (A225058 (n + 1)).toNat

end

end A178182.P2000955191228778187

namespace A178182

/-- `A060819(n+1)*A176895(A225058(n+1))` -/
def P2000955191228778187.Spec : Prop :=
  ∀ n, P2000955191228778187.a n = A178182 (n + 1)

end A178182

/-! ## A178182.P1406486567053270474

`A225975(A227107(n+1))`
-/

namespace A178182.P1406486567053270474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A227107 (n + 1)).toNat

end

end A178182.P1406486567053270474

namespace A178182

/-- `A225975(A227107(n+1))` -/
def P1406486567053270474.Spec : Prop :=
  ∀ n, P1406486567053270474.a n = A178182 (n + 1)

end A178182

/-!
# A178183: a(n) = number of 3-digit primes with digit sum n, where n runs through the non-multiples of 3 in the range [2..26].

The programs for A178183, there is no canonical definition to state claims against.
-/

/-! ## A178183.P5891043770323631965

`A178701(n+17)`
-/

namespace A178183.P5891043770323631965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178701 (n + 17)

end

end A178183.P5891043770323631965

/-!
# A178184: Sum 2^((k^2+3k)/2) from k=1 to n.

The programs for A178184, there is no canonical definition to state claims against.
-/

/-! ## A178184.P16802909828400828686

`∑[2^∑[2+n]]`
-/

namespace A178184.P16802909828400828686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178184.P16802909828400828686

/-! ## A178184.P5556253207524767183

`abs(∑[∏[2*a(n-1)]])` with `a(0)=4`
-/

namespace A178184.P5556253207524767183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178184.P5556253207524767183

/-! ## A178184.P12100475883042729490

`floor(∑[∏[2*a(n-1)]])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A178184.P12100475883042729490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178184.P12100475883042729490

/-! ## A178184.P5135772142769284792

`ceil(∑[∏[2*a(n-1)]])` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A178184.P5135772142769284792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178184.P5135772142769284792

/-! ## A178184.P1706583713417619184

`round(∑[∏[2*a(n-1)]])` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A178184.P1706583713417619184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178184.P1706583713417619184

/-!
# A178185: Numerator of Sum_{k=1..n} 1/2^((k^2 + 3*k)/2).

The programs for A178185, the canonical program `A178185.P16896363273492430802` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178185 has offset 1).

The definition of A178185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178185.P16896363273492430802

`2^(n+2)*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A178185

/-- `2^(n+2)*a(n-1)+1` -/
def P16896363273492430802.Spec : Prop :=
  ∀ n, (P16896363273492430802.a n : ℤ) = A178185 (n + 1)

theorem P16896363273492430802.correct : P16896363273492430802.Spec := by
  intro n
  simp only [A178185, Nat.add_sub_cancel]

end A178185

/-! ## A178185.P3100117292341725493

`1+2^(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A178185.P3100117292341725493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + 2 ^ (n + 2) * a (n - 1)

end

end A178185.P3100117292341725493

namespace A178185

/-- `1+2^(n+2)*a(n-1)` -/
def P3100117292341725493.Spec : Prop :=
  ∀ n, (P3100117292341725493.a n : ℤ) = A178185 (n + 1)

theorem P3100117292341725493.correct : P3100117292341725493.Spec := by
  intro n
  simp only [A178185, Nat.add_sub_cancel, A178185.P3100117292341725493.a, A178185.P16896363273492430802.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A178185

/-! ## A178185.P16448165799748026449

`lcm(2^(n+2), a(n-1))+1` with `a(0)=1`
-/

namespace A178185.P16448165799748026449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (2 ^ (n + 2)) (a (n - 1)) + 1

end

end A178185.P16448165799748026449

namespace A178185

/-- `lcm(2^(n+2), a(n-1))+1` -/
def P16448165799748026449.Spec : Prop :=
  ∀ n, (P16448165799748026449.a n : ℤ) = A178185 (n + 1)

end A178185

/-! ## A178185.P15548066222734831122

`a(n-1)*A020707(n)+1` with `a(0)=1`
-/

namespace A178185.P15548066222734831122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A020707 n + 1

end

end A178185.P15548066222734831122

namespace A178185

/-- `a(n-1)*A020707(n)+1` -/
def P15548066222734831122.Spec : Prop :=
  ∀ n, P15548066222734831122.a n = A178185 (n + 1)

end A178185

/-! ## A178185.P15667140090832045603

`a(n-1)*A146541(n)+1` with `a(0)=1`
-/

namespace A178185.P15667140090832045603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A146541 n + 1

end

end A178185.P15667140090832045603

namespace A178185

/-- `a(n-1)*A146541(n)+1` -/
def P15667140090832045603.Spec : Prop :=
  ∀ n, P15667140090832045603.a n = A178185 (n + 1)

end A178185

/-!
# A178186: Sum 3^((k^2+3k)/2) from k=1 to n.

The programs for A178186, there is no canonical definition to state claims against.
-/

/-! ## A178186.P1040118313799639134

`∑[3^∑[n+2]]`
-/

namespace A178186.P1040118313799639134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178186.P1040118313799639134

/-! ## A178186.P9927772506604806375

`abs(∑[∏[3*a(n-1)]])` with `a(0)=9`
-/

namespace A178186.P9927772506604806375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178186.P9927772506604806375

/-! ## A178186.P173389497451352713

`floor(∑[∏[3*a(n-1)]])` with `a(0)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A178186.P173389497451352713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178186.P173389497451352713

/-! ## A178186.P5375328928741362262

`∏[3^(n+2)]+a(n-1)` with `a(0)=9`
-/

namespace A178186.P5375328928741362262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A178186.P5375328928741362262

/-!
# A178187: Numerators of sum (1/3)^((k^2+3k)/2) from k=1 to n.

The programs for A178187, there is no canonical definition to state claims against.
-/

/-! ## A178187.P17073489621453020508

`1+3^(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A178187.P17073489621453020508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + 3 ^ (n + 2) * a (n - 1)

end

end A178187.P17073489621453020508

/-! ## A178187.P4302404027182608065

`lcm(3^(n+2), a(n-1))+1` with `a(0)=1`
-/

namespace A178187.P4302404027182608065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (3 ^ (n + 2)) (a (n - 1)) + 1

end

end A178187.P4302404027182608065

/-! ## A178187.P1309057631596688788

`a(n-1)*A000244(n+2)+1` with `a(0)=1`
-/

namespace A178187.P1309057631596688788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000244 (n + 2) + 1

end

end A178187.P1309057631596688788

/-! ## A178187.P3248230203203768124

`9*a(n-1)*A056449(2*n)+1` with `a(0)=1`
-/

namespace A178187.P3248230203203768124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) * A056449 (2 * n) + 1

end

end A178187.P3248230203203768124

/-! ## A178187.P17112948231149505649

`abs(xor(A038754(2*(n+2))*a(n-1), -1))` with `a(0)=1`
-/

namespace A178187.P17112948231149505649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor (A038754 (2 * (n + 2)) * a (n - 1)) (-1)|

end

end A178187.P17112948231149505649

/-!
# A178188: a(n) = Sum_{k=1..n} 5^((k^2+3k)/2).

The programs for A178188, there is no canonical definition to state claims against.
-/

/-! ## A178188.P1676574904596061593

`∑[5^∑[n+2]]`
-/

namespace A178188.P1676574904596061593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178188.P1676574904596061593

/-!
# A178189: Numerators of sum (1/5)^((k^2+3k)/2) from k=1 to n.

The programs for A178189, there is no canonical definition to state claims against.
-/

/-! ## A178189.P15320923638206941665

`5^(n+2)*a(n-1)+1` with `a(0)=1`
-/

namespace A178189.P15320923638206941665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 ^ (n + 2) * a (n - 1) + 1

end

end A178189.P15320923638206941665

/-! ## A178189.P18277414797665177899

`lcm(5^(n+2), a(n-1))+1` with `a(0)=1`
-/

namespace A178189.P18277414797665177899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (5 ^ (n + 2)) (a (n - 1)) + 1

end

end A178189.P18277414797665177899

/-!
# A178190: Sum 7^((k^2+3k)/2) from k=1 to n.

The programs for A178190, there is no canonical definition to state claims against.
-/

/-! ## A178190.P9278074396034293069

`∑[7^∑[n+2]]`
-/

namespace A178190.P9278074396034293069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178190.P9278074396034293069

/-!
# A178191: Numerators of sum (1/7)^((k^2+3k)/2) from k=1 to n.

The programs for A178191, there is no canonical definition to state claims against.
-/

/-! ## A178191.P11552980862758240740

`7^(n+2)*a(n-1)+1` with `a(0)=1`
-/

namespace A178191.P11552980862758240740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 ^ (n + 2) * a (n - 1) + 1

end

end A178191.P11552980862758240740

/-!
# A178192: Sum 11^((k^2+3k)/2) from k=1 to n.

The programs for A178192, there is no canonical definition to state claims against.
-/

/-! ## A178192.P2838266757392772432

`∑[11^∑[n+2]]`
-/

namespace A178192.P2838266757392772432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178192.P2838266757392772432

