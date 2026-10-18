import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A327801: Sum T(n,k) of multinomials M(n; lambda), where lambda ranges over all partitions of n into parts incorporating k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A327801, there is no canonical definition to state claims against.
-/

/-! ## A327801.P5318678251790803125

`A007318(n)*A005651(A025581(n))`
-/

namespace A327801.P5318678251790803125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005651 (A025581 n).toNat

end

end A327801.P5318678251790803125

/-! ## A327801.P600387567003221549

`Δ[A102363(n)]*A005651(A025581(n))`
-/

namespace A327801.P600387567003221549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005651 (A025581 n).toNat

end

end A327801.P600387567003221549

/-! ## A327801.P3227677482865166129

`(A014473(n)+1)*A005651(A025581(n))`
-/

namespace A327801.P3227677482865166129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A005651 (A025581 n).toNat

end

end A327801.P3227677482865166129

/-! ## A327801.P17138944712426675532

`A007318(n)*A321743(A130321(n))`
-/

namespace A327801.P17138944712426675532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A321743 (A130321 n).toNat

end

end A327801.P17138944712426675532

/-! ## A327801.P10007038012935964555

`Δ[A102363(n)]*A321743(A130321(n))`
-/

namespace A327801.P10007038012935964555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A321743 (A130321 n).toNat

end

end A327801.P10007038012935964555

/-!
# A327802: Number of primes p such that n < p < (9/8) * n.

The programs for A327802, the canonical program `A327802.P14680970415820451942` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327802 has offset 1).

The definition of A327802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327802.P1284607081679659164

`A000720(comp[9*n])-A000720(n+1)`
-/

namespace A327802.P1284607081679659164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A000720 (n + 1)

end

end A327802.P1284607081679659164

namespace A327802

/-- `A000720(comp[9*n])-A000720(n+1)` -/
def P1284607081679659164.Spec : Prop :=
  ∀ n, P1284607081679659164.a n = A327802 (n + 1)

end A327802

/-! ## A327802.P5849238601172426889

`A000720(A168183(n+1))-(n-A065855(n+1))`
-/

namespace A327802.P5849238601172426889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168183 (n + 1)).toNat - ((n : ℤ) - A065855 (n + 1))

end

end A327802.P5849238601172426889

namespace A327802

/-- `A000720(A168183(n+1))-(n-A065855(n+1))` -/
def P5849238601172426889.Spec : Prop :=
  ∀ n, P5849238601172426889.a n = A327802 (n + 1)

end A327802

/-! ## A327802.P12225422167901963638

`A000720(A168183(n+1))-∑{d}[n+1, A062778(#)]`
-/

namespace A327802.P12225422167901963638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168183 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), A062778 d

end

end A327802.P12225422167901963638

namespace A327802

/-- `A000720(A168183(n+1))-∑{d}[n+1, A062778(#)]` -/
def P12225422167901963638.Spec : Prop :=
  ∀ n, P12225422167901963638.a n = A327802 (n + 1)

end A327802

/-! ## A327802.P14680970415820451942

`A033270(A168183(n+1))-A033270(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A327802

/-- `A033270(A168183(n+1))-A033270(n+1)` -/
def P14680970415820451942.Spec : Prop :=
  ∀ n, P14680970415820451942.a n = A327802 (n + 1)

theorem P14680970415820451942.correct : P14680970415820451942.Spec := by
  intro n
  simp only [A327802, Nat.add_sub_cancel]

end A327802

/-! ## A327802.P11287159126092951791

`A036234(A168183(n+1))-A036234(n+1)`
-/

namespace A327802.P11287159126092951791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A168183 (n + 1)).toNat - A036234 (n + 1)

end

end A327802.P11287159126092951791

namespace A327802

/-- `A036234(A168183(n+1))-A036234(n+1)` -/
def P11287159126092951791.Spec : Prop :=
  ∀ n, P11287159126092951791.a n = A327802 (n + 1)

end A327802

/-! ## A327802.P17906141080351956014

`A033270(A248375(n+1))-A033270(n+1)`
-/

namespace A327802.P17906141080351956014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A248375 (n + 1)).toNat - A033270 (n + 1)

end

end A327802.P17906141080351956014

namespace A327802

/-- `A033270(A248375(n+1))-A033270(n+1)` -/
def P17906141080351956014.Spec : Prop :=
  ∀ n, P17906141080351956014.a n = A327802 (n + 1)

end A327802

/-!
# A327803: Sum T(n,k) of multinomials M(n; lambda), where lambda ranges over all partitions of n into parts that form a set of size k; triangle T(n,k), n>=0, 0<=k<=A003056(n), read by rows.

The programs for A327803, there is no canonical definition to state claims against.
-/

/-! ## A327803.P10976402633695774365

`A038573(lcm(A003263(n+1), A012194(n)))`
-/

namespace A327803.P10976402633695774365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (Int.lcm (A003263 (n + 1)) (A012194 n))

end

end A327803.P10976402633695774365

/-! ## A327803.P1546827832060384504

`A326676(eq[A088239(n+1), A348890(n)])`
-/

namespace A327803.P1546827832060384504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326676 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A327803.P1546827832060384504

/-! ## A327803.P11602456918140916711

`A082712(A035485(n))%A057728(2*n+5)`
-/

namespace A327803.P11602456918140916711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082712 (A035485 n).toNat) (A057728 (2 * n + 5))

end

end A327803.P11602456918140916711

/-! ## A327803.P17891271863812617338

`A060800(A000108(n))%A300605(2*n+5)`
-/

namespace A327803.P17891271863812617338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060800 (A000108 n).toNat) (A300605 (2 * n + 5))

end

end A327803.P17891271863812617338

/-! ## A327803.P9479484785210954915

`A088704(n)%A206824(A066119(2*n+5))`
-/

namespace A327803.P9479484785210954915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088704 n) (A206824 (A066119 (2 * n + 5)).toNat)

end

end A327803.P9479484785210954915

/-!
# A327804: Leading coefficient of the n-th Stern polynomial.

The programs for A327804, there is no canonical definition to state claims against.
-/

/-! ## A327804.P2003862298735040460

`A125184(∑[A277329(n)])`
-/

namespace A327804.P2003862298735040460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327804.P2003862298735040460

/-! ## A327804.P10066547323633145680

`A125184(∑[A057526(4*n+1)])`
-/

namespace A327804.P10066547323633145680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327804.P10066547323633145680

/-! ## A327804.P9018976099393242052

`A125184(∑[A277327(4*n+1)])`
-/

namespace A327804.P9018976099393242052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327804.P9018976099393242052

/-! ## A327804.P11599436854341565138

`A125184(∑[A080791(xor(n, 3*n))])`
-/

namespace A327804.P11599436854341565138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Nat.xor n (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327804.P11599436854341565138

/-! ## A327804.P3688600821567154964

`A125184(∑[A277314(4*n+1)-1])`
-/

namespace A327804.P3688600821567154964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (4 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327804.P3688600821567154964

/-! ## A327804.P15716712716803337343

`A090996(A277020(n))`
-/

namespace A327804.P15716712716803337343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A277020 n).toNat

end

end A327804.P15716712716803337343

/-!
# A327805: Triangle read by rows where T(n,k) is the number of unlabeled simple graphs with n vertices and vertex-connectivity >= k.

The programs for A327805, there is no canonical definition to state claims against.
-/

/-! ## A327805.P11003867235753968102

`xor(A025926(n), A293808(A187829(n+1)))`
-/

namespace A327805.P11003867235753968102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025926 n) (A293808 (A187829 (n + 1)).toNat)

end

end A327805.P11003867235753968102

/-! ## A327805.P10902520822252444407

`A319081(A327069(n))+A077769(A201922(n+1))`
-/

namespace A327805.P10902520822252444407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319081 (A327069 n).toNat + A077769 (A201922 (n + 1)).toNat

end

end A327805.P10902520822252444407

/-!
# A327808: Number of unlabeled, disconnected, nonempty antichains of subsets of {1..n}.

The programs for A327808, there is no canonical definition to state claims against.
-/

/-! ## A327808.P15090824007757458302

`A327424(n)-1`
-/

namespace A327808.P15090824007757458302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327424 n - 1

end

end A327808.P15090824007757458302

/-! ## A327808.P5335297470460282477

`∑[A327426(n)%(n^n)]`
-/

namespace A327808.P5335297470460282477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327426 n) (n ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327808.P5335297470460282477

/-! ## A327808.P2007295538064580293

`abs(A327424(n)+A321800(n))`
-/

namespace A327808.P2007295538064580293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A327424 n + A321800 n|

end

end A327808.P2007295538064580293

/-! ## A327808.P14124694586399796414

`∑[A327426(n)-A010057(n)]`
-/

namespace A327808.P14124694586399796414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327426 n - A010057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327808.P14124694586399796414

/-!
# A327809: Regular triangle, coefficients of the polynomial P(n)(x) = (-1)^(n+1)*(2*n+1)*binomial(2*n, n)*Sum_{i=0..n} x^i*binomial(n, i)/(n+i+1).

The programs for A327809, there is no canonical definition to state claims against.
-/

/-! ## A327809.P14706978595186512451

`A033999(A002024(n+1))*A091811(n+1)`
-/

namespace A327809.P14706978595186512451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002024 (n + 1)).toNat * A091811 (n + 1)

end

end A327809.P14706978595186512451

/-! ## A327809.P7369704702772055645

`A033999(A185870(n+1))*A091811(n+1)`
-/

namespace A327809.P7369704702772055645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A185870 (n + 1)).toNat * A091811 (n + 1)

end

end A327809.P7369704702772055645

/-!
# A327811: Numbers obtained from cyclically permuting the base-7 digits of 13143449029 and converting back to decimal.

The programs for A327811, there is no canonical definition to state claims against.
-/

/-! ## A327811.P3815785012495024351

`A293660(A298720(n+1)+1)`
-/

namespace A327811.P3815785012495024351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293660 (A298720 (n + 1) + 1).toNat

end

end A327811.P3815785012495024351

/-! ## A327811.P16014224324076517489

`A293660(A298720(n+2))`
-/

namespace A327811.P16014224324076517489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293660 (A298720 (n + 2)).toNat

end

end A327811.P16014224324076517489

/-!
# A327812: Number of irreducible factors in the factorization of the n-th cyclotomic polynomial over GF(3) (counted with multiplicity).

The programs for A327812, there is no canonical definition to state claims against.
-/

/-! ## A327812.P10153039204696903626

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A007734(n+1)`
-/

namespace A327812.P10153039204696903626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A007734 (n + 1) : ℚ)

end

end A327812.P10153039204696903626

/-! ## A327812.P2244507129114495041

`Δ[A002088(n)]/A007734(n+1)`
-/

namespace A327812.P2244507129114495041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007734 (n + 1) : ℚ)

end

end A327812.P2244507129114495041

/-! ## A327812.P81509980121743840

`Δ[A005728(n)]/A007734(n+1)`
-/

namespace A327812.P81509980121743840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007734 (n + 1) : ℚ)

end

end A327812.P81509980121743840

/-! ## A327812.P4939043335194123471

`A000010(n+1)/A007734(n+1)`
-/

namespace A327812.P4939043335194123471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A007734 (n + 1) : ℚ)

end

end A327812.P4939043335194123471

/-! ## A327812.P3068978686693898568

`A349137(Δ[n²])/A007734(n+1)`
-/

namespace A327812.P3068978686693898568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007734 (n + 1) : ℚ)

end

end A327812.P3068978686693898568

/-! ## A327812.P15099973972663563032

`sqrt(A127473(n+1))/A007734(n+1)`
-/

namespace A327812.P15099973972663563032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) / (A007734 (n + 1) : ℝ)

end

end A327812.P15099973972663563032

/-! ## A327812.P8161200286221255041

`∑{d}[n+1, (n+1)/#*A008683(#)]/A007734(n+1)`
-/

namespace A327812.P8161200286221255041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) / (A007734 (n + 1) : ℚ)

end

end A327812.P8161200286221255041

/-! ## A327812.P5138526740904709383

`abs(Δ[A327442(n)]/A007734(n+1))`
-/

namespace A327812.P5138526740904709383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A007734 (n + 1) : ℚ)|

end

end A327812.P5138526740904709383

/-! ## A327812.P11281799958877065164

`A067541(2*n+1)/A007734(n+1)`
-/

namespace A327812.P11281799958877065164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067541 (2 * n + 1) : ℚ) / (A007734 (n + 1) : ℚ)

end

end A327812.P11281799958877065164

/-! ## A327812.P18042694674063085593

`A327818(∑[n+2])`
-/

namespace A327812.P18042694674063085593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327812.P18042694674063085593

/-! ## A327812.P2661628269140446439

`A054532(∑[n+1])/A007734(n+1)`
-/

namespace A327812.P2661628269140446439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054532 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A007734 (n + 1) : ℚ)

end

end A327812.P2661628269140446439

/-!
# A327813: Number of irreducible factors in the factorization of the n-th cyclotomic polynomial over GF(4) (counted with multiplicity).

The programs for A327813, there is no canonical definition to state claims against.
-/

/-! ## A327813.P13236149175544910312

`Δ[A002088(n)]/A007735(n+1)`
-/

namespace A327813.P13236149175544910312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007735 (n + 1) : ℚ)

end

end A327813.P13236149175544910312

/-! ## A327813.P12783412014777064473

`Δ[A005728(n)]/A007735(n+1)`
-/

namespace A327813.P12783412014777064473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007735 (n + 1) : ℚ)

end

end A327813.P12783412014777064473

/-! ## A327813.P10225279302299312150

`A000010(n+1)/A007735(n+1)`
-/

namespace A327813.P10225279302299312150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A007735 (n + 1) : ℚ)

end

end A327813.P10225279302299312150

/-! ## A327813.P7873511692073575592

`(A039649(n+1)-1)/A007735(n+1)`
-/

namespace A327813.P7873511692073575592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A007735 (n + 1) : ℚ)

end

end A327813.P7873511692073575592

/-! ## A327813.P17826831941837144308

`gcd(2*A318622(n+1), A000010(n+1))`
-/

namespace A327813.P17826831941837144308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A318622 (n + 1)) (A000010 (n + 1))

end

end A327813.P17826831941837144308

/-! ## A327813.P7189040439708847790

`∑{d}[n+1, A023136(#)*A361984((n+1)/#)]`
-/

namespace A327813.P7189040439708847790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023136 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327813.P7189040439708847790

/-! ## A327813.P16260834829789490443

`∑{d}[n+1, (n+1)/#*A008683(#)]/A007735(n+1)`
-/

namespace A327813.P16260834829789490443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) / (A007735 (n + 1) : ℚ)

end

end A327813.P16260834829789490443

/-! ## A327813.P8741133011955560562

`A000010(n+1)/A053447(A025480(n))`
-/

namespace A327813.P8741133011955560562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A053447 (A025480 n).toNat : ℚ)

end

end A327813.P8741133011955560562

/-! ## A327813.P3811035772502455644

`A318622(A066393(lcm(2, n+1)))`
-/

namespace A327813.P3811035772502455644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A066393 (Nat.lcm 2 (n + 1))).toNat

end

end A327813.P3811035772502455644

/-! ## A327813.P9333511735240685262

`A327818(A034856(n+2))`
-/

namespace A327813.P9333511735240685262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327818 (A034856 (n + 2)).toNat

end

end A327813.P9333511735240685262

/-!
# A327814: Number of irreducible factors in the factorization of the n-th cyclotomic polynomial over GF(5) (counted with multiplicity).

The programs for A327814, there is no canonical definition to state claims against.
-/

/-! ## A327814.P8185613950175115358

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A007736(n+1)`
-/

namespace A327814.P8185613950175115358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A007736 (n + 1) : ℚ)

end

end A327814.P8185613950175115358

/-! ## A327814.P8013676176525908913

`Δ[A002088(n)]/A007736(n+1)`
-/

namespace A327814.P8013676176525908913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007736 (n + 1) : ℚ)

end

end A327814.P8013676176525908913

/-! ## A327814.P12757295601619888407

`Δ[A005728(n)]/A007736(n+1)`
-/

namespace A327814.P12757295601619888407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007736 (n + 1) : ℚ)

end

end A327814.P12757295601619888407

/-! ## A327814.P5444308274672630348

`A000010(n+1)/A007736(n+1)`
-/

namespace A327814.P5444308274672630348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A007736 (n + 1) : ℚ)

end

end A327814.P5444308274672630348

/-! ## A327814.P8030236680422732635

`A349137(Δ[n²])/A007736(n+1)`
-/

namespace A327814.P8030236680422732635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007736 (n + 1) : ℚ)

end

end A327814.P8030236680422732635

/-! ## A327814.P11145026087432755133

`sqrt(A127473(n+1))/A007736(n+1)`
-/

namespace A327814.P11145026087432755133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) / (A007736 (n + 1) : ℝ)

end

end A327814.P11145026087432755133

/-! ## A327814.P14846783922110272495

`(A109606(n+1)+1)/A007736(n+1)`
-/

namespace A327814.P14846783922110272495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A007736 (n + 1) : ℚ)

end

end A327814.P14846783922110272495

/-! ## A327814.P5108167936783675568

`(A039649(n+1)-1)/A007736(n+1)`
-/

namespace A327814.P5108167936783675568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A007736 (n + 1) : ℚ)

end

end A327814.P5108167936783675568

/-! ## A327814.P9483585444022640568

`(n+1-A051953(n+1))/A007736(n+1)`
-/

namespace A327814.P9483585444022640568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A051953 (n + 1) : ℚ) / (A007736 (n + 1) : ℚ)

end

end A327814.P9483585444022640568

/-! ## A327814.P3035393409926808995

`abs(Δ[A327442(n)]/A007736(n+1))`
-/

namespace A327814.P3035393409926808995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A007736 (n + 1) : ℚ)|

end

end A327814.P3035393409926808995

/-!
# A327815: Number of irreducible factors in the factorization of the n-th cyclotomic polynomial over GF(7) (counted with multiplicity).

The programs for A327815, there is no canonical definition to state claims against.
-/

/-! ## A327815.P1377927519047472367

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A007738(n+1)`
-/

namespace A327815.P1377927519047472367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A007738 (n + 1) : ℚ)

end

end A327815.P1377927519047472367

/-! ## A327815.P12380784205296185432

`Δ[A002088(n)]/A007738(n+1)`
-/

namespace A327815.P12380784205296185432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007738 (n + 1) : ℚ)

end

end A327815.P12380784205296185432

/-! ## A327815.P12648237842237437063

`Δ[A005728(n)]/A007738(n+1)`
-/

namespace A327815.P12648237842237437063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007738 (n + 1) : ℚ)

end

end A327815.P12648237842237437063

/-! ## A327815.P2679914500323851413

`A000010(n+1)/A007738(n+1)`
-/

namespace A327815.P2679914500323851413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A007738 (n + 1) : ℚ)

end

end A327815.P2679914500323851413

/-! ## A327815.P12186115619828316318

`A349137(Δ[n²])/A007738(n+1)`
-/

namespace A327815.P12186115619828316318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007738 (n + 1) : ℚ)

end

end A327815.P12186115619828316318

/-! ## A327815.P7332680231852612782

`sqrt(A127473(n+1))/A007738(n+1)`
-/

namespace A327815.P7332680231852612782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) / (A007738 (n + 1) : ℝ)

end

end A327815.P7332680231852612782

/-! ## A327815.P14182561056346605661

`∑{d}[n+1, (n+1)/#*A008683(#)]/A007738(n+1)`
-/

namespace A327815.P14182561056346605661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) / (A007738 (n + 1) : ℚ)

end

end A327815.P14182561056346605661

/-! ## A327815.P3103018718294944737

`abs(Δ[A327442(n)]/A007738(n+1))`
-/

namespace A327815.P3103018718294944737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A007738 (n + 1) : ℚ)|

end

end A327815.P3103018718294944737

/-! ## A327815.P15010144051003374898

`A054523(A000124(n))/A007738(n+1)`
-/

namespace A327815.P15010144051003374898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054523 (A000124 n).toNat : ℚ) / (A007738 (n + 1) : ℚ)

end

end A327815.P15010144051003374898

/-!
# A327816: Number of irreducible factors in the factorization of the n-th cyclotomic polynomial over GF(8) (counted with multiplicity).

The programs for A327816, there is no canonical definition to state claims against.
-/

/-! ## A327816.P6516293737619612737

`Δ[A002088(n)]/A007739(n+1)`
-/

namespace A327816.P6516293737619612737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007739 (n + 1) : ℚ)

end

end A327816.P6516293737619612737

/-! ## A327816.P14587885982931806229

`Δ[A005728(n)]/A007739(n+1)`
-/

namespace A327816.P14587885982931806229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007739 (n + 1) : ℚ)

end

end A327816.P14587885982931806229

/-! ## A327816.P12274478771131105844

`A000010(n+1)/A007739(n+1)`
-/

namespace A327816.P12274478771131105844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A007739 (n + 1) : ℚ)

end

end A327816.P12274478771131105844

/-! ## A327816.P16574535450404182145

`A349137(Δ[n²])/A007739(n+1)`
-/

namespace A327816.P16574535450404182145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007739 (n + 1) : ℚ)

end

end A327816.P16574535450404182145

/-! ## A327816.P1652630509065728943

`∑{d}[n+1, A023140(#)*A361984((n+1)/#)]`
-/

namespace A327816.P1652630509065728943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023140 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327816.P1652630509065728943

/-! ## A327816.P2301942834223799891

`∑{d}[n+1, (n+1)/#*A008683(#)]/A007739(n+1)`
-/

namespace A327816.P2301942834223799891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) / (A007739 (n + 1) : ℚ)

end

end A327816.P2301942834223799891

/-! ## A327816.P17330084632050487495

`A000010(n+1)/A053451(A025480(n))`
-/

namespace A327816.P17330084632050487495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A053451 (A025480 n).toNat : ℚ)

end

end A327816.P17330084632050487495

/-! ## A327816.P7473175859977952152

`A000010(n+1)/A054709(A000265(n+1))`
-/

namespace A327816.P7473175859977952152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A054709 (A000265 (n + 1)).toNat : ℚ)

end

end A327816.P7473175859977952152

/-! ## A327816.P3855920359999233536

`A067541(2*n+1)/A007739(n+1)`
-/

namespace A327816.P3855920359999233536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067541 (2 * n + 1) : ℚ) / (A007739 (n + 1) : ℚ)

end

end A327816.P3855920359999233536

/-!
# A327817: Number of irreducible factors in the factorization of the n-th cyclotomic polynomial over GF(9) (counted with multiplicity).

The programs for A327817, there is no canonical definition to state claims against.
-/

/-! ## A327817.P2156731842224922684

`Δ[A002088(n)]/A007740(n+1)`
-/

namespace A327817.P2156731842224922684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007740 (n + 1) : ℚ)

end

end A327817.P2156731842224922684

/-! ## A327817.P1258853467820799740

`Δ[A005728(n)]/A007740(n+1)`
-/

namespace A327817.P1258853467820799740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007740 (n + 1) : ℚ)

end

end A327817.P1258853467820799740

/-! ## A327817.P4854309052712123978

`A000010(n+1)/A007740(n+1)`
-/

namespace A327817.P4854309052712123978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A007740 (n + 1) : ℚ)

end

end A327817.P4854309052712123978

/-! ## A327817.P2552283185306629002

`A349137(Δ[n²])/A007740(n+1)`
-/

namespace A327817.P2552283185306629002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007740 (n + 1) : ℚ)

end

end A327817.P2552283185306629002

/-! ## A327817.P11778093448470602687

`sqrt(A127473(n+1))/A007740(n+1)`
-/

namespace A327817.P11778093448470602687
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) / (A007740 (n + 1) : ℝ)

end

end A327817.P11778093448470602687

/-! ## A327817.P4466974650830841926

`∑{d}[n+1, (n+1)/#*A008683(#)]/A007740(n+1)`
-/

namespace A327817.P4466974650830841926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) / (A007740 (n + 1) : ℚ)

end

end A327817.P4466974650830841926

/-! ## A327817.P10059840894068518564

`A000010(n+1)/A026741(A007734(n+1))`
-/

namespace A327817.P10059840894068518564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A026741 (A007734 (n + 1)).toNat : ℚ)

end

end A327817.P10059840894068518564

/-! ## A327817.P648743931713689530

`A000010(n+1)/A004526(lcm(2, A007734(n+1)))`
-/

namespace A327817.P648743931713689530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A004526 (Int.lcm 2 (A007734 (n + 1))) : ℚ)

end

end A327817.P648743931713689530

/-! ## A327817.P9516341300009601216

`A054523(A000124(n))/A007740(n+1)`
-/

namespace A327817.P9516341300009601216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054523 (A000124 n).toNat : ℚ) / (A007740 (n + 1) : ℚ)

end

end A327817.P9516341300009601216

/-!
# A327818: Square array read by ascending antidiagonals: T(n,m) is the number of irreducible factors in the factorization of the m-th cyclotomic polynomial over GF(k), k = A246655(n) (counted with multiplicity).

The programs for A327818, there is no canonical definition to state claims against.
-/

/-! ## A327818.P6022192174350753534

`A008620(and(A002260(n+1), A222460(n+1)))`
-/

namespace A327818.P6022192174350753534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.land (A002260 (n + 1)) (A222460 (n + 1))).toNat

end

end A327818.P6022192174350753534

/-! ## A327818.P16794808677376527201

`A001222(2*A000005(A295390(n))+1)`
-/

namespace A327818.P16794808677376527201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A000005 (A295390 n).toNat + 1).toNat

end

end A327818.P16794808677376527201

/-!
# A327819: Elements of the unique smallest MSTD (More Sums Than Differences) set of primes.

The programs for A327819, there is no canonical definition to state claims against.
-/

/-! ## A327819.P13585379967432390062

`p?[comp[n²-2*∏{p}[n+1, #]]+n+1]`
-/

namespace A327819.P13585379967432390062
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((2 * (∏ p ∈ Nat.primeFactors (f3 n), p) : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A327819.P13585379967432390062

/-! ## A327819.P16115446369408945240

`p?[floor(∑[(n-1)/(a(n-1)+n)])+n+1]` with `a(0)=2`
-/

namespace A327819.P16115446369408945240
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  ((n : ℤ) - 1 : ℚ) / (f2 (n - 1) + (n : ℚ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327819.P16115446369408945240

/-! ## A327819.P7573843541864053102

`p?[comp[A279175(n)]+n]`
-/

namespace A327819.P7573843541864053102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279175 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A327819.P7573843541864053102

/-! ## A327819.P5848250869783067471

`p?[comp[A309481(n)]+n]`
-/

namespace A327819.P5848250869783067471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309481 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A327819.P5848250869783067471

/-! ## A327819.P9420843681265802464

`record[p?[A154454(3*n)-(n+3)]]`
-/

namespace A327819.P9420843681265802464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154454 (3 * n) - (n + 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327819.P9420843681265802464

/-!
# A327820: Smallest prime with n holes in its decimal digits.

The programs for A327820, there is no canonical definition to state claims against.
-/

/-! ## A327820.P17070281054642438455

`A331898(A001096(n))`
-/

namespace A327820.P17070281054642438455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331898 (A001096 n).toNat

end

end A327820.P17070281054642438455

/-! ## A327820.P5741901759349038190

`A136548(A331898(n)+1)`
-/

namespace A327820.P5741901759349038190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A331898 n + 1).toNat

end

end A327820.P5741901759349038190

/-!
# A327821: Number of legal Go positions on a board which is an n-cycle graph.

The programs for A327821, the canonical program `A327821.P7916881162258600978` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327821 has offset 1).

The definition of A327821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327821.P7916881162258600978

`4*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=57`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327821

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` -/
def P7916881162258600978.Spec : Prop :=
  ∀ n, P7916881162258600978.a n = A327821 (n + 1)

theorem P7916881162258600978.correct : P7916881162258600978.Spec := by
  intro n
  simp only [A327821, Nat.add_sub_cancel]

end A327821

/-! ## A327821.P2339964345773574087

`ogf((1+x+3x^2-x^3)/(1-4x+4x^2-2x^3+x^4))`
-/

namespace A327821.P2339964345773574087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, -1] [1, -4, 4, -2, 1] n

end

end A327821.P2339964345773574087

namespace A327821

/-- `ogf((1+x+3x^2-x^3)/(1-4x+4x^2-2x^3+x^4))` -/
def P2339964345773574087.Spec : Prop :=
  ∀ n, P2339964345773574087.a n = A327821 (n + 1)

end A327821

/-! ## A327821.P15243515916301161879

`∑[A098182(n+2)]-A030236(n+1)`
-/

namespace A327821.P15243515916301161879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098182 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A030236 (n + 1)

end

end A327821.P15243515916301161879

namespace A327821

/-- `∑[A098182(n+2)]-A030236(n+1)` -/
def P15243515916301161879.Spec : Prop :=
  ∀ n, P15243515916301161879.a n = A327821 (n + 1)

end A327821

/-!
# A327823: Odd integers m such that every odd integer k with 1 < k < m and gcd(k,m) = 1 is prime.

The programs for A327823, there is no canonical definition to state claims against.
-/

/-! ## A327823.P12779955703036175017

`∑[A046523(∑[abs(1-n)!])]`
-/

namespace A327823.P12779955703036175017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327823.P12779955703036175017

/-! ## A327823.P16627842342671172158

`lt[A379010(n+1), 9^(n%2)]`
-/

namespace A327823.P16627842342671172158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327823.P16627842342671172158

/-! ## A327823.P8610345927737310722

`lt[n, A055205(or(1, 3*n)+n)]`
-/

namespace A327823.P8610345927737310722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055205 (Nat.lor 1 (3 * n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327823.P8610345927737310722

/-! ## A327823.P17256269035928690043

`A018388(∑[A103263(n)])`
-/

namespace A327823.P17256269035928690043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327823.P17256269035928690043

/-!
# A327826: Sum of multinomials M(n; lambda), where lambda ranges over all partitions of n into parts that form a set of size two.

The programs for A327826, there is no canonical definition to state claims against.
-/

/-! ## A327826.P7876430717864637190

`A327803(record[2-A327803(n)+n])`
-/

namespace A327826.P7876430717864637190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A327803 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327826.P7876430717864637190

/-! ## A327826.P14462363710897815242

`A327803(A075349(n+1)+A057427(n))`
-/

namespace A327826.P14462363710897815242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (A075349 (n + 1) + A057427 n).toNat

end

end A327826.P14462363710897815242

/-! ## A327826.P6043319512898445878

`A327803(A178334(n)+A075349(n+1))`
-/

namespace A327826.P6043319512898445878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (A178334 n + A075349 (n + 1)).toNat

end

end A327826.P6043319512898445878

/-! ## A327826.P3781566242644636683

`A327803(A075349(n+1)-A057428(n))`
-/

namespace A327826.P3781566242644636683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (A075349 (n + 1) - A057428 n).toNat

end

end A327826.P3781566242644636683

/-! ## A327826.P1697872189610526013

`A327803(A075349(n+1)+A057428(n)²)`
-/

namespace A327826.P1697872189610526013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (A075349 (n + 1) + A057428 n ^ 2).toNat

end

end A327826.P1697872189610526013

/-! ## A327826.P14809044190502106512

`A327803(A075349(n+1)+A057428(n)+2)`
-/

namespace A327826.P14809044190502106512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327803 (A075349 (n + 1) + (A057428 n + 2)).toNat

end

end A327826.P14809044190502106512

/-!
# A327827: Sum of multinomials M(n; lambda), where lambda ranges over all partitions of n into parts incorporating 1.

The programs for A327827, there is no canonical definition to state claims against.
-/

/-! ## A327827.P540904686885165615

`n*A327801(C(n, 2))`
-/

namespace A327827.P540904686885165615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327801 (Nat.choose n 2)

end

end A327827.P540904686885165615

/-! ## A327827.P2488032070635618035

`n*A005651((2*n)%(n+1))`
-/

namespace A327827.P2488032070635618035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005651 (2 * n % (n + 1))

end

end A327827.P2488032070635618035

/-! ## A327827.P17190013452884241995

`lcm(n, A327801(A000124(n)))`
-/

namespace A327827.P17190013452884241995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A327801 (A000124 n).toNat)

end

end A327827.P17190013452884241995

/-! ## A327827.P1682604969871771003

`n*A327801(A000217(n)-n)`
-/

namespace A327827.P1682604969871771003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327801 (A000217 n - (n : ℤ)).toNat

end

end A327827.P1682604969871771003

/-! ## A327827.P9685362523543529418

`n*A005651(A003056(∑[n]-n))`
-/

namespace A327827.P9685362523543529418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005651 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat

end

end A327827.P9685362523543529418

/-! ## A327827.P9058908230347438962

`n*A309973(A179865(n+1)-1)`
-/

namespace A327827.P9058908230347438962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A309973 (A179865 (n + 1) - 1).toNat

end

end A327827.P9058908230347438962

/-! ## A327827.P3888190297421437255

`n*A005651(A244325(2*n+1))`
-/

namespace A327827.P3888190297421437255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005651 (A244325 (2 * n + 1)).toNat

end

end A327827.P3888190297421437255

/-! ## A327827.P1533413711738993345

`n*A327801(A179865(n+1)-n)`
-/

namespace A327827.P1533413711738993345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327801 (A179865 (n + 1) - (n : ℤ)).toNat

end

end A327827.P1533413711738993345

/-! ## A327827.P10693810331982842083

`A327801(A000217(n)+1)-A000007(n)`
-/

namespace A327827.P10693810331982842083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327801 (A000217 n + 1).toNat - A000007 n

end

end A327827.P10693810331982842083

/-! ## A327827.P5900197150259619013

`A327801(A179865(n+1)+1)-A000007(n)`
-/

namespace A327827.P5900197150259619013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327801 (A179865 (n + 1) + 1).toNat - A000007 n

end

end A327827.P5900197150259619013

/-!
# A327828: Sum of multinomials M(n; lambda), where lambda ranges over all partitions of n into parts incorporating 2.

The programs for A327828, there is no canonical definition to state claims against.
-/

/-! ## A327828.P17493491903221882492

`A033441(n)*A283976(A079791(n+1))`
-/

namespace A327828.P17493491903221882492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033441 n * A283976 (A079791 (n + 1)).toNat

end

end A327828.P17493491903221882492

/-!
# A327829: Squarefree numbers with a prime number of prime factors.

The programs for A327829, the canonical program `A327829.P6390908241327507115` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327829 has offset 1).

The definition of A327829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6930 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327829.P18240890897961349874

`filter[A063989(n+1), A008966(#)]`
-/

namespace A327829.P18240890897961349874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A327829.P18240890897961349874

namespace A327829

/-- `filter[A063989(n+1), A008966(#)]` -/
def P18240890897961349874.Spec : Prop :=
  ∀ n, P18240890897961349874.a n = A327829 (n + 1)

end A327829

/-! ## A327829.P10795737089640691568

`filter[A063989(n+1), A354353(#)]`
-/

namespace A327829.P10795737089640691568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A327829.P10795737089640691568

namespace A327829

/-- `filter[A063989(n+1), A354353(#)]` -/
def P10795737089640691568.Spec : Prop :=
  ∀ n, P10795737089640691568.a n = A327829 (n + 1)

end A327829

/-! ## A327829.P396952933443596733

`filter[A063989(n+1), A354819(#)]`
-/

namespace A327829.P396952933443596733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A327829.P396952933443596733

namespace A327829

/-- `filter[A063989(n+1), A354819(#)]` -/
def P396952933443596733.Spec : Prop :=
  ∀ n, P396952933443596733.a n = A327829 (n + 1)

end A327829

/-! ## A327829.P6390908241327507115

`∩[A000469(n+1), A063989(n+1)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A327829

/-- `∩[A000469(n+1), A063989(n+1)]` -/
def P6390908241327507115.Spec : Prop :=
  ∀ n, (P6390908241327507115.a n : ℤ) = A327829 (n + 1)

theorem P6390908241327507115.correct : P6390908241327507115.Spec := by
  intro n
  simp only [A327829, Nat.add_sub_cancel]

end A327829

/-! ## A327829.P5337326771305132816

`∩[A005117(n+1), A063989(n+1)]`
-/

namespace A327829.P5337326771305132816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327829.P5337326771305132816

namespace A327829

/-- `∩[A005117(n+1), A063989(n+1)]` -/
def P5337326771305132816.Spec : Prop :=
  ∀ n, (P5337326771305132816.a n : ℤ) = A327829 (n + 1)

end A327829

/-! ## A327829.P4417171739385514999

`filter[A063806(n+1), A008966(#)]`
-/

namespace A327829.P4417171739385514999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A327829.P4417171739385514999

namespace A327829

/-- `filter[A063806(n+1), A008966(#)]` -/
def P4417171739385514999.Spec : Prop :=
  ∀ n, P4417171739385514999.a n = A327829 (n + 1)

end A327829

/-! ## A327829.P2829390574863140532

`filter[A063806(n+1), A354353(#)]`
-/

namespace A327829.P2829390574863140532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A327829.P2829390574863140532

namespace A327829

/-- `filter[A063806(n+1), A354353(#)]` -/
def P2829390574863140532.Spec : Prop :=
  ∀ n, P2829390574863140532.a n = A327829 (n + 1)

end A327829

/-! ## A327829.P7233485446429401367

`filter[A063806(n+1), A354819(#)]`
-/

namespace A327829.P7233485446429401367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A327829.P7233485446429401367

namespace A327829

/-- `filter[A063806(n+1), A354819(#)]` -/
def P7233485446429401367.Spec : Prop :=
  ∀ n, P7233485446429401367.a n = A327829 (n + 1)

end A327829

/-! ## A327829.P12556682892462197571

`∩[A000469(n+1), A063806(n+1)]`
-/

namespace A327829.P12556682892462197571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327829.P12556682892462197571

namespace A327829

/-- `∩[A000469(n+1), A063806(n+1)]` -/
def P12556682892462197571.Spec : Prop :=
  ∀ n, (P12556682892462197571.a n : ℤ) = A327829 (n + 1)

end A327829

/-! ## A327829.P7167257524246446043

`∩[A005117(n+1), A063806(n+1)]`
-/

namespace A327829.P7167257524246446043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327829.P7167257524246446043

namespace A327829

/-- `∩[A005117(n+1), A063806(n+1)]` -/
def P7167257524246446043.Spec : Prop :=
  ∀ n, (P7167257524246446043.a n : ℤ) = A327829 (n + 1)

end A327829

/-! ## A327829.P2541262461976856445

`filter[A028261(n+1), A354819(#)]`
-/

namespace A327829.P2541262461976856445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A327829.P2541262461976856445

namespace A327829

/-- `filter[A028261(n+1), A354819(#)]` -/
def P2541262461976856445.Spec : Prop :=
  ∀ n, P2541262461976856445.a n = A327829 (n + 1)

end A327829

/-! ## A327829.P8702022835057622699

`∩[A000469(n+1), A028261(n+1)]`
-/

namespace A327829.P8702022835057622699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327829.P8702022835057622699

namespace A327829

/-- `∩[A000469(n+1), A028261(n+1)]` -/
def P8702022835057622699.Spec : Prop :=
  ∀ n, (P8702022835057622699.a n : ℤ) = A327829 (n + 1)

end A327829

/-! ## A327829.P15408087031416443343

`eq[2, A000005(A003415(A046523(n+2)))]+2`
-/

namespace A327829.P15408087031416443343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003415 (A046523 (n + 2)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A327829.P15408087031416443343

namespace A327829

/-- `eq[2, A000005(A003415(A046523(n+2)))]+2` -/
def P15408087031416443343.Spec : Prop :=
  ∀ n, (P15408087031416443343.a n : ℤ) = A327829 (n + 1)

end A327829

/-! ## A327829.P16222501024069071662

`eq[2, A285718(n+1)+A032741(A032741(n))]`
-/

namespace A327829.P16222501024069071662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1) + A032741 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327829.P16222501024069071662

namespace A327829

/-- `eq[2, A285718(n+1)+A032741(A032741(n))]` -/
def P16222501024069071662.Spec : Prop :=
  ∀ n, (P16222501024069071662.a n : ℤ) = A327829 (n + 1)

end A327829

/-! ## A327829.P18258802129318637997

`eq[A032741(A032741(n+1)), A292589(n+1)]+1`
-/

namespace A327829.P18258802129318637997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292589 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A327829.P18258802129318637997

namespace A327829

/-- `eq[A032741(A032741(n+1)), A292589(n+1)]+1` -/
def P18258802129318637997.Spec : Prop :=
  ∀ n, (P18258802129318637997.a n : ℤ) = A327829 (n + 1)

end A327829

/-!
# A327830: Numbers m such that the geometric mean of tau(m) and sigma(m) is an integer.

The programs for A327830, there is no canonical definition to state claims against.
-/

/-! ## A327830.P13644299631313545474

`∪[A144695(n+1), A366816(n+1)]`
-/

namespace A327830.P13644299631313545474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327830.P13644299631313545474

/-! ## A327830.P11038394978869002527

`eq[2, A000122(A064840(n+1))]+1`
-/

namespace A327830.P11038394978869002527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A064840 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327830.P11038394978869002527

/-!
# A327832: The practical component of n: the largest divisor of n which is a practical number (A005153).

The programs for A327832, there is no canonical definition to state claims against.
-/

/-! ## A327832.P9699385841160133048

`(n+1)%A030057(A103164(n+1))`
-/

namespace A327832.P9699385841160133048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A030057 (A103164 (n + 1)).toNat)

end

end A327832.P9699385841160133048

/-! ## A327832.P17675035429534599902

`A000188((n+1)²)%A030057(n+1)`
-/

namespace A327832.P17675035429534599902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 ((n + 1) ^ 2)) (A030057 (n + 1))

end

end A327832.P17675035429534599902

/-! ## A327832.P16367469329805968338

`A000196((n+1)²)%(A225561(n+1)+1)`
-/

namespace A327832.P16367469329805968338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 ((n + 1) ^ 2)) (A225561 (n + 1) + 1)

end

end A327832.P16367469329805968338

/-! ## A327832.P12210615094879021688

`A011262(A011262(n+1))%A030057(n+1)`
-/

namespace A327832.P12210615094879021688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011262 (A011262 (n + 1)).toNat) (A030057 (n + 1))

end

end A327832.P12210615094879021688

/-! ## A327832.P10389425880398093960

`A269396(A000027(n+1)%A030057(n+1))`
-/

namespace A327832.P10389425880398093960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269396 (Int.tmod (A000027 (n + 1)) (A030057 (n + 1))).toNat

end

end A327832.P10389425880398093960

/-! ## A327832.P10193412612885146111

`A269396(n+1)%A030057(n+1)`
-/

namespace A327832.P10193412612885146111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269396 (n + 1)) (A030057 (n + 1))

end

end A327832.P10193412612885146111

/-! ## A327832.P236584867611588477

`A161980(n+1)%A030057(n+1)`
-/

namespace A327832.P236584867611588477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161980 (n + 1)) (A030057 (n + 1))

end

end A327832.P236584867611588477

/-!
# A327833: Number of non-overlapping pairs of adjacent runs in permutations of [n].

The programs for A327833, there is no canonical definition to state claims against.
-/

/-! ## A327833.P16916826448523240944

`A063882(A006595(n))`
-/

namespace A327833.P16916826448523240944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (A006595 n).toNat

end

end A327833.P16916826448523240944

/-! ## A327833.P2789006417738702400

`A020912(A020043(n+2))`
-/

namespace A327833.P2789006417738702400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020912 (A020043 (n + 2)).toNat

end

end A327833.P2789006417738702400

/-!
# A327834: Expansion of 1 / AGM(1, 1 - 8*x)^2 in powers of x.

The programs for A327834, there is no canonical definition to state claims against.
-/

/-! ## A327834.P14701091531093122123

`A106821(∑[7^n])+1`
-/

namespace A327834.P14701091531093122123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A327834.P14701091531093122123

/-!
# A327836: Least k > 0 such that n^k == 1 (mod (n+1)^(n+1)).

The programs for A327836, there is no canonical definition to state claims against.
-/

/-! ## A327836.P18089607498582662077

`A005843(A124923(n+2)-1)/gcd(4, n)`
-/

namespace A327836.P18089607498582662077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A124923 (n + 2) - 1).toNat : ℚ) / (Nat.gcd 4 n : ℚ)

end

end A327836.P18089607498582662077

/-!
# A327841: Number of colored compositions of n using all colors of a 2-set such that all parts have different color patterns and the patterns for parts i are sorted and have i colors in (weakly) increasing order.

The programs for A327841, there is no canonical definition to state claims against.
-/

/-! ## A327841.P2004779963495756134

`A327244(∑[round(acot(n)+n)]-1)`
-/

namespace A327841.P2004779963495756134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A327841.P2004779963495756134

/-! ## A327841.P4445970858708720903

`A327244(A133263(n))`
-/

namespace A327841.P4445970858708720903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (A133263 n).toNat

end

end A327841.P4445970858708720903

/-! ## A327841.P3525658325513109605

`A327244(A238531(n+1))`
-/

namespace A327841.P3525658325513109605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (A238531 (n + 1)).toNat

end

end A327841.P3525658325513109605

/-! ## A327841.P17579769364219354606

`A327244(A134869(n+1)-n)`
-/

namespace A327841.P17579769364219354606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (A134869 (n + 1) - (n : ℤ)).toNat

end

end A327841.P17579769364219354606

/-! ## A327841.P4569219862320086905

`A327244(A057427(n)+∑[n]+1)`
-/

namespace A327841.P4569219862320086905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (A057427 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A327841.P4569219862320086905

/-! ## A327841.P10015181873142876960

`A327244(A057427(n)+A000124(n))`
-/

namespace A327841.P10015181873142876960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (A057427 n + A000124 n).toNat

end

end A327841.P10015181873142876960

/-! ## A327841.P17760440450048048888

`A327244(2-(A057427(n)-A000124(n)))`
-/

namespace A327841.P17760440450048048888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327244 (2 - (A057427 n - A000124 n)).toNat

end

end A327841.P17760440450048048888

/-!
# A327842: Number of colored integer partitions of n using all colors of a 3-set such that a color pattern for part i has i distinct colors in increasing order.

The programs for A327842, there is no canonical definition to state claims against.
-/

/-! ## A327842.P899333528415360402

`A327117(∑[n+3]+6)`
-/

namespace A327842.P899333528415360402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327117 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A327842.P899333528415360402

/-! ## A327842.P5518647303598667889

`abs(1-A327117(A167614(n+2)))+1`
-/

namespace A327842.P5518647303598667889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A327117 (A167614 (n + 2)).toNat| + 1

end

end A327842.P5518647303598667889

/-! ## A327842.P17472401851839920178

`A327117(A052905(n)+8)%(8*3^n)`
-/

namespace A327842.P17472401851839920178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327117 (A052905 n + 8).toNat) (8 * 3 ^ n : ℤ)

end

end A327842.P17472401851839920178

/-! ## A327842.P5908820871472924214

`or(A000007(n), A327117(A167614(n+2)))`
-/

namespace A327842.P5908820871472924214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A327117 (A167614 (n + 2)).toNat)

end

end A327842.P5908820871472924214

/-! ## A327842.P17031208504225803027

`lcm(A131561(n), A327117(A052905(n)+8))`
-/

namespace A327842.P17031208504225803027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131561 n) (A327117 (A052905 n + 8).toNat)

end

end A327842.P17031208504225803027

/-! ## A327842.P12751527249935066446

`A327117(A167614(n+2))%A255944(n+4)`
-/

namespace A327842.P12751527249935066446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327117 (A167614 (n + 2)).toNat) (A255944 (n + 4))

end

end A327842.P12751527249935066446

/-!
# A327843: Number of colored integer partitions of 2n using all colors of an n-set such that a color pattern for part i has i distinct colors in increasing order.

The programs for A327843, there is no canonical definition to state claims against.
-/

/-! ## A327843.P4920546406930571006

`A327117(∑[4*n])`
-/

namespace A327843.P4920546406930571006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327843.P4920546406930571006

/-! ## A327843.P15815678214695368150

`gcd(A000038(n), A327117(A046092(n)))`
-/

namespace A327843.P15815678214695368150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A327117 (A046092 n).toNat)

end

end A327843.P15815678214695368150

/-! ## A327843.P11380578043556137039

`A000108(C(n, n²))*A327117(A046092(n))`
-/

namespace A327843.P11380578043556137039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * A327117 (A046092 n).toNat

end

end A327843.P11380578043556137039

/-! ## A327843.P17582629689272055586

`((-1)^A000040(n+2))²*A327117(A046092(n))`
-/

namespace A327843.P17582629689272055586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A000040 (n + 2) : ℤ)) ^ 2 * (A327117 (A046092 n).toNat : ℚ)

end

end A327843.P17582629689272055586

/-! ## A327843.P9141750773394138503

`A014963(A005901(n))*A327117(A046092(n))`
-/

namespace A327843.P9141750773394138503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005901 n).toNat * A327117 (A046092 n).toNat

end

end A327843.P9141750773394138503

/-!
# A327844: Table read by antidiagonals: the m-th row gives the sequence constructed by repeatedly choosing the smallest positive number not already in the row such that for each k = 1, ..., m, the k-th differences are distinct.

The programs for A327844, there is no canonical definition to state claims against.
-/

/-! ## A327844.P9995105149550994622

`A002326((n-C(∑[char[∑[n]]], 2))%A154756(2*n+1))`
-/

namespace A327844.P9995105149550994622
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (Int.tmod ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) (A154756 (2 * n + 1))).toNat

end

end A327844.P9995105149550994622

/-! ## A327844.P9985828116501398171

`A002326(A002262(A135381(n)))`
-/

namespace A327844.P9985828116501398171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A002262 (A135381 n).toNat).toNat

end

end A327844.P9985828116501398171

/-! ## A327844.P2840721989559000700

`A002326(A002262(n)%A001997(n))`
-/

namespace A327844.P2840721989559000700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (Int.tmod (A002262 n) (A001997 n)).toNat

end

end A327844.P2840721989559000700

/-! ## A327844.P3021649989336119725

`A007733(A054582(n)%A058324(n+1))`
-/

namespace A327844.P3021649989336119725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (Int.tmod (A054582 n) (A058324 (n + 1))).toNat

end

end A327844.P3021649989336119725

/-! ## A327844.P15257507992579265663

`A175498(A002260(n+1)%A162724(3*n+4))`
-/

namespace A327844.P15257507992579265663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175498 (Int.tmod (A002260 (n + 1)) (A162724 (3 * n + 4))).toNat

end

end A327844.P15257507992579265663

/-!
# A327845: Number of permutations of {1,2,...,n} such that for every k >= 1, the k-th differences are distinct.

The programs for A327845, there is no canonical definition to state claims against.
-/

/-! ## A327845.P5724169901429569862

`A266529(A112627(n+1))+1`
-/

namespace A327845.P5724169901429569862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (A112627 (n + 1)).toNat + 1

end

end A327845.P5724169901429569862

/-! ## A327845.P8243811900682135836

`A160552(A195146(2^n-1))+1`
-/

namespace A327845.P8243811900682135836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A195146 (2 ^ n - 1)).toNat + 1

end

end A327845.P8243811900682135836

/-! ## A327845.P8543655265573269652

`∑[A139251(∑[(A200928(n+1)-2)²²])]`
-/

namespace A327845.P8543655265573269652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A200928 (n + 1) - 2) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327845.P8543655265573269652

/-!
# A327846: Full days remaining in the month on the Gregorian calendar starting at n-th day of a non-leap year.

The programs for A327846, there is no canonical definition to state claims against.
-/

/-! ## A327846.P2150592627981424581

`30-n%A195873(2*n+1)`
-/

namespace A327846.P2150592627981424581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 - Int.tmod (n : ℤ) (A195873 (2 * n + 1))

end

end A327846.P2150592627981424581

/-!
# A327847: Number of colored compositions of n using all colors of a 2-set such that all parts have different color patterns and the patterns for parts i have i colors in (weakly) increasing order.

The programs for A327847, there is no canonical definition to state claims against.
-/

/-! ## A327847.P3416523607825875896

`A327245(∑[n+2]-1-comp[2*(n+1)])`
-/

namespace A327847.P3416523607825875896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327245 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)).toNat

end

end A327847.P3416523607825875896

/-! ## A327847.P16131339558678062137

`A327245(A133263(n))+C(and(1, n), 2)`
-/

namespace A327847.P16131339558678062137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327245 (A133263 n).toNat + (Nat.choose (Nat.land 1 n) 2 : ℤ)

end

end A327847.P16131339558678062137

/-! ## A327847.P14563714373510304759

`A327245(A133263(n))+A119522(n+4)`
-/

namespace A327847.P14563714373510304759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327245 (A133263 n).toNat + A119522 (n + 4)

end

end A327847.P14563714373510304759

/-! ## A327847.P2095571924840409499

`A328979(n²+1)+A327245(A133263(n))`
-/

namespace A327847.P2095571924840409499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n ^ 2 + 1) + A327245 (A133263 n).toNat

end

end A327847.P2095571924840409499

/-! ## A327847.P18247440748620455539

`A327245(A133263(n))+A085974(A209972(n))`
-/

namespace A327847.P18247440748620455539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327245 (A133263 n).toNat + A085974 (A209972 n).toNat

end

end A327847.P18247440748620455539

/-! ## A327847.P9784507596917827224

`A327245(A133263(n))+A085974(A137855(n+1))`
-/

namespace A327847.P9784507596917827224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327245 (A133263 n).toNat + A085974 (A137855 (n + 1)).toNat

end

end A327847.P9784507596917827224

/-! ## A327847.P11470853333112161817

`A327245(A133263(n))+A085974(A257639(n+1))`
-/

namespace A327847.P11470853333112161817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327245 (A133263 n).toNat + A085974 (A257639 (n + 1)).toNat

end

end A327847.P11470853333112161817

/-!
# A327851: Expansion of Product_{k>=1} B(x^k), where B(x) is the g.f. of A111374.

The programs for A327851, there is no canonical definition to state claims against.
-/

/-! ## A327851.P11058416951735332639

`A330878(or(A004525(n), A271661(n)))`
-/

namespace A327851.P11058416951735332639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (Int.lor (A004525 n) (A271661 n)).toNat

end

end A327851.P11058416951735332639

/-! ## A327851.P15188313341401326484

`A220104(lcm(A105205(n+1), A220104(n+1)))`
-/

namespace A327851.P15188313341401326484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (Int.lcm (A105205 (n + 1)) (A220104 (n + 1)))

end

end A327851.P15188313341401326484

/-!
# A327853: Triangle read by rows, Sierpinski's gasket, A047999 * (0,1,2,3,4,...) diagonalized.

The programs for A327853, the canonical program `A327853.P14020414065990505661` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327853 has offset 1).

The definition of A327853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327853.P14020414065990505661

`A002262(n*A047999(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327853

/-- `A002262(n*A047999(n))` -/
def P14020414065990505661.Spec : Prop :=
  ∀ n, P14020414065990505661.a n = A327853 (n + 1)

theorem P14020414065990505661.correct : P14020414065990505661.Spec := by
  intro n
  simp only [A327853, Nat.add_sub_cancel]

end A327853

/-! ## A327853.P9404725606424158062

`A080099(n*A047999(n))`
-/

namespace A327853.P9404725606424158062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 ((n : ℤ) * A047999 n).toNat

end

end A327853.P9404725606424158062

namespace A327853

/-- `A080099(n*A047999(n))` -/
def P9404725606424158062.Spec : Prop :=
  ∀ n, P9404725606424158062.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P9415211854632798654

`A002262(lcm(n, A143200(n)))`
-/

namespace A327853.P9415211854632798654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.lcm (n : ℤ) (A143200 n))

end

end A327853.P9415211854632798654

namespace A327853

/-- `A002262(lcm(n, A143200(n)))` -/
def P9415211854632798654.Spec : Prop :=
  ∀ n, P9415211854632798654.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P16928875256325713941

`lcm(A080099(n), A166282(n))`
-/

namespace A327853.P16928875256325713941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080099 n) (A166282 n)

end

end A327853.P16928875256325713941

namespace A327853

/-- `lcm(A080099(n), A166282(n))` -/
def P16928875256325713941.Spec : Prop :=
  ∀ n, (P16928875256325713941.a n : ℤ) = A327853 (n + 1)

end A327853

/-! ## A327853.P9669055834398795379

`A002262(n*A143200(n)²)`
-/

namespace A327853.P9669055834398795379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) * A143200 n ^ 2).toNat

end

end A327853.P9669055834398795379

namespace A327853

/-- `A002262(n*A143200(n)²)` -/
def P9669055834398795379.Spec : Prop :=
  ∀ n, P9669055834398795379.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P13540475168982138220

`A002262(n*A166282(n)²)`
-/

namespace A327853.P13540475168982138220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) * A166282 n ^ 2).toNat

end

end A327853.P13540475168982138220

namespace A327853

/-- `A002262(n*A166282(n)²)` -/
def P13540475168982138220.Spec : Prop :=
  ∀ n, P13540475168982138220.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P9837447328161336391

`A080099(n*A143200(n)²)`
-/

namespace A327853.P9837447328161336391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 ((n : ℤ) * A143200 n ^ 2).toNat

end

end A327853.P9837447328161336391

namespace A327853

/-- `A080099(n*A143200(n)²)` -/
def P9837447328161336391.Spec : Prop :=
  ∀ n, P9837447328161336391.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P1519911379579820424

`A007318(n)%2*A002262(n)`
-/

namespace A327853.P1519911379579820424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2 * A002262 n

end

end A327853.P1519911379579820424

namespace A327853

/-- `A007318(n)%2*A002262(n)` -/
def P1519911379579820424.Spec : Prop :=
  ∀ n, P1519911379579820424.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P1329038190424589695

`A008459(n)%2*A002262(n)`
-/

namespace A327853.P1329038190424589695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008459 n) 2 * A002262 n

end

end A327853.P1329038190424589695

namespace A327853

/-- `A008459(n)%2*A002262(n)` -/
def P1329038190424589695.Spec : Prop :=
  ∀ n, P1329038190424589695.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P7301603783895168353

`A093564(n)%2*A002262(n)`
-/

namespace A327853.P7301603783895168353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093564 n) 2 * A002262 n

end

end A327853.P7301603783895168353

namespace A327853

/-- `A093564(n)%2*A002262(n)` -/
def P7301603783895168353.Spec : Prop :=
  ∀ n, P7301603783895168353.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P5903226305856897071

`A134059(n)%2*A002262(n)`
-/

namespace A327853.P5903226305856897071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134059 n) 2 * A002262 n

end

end A327853.P5903226305856897071

namespace A327853

/-- `A134059(n)%2*A002262(n)` -/
def P5903226305856897071.Spec : Prop :=
  ∀ n, P5903226305856897071.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P10748636645074944723

`and(1, A130595(n))*A002262(n)`
-/

namespace A327853.P10748636645074944723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A130595 n) * A002262 n

end

end A327853.P10748636645074944723

namespace A327853

/-- `and(1, A130595(n))*A002262(n)` -/
def P10748636645074944723.Spec : Prop :=
  ∀ n, P10748636645074944723.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P16200179713365155048

`(A002260(n+1)-1)*A047999(n)`
-/

namespace A327853.P16200179713365155048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A047999 n

end

end A327853.P16200179713365155048

namespace A327853

/-- `(A002260(n+1)-1)*A047999(n)` -/
def P16200179713365155048.Spec : Prop :=
  ∀ n, P16200179713365155048.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P13151093551225256552

`and(1, A007318(n))*A057554(Δ[n²])`
-/

namespace A327853.P13151093551225256552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n) * A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A327853.P13151093551225256552

namespace A327853

/-- `and(1, A007318(n))*A057554(Δ[n²])` -/
def P13151093551225256552.Spec : Prop :=
  ∀ n, P13151093551225256552.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P2338647692217097125

`C(A002262(n), A007318(A286098(n)))`
-/

namespace A327853.P2338647692217097125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat (A007318 (A286098 n).toNat).toNat

end

end A327853.P2338647692217097125

namespace A327853

/-- `C(A002262(n), A007318(A286098(n)))` -/
def P2338647692217097125.Spec : Prop :=
  ∀ n, (P2338647692217097125.a n : ℤ) = A327853 (n + 1)

end A327853

/-! ## A327853.P6093598407029182035

`C(A002262(n), A007318(A286099(n)))`
-/

namespace A327853.P6093598407029182035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat (A007318 (A286099 n).toNat).toNat

end

end A327853.P6093598407029182035

namespace A327853

/-- `C(A002262(n), A007318(A286099(n)))` -/
def P6093598407029182035.Spec : Prop :=
  ∀ n, (P6093598407029182035.a n : ℤ) = A327853 (n + 1)

end A327853

/-! ## A327853.P4158819344273421347

`A080099(n)*A143200(n)*A143200(n)`
-/

namespace A327853.P4158819344273421347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n * A143200 n * A143200 n

end

end A327853.P4158819344273421347

namespace A327853

/-- `A080099(n)*A143200(n)*A143200(n)` -/
def P4158819344273421347.Spec : Prop :=
  ∀ n, P4158819344273421347.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P536639447735910329

`A000045(and(1, 18-A007318(n)))*A002262(n)`
-/

namespace A327853.P536639447735910329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (18 - A007318 n)).toNat * A002262 n

end

end A327853.P536639447735910329

namespace A327853

/-- `A000045(and(1, 18-A007318(n)))*A002262(n)` -/
def P536639447735910329.Spec : Prop :=
  ∀ n, P536639447735910329.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P6725171463674295907

`A002262(n*A010054(A286108(n)))`
-/

namespace A327853.P6725171463674295907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) * A010054 (A286108 n).toNat).toNat

end

end A327853.P6725171463674295907

namespace A327853

/-- `A002262(n*A010054(A286108(n)))` -/
def P6725171463674295907.Spec : Prop :=
  ∀ n, P6725171463674295907.a n = A327853 (n + 1)

end A327853

/-! ## A327853.P3894063456809121709

`A268040(n*A047999(n))`
-/

namespace A327853.P3894063456809121709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268040 ((n : ℤ) * A047999 n).toNat

end

end A327853.P3894063456809121709

namespace A327853

/-- `A268040(n*A047999(n))` -/
def P3894063456809121709.Spec : Prop :=
  ∀ n, P3894063456809121709.a n = A327853 (n + 1)

end A327853

/-!
# A327856: The upper left triangular section of square array A091255, read by rows.

The programs for A327856, there is no canonical definition to state claims against.
-/

/-! ## A327856.P533008292155700885

`A091255(A245300(n)+1)`
-/

namespace A327856.P533008292155700885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A245300 n + 1).toNat

end

end A327856.P533008292155700885

/-! ## A327856.P2679426404160290735

`A050873(n+1)*A177994(A229243(n))`
-/

namespace A327856.P2679426404160290735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A177994 (A229243 n).toNat

end

end A327856.P2679426404160290735

/-! ## A327856.P10405181184348106871

`or(A035195(A002106(n+1)), A050873(n+1))`
-/

namespace A327856.P10405181184348106871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035195 (A002106 (n + 1)).toNat) (A050873 (n + 1))

end

end A327856.P10405181184348106871

/-! ## A327856.P15868896661567288365

`A050873(n+1)+A000122(A375496(3*n+4))`
-/

namespace A327856.P15868896661567288365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) + A000122 (A375496 (3 * n + 4)).toNat

end

end A327856.P15868896661567288365

/-! ## A327856.P16309566768415128281

`A241466(A340078(2*(n+2)))+A050873(n+1)`
-/

namespace A327856.P16309566768415128281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241466 (A340078 (2 * (n + 2))).toNat + A050873 (n + 1)

end

end A327856.P16309566768415128281

/-!
# A327857: a(n) = A091255(1+A059905(n), 1+A059906(n)).

The programs for A327857, there is no canonical definition to state claims against.
-/

/-! ## A327857.P13829397217074997092

`A091255(A054239(n)+1)`
-/

namespace A327857.P13829397217074997092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A054239 n + 1).toNat

end

end A327857.P13829397217074997092

/-! ## A327857.P617658280170384704

`A000188(A254115(n+1)+n*A185284(n))`
-/

namespace A327857.P617658280170384704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A254115 (n + 1) + (n : ℤ) * A185284 n).toNat

end

end A327857.P617658280170384704

/-! ## A327857.P17856504628734682789

`A185284(A185284(n))+A000188(A254115(n+1))`
-/

namespace A327857.P17856504628734682789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A185284 n).toNat + A000188 (A254115 (n + 1)).toNat

end

end A327857.P17856504628734682789

/-! ## A327857.P16855010568562590866

`A000188(A000040(n+1)*A254115(n+1))`
-/

namespace A327857.P16855010568562590866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000040 (n + 1) * A254115 (n + 1)).toNat

end

end A327857.P16855010568562590866

/-! ## A327857.P14611685966628889908

`A000188(A254115(n+1))^A008683(A052552(n))`
-/

namespace A327857.P14611685966628889908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (A254115 (n + 1)).toNat : ℚ) ^ (A008683 (A052552 n).toNat : ℤ)

end

end A327857.P14611685966628889908

/-!
# A327858: Greatest common divisor of the arithmetic derivative and the primorial base exp-function: a(n) = gcd(A003415(n), A276086(n)).

The programs for A327858, there is no canonical definition to state claims against.
-/

/-! ## A327858.P3758939830776376842

`A276086(A351234(n))`
-/

namespace A327858.P3758939830776376842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A351234 n).toNat

end

end A327858.P3758939830776376842

/-! ## A327858.P18335418706003848920

`A373843(A276086(n))`
-/

namespace A327858.P18335418706003848920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373843 (A276086 n).toNat

end

end A327858.P18335418706003848920

/-! ## A327858.P17027473628806660030

`A276086(n-A351233(n))`
-/

namespace A327858.P17027473628806660030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n : ℤ) - A351233 n).toNat

end

end A327858.P17027473628806660030

/-! ## A327858.P17410666875883672238

`A276086(n)/A351231(n)`
-/

namespace A327858.P17410666875883672238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A351231 n : ℚ)

end

end A327858.P17410666875883672238

/-! ## A327858.P7261501961081550709

`gcd(A003415(n), A276086(n))`
-/

namespace A327858.P7261501961081550709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A276086 n)

end

end A327858.P7261501961081550709

/-! ## A327858.P6243291432861219033

`gcd(A359423(n), A373849(n))`
-/

namespace A327858.P6243291432861219033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A359423 n) (A373849 n)

end

end A327858.P6243291432861219033

/-! ## A327858.P3854242708707047367

`A276086(n)/A276086(A351233(n))`
-/

namespace A327858.P3854242708707047367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A276086 (A351233 n).toNat : ℚ)

end

end A327858.P3854242708707047367

/-! ## A327858.P9039384705552870701

`(A373849(n)+A003415(n))/A351231(n)`
-/

namespace A327858.P9039384705552870701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373849 n + A003415 n : ℚ) / (A351231 n : ℚ)

end

end A327858.P9039384705552870701

/-! ## A327858.P6537445943105662383

`A324198(n)/A351231(n)*A351251(n)`
-/

namespace A327858.P6537445943105662383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324198 n : ℚ) / (A351231 n : ℚ) * (A351251 n : ℚ)

end

end A327858.P6537445943105662383

/-! ## A327858.P16496808962080112062

`(A351225(n)+n)/(A351233(n)+A351225(A351233(n)))`
-/

namespace A327858.P16496808962080112062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351225 n + (n : ℤ) : ℚ) / (A351233 n + A351225 (A351233 n).toNat : ℚ)

end

end A327858.P16496808962080112062

/-!
# A327859: a(n) = A276086(A003415(n)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A327859, there is no canonical definition to state claims against.
-/

/-! ## A327859.P2045556588328039443

`A276086(A003415(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327859.P2045556588328039443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A003415 n).toNat

end

end A327859.P2045556588328039443

/-! ## A327859.P1133430671639295733

`A369964(n)*A370117(n)`
-/

namespace A327859.P1133430671639295733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369964 n * A370117 n

end

end A327859.P1133430671639295733

/-! ## A327859.P15447571787049958203

`A276086(A168036(n)+n)`
-/

namespace A327859.P15447571787049958203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A168036 n + (n : ℤ)).toNat

end

end A327859.P15447571787049958203

/-! ## A327859.P5210463115604166401

`A276086(A129283(n)-n)`
-/

namespace A327859.P5210463115604166401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A129283 n - (n : ℤ)).toNat

end

end A327859.P5210463115604166401

/-! ## A327859.P6862874302211380758

`A276086(∑{d}[n, A300251(#)])`
-/

namespace A327859.P6862874302211380758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat

end

end A327859.P6862874302211380758

/-! ## A327859.P6752090429081751621

`A276086(A368921(n)+A068346(n))`
-/

namespace A327859.P6752090429081751621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A368921 n + A068346 n).toNat

end

end A327859.P6752090429081751621

/-! ## A327859.P6232118796487932568

`A276086(A276086(n)-A373849(n))`
-/

namespace A327859.P6232118796487932568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A276086 n - A373849 n).toNat

end

end A327859.P6232118796487932568

/-! ## A327859.P12362891011156605807

`A276086(A327858(n)*A351230(n))`
-/

namespace A327859.P12362891011156605807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A327858 n * A351230 n).toNat

end

end A327859.P12362891011156605807

/-! ## A327859.P931973444572682161

`A276086(A370120(n))*A369964(n)`
-/

namespace A327859.P931973444572682161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A370120 n).toNat * A369964 n

end

end A327859.P931973444572682161

/-! ## A327859.P12415249528960452770

`A276086(A358669(n)/A276086(n))`
-/

namespace A327859.P12415249528960452770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((A358669 n : ℚ) / (A276086 n : ℚ))).toNat

end

end A327859.P12415249528960452770

/-! ## A327859.P11197261886161418899

`A276086(A359423(n)/A351231(n))`
-/

namespace A327859.P11197261886161418899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((A359423 n : ℚ) / (A351231 n : ℚ))).toNat

end

end A327859.P11197261886161418899

/-! ## A327859.P12875439248996775021

`A276086(∑[A258057(n)]-A258057(n))`
-/

namespace A327859.P12875439248996775021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (∑ j ∈ Finset.range (n + 1), f1 j - A258057 n).toNat

end

end A327859.P12875439248996775021

/-! ## A327859.P16177264017771419007

`A276086(A276086(n)*A351230(n)/A351231(n))`
-/

namespace A327859.P16177264017771419007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((A276086 n * A351230 n : ℚ) / (A351231 n : ℚ))).toNat

end

end A327859.P16177264017771419007

/-! ## A327859.P18113348902487153132

`A276086(A258651(∑[n]+2*n+1))`
-/

namespace A327859.P18113348902487153132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A258651 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1))).toNat

end

end A327859.P18113348902487153132

/-!
# A327860: Arithmetic derivative of the primorial base exp-function: a(n) = A003415(A276086(n)).

The programs for A327860, there is no canonical definition to state claims against.
-/

/-! ## A327860.P16021265666103280442

`A328572(n)*A342002(n)`
-/

namespace A327860.P16021265666103280442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A342002 n

end

end A327860.P16021265666103280442

/-! ## A327860.P17353592019895401045

`A003415(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327860.P17353592019895401045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A276086 n).toNat

end

end A327860.P17353592019895401045

/-! ## A327860.P4814069373336906935

`A342016(n)+A276086(n)`
-/

namespace A327860.P4814069373336906935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342016 n + A276086 n

end

end A327860.P4814069373336906935

/-! ## A327860.P10062287208966751404

`A328572(n)*A346253(A328622(n))`
-/

namespace A327860.P10062287208966751404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A346253 (A328622 n).toNat

end

end A327860.P10062287208966751404

/-! ## A327860.P15112244786067843092

`A328572(n)*A344760(A289234(n))`
-/

namespace A327860.P15112244786067843092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A344760 (A289234 n).toNat

end

end A327860.P15112244786067843092

/-! ## A327860.P7609043128288995123

`A328572(n)*A344762(A328625(n))`
-/

namespace A327860.P7609043128288995123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A344762 (A328625 n).toNat

end

end A327860.P7609043128288995123

/-! ## A327860.P1498055752022913213

`A328572(n)*A344761(A328626(n))`
-/

namespace A327860.P1498055752022913213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A344761 (A328626 n).toNat

end

end A327860.P1498055752022913213

/-! ## A327860.P18346056586012431007

`A328572(n)*A346252(A328623(n))`
-/

namespace A327860.P18346056586012431007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A346252 (A328623 n).toNat

end

end A327860.P18346056586012431007

/-! ## A327860.P17016489396284040579

`A344026(A277022(n))`
-/

namespace A327860.P17016489396284040579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (A277022 n).toNat

end

end A327860.P17016489396284040579

/-! ## A327860.P9251887141092380441

`∑{d}[A276086(n), A300251(#)]`
-/

namespace A327860.P9251887141092380441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A327860.P9251887141092380441

/-!
# A327861: Number of divisors d of n for which A003415(d)*d is equal to n, where A003415(x) gives the arithmetic derivative of x.

The programs for A327861, the canonical program `A327861.P7578778145524314536` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327861 has offset 1).

The definition of A327861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327861.P4453795829707150175

`char[A190116(n+1)-1]`
-/

namespace A327861.P4453795829707150175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190116 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327861.P4453795829707150175

namespace A327861

/-- `char[A190116(n+1)-1]` -/
def P4453795829707150175.Spec : Prop :=
  ∀ n, (P4453795829707150175.a n : ℤ) = A327861 (n + 1)

end A327861

/-! ## A327861.P12541156138311140435

`char[n*A003415(n)-1]`
-/

namespace A327861.P12541156138311140435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003415 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327861.P12541156138311140435

namespace A327861

/-- `char[n*A003415(n)-1]` -/
def P12541156138311140435.Spec : Prop :=
  ∀ n, (P12541156138311140435.a n : ℤ) = A327861 (n + 1)

end A327861

/-! ## A327861.P7578778145524314536

`char[Δ[A190117(n+1)]-1]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A327861

/-- `char[Δ[A190117(n+1)]-1]` -/
def P7578778145524314536.Spec : Prop :=
  ∀ n, (P7578778145524314536.a n : ℤ) = A327861 (n + 1)

theorem P7578778145524314536.correct : P7578778145524314536.Spec := by
  intro n
  simp only [A327861, Nat.add_sub_cancel]

end A327861

/-! ## A327861.P1849917832586376923

`char[(n+1)*∑[A258057(n)]-1]`
-/

namespace A327861.P1849917832586376923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327861.P1849917832586376923

namespace A327861

/-- `char[(n+1)*∑[A258057(n)]-1]` -/
def P1849917832586376923.Spec : Prop :=
  ∀ n, (P1849917832586376923.a n : ℤ) = A327861 (n + 1)

end A327861

/-! ## A327861.P9087453134013409472

`char[A008683(A020484(n))+n*A003415(n)]`
-/

namespace A327861.P9087453134013409472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + (n : ℤ) * A003415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327861.P9087453134013409472

namespace A327861

/-- `char[A008683(A020484(n))+n*A003415(n)]` -/
def P9087453134013409472.Spec : Prop :=
  ∀ n, (P9087453134013409472.a n : ℤ) = A327861 (n + 1)

end A327861

/-! ## A327861.P1581540950353634192

`A025455(A305897(n+1))^A000034(A185325(n))`
-/

namespace A327861.P1581540950353634192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025455 (A305897 (n + 1)).toNat : ℚ) ^ (A000034 (A185325 n).toNat : ℤ)

end

end A327861.P1581540950353634192

namespace A327861

/-- `A025455(A305897(n+1))^A000034(A185325(n))` -/
def P1581540950353634192.Spec : Prop :=
  ∀ n, P1581540950353634192.a n = (A327861 (n + 1) : ℚ)

end A327861

/-! ## A327861.P5798861418837771780

`A025455(A305897(n+1))^A192030(A028310(n))`
-/

namespace A327861.P5798861418837771780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025455 (A305897 (n + 1)).toNat : ℚ) ^ (A192030 (A028310 n).toNat : ℤ)

end

end A327861.P5798861418837771780

namespace A327861

/-- `A025455(A305897(n+1))^A192030(A028310(n))` -/
def P5798861418837771780.Spec : Prop :=
  ∀ n, P5798861418837771780.a n = (A327861 (n + 1) : ℚ)

end A327861

/-! ## A327861.P14420658787788100656

`A025455(A305897(n+1))+A010051(A349168(n+1))`
-/

namespace A327861.P14420658787788100656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A305897 (n + 1)).toNat + A010051 (A349168 (n + 1)).toNat

end

end A327861.P14420658787788100656

namespace A327861

/-- `A025455(A305897(n+1))+A010051(A349168(n+1))` -/
def P14420658787788100656.Spec : Prop :=
  ∀ n, P14420658787788100656.a n = A327861 (n + 1)

end A327861

/-! ## A327861.P14910485841875234278

`A025455(A305897(n+1))^A192032(n)`
-/

namespace A327861.P14910485841875234278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025455 (A305897 (n + 1)).toNat : ℚ) ^ (A192032 n : ℤ)

end

end A327861.P14910485841875234278

namespace A327861

/-- `A025455(A305897(n+1))^A192032(n)` -/
def P14910485841875234278.Spec : Prop :=
  ∀ n, P14910485841875234278.a n = (A327861 (n + 1) : ℚ)

end A327861

/-!
# A327862: Numbers whose arithmetic derivative is of the form 4k+2, cf. A003415.

The programs for A327862, the canonical program `A327862.P13198743302065105987` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327862 has offset 1).

The definition of A327862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327862.P10185446551020954843

`∪[A369661(n+1), A369662(n+1)]`
-/

namespace A327862.P10185446551020954843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327862.P10185446551020954843

namespace A327862

/-- `∪[A369661(n+1), A369662(n+1)]` -/
def P10185446551020954843.Spec : Prop :=
  ∀ n, (P10185446551020954843.a n : ℤ) = A327862 (n + 1)

end A327862

/-! ## A327862.P736549770884755485

`filter[A373265(n+1), A039982(#)]`
-/

namespace A327862.P736549770884755485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A327862.P736549770884755485

namespace A327862

/-- `filter[A373265(n+1), A039982(#)]` -/
def P736549770884755485.Spec : Prop :=
  ∀ n, P736549770884755485.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P6324869357005170421

`filter[A373265(n+1), A098725(#)]`
-/

namespace A327862.P6324869357005170421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A327862.P6324869357005170421

namespace A327862

/-- `filter[A373265(n+1), A098725(#)]` -/
def P6324869357005170421.Spec : Prop :=
  ∀ n, P6324869357005170421.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P16985790160529128154

`filter[A373265(n+1), A166486(#)]`
-/

namespace A327862.P16985790160529128154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A327862.P16985790160529128154

namespace A327862

/-- `filter[A373265(n+1), A166486(#)]` -/
def P16985790160529128154.Spec : Prop :=
  ∀ n, P16985790160529128154.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P15108804043150645774

`filter[A373265(n+1), A353495(#)]`
-/

namespace A327862.P15108804043150645774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A327862.P15108804043150645774

namespace A327862

/-- `filter[A373265(n+1), A353495(#)]` -/
def P15108804043150645774.Spec : Prop :=
  ∀ n, P15108804043150645774.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P11014747751606570536

`filter[A373265(n+1), A353557(#)]`
-/

namespace A327862.P11014747751606570536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A327862.P11014747751606570536

namespace A327862

/-- `filter[A373265(n+1), A353557(#)]` -/
def P11014747751606570536.Spec : Prop :=
  ∀ n, P11014747751606570536.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P5915621182771124796

`filter[A373265(n+1), A359370(#)]`
-/

namespace A327862.P5915621182771124796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A327862.P5915621182771124796

namespace A327862

/-- `filter[A373265(n+1), A359370(#)]` -/
def P5915621182771124796.Spec : Prop :=
  ∀ n, P5915621182771124796.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P13198743302065105987

`lt[0, A353495(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A327862

/-- `lt[0, A353495(n)]` -/
def P13198743302065105987.Spec : Prop :=
  ∀ n, (P13198743302065105987.a n : ℤ) = A327862 (n + 1)

theorem P13198743302065105987.correct : P13198743302065105987.Spec := by
  intro n
  simp only [A327862, Nat.add_sub_cancel]

end A327862

/-! ## A327862.P17773917877511754743

`eq[2, A353493(n)]`
-/

namespace A327862.P17773917877511754743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327862.P17773917877511754743

namespace A327862

/-- `eq[2, A353493(n)]` -/
def P17773917877511754743.Spec : Prop :=
  ∀ n, (P17773917877511754743.a n : ℤ) = A327862 (n + 1)

end A327862

/-! ## A327862.P5209456534884207115

`eq[1, A353495(n*A353495(n))]`
-/

namespace A327862.P5209456534884207115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 ((n : ℤ) * A353495 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327862.P5209456534884207115

namespace A327862

/-- `eq[1, A353495(n*A353495(n))]` -/
def P5209456534884207115.Spec : Prop :=
  ∀ n, (P5209456534884207115.a n : ℤ) = A327862 (n + 1)

end A327862

/-! ## A327862.P3274174606449630631

`filter[A046337(n+1), A353495(#)]`
-/

namespace A327862.P3274174606449630631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A327862.P3274174606449630631

namespace A327862

/-- `filter[A046337(n+1), A353495(#)]` -/
def P3274174606449630631.Spec : Prop :=
  ∀ n, P3274174606449630631.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P4350704423579552095

`filter[A046337(n+1), A373264(#)]`
-/

namespace A327862.P4350704423579552095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A327862.P4350704423579552095

namespace A327862

/-- `filter[A046337(n+1), A373264(#)]` -/
def P4350704423579552095.Spec : Prop :=
  ∀ n, P4350704423579552095.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P16532921364209828879

`∩[A046337(n+1), A373265(n+1)]`
-/

namespace A327862.P16532921364209828879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327862.P16532921364209828879

namespace A327862

/-- `∩[A046337(n+1), A373265(n+1)]` -/
def P16532921364209828879.Spec : Prop :=
  ∀ n, (P16532921364209828879.a n : ℤ) = A327862 (n + 1)

end A327862

/-! ## A327862.P10352836648436881702

`filter[A370125(n+1), A353495(#)]`
-/

namespace A327862.P10352836648436881702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A327862.P10352836648436881702

namespace A327862

/-- `filter[A370125(n+1), A353495(#)]` -/
def P10352836648436881702.Spec : Prop :=
  ∀ n, P10352836648436881702.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P15310656312829306055

`filter[A370125(n+1), A373264(#)]`
-/

namespace A327862.P15310656312829306055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A327862.P15310656312829306055

namespace A327862

/-- `filter[A370125(n+1), A373264(#)]` -/
def P15310656312829306055.Spec : Prop :=
  ∀ n, P15310656312829306055.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P7330265424915888714

`filter[A345452(n+1), A353495(#)]`
-/

namespace A327862.P7330265424915888714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A327862.P7330265424915888714

namespace A327862

/-- `filter[A345452(n+1), A353495(#)]` -/
def P7330265424915888714.Spec : Prop :=
  ∀ n, P7330265424915888714.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P5164176028367047427

`filter[A369002(n+1), A353495(#)]`
-/

namespace A327862.P5164176028367047427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A327862.P5164176028367047427

namespace A327862

/-- `filter[A369002(n+1), A353495(#)]` -/
def P5164176028367047427.Spec : Prop :=
  ∀ n, P5164176028367047427.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P2086437875553368854

`filter[A377873(n+1), A353495(#)]`
-/

namespace A327862.P2086437875553368854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A327862.P2086437875553368854

namespace A327862

/-- `filter[A377873(n+1), A353495(#)]` -/
def P2086437875553368854.Spec : Prop :=
  ∀ n, P2086437875553368854.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P6705773988465224379

`filter[A373375(n+1), A353495(#)]`
-/

namespace A327862.P6705773988465224379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A327862.P6705773988465224379

namespace A327862

/-- `filter[A373375(n+1), A353495(#)]` -/
def P6705773988465224379.Spec : Prop :=
  ∀ n, P6705773988465224379.a n = A327862 (n + 1)

end A327862

/-! ## A327862.P13832903929061662599

`filter[A359371(n+1), A353495(#)]`
-/

namespace A327862.P13832903929061662599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A327862.P13832903929061662599

namespace A327862

/-- `filter[A359371(n+1), A353495(#)]` -/
def P13832903929061662599.Spec : Prop :=
  ∀ n, P13832903929061662599.a n = A327862 (n + 1)

end A327862

/-!
# A327863: Numbers whose arithmetic derivative is a multiple of 3, cf. A003415.

The programs for A327863, the canonical program `A327863.P4607904759122385892` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327863 has offset 1).

The definition of A327863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327863.P6656658383911701634

`eq[0, A373253(n)]`
-/

namespace A327863.P6656658383911701634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327863.P6656658383911701634

namespace A327863

/-- `eq[0, A373253(n)]` -/
def P6656658383911701634.Spec : Prop :=
  ∀ n, (P6656658383911701634.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P4607904759122385892

`eq[1, A359430(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A327863

/-- `eq[1, A359430(n)]` -/
def P4607904759122385892.Spec : Prop :=
  ∀ n, (P4607904759122385892.a n : ℤ) = A327863 (n + 1)

theorem P4607904759122385892.correct : P4607904759122385892.Spec := by
  intro n
  simp only [A327863, Nat.add_sub_cancel]

end A327863

/-! ## A327863.P6187267979124578259

`eq[A373254(n), A373256(n)]`
-/

namespace A327863.P6187267979124578259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327863.P6187267979124578259

namespace A327863

/-- `eq[A373254(n), A373256(n)]` -/
def P6187267979124578259.Spec : Prop :=
  ∀ n, (P6187267979124578259.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P9516049321523696575

`∪[A369644(n+1), A008591(n)]`
-/

namespace A327863.P9516049321523696575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327863.P9516049321523696575

namespace A327863

/-- `∪[A369644(n+1), A008591(n)]` -/
def P9516049321523696575.Spec : Prop :=
  ∀ n, (P9516049321523696575.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P4355573310499221760

`∪[A369659(n+1), A008591(n)]`
-/

namespace A327863.P4355573310499221760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327863.P4355573310499221760

namespace A327863

/-- `∪[A369659(n+1), A008591(n)]` -/
def P4355573310499221760.Spec : Prop :=
  ∀ n, (P4355573310499221760.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P18152964582640345316

`∪[A373478(n+1), A008591(n)]`
-/

namespace A327863.P18152964582640345316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327863.P18152964582640345316

namespace A327863

/-- `∪[A373478(n+1), A008591(n)]` -/
def P18152964582640345316.Spec : Prop :=
  ∀ n, (P18152964582640345316.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P7038117338439423975

`filter[A141468(n+1), A359430(#)]`
-/

namespace A327863.P7038117338439423975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A327863.P7038117338439423975

namespace A327863

/-- `filter[A141468(n+1), A359430(#)]` -/
def P7038117338439423975.Spec : Prop :=
  ∀ n, P7038117338439423975.a n = A327863 (n + 1)

end A327863

/-! ## A327863.P7993374542471907050

`filter[A173905(n+1), A359430(#)]`
-/

namespace A327863.P7993374542471907050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A327863.P7993374542471907050

namespace A327863

/-- `filter[A173905(n+1), A359430(#)]` -/
def P7993374542471907050.Spec : Prop :=
  ∀ n, P7993374542471907050.a n = A327863 (n + 1)

end A327863

/-! ## A327863.P4432415297921233710

`filter[A156657(n+1), A359430(#)]`
-/

namespace A327863.P4432415297921233710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A327863.P4432415297921233710

namespace A327863

/-- `filter[A156657(n+1), A359430(#)]` -/
def P4432415297921233710.Spec : Prop :=
  ∀ n, P4432415297921233710.a n = A327863 (n + 1)

end A327863

/-! ## A327863.P12926777354509669033

`filter[A045762(n+1), A359430(#)]`
-/

namespace A327863.P12926777354509669033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A327863.P12926777354509669033

namespace A327863

/-- `filter[A045762(n+1), A359430(#)]` -/
def P12926777354509669033.Spec : Prop :=
  ∀ n, P12926777354509669033.a n = A327863 (n + 1)

end A327863

/-! ## A327863.P1107048077380291108

`eq[0, A003415(n)%3]`
-/

namespace A327863.P1107048077380291108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327863.P1107048077380291108

namespace A327863

/-- `eq[0, A003415(n)%3]` -/
def P1107048077380291108.Spec : Prop :=
  ∀ n, (P1107048077380291108.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P5243874807560587131

`eq[A168182(n), A369658(n)]`
-/

namespace A327863.P5243874807560587131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327863.P5243874807560587131

namespace A327863

/-- `eq[A168182(n), A369658(n)]` -/
def P5243874807560587131.Spec : Prop :=
  ∀ n, (P5243874807560587131.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P4498715794763582669

`eq[1, (A129283(n)+A016897(n))%3]`
-/

namespace A327863.P4498715794763582669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 n + A016897 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327863.P4498715794763582669

namespace A327863

/-- `eq[1, (A129283(n)+A016897(n))%3]` -/
def P4498715794763582669.Spec : Prop :=
  ∀ n, (P4498715794763582669.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P2769866353765797445

`lt[(A002645(n+1)*A003415(n))%3, 1]`
-/

namespace A327863.P2769866353765797445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002645 (n + 1) * A003415 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327863.P2769866353765797445

namespace A327863

/-- `lt[(A002645(n+1)*A003415(n))%3, 1]` -/
def P2769866353765797445.Spec : Prop :=
  ∀ n, (P2769866353765797445.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P9250085783461586069

`lt[(A003415(n)*A125822(n+1))%3, 1]`
-/

namespace A327863.P9250085783461586069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n * A125822 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327863.P9250085783461586069

namespace A327863

/-- `lt[(A003415(n)*A125822(n+1))%3, 1]` -/
def P9250085783461586069.Spec : Prop :=
  ∀ n, (P9250085783461586069.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P13345905908883262389

`eq[0, A129283(2*n)%3]`
-/

namespace A327863.P13345905908883262389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 (2 * n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327863.P13345905908883262389

namespace A327863

/-- `eq[0, A129283(2*n)%3]` -/
def P13345905908883262389.Spec : Prop :=
  ∀ n, (P13345905908883262389.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P13940890715426907493

`eq[0, A328903(A003415(n)+3)]`
-/

namespace A327863.P13940890715426907493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328903 (A003415 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327863.P13940890715426907493

namespace A327863

/-- `eq[0, A328903(A003415(n)+3)]` -/
def P13940890715426907493.Spec : Prop :=
  ∀ n, (P13940890715426907493.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P14054224370014802380

`eq[0, A091684(A003415(n))]`
-/

namespace A327863.P14054224370014802380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327863.P14054224370014802380

namespace A327863

/-- `eq[0, A091684(A003415(n))]` -/
def P14054224370014802380.Spec : Prop :=
  ∀ n, (P14054224370014802380.a n : ℤ) = A327863 (n + 1)

end A327863

/-! ## A327863.P5045974269710012924

`eq[1, A010872(A003415(n)+1)]`
-/

namespace A327863.P5045974269710012924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327863.P5045974269710012924

namespace A327863

/-- `eq[1, A010872(A003415(n)+1)]` -/
def P5045974269710012924.Spec : Prop :=
  ∀ n, (P5045974269710012924.a n : ℤ) = A327863 (n + 1)

end A327863

/-!
# A327864: Numbers whose arithmetic derivative is a multiple of 4, cf. A003415.

The programs for A327864, the canonical program `A327864.P823315764509377038` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327864 has offset 1).

The definition of A327864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327864.P823315764509377038

`eq[0, A353493(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A327864

/-- `eq[0, A353493(n)]` -/
def P823315764509377038.Spec : Prop :=
  ∀ n, (P823315764509377038.a n : ℤ) = A327864 (n + 1)

theorem P823315764509377038.correct : P823315764509377038.Spec := by
  intro n
  simp only [A327864, Nat.add_sub_cancel]

end A327864

/-! ## A327864.P15656353259062688773

`lt[0, A353494(n)]`
-/

namespace A327864.P15656353259062688773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327864.P15656353259062688773

namespace A327864

/-- `lt[0, A353494(n)]` -/
def P15656353259062688773.Spec : Prop :=
  ∀ n, (P15656353259062688773.a n : ℤ) = A327864 (n + 1)

end A327864

/-! ## A327864.P649541030532848473

`eq[A166486(n), A360109(n)]`
-/

namespace A327864.P649541030532848473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327864.P649541030532848473

namespace A327864

/-- `eq[A166486(n), A360109(n)]` -/
def P649541030532848473.Spec : Prop :=
  ∀ n, (P649541030532848473.a n : ℤ) = A327864 (n + 1)

end A327864

/-! ## A327864.P12877375062981951298

`∪[A360110(n+1), A008586(n)]`
-/

namespace A327864.P12877375062981951298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327864.P12877375062981951298

namespace A327864

/-- `∪[A360110(n+1), A008586(n)]` -/
def P12877375062981951298.Spec : Prop :=
  ∀ n, (P12877375062981951298.a n : ℤ) = A327864 (n + 1)

end A327864

/-! ## A327864.P8618044027974375345

`∪[A369005(n+1), A008586(n)]`
-/

namespace A327864.P8618044027974375345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327864.P8618044027974375345

namespace A327864

/-- `∪[A369005(n+1), A008586(n)]` -/
def P8618044027974375345.Spec : Prop :=
  ∀ n, (P8618044027974375345.a n : ℤ) = A327864 (n + 1)

end A327864

/-! ## A327864.P16388998122972971420

`eq[A055801(C(3, n²)), A353494(n)]`
-/

namespace A327864.P16388998122972971420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (Nat.choose 3 (n ^ 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327864.P16388998122972971420

namespace A327864

/-- `eq[A055801(C(3, n²)), A353494(n)]` -/
def P16388998122972971420.Spec : Prop :=
  ∀ n, (P16388998122972971420.a n : ℤ) = A327864 (n + 1)

end A327864

/-! ## A327864.P76387447486845403

`eq[A328578(A000265(n+1)), A353494(n)]`
-/

namespace A327864.P76387447486845403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (A000265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327864.P76387447486845403

namespace A327864

/-- `eq[A328578(A000265(n+1)), A353494(n)]` -/
def P76387447486845403.Spec : Prop :=
  ∀ n, (P76387447486845403.a n : ℤ) = A327864 (n + 1)

end A327864

/-! ## A327864.P9525392334305080047

`eq[A353494(n*A353494(n)), A353494(n)]`
-/

namespace A327864.P9525392334305080047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 ((n : ℤ) * A353494 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327864.P9525392334305080047

namespace A327864

/-- `eq[A353494(n*A353494(n)), A353494(n)]` -/
def P9525392334305080047.Spec : Prop :=
  ∀ n, (P9525392334305080047.a n : ℤ) = A327864 (n + 1)

end A327864

/-! ## A327864.P13184832216595415959

`lt[A059010(n)*A353493(n), 1]`
-/

namespace A327864.P13184832216595415959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n * A353493 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327864.P13184832216595415959

namespace A327864

/-- `lt[A059010(n)*A353493(n), 1]` -/
def P13184832216595415959.Spec : Prop :=
  ∀ n, (P13184832216595415959.a n : ℤ) = A327864 (n + 1)

end A327864

/-! ## A327864.P11280090527074093077

`filter[A328303(n+1), A353494(#)]`
-/

namespace A327864.P11280090527074093077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P11280090527074093077

namespace A327864

/-- `filter[A328303(n+1), A353494(#)]` -/
def P11280090527074093077.Spec : Prop :=
  ∀ n, P11280090527074093077.a n = A327864 (n + 1)

end A327864

/-! ## A327864.P17857299378632926162

`lt[A353493(n), A009194(A213925(n+1))]`
-/

namespace A327864.P17857299378632926162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A213925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327864.P17857299378632926162

namespace A327864

/-- `lt[A353493(n), A009194(A213925(n+1))]` -/
def P17857299378632926162.Spec : Prop :=
  ∀ n, (P17857299378632926162.a n : ℤ) = A327864 (n + 1)

end A327864

/-! ## A327864.P13765508487897797570

`filter[A235992(n+1), A353494(#)]`
-/

namespace A327864.P13765508487897797570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P13765508487897797570

namespace A327864

/-- `filter[A235992(n+1), A353494(#)]` -/
def P13765508487897797570.Spec : Prop :=
  ∀ n, P13765508487897797570.a n = A327864 (n + 1)

end A327864

/-! ## A327864.P9341409951839223703

`filter[A042965(n+1), A353494(#)]`
-/

namespace A327864.P9341409951839223703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P9341409951839223703

namespace A327864

/-- `filter[A042965(n+1), A353494(#)]` -/
def P9341409951839223703.Spec : Prop :=
  ∀ n, P9341409951839223703.a n = A327864 (n + 1)

end A327864

/-! ## A327864.P14170419732779021941

`filter[A107750(n), A353494(#)]`
-/

namespace A327864.P14170419732779021941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P14170419732779021941

namespace A327864

/-- `filter[A107750(n), A353494(#)]` -/
def P14170419732779021941.Spec : Prop :=
  ∀ n, P14170419732779021941.a n = A327864 (n + 1)

end A327864

/-! ## A327864.P14223709378339398732

`filter[A263715(n+1), A353494(#)]`
-/

namespace A327864.P14223709378339398732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P14223709378339398732

namespace A327864

/-- `filter[A263715(n+1), A353494(#)]` -/
def P14223709378339398732.Spec : Prop :=
  ∀ n, P14223709378339398732.a n = A327864 (n + 1)

end A327864

/-! ## A327864.P10524691814008013541

`filter[A079298(n+1), A353494(#)]`
-/

namespace A327864.P10524691814008013541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P10524691814008013541

namespace A327864

/-- `filter[A079298(n+1), A353494(#)]` -/
def P10524691814008013541.Spec : Prop :=
  ∀ n, P10524691814008013541.a n = A327864 (n + 1)

end A327864

/-! ## A327864.P10284314538709836890

`filter[A047565(n+1), A353494(#)]`
-/

namespace A327864.P10284314538709836890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P10284314538709836890

namespace A327864

/-- `filter[A047565(n+1), A353494(#)]` -/
def P10284314538709836890.Spec : Prop :=
  ∀ n, P10284314538709836890.a n = A327864 (n + 1)

end A327864

/-! ## A327864.P18196947556084925712

`filter[A047595(n+1), A353494(#)]`
-/

namespace A327864.P18196947556084925712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P18196947556084925712

namespace A327864

/-- `filter[A047595(n+1), A353494(#)]` -/
def P18196947556084925712.Spec : Prop :=
  ∀ n, P18196947556084925712.a n = A327864 (n + 1)

end A327864

/-! ## A327864.P309913749423936040

`filter[A141468(n+1), A353494(#)]`
-/

namespace A327864.P309913749423936040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P309913749423936040

namespace A327864

/-- `filter[A141468(n+1), A353494(#)]` -/
def P309913749423936040.Spec : Prop :=
  ∀ n, P309913749423936040.a n = A327864 (n + 1)

end A327864

/-! ## A327864.P1731512716165415696

`filter[A173905(n+1), A353494(#)]`
-/

namespace A327864.P1731512716165415696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A327864.P1731512716165415696

namespace A327864

/-- `filter[A173905(n+1), A353494(#)]` -/
def P1731512716165415696.Spec : Prop :=
  ∀ n, P1731512716165415696.a n = A327864 (n + 1)

end A327864

/-!
# A327865: Numbers whose arithmetic derivative is a multiple of 5, cf. A003415.

The programs for A327865, the canonical program `A327865.P18409360037918019854` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327865 has offset 1).

The definition of A327865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9433 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327865.P1744573158712410473

`∪[A369969(n+1), A008607(n)]`
-/

namespace A327865.P1744573158712410473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327865.P1744573158712410473

namespace A327865

/-- `∪[A369969(n+1), A008607(n)]` -/
def P1744573158712410473.Spec : Prop :=
  ∀ n, (P1744573158712410473.a n : ℤ) = A327865 (n + 1)

end A327865

/-! ## A327865.P18409360037918019854

`eq[1, A369967(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A327865

/-- `eq[1, A369967(n)]` -/
def P18409360037918019854.Spec : Prop :=
  ∀ n, (P18409360037918019854.a n : ℤ) = A327865 (n + 1)

theorem P18409360037918019854.correct : P18409360037918019854.Spec := by
  intro n
  simp only [A327865, Nat.add_sub_cancel]

end A327865

/-! ## A327865.P18262808093629977364

`eq[5, gcd(5, A003415(n))]`
-/

namespace A327865.P18262808093629977364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A003415 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327865.P18262808093629977364

namespace A327865

/-- `eq[5, gcd(5, A003415(n))]` -/
def P18262808093629977364.Spec : Prop :=
  ∀ n, (P18262808093629977364.a n : ℤ) = A327865 (n + 1)

end A327865

/-! ## A327865.P816037361640226119

`eq[0, (A168036(n)+n)%5]`
-/

namespace A327865.P816037361640226119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168036 n + (n : ℤ)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327865.P816037361640226119

namespace A327865

/-- `eq[0, (A168036(n)+n)%5]` -/
def P816037361640226119.Spec : Prop :=
  ∀ n, (P816037361640226119.a n : ℤ) = A327865 (n + 1)

end A327865

/-! ## A327865.P2933364238641908061

`eq[0, A253262(A003415(n))]`
-/

namespace A327865.P2933364238641908061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327865.P2933364238641908061

namespace A327865

/-- `eq[0, A253262(A003415(n))]` -/
def P2933364238641908061.Spec : Prop :=
  ∀ n, (P2933364238641908061.a n : ℤ) = A327865 (n + 1)

end A327865

/-! ## A327865.P8780199078979168685

`eq[1, A117452(A003415(n)+2)]`
-/

namespace A327865.P8780199078979168685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117452 (A003415 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327865.P8780199078979168685

namespace A327865

/-- `eq[1, A117452(A003415(n)+2)]` -/
def P8780199078979168685.Spec : Prop :=
  ∀ n, (P8780199078979168685.a n : ℤ) = A327865 (n + 1)

end A327865

/-! ## A327865.P1907433516177694343

`eq[2, A146989(A003415(n)+1)]`
-/

namespace A327865.P1907433516177694343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146989 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327865.P1907433516177694343

namespace A327865

/-- `eq[2, A146989(A003415(n)+1)]` -/
def P1907433516177694343.Spec : Prop :=
  ∀ n, (P1907433516177694343.a n : ℤ) = A327865 (n + 1)

end A327865

/-! ## A327865.P16051471840118087629

`eq[2, A130782(A003415(n)+2)]`
-/

namespace A327865.P16051471840118087629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 (A003415 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327865.P16051471840118087629

namespace A327865

/-- `eq[2, A130782(A003415(n)+2)]` -/
def P16051471840118087629.Spec : Prop :=
  ∀ n, (P16051471840118087629.a n : ℤ) = A327865 (n + 1)

end A327865

/-! ## A327865.P7567078192841331092

`eq[A010874(n), A010874(A129283(n))]`
-/

namespace A327865.P7567078192841331092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A129283 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327865.P7567078192841331092

namespace A327865

/-- `eq[A010874(n), A010874(A129283(n))]` -/
def P7567078192841331092.Spec : Prop :=
  ∀ n, (P7567078192841331092.a n : ℤ) = A327865 (n + 1)

end A327865

/-!
# A327866: a(n) = 1 if arithmetic derivative of n is square, 0 otherwise. Cf. A003415.

The programs for A327866, the canonical program `A327866.P12650850147369526583` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327866 has offset 0).

The definition of A327866 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327866.P12650850147369526583

`A010052(A003415(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A327866

/-- `A010052(A003415(n))` -/
def P12650850147369526583.Spec : Prop :=
  ∀ n, P12650850147369526583.a n = A327866 n

theorem P12650850147369526583.correct : P12650850147369526583.Spec := by
  intro n
  simp only [A327866]

end A327866

/-! ## A327866.P557737929362595009

`∏{e}[A003415(n), A327928(2*#)]`
-/

namespace A327866.P557737929362595009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A327928 (2 * Nat.factorization (f1 n).natAbs p)

end

end A327866.P557737929362595009

namespace A327866

/-- `∏{e}[A003415(n), A327928(2*#)]` -/
def P557737929362595009.Spec : Prop :=
  ∀ n, P557737929362595009.a n = A327866 n

end A327866

/-! ## A327866.P9650639923609287443

`∏{p}[n, A000005(A003415(n))%A000005(#)]`
-/

namespace A327866.P9650639923609287443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (A000005 (A003415 n).toNat) (A000005 p)

end

end A327866.P9650639923609287443

namespace A327866

/-- `∏{p}[n, A000005(A003415(n))%A000005(#)]` -/
def P9650639923609287443.Spec : Prop :=
  ∀ n, P9650639923609287443.a n = A327866 n

end A327866

/-! ## A327866.P8420174916829854419

`A046922(2*(A003415(n)+1))`
-/

namespace A327866.P8420174916829854419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (2 * (A003415 n + 1)).toNat

end

end A327866.P8420174916829854419

namespace A327866

/-- `A046922(2*(A003415(n)+1))` -/
def P8420174916829854419.Spec : Prop :=
  ∀ n, P8420174916829854419.a n = A327866 n

end A327866

/-! ## A327866.P8551762584028019056

`A046922(A003415(n)+A003415(n)+2)`
-/

namespace A327866.P8551762584028019056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (A003415 n + (A003415 n + 2)).toNat

end

end A327866.P8551762584028019056

namespace A327866

/-- `A046922(A003415(n)+A003415(n)+2)` -/
def P8551762584028019056.Spec : Prop :=
  ∀ n, P8551762584028019056.a n = A327866 n

end A327866

/-! ## A327866.P15152479769554744382

`∏{e}[A003415(n)², A003415(A051903(#))]`
-/

namespace A327866.P15152479769554744382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 (A051903 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A327866.P15152479769554744382

namespace A327866

/-- `∏{e}[A003415(n)², A003415(A051903(#))]` -/
def P15152479769554744382.Spec : Prop :=
  ∀ n, P15152479769554744382.a n = A327866 n

end A327866

/-!
# A327867: Even bisection of Möbius transform of A064664, the inverse of EKG-sequence.

The programs for A327867, there is no canonical definition to state claims against.
-/

/-! ## A327867.P835325495013349740

`A304526(2*(n+1))`
-/

namespace A327867.P835325495013349740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304526 (2 * (n + 1))

end

end A327867.P835325495013349740

/-! ## A327867.P4295670192559422158

`A304526(n+2+n)^A020985(n)²`
-/

namespace A327867.P4295670192559422158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304526 (n + 2 + n) : ℚ) ^ (A020985 n ^ 2 : ℤ)

end

end A327867.P4295670192559422158

/-! ## A327867.P12214499503823655056

`A323412(2*(n+1))-(A323411(2*(n+1))+A304527(2*(n+1)))`
-/

namespace A327867.P12214499503823655056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323412 (2 * (n + 1)) - (A323411 (2 * (n + 1)) + A304527 (2 * (n + 1)))

end

end A327867.P12214499503823655056

/-! ## A327867.P2047239636932082591

`A064664(2*(n+1))-A304527(2*(n+1))`
-/

namespace A327867.P2047239636932082591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (2 * (n + 1)) - A304527 (2 * (n + 1))

end

end A327867.P2047239636932082591

/-! ## A327867.P15298469776483592095

`A255479(2*(n+1))+A255482(2*(n+1))-A304527(2*(n+1))`
-/

namespace A327867.P15298469776483592095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255479 (2 * (n + 1)) + (A255482 (2 * (n + 1)) - A304527 (2 * (n + 1)))

end

end A327867.P15298469776483592095

/-! ## A327867.P7911598275845393425

`A304526(n+2+n)^A008476(A215353(n+1))`
-/

namespace A327867.P7911598275845393425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304526 (n + 2 + n) : ℚ) ^ (A008476 (A215353 (n + 1)).toNat : ℤ)

end

end A327867.P7911598275845393425

/-! ## A327867.P9397328502762807943

`A304526(A000267((n+1)²))%A266074(A000267(n))`
-/

namespace A327867.P9397328502762807943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304526 (A000267 ((n + 1) ^ 2)).toNat) (A266074 (A000267 n).toNat)

end

end A327867.P9397328502762807943

/-!
# A327868: Number of achiral loops (necklaces or bracelets) of length n with integer entries that cover an initial interval of positive integers.

The programs for A327868, there is no canonical definition to state claims against.
-/

/-! ## A327868.P7217704482724134837

`A226513(A101881(n))`
-/

namespace A327868.P7217704482724134837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A101881 n).toNat

end

end A327868.P7217704482724134837

/-! ## A327868.P9900162297415209233

`A226513(∑[A158416(n)])`
-/

namespace A327868.P9900162297415209233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327868.P9900162297415209233

/-! ## A327868.P8997098178084168817

`A226513(eq[1, A106234(n+1)])`
-/

namespace A327868.P8997098178084168817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327868.P8997098178084168817

/-! ## A327868.P2953114976151582681

`A226513(eq[A003983(n+1), A130321(n)])`
-/

namespace A327868.P2953114976151582681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A327868.P2953114976151582681

/-! ## A327868.P8221920662877870568

`A226513(eq[1, A238802(n)])`
-/

namespace A327868.P8221920662877870568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327868.P8221920662877870568

/-!
# A327871: Number of self-avoiding planar walks starting at (0,0), ending at (n,n), remaining in the first quadrant and using steps (0,1), (-1,1), and (1,-1) with the restriction that (-1,1) and (1,-1) are always immediately followed by (0,1).

The programs for A327871, there is no canonical definition to state claims against.
-/

/-! ## A327871.P2433582743490043090

`A026307(A004273(n))`
-/

namespace A327871.P2433582743490043090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (A004273 n).toNat

end

end A327871.P2433582743490043090

/-! ## A327871.P10601150384414774175

`A026307(A004277(n)-1)`
-/

namespace A327871.P10601150384414774175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (A004277 n - 1).toNat

end

end A327871.P10601150384414774175

/-! ## A327871.P7137031131740232106

`A026307(A014681(2*n))`
-/

namespace A327871.P7137031131740232106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (A014681 (2 * n)).toNat

end

end A327871.P7137031131740232106

/-! ## A327871.P16900322821397553779

`A026307(A289207(2*n+1))`
-/

namespace A327871.P16900322821397553779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (A289207 (2 * n + 1)).toNat

end

end A327871.P16900322821397553779

/-! ## A327871.P12917959430561469169

`A026307(A028310(2*n)-1)`
-/

namespace A327871.P12917959430561469169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (A028310 (2 * n) - 1).toNat

end

end A327871.P12917959430561469169

/-! ## A327871.P16873260559850082510

`A026307(A028310(n)-1+n)`
-/

namespace A327871.P16873260559850082510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 (A028310 n - 1 + (n : ℤ)).toNat

end

end A327871.P16873260559850082510

/-! ## A327871.P7373966653671672527

`A026307(n-(1-A028310(n)))`
-/

namespace A327871.P7373966653671672527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 ((n : ℤ) - (1 - A028310 n)).toNat

end

end A327871.P7373966653671672527

/-! ## A327871.P2794003519594300221

`A026307(2*n-A057427(n))`
-/

namespace A327871.P2794003519594300221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 ((2 * n : ℤ) - A057427 n).toNat

end

end A327871.P2794003519594300221

/-! ## A327871.P12167114437359847072

`A026307(n-A057427(n)+n)`
-/

namespace A327871.P12167114437359847072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 ((n : ℤ) - A057427 n + (n : ℤ)).toNat

end

end A327871.P12167114437359847072

/-! ## A327871.P13052627225396971695

`A026307(n-(A057427(n)-n))`
-/

namespace A327871.P13052627225396971695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026307 ((n : ℤ) - (A057427 n - (n : ℤ))).toNat

end

end A327871.P13052627225396971695

/-!
# A327872: Total number of nodes in all self-avoiding planar walks starting at (0,0), ending at (n,n), remaining in the first quadrant and using steps (0,1), (-1,1), and (1,-1) with the restriction that (-1,1) and (1,-1) are always immediately followed by (0,1).

The programs for A327872, there is no canonical definition to state claims against.
-/

/-! ## A327872.P10645326339192881160

`A003160(A304678(6^n))`
-/

namespace A327872.P10645326339192881160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A304678 (6 ^ n)).toNat

end

end A327872.P10645326339192881160

/-!
# A327873: Irregular triangle read by rows: T(n,k) is the number of length n primitive (aperiodic) palindromes using exactly k different symbols, 1 <= k <= ceiling(n/2).

The programs for A327873, there is no canonical definition to state claims against.
-/

/-! ## A327873.P6815552295049272153

`A122197(n+1)!*A284826(n+1)`
-/

namespace A327873.P6815552295049272153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122197 (n + 1)).toNat : ℤ) * A284826 (n + 1)

end

end A327873.P6815552295049272153

/-! ## A327873.P14805133687167386911

`and(A004488(A256395(n+1)), A213381(n))`
-/

namespace A327873.P14805133687167386911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004488 (A256395 (n + 1)).toNat) (A213381 n)

end

end A327873.P14805133687167386911

/-! ## A327873.P5444400488389585060

`A000120(lcm(A208175(n+1), A284826(n+1)))`
-/

namespace A327873.P5444400488389585060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A208175 (n + 1)) (A284826 (n + 1)))

end

end A327873.P5444400488389585060

/-! ## A327873.P8024989672066924123

`and(A308630(n+1), A319645(A308630(n+1)))`
-/

namespace A327873.P8024989672066924123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A308630 (n + 1)) (A319645 (A308630 (n + 1)).toNat)

end

end A327873.P8024989672066924123

/-! ## A327873.P14437328192160623701

`A122197(n+1)!*A170960(xor(11, A107635(n)))`
-/

namespace A327873.P14437328192160623701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A122197 (n + 1)).toNat : ℤ) * A170960 (Int.xor 11 (A107635 n)).toNat

end

end A327873.P14437328192160623701

/-!
# A327876: Number of set partitions of [n] with distinct block sizes and one of the block sizes is 1.

The programs for A327876, there is no canonical definition to state claims against.
-/

/-! ## A327876.P6049990113958405758

`A032298(n)-A007837(n)`
-/

namespace A327876.P6049990113958405758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032298 n - A007837 n

end

end A327876.P6049990113958405758

/-! ## A327876.P551748161815936336

`A007837(n)-A032311(n)`
-/

namespace A327876.P551748161815936336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 n - A032311 n

end

end A327876.P551748161815936336

/-! ## A327876.P18032951693203762538

`lcm(n, A327869(A000124(n)))`
-/

namespace A327876.P18032951693203762538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A327869 (A000124 n).toNat)

end

end A327876.P18032951693203762538

/-! ## A327876.P12018244973108836392

`A032298(n)-A327869(∑[n])`
-/

namespace A327876.P12018244973108836392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032298 n - A327869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327876.P12018244973108836392

/-! ## A327876.P8116425373305932010

`A327869(∑[n])-A032311(n)`
-/

namespace A327876.P8116425373305932010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (∑ j ∈ Finset.range (n + 1), f1 j) - A032311 n

end

end A327876.P8116425373305932010

/-! ## A327876.P3577798345102814310

`(A032298(n)-A032311(n))/2`
-/

namespace A327876.P3577798345102814310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032298 n - A032311 n : ℚ) / 2

end

end A327876.P3577798345102814310

/-! ## A327876.P16696272733722764534

`A327869(A000124(n))%A032298(n)`
-/

namespace A327876.P16696272733722764534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327869 (A000124 n).toNat) (A032298 n)

end

end A327876.P16696272733722764534

/-! ## A327876.P11595650625324288388

`A327869(A000217(n)+1)-A000007(n)`
-/

namespace A327876.P11595650625324288388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A000217 n + 1).toNat - A000007 n

end

end A327876.P11595650625324288388

/-! ## A327876.P8243404241709100553

`A327869(A133263(n)-1)-A000007(n)`
-/

namespace A327876.P8243404241709100553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A133263 n - 1).toNat - A000007 n

end

end A327876.P8243404241709100553

/-! ## A327876.P14907864892335753369

`A327869(A000124(n))+A073097(2*n)`
-/

namespace A327876.P14907864892335753369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A000124 n).toNat + A073097 (2 * n)

end

end A327876.P14907864892335753369

/-!
# A327877: 

The programs for A327877, there is no canonical definition to state claims against.
-/

/-! ## A327877.P8464120433324461693

`lt[∏{e}[n, 2-#²], 0]`
-/

namespace A327877.P8464120433324461693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 - (Nat.factorization (f2 n) p ^ 2 : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A327877.P8464120433324461693

/-!
# A327878: Irregular triangle read by rows: T(n,k) is the number of primitive (period n) periodic palindromes using exactly k different symbols, 1 <= k <= 1 + floor(n/2).

The programs for A327878, there is no canonical definition to state claims against.
-/

/-! ## A327878.P18398456429241716320

`A093150(A351884(n))`
-/

namespace A327878.P18398456429241716320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093150 (A351884 n).toNat

end

end A327878.P18398456429241716320

/-! ## A327878.P453767377143705854

`A082859(A351884(n)+3)`
-/

namespace A327878.P453767377143705854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A351884 n + 3).toNat

end

end A327878.P453767377143705854

/-! ## A327878.P3293817124663225531

`A108885(A351884(n)+3)`
-/

namespace A327878.P3293817124663225531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108885 (A351884 n + 3).toNat

end

end A327878.P3293817124663225531

/-! ## A327878.P2308364991163137853

`A163351(A351884(n)+3)`
-/

namespace A327878.P2308364991163137853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 (A351884 n + 3).toNat

end

end A327878.P2308364991163137853

/-! ## A327878.P7327291685603832181

`A116361(A291929(n)*A334110(n))`
-/

namespace A327878.P7327291685603832181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116361 (A291929 n * A334110 n).toNat

end

end A327878.P7327291685603832181

/-!
# A327880: Numbers k such that phi(k) < phi(k+1) < phi(k+2) < phi(k+3) where phi is the Euler totient function (A000010).

The programs for A327880, there is no canonical definition to state claims against.
-/

/-! ## A327880.P4189642767252810014

`∩[A078776(n+5), A161962(n+1)]-1`
-/

namespace A327880.P4189642767252810014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078776 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A327880.P4189642767252810014

/-! ## A327880.P10659553045589359275

`xor(1, ∩[A078776(n+1), A161962(n+1)])`
-/

namespace A327880.P10659553045589359275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A327880.P10659553045589359275

/-! ## A327880.P2592181804750638632

`A057428(n+1)+∩[A078776(n+1), A161962(n+1)]`
-/

namespace A327880.P2592181804750638632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A327880.P2592181804750638632

/-!
# A327881: Number of set partitions of [n] with distinct block sizes and one of the block sizes is 2.

The programs for A327881, there is no canonical definition to state claims against.
-/

/-! ## A327881.P17871510560450073373

`lcm(A004526(n), A327869(A133263(n)))`
-/

namespace A327881.P17871510560450073373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004526 n) (A327869 (A133263 n).toNat)

end

end A327881.P17871510560450073373

/-! ## A327881.P14724155878426501393

`A327869(A133263(n))-char[A109485(n)]`
-/

namespace A327881.P14724155878426501393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109485 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A133263 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327881.P14724155878426501393

/-! ## A327881.P8033073958580548252

`A327869(A133263(n))-A000007(A006463(n))`
-/

namespace A327881.P8033073958580548252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A133263 n).toNat - A000007 (A006463 n).toNat

end

end A327881.P8033073958580548252

/-! ## A327881.P7076149923002083580

`A327869(A133263(n))%A131623(n+1)`
-/

namespace A327881.P7076149923002083580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327869 (A133263 n).toNat) (A131623 (n + 1))

end

end A327881.P7076149923002083580

/-! ## A327881.P6647086242354687683

`A327869(A133263(n))%A275310(n)`
-/

namespace A327881.P6647086242354687683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327869 (A133263 n).toNat) (A275310 n)

end

end A327881.P6647086242354687683

/-!
# A327882: a(n) = n*(2*(n-1))! for n > 0, a(0) = 1.

The programs for A327882, the canonical program `A327882.P7495302936788953904` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327882 has offset 0).

The definition of A327882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327882.P7495302936788953904

`2*n*(2*n-3)*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327882

/-- `2*n*(2*n-3)*a(n-1)` -/
def P7495302936788953904.Spec : Prop :=
  ∀ n, P7495302936788953904.a n = A327882 n

theorem P7495302936788953904.correct : P7495302936788953904.Spec := by
  intro n
  simp only [A327882]

end A327882

/-! ## A327882.P2836957003280780826

`comp[2*n+3]!*round(1/acot(n))`
-/

namespace A327882.P2836957003280780826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

end

end A327882.P2836957003280780826

namespace A327882

/-- `comp[2*n+3]!*round(1/acot(n))` -/
def P2836957003280780826.Spec : Prop :=
  ∀ n, P2836957003280780826.a n = A327882 n

end A327882

/-! ## A327882.P17906902591171398095

`comp[2*n+3]!*round(sqrt(n²+1))`
-/

namespace A327882.P17906902591171398095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

end

end A327882.P17906902591171398095

namespace A327882

/-- `comp[2*n+3]!*round(sqrt(n²+1))` -/
def P17906902591171398095.Spec : Prop :=
  ∀ n, P17906902591171398095.a n = A327882 n

end A327882

/-! ## A327882.P17425682413523578300

`gcd(n, floor(2/acot(n)))*comp[2*n+3]!`
-/

namespace A327882.P17425682413523578300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A327882.P17425682413523578300

namespace A327882

/-- `gcd(n, floor(2/acot(n)))*comp[2*n+3]!` -/
def P17425682413523578300.Spec : Prop :=
  ∀ n, (P17425682413523578300.a n : ℤ) = A327882 n

end A327882

/-! ## A327882.P3461592011080126588

`ceil(comp[2*n+3]!*floor(2/acot(n))/2)`
-/

namespace A327882.P3461592011080126588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) / 2⌉

end

end A327882.P3461592011080126588

namespace A327882

/-- `ceil(comp[2*n+3]!*floor(2/acot(n))/2)` -/
def P3461592011080126588.Spec : Prop :=
  ∀ n, P3461592011080126588.a n = A327882 n

end A327882

/-!
# A327883: a(0)=a(1)=0; thereafter a(n+1) is the index of the earliest as yet unused occurrence of a(n) if a(n) has occurred before; otherwise a(n+1) = a(a(n)-1). Once an occurrence of a(n) has been used it cannot be used again.

The programs for A327883, there is no canonical definition to state claims against.
-/

/-! ## A327883.P18110626852757350046

`A036656(A038001(n+2))%A028310(n)`
-/

namespace A327883.P18110626852757350046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036656 (A038001 (n + 2)).toNat) (A028310 n)

end

end A327883.P18110626852757350046

/-! ## A327883.P1440416796065739624

`A048766(A027246(n))%A059974(n+1)`
-/

namespace A327883.P1440416796065739624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048766 (A027246 n).toNat) (A059974 (n + 1))

end

end A327883.P1440416796065739624

/-! ## A327883.P3796382325244184575

`A210797(n+1)%A092533(A286114(n))`
-/

namespace A327883.P3796382325244184575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210797 (n + 1)) (A092533 (A286114 n).toNat)

end

end A327883.P3796382325244184575

/-! ## A327883.P2379403928526287821

`A293896(lcm(A174191(n), A293902(n+1)))`
-/

namespace A327883.P2379403928526287821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (Int.lcm (A174191 n) (A293902 (n + 1)))

end

end A327883.P2379403928526287821

/-! ## A327883.P1845260605061976813

`A005171(A211418(n))*A341460(A000593(n+2))`
-/

namespace A327883.P1845260605061976813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A211418 n).toNat * A341460 ((A000593 (n + 2)).toNat + 10)

end

end A327883.P1845260605061976813

/-!
# A327885: Number of set partitions of [n] such that at least one of the block sizes is 2.

The programs for A327885, there is no canonical definition to state claims against.
-/

/-! ## A327885.P7206148348484831084

`A000110(n)-A097514(n)`
-/

namespace A327885.P7206148348484831084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A097514 n

end

end A327885.P7206148348484831084

/-! ## A327885.P17685975253651288237

`abs(A292935(n))-A097514(n)`
-/

namespace A327885.P17685975253651288237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A097514 n

end

end A327885.P17685975253651288237

/-! ## A327885.P1597081952341573885

`Δ[A005001(n)]-A097514(n)`
-/

namespace A327885.P1597081952341573885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A097514 n

end

end A327885.P1597081952341573885

/-! ## A327885.P6014534113850762421

`A327884(∑[char[1]+n]+1)%A000110(n)`
-/

namespace A327885.P6014534113850762421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327884 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A000110 n)

end

end A327885.P6014534113850762421

/-! ## A327885.P7568221093638420574

`A011971(A000217(n))-A097514(n)`
-/

namespace A327885.P7568221093638420574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 n).toNat - A097514 n

end

end A327885.P7568221093638420574

/-! ## A327885.P17695430351822369154

`A095149(A000096(n))-A097514(n)`
-/

namespace A327885.P17695430351822369154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A000096 n).toNat - A097514 n

end

end A327885.P17695430351822369154

/-! ## A327885.P12697791139963952154

`A011972(A161680(n))-A097514(n)`
-/

namespace A327885.P12697791139963952154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A161680 n).toNat - A097514 n

end

end A327885.P12697791139963952154

/-! ## A327885.P5242391821251668961

`A157928(n)*A327884(A133263(n))`
-/

namespace A327885.P5242391821251668961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A327884 (A133263 n).toNat

end

end A327885.P5242391821251668961

/-! ## A327885.P12833931076148376943

`A000296(n+1)+A000296(n)-A097514(n)`
-/

namespace A327885.P12833931076148376943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 1) + (A000296 n - A097514 n)

end

end A327885.P12833931076148376943

/-!
# A327890: Number of colored integer partitions of n using all colors of a 2-set such that parts i have distinct color patterns in arbitrary order and each pattern for a part i has i colors in (weakly) increasing order.

The programs for A327890, there is no canonical definition to state claims against.
-/

/-! ## A327890.P6826976374281796852

`A309973(A133263(n))`
-/

namespace A327890.P6826976374281796852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (A133263 n).toNat

end

end A327890.P6826976374281796852

/-! ## A327890.P3230612573555132708

`A309973(A238531(n+1))`
-/

namespace A327890.P3230612573555132708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (A238531 (n + 1)).toNat

end

end A327890.P3230612573555132708

/-! ## A327890.P10091176852349802302

`A309973(A179865(n+1)+2)`
-/

namespace A327890.P10091176852349802302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (A179865 (n + 1) + 2).toNat

end

end A327890.P10091176852349802302

/-! ## A327890.P5915895049668768916

`A309973(A083920(∑[n+1]+2))`
-/

namespace A327890.P5915895049668768916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (A083920 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A327890.P5915895049668768916

/-! ## A327890.P11118936201503583357

`A309973(∑[A230980(A028815(n))])`
-/

namespace A327890.P11118936201503583357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A028815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327890.P11118936201503583357

/-! ## A327890.P5447226970605630355

`A309973(A178334(n)+A000124(n))`
-/

namespace A327890.P5447226970605630355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (A178334 n + A000124 n).toNat

end

end A327890.P5447226970605630355

/-! ## A327890.P14795634463914697479

`A309973(2-(A178334(n)-A000124(n)))`
-/

namespace A327890.P14795634463914697479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (2 - (A178334 n - A000124 n)).toNat

end

end A327890.P14795634463914697479

/-! ## A327890.P8726927044190482729

`A309973(A059268(A000124(n))+A000217(n))`
-/

namespace A327890.P8726927044190482729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (A059268 (A000124 n).toNat + A000217 n).toNat

end

end A327890.P8726927044190482729

/-!
# A327892: a(n) is the smallest positive integer k such that for every prime divisor p_i of 2*n+1, p_i + k is also prime, or 0 if no such k exists.

The programs for A327892, there is no canonical definition to state claims against.
-/

/-! ## A327892.P16612131379828103659

`A345161(A055645(n)+3+n)`
-/

namespace A327892.P16612131379828103659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345161 (A055645 n + 3 + (n : ℤ)).toNat

end

end A327892.P16612131379828103659

/-! ## A327892.P10359031988621856900

`gcd(Δ[A345119(2*n+5)], A345161(2*n+3))`
-/

namespace A327892.P10359031988621856900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345119 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A345161 (2 * n + 3))

end

end A327892.P10359031988621856900

/-! ## A327892.P3682019786328590178

`A000005(or(A003215(n), A099497(n+1)))`
-/

namespace A327892.P3682019786328590178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A003215 n) (A099497 (n + 1))).toNat

end

end A327892.P3682019786328590178

/-! ## A327892.P12328610877134492940

`A345164(A345171(n+1))+A345161(2*n+3)`
-/

namespace A327892.P12328610877134492940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (A345171 (n + 1)).toNat + A345161 (2 * n + 3)

end

end A327892.P12328610877134492940

/-!
# A327895: Sum-free sequence associated with the periodic sequence 01001 01001 01001 ... .

The programs for A327895, there is no canonical definition to state claims against.
-/

/-! ## A327895.P1560893807093340654

`A057077(A041899(n))+A008706(n)`
-/

namespace A327895.P1560893807093340654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A041899 n).toNat + A008706 n

end

end A327895.P1560893807093340654

/-! ## A327895.P13640727519911925754

`A020985(A109437(n))+A008706(n)`
-/

namespace A327895.P13640727519911925754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A109437 n).toNat + A008706 n

end

end A327895.P13640727519911925754

/-! ## A327895.P9640377327351392379

`A008706(n)+A008683(A306831(n))`
-/

namespace A327895.P9640377327351392379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A008683 (A306831 n).toNat

end

end A327895.P9640377327351392379

/-! ## A327895.P14667720563608546893

`A057077(A007709(n+1))+A008706(n)`
-/

namespace A327895.P14667720563608546893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A007709 (n + 1)).toNat + A008706 n

end

end A327895.P14667720563608546893

/-! ## A327895.P18248606909919551553

`A008706(n)+A008683(A272645(n+2))`
-/

namespace A327895.P18248606909919551553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A008683 (A272645 (n + 2)).toNat

end

end A327895.P18248606909919551553

/-!
# A327896: a(n) is the minimum number of tiles needed for constructing a polyiamond with n holes.

The programs for A327896, there is no canonical definition to state claims against.
-/

/-! ## A327896.P15761267940695104378

`comp[floor((1-sqrt(3*n))²/2)]`
-/

namespace A327896.P15761267940695104378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - Real.sqrt (3 * n : ℝ)) ^ 2 / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327896.P15761267940695104378

/-! ## A327896.P10958593443248577221

`A186346(3*(n+1))+2`
-/

namespace A327896.P10958593443248577221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186346 (3 * (n + 1)) + 2

end

end A327896.P10958593443248577221

/-! ## A327896.P16473887435072020255

`A186348(3*n+2)+3`
-/

namespace A327896.P16473887435072020255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186348 (3 * n + 2) + 3

end

end A327896.P16473887435072020255

/-! ## A327896.P16355503486522506050

`A265412(6*n+5)/2`
-/

namespace A327896.P16355503486522506050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265412 (6 * n + 5) : ℚ) / 2

end

end A327896.P16355503486522506050

/-! ## A327896.P13354834662004178145

`∑[Δ[A265413(6*n)]/2]`
-/

namespace A327896.P13354834662004178145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 (6 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327896.P13354834662004178145

/-! ## A327896.P682912128207367893

`∑[Δ[A036496(2*n)]+3]+1`
-/

namespace A327896.P682912128207367893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A327896.P682912128207367893

/-! ## A327896.P11440598071941865793

`A135708(2*(n+1))-(3*n+2)`
-/

namespace A327896.P11440598071941865793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135708 (2 * (n + 1)) - (3 * n + 2 : ℤ)

end

end A327896.P11440598071941865793

/-! ## A327896.P7834699331763394100

`2*n+7+A216522(2*n+1)+n`
-/

namespace A327896.P7834699331763394100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 7 : ℤ) + (A216522 (2 * n + 1) + (n : ℤ))

end

end A327896.P7834699331763394100

/-! ## A327896.P17618968417880589361

`A183867(A016969(n))-3*n`
-/

namespace A327896.P17618968417880589361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183867 (A016969 n).toNat - (3 * n : ℤ)

end

end A327896.P17618968417880589361

/-! ## A327896.P4086434425750071850

`floor(A265412(Δ[A003215(n)])/2)`
-/

namespace A327896.P4086434425750071850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265412 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A327896.P4086434425750071850

/-!
# A327897: a(n) is the largest palindromic number formed from two numbers with n digits multiplied together.

The programs for A327897, there is no canonical definition to state claims against.
-/

/-! ## A327897.P11622270377758106645

`A308803(A103517(n))`
-/

namespace A327897.P11622270377758106645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308803 (A103517 n).toNat

end

end A327897.P11622270377758106645

/-! ## A327897.P6854882175581909923

`record[A308803(A004277(n))]`
-/

namespace A327897.P6854882175581909923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308803 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327897.P6854882175581909923

/-! ## A327897.P2819286710055310017

`A308803(Δ[A004277(∑[n])])`
-/

namespace A327897.P2819286710055310017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308803 (f1 (n + 1) - f1 n).toNat

end

end A327897.P2819286710055310017

/-! ## A327897.P8913630819272675134

`record[A308803(record[A005131(n)])]`
-/

namespace A327897.P8913630819272675134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308803 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327897.P8913630819272675134

/-! ## A327897.P11520141493460053118

`record[or(A176726(n), A308803(n+1))]`
-/

namespace A327897.P11520141493460053118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A176726 n) (A308803 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327897.P11520141493460053118

/-!
# A327899: Number of set partitions of {1..n} with equal block sizes and equal block sums.

The programs for A327899, there is no canonical definition to state claims against.
-/

/-! ## A327899.P7970388587441987851

`A143773(A143862(n)^A006530(A157019(n+1)))`
-/

namespace A327899.P7970388587441987851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143773 (SequenceMachineLib.roundAway ((A143862 n : ℚ) ^ (A006530 (A157019 (n + 1)).toNat : ℤ))).toNat

end

end A327899.P7970388587441987851

