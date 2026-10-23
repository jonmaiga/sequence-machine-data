import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A361801: Number of nonempty subsets of {1..n} with median n/2.

The programs for A361801, there is no canonical definition to state claims against.
-/

/-! ## A361801.P18360171137262126926

`∑[(4-4/n)*a(n-2)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A361801.P18360171137262126926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  (4 - 4 / (n : ℚ)) * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361801.P18360171137262126926

/-! ## A361801.P5678243901403766070

`A332754(or(1, n))`
-/

namespace A361801.P5678243901403766070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (Nat.lor 1 n)

end

end A361801.P5678243901403766070

/-! ## A361801.P7980647456356855280

`A174783(and(n, -2))`
-/

namespace A361801.P7980647456356855280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (Int.land (n : ℤ) (-2)).toNat

end

end A361801.P7980647456356855280

/-! ## A361801.P14051939495547610522

`A174783(or(1, n)-1)`
-/

namespace A361801.P14051939495547610522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (Nat.lor 1 n - 1)

end

end A361801.P14051939495547610522

/-! ## A361801.P5610398110329714685

`A174783(xor(1, or(1, n)))`
-/

namespace A361801.P5610398110329714685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (Nat.xor 1 (Nat.lor 1 n))

end

end A361801.P5610398110329714685

/-!
# A361802: Irregular triangle read by rows where T(n,k) is the number of k-subsets of {-n+1,...,n} with sum 0, for k = 1,...,2n-1.

The programs for A361802, there is no canonical definition to state claims against.
-/

/-! ## A361802.P15760262649189164382

`A027907(n)-A307597(A361870(n+4))`
-/

namespace A361802.P15760262649189164382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n - A307597 (A361870 (n + 4)).toNat

end

end A361802.P15760262649189164382

/-! ## A361802.P936400897682572383

`A027907(n)-A316867(A111791(3*n+1))`
-/

namespace A361802.P936400897682572383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n - A316867 (A111791 (3 * n + 1)).toNat

end

end A361802.P936400897682572383

/-! ## A361802.P4778441747268648437

`A027907(n)-A246271(A316123(3*n+1))`
-/

namespace A361802.P4778441747268648437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n - A246271 (A316123 (3 * n + 1)).toNat

end

end A361802.P4778441747268648437

/-! ## A361802.P2198731481212435239

`A027907(n)-A277149(A033483(n))`
-/

namespace A361802.P2198731481212435239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n - A277149 (A033483 n).toNat

end

end A361802.P2198731481212435239

/-! ## A361802.P5819017179019476144

`A027907(n)-A354050(A208447(n))`
-/

namespace A361802.P5819017179019476144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n - A354050 (A208447 n).toNat

end

end A361802.P5819017179019476144

/-!
# A361805: Expansion of Product_{j=1..n, k=1..n} (1 + x^(k^j)) / (1 - x^(k^j)).

The programs for A361805, there is no canonical definition to state claims against.
-/

/-! ## A361805.P15324578420367056605

`A019446(A006629(n))-n`
-/

namespace A361805.P15324578420367056605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A006629 n).toNat - (n : ℤ)

end

end A361805.P15324578420367056605

/-! ## A361805.P1743623244725902877

`A326561(n)+A002266(A192469(n+1))`
-/

namespace A361805.P1743623244725902877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326561 n + A002266 (A192469 (n + 1)).toNat

end

end A361805.P1743623244725902877

/-!
# A361806: Sum of distinct prime factors of all composite numbers between n-th and (n+1)st primes.

The programs for A361806, there is no canonical definition to state claims against.
-/

/-! ## A361806.P12291045151845952559

`∑{p}[A074167(n+1), #]`
-/

namespace A361806.P12291045151845952559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A361806.P12291045151845952559

/-! ## A361806.P573722835139377959

`∑{p}[A076978(n+1), #]`
-/

namespace A361806.P573722835139377959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076978 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A361806.P573722835139377959

/-! ## A361806.P2282912758830070366

`A001414(A076978(n+1))`
-/

namespace A361806.P2282912758830070366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A076978 (n + 1)).toNat

end

end A361806.P2282912758830070366

/-! ## A361806.P4705478947666018001

`A008472(A076978(n+1)+A025469(n))`
-/

namespace A361806.P4705478947666018001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A076978 (n + 1) + A025469 n).toNat

end

end A361806.P4705478947666018001

/-! ## A361806.P17736610296235772427

`A008472(A007318(n)*A076978(n+1))`
-/

namespace A361806.P17736610296235772427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A007318 n * A076978 (n + 1)).toNat

end

end A361806.P17736610296235772427

/-!
# A361807: Numbers k with record values of the ratio A000005(k)/A049419(k) between the number of divisors of k and the number of exponential divisors of k.

The programs for A361807, there is no canonical definition to state claims against.
-/

/-! ## A361807.P10488676608729671371

`∏{p}[A002110(n), A080684(#)]`
-/

namespace A361807.P10488676608729671371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A080684 p

end

end A361807.P10488676608729671371

/-! ## A361807.P10494558078479939841

`∏{p}[A002110(n), A094275(#)]`
-/

namespace A361807.P10494558078479939841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A094275 p

end

end A361807.P10494558078479939841

/-! ## A361807.P9667067903874148085

`∏{p}[A002110(n), A194898(#)]`
-/

namespace A361807.P9667067903874148085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A194898 p

end

end A361807.P9667067903874148085

/-! ## A361807.P6754624187873883949

`∏{p}[A002110(n), A288139(#)]`
-/

namespace A361807.P6754624187873883949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A288139 p

end

end A361807.P6754624187873883949

/-!
# A361808: Inverse permutation to A181820.

The programs for A361808, there is no canonical definition to state claims against.
-/

/-! ## A361808.P604261073105219007

`A085089(A181821(n+1))`
-/

namespace A361808.P604261073105219007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A181821 (n + 1)).toNat

end

end A361808.P604261073105219007

/-! ## A361808.P1348609305043237837

`A101296(lcm(2-char[2^n-1], A181821(n+1)))`
-/

namespace A361808.P1348609305043237837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.lcm (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (A181821 (n + 1)))

end

end A361808.P1348609305043237837

/-! ## A361808.P11251867057827488667

`A101296(A181821(n+1)%A005557(n))`
-/

namespace A361808.P11251867057827488667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A181821 (n + 1)) (A005557 n)).toNat

end

end A361808.P11251867057827488667

/-! ## A361808.P12201127145526200576

`A101296(A181821(n+1))%A016789(n)`
-/

namespace A361808.P12201127145526200576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A181821 (n + 1)).toNat) (A016789 n)

end

end A361808.P12201127145526200576

/-! ## A361808.P7303175306921260573

`lcm(A057077(n), A101296(A181821(n+1)))`
-/

namespace A361808.P7303175306921260573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A101296 (A181821 (n + 1)).toNat)

end

end A361808.P7303175306921260573

/-! ## A361808.P13507802027220265205

`A101296(A181821(n+1)+A154272(n+2))`
-/

namespace A361808.P13507802027220265205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A181821 (n + 1) + A154272 (n + 2)).toNat

end

end A361808.P13507802027220265205

/-! ## A361808.P6195805729400243223

`A101296(A181821(n+1)+A000007(n+4))`
-/

namespace A361808.P6195805729400243223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A181821 (n + 1) + A000007 (n + 4)).toNat

end

end A361808.P6195805729400243223

/-! ## A361808.P17893319739483790263

`A131533(3*n)+A101296(A181821(n+1))`
-/

namespace A361808.P17893319739483790263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131533 (3 * n) + A101296 (A181821 (n + 1)).toNat

end

end A361808.P17893319739483790263

/-! ## A361808.P16222451835029903377

`A101296(A261251(3*n+2)+A181821(n+1))`
-/

namespace A361808.P16222451835029903377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A261251 (3 * n + 2) + A181821 (n + 1)).toNat

end

end A361808.P16222451835029903377

/-! ## A361808.P17838176003090691064

`A101296(A060680(2*(n+3))*A181821(n+1))`
-/

namespace A361808.P17838176003090691064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A060680 (2 * (n + 3)) * A181821 (n + 1)).toNat

end

end A361808.P17838176003090691064

/-!
# A361809: Fixed points of A181820 and A361808.

The programs for A361809, there is no canonical definition to state claims against.
-/

/-! ## A361809.P11261542032063027164

`eq[n+1, A181820(n+1)]+1`
-/

namespace A361809.P11261542032063027164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361809.P11261542032063027164

/-! ## A361809.P13714967853326201972

`eq[n, A181820(A028310(n))]`
-/

namespace A361809.P13714967853326201972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361809.P13714967853326201972

/-! ## A361809.P11550425123049825249

`eq[n, A181820(A000038(n)+n)]`
-/

namespace A361809.P11550425123049825249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361809.P11550425123049825249

/-! ## A361809.P6455963391953619265

`eq[A025487(n+1), A181821(n+1)]+1`
-/

namespace A361809.P6455963391953619265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A361809.P6455963391953619265

/-! ## A361809.P3111255321925814342

`eq[n+1, A361808(n+1)]+1`
-/

namespace A361809.P3111255321925814342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361809.P3111255321925814342

/-!
# A361811: Smallest members of infinitary sociable quadruples.

The programs for A361811, there is no canonical definition to state claims against.
-/

/-! ## A361811.P17167283981579498727

`A004607(∑[A001349(and(n, -(n+2)))])`
-/

namespace A361811.P17167283981579498727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004607 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361811.P17167283981579498727

/-! ## A361811.P4499421411778296917

`A004607(∑[A125273((n+1)/∏{p}[n+1, #])])`
-/

namespace A361811.P4499421411778296917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004607 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361811.P4499421411778296917

/-! ## A361811.P7438791267164837343

`A004607(∑[A229257((n+1)/∏{p}[n+1, #])])`
-/

namespace A361811.P7438791267164837343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229257 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004607 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361811.P7438791267164837343

/-!
# A361812: Expansion of 1/sqrt(1 - 4*x*(1+x)^3).

The programs for A361812, there is no canonical definition to state claims against.
-/

/-! ## A361812.P15326728054940647712

`A361830(eq[3, A025581(n)])`
-/

namespace A361812.P15326728054940647712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361812.P15326728054940647712

/-! ## A361812.P11211125148296609118

`A361830(A052905(n+1)+1)`
-/

namespace A361812.P11211125148296609118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (A052905 (n + 1) + 1).toNat

end

end A361812.P11211125148296609118

/-! ## A361812.P5473190647786335685

`A361830(∑[A004526(2*(n+2))+2]+2)`
-/

namespace A361812.P5473190647786335685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (n + 2)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A361812.P5473190647786335685

/-! ## A361812.P4521702762074151064

`A361830(A005843(2*n+3)+A000217(n))`
-/

namespace A361812.P4521702762074151064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (A005843 (2 * n + 3) + A000217 n).toNat

end

end A361812.P4521702762074151064

/-! ## A361812.P3465451908075550310

`A361830(eq[2, A217653(n)])`
-/

namespace A361812.P3465451908075550310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361812.P3465451908075550310

/-!
# A361813: Expansion of 1/sqrt(1 - 4*x*(1+x)^4).

The programs for A361813, there is no canonical definition to state claims against.
-/

/-! ## A361813.P11938655845251145240

`A361830(A052905(n+2))`
-/

namespace A361813.P11938655845251145240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (A052905 (n + 2)).toNat

end

end A361813.P11938655845251145240

/-! ## A361813.P14676949835545169257

`A361830(eq[4, A025581(n)])`
-/

namespace A361813.P14676949835545169257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361813.P14676949835545169257

/-! ## A361813.P16857932109616687439

`A361830(Δ[A055831(n+4)])`
-/

namespace A361813.P16857932109616687439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (f1 (n + 1) - f1 n).toNat

end

end A361813.P16857932109616687439

/-! ## A361813.P17455126667720837898

`A361830(A000217(n+4)+n)`
-/

namespace A361813.P17455126667720837898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A361813.P17455126667720837898

/-!
# A361814: Expansion of 1/sqrt(1 - 4*x*(1+x)^5).

The programs for A361814, there is no canonical definition to state claims against.
-/

/-! ## A361814.P11686926647958879529

`A249428(A150711(n))`
-/

namespace A361814.P11686926647958879529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249428 (A150711 n).toNat

end

end A361814.P11686926647958879529

/-!
# A361815: Expansion of 1/sqrt(1 - 4*x*(1-x)^2).

The programs for A361815, there is no canonical definition to state claims against.
-/

/-! ## A361815.P17456640241186861602

`A361834(∑[n+3])`
-/

namespace A361815.P17456640241186861602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361815.P17456640241186861602

/-!
# A361816: Expansion of 1/sqrt(1 - 4*x*(1-x)^3).

The programs for A361816, there is no canonical definition to state claims against.
-/

/-! ## A361816.P16192938689316513532

`A361834(eq[3, A025581(n)])`
-/

namespace A361816.P16192938689316513532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361816.P16192938689316513532

/-! ## A361816.P17938486680719936471

`A361834(eq[7, A099375(n)])`
-/

namespace A361816.P17938486680719936471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361816.P17938486680719936471

/-! ## A361816.P547716142264577680

`A361834(eq[8, A130321(n)])`
-/

namespace A361816.P547716142264577680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361816.P547716142264577680

/-! ## A361816.P6130807247069031429

`A361834(A052905(n+1)+1)`
-/

namespace A361816.P6130807247069031429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (A052905 (n + 1) + 1).toNat

end

end A361816.P6130807247069031429

/-! ## A361816.P11860508031845130240

`A361834(eq[2, A217653(n)])`
-/

namespace A361816.P11860508031845130240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361816.P11860508031845130240

/-!
# A361817: Expansion of 1/sqrt(1 - 4*x*(1-x)^4).

The programs for A361817, there is no canonical definition to state claims against.
-/

/-! ## A361817.P7153348437721292972

`A361834(A052905(n+2))`
-/

namespace A361817.P7153348437721292972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (A052905 (n + 2)).toNat

end

end A361817.P7153348437721292972

/-! ## A361817.P9334574100210401378

`A361834(eq[5, A193739(n)])`
-/

namespace A361817.P9334574100210401378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361817.P9334574100210401378

/-! ## A361817.P1636248936244944380

`A361834(A000217(n+5)-5)`
-/

namespace A361817.P1636248936244944380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (A000217 (n + 5) - 5).toNat

end

end A361817.P1636248936244944380

/-! ## A361817.P5528345481198609808

`A361834(A055999(n)+10+n+n)`
-/

namespace A361817.P5528345481198609808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (A055999 n + 10 + (n : ℤ) + (n : ℤ)).toNat

end

end A361817.P5528345481198609808

/-!
# A361818: For any number k >= 0, let T_k be the triangle whose base corresponds to the ternary expansion of k (without leading zeros) and other values, say t above u and v, satisfy t = (-u-v) mod 3; this sequence lists the numbers k such that T_k has 3-fold rotational symmetry.

The programs for A361818, there is no canonical definition to state claims against.
-/

/-! ## A361818.P17610750461780306371

`eq[n, A361832(A030102(n))]`
-/

namespace A361818.P17610750461780306371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361832 (A030102 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361818.P17610750461780306371

/-! ## A361818.P4752967999908433834

`eq[A345199(A255588(n)), A345199(n)]`
-/

namespace A361818.P4752967999908433834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345199 (A255588 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345199 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361818.P4752967999908433834

/-! ## A361818.P6662291594647569847

`lt[A164993(n), A323409(A257493(n))]`
-/

namespace A361818.P6662291594647569847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323409 (A257493 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361818.P6662291594647569847

/-! ## A361818.P12268445391603749220

`lt[A164993(n), A165416(A267553(n+4))]`
-/

namespace A361818.P12268445391603749220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165416 (A267553 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361818.P12268445391603749220

/-!
# A361819: Irregular triangle read by rows where T(n,k) is the distance which number A361660(n,k) moves in the process described in A361642.

The programs for A361819, there is no canonical definition to state claims against.
-/

/-! ## A361819.P2703847859525928877

`A348241(n)+A260736(A152150(3*n))`
-/

namespace A361819.P2703847859525928877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348241 n + A260736 (A152150 (3 * n)).toNat

end

end A361819.P2703847859525928877

/-!
# A361820: Palindromes in A329150.

The programs for A361820, there is no canonical definition to state claims against.
-/

/-! ## A361820.P14547419133144631125

`filter[A329150(n+1), A136522(#)]`
-/

namespace A361820.P14547419133144631125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A361820.P14547419133144631125

/-! ## A361820.P1321668443665825507

`∩[A002113(n+1), A329150(n+1)]`
-/

namespace A361820.P1321668443665825507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361820.P1321668443665825507

/-! ## A361820.P13451045964327521805

`∩[A118599(n+1), A329150(n+1)]`
-/

namespace A361820.P13451045964327521805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361820.P13451045964327521805

/-! ## A361820.P12121733388887361051

`∩[A118600(n+1), A329150(n+1)]`
-/

namespace A361820.P12121733388887361051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361820.P12121733388887361051

/-!
# A361821: Perfect powers in A329150.

The programs for A361821, there is no canonical definition to state claims against.
-/

/-! ## A361821.P106982324552513673

`A111026(A309237(n)+2)`
-/

namespace A361821.P106982324552513673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111026 (A309237 n + 2).toNat

end

end A361821.P106982324552513673

/-!
# A361822: Primes without {2, 5} as digits.

The programs for A361822, the canonical program `A361822.P6850116414336837406` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361822 has offset 1).

The definition of A361822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6069 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361822.P6850116414336837406

`∩[A038604(n+1), A038613(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361822

/-- `∩[A038604(n+1), A038613(n+1)]` -/
def P6850116414336837406.Spec : Prop :=
  ∀ n, (P6850116414336837406.a n : ℤ) = A361822 (n + 1)

theorem P6850116414336837406.correct : P6850116414336837406.Spec := by
  intro n
  simp only [A361822, Nat.add_sub_cancel]

end A361822

/-! ## A361822.P1040316464615952772

`∩[A038604(n+1), A039130(n+1)]`
-/

namespace A361822.P1040316464615952772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361822.P1040316464615952772

namespace A361822

/-- `∩[A038604(n+1), A039130(n+1)]` -/
def P1040316464615952772.Spec : Prop :=
  ∀ n, (P1040316464615952772.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P9540227155436196291

`∩[A038613(n+1), A039130(n+1)]`
-/

namespace A361822.P9540227155436196291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361822.P9540227155436196291

namespace A361822

/-- `∩[A038613(n+1), A039130(n+1)]` -/
def P9540227155436196291.Spec : Prop :=
  ∀ n, (P9540227155436196291.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P3850945064115979076

`∩[A038613(n+1), A052404(n+1)]`
-/

namespace A361822.P3850945064115979076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361822.P3850945064115979076

namespace A361822

/-- `∩[A038613(n+1), A052404(n+1)]` -/
def P3850945064115979076.Spec : Prop :=
  ∀ n, (P3850945064115979076.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P11947034301154483989

`∩[A038604(n+1), A052413(n+1)]`
-/

namespace A361822.P11947034301154483989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361822.P11947034301154483989

namespace A361822

/-- `∩[A038604(n+1), A052413(n+1)]` -/
def P11947034301154483989.Spec : Prop :=
  ∀ n, (P11947034301154483989.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P14407326578736224815

`eq[n, A222229(A007918(n))]`
-/

namespace A361822.P14407326578736224815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361822.P14407326578736224815

namespace A361822

/-- `eq[n, A222229(A007918(n))]` -/
def P14407326578736224815.Spec : Prop :=
  ∀ n, (P14407326578736224815.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P17362385467507313373

`eq[n, A222229(A051697(n))]`
-/

namespace A361822.P17362385467507313373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361822.P17362385467507313373

namespace A361822

/-- `eq[n, A222229(A051697(n))]` -/
def P17362385467507313373.Spec : Prop :=
  ∀ n, (P17362385467507313373.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P3627634761935285603

`eq[n, A062584(A222229(n))]`
-/

namespace A361822.P3627634761935285603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361822.P3627634761935285603

namespace A361822

/-- `eq[n, A062584(A222229(n))]` -/
def P3627634761935285603.Spec : Prop :=
  ∀ n, (P3627634761935285603.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P1125549675593197032

`eq[A064502(n), A222229(n)]`
-/

namespace A361822.P1125549675593197032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361822.P1125549675593197032

namespace A361822

/-- `eq[A064502(n), A222229(n)]` -/
def P1125549675593197032.Spec : Prop :=
  ∀ n, (P1125549675593197032.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P10969319685871509141

`eq[n, A222229(A077018(n))]`
-/

namespace A361822.P10969319685871509141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361822.P10969319685871509141

namespace A361822

/-- `eq[n, A222229(A077018(n))]` -/
def P10969319685871509141.Spec : Prop :=
  ∀ n, (P10969319685871509141.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P2508322521262377903

`eq[A084413(n), A222229(n)]`
-/

namespace A361822.P2508322521262377903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361822.P2508322521262377903

namespace A361822

/-- `eq[A084413(n), A222229(n)]` -/
def P2508322521262377903.Spec : Prop :=
  ∀ n, (P2508322521262377903.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P13145872068990664372

`eq[A222229(n), A327420(n)]`
-/

namespace A361822.P13145872068990664372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361822.P13145872068990664372

namespace A361822

/-- `eq[A222229(n), A327420(n)]` -/
def P13145872068990664372.Spec : Prop :=
  ∀ n, (P13145872068990664372.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P736140366501124116

`eq[A057637(n+1), A222229(n)]`
-/

namespace A361822.P736140366501124116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361822.P736140366501124116

namespace A361822

/-- `eq[A057637(n+1), A222229(n)]` -/
def P736140366501124116.Spec : Prop :=
  ∀ n, (P736140366501124116.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P14003090049732788811

`eq[A210957(n+2), A222229(n)]`
-/

namespace A361822.P14003090049732788811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361822.P14003090049732788811

namespace A361822

/-- `eq[A210957(n+2), A222229(n)]` -/
def P14003090049732788811.Spec : Prop :=
  ∀ n, (P14003090049732788811.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P11615183420158641810

`eq[n, A222229(A295609(n))]`
-/

namespace A361822.P11615183420158641810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A295609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361822.P11615183420158641810

namespace A361822

/-- `eq[n, A222229(A295609(n))]` -/
def P11615183420158641810.Spec : Prop :=
  ∀ n, (P11615183420158641810.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P8698230594442604098

`eq[A083169(n+1), A222229(n)]`
-/

namespace A361822.P8698230594442604098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361822.P8698230594442604098

namespace A361822

/-- `eq[A083169(n+1), A222229(n)]` -/
def P8698230594442604098.Spec : Prop :=
  ∀ n, (P8698230594442604098.a n : ℤ) = A361822 (n + 1)

end A361822

/-! ## A361822.P15259728815592922439

`eq[n, A222229(A252358(n))]`
-/

namespace A361822.P15259728815592922439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A252358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361822.P15259728815592922439

namespace A361822

/-- `eq[n, A222229(A252358(n))]` -/
def P15259728815592922439.Spec : Prop :=
  ∀ n, (P15259728815592922439.a n : ℤ) = A361822 (n + 1)

end A361822

/-!
# A361823: a(1) = 3; thereafter, a(n+1) is the smallest prime p such that p - prevprime(p) >= a(n) - prevprime(a(n)).

The programs for A361823, there is no canonical definition to state claims against.
-/

/-! ## A361823.P10944874968993580442

`A134266(n+1)+A085237(n+1)`
-/

namespace A361823.P10944874968993580442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134266 (n + 1) + A085237 (n + 1)

end

end A361823.P10944874968993580442

/-! ## A361823.P6338663228114933767

`A134266(n+1)+A001223(A085500(n+1))`
-/

namespace A361823.P6338663228114933767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134266 (n + 1) + A001223 (A085500 (n + 1)).toNat

end

end A361823.P6338663228114933767

/-! ## A361823.P8103858050627023963

`A134266(n+1)+A001223(∑[A348178(n+1)])`
-/

namespace A361823.P8103858050627023963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134266 (n + 1) + A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361823.P8103858050627023963

/-! ## A361823.P9846237752728445751

`A065091(A085500(n+1))`
-/

namespace A361823.P9846237752728445751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A085500 (n + 1)).toNat

end

end A361823.P9846237752728445751

/-! ## A361823.P12061625602550008361

`A151800(A134266(n+1))`
-/

namespace A361823.P12061625602550008361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A134266 (n + 1)).toNat

end

end A361823.P12061625602550008361

/-!
# A361824: Sum of odd middle divisors of n, where "middle divisor" means a divisor in the half-open interval [sqrt(n/2), sqrt(n*2)).

The programs for A361824, there is no canonical definition to state claims against.
-/

/-! ## A361824.P5857278664427213105

`A071090(n+1)-A361879(n+1)`
-/

namespace A361824.P5857278664427213105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (n + 1) - A361879 (n + 1)

end

end A361824.P5857278664427213105

/-! ## A361824.P16111100216409228202

`Δ[A160664(n)]-A302433(n+1)-A361879(n+1)`
-/

namespace A361824.P16111100216409228202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A302433 (n + 1) - A361879 (n + 1)

end

end A361824.P16111100216409228202

/-! ## A361824.P18295543372923538403

`A000203(n+1)-A302433(n+1)-A361879(n+1)`
-/

namespace A361824.P18295543372923538403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A302433 (n + 1) - A361879 (n + 1)

end

end A361824.P18295543372923538403

/-! ## A361824.P7036527619682238581

`abs(A143348(n+1))-A302433(n+1)-A361879(n+1)`
-/

namespace A361824.P7036527619682238581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A302433 (n + 1) - A361879 (n + 1)

end

end A361824.P7036527619682238581

/-! ## A361824.P1738780616236971925

`A245092(2*n+1)-A302433(n+1)-A361879(n+1)`
-/

namespace A361824.P1738780616236971925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A302433 (n + 1) - A361879 (n + 1)

end

end A361824.P1738780616236971925

/-! ## A361824.P6655802274121001070

`A074400(n+1)/2-A302433(n+1)-A361879(n+1)`
-/

namespace A361824.P6655802274121001070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A302433 (n + 1) : ℚ) - (A361879 (n + 1) : ℚ)

end

end A361824.P6655802274121001070

/-! ## A361824.P6450289903467046708

`A127057(A000124(n))-A302433(n+1)-A361879(n+1)`
-/

namespace A361824.P6450289903467046708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n).toNat - A302433 (n + 1) - A361879 (n + 1)

end

end A361824.P6450289903467046708

/-!
# A361826: a(n) is equal to the number of roots of the equation n*cos(x) = sqrt(x).

The programs for A361826, there is no canonical definition to state claims against.
-/

/-! ## A361826.P7567553535788382331

`or(1, floor((n+1)²/π))`
-/

namespace A361826.P7567553535788382331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊((n + 1) ^ 2 : ℝ) / Real.pi⌋

end

end A361826.P7567553535788382331

/-! ## A361826.P8075207971740016886

`2*floor((n+1)²/(2*π))+1`
-/

namespace A361826.P8075207971740016886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((n + 1) ^ 2 : ℝ) / (2 * Real.pi)⌋ + 1

end

end A361826.P8075207971740016886

/-! ## A361826.P17434109355930134036

`A109613(A032616(n+1))`
-/

namespace A361826.P17434109355930134036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A032616 (n + 1)).toNat

end

end A361826.P17434109355930134036

/-! ## A361826.P9681369980162605479

`A156724(A373198(n+1)+A000217(n))`
-/

namespace A361826.P9681369980162605479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A373198 (n + 1) + A000217 n).toNat

end

end A361826.P9681369980162605479

/-! ## A361826.P9582038138923535249

`A156724(A373954(n)+A000217(n)+2)`
-/

namespace A361826.P9582038138923535249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A373954 n + (A000217 n + 2)).toNat

end

end A361826.P9582038138923535249

/-!
# A361828: a(0) = 1; a(n+1) = Sum_{k=0..n} k^k * a(n-k).

The programs for A361828, there is no canonical definition to state claims against.
-/

/-! ## A361828.P12167468769283030624

`A237799(A077865(n))`
-/

namespace A361828.P12167468769283030624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237799 (A077865 n).toNat

end

end A361828.P12167468769283030624

/-! ## A361828.P7641091019954812725

`A342513(A075900(n))`
-/

namespace A361828.P7641091019954812725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342513 (A075900 n).toNat

end

end A361828.P7641091019954812725

/-!
# A361829: a(n) = Sum_{k=0..n} binomial(2*k,k) * binomial(n*k,n-k).

The programs for A361829, there is no canonical definition to state claims against.
-/

/-! ## A361829.P4554914111931793539

`A361830(∑[4*n])`
-/

namespace A361829.P4554914111931793539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361829.P4554914111931793539

/-! ## A361829.P14898730087367286516

`or(A000007(n), A361830(A046092(n)))`
-/

namespace A361829.P14898730087367286516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A361830 (A046092 n).toNat)

end

end A361829.P14898730087367286516

/-! ## A361829.P8284417440067546458

`A361830(A046092(n))+A000007(n+4)`
-/

namespace A361829.P8284417440067546458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (A046092 n).toNat + A000007 (n + 4)

end

end A361829.P8284417440067546458

/-! ## A361829.P5594755258464941990

`A361830(A046092(n))+A037900(A115382(n))`
-/

namespace A361829.P5594755258464941990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 (A046092 n).toNat + A037900 (A115382 n).toNat

end

end A361829.P5594755258464941990

/-!
# A361830: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} binomial(2*j,j) * binomial(k*j,n-j).

The programs for A361830, there is no canonical definition to state claims against.
-/

/-! ## A361830.P17169090296299394499

`A096491(A355793(n))`
-/

namespace A361830.P17169090296299394499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096491 (A355793 n).toNat

end

end A361830.P17169090296299394499

/-! ## A361830.P5526283464025133468

`A353847(A387466(n))`
-/

namespace A361830.P5526283464025133468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A387466 n).toNat

end

end A361830.P5526283464025133468

/-! ## A361830.P5108451896540291548

`A157477(A208918(n+1))`
-/

namespace A361830.P5108451896540291548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A208918 (n + 1)).toNat

end

end A361830.P5108451896540291548

/-! ## A361830.P48556510113847536

`A325352(lcm(2, A208918(n+1)))`
-/

namespace A361830.P48556510113847536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (Int.lcm 2 (A208918 (n + 1)))

end

end A361830.P48556510113847536

/-! ## A361830.P17707988391381352477

`A208918(n+1)/A020639(A097190(n))`
-/

namespace A361830.P17707988391381352477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208918 (n + 1) : ℚ) / (A020639 (A097190 n).toNat : ℚ)

end

end A361830.P17707988391381352477

/-!
# A361833: Fixed points of A361832.

The programs for A361833, there is no canonical definition to state claims against.
-/

/-! ## A361833.P3675147827421207884

`eq[n, A361832(n)]`
-/

namespace A361833.P3675147827421207884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361833.P3675147827421207884

/-! ## A361833.P2920356443734504486

`A048314(n+1)-A372359(A334828(n+1))`
-/

namespace A361833.P2920356443734504486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048314 (n + 1) - A372359 (A334828 (n + 1)).toNat

end

end A361833.P2920356443734504486

/-!
# A361834: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} (-1)^(n-j) * binomial(2*j,j) * binomial(k*j,n-j).

The programs for A361834, there is no canonical definition to state claims against.
-/

/-! ## A361834.P5981039655925418142

`A049269(A322044(n))`
-/

namespace A361834.P5981039655925418142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049269 (A322044 n).toNat

end

end A361834.P5981039655925418142

/-! ## A361834.P17463835926379962241

`gcd(A055388(A214842(n+1)), A361830(n))`
-/

namespace A361834.P17463835926379962241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055388 (A214842 (n + 1)).toNat) (A361830 n)

end

end A361834.P17463835926379962241

/-! ## A361834.P5451292884627962487

`A361830(n)/A194285(3*2^n-(n+2))`
-/

namespace A361834.P5451292884627962487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361830 n : ℚ) / (A194285 (3 * 2 ^ n - (n + 2)) : ℚ)

end

end A361834.P5451292884627962487

/-! ## A361834.P17855021324711536980

`A046899(n)-A163351(A266488(n))`
-/

namespace A361834.P17855021324711536980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n - A163351 (A266488 n).toNat

end

end A361834.P17855021324711536980

/-! ## A361834.P136737467346218345

`gcd(A028641(A001006(n)), A361830(n))`
-/

namespace A361834.P136737467346218345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028641 (A001006 n).toNat) (A361830 n)

end

end A361834.P136737467346218345

/-!
# A361835: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(2*k,k) * binomial(n*k,n-k).

The programs for A361835, there is no canonical definition to state claims against.
-/

/-! ## A361835.P9521868781937538443

`A361834(∑[4*n])`
-/

namespace A361835.P9521868781937538443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361835.P9521868781937538443

/-!
# A361838: a(n) is the number of 2s in the binary hereditary representation of 2n.

The programs for A361838, there is no canonical definition to state claims against.
-/

/-! ## A361838.P11672568880699152977

`∑{p}[A019565(2*(n+1)), A289493(#)]`
-/

namespace A361838.P11672568880699152977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A289493 p

end

end A361838.P11672568880699152977

/-! ## A361838.P2770811328626424193

`A196050(A052330(n+1))`
-/

namespace A361838.P2770811328626424193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A052330 (n + 1)).toNat

end

end A361838.P2770811328626424193

/-! ## A361838.P3609674581230547968

`A033922(A062880(n+1))`
-/

namespace A361838.P3609674581230547968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 (A062880 (n + 1)).toNat

end

end A361838.P3609674581230547968

/-! ## A361838.P14968664113542697028

`A033922(2*A000695(n+1))`
-/

namespace A361838.P14968664113542697028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 (2 * A000695 (n + 1)).toNat

end

end A361838.P14968664113542697028

/-! ## A361838.P6275655216909553160

`A056239(A096111(2*n+1)%A244421(n+4))`
-/

namespace A361838.P6275655216909553160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A096111 (2 * n + 1)) (A244421 (n + 4))).toNat

end

end A361838.P6275655216909553160

/-! ## A361838.P8926639593187554141

`A056239(A096111(2*(n+1)))%A128370(n+1)`
-/

namespace A361838.P8926639593187554141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A096111 (2 * (n + 1))).toNat) (A128370 (n + 1))

end

end A361838.P8926639593187554141

/-! ## A361838.P16860088506363890203

`A056239(A096111(2*(n+1))%A335908(n+1))`
-/

namespace A361838.P16860088506363890203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A096111 (2 * (n + 1))) (A335908 (n + 1))).toNat

end

end A361838.P16860088506363890203

/-! ## A361838.P884805441709966608

`A003434(A339821(n+1))`
-/

namespace A361838.P884805441709966608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A339821 (n + 1)).toNat

end

end A361838.P884805441709966608

/-! ## A361838.P16609662040485731058

`A346236(A104735(n+1))+A091222(A339821(n+1))`
-/

namespace A361838.P16609662040485731058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346236 (A104735 (n + 1)).toNat + A091222 (A339821 (n + 1)).toNat

end

end A361838.P16609662040485731058

/-!
# A361841: Expansion of 1/(1 - 9*x*(1+x)^2)^(1/3).

The programs for A361841, there is no canonical definition to state claims against.
-/

/-! ## A361841.P2291552491326392409

`A361839(∑[n+3])`
-/

namespace A361841.P2291552491326392409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361839 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361841.P2291552491326392409

/-!
# A361842: Expansion of 1/(1 - 9*x*(1+x)^3)^(1/3).

The programs for A361842, there is no canonical definition to state claims against.
-/

/-! ## A361842.P14206299534702650105

`A361839(A052905(n+1)+1)`
-/

namespace A361842.P14206299534702650105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361839 (A052905 (n + 1) + 1).toNat

end

end A361842.P14206299534702650105

/-! ## A361842.P7487748738549944805

`A361839(A034856(n+3)-2)`
-/

namespace A361842.P7487748738549944805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361839 (A034856 (n + 3) - 2).toNat

end

end A361842.P7487748738549944805

/-! ## A361842.P5952232863494843888

`A361839(A000217(n+4)-4)`
-/

namespace A361842.P5952232863494843888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361839 (A000217 (n + 4) - 4).toNat

end

end A361842.P5952232863494843888

/-!
# A361843: Expansion of 1/(1 - 9*x*(1-x))^(1/3).

The programs for A361843, there is no canonical definition to state claims against.
-/

/-! ## A361843.P9974873975231136725

`A361840(∑[n+2]-1)`
-/

namespace A361843.P9974873975231136725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361840 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A361843.P9974873975231136725

/-! ## A361843.P3336087027039113999

`record[A361840(A347633(n+1))]`
-/

namespace A361843.P3336087027039113999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361840 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361843.P3336087027039113999

/-! ## A361843.P12851809664339709572

`abs(A361840(∑[A065475(n+1)]))`
-/

namespace A361843.P12851809664339709572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A361840 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A361843.P12851809664339709572

/-! ## A361843.P4624555917181088814

`A361840(∑[A065475(n+1)])+A185013(n+4)`
-/

namespace A361843.P4624555917181088814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361840 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A185013 (n + 4)

end

end A361843.P4624555917181088814

/-! ## A361843.P4726786226881283291

`record[A361840(gcd(n, A217653(n)))]`
-/

namespace A361843.P4726786226881283291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361840 (Int.gcd (n : ℤ) (A217653 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361843.P4726786226881283291

/-!
# A361844: Expansion of 1/(1 - 9*x*(1-x)^2)^(1/3).

The programs for A361844, there is no canonical definition to state claims against.
-/

/-! ## A361844.P14132478566127329812

`A361840(∑[n+3])`
-/

namespace A361844.P14132478566127329812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361844.P14132478566127329812

/-! ## A361844.P4500466965049223414

`record[A010054(n+3)*A361840(n)]`
-/

namespace A361844.P4500466965049223414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A361840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361844.P4500466965049223414

/-!
# A361845: Expansion of 1/(1 - 9*x*(1-x)^3)^(1/3).

The programs for A361845, there is no canonical definition to state claims against.
-/

/-! ## A361845.P16121941593799846183

`A361840(∑[n+5]-(n-1))`
-/

namespace A361845.P16121941593799846183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361840 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)).toNat

end

end A361845.P16121941593799846183

/-! ## A361845.P9358953527397046732

`A102825(A267581(n))`
-/

namespace A361845.P9358953527397046732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102825 (A267581 n).toNat

end

end A361845.P9358953527397046732

/-!
# A361846: a(n) = Sum_{k=0..n} (-9)^k * binomial(-1/3,k) * binomial(n*k,n-k).

The programs for A361846, there is no canonical definition to state claims against.
-/

/-! ## A361846.P13841319370613623503

`A361839(∑[4*n])`
-/

namespace A361846.P13841319370613623503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361839 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361846.P13841319370613623503

/-!
# A361847: a(n) = (-1)^n * Sum_{k=0..n} 9^k * binomial(-1/3,k) * binomial(n*k,n-k).

The programs for A361847, there is no canonical definition to state claims against.
-/

/-! ## A361847.P12089212908016628205

`A361840(∑[4*n])`
-/

namespace A361847.P12089212908016628205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361847.P12089212908016628205

/-!
# A361848: Number of integer partitions of n such that (maximum) <= 2*(median).

The programs for A361848, there is no canonical definition to state claims against.
-/

/-! ## A361848.P15197350041736642483

`A361849(n+1)+A361858(n+1)`
-/

namespace A361848.P15197350041736642483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361849 (n + 1) + A361858 (n + 1)

end

end A361848.P15197350041736642483

/-! ## A361848.P2094156975889743075

`Δ[A000070(n)]-A361857(n+1)`
-/

namespace A361848.P2094156975889743075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A361857 (n + 1)

end

end A361848.P2094156975889743075

/-! ## A361848.P13809376365649064710

`record[A035363(n)]-A361857(n+1)`
-/

namespace A361848.P13809376365649064710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361857 (n + 1)

end

end A361848.P13809376365649064710

/-! ## A361848.P2223166630108871956

`record[A035444(n)]-A361857(n+1)`
-/

namespace A361848.P2223166630108871956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361857 (n + 1)

end

end A361848.P2223166630108871956

/-! ## A361848.P1867078900664793483

`A000041(n+1)-A361857(n+1)`
-/

namespace A361848.P1867078900664793483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A361857 (n + 1)

end

end A361848.P1867078900664793483

/-!
# A361849: Number of integer partitions of n such that the maximum is twice the median.

The programs for A361849, there is no canonical definition to state claims against.
-/

/-! ## A361849.P15808477502388316248

`A361848(n)-A361858(n+1)`
-/

namespace A361849.P15808477502388316248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361848 n - A361858 (n + 1)

end

end A361849.P15808477502388316248

/-! ## A361849.P1207727904927813693

`A361859(n+1)-A361857(n+1)`
-/

namespace A361849.P1207727904927813693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361859 (n + 1) - A361857 (n + 1)

end

end A361849.P1207727904927813693

/-! ## A361849.P2471981815315396432

`A361859(n+1)-(Δ[A000070(n)]-A361848(n))`
-/

namespace A361849.P2471981815315396432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361859 (n + 1) - (f1 (n + 1) - f1 n - A361848 n)

end

end A361849.P2471981815315396432

/-! ## A361849.P13536087802349961194

`A361859(n+1)-(record[A114099(n)]-A361848(n))`
-/

namespace A361849.P13536087802349961194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361859 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361848 n)

end

end A361849.P13536087802349961194

/-! ## A361849.P1585081246594376359

`Δ[A000070(n)]-A361858(n+1)-A361857(n+1)`
-/

namespace A361849.P1585081246594376359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A361858 (n + 1) - A361857 (n + 1)

end

end A361849.P1585081246594376359

/-!
# A361851: Number of integer partitions of n such that (length) * (maximum) <= 2*n.

The programs for A361851, there is no canonical definition to state claims against.
-/

/-! ## A361851.P15239398781147375845

`A361853(n+1)+A361852(n+1)`
-/

namespace A361851.P15239398781147375845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361853 (n + 1) + A361852 (n + 1)

end

end A361851.P15239398781147375845

/-! ## A361851.P16437733196613789729

`Δ[A000070(n)]-A361907(n+1)`
-/

namespace A361851.P16437733196613789729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A361907 (n + 1)

end

end A361851.P16437733196613789729

/-! ## A361851.P17241085974186397331

`record[A035363(n)]-A361907(n+1)`
-/

namespace A361851.P17241085974186397331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361907 (n + 1)

end

end A361851.P17241085974186397331

/-! ## A361851.P17922149869366048566

`A000041(n+1)-A361907(n+1)`
-/

namespace A361851.P17922149869366048566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A361907 (n + 1)

end

end A361851.P17922149869366048566

/-! ## A361851.P15838035210582707700

`∑[A187219(n+1)]-A361907(n+1)`
-/

namespace A361851.P15838035210582707700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A361907 (n + 1)

end

end A361851.P15838035210582707700

/-!
# A361852: Number of integer partitions of n such that (length) * (maximum) < 2n.

The programs for A361852, there is no canonical definition to state claims against.
-/

/-! ## A361852.P7137478811077297708

`A361851(n+1)-A361853(n+1)`
-/

namespace A361852.P7137478811077297708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361851 (n + 1) - A361853 (n + 1)

end

end A361852.P7137478811077297708

/-! ## A361852.P18368075802453700708

`Δ[A000070(n)]-A361906(n+1)`
-/

namespace A361852.P18368075802453700708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A361906 (n + 1)

end

end A361852.P18368075802453700708

/-! ## A361852.P11573634342120790262

`record[A035363(n)]-A361906(n+1)`
-/

namespace A361852.P11573634342120790262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361906 (n + 1)

end

end A361852.P11573634342120790262

/-! ## A361852.P5649638471225445606

`A000041(n+1)-A361906(n+1)`
-/

namespace A361852.P5649638471225445606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A361906 (n + 1)

end

end A361852.P5649638471225445606

/-! ## A361852.P11740209521173376233

`record[A168017(n+1)]-A361906(n+1)`
-/

namespace A361852.P11740209521173376233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361906 (n + 1)

end

end A361852.P11740209521173376233

/-!
# A361853: Number of integer partitions of n such that (length) * (maximum) = 2n.

The programs for A361853, there is no canonical definition to state claims against.
-/

/-! ## A361853.P10468925167303713732

`A361851(n+1)-A361852(n+1)`
-/

namespace A361853.P10468925167303713732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361851 (n + 1) - A361852 (n + 1)

end

end A361853.P10468925167303713732

/-! ## A361853.P13370388440637077353

`A361906(n+1)-A361907(n+1)`
-/

namespace A361853.P13370388440637077353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361906 (n + 1) - A361907 (n + 1)

end

end A361853.P13370388440637077353

/-! ## A361853.P3813312846355036866

`A361906(n+1)-(Δ[A000070(n)]-A361851(n+1))`
-/

namespace A361853.P3813312846355036866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361906 (n + 1) - (f1 (n + 1) - f1 n - A361851 (n + 1))

end

end A361853.P3813312846355036866

/-! ## A361853.P13727807023880452920

`A361906(n+1)-(record[A035363(n)]-A361851(n+1))`
-/

namespace A361853.P13727807023880452920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361906 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361851 (n + 1))

end

end A361853.P13727807023880452920

/-! ## A361853.P6389964227905594396

`record[A035363(n)]-A361852(n+1)-A361907(n+1)`
-/

namespace A361853.P6389964227905594396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361852 (n + 1) - A361907 (n + 1)

end

end A361853.P6389964227905594396

/-!
# A361855: Numbers > 1 whose prime indices satisfy (maximum) * (length) = 2*(sum).

The programs for A361855, there is no canonical definition to state claims against.
-/

/-! ## A361855.P13283736528290911345

`∩[A024619(n+1), A326848(n+1)]`
-/

namespace A361855.P13283736528290911345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361855.P13283736528290911345

/-!
# A361857: Number of integer partitions of n such that the maximum is greater than twice the median.

The programs for A361857, there is no canonical definition to state claims against.
-/

/-! ## A361857.P6257783472898252369

`Δ[A000070(n)]-A361848(n)`
-/

namespace A361857.P6257783472898252369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A361848 n

end

end A361857.P6257783472898252369

/-! ## A361857.P5329522605609494488

`record[A114099(n)]-A361848(n)`
-/

namespace A361857.P5329522605609494488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361848 n

end

end A361857.P5329522605609494488

/-! ## A361857.P3883060362156933235

`A000041(n+1)-A361848(n)`
-/

namespace A361857.P3883060362156933235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A361848 n

end

end A361857.P3883060362156933235

/-! ## A361857.P5223736543792581088

`∑[A187219(n+1)]-A361848(n)`
-/

namespace A361857.P5223736543792581088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A361848 n

end

end A361857.P5223736543792581088

/-! ## A361857.P10971431896993107912

`record[A182703(n+1)]-A361848(n)`
-/

namespace A361857.P10971431896993107912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361848 n

end

end A361857.P10971431896993107912

/-!
# A361858: Number of integer partitions of n such that the maximum is less than twice the median.

The programs for A361858, there is no canonical definition to state claims against.
-/

/-! ## A361858.P2314023937895369333

`A361848(n)-A361849(n+1)`
-/

namespace A361858.P2314023937895369333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361848 n - A361849 (n + 1)

end

end A361858.P2314023937895369333

/-! ## A361858.P1541854989177221527

`A000041(n+1)-A361859(n+1)`
-/

namespace A361858.P1541854989177221527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A361859 (n + 1)

end

end A361858.P1541854989177221527

/-! ## A361858.P5515226061554662230

`∑[A187219(n+1)]-A361859(n+1)`
-/

namespace A361858.P5515226061554662230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A361859 (n + 1)

end

end A361858.P5515226061554662230

/-! ## A361858.P14104144019252987271

`record[A026794(n+1)]-A361859(n+1)`
-/

namespace A361858.P14104144019252987271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361859 (n + 1)

end

end A361858.P14104144019252987271

/-! ## A361858.P3716543634922352644

`record[A299200(n+1)]-A361859(n+1)`
-/

namespace A361858.P3716543634922352644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361859 (n + 1)

end

end A361858.P3716543634922352644

/-!
# A361859: Number of integer partitions of n such that the maximum is greater than or equal to twice the median.

The programs for A361859, there is no canonical definition to state claims against.
-/

/-! ## A361859.P13207686553912308028

`Δ[A000070(n)]-A361858(n+1)`
-/

namespace A361859.P13207686553912308028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A361858 (n + 1)

end

end A361859.P13207686553912308028

/-! ## A361859.P7947215415482833179

`record[A035377(n)]-A361858(n+1)`
-/

namespace A361859.P7947215415482833179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361858 (n + 1)

end

end A361859.P7947215415482833179

/-! ## A361859.P2311973558789764397

`record[A114099(n)]-A361858(n+1)`
-/

namespace A361859.P2311973558789764397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A361858 (n + 1)

end

end A361859.P2311973558789764397

/-! ## A361859.P18256564120050369668

`A361857(n+1)+A361849(n+1)`
-/

namespace A361859.P18256564120050369668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361857 (n + 1) + A361849 (n + 1)

end

end A361859.P18256564120050369668

/-! ## A361859.P11377976505578891263

`A000041(n+1)-A361858(n+1)`
-/

namespace A361859.P11377976505578891263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A361858 (n + 1)

end

end A361859.P11377976505578891263

/-!
# A361862: Number of integer partitions of n such that (maximum) - (minimum) = (mean).

The programs for A361862, there is no canonical definition to state claims against.
-/

/-! ## A361862.P17049665725845730085

`A307706(A067228(n+1))`
-/

namespace A361862.P17049665725845730085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307706 (A067228 (n + 1)).toNat

end

end A361862.P17049665725845730085

/-! ## A361862.P3969848739110378604

`A236566(A329047(n+1))`
-/

namespace A361862.P3969848739110378604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236566 (A329047 (n + 1)).toNat

end

end A361862.P3969848739110378604

/-! ## A361862.P11752407233181555166

`A074122(A192305(n+1))%A051707(n+1)`
-/

namespace A361862.P11752407233181555166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074122 (A192305 (n + 1)).toNat) (A051707 (n + 1))

end

end A361862.P11752407233181555166

/-! ## A361862.P5722270135416649719

`A297168(n+1)%A073311(A048675(3*n+5))`
-/

namespace A361862.P5722270135416649719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297168 (n + 1)) (A073311 (A048675 (3 * n + 5)).toNat)

end

end A361862.P5722270135416649719

/-! ## A361862.P14688133352418632639

`(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A141285(ceil(2^(n-1)))`
-/

namespace A361862.P14688133352418632639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A141285 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A361862.P14688133352418632639

/-!
# A361865: Number of set partitions of {1..n} such that the mean of the means of the blocks is an integer.

The programs for A361865, there is no canonical definition to state claims against.
-/

/-! ## A361865.P13368774836992711615

`xor(A102829(A214201(n)), A345913(n+1))`
-/

namespace A361865.P13368774836992711615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102829 (A214201 n).toNat) (A345913 (n + 1))

end

end A361865.P13368774836992711615

/-! ## A361865.P13534249200901535240

`A308896(A340385(n+1)+A316197(n+1))`
-/

namespace A361865.P13534249200901535240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308896 (A340385 (n + 1) + A316197 (n + 1)).toNat

end

end A361865.P13534249200901535240

/-!
# A361867: Positive integers > 1 whose prime indices satisfy (maximum) > 2*(median).

The programs for A361867, there is no canonical definition to state claims against.
-/

/-! ## A361867.P13955005335500921060

`∩[A137428(n+1), A335513(n+1)]`
-/

namespace A361867.P13955005335500921060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361867.P13955005335500921060

/-! ## A361867.P15676582369603629727

`lt[A363219(n+1), A001222(n+1)]+1`
-/

namespace A361867.P15676582369603629727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A361867.P15676582369603629727

/-! ## A361867.P15359020187629922228

`2*A253785(n+1)%A277274(n+3)`
-/

namespace A361867.P15359020187629922228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A253785 (n + 1)) (A277274 (n + 3))

end

end A361867.P15359020187629922228

/-!
# A361868: Positive integers > 1 whose prime indices satisfy (maximum) >= 2*(median).

The programs for A361868, there is no canonical definition to state claims against.
-/

/-! ## A361868.P14497201790425562034

`∪[A361856(n+1), A361867(n+1)]`
-/

namespace A361868.P14497201790425562034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361868.P14497201790425562034

/-! ## A361868.P16804243317444238513

`lt[A032742(n+1), A358195(n+1)]+1`
-/

namespace A361868.P16804243317444238513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A361868.P16804243317444238513

/-!
# A361869: Let x_0, x_1, x_2, ... be the iterations of the arithmetic derivative A003415 starting with x_0 = n. a(n) is the greatest k such that x_0 > x_1 > ... > x_k.

The programs for A361869, there is no canonical definition to state claims against.
-/

/-! ## A361869.P16866641865523154887

`abs(A256750(n))%A016054(A336571(n+1))`
-/

namespace A361869.P16866641865523154887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A256750 n| (A016054 (A336571 (n + 1)).toNat)

end

end A361869.P16866641865523154887

/-! ## A361869.P744126584304539872

`abs(A256750(n)%A054905(n+1))`
-/

namespace A361869.P744126584304539872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A256750 n) (A054905 (n + 1))|

end

end A361869.P744126584304539872

/-! ## A361869.P16000934726681342948

`abs(A256750(n))%A128125(n+1)`
-/

namespace A361869.P16000934726681342948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A256750 n| (A128125 (n + 1))

end

end A361869.P16000934726681342948

/-! ## A361869.P10845801328582251139

`abs(A256750(n))*∏{e}[A002445(n)+1, #]`
-/

namespace A361869.P10845801328582251139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256750 n| * ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A361869.P10845801328582251139

/-! ## A361869.P16500820561791076483

`A256750(n)^A119245(A261517(n))`
-/

namespace A361869.P16500820561791076483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256750 n : ℚ) ^ (A119245 (A261517 n).toNat : ℤ)

end

end A361869.P16500820561791076483

/-!
# A361870: Array read by downward antidiagonals: A(n,k) is the number of nonequivalent 2-colorings of the cells of an n-dimensional hypercube with edges k cells long under action of symmetry.

The programs for A361870, there is no canonical definition to state claims against.
-/

/-! ## A361870.P15748644957592313665

`A162351(A173018(n)+1)`
-/

namespace A361870.P15748644957592313665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A173018 n + 1).toNat

end

end A361870.P15748644957592313665

/-! ## A361870.P10257684437725972518

`A322976(C(20, A339779(n)))`
-/

namespace A361870.P10257684437725972518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322976 (Nat.choose 20 (A339779 n).toNat)

end

end A361870.P10257684437725972518

/-! ## A361870.P11413916527866793011

`A125653(n)+A124768(A201637(n))`
-/

namespace A361870.P11413916527866793011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125653 n + A124768 (A201637 n).toNat

end

end A361870.P11413916527866793011

/-! ## A361870.P12910840057090567275

`A120397(A173018(n)+1)`
-/

namespace A361870.P12910840057090567275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (A173018 n + 1).toNat

end

end A361870.P12910840057090567275

/-! ## A361870.P1980186163543632582

`A028827(A322706(n+1))`
-/

namespace A361870.P1980186163543632582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028827 (A322706 (n + 1)).toNat

end

end A361870.P1980186163543632582

/-!
# A361871: The smallest order of a non-abelian group with an element of order n.

The programs for A361871, the canonical program `A361871.P9824007368951059274` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361871 has offset 1).

The definition of A361871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361871.P9824007368951059274

`2*a(n-1)-a(n-2)` with `a(0)=6, a(1)=6, a(2)=6, a(3)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A361871

/-- `2*a(n-1)-a(n-2)` -/
def P9824007368951059274.Spec : Prop :=
  ∀ n, P9824007368951059274.a n = A361871 (n + 1)

theorem P9824007368951059274.correct : P9824007368951059274.Spec := by
  intro n
  simp only [A361871, Nat.add_sub_cancel]

end A361871

/-!
# A361872: Number of primitive practical numbers (PPNs)(A267124) between successive primorial numbers (A002110) where the PPNs q are in the range A002110(n-1) < q <= A002110(n).

The programs for A361872, there is no canonical definition to state claims against.
-/

/-! ## A361872.P16878212130807644510

`A359804(A053152(floor((n/2)²)+1)+1)`
-/

namespace A361872.P16878212130807644510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359804 (A053152 (⌊((n : ℚ) / 2) ^ 2⌋ + 1).toNat + 1).toNat

end

end A361872.P16878212130807644510

/-! ## A361872.P2881500139438396136

`A289436(A064299(n)+A034386(n))`
-/

namespace A361872.P2881500139438396136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A064299 n + A034386 n).toNat

end

end A361872.P2881500139438396136

/-!
# A361875: Integers of the form k*2^m + 1 where 0 < k <= m and k is odd.

The programs for A361875, there is no canonical definition to state claims against.
-/

/-! ## A361875.P11967430313202742363

`lt[(n+1)/2^val(n+1, 2), val(n+1, 2)+1]+2`
-/

namespace A361875.P11967430313202742363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 2

end

end A361875.P11967430313202742363

/-! ## A361875.P15318103958796446668

`record[A053644(n+3)*A126863(n+1)+1]`
-/

namespace A361875.P15318103958796446668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 3) * A126863 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361875.P15318103958796446668

/-! ## A361875.P3133904287287214563

`A005843(record[A130124(n+1)])+1`
-/

namespace A361875.P3133904287287214563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A361875.P3133904287287214563

/-! ## A361875.P13040450183073555337

`lt[A000265(n+1), A001511(n+1)]+2`
-/

namespace A361875.P13040450183073555337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A361875.P13040450183073555337

/-! ## A361875.P3721202827912439945

`lt[A011776(n+1), A006519(n+1)]+2`
-/

namespace A361875.P3721202827912439945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A361875.P3721202827912439945

/-!
# A361877: a(n) = binomial(2*n, n) * binomial(2*n - 1, n).

The programs for A361877, the canonical program `A361877.P7638436941781393027` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361877 has offset 0).

The definition of A361877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361877.P7638436941781393027

`(4-2/n)²*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A361877

/-- `(4-2/n)²*a(n-1)` -/
def P7638436941781393027.Spec : Prop :=
  ∀ n, P7638436941781393027.a n = (A361877 n : ℚ)

end A361877

/-! ## A361877.P5721049714031433568

`A125558(n)*(n+1)`
-/

namespace A361877.P5721049714031433568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125558 n * (n + 1 : ℤ)

end

end A361877.P5721049714031433568

namespace A361877

/-- `A125558(n)*(n+1)` -/
def P5721049714031433568.Spec : Prop :=
  ∀ n, P5721049714031433568.a n = A361877 n

end A361877

/-! ## A361877.P111956040005323819

`A187535(n)/n!`
-/

namespace A361877.P111956040005323819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187535 n : ℚ) / (Nat.factorial n : ℚ)

end

end A361877.P111956040005323819

namespace A361877

/-- `A187535(n)/n!` -/
def P111956040005323819.Spec : Prop :=
  ∀ n, P111956040005323819.a n = (A361877 n : ℚ)

end A361877

/-! ## A361877.P14668133915425286794

`ceil(C(2*n, n)²/2)`
-/

namespace A361877.P14668133915425286794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) n ^ 2 : ℚ) / 2⌉

end

end A361877.P14668133915425286794

namespace A361877

/-- `ceil(C(2*n, n)²/2)` -/
def P14668133915425286794.Spec : Prop :=
  ∀ n, P14668133915425286794.a n = A361877 n

end A361877

/-! ## A361877.P5341291750016580657

`round(C(2*n, n)²/2)`
-/

namespace A361877.P5341291750016580657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) n ^ 2 : ℚ) / 2)

end

end A361877.P5341291750016580657

namespace A361877

/-- `round(C(2*n, n)²/2)` -/
def P5341291750016580657.Spec : Prop :=
  ∀ n, P5341291750016580657.a n = A361877 n

end A361877

/-! ## A361877.P2948500087824078886

`lcm(2, C(2*n, n)²)/2`
-/

namespace A361877.P2948500087824078886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.choose (2 * n) n ^ 2) : ℚ) / 2

end

end A361877.P2948500087824078886

namespace A361877

/-- `lcm(2, C(2*n, n)²)/2` -/
def P2948500087824078886.Spec : Prop :=
  ∀ n, P2948500087824078886.a n = (A361877 n : ℚ)

end A361877

/-! ## A361877.P10230363263846691778

`floor((C(2*n, n)²+1)/2)`
-/

namespace A361877.P10230363263846691778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) n ^ 2 + 1 : ℚ) / 2⌋

end

end A361877.P10230363263846691778

namespace A361877

/-- `floor((C(2*n, n)²+1)/2)` -/
def P10230363263846691778.Spec : Prop :=
  ∀ n, P10230363263846691778.a n = A361877 n

end A361877

/-! ## A361877.P10596149504781607652

`C(2*n, n)*ceil(C(2*n, n)/2)`
-/

namespace A361877.P10596149504781607652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * ⌈(Nat.choose (2 * n) n : ℚ) / 2⌉

end

end A361877.P10596149504781607652

namespace A361877

/-- `C(2*n, n)*ceil(C(2*n, n)/2)` -/
def P10596149504781607652.Spec : Prop :=
  ∀ n, P10596149504781607652.a n = A361877 n

end A361877

/-! ## A361877.P13743466975246733138

`round(record[C(n, floor(n/2))²/(-1)^n]/2)`
-/

namespace A361877.P13743466975246733138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2)

end

end A361877.P13743466975246733138

namespace A361877

/-- `round(record[C(n, floor(n/2))²/(-1)^n]/2)` -/
def P13743466975246733138.Spec : Prop :=
  ∀ n, P13743466975246733138.a n = A361877 n

end A361877

/-! ## A361877.P15442315987726125684

`ceil(A002894(n)/2)`
-/

namespace A361877.P15442315987726125684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002894 n : ℚ) / 2⌉

end

end A361877.P15442315987726125684

namespace A361877

/-- `ceil(A002894(n)/2)` -/
def P15442315987726125684.Spec : Prop :=
  ∀ n, P15442315987726125684.a n = A361877 n

end A361877

/-!
# A361878: a(n) = hypergeom([-n, -n, n, n + 1], [1, 1, 1], 1).

The programs for A361878, there is no canonical definition to state claims against.
-/

/-! ## A361878.P811033692804437815

`A361877(n)+A361712(n)`
-/

namespace A361878.P811033692804437815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361877 n + A361712 n

end

end A361878.P811033692804437815

/-!
# A361879: Sum of even middle divisors of n, where "middle divisor" means a divisor in the half-open interval [sqrt(n/2), sqrt(n*2)).

The programs for A361879, there is no canonical definition to state claims against.
-/

/-! ## A361879.P15527189522911975138

`A071090(n+1)-A361824(n+1)`
-/

namespace A361879.P15527189522911975138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (n + 1) - A361824 (n + 1)

end

end A361879.P15527189522911975138

/-! ## A361879.P5806491079565405036

`Δ[A160664(n)]-A302433(n+1)-A361824(n+1)`
-/

namespace A361879.P5806491079565405036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A302433 (n + 1) - A361824 (n + 1)

end

end A361879.P5806491079565405036

/-! ## A361879.P10802945640565343999

`A000203(n+1)-A302433(n+1)-A361824(n+1)`
-/

namespace A361879.P10802945640565343999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A302433 (n + 1) - A361824 (n + 1)

end

end A361879.P10802945640565343999

/-! ## A361879.P15774837721728846712

`abs(A143348(n+1))-A302433(n+1)-A361824(n+1)`
-/

namespace A361879.P15774837721728846712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A302433 (n + 1) - A361824 (n + 1)

end

end A361879.P15774837721728846712

/-! ## A361879.P12244314650967543904

`A245092(2*n+1)-A302433(n+1)-A361824(n+1)`
-/

namespace A361879.P12244314650967543904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A302433 (n + 1) - A361824 (n + 1)

end

end A361879.P12244314650967543904

/-! ## A361879.P9256727806067924924

`A074400(n+1)/2-A302433(n+1)-A361824(n+1)`
-/

namespace A361879.P9256727806067924924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A302433 (n + 1) : ℚ) - (A361824 (n + 1) : ℚ)

end

end A361879.P9256727806067924924

/-! ## A361879.P411731699332332802

`A127057(A000124(n))-A302433(n+1)-A361824(n+1)`
-/

namespace A361879.P411731699332332802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n).toNat - A302433 (n + 1) - A361824 (n + 1)

end

end A361879.P411731699332332802

/-!
# A361880: Expansion of 1/(1 - 9*x/(1 - x)^2)^(1/3).

The programs for A361880, there is no canonical definition to state claims against.
-/

/-! ## A361880.P7483985591917694375

`A065475(record[A239295(n)-n])`
-/

namespace A361880.P7483985591917694375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239295 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361880.P7483985591917694375

/-!
# A361881: Expansion of 1/(1 - 9*x/(1 + x))^(1/3).

The programs for A361881, there is no canonical definition to state claims against.
-/

/-! ## A361881.P4147931082988267249

`A316176(C(4*n, 2)+1)+ceil(2^(n-1))`
-/

namespace A361881.P4147931082988267249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (Nat.choose (4 * n) 2 + 1) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A361881.P4147931082988267249

/-!
# A361882: Expansion of 1/(1 - 9*x/(1 + x)^2)^(1/3).

The programs for A361882, there is no canonical definition to state claims against.
-/

/-! ## A361882.P5534582212777283611

`3*A274431(a(n-1))` with `a(0)=1`
-/

namespace A361882.P5534582212777283611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A274431 (a (n - 1)).toNat

end

end A361882.P5534582212777283611

/-!
# A361887: a(n) = S(5,n), where S(r,n) = Sum_{k = 0..floor(n/2)} ( binomial(n,k) - binomial(n,k-1) )^r.

The programs for A361887, there is no canonical definition to state claims against.
-/

/-! ## A361887.P1494373432318907876

`A001405(n)*A361888(n)`
-/

namespace A361887.P1494373432318907876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A361888 n

end

end A361887.P1494373432318907876

/-! ## A361887.P9262833927486574596

`abs(A126930(n)*A361888(n))`
-/

namespace A361887.P9262833927486574596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n * A361888 n|

end

end A361887.P9262833927486574596

/-! ## A361887.P9779895595727364333

`A210736(n+1)*A361888(n)`
-/

namespace A361887.P9779895595727364333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) * A361888 n

end

end A361887.P9779895595727364333

/-! ## A361887.P8633657057183593722

`A054336(A000217(n))*A361888(n)`
-/

namespace A361887.P8633657057183593722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 (A000217 n).toNat * A361888 n

end

end A361887.P8633657057183593722

/-! ## A361887.P912740379038648994

`A003161(n)/A003162(n)*A361888(n)`
-/

namespace A361887.P912740379038648994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 n : ℚ) / (A003162 n : ℚ) * (A361888 n : ℚ)

end

end A361887.P912740379038648994

/-! ## A361887.P13272856091646843172

`A361888(n)/A361891(n)*A361890(n)`
-/

namespace A361887.P13272856091646843172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361888 n : ℚ) / (A361891 n : ℚ) * (A361890 n : ℚ)

end

end A361887.P13272856091646843172

/-!
# A361888: a(n) = S(5,n)/S(1,n), where S(r,n) = Sum_{k = 0..floor(n/2)} ( binomial(n,k) - binomial(n,k-1) )^r.

The programs for A361888, there is no canonical definition to state claims against.
-/

/-! ## A361888.P1369500849744584753

`A361887(n)/A001405(n)`
-/

namespace A361888.P1369500849744584753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361887 n : ℚ) / (A001405 n : ℚ)

end

end A361888.P1369500849744584753

/-! ## A361888.P2277568587579428269

`abs(A361887(n)/A126930(n))`
-/

namespace A361888.P2277568587579428269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A361887 n : ℚ) / (A126930 n : ℚ)|

end

end A361888.P2277568587579428269

/-! ## A361888.P6356861010079465065

`A361887(n)/A210736(n+1)`
-/

namespace A361888.P6356861010079465065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361887 n : ℚ) / (A210736 (n + 1) : ℚ)

end

end A361888.P6356861010079465065

/-! ## A361888.P12102331275069316311

`A361887(n)/A054336(A000217(n))`
-/

namespace A361888.P12102331275069316311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361887 n : ℚ) / (A054336 (A000217 n).toNat : ℚ)

end

end A361888.P12102331275069316311

/-! ## A361888.P8087971306177208993

`A003162(n)/A003161(n)*A361887(n)`
-/

namespace A361888.P8087971306177208993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003162 n : ℚ) / (A003161 n : ℚ) * (A361887 n : ℚ)

end

end A361888.P8087971306177208993

/-! ## A361888.P9016212989469999191

`A361887(n)/A361890(n)*A361891(n)`
-/

namespace A361888.P9016212989469999191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361887 n : ℚ) / (A361890 n : ℚ) * (A361891 n : ℚ)

end

end A361888.P9016212989469999191

/-!
# A361889: a(n) = S(5,2*n-1)/S(1,2*n-1), where S(r,n) = Sum_{k = 0..floor(n/2)} ( binomial(n,k) - binomial(n,k-1) )^r.

The programs for A361889, there is no canonical definition to state claims against.
-/

/-! ## A361889.P16080131169775426599

`A361888(Δ[n²])`
-/

namespace A361889.P16080131169775426599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361888 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A361889.P16080131169775426599

/-! ## A361889.P1180476880184520590

`record[A361888(or(1, floor(n/(n%2+2))+1))]`
-/

namespace A361889.P1180476880184520590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361888 (Int.lor 1 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361889.P1180476880184520590

/-! ## A361889.P15438694848449334250

`A361887(2*n+1)/A001405(2*n+1)`
-/

namespace A361889.P15438694848449334250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361887 (2 * n + 1) : ℚ) / (A001405 (2 * n + 1) : ℚ)

end

end A361889.P15438694848449334250

/-! ## A361889.P4883201136212880315

`abs(A361887(2*n+1)/A126930(2*n+1))`
-/

namespace A361889.P4883201136212880315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A361887 (2 * n + 1) : ℚ) / (A126930 (2 * n + 1) : ℚ)|

end

end A361889.P4883201136212880315

/-! ## A361889.P13369807343360592446

`A361887(2*n+1)/A054336(A000217(2*n+1))`
-/

namespace A361889.P13369807343360592446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361887 (2 * n + 1) : ℚ) / (A054336 (A000217 (2 * n + 1)).toNat : ℚ)

end

end A361889.P13369807343360592446

/-!
# A361890: a(n) = S(7,n), where S(r,n) = Sum_{k = 0..floor(n/2)} ( binomial(n,k) - binomial(n,k-1) )^r.

The programs for A361890, there is no canonical definition to state claims against.
-/

/-! ## A361890.P13995569226056055350

`A001405(n)*A361891(n)`
-/

namespace A361890.P13995569226056055350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A361891 n

end

end A361890.P13995569226056055350

/-! ## A361890.P17489046755910038605

`A003161(n)/A003162(n)*A361891(n)`
-/

namespace A361890.P17489046755910038605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 n : ℚ) / (A003162 n : ℚ) * (A361891 n : ℚ)

end

end A361890.P17489046755910038605

/-! ## A361890.P2778051988045878945

`A361887(n)/A361888(n)*A361891(n)`
-/

namespace A361890.P2778051988045878945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361887 n : ℚ) / (A361888 n : ℚ) * (A361891 n : ℚ)

end

end A361890.P2778051988045878945

/-! ## A361890.P1266296623455852767

`A357824(eq[17, A099375(n)+2])`
-/

namespace A361890.P1266296623455852767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361890.P1266296623455852767

/-!
# A361891: a(n) = S(7,n)/S(1,n), where S(r,n) = Sum_{k = 0..floor(n/2)} ( binomial(n,k) - binomial(n,k-1) )^r.

The programs for A361891, there is no canonical definition to state claims against.
-/

/-! ## A361891.P17724967977857959185

`A361890(n)/A001405(n)`
-/

namespace A361891.P17724967977857959185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361890 n : ℚ) / (A001405 n : ℚ)

end

end A361891.P17724967977857959185

/-! ## A361891.P13835072949085431322

`abs(A361890(n)/A126930(n))`
-/

namespace A361891.P13835072949085431322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A361890 n : ℚ) / (A126930 n : ℚ)|

end

end A361891.P13835072949085431322

/-! ## A361891.P6086519643357999294

`A361890(n)/A210736(n+1)`
-/

namespace A361891.P6086519643357999294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361890 n : ℚ) / (A210736 (n + 1) : ℚ)

end

end A361891.P6086519643357999294

/-! ## A361891.P9060450532985473944

`A361890(n)/A054336(A000217(n))`
-/

namespace A361891.P9060450532985473944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361890 n : ℚ) / (A054336 (A000217 n).toNat : ℚ)

end

end A361891.P9060450532985473944

/-! ## A361891.P12161484987676903132

`A361888(n)/A361887(n)*A361890(n)`
-/

namespace A361891.P12161484987676903132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361888 n : ℚ) / (A361887 n : ℚ) * (A361890 n : ℚ)

end

end A361891.P12161484987676903132

/-!
# A361892: a(n) = S(7,2*n-1)/S(1,2*n-1), where S(r,n) = Sum_{k = 0..floor(n/2)} ( binomial(n,k) - binomial(n,k-1) )^r.

The programs for A361892, there is no canonical definition to state claims against.
-/

/-! ## A361892.P1017654075137040898

`A361891(Δ[n²])`
-/

namespace A361892.P1017654075137040898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361891 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A361892.P1017654075137040898

/-! ## A361892.P11650984247316214682

`A361890(2*n+1)/A001405(2*n+1)`
-/

namespace A361892.P11650984247316214682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361890 (2 * n + 1) : ℚ) / (A001405 (2 * n + 1) : ℚ)

end

end A361892.P11650984247316214682

/-!
# A361893: Triangle read by rows. T(n, k) = n! * binomial(n - 1, k - 1) / (n - k)!.

The programs for A361893, there is no canonical definition to state claims against.
-/

/-! ## A361893.P2888224274240910180

`A008279(n)*A097805(n)`
-/

namespace A361893.P2888224274240910180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A097805 n

end

end A361893.P2888224274240910180

/-! ## A361893.P3841918528292306626

`A090181(n)*A137948(n)`
-/

namespace A361893.P3841918528292306626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n * A137948 n

end

end A361893.P3841918528292306626

/-! ## A361893.P11573667095401057186

`A233543(n)*A367267(n)`
-/

namespace A361893.P11573667095401057186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A367267 n

end

end A361893.P11573667095401057186

/-! ## A361893.P5893373589594775622

`A090181(n)*A137267(n+1)`
-/

namespace A361893.P5893373589594775622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n * A137267 (n + 1)

end

end A361893.P5893373589594775622

/-! ## A361893.P16286027968286777156

`A131198(abs(2-n)+1)*A137948(n)`
-/

namespace A361893.P16286027968286777156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 (|2 - (n : ℤ)| + 1).toNat * A137948 n

end

end A361893.P16286027968286777156

/-! ## A361893.P7052856675787252811

`A094587(A061579(n))*A097805(n)`
-/

namespace A361893.P7052856675787252811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A061579 n).toNat * A097805 n

end

end A361893.P7052856675787252811

/-! ## A361893.P13205752047469337609

`A021010(n)*A097805(n)/A130595(n)`
-/

namespace A361893.P13205752047469337609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021010 n * A097805 n : ℚ) / (A130595 n : ℚ)

end

end A361893.P13205752047469337609

/-!
# A361894: Triangle read by rows. T(n, k) is the number of Fibonacci meanders with a central angle of 360/m degrees that make m*k left turns and whose length is m*n, where m = 2.

The programs for A361894, there is no canonical definition to state claims against.
-/

/-! ## A361894.P11357679523417815697

`A347568(A064094(n))+A122283(n)`
-/

namespace A361894.P11357679523417815697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347568 (A064094 n).toNat + A122283 n

end

end A361894.P11357679523417815697

/-! ## A361894.P2765474912903925670

`A004736(n+1)*A342879(A090182(n))`
-/

namespace A361894.P2765474912903925670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A342879 (A090182 n).toNat

end

end A361894.P2765474912903925670

/-! ## A361894.P8963492961296845252

`A172528(A330964(n))*A294733(n+1)`
-/

namespace A361894.P8963492961296845252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172528 (A330964 n).toNat * A294733 (n + 1)

end

end A361894.P8963492961296845252

/-! ## A361894.P3172216812185885699

`A004736(n+1)*A333766(A267338(n+1))`
-/

namespace A361894.P3172216812185885699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A333766 (A267338 (n + 1)).toNat

end

end A361894.P3172216812185885699

/-! ## A361894.P8194732864455665287

`A225395(lcm(A118180(n), A329049(n)))`
-/

namespace A361894.P8194732864455665287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (Int.lcm (A118180 n) (A329049 n))

end

end A361894.P8194732864455665287

/-!
# A361895: Expansion of 1/(1 - 9*x/(1 - x)^3)^(1/3).

The programs for A361895, there is no canonical definition to state claims against.
-/

/-! ## A361895.P9517360725041318128

`A317192(A320922(n+1)+10^n)`
-/

namespace A361895.P9517360725041318128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317192 (A320922 (n + 1) + (10 ^ n : ℤ)).toNat

end

end A361895.P9517360725041318128

/-!
# A361896: Expansion of 1/(1 - 9*x/(1 - x)^4)^(1/3).

The programs for A361896, there is no canonical definition to state claims against.
-/

/-! ## A361896.P14313989455348684297

`A156077(A345078(n)-A153830(n))`
-/

namespace A361896.P14313989455348684297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A345078 n - A153830 n).toNat

end

end A361896.P14313989455348684297

/-!
# A361897: Leading terms of the rows of the array in A362450; or, Gilbreath transform of tau (A000005).

The programs for A361897, there is no canonical definition to state claims against.
-/

/-! ## A361897.P13440227018943977640

`char[A362454(n+1)-1]`
-/

namespace A361897.P13440227018943977640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362454 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361897.P13440227018943977640

/-! ## A361897.P18354569657567267353

`A103198(n+1)%2`
-/

namespace A361897.P18354569657567267353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103198 (n + 1)) 2

end

end A361897.P18354569657567267353

/-! ## A361897.P5499607447723610259

`Δ[A003099(n)]%2`
-/

namespace A361897.P5499607447723610259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A361897.P5499607447723610259

/-! ## A361897.P9596981756339090648

`and(1, A001659(n+1))`
-/

namespace A361897.P9596981756339090648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001659 (n + 1))

end

end A361897.P9596981756339090648

/-! ## A361897.P12897607236094486156

`A000035(gcd(A001659(n+1), A131577(n)))`
-/

namespace A361897.P12897607236094486156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (A001659 (n + 1)) (A131577 n))

end

end A361897.P12897607236094486156

/-! ## A361897.P4228350309743600707

`A101509(n)%2`
-/

namespace A361897.P4228350309743600707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101509 n) 2

end

end A361897.P4228350309743600707

/-! ## A361897.P13438229050900211729

`and(A101509(n), A158388(n))`
-/

namespace A361897.P13438229050900211729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101509 n) (A158388 n)

end

end A361897.P13438229050900211729

/-! ## A361897.P1450844923073040005

`and(A101509(n), A267871(n))`
-/

namespace A361897.P1450844923073040005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101509 n) (A267871 n)

end

end A361897.P1450844923073040005

/-! ## A361897.P13522750053456249326

`and(A101509(n), A115342(n+6))`
-/

namespace A361897.P13522750053456249326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101509 n) (A115342 (n + 6))

end

end A361897.P13522750053456249326

/-! ## A361897.P18049936907081097102

`and(A101509(n), A209530(n+1))`
-/

namespace A361897.P18049936907081097102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101509 n) (A209530 (n + 1))

end

end A361897.P18049936907081097102

/-! ## A361897.P17069953189244318501

`and(A101509(n), A204708(n+1))`
-/

namespace A361897.P17069953189244318501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101509 n) (A204708 (n + 1))

end

end A361897.P17069953189244318501

/-! ## A361897.P2626895019846790347

`and(A087289(n), A101509(n))`
-/

namespace A361897.P2626895019846790347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087289 n) (A101509 n)

end

end A361897.P2626895019846790347

/-! ## A361897.P6663935427352103275

`and(A101509(n), A199116(n))`
-/

namespace A361897.P6663935427352103275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101509 n) (A199116 n)

end

end A361897.P6663935427352103275

/-! ## A361897.P10595252978009497880

`and(A101509(n), A199209(n))`
-/

namespace A361897.P10595252978009497880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101509 n) (A199209 n)

end

end A361897.P10595252978009497880

/-! ## A361897.P2272438841011289774

`and(A101509(n), A208556(n+1))`
-/

namespace A361897.P2272438841011289774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101509 n) (A208556 (n + 1))

end

end A361897.P2272438841011289774

/-! ## A361897.P17003265153900700555

`and(A050915(n), A101509(n))`
-/

namespace A361897.P17003265153900700555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050915 n) (A101509 n)

end

end A361897.P17003265153900700555

/-! ## A361897.P12778785188772132523

`A362450(∑[n]+1)`
-/

namespace A361897.P12778785188772132523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362450 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A361897.P12778785188772132523

