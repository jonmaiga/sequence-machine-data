import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
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

/-!
# A335000: Orders of the groups PSL(m,q) in increasing order as q runs through the prime powers (with repetitions).

The programs for A335000, there is no canonical definition to state claims against.
-/

/-! ## A335000.P13255543158339755954

`A352806(A006530(∏[(n+1)²/∏{p}[n+1, #]]))`
-/

namespace A335000.P13255543158339755954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352806 (A006530 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A335000.P13255543158339755954

/-! ## A335000.P9286984268194487059

`A334884(A000267(n)^A178832(n))`
-/

namespace A335000.P9286984268194487059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334884 (SequenceMachineLib.roundAway ((A000267 n : ℚ) ^ (A178832 n : ℤ))).toNat

end

end A335000.P9286984268194487059

/-! ## A335000.P6811390538067218366

`A334994(A000267(n)^A178832(n))`
-/

namespace A335000.P6811390538067218366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334994 (SequenceMachineLib.roundAway ((A000267 n : ℚ) ^ (A178832 n : ℤ))).toNat

end

end A335000.P6811390538067218366

/-!
# A335001: Integers m such that d(F(m)) = d(L(m)) where d is the number of divisors function, F(n) and L(n) are respectively the n-th Fibonacci and n-th Lucas numbers.

The programs for A335001, the canonical program `A335001.P3223247444215741324` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335001 has offset 1).

The definition of A335001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335001.P3223247444215741324

`eq[A063375(abs(1-n)+1), A272377(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A335001

/-- `eq[A063375(abs(1-n)+1), A272377(n)]` -/
def P3223247444215741324.Spec : Prop :=
  ∀ n, (P3223247444215741324.a n : ℤ) = A335001 (n + 1)

theorem P3223247444215741324.correct : P3223247444215741324.Spec := by
  intro n
  simp only [A335001, Nat.add_sub_cancel]

end A335001

/-! ## A335001.P4908394694502129781

`eq[A063375(n+1), A272377(n+1)]+1`
-/

namespace A335001.P4908394694502129781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335001.P4908394694502129781

namespace A335001

/-- `eq[A063375(n+1), A272377(n+1)]+1` -/
def P4908394694502129781.Spec : Prop :=
  ∀ n, (P4908394694502129781.a n : ℤ) = A335001 (n + 1)

end A335001

/-!
# A335002: Integers m such that omega(F(m)) = omega(L(m)) where omega is the number of distinct prime divisors function, F(n) and L(n) are the n-th Fibonacci and n-th Lucas numbers.

The programs for A335002, there is no canonical definition to state claims against.
-/

/-! ## A335002.P6673716529337960608

`eq[A022307(n), A086598(n)]`
-/

namespace A335002.P6673716529337960608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335002.P6673716529337960608

/-!
# A335003: Triangle read by rows where the n-th row is the cycle trajectory of 2^n+1 in the divide-or-choose 2 rule.

The programs for A335003, the canonical program `A335003.P13569162527481826655` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335003 has offset 1).

The definition of A335003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335003.P13569162527481826655

`A000051(A002024(n+1))*A057728(A080036(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A335003

/-- `A000051(A002024(n+1))*A057728(A080036(n))` -/
def P13569162527481826655.Spec : Prop :=
  ∀ n, P13569162527481826655.a n = A335003 (n + 1)

theorem P13569162527481826655.correct : P13569162527481826655.Spec := by
  intro n
  simp only [A335003, Nat.add_sub_cancel]

end A335003

/-! ## A335003.P15356983059859017

`A000051(A002024(n+1))*A059268(A278818(n))`
-/

namespace A335003.P15356983059859017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002024 (n + 1)).toNat * A059268 (A278818 n).toNat

end

end A335003.P15356983059859017

namespace A335003

/-- `A000051(A002024(n+1))*A059268(A278818(n))` -/
def P15356983059859017.Spec : Prop :=
  ∀ n, P15356983059859017.a n = A335003 (n + 1)

end A335003

/-! ## A335003.P9006425156296660982

`A057728(A080036(n))*A173786(A127739(n+1))`
-/

namespace A335003.P9006425156296660982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (A080036 n).toNat * A173786 (A127739 (n + 1)).toNat

end

end A335003.P9006425156296660982

namespace A335003

/-- `A057728(A080036(n))*A173786(A127739(n+1))` -/
def P9006425156296660982.Spec : Prop :=
  ∀ n, P9006425156296660982.a n = A335003 (n + 1)

end A335003

/-! ## A335003.P15059901675406384490

`A059268(A278818(n))*A271709(A127739(n+1))`
-/

namespace A335003.P15059901675406384490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A278818 n).toNat * A271709 (A127739 (n + 1)).toNat

end

end A335003.P15059901675406384490

namespace A335003

/-- `A059268(A278818(n))*A271709(A127739(n+1))` -/
def P15059901675406384490.Spec : Prop :=
  ∀ n, P15059901675406384490.a n = A335003 (n + 1)

end A335003

/-! ## A335003.P2006538133571732920

`A000051(A002024(n+1))*A059268(A038722(n+1))`
-/

namespace A335003.P2006538133571732920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A002024 (n + 1)).toNat * A059268 (A038722 (n + 1)).toNat

end

end A335003.P2006538133571732920

namespace A335003

/-- `A000051(A002024(n+1))*A059268(A038722(n+1))` -/
def P2006538133571732920.Spec : Prop :=
  ∀ n, P2006538133571732920.a n = A335003 (n + 1)

end A335003

/-! ## A335003.P6563536825740063632

`A059268(A038722(n+1))*A271709(A127739(n+1))`
-/

namespace A335003.P6563536825740063632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A038722 (n + 1)).toNat * A271709 (A127739 (n + 1)).toNat

end

end A335003.P6563536825740063632

namespace A335003

/-- `A059268(A038722(n+1))*A271709(A127739(n+1))` -/
def P6563536825740063632.Spec : Prop :=
  ∀ n, P6563536825740063632.a n = A335003 (n + 1)

end A335003

/-!
# A335008: Weird numbers (A006037) with more divisors than any smaller weird number.

The programs for A335008, there is no canonical definition to state claims against.
-/

/-! ## A335008.P9066390343849208540

`A329190(record[Δ[A294376(n+1)]])`
-/

namespace A335008.P9066390343849208540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329190 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335008.P9066390343849208540

/-!
# A335009: Irregular triangle read by rows: T(n,k) is the number of permutations of two copies of 1..n with the sum of the distances between equal numbers having total value n + 2*k, 0 <= k <= n*(n-1)/2.

The programs for A335009, there is no canonical definition to state claims against.
-/

/-! ## A335009.P9474389000705580247

`A003963(∑{d}[∏{p}[n+1, #], (n+1)²/#]*A005517(n+1))`
-/

namespace A335009.P9474389000705580247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ)) * (A005517 (n + 1) : ℚ))).toNat

end

end A335009.P9474389000705580247

/-! ## A335009.P13524346036732006718

`A003963(A003602(n+1)*A277324(n))`
-/

namespace A335009.P13524346036732006718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A003602 (n + 1) * A277324 n).toNat

end

end A335009.P13524346036732006718

/-! ## A335009.P1733824493561642417

`A003963(A050449(n+1)*A277324(n))`
-/

namespace A335009.P1733824493561642417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A050449 (n + 1) * A277324 n).toNat

end

end A335009.P1733824493561642417

/-! ## A335009.P8122949783212237701

`A003963(A277324(n)*A336392(n+1))`
-/

namespace A335009.P8122949783212237701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A277324 n * A336392 (n + 1)).toNat

end

end A335009.P8122949783212237701

/-! ## A335009.P3372922125564651051

`A003963(A284563(n)*A336392(n+1)*A284564(n))`
-/

namespace A335009.P3372922125564651051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A284563 n * A336392 (n + 1) * A284564 n).toNat

end

end A335009.P3372922125564651051

/-!
# A335010: a(n) = Product_{k=1..n} (2^k - 1)^k.

The programs for A335010, there is no canonical definition to state claims against.
-/

/-! ## A335010.P9476959663481087825

`∏[∑[2^n]^(n+1)]`
-/

namespace A335010.P9476959663481087825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A335010.P9476959663481087825

/-! ## A335010.P14738439634269080889

`∑[2^n]^(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A335010.P14738439634269080889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1) * a (n - 1)

end

end A335010.P14738439634269080889

/-! ## A335010.P4618215732294571308

`a(n-1)*A055601(n+1)` with `a(0)=1`
-/

namespace A335010.P4618215732294571308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A055601 (n + 1)

end

end A335010.P4618215732294571308

/-! ## A335010.P2862649452040443240

`floor(A126646(n)^(n+1)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A335010.P2862649452040443240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126646 n ^ (n + 1) * a (n - 1)

end

end A335010.P2862649452040443240

/-!
# A335012: Number of different remainders when the first n terms of 1, 11, 111, 1111, ... are divided by n.

The programs for A335012, there is no canonical definition to state claims against.
-/

/-! ## A335012.P8296897266552894790

`floor(log2(A306544(n+1)))`
-/

namespace A335012.P8296897266552894790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A306544 (n + 1)).toNat

end

end A335012.P8296897266552894790

/-! ## A335012.P12908770953667625395

`A000523(A306544(n+1))`
-/

namespace A335012.P12908770953667625395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A306544 (n + 1)).toNat

end

end A335012.P12908770953667625395

/-! ## A335012.P8813231084887276067

`A000120(A306544(n+1)-1)`
-/

namespace A335012.P8813231084887276067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A306544 (n + 1) - 1).toNat

end

end A335012.P8813231084887276067

/-! ## A335012.P9414849986519748020

`A070939(A306544(n+1)/2)`
-/

namespace A335012.P9414849986519748020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A306544 (n + 1) : ℚ) / 2)).toNat

end

end A335012.P9414849986519748020

/-! ## A335012.P15543778592416600595

`A227185(lcm(2, A306544(n+1)))`
-/

namespace A335012.P15543778592416600595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (Int.lcm 2 (A306544 (n + 1)))

end

end A335012.P15543778592416600595

/-!
# A335014: Row sums of A331462.

The programs for A335014, there is no canonical definition to state claims against.
-/

/-! ## A335014.P4330902970060465810

`A373015(A123991(n))`
-/

namespace A335014.P4330902970060465810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373015 (A123991 n).toNat

end

end A335014.P4330902970060465810

/-!
# A335017: a(1) = 1 and for n > 0, a(n+1) is the number of k such that a(n) == a(k) (mod k) for all k = 1..n-1.

The programs for A335017, there is no canonical definition to state claims against.
-/

/-! ## A335017.P17091629760841524604

`A093998(or(A010051(n+1), A219901(n)))`
-/

namespace A335017.P17091629760841524604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 (Int.lor (A010051 (n + 1)) (A219901 n)).toNat

end

end A335017.P17091629760841524604

/-! ## A335017.P3977968178432312729

`A275850(A177487(n)+A048993(n))`
-/

namespace A335017.P3977968178432312729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 (A177487 n + A048993 n).toNat

end

end A335017.P3977968178432312729

/-! ## A335017.P10703048128068323693

`A055640(and(A001628(n), A054878(n)))`
-/

namespace A335017.P10703048128068323693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.land (A001628 n) (A054878 n)).toNat

end

end A335017.P10703048128068323693

/-! ## A335017.P13629042985749823511

`A069010(A007909(n+1)-A333598(n+1))`
-/

namespace A335017.P13629042985749823511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A007909 (n + 1) - A333598 (n + 1)).toNat

end

end A335017.P13629042985749823511

/-! ## A335017.P1075603461641108235

`A001221(A026965(n)-A127671(n+5))`
-/

namespace A335017.P1075603461641108235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A026965 n - A127671 (n + 5)).toNat

end

end A335017.P1075603461641108235

/-!
# A335018: Number of triples (d1,d2,d3) where each element is a divisor of m and d1 + d2 + d3 <= m where m is least odd integer of each prime signature.

The programs for A335018, there is no canonical definition to state claims against.
-/

/-! ## A335018.P5459162923807419218

`A093035(A147516(n+1))`
-/

namespace A335018.P5459162923807419218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093035 (A147516 (n + 1)).toNat

end

end A335018.P5459162923807419218

/-! ## A335018.P11965610922295040392

`A326987(∩[A097273(n+1), A305409(n+1)])^3`
-/

namespace A335018.P11965610922295040392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326987 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) ^ 3

end

end A335018.P11965610922295040392

/-! ## A335018.P11712838274416061211

`A093035(record[A097272(2*n+1)])`
-/

namespace A335018.P11712838274416061211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335018.P11712838274416061211

/-! ## A335018.P15231315034796689169

`A093035(eq[A046523(n+1), A064989(n+1)]+1)`
-/

namespace A335018.P15231315034796689169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A335018.P15231315034796689169

/-!
# A335019: Numbers whose prime exponents generates rotationally symmetric XOR-triangles.

The programs for A335019, there is no canonical definition to state claims against.
-/

/-! ## A335019.P6361912579444665118

`record[gcd(A302150(n+1), A327649(n+1))]`
-/

namespace A335019.P6361912579444665118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A302150 (n + 1)) (A327649 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335019.P6361912579444665118

/-! ## A335019.P4751231927061215307

`record[and(A247303(n), A318423(n+1))]`
-/

namespace A335019.P4751231927061215307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A247303 n) (A318423 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335019.P4751231927061215307

/-! ## A335019.P6161428264328168418

`eq[A000120(n), A335570(A027926(n))]`
-/

namespace A335019.P6161428264328168418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A027926 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335019.P6161428264328168418

/-! ## A335019.P6653627290797941417

`record[and(A007401(n+1), A325677(n+1))]`
-/

namespace A335019.P6653627290797941417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007401 (n + 1)) (A325677 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335019.P6653627290797941417

/-! ## A335019.P10175891613200661389

`eq[A000120(n), A189006(A027082(n))]`
-/

namespace A335019.P10175891613200661389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A027082 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335019.P10175891613200661389

/-!
# A335021: a(n) = Sum_{d|n, 1 < d < n} (-1)^(d + 1).

The programs for A335021, the canonical program `A335021.P18155568080400955392` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335021 has offset 1).

The definition of A335021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335021.P2466855265339271557

`A325937(n+1)-ceil(abs(sin(n)))`
-/

namespace A335021.P2466855265339271557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A335021.P2466855265339271557

namespace A335021

/-- `A325937(n+1)-ceil(abs(sin(n)))` -/
def P2466855265339271557.Spec : Prop :=
  ∀ n, P2466855265339271557.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P18155568080400955392

`A325937(A028310(n)+1)-1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A335021

/-- `A325937(A028310(n)+1)-1` -/
def P18155568080400955392.Spec : Prop :=
  ∀ n, P18155568080400955392.a n = A335021 (n + 1)

theorem P18155568080400955392.correct : P18155568080400955392.Spec := by
  intro n
  simp only [A335021, Nat.add_sub_cancel]

end A335021

/-! ## A335021.P7789656967592183723

`A325937(n+1)+A057428(n)`
-/

namespace A335021.P7789656967592183723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) + A057428 n

end

end A335021.P7789656967592183723

namespace A335021

/-- `A325937(n+1)+A057428(n)` -/
def P7789656967592183723.Spec : Prop :=
  ∀ n, P7789656967592183723.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P7154591451791306618

`A325937(n+1)-A057427(n)`
-/

namespace A335021.P7154591451791306618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) - A057427 n

end

end A335021.P7154591451791306618

namespace A335021

/-- `A325937(n+1)-A057427(n)` -/
def P7154591451791306618.Spec : Prop :=
  ∀ n, P7154591451791306618.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P15984664795144118521

`A062157(n)-A325939(n+1)`
-/

namespace A335021.P15984664795144118521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n - A325939 (n + 1)

end

end A335021.P15984664795144118521

namespace A335021

/-- `A062157(n)-A325939(n+1)` -/
def P15984664795144118521.Spec : Prop :=
  ∀ n, P15984664795144118521.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P17310629619464311681

`A091954(n+1)-A368684(n+1)`
-/

namespace A335021.P17310629619464311681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) - A368684 (n + 1)

end

end A335021.P17310629619464311681

namespace A335021

/-- `A091954(n+1)-A368684(n+1)` -/
def P17310629619464311681.Spec : Prop :=
  ∀ n, P17310629619464311681.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P17530780251629707125

`A325937(A004277(n)+1-n)-1`
-/

namespace A335021.P17530780251629707125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A004277 n + (1 - (n : ℤ))).toNat - 1

end

end A335021.P17530780251629707125

namespace A335021

/-- `A325937(A004277(n)+1-n)-1` -/
def P17530780251629707125.Spec : Prop :=
  ∀ n, P17530780251629707125.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P12414670520490971296

`A325937(n+1)-A019425(2*n)`
-/

namespace A335021.P12414670520490971296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) - A019425 (2 * n)

end

end A335021.P12414670520490971296

namespace A335021

/-- `A325937(n+1)-A019425(2*n)` -/
def P12414670520490971296.Spec : Prop :=
  ∀ n, P12414670520490971296.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P15590701313863274824

`floor(A325937(n+1)-A091954(n+1)/29)`
-/

namespace A335021.P15590701313863274824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325937 (n + 1) : ℚ) - (A091954 (n + 1) : ℚ) / 29⌋

end

end A335021.P15590701313863274824

namespace A335021

/-- `floor(A325937(n+1)-A091954(n+1)/29)` -/
def P15590701313863274824.Spec : Prop :=
  ∀ n, P15590701313863274824.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P5006997567656706604

`∑{d}[n+1, A057428(#-1)*A062157((n+1)/#-1)]`
-/

namespace A335021.P5006997567656706604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057428 (d - 1) * A062157 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A335021.P5006997567656706604

namespace A335021

/-- `∑{d}[n+1, A057428(#-1)*A062157((n+1)/#-1)]` -/
def P5006997567656706604.Spec : Prop :=
  ∀ n, P5006997567656706604.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P8491956284066344631

`A325937(n+1)-A019425(A019425(n))²`
-/

namespace A335021.P8491956284066344631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) - A019425 (A019425 n).toNat ^ 2

end

end A335021.P8491956284066344631

namespace A335021

/-- `A325937(n+1)-A019425(A019425(n))²` -/
def P8491956284066344631.Spec : Prop :=
  ∀ n, P8491956284066344631.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P14695823713360854273

`A048272(n+1)-A048272(A020639(n+1))`
-/

namespace A335021.P14695823713360854273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - A048272 (A020639 (n + 1)).toNat

end

end A335021.P14695823713360854273

namespace A335021

/-- `A048272(n+1)-A048272(A020639(n+1))` -/
def P14695823713360854273.Spec : Prop :=
  ∀ n, P14695823713360854273.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P8159007928156595389

`A325937(n+1)-A325937(A020639(n+1))`
-/

namespace A335021.P8159007928156595389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) - A325937 (A020639 (n + 1)).toNat

end

end A335021.P8159007928156595389

namespace A335021

/-- `A325937(n+1)-A325937(A020639(n+1))` -/
def P8159007928156595389.Spec : Prop :=
  ∀ n, P8159007928156595389.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P12204517260913447039

`A325937(n+1)-A325937(A065475(n+1)-n)`
-/

namespace A335021.P12204517260913447039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) - A325937 (A065475 (n + 1) - (n : ℤ)).toNat

end

end A335021.P12204517260913447039

namespace A335021

/-- `A325937(n+1)-A325937(A065475(n+1)-n)` -/
def P12204517260913447039.Spec : Prop :=
  ∀ n, P12204517260913447039.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P727316707133073609

`A325937(n+1)+A335022(n+1)-A058344(n+1)`
-/

namespace A335021.P727316707133073609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) + (A335022 (n + 1) - A058344 (n + 1))

end

end A335021.P727316707133073609

namespace A335021

/-- `A325937(n+1)+A335022(n+1)-A058344(n+1)` -/
def P727316707133073609.Spec : Prop :=
  ∀ n, P727316707133073609.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P16242410819335321129

`floor(A325937(n+1)-n/A002541(n+2))`
-/

namespace A335021.P16242410819335321129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325937 (n + 1) : ℚ) - (n : ℚ) / (A002541 (n + 2) : ℚ)⌋

end

end A335021.P16242410819335321129

namespace A335021

/-- `floor(A325937(n+1)-n/A002541(n+2))` -/
def P16242410819335321129.Spec : Prop :=
  ∀ n, P16242410819335321129.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P15811780488647220750

`A325937(n+1)-A007814(A347558(2*n+3))`
-/

namespace A335021.P15811780488647220750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) - A007814 (A347558 (2 * n + 3)).toNat

end

end A335021.P15811780488647220750

namespace A335021

/-- `A325937(n+1)-A007814(A347558(2*n+3))` -/
def P15811780488647220750.Spec : Prop :=
  ∀ n, P15811780488647220750.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P13805284564939476146

`(A325937(n+1)-1)%A272194(n)`
-/

namespace A335021.P13805284564939476146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325937 (n + 1) - 1) (A272194 n)

end

end A335021.P13805284564939476146

namespace A335021

/-- `(A325937(n+1)-1)%A272194(n)` -/
def P13805284564939476146.Spec : Prop :=
  ∀ n, P13805284564939476146.a n = A335021 (n + 1)

end A335021

/-! ## A335021.P3898209523782075811

`A325937(n+1)+A008574(n)-A065475(A008574(n))`
-/

namespace A335021.P3898209523782075811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1) + (A008574 n - A065475 (A008574 n).toNat)

end

end A335021.P3898209523782075811

namespace A335021

/-- `A325937(n+1)+A008574(n)-A065475(A008574(n))` -/
def P3898209523782075811.Spec : Prop :=
  ∀ n, P3898209523782075811.a n = A335021 (n + 1)

end A335021

/-!
# A335022: a(n) = Sum_{d|n, 1 < d < n} (-1)^(d + 1) * d.

The programs for A335022, the canonical program `A335022.P15347784327843439019` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335022 has offset 1).

The definition of A335022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335022.P9537409165737196376

`A058344(ceil(acot(n)+n))-1`
-/

namespace A335022.P9537409165737196376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat - 1

end

end A335022.P9537409165737196376

namespace A335022

/-- `A058344(ceil(acot(n)+n))-1` -/
def P9537409165737196376.Spec : Prop :=
  ∀ n, P9537409165737196376.a n = A335022 (n + 1)

end A335022

/-! ## A335022.P15347784327843439019

`A058344(abs(1-n)+2)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A335022

/-- `A058344(abs(1-n)+2)-1` -/
def P15347784327843439019.Spec : Prop :=
  ∀ n, P15347784327843439019.a n = A335022 (n + 1)

theorem P15347784327843439019.correct : P15347784327843439019.Spec := by
  intro n
  simp only [A335022, Nat.add_sub_cancel]

end A335022

/-! ## A335022.P4304940512154072215

`A058344(n+1)+floor(acot(n))-1`
-/

namespace A335022.P4304940512154072215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1

end

end A335022.P4304940512154072215

namespace A335022

/-- `A058344(n+1)+floor(acot(n))-1` -/
def P4304940512154072215.Spec : Prop :=
  ∀ n, P4304940512154072215.a n = A335022 (n + 1)

end A335022

/-! ## A335022.P4123852384840641570

`A058344(n+1)+A000007(n)-1`
-/

namespace A335022.P4123852384840641570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (n + 1) + A000007 n - 1

end

end A335022.P4123852384840641570

namespace A335022

/-- `A058344(n+1)+A000007(n)-1` -/
def P4123852384840641570.Spec : Prop :=
  ∀ n, P4123852384840641570.a n = A335022 (n + 1)

end A335022

/-! ## A335022.P7828720601898752394

`(1-A058344(n+1))*A057428(n)`
-/

namespace A335022.P7828720601898752394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A058344 (n + 1)) * A057428 n

end

end A335022.P7828720601898752394

namespace A335022

/-- `(1-A058344(n+1))*A057428(n)` -/
def P7828720601898752394.Spec : Prop :=
  ∀ n, P7828720601898752394.a n = A335022 (n + 1)

end A335022

/-! ## A335022.P16351147074926761312

`(A058344(n+1)-1)*A057427(n)`
-/

namespace A335022.P16351147074926761312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058344 (n + 1) - 1) * A057427 n

end

end A335022.P16351147074926761312

namespace A335022

/-- `(A058344(n+1)-1)*A057427(n)` -/
def P16351147074926761312.Spec : Prop :=
  ∀ n, P16351147074926761312.a n = A335022 (n + 1)

end A335022

/-! ## A335022.P11297267534574018301

`(A058344(n+1)-1)%A054519(n)`
-/

namespace A335022.P11297267534574018301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058344 (n + 1) - 1) (A054519 n)

end

end A335022.P11297267534574018301

namespace A335022

/-- `(A058344(n+1)-1)%A054519(n)` -/
def P11297267534574018301.Spec : Prop :=
  ∀ n, P11297267534574018301.a n = A335022 (n + 1)

end A335022

/-! ## A335022.P4268836341948578942

`A058344(n+1)+A028310(n)-(n+1)`
-/

namespace A335022.P4268836341948578942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (n + 1) + A028310 n - (n + 1 : ℤ)

end

end A335022.P4268836341948578942

namespace A335022

/-- `A058344(n+1)+A028310(n)-(n+1)` -/
def P4268836341948578942.Spec : Prop :=
  ∀ n, P4268836341948578942.a n = A335022 (n + 1)

end A335022

/-! ## A335022.P14868353673876817162

`A058344(n+1)+A058263(n+1)%2-1`
-/

namespace A335022.P14868353673876817162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (n + 1) + Int.tmod (A058263 (n + 1)) 2 - 1

end

end A335022.P14868353673876817162

namespace A335022

/-- `A058344(n+1)+A058263(n+1)%2-1` -/
def P14868353673876817162.Spec : Prop :=
  ∀ n, P14868353673876817162.a n = A335022 (n + 1)

end A335022

/-!
# A335023: Ratios of consecutive terms of A334958.

The programs for A335023, there is no canonical definition to state claims against.
-/

/-! ## A335023.P1300363051151381981

`A334958(n+2)/A334958(n+1)`
-/

namespace A335023.P1300363051151381981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334958 (n + 2) : ℚ) / (A334958 (n + 1) : ℚ)

end

end A335023.P1300363051151381981

/-! ## A335023.P11391255705345952708

`ratio[A269626(n+1)]*A048671(n+2)`
-/

namespace A335023.P11391255705345952708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A048671 (n + 2) : ℚ)

end

end A335023.P11391255705345952708

/-! ## A335023.P5747623345268369431

`(n+2)/ratio[A058312(n+1)]`
-/

namespace A335023.P5747623345268369431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A335023.P5747623345268369431

/-! ## A335023.P10346881183642255507

`(n+2)/A058312(n+2)*A058312(n+1)`
-/

namespace A335023.P10346881183642255507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A058312 (n + 2) : ℚ) * (A058312 (n + 1) : ℚ)

end

end A335023.P10346881183642255507

/-! ## A335023.P3761229893824807478

`A075827(n+2)/A058313(n+2)`
-/

namespace A335023.P3761229893824807478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075827 (n + 2) : ℚ) / (A058313 (n + 2) : ℚ)

end

end A335023.P3761229893824807478

/-! ## A335023.P7886296382621316853

`A075828(n+2)/A119248(n+2)`
-/

namespace A335023.P7886296382621316853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075828 (n + 2) : ℚ) / (A119248 (n + 2) : ℚ)

end

end A335023.P7886296382621316853

/-! ## A335023.P16582490641349278487

`A075827(n+2)/A075830(n+3)`
-/

namespace A335023.P16582490641349278487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075827 (n + 2) : ℚ) / (A075830 (n + 3) : ℚ)

end

end A335023.P16582490641349278487

/-! ## A335023.P13186505176600875961

`A075828(n+2)/A075829(n+3)`
-/

namespace A335023.P13186505176600875961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075828 (n + 2) : ℚ) / (A075829 (n + 3) : ℚ)

end

end A335023.P13186505176600875961

/-! ## A335023.P16170458730487641036

`(A075828(n+2)+A075827(n+2))/A058312(n+2)`
-/

namespace A335023.P16170458730487641036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075828 (n + 2) + A075827 (n + 2) : ℚ) / (A058312 (n + 2) : ℚ)

end

end A335023.P16170458730487641036

/-! ## A335023.P9899903958516359048

`A075828(n+2)/(A058312(n+2)-A058313(n+2))`
-/

namespace A335023.P9899903958516359048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075828 (n + 2) : ℚ) / (A058312 (n + 2) - A058313 (n + 2) : ℚ)

end

end A335023.P9899903958516359048

/-!
# A335024: Ratios of consecutive terms of A056612.

The programs for A335024, the canonical program `A335024.P6071518550962912496` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335024 has offset 1).

The definition of A335024 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335024.P6071518550962912496

`A056612(n+2)/A056612(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A335024

/-- `A056612(n+2)/A056612(n+1)` -/
def P6071518550962912496.Spec : Prop :=
  ∀ n, P6071518550962912496.a n = (A335024 (n + 1) : ℚ)

end A335024

/-! ## A335024.P4099108167808760685

`(n+2)²/A316346(n+1)`
-/

namespace A335024.P4099108167808760685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A316346 (n + 1) : ℚ)

end

end A335024.P4099108167808760685

namespace A335024

/-- `(n+2)²/A316346(n+1)` -/
def P4099108167808760685.Spec : Prop :=
  ∀ n, P4099108167808760685.a n = (A335024 (n + 1) : ℚ)

end A335024

/-! ## A335024.P5668950765007731693

`ratio[A110566(n+1)]*A048671(n+2)`
-/

namespace A335024.P5668950765007731693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A048671 (n + 2) : ℚ)

end

end A335024.P5668950765007731693

namespace A335024

/-- `ratio[A110566(n+1)]*A048671(n+2)` -/
def P5668950765007731693.Spec : Prop :=
  ∀ n, P5668950765007731693.a n = (A335024 (n + 1) : ℚ)

end A335024

/-! ## A335024.P13311621128734978057

`A002805(n+1)/A027611(n+2)*A120263(n+2)`
-/

namespace A335024.P13311621128734978057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A027611 (n + 2) : ℚ) * (A120263 (n + 2) : ℚ)

end

end A335024.P13311621128734978057

namespace A335024

/-- `A002805(n+1)/A027611(n+2)*A120263(n+2)` -/
def P13311621128734978057.Spec : Prop :=
  ∀ n, P13311621128734978057.a n = (A335024 (n + 1) : ℚ)

end A335024

/-! ## A335024.P1231687649910460574

`(n+2)/ratio[A002805(n+1)]`
-/

namespace A335024.P1231687649910460574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A335024.P1231687649910460574

namespace A335024

/-- `(n+2)/ratio[A002805(n+1)]` -/
def P1231687649910460574.Spec : Prop :=
  ∀ n, P1231687649910460574.a n = (A335024 (n + 1) : ℚ)

end A335024

/-! ## A335024.P596350422691258727

`(A187487(n+1)+A064168(n+1))/A002805(n+2)`
-/

namespace A335024.P596350422691258727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187487 (n + 1) + A064168 (n + 1) : ℚ) / (A002805 (n + 2) : ℚ)

end

end A335024.P596350422691258727

namespace A335024

/-- `(A187487(n+1)+A064168(n+1))/A002805(n+2)` -/
def P596350422691258727.Spec : Prop :=
  ∀ n, P596350422691258727.a n = (A335024 (n + 1) : ℚ)

end A335024

/-! ## A335024.P10629333365445290534

`ratio[A056612(n+1)]`
-/

namespace A335024.P10629333365445290534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056612 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A335024.P10629333365445290534

namespace A335024

/-- `ratio[A056612(n+1)]` -/
def P10629333365445290534.Spec : Prop :=
  ∀ n, P10629333365445290534.a n = (A335024 (n + 1) : ℚ)

end A335024

/-! ## A335024.P8097337696589859517

`ratio[gcd(A000774(n+1), A000776(n+1))]`
-/

namespace A335024.P8097337696589859517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000774 (n + 1)) (A000776 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A335024.P8097337696589859517

namespace A335024

/-- `ratio[gcd(A000774(n+1), A000776(n+1))]` -/
def P8097337696589859517.Spec : Prop :=
  ∀ n, P8097337696589859517.a n = (A335024 (n + 1) : ℚ)

end A335024

/-! ## A335024.P17796727030401567549

`ratio[gcd(A001705(n+1), A001705(n))]`
-/

namespace A335024.P17796727030401567549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001705 (n + 1)) (A001705 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A335024.P17796727030401567549

namespace A335024

/-- `ratio[gcd(A001705(n+1), A001705(n))]` -/
def P17796727030401567549.Spec : Prop :=
  ∀ n, P17796727030401567549.a n = (A335024 (n + 1) : ℚ)

end A335024

/-!
# A335025: Largest side lengths of almost-equilateral Heronian triangles.

The programs for A335025, the canonical program `A335025.P6258242990460373930` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335025 has offset 1).

The definition of A335025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335025.P6258242990460373930

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=5, a(1)=15, a(2)=53`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335025

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P6258242990460373930.Spec : Prop :=
  ∀ n, P6258242990460373930.a n = A335025 (n + 1)

theorem P6258242990460373930.correct : P6258242990460373930.Spec := by
  intro n
  simp only [A335025, Nat.add_sub_cancel]

end A335025

/-! ## A335025.P2113622273981197649

`∑[ogf((5-10x+3x^2)/(1-4x+x^2))]`
-/

namespace A335025.P2113622273981197649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10, 3] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335025.P2113622273981197649

namespace A335025

/-- `∑[ogf((5-10x+3x^2)/(1-4x+x^2))]` -/
def P2113622273981197649.Spec : Prop :=
  ∀ n, P2113622273981197649.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P1949861112450385306

`ogf((5-10x+3x^2)/(1-5x+5x^2-x^3))`
-/

namespace A335025.P1949861112450385306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -10, 3] [1, -5, 5, -1] n

end

end A335025.P1949861112450385306

namespace A335025

/-- `ogf((5-10x+3x^2)/(1-5x+5x^2-x^3))` -/
def P1949861112450385306.Spec : Prop :=
  ∀ n, P1949861112450385306.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P11597873261586137706

`∑[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=5, a(1)=10`
-/

namespace A335025.P11597873261586137706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 10] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335025.P11597873261586137706

namespace A335025

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]` -/
def P11597873261586137706.Spec : Prop :=
  ∀ n, P11597873261586137706.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P7980282066773134210

`floor((sqrt(3)+2)*a(n-1))-2` with `a(0)=5, a(1)=15`
-/

namespace A335025.P7980282066773134210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 15] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ - 2

end

end A335025.P7980282066773134210

namespace A335025

/-- `floor((sqrt(3)+2)*a(n-1))-2` -/
def P7980282066773134210.Spec : Prop :=
  ∀ n, P7980282066773134210.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P14298820277897011052

`ceil((sqrt(3)+2)*a(n-1))-3` with `a(0)=5, a(1)=15`
-/

namespace A335025.P14298820277897011052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 15] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ - 3

end

end A335025.P14298820277897011052

namespace A335025

/-- `ceil((sqrt(3)+2)*a(n-1))-3` -/
def P14298820277897011052.Spec : Prop :=
  ∀ n, P14298820277897011052.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P17479227993120671048

`4*a(n-1)-(a(n-2)+2)` with `a(0)=5, a(1)=15`
-/

namespace A335025.P17479227993120671048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 15] fun n a =>
  4 * a (n - 1) - (a (n - 2) + 2)

end

end A335025.P17479227993120671048

namespace A335025

/-- `4*a(n-1)-(a(n-2)+2)` -/
def P17479227993120671048.Spec : Prop :=
  ∀ n, P17479227993120671048.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P2083786440864398723

`4*a(n-1)-a(n-2)-2` with `a(0)=5, a(1)=15`
-/

namespace A335025.P2083786440864398723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 15] fun n a =>
  4 * a (n - 1) - a (n - 2) - 2

end

end A335025.P2083786440864398723

namespace A335025

/-- `4*a(n-1)-a(n-2)-2` -/
def P2083786440864398723.Spec : Prop :=
  ∀ n, P2083786440864398723.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P5001444064674207120

`2*(∑[∑[ceil((sqrt(3)+2)^n)]]+2)-1`
-/

namespace A335025.P5001444064674207120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 1

end

end A335025.P5001444064674207120

namespace A335025

/-- `2*(∑[∑[ceil((sqrt(3)+2)^n)]]+2)-1` -/
def P5001444064674207120.Spec : Prop :=
  ∀ n, P5001444064674207120.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P6964330544842282055

`xor(1, Δ[A001834(n)])`
-/

namespace A335025.P6964330544842282055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A335025.P6964330544842282055

namespace A335025

/-- `xor(1, Δ[A001834(n)])` -/
def P6964330544842282055.Spec : Prop :=
  ∀ n, P6964330544842282055.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P8271219347783996867

`A242497(3*(n+1))`
-/

namespace A335025.P8271219347783996867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242497 (3 * (n + 1))

end

end A335025.P8271219347783996867

namespace A335025

/-- `A242497(3*(n+1))` -/
def P8271219347783996867.Spec : Prop :=
  ∀ n, P8271219347783996867.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P4208650864270453451

`or(1, A003500(n+1))`
-/

namespace A335025.P4208650864270453451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003500 (n + 1))

end

end A335025.P4208650864270453451

namespace A335025

/-- `or(1, A003500(n+1))` -/
def P4208650864270453451.Spec : Prop :=
  ∀ n, P4208650864270453451.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P16621667283408959801

`Δ[A002531(Δ[n²])+n]`
-/

namespace A335025.P16621667283408959801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335025.P16621667283408959801

namespace A335025

/-- `Δ[A002531(Δ[n²])+n]` -/
def P16621667283408959801.Spec : Prop :=
  ∀ n, P16621667283408959801.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P9958235868234791560

`(A102091(n+1)-2)/2`
-/

namespace A335025.P9958235868234791560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102091 (n + 1) - 2 : ℚ) / 2

end

end A335025.P9958235868234791560

namespace A335025

/-- `(A102091(n+1)-2)/2` -/
def P9958235868234791560.Spec : Prop :=
  ∀ n, P9958235868234791560.a n = (A335025 (n + 1) : ℚ)

end A335025

/-! ## A335025.P15594675371672367956

`xor(1, A016064(n+1)+1)`
-/

namespace A335025.P15594675371672367956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A016064 (n + 1) + 1)

end

end A335025.P15594675371672367956

namespace A335025

/-- `xor(1, A016064(n+1)+1)` -/
def P15594675371672367956.Spec : Prop :=
  ∀ n, P15594675371672367956.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P13046922214304938014

`xor(1, 2*A001075(n+1))`
-/

namespace A335025.P13046922214304938014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A001075 (n + 1))

end

end A335025.P13046922214304938014

namespace A335025

/-- `xor(1, 2*A001075(n+1))` -/
def P13046922214304938014.Spec : Prop :=
  ∀ n, P13046922214304938014.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P8046933158960294607

`Δ[Δ[A002531(2*n)]+n]`
-/

namespace A335025.P8046933158960294607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335025.P8046933158960294607

namespace A335025

/-- `Δ[Δ[A002531(2*n)]+n]` -/
def P8046933158960294607.Spec : Prop :=
  ∀ n, P8046933158960294607.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P9786787948372745933

`Δ[∑[A016064(n)]+n+n]`
-/

namespace A335025.P9786787948372745933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335025.P9786787948372745933

namespace A335025

/-- `Δ[∑[A016064(n)]+n+n]` -/
def P9786787948372745933.Spec : Prop :=
  ∀ n, P9786787948372745933.a n = A335025 (n + 1)

end A335025

/-! ## A335025.P11615946605073605686

`record[lcm(2, A174500(n+1))+3]`
-/

namespace A335025.P11615946605073605686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A174500 (n + 1)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335025.P11615946605073605686

namespace A335025

/-- `record[lcm(2, A174500(n+1))+3]` -/
def P11615946605073605686.Spec : Prop :=
  ∀ n, (P11615946605073605686.a n : ℤ) = A335025 (n + 1)

end A335025

/-! ## A335025.P17232639853132882751

`or(1, A174500(2*(n+1))+2)`
-/

namespace A335025.P17232639853132882751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A174500 (2 * (n + 1)) + 2)

end

end A335025.P17232639853132882751

namespace A335025

/-- `or(1, A174500(2*(n+1))+2)` -/
def P17232639853132882751.Spec : Prop :=
  ∀ n, P17232639853132882751.a n = A335025 (n + 1)

end A335025

/-!
# A335026: a(n) = (n + 1)^2*a(n - 2) + a(n - 1), starting 0, 9, ....

The programs for A335026, the canonical program `A335026.P17529679689356763410` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335026 has offset 1).

The definition of A335026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)²*a(n-2)+a(n-1)` (program `A335026.P17529679689356763410`, by `A335026.P17529679689356763410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335026.P17529679689356763410

`(n+2)²*a(n-2)+a(n-1)` with `a(0)=0, a(1)=9`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335026

/-- `(n+2)²*a(n-2)+a(n-1)` -/
def P17529679689356763410.Spec : Prop :=
  ∀ n, (P17529679689356763410.a n : ℤ) = A335026 (n + 1)

theorem P17529679689356763410.correct : P17529679689356763410.Spec := by
  intro n
  simp only [A335026, Nat.add_sub_cancel]

end A335026

/-! ## A335026.P8654038424233499421

`a(n-1)+(n+2)*(n+2)*a(n-2)` with `a(0)=0, a(1)=9`
-/

namespace A335026.P8654038424233499421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n a =>
  a (n - 1) + (n + 2) * ((n + 2) * a (n - 2))

end

end A335026.P8654038424233499421

namespace A335026

/-- `a(n-1)+(n+2)*(n+2)*a(n-2)` -/
def P8654038424233499421.Spec : Prop :=
  ∀ n, (P8654038424233499421.a n : ℤ) = A335026 (n + 1)

end A335026

/-! ## A335026.P2071657248608159891

`∏[(n+2)²/a(n-1)+1]-A024176(n+1)` with `a(0)=2`
-/

namespace A335026.P2071657248608159891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  ((n + 2) ^ 2 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A024176 (n + 1) : ℚ)

end

end A335026.P2071657248608159891

namespace A335026

/-- `∏[(n+2)²/a(n-1)+1]-A024176(n+1)` -/
def P2071657248608159891.Spec : Prop :=
  ∀ n, P2071657248608159891.a n = (A335026 (n + 1) : ℚ)

end A335026

/-! ## A335026.P17491374878841804339

`A024168(n+3)-A024188(n+1)`
-/

namespace A335026.P17491374878841804339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024168 (n + 3) - A024188 (n + 1)

end

end A335026.P17491374878841804339

namespace A335026

/-- `A024168(n+3)-A024188(n+1)` -/
def P17491374878841804339.Spec : Prop :=
  ∀ n, P17491374878841804339.a n = A335026 (n + 1)

end A335026

/-!
# A335029: Numbers that are not practical (A237287) and have more divisors than any smaller number that is not practical.

The programs for A335029, there is no canonical definition to state claims against.
-/

/-! ## A335029.P16374636774484986121

`A087956(n)*A338484(A083336(n))`
-/

namespace A335029.P16374636774484986121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n * A338484 (A083336 n).toNat

end

end A335029.P16374636774484986121

/-! ## A335029.P16573603730555307672

`A335030(n+1)+A241461(A116657(n+1))`
-/

namespace A335029.P16573603730555307672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335030 (n + 1) + A241461 (A116657 (n + 1)).toNat

end

end A335029.P16573603730555307672

/-!
# A335030: Numbers m that are not practical and have an abundancy index sigma(m)/m which is larger than that of any smaller number that is not practical.

The programs for A335030, there is no canonical definition to state claims against.
-/

/-! ## A335030.P7392120236693578608

`A335029(n+1)%A262749(A281101(n))`
-/

namespace A335030.P7392120236693578608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335029 (n + 1)) (A262749 (A281101 n).toNat)

end

end A335030.P7392120236693578608

/-!
# A335031: Complement of A334919.

The programs for A335031, the canonical program `A335031.P12166965305389209209` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335031 has offset 1).

The definition of A335031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335031.P12166965305389209209

`∪[A024892(n+1), A034934(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A335031

/-- `∪[A024892(n+1), A034934(n+1)]` -/
def P12166965305389209209.Spec : Prop :=
  ∀ n, (P12166965305389209209.a n : ℤ) = A335031 (n + 1)

theorem P12166965305389209209.correct : P12166965305389209209.Spec := by
  intro n
  simp only [A335031, Nat.add_sub_cancel]

end A335031

/-! ## A335031.P2534034376522177823

`lt[n, A008472(3*n+1)]`
-/

namespace A335031.P2534034376522177823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335031.P2534034376522177823

namespace A335031

/-- `lt[n, A008472(3*n+1)]` -/
def P2534034376522177823.Spec : Prop :=
  ∀ n, (P2534034376522177823.a n : ℤ) = A335031 (n + 1)

end A335031

/-! ## A335031.P15069493067406210067

`eq[1, A046079(3*n+1)]`
-/

namespace A335031.P15069493067406210067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335031.P15069493067406210067

namespace A335031

/-- `eq[1, A046079(3*n+1)]` -/
def P15069493067406210067.Spec : Prop :=
  ∀ n, (P15069493067406210067.a n : ℤ) = A335031 (n + 1)

end A335031

/-! ## A335031.P10970438938071356658

`eq[1, A318440(3*n+1)]`
-/

namespace A335031.P10970438938071356658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335031.P10970438938071356658

namespace A335031

/-- `eq[1, A318440(3*n+1)]` -/
def P10970438938071356658.Spec : Prop :=
  ∀ n, (P10970438938071356658.a n : ℤ) = A335031 (n + 1)

end A335031

/-! ## A335031.P4710209718930208351

`eq[2, A001222(lcm(2, 3*n+1))]`
-/

namespace A335031.P4710209718930208351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lcm 2 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335031.P4710209718930208351

namespace A335031

/-- `eq[2, A001222(lcm(2, 3*n+1))]` -/
def P4710209718930208351.Spec : Prop :=
  ∀ n, (P4710209718930208351.a n : ℤ) = A335031 (n + 1)

end A335031

/-! ## A335031.P5769473623426967038

`lt[n, ∑{p}[3*n+1, #]]`
-/

namespace A335031.P5769473623426967038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335031.P5769473623426967038

namespace A335031

/-- `lt[n, ∑{p}[3*n+1, #]]` -/
def P5769473623426967038.Spec : Prop :=
  ∀ n, (P5769473623426967038.a n : ℤ) = A335031 (n + 1)

end A335031

/-! ## A335031.P10650173403298102413

`eq[1, A338117(3*n+1)]`
-/

namespace A335031.P10650173403298102413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335031.P10650173403298102413

namespace A335031

/-- `eq[1, A338117(3*n+1)]` -/
def P10650173403298102413.Spec : Prop :=
  ∀ n, (P10650173403298102413.a n : ℤ) = A335031 (n + 1)

end A335031

/-! ## A335031.P11190777804137538751

`eq[1, A319699(3*n+1)]`
-/

namespace A335031.P11190777804137538751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335031.P11190777804137538751

namespace A335031

/-- `eq[1, A319699(3*n+1)]` -/
def P11190777804137538751.Spec : Prop :=
  ∀ n, (P11190777804137538751.a n : ℤ) = A335031 (n + 1)

end A335031

/-! ## A335031.P6139732406457236617

`eq[1, A319700(3*n+1)]`
-/

namespace A335031.P6139732406457236617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335031.P6139732406457236617

namespace A335031

/-- `eq[1, A319700(3*n+1)]` -/
def P6139732406457236617.Spec : Prop :=
  ∀ n, (P6139732406457236617.a n : ℤ) = A335031 (n + 1)

end A335031

/-! ## A335031.P804885157284798186

`lt[0, A105661(3*n+1)]`
-/

namespace A335031.P804885157284798186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335031.P804885157284798186

namespace A335031

/-- `lt[0, A105661(3*n+1)]` -/
def P804885157284798186.Spec : Prop :=
  ∀ n, (P804885157284798186.a n : ℤ) = A335031 (n + 1)

end A335031

/-! ## A335031.P16360643038670956347

`eq[1, A221837(3*n+1)]`
-/

namespace A335031.P16360643038670956347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221837 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335031.P16360643038670956347

namespace A335031

/-- `eq[1, A221837(3*n+1)]` -/
def P16360643038670956347.Spec : Prop :=
  ∀ n, (P16360643038670956347.a n : ℤ) = A335031 (n + 1)

end A335031

/-!
# A335032: Dirichlet g.f.: zeta(s) * zeta(s-1) * Product_{p prime} (1 + p^(1 - s) - p^(-s)).

The programs for A335032, the canonical program `A335032.P14462768690322919122` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335032 has offset 1).

The definition of A335032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335032.P14462768690322919122

`∑{d}[n+1, A176345(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A335032

/-- `∑{d}[n+1, A176345(#)]` -/
def P14462768690322919122.Spec : Prop :=
  ∀ n, P14462768690322919122.a n = A335032 (n + 1)

theorem P14462768690322919122.correct : P14462768690322919122.Spec := by
  intro n
  simp only [A335032, Nat.add_sub_cancel]

end A335032

/-! ## A335032.P17805175005985536100

`∑{d}[n+1, (n+1)/A003557(#)]`
-/

namespace A335032.P17805175005985536100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (A003557 d : ℚ)

end

end A335032.P17805175005985536100

namespace A335032

/-- `∑{d}[n+1, (n+1)/A003557(#)]` -/
def P17805175005985536100.Spec : Prop :=
  ∀ n, P17805175005985536100.a n = (A335032 (n + 1) : ℚ)

end A335032

/-! ## A335032.P3116308513278043587

`∑{d}[n+1, (n+1)/#*A007947(#)]`
-/

namespace A335032.P3116308513278043587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A007947 d : ℚ)

end

end A335032.P3116308513278043587

namespace A335032

/-- `∑{d}[n+1, (n+1)/#*A007947(#)]` -/
def P3116308513278043587.Spec : Prop :=
  ∀ n, P3116308513278043587.a n = (A335032 (n + 1) : ℚ)

end A335032

/-! ## A335032.P8641472246334162213

`∑{d}[n+1, A000010(#)*A191750((n+1)/#)]`
-/

namespace A335032.P8641472246334162213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A191750 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335032.P8641472246334162213

namespace A335032

/-- `∑{d}[n+1, A000010(#)*A191750((n+1)/#)]` -/
def P8641472246334162213.Spec : Prop :=
  ∀ n, P8641472246334162213.a n = A335032 (n + 1)

end A335032

/-! ## A335032.P8557090039727458567

`∑{d}[n+1, A076109(#)*A129527((n+1)/#)]`
-/

namespace A335032.P8557090039727458567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076109 d * A129527 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335032.P8557090039727458567

namespace A335032

/-- `∑{d}[n+1, A076109(#)*A129527((n+1)/#)]` -/
def P8557090039727458567.Spec : Prop :=
  ∀ n, P8557090039727458567.a n = A335032 (n + 1)

end A335032

/-! ## A335032.P14458827549006608240

`∑{d}[n+1, A080512(#)*A204455((n+1)/#)]`
-/

namespace A335032.P14458827549006608240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080512 d * A204455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335032.P14458827549006608240

namespace A335032

/-- `∑{d}[n+1, A080512(#)*A204455((n+1)/#)]` -/
def P14458827549006608240.Spec : Prop :=
  ∀ n, P14458827549006608240.a n = A335032 (n + 1)

end A335032

/-! ## A335032.P13913889818321798298

`∑{d}[n+1, A001615(#)*A380163((n+1)/#)]`
-/

namespace A335032.P13913889818321798298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A380163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335032.P13913889818321798298

namespace A335032

/-- `∑{d}[n+1, A001615(#)*A380163((n+1)/#)]` -/
def P13913889818321798298.Spec : Prop :=
  ∀ n, P13913889818321798298.a n = A335032 (n + 1)

end A335032

/-! ## A335032.P3056280002940267744

`∑{d}[n+1, A206369(#)*A345264((n+1)/#)]`
-/

namespace A335032.P3056280002940267744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A345264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335032.P3056280002940267744

namespace A335032

/-- `∑{d}[n+1, A206369(#)*A345264((n+1)/#)]` -/
def P3056280002940267744.Spec : Prop :=
  ∀ n, P3056280002940267744.a n = A335032 (n + 1)

end A335032

/-! ## A335032.P12637679501721446617

`∑{d}[n+1, A204455(#)*A257143((n+1)/#)]`
-/

namespace A335032.P12637679501721446617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A204455 d * A257143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335032.P12637679501721446617

namespace A335032

/-- `∑{d}[n+1, A204455(#)*A257143((n+1)/#)]` -/
def P12637679501721446617.Spec : Prop :=
  ∀ n, P12637679501721446617.a n = A335032 (n + 1)

end A335032

/-!
# A335033: a(n) is the smallest number larger than a(n-1) that is not a partial sum of 2^a(1),2^a(2),...,2^a(n-1), with a(1)=0.

The programs for A335033, the canonical program `A335033.P13439355236212896509` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335033 has offset 1).

The definition of A335033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335033.P13439355236212896509

`comp[A334992(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A335033

/-- `comp[A334992(n+1)]` -/
def P13439355236212896509.Spec : Prop :=
  ∀ n, (P13439355236212896509.a n : ℤ) = A335033 (n + 1)

theorem P13439355236212896509.correct : P13439355236212896509.Spec := by
  intro n
  simp only [A335033, Nat.add_sub_cancel]

end A335033

/-! ## A335033.P17401725811901073608

`comp[or(n+1, 77-or(77, n+1))]`
-/

namespace A335033.P17401725811901073608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (77 - (Nat.lor 77 (n + 1) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335033.P17401725811901073608

namespace A335033

/-- `comp[or(n+1, 77-or(77, n+1))]` -/
def P17401725811901073608.Spec : Prop :=
  ∀ n, (P17401725811901073608.a n : ℤ) = A335033 (n + 1)

end A335033

/-! ## A335033.P3193484614389776330

`comp[and(77, A276510(n+2)-n)]`
-/

namespace A335033.P3193484614389776330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 77 (A276510 (n + 2) - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335033.P3193484614389776330

namespace A335033

/-- `comp[and(77, A276510(n+2)-n)]` -/
def P3193484614389776330.Spec : Prop :=
  ∀ n, (P3193484614389776330.a n : ℤ) = A335033 (n + 1)

end A335033

/-! ## A335033.P6840281813283155531

`lt[n²/(1-and(2, n)), A356604(n)]`
-/

namespace A335033.P6840281813283155531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A335033.P6840281813283155531

namespace A335033

/-- `lt[n²/(1-and(2, n)), A356604(n)]` -/
def P6840281813283155531.Spec : Prop :=
  ∀ n, (P6840281813283155531.a n : ℤ) = A335033 (n + 1)

end A335033

/-! ## A335033.P16170017052323925711

`lt[A029839(n), A007504(A322473(n))]`
-/

namespace A335033.P16170017052323925711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A322473 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335033.P16170017052323925711

namespace A335033

/-- `lt[A029839(n), A007504(A322473(n))]` -/
def P16170017052323925711.Spec : Prop :=
  ∀ n, (P16170017052323925711.a n : ℤ) = A335033 (n + 1)

end A335033

/-!
# A335035: Ordered perimeters of primitive integer triangles with two perpendicular medians.

The programs for A335035, there is no canonical definition to state claims against.
-/

/-! ## A335035.P12623622998773633887

`A335036(n+1)+A335347(n+1)+A335348(n+1)`
-/

namespace A335035.P12623622998773633887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335036 (n + 1) + A335347 (n + 1) + A335348 (n + 1)

end

end A335035.P12623622998773633887

/-! ## A335035.P6738046721674579913

`A335036(n+1)+A335418(n+1)+A335273(n+1)`
-/

namespace A335035.P6738046721674579913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335036 (n + 1) + (A335418 (n + 1) + A335273 (n + 1))

end

end A335035.P6738046721674579913

/-! ## A335035.P17550022475385876790

`A335034(3*(n+1))+A335347(n+1)+A335036(n+1)`
-/

namespace A335035.P17550022475385876790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (3 * (n + 1)) + (A335347 (n + 1) + A335036 (n + 1))

end

end A335035.P17550022475385876790

/-! ## A335035.P3478664944558621673

`A335034(3*(n+1))+A335036(n+1)+A335034(3*n+2)`
-/

namespace A335035.P3478664944558621673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (3 * (n + 1)) + (A335036 (n + 1) + A335034 (3 * n + 2))

end

end A335035.P3478664944558621673

/-! ## A335035.P12879729270974568835

`A335034(3*n+1)+A335034(3*n+2)+A335034(3*(n+1))`
-/

namespace A335035.P12879729270974568835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (3 * n + 1) + (A335034 (3 * n + 2) + A335034 (3 * (n + 1)))

end

end A335035.P12879729270974568835

/-!
# A335036: Smallest side c of the primitive triples (c,a,b) for integer triangles that have two perpendicular medians, ordered by increasing perimeter.

The programs for A335036, there is no canonical definition to state claims against.
-/

/-! ## A335036.P2086188750561416278

`A335035(n+1)-A335347(n+1)-A335348(n+1)`
-/

namespace A335036.P2086188750561416278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335035 (n + 1) - A335347 (n + 1) - A335348 (n + 1)

end

end A335036.P2086188750561416278

/-! ## A335036.P17504699779910744996

`A335034(3*n+1)`
-/

namespace A335036.P17504699779910744996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (3 * n + 1)

end

end A335036.P17504699779910744996

/-! ## A335036.P13508325204044421507

`A335035(n+1)-(A335418(n+1)+A335273(n+1))`
-/

namespace A335036.P13508325204044421507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335035 (n + 1) - (A335418 (n + 1) + A335273 (n + 1))

end

end A335036.P13508325204044421507

/-! ## A335036.P15866678164542704108

`or(1, A335034(A016777(n)))`
-/

namespace A335036.P15866678164542704108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A335034 (A016777 n).toNat)

end

end A335036.P15866678164542704108

/-! ## A335036.P18152622219230069796

`or(1, A335034(A222257(3*n)))`
-/

namespace A335036.P18152622219230069796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A335034 (A222257 (3 * n)).toNat)

end

end A335036.P18152622219230069796

/-!
# A335037: a(n) is the number of divisors of n that are themselves divisible by the product of their digits.

The programs for A335037, there is no canonical definition to state claims against.
-/

/-! ## A335037.P8836175919697584084

`∑{d}[n+1, A188642(#)]`
-/

namespace A335037.P8836175919697584084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188642 d

end

end A335037.P8836175919697584084

/-! ## A335037.P5342204549932326880

`A353472(A103198(n+2))+A087990(n+1)`
-/

namespace A335037.P5342204549932326880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (A103198 (n + 2)).toNat + A087990 (n + 1)

end

end A335037.P5342204549932326880

/-! ## A335037.P4979590478619877848

`A355698(n+1)+A355676(A355665(3*n))`
-/

namespace A335037.P4979590478619877848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355698 (n + 1) + A355676 (A355665 (3 * n)).toNat

end

end A335037.P4979590478619877848

/-! ## A335037.P12544915173892869835

`A294928(n+1)+A188642(A273712(n)!+n)`
-/

namespace A335037.P12544915173892869835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294928 (n + 1) + A188642 (Nat.factorial (A273712 n).toNat + n)

end

end A335037.P12544915173892869835

/-! ## A335037.P14199746068915443088

`∏{e}[n+1, #+1]-A055641(round(2^(n+1)/(n+1)))`
-/

namespace A335037.P14199746068915443088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A055641 (SequenceMachineLib.roundAway ((2 ^ (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A335037.P14199746068915443088

/-!
# A335039: Numbers whose binary representation encodes a (binary) max-heap on elements from the set {0,1} with root at the least significant bit.

The programs for A335039, the canonical program `A335039.P14215204407484269201` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335039 has offset 1).

The definition of A335039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335039.P14215204407484269201

`eq[n, and(n, 6*A000695(n)+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A335039

/-- `eq[n, and(n, 6*A000695(n)+1)]` -/
def P14215204407484269201.Spec : Prop :=
  ∀ n, (P14215204407484269201.a n : ℤ) = A335039 (n + 1)

theorem P14215204407484269201.correct : P14215204407484269201.Spec := by
  intro n
  simp only [A335039, Nat.add_sub_cancel]

end A335039

/-! ## A335039.P17673631143732983202

`record[or(A229951(n), A325401(n))]`
-/

namespace A335039.P17673631143732983202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A229951 n) (A325401 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335039.P17673631143732983202

namespace A335039

/-- `record[or(A229951(n), A325401(n))]` -/
def P17673631143732983202.Spec : Prop :=
  ∀ n, P17673631143732983202.a n = A335039 (n + 1)

end A335039

/-! ## A335039.P8354414649767003015

`lt[A269370(n+1)², A360373(n+3)]`
-/

namespace A335039.P8354414649767003015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360373 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335039.P8354414649767003015

namespace A335039

/-- `lt[A269370(n+1)², A360373(n+3)]` -/
def P8354414649767003015.Spec : Prop :=
  ∀ n, (P8354414649767003015.a n : ℤ) = A335039 (n + 1)

end A335039

/-! ## A335039.P18169657758792628786

`eq[A134829(n), A334465(n+1)]`
-/

namespace A335039.P18169657758792628786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335039.P18169657758792628786

namespace A335039

/-- `eq[A134829(n), A334465(n+1)]` -/
def P18169657758792628786.Spec : Prop :=
  ∀ n, (P18169657758792628786.a n : ℤ) = A335039 (n + 1)

end A335039

/-! ## A335039.P18061841739745993166

`eq[A034475(n+1), A352446(n+1)]`
-/

namespace A335039.P18061841739745993166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335039.P18061841739745993166

namespace A335039

/-- `eq[A034475(n+1), A352446(n+1)]` -/
def P18061841739745993166.Spec : Prop :=
  ∀ n, (P18061841739745993166.a n : ℤ) = A335039 (n + 1)

end A335039

/-!
# A335040: Numbers whose binary representation encodes a (binary) max-heap on elements from the set {0,1} with root at the most significant bit.

The programs for A335040, there is no canonical definition to state claims against.
-/

/-! ## A335040.P731612291768762223

`lt[A332817(n), A085736(2*(n+1))]`
-/

namespace A335040.P731612291768762223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335040.P731612291768762223

/-! ## A335040.P10467207652820159104

`lt[A163511(n), ∑[A333381(2*n+3)]]`
-/

namespace A335040.P10467207652820159104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335040.P10467207652820159104

/-! ## A335040.P16292436886765295697

`lt[A332817(n), ∑[A333381(2*n+3)]]`
-/

namespace A335040.P16292436886765295697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332817 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335040.P16292436886765295697

/-! ## A335040.P16186653686818312332

`lt[A364258(n)-A333381(2*(n+2)), or(1, n)]`
-/

namespace A335040.P16186653686818312332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 n - A333381 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335040.P16186653686818312332

/-! ## A335040.P6654602587450083110

`lt[A120956(A229742(n)), A047981(n+1)]`
-/

namespace A335040.P6654602587450083110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120956 (A229742 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335040.P6654602587450083110

/-!
# A335041: Numbers whose binary representation encodes a (binary) min-heap on elements from the set {0,1} with root at the least significant bit.

The programs for A335041, there is no canonical definition to state claims against.
-/

/-! ## A335041.P641206308770492526

`lt[A118759(A030101(n)), A233775(n)]`
-/

namespace A335041.P641206308770492526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A030101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335041.P641206308770492526

/-! ## A335041.P7873913135888134685

`lt[A030101(A030101(n)²), A233775(n)²]`
-/

namespace A335041.P7873913135888134685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335041.P7873913135888134685

/-! ## A335041.P19806449567204708

`lt[A243055(A019565(n)), A211100(n)]`
-/

namespace A335041.P19806449567204708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A019565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335041.P19806449567204708

/-! ## A335041.P11212356258853854948

`eq[A124761(n), A188641(A340019(n+4))]`
-/

namespace A335041.P11212356258853854948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (A340019 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335041.P11212356258853854948

/-! ## A335041.P11445428681852275532

`eq[A124761(n), A124761(A291203(n))]`
-/

namespace A335041.P11445428681852275532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A291203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335041.P11445428681852275532

/-!
# A335042: Numbers whose binary representation encodes a (binary) max-heap on elements from the set {0,1} with root at the most significant bit and a min-heap with root at the least significant bit.

The programs for A335042, there is no canonical definition to state claims against.
-/

/-! ## A335042.P12644166102304405543

`∩[A335040(n+1), A335041(n+1)]`
-/

namespace A335042.P12644166102304405543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335042.P12644166102304405543

/-! ## A335042.P14977714641386542871

`eq[A048735(A263991(n+1)), A087734(n)]`
-/

namespace A335042.P14977714641386542871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A263991 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335042.P14977714641386542871

/-! ## A335042.P8254406314289753821

`eq[A263991(n+1), A278533(A110654(n))]`
-/

namespace A335042.P8254406314289753821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278533 (A110654 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335042.P8254406314289753821

/-! ## A335042.P14702675612770688362

`lt[A030101(n), A038550(A321320(n+1))]`
-/

namespace A335042.P14702675612770688362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (A321320 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335042.P14702675612770688362

/-! ## A335042.P16034367856569886629

`lt[A192111(A366892(n)), A004767(n)]`
-/

namespace A335042.P16034367856569886629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (A366892 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335042.P16034367856569886629

/-!
# A335043: Lexicographically earliest sequence of distinct positive integers such that for any n > 0, the decimal representations of a(2*n-1) and of a(2*n+1) appear as substrings in the decimal representation of a(2*n).

The programs for A335043, there is no canonical definition to state claims against.
-/

/-! ## A335043.P4188192041840315964

`A086068(A072946(n+1))`
-/

namespace A335043.P4188192041840315964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A072946 (n + 1)).toNat

end

end A335043.P4188192041840315964

/-! ## A335043.P6917713677719933048

`A073731(A143795(n+1))`
-/

namespace A335043.P6917713677719933048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A143795 (n + 1)).toNat + 10)

end

end A335043.P6917713677719933048

/-! ## A335043.P8141643135619113791

`A086068(A162255(n+2))`
-/

namespace A335043.P8141643135619113791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A162255 (n + 2)).toNat

end

end A335043.P8141643135619113791

/-! ## A335043.P15178124588479234970

`A086068(A164073(n+3))`
-/

namespace A335043.P15178124588479234970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A164073 (n + 3)).toNat

end

end A335043.P15178124588479234970

/-! ## A335043.P3189192869680426100

`A086068(Δ[A164053(n+1)])`
-/

namespace A335043.P3189192869680426100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (f1 (n + 1) - f1 n).toNat

end

end A335043.P3189192869680426100

/-!
# A335046: Maximal common prime of two Goldbach partitions of 2n and 2(n+1) or zero (if common prime does not exist).

The programs for A335046, there is no canonical definition to state claims against.
-/

/-! ## A335046.P5221626722328432789

`A060308(n+1)-A318985(A008965(n+1))`
-/

namespace A335046.P5221626722328432789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1) - A318985 (A008965 (n + 1)).toNat

end

end A335046.P5221626722328432789

/-! ## A335046.P15194604273992753606

`A020482(n+2)-A318985(A008965(n+1))`
-/

namespace A335046.P15194604273992753606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - A318985 (A008965 (n + 1)).toNat

end

end A335046.P15194604273992753606

/-! ## A335046.P1096920028212009410

`A000040(A099802(n+1))-A318985(A008965(n+1))`
-/

namespace A335046.P1096920028212009410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099802 (n + 1)).toNat - A318985 (A008965 (n + 1)).toNat

end

end A335046.P1096920028212009410

/-! ## A335046.P12521804345732168057

`A000040(A000720(2*(n+1)))-A318985(A008965(n+1))`
-/

namespace A335046.P12521804345732168057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (2 * (n + 1))).toNat - A318985 (A008965 (n + 1)).toNat

end

end A335046.P12521804345732168057

/-!
# A335047: Maximum sum of primes (see Comments).

The programs for A335047, there is no canonical definition to state claims against.
-/

/-! ## A335047.P13844163910315982614

`A261096(n)+A057362(A228882(n+1))`
-/

namespace A335047.P13844163910315982614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 n + A057362 (A228882 (n + 1)).toNat

end

end A335047.P13844163910315982614

/-!
# A335048: Minimum sum of primes (see Comments).

The programs for A335048, there is no canonical definition to state claims against.
-/

/-! ## A335048.P2169342622449610152

`(n+1)²-abs(or(1, -n))`
-/

namespace A335048.P2169342622449610152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - |Int.lor 1 (-(n : ℤ))|

end

end A335048.P2169342622449610152

/-! ## A335048.P8044700456648570895

`∑[2*n]+gcd(n, ceil(atan(n)))`
-/

namespace A335048.P8044700456648570895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.gcd (n : ℤ) ⌈Real.arctan (n : ℝ)⌉

end

end A335048.P8044700456648570895

/-! ## A335048.P3734119534547443202

`∑[a(n-2)+4]` with `a(0)=0, a(1)=3, a(2)=5, a(3)=5`
-/

namespace A335048.P3734119534547443202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5, 5] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335048.P3734119534547443202

/-! ## A335048.P14526545226600804792

`(n+1)²-or(1, abs(1-n))`
-/

namespace A335048.P14526545226600804792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - Int.lor 1 |1 - (n : ℤ)|

end

end A335048.P14526545226600804792

/-! ## A335048.P7526817175680080968

`2*∑[char[1]+n]-n%2`
-/

namespace A335048.P7526817175680080968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A335048.P7526817175680080968

/-! ## A335048.P6472686390572399555

`∑[2*(char[1]+n)]-and(1, n)`
-/

namespace A335048.P6472686390572399555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 1 n : ℤ)

end

end A335048.P6472686390572399555

/-! ## A335048.P1553177665146789044

`∑[xor(xor(1, n)+n, C(2, n²))]`
-/

namespace A335048.P1553177665146789044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.xor 1 n + n) (Nat.choose 2 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335048.P1553177665146789044

/-! ## A335048.P11096282248385578993

`∑{d}[n, round(1/#)]+∑[2*n]`
-/

namespace A335048.P11096282248385578993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (d : ℚ)) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A335048.P11096282248385578993

/-! ## A335048.P16115318731733144618

`∑[∑[4-a(n-1)]]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=0`
-/

namespace A335048.P16115318731733144618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 2, 0] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335048.P16115318731733144618

/-! ## A335048.P16769444782823149700

`n+1+(n-1)%2+n²`
-/

namespace A335048.P16769444782823149700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (Int.tmod ((n : ℤ) - 1) 2 + (n ^ 2 : ℤ))

end

end A335048.P16769444782823149700

/-!
# A335049: The prime factorization of a(n) corresponds to the left diagonal of the XOR-triangle built from prime factorization of n, with 2-adic valuation of a(n) given by last row.

The programs for A335049, there is no canonical definition to state claims against.
-/

/-! ## A335049.P2904092729128281678

`lcm(A001285(A326588(n)), A226532(n+1))`
-/

namespace A335049.P2904092729128281678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 (A326588 n).toNat) (A226532 (n + 1))

end

end A335049.P2904092729128281678

/-! ## A335049.P6156312715425909661

`A035214(A045967(n+1))*A226532(n+1)`
-/

namespace A335049.P6156312715425909661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A045967 (n + 1)).toNat * A226532 (n + 1)

end

end A335049.P6156312715425909661

/-! ## A335049.P7883817476309076578

`A226532(n+1)*A325625(A234027(3*n+4))`
-/

namespace A335049.P7883817476309076578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226532 (n + 1) * A325625 (A234027 (3 * n + 4)).toNat

end

end A335049.P7883817476309076578

/-! ## A335049.P16530245168720981007

`A226532(n+1)*A325625(A335023(n+1))`
-/

namespace A335049.P16530245168720981007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226532 (n + 1) * A325625 (A335023 (n + 1)).toNat

end

end A335049.P16530245168720981007

/-! ## A335049.P4959707443148700871

`A226532(n+1)*A325625(A334622(n))`
-/

namespace A335049.P4959707443148700871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226532 (n + 1) * A325625 (A334622 n).toNat

end

end A335049.P4959707443148700871

/-!
# A335050: Array read by descending antidiagonals, T(n,k) is the number of nodes in the pill tree with initial conditions (n,k), for n and k >= 0.

The programs for A335050, there is no canonical definition to state claims against.
-/

/-! ## A335050.P10423065965649352287

`A283054(comp[∑[n]])-1`
-/

namespace A335050.P10423065965649352287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A335050.P10423065965649352287

/-! ## A335050.P7469060239571231930

`A096465(eq[0, A103516(n)])-1`
-/

namespace A335050.P7469060239571231930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A335050.P7469060239571231930

/-! ## A335050.P10008584645564865359

`A096465(lt[1, A007318(n)])-1`
-/

namespace A335050.P10008584645564865359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A335050.P10008584645564865359

/-! ## A335050.P2342341172528238920

`A096465(lt[1, A096465(n)])-1`
-/

namespace A335050.P2342341172528238920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A335050.P2342341172528238920

/-! ## A335050.P18196154535901969926

`abs(1-A283054(comp[A000217(n)]))`
-/

namespace A335050.P18196154535901969926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A283054 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A335050.P18196154535901969926

/-! ## A335050.P1418717596118505548

`abs(A096465(lt[1, A007318(n)])+A057428(2*(n+1)))`
-/

namespace A335050.P1418717596118505548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + A057428 (2 * (n + 1))|

end

end A335050.P1418717596118505548

/-!
# A335051: a(n) is the smallest decimal number > 1 such that when it is written in all bases from base 2 to base n those numbers all contain both 0 and 1.

The programs for A335051, there is no canonical definition to state claims against.
-/

/-! ## A335051.P17446158183135001816

`A264389(A196347(2*(n+1)))+1`
-/

namespace A335051.P17446158183135001816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264389 (A196347 (2 * (n + 1))).toNat + 1

end

end A335051.P17446158183135001816

/-!
# A335052: Odd unitary abundant numbers whose unitary abundancy is closer to 2 than that of any smaller odd unitary abundant number.

The programs for A335052, there is no canonical definition to state claims against.
-/

/-! ## A335052.P9355848963679957314

`A336671(n+1)/2`
-/

namespace A335052.P9355848963679957314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336671 (n + 1) : ℚ) / 2

end

end A335052.P9355848963679957314

/-! ## A335052.P3541356632451628974

`sqrt(A336679(n+1))%A234671(n+1)`
-/

namespace A335052.P3541356632451628974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A336679 (n + 1) : ℝ))) (A234671 (n + 1))

end

end A335052.P3541356632451628974

/-! ## A335052.P8152345154095211706

`record[gcd(A336671(n+1), A336679(n+1))]`
-/

namespace A335052.P8152345154095211706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336671 (n + 1)) (A336679 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335052.P8152345154095211706

/-! ## A335052.P8159998506075432870

`A336679(n+1)^((A078547(n+1)+1)/2)`
-/

namespace A335052.P8159998506075432870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A336679 (n + 1) : ℝ) ^ ((A078547 (n + 1) + 1 : ℚ) / 2 : ℝ)

end

end A335052.P8159998506075432870

/-! ## A335052.P12103704786405596994

`sqrt(A336679(n+1))^A000124(A061467(n))`
-/

namespace A335052.P12103704786405596994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A336679 (n + 1) : ℝ) ^ (A000124 (A061467 n).toNat : ℤ)

end

end A335052.P12103704786405596994

/-!
# A335056: Triangle read by rows: consider a figure made up of a row of n congruent rectangles and the diagonals of all possible rectangles; T(n,k) (1 <= k <= n) is the number of vertices inside the k-th rectangle.

The programs for A335056, there is no canonical definition to state claims against.
-/

/-! ## A335056.P16244233847168670615

`A006257(A190098(n+1)+∑[A000079(n)])`
-/

namespace A335056.P16244233847168670615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A190098 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335056.P16244233847168670615

/-! ## A335056.P6913532551755884871

`A004273(A190098(n+1)%p?[A026813(n)])`
-/

namespace A335056.P6913532551755884871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (A190098 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A335056.P6913532551755884871

/-! ## A335056.P16670510362588161091

`2*(A319861(n)+A032741(A038247(n)))-1`
-/

namespace A335056.P16670510362588161091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A319861 n + A032741 (A038247 n).toNat) - 1

end

end A335056.P16670510362588161091

/-! ## A335056.P13369490760103718876

`A004273(A190098(n+1))%A180416(n+1)`
-/

namespace A335056.P13369490760103718876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A190098 (n + 1)).toNat) (A180416 (n + 1))

end

end A335056.P13369490760103718876

/-! ## A335056.P7654951436287756960

`A027170(n)-A110247(A022181(n))`
-/

namespace A335056.P7654951436287756960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 n - A110247 (A022181 n).toNat

end

end A335056.P7654951436287756960

/-!
# A335057: a(n) is the number of regions inside an n-gon formed by the straight line segments connecting vertex k to vertex 2k mod n.

The programs for A335057, there is no canonical definition to state claims against.
-/

/-! ## A335057.P6998090594474098926

`A335058(n+3)+1-A335059(n+3)`
-/

namespace A335057.P6998090594474098926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335058 (n + 3) + (1 - A335059 (n + 3))

end

end A335057.P6998090594474098926

/-! ## A335057.P4804708436120794361

`A335058(n+3)+A024000(A335059(n+3))`
-/

namespace A335057.P4804708436120794361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335058 (n + 3) + A024000 (A335059 (n + 3)).toNat

end

end A335057.P4804708436120794361

/-!
# A335058: a(n) is the number of edges in an n-gon formed by the straight line segments connecting vertex k to vertex 2k mod n.

The programs for A335058, there is no canonical definition to state claims against.
-/

/-! ## A335058.P6580258283174435127

`A335057(n+3)+A335059(n+3)-1`
-/

namespace A335058.P6580258283174435127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335057 (n + 3) + (A335059 (n + 3) - 1)

end

end A335058.P6580258283174435127

/-! ## A335058.P5848569551192482928

`A335057(n+3)+A023443(A335059(n+3))`
-/

namespace A335058.P5848569551192482928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335057 (n + 3) + A023443 (A335059 (n + 3)).toNat

end

end A335058.P5848569551192482928

/-! ## A335058.P8758965294591136514

`A199969(A335059(n+3)+A335057(n+3))`
-/

namespace A335058.P8758965294591136514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A335059 (n + 3) + A335057 (n + 3)).toNat

end

end A335058.P8758965294591136514

/-! ## A335058.P1978048194188547729

`abs(A024000(A335059(n+3)+A335057(n+3)))`
-/

namespace A335058.P1978048194188547729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (A335059 (n + 3) + A335057 (n + 3)).toNat|

end

end A335058.P1978048194188547729

/-! ## A335058.P1792218786805341874

`A233583(A335059(n+3)+A335057(n+3))`
-/

namespace A335058.P1792218786805341874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A335059 (n + 3) + A335057 (n + 3)).toNat

end

end A335058.P1792218786805341874

/-!
# A335059: a(n) is the number of vertices in an n-gon formed by the straight line segments connecting vertex k to vertex 2k mod n.

The programs for A335059, there is no canonical definition to state claims against.
-/

/-! ## A335059.P1912803314424427069

`A335058(n+3)+1-A335057(n+3)`
-/

namespace A335059.P1912803314424427069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335058 (n + 3) + (1 - A335057 (n + 3))

end

end A335059.P1912803314424427069

/-! ## A335059.P14419940175942571810

`A335058(n+3)+A024000(A335057(n+3))`
-/

namespace A335059.P14419940175942571810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335058 (n + 3) + A024000 (A335057 (n + 3)).toNat

end

end A335059.P14419940175942571810

/-! ## A335059.P14726758298489431213

`A020725(A335058(n+3)-A335057(n+3))`
-/

namespace A335059.P14726758298489431213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335058 (n + 3) - A335057 (n + 3)).toNat

end

end A335059.P14726758298489431213

/-! ## A335059.P12241001040999187393

`A065475(A335058(n+3)-A335057(n+3))`
-/

namespace A335059.P12241001040999187393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335058 (n + 3) - A335057 (n + 3)).toNat

end

end A335059.P12241001040999187393

/-!
# A335060: a(n) is the number of values of k < n for which 4*(a(k) + a(n-k)) < n.

The programs for A335060, there is no canonical definition to state claims against.
-/

/-! ## A335060.P13281871280848003516

`and(A046053(n+1), A046867(n+1))`
-/

namespace A335060.P13281871280848003516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046053 (n + 1)) (A046867 (n + 1))

end

end A335060.P13281871280848003516

/-! ## A335060.P7318948326906834762

`A081603(A293338(n)+A007095(n))`
-/

namespace A335060.P7318948326906834762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A293338 n + A007095 n).toNat

end

end A335060.P7318948326906834762

/-! ## A335060.P9144056164232237647

`A062756(A204453(n)*A369546(n+1))`
-/

namespace A335060.P9144056164232237647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A204453 n * A369546 (n + 1)).toNat

end

end A335060.P9144056164232237647

/-! ## A335060.P3481220771897699875

`and(A007895(A001333(n)), A125006(n+2))`
-/

namespace A335060.P3481220771897699875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007895 (A001333 n).toNat) (A125006 (n + 2))

end

end A335060.P3481220771897699875

/-! ## A335060.P15504223302953175466

`and(A000120(A027852(n+1)), A046053(n+1))`
-/

namespace A335060.P15504223302953175466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A027852 (n + 1)).toNat) (A046053 (n + 1))

end

end A335060.P15504223302953175466

/-!
# A335062: a(n) = 1 - Sum_{d|n, d > 1} (-1)^d * a(n/d).

The programs for A335062, there is no canonical definition to state claims against.
-/

/-! ## A335062.P14047773047937781457

`∑{d}[n+1, A308077(#)]`
-/

namespace A335062.P14047773047937781457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308077 d

end

end A335062.P14047773047937781457

/-! ## A335062.P9296299597567051127

`A158522(A000225(n)+1)*A341675(n+1)`
-/

namespace A335062.P9296299597567051127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A000225 n + 1).toNat * A341675 (n + 1)

end

end A335062.P9296299597567051127

/-! ## A335062.P13334677148883640006

`and(ceil((n+1)/∏{p}[n+1, (n+1)/#]), A039622(A344392(n)))*A158522(A000079(n))`
-/

namespace A335062.P13334677148883640006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ (A039622 (A344392 n).toNat) * A158522 (A000079 n).toNat

end

end A335062.P13334677148883640006

/-! ## A335062.P3844864883693742261

`A278264(A133700(n+1))-A028613(2^∏{p}[n+1, #])`
-/

namespace A335062.P3844864883693742261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278264 (A133700 (n + 1)).toNat - A028613 (2 ^ (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A335062.P3844864883693742261

/-!
# A335063: a(n) = Sum_{k=0..n} (binomial(n,k) mod 2) * k.

The programs for A335063, the canonical program `A335063.P16493843771175373892` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335063 has offset 0).

The definition of A335063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335063.P16493843771175373892

`n*A001316(n)/2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A335063

/-- `n*A001316(n)/2` -/
def P16493843771175373892.Spec : Prop :=
  ∀ n, P16493843771175373892.a n = (A335063 n : ℚ)

end A335063

/-! ## A335063.P2604325041734727016

`n*2^(A000120(n)-1)`
-/

namespace A335063.P2604325041734727016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ (A000120 n - 1 : ℤ)

end

end A335063.P2604325041734727016

namespace A335063

/-- `n*2^(A000120(n)-1)` -/
def P2604325041734727016.Spec : Prop :=
  ∀ n, P2604325041734727016.a n = (A335063 n : ℚ)

end A335063

/-! ## A335063.P4509562087490507724

`lcm(n, 2/(n-1)*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A335063.P4509562087490507724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (2 / ((n : ℤ) - 1 : ℚ) * (a (n - 1) : ℚ)))

end

end A335063.P4509562087490507724

namespace A335063

/-- `lcm(n, 2/(n-1)*a(n-1))` -/
def P4509562087490507724.Spec : Prop :=
  ∀ n, (P4509562087490507724.a n : ℤ) = A335063 n

end A335063

/-! ## A335063.P16524706334238483219

`n*(A088512(n)+1)`
-/

namespace A335063.P16524706334238483219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A088512 n + 1)

end

end A335063.P16524706334238483219

namespace A335063

/-- `n*(A088512(n)+1)` -/
def P16524706334238483219.Spec : Prop :=
  ∀ n, P16524706334238483219.a n = A335063 n

end A335063

/-! ## A335063.P8225997321934335501

`n/4*A117973(n)`
-/

namespace A335063.P8225997321934335501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A117973 n : ℚ)

end

end A335063.P8225997321934335501

namespace A335063

/-- `n/4*A117973(n)` -/
def P8225997321934335501.Spec : Prop :=
  ∀ n, P8225997321934335501.a n = (A335063 n : ℚ)

end A335063

/-! ## A335063.P3111538919236805872

`n/4*A167275(n)`
-/

namespace A335063.P3111538919236805872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A167275 n : ℚ)

end

end A335063.P3111538919236805872

namespace A335063

/-- `n/4*A167275(n)` -/
def P3111538919236805872.Spec : Prop :=
  ∀ n, P3111538919236805872.a n = (A335063 n : ℚ)

end A335063

/-! ## A335063.P11359121369778033347

`lcm(n, A131136(n))/2`
-/

namespace A335063.P11359121369778033347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (A131136 n) : ℚ) / 2

end

end A335063.P11359121369778033347

namespace A335063

/-- `lcm(n, A131136(n))/2` -/
def P11359121369778033347.Spec : Prop :=
  ∀ n, P11359121369778033347.a n = (A335063 n : ℚ)

end A335063

/-! ## A335063.P1321721162033891489

`n*xor(n, A326729(n))`
-/

namespace A335063.P1321721162033891489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor (n : ℤ) (A326729 n)

end

end A335063.P1321721162033891489

namespace A335063

/-- `n*xor(n, A326729(n))` -/
def P1321721162033891489.Spec : Prop :=
  ∀ n, P1321721162033891489.a n = A335063 n

end A335063

/-! ## A335063.P8830821972278454741

`n*A048896(abs(1-n))`
-/

namespace A335063.P8830821972278454741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A048896 |1 - (n : ℤ)|.toNat

end

end A335063.P8830821972278454741

namespace A335063

/-- `n*A048896(abs(1-n))` -/
def P8830821972278454741.Spec : Prop :=
  ∀ n, P8830821972278454741.a n = A335063 n

end A335063

/-! ## A335063.P6471052513136641843

`n*ceil(A038573(n)/2)`
-/

namespace A335063.P6471052513136641843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(A038573 n : ℚ) / 2⌉

end

end A335063.P6471052513136641843

namespace A335063

/-- `n*ceil(A038573(n)/2)` -/
def P6471052513136641843.Spec : Prop :=
  ∀ n, P6471052513136641843.a n = A335063 n

end A335063

/-! ## A335063.P13588993415107581823

`gcd(n, ∑[n])*A060632(n)`
-/

namespace A335063.P13588993415107581823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A060632 n

end

end A335063.P13588993415107581823

namespace A335063

/-- `gcd(n, ∑[n])*A060632(n)` -/
def P13588993415107581823.Spec : Prop :=
  ∀ n, P13588993415107581823.a n = A335063 n

end A335063

/-! ## A335063.P15125401069973374218

`n/3*A151787(n+1)`
-/

namespace A335063.P15125401069973374218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A151787 (n + 1) : ℚ)

end

end A335063.P15125401069973374218

namespace A335063

/-- `n/3*A151787(n+1)` -/
def P15125401069973374218.Spec : Prop :=
  ∀ n, P15125401069973374218.a n = (A335063 n : ℚ)

end A335063

/-! ## A335063.P12630197726825581886

`n*Δ[A193494(abs(1-n))]`
-/

namespace A335063.P12630197726825581886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A335063.P12630197726825581886

namespace A335063

/-- `n*Δ[A193494(abs(1-n))]` -/
def P12630197726825581886.Spec : Prop :=
  ∀ n, P12630197726825581886.a n = A335063 n

end A335063

/-! ## A335063.P4376630250010016571

`n*A011782(∑[1-val(abs(1-n)+1, 2)])`
-/

namespace A335063.P4376630250010016571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335063.P4376630250010016571

namespace A335063

/-- `n*A011782(∑[1-val(abs(1-n)+1, 2)])` -/
def P4376630250010016571.Spec : Prop :=
  ∀ n, P4376630250010016571.a n = A335063 n

end A335063

/-! ## A335063.P1255944177242446091

`n*A011782(n-(∑[val(n+1, 2)]-val(n+1, 2)))`
-/

namespace A335063.P1255944177242446091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))).toNat

end

end A335063.P1255944177242446091

namespace A335063

/-- `n*A011782(n-(∑[val(n+1, 2)]-val(n+1, 2)))` -/
def P1255944177242446091.Spec : Prop :=
  ∀ n, P1255944177242446091.a n = A335063 n

end A335063

/-! ## A335063.P8667899425294928146

`n*A131577(n-(∑[val(n+1, 2)]-val(n+1, 2)))`
-/

namespace A335063.P8667899425294928146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131577 ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))).toNat

end

end A335063.P8667899425294928146

namespace A335063

/-- `n*A131577(n-(∑[val(n+1, 2)]-val(n+1, 2)))` -/
def P8667899425294928146.Spec : Prop :=
  ∀ n, P8667899425294928146.a n = A335063 n

end A335063

/-! ## A335063.P14996279658281562745

`n*A000010(A001316(n))`
-/

namespace A335063.P14996279658281562745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000010 (A001316 n).toNat

end

end A335063.P14996279658281562745

namespace A335063

/-- `n*A000010(A001316(n))` -/
def P14996279658281562745.Spec : Prop :=
  ∀ n, P14996279658281562745.a n = A335063 n

end A335063

/-! ## A335063.P3597570306819123230

`n*A011782(A000120(n))`
-/

namespace A335063.P3597570306819123230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 (A000120 n).toNat

end

end A335063.P3597570306819123230

namespace A335063

/-- `n*A011782(A000120(n))` -/
def P3597570306819123230.Spec : Prop :=
  ∀ n, P3597570306819123230.a n = A335063 n

end A335063

/-! ## A335063.P14746289808568027824

`n*A001057(A038573(n))`
-/

namespace A335063.P14746289808568027824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001057 (A038573 n).toNat

end

end A335063.P14746289808568027824

namespace A335063

/-- `n*A001057(A038573(n))` -/
def P14746289808568027824.Spec : Prop :=
  ∀ n, P14746289808568027824.a n = A335063 n

end A335063

/-! ## A335063.P4461753285758925688

`A026741(n)*A060632(n)`
-/

namespace A335063.P4461753285758925688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A060632 n

end

end A335063.P4461753285758925688

namespace A335063

/-- `A026741(n)*A060632(n)` -/
def P4461753285758925688.Spec : Prop :=
  ∀ n, P4461753285758925688.a n = A335063 n

end A335063

/-!
# A335064: Let m = d*q + r be the Euclidean division of m by d. The terms m of this sequence satisfy that q, r, d are consecutive positive integer terms in a geometric progression with a noninteger common ratio > 1.

The programs for A335064, the canonical program `A335064.P7866728032869003709` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335064 has offset 1).

The definition of A335064 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335064.P7866728032869003709

`A002378(A024619(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A335064

/-- `A002378(A024619(n+1))` -/
def P7866728032869003709.Spec : Prop :=
  ∀ n, P7866728032869003709.a n = A335064 (n + 1)

theorem P7866728032869003709.correct : P7866728032869003709.Spec := by
  intro n
  simp only [A335064, Nat.add_sub_cancel]

end A335064

/-! ## A335064.P1878866519080886530

`2*C(comp[A000961(n+1)-1]+2, 2)`
-/

namespace A335064.P1878866519080886530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) 2

end

end A335064.P1878866519080886530

namespace A335064

/-- `2*C(comp[A000961(n+1)-1]+2, 2)` -/
def P1878866519080886530.Spec : Prop :=
  ∀ n, (P1878866519080886530.a n : ℤ) = A335064 (n + 1)

end A335064

/-! ## A335064.P8160602614716152164

`(A080765(n+1)+2)*A024619(n+1)`
-/

namespace A335064.P8160602614716152164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080765 (n + 1) + 2) * A024619 (n + 1)

end

end A335064.P8160602614716152164

namespace A335064

/-- `(A080765(n+1)+2)*A024619(n+1)` -/
def P8160602614716152164.Spec : Prop :=
  ∀ n, P8160602614716152164.a n = A335064 (n + 1)

end A335064

/-! ## A335064.P4151037626494566615

`2*C(A361102(n+2)+1, 2)`
-/

namespace A335064.P4151037626494566615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A361102 (n + 2) + 1).toNat 2

end

end A335064.P4151037626494566615

namespace A335064

/-- `2*C(A361102(n+2)+1, 2)` -/
def P4151037626494566615.Spec : Prop :=
  ∀ n, (P4151037626494566615.a n : ℤ) = A335064 (n + 1)

end A335064

/-! ## A335064.P16513359962009455597

`A024619(n+1)+A024619(n+1)*A361102(n+2)`
-/

namespace A335064.P16513359962009455597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1) + A024619 (n + 1) * A361102 (n + 2)

end

end A335064.P16513359962009455597

namespace A335064

/-- `A024619(n+1)+A024619(n+1)*A361102(n+2)` -/
def P16513359962009455597.Spec : Prop :=
  ∀ n, P16513359962009455597.a n = A335064 (n + 1)

end A335064

/-! ## A335064.P224286698313904189

`A002378(A361102(n+2))`
-/

namespace A335064.P224286698313904189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A361102 (n + 2)).toNat

end

end A335064.P224286698313904189

namespace A335064

/-- `A002378(A361102(n+2))` -/
def P224286698313904189.Spec : Prop :=
  ∀ n, P224286698313904189.a n = A335064 (n + 1)

end A335064

/-!
# A335065: Let m = d*q + r be the Euclidean division of m by d. The terms m of this sequence satisfy that d, q, r are consecutive positive integer terms in a geometric progression but not necessarily in that order.

The programs for A335065, there is no canonical definition to state claims against.
-/

/-! ## A335065.P5653230690617808427

`∪[A127629(n+1), A002378(n+2)]`
-/

namespace A335065.P5653230690617808427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335065.P5653230690617808427

/-!
# A335067: Numbers k where records occur for sigma(k+1)/sigma(k), where sigma(k) is the sum of divisors of k (A000203).

The programs for A335067, there is no canonical definition to state claims against.
-/

/-! ## A335067.P5787971062073414637

`A002182(A072968(10*a(n-1))+n)-1` with `a(0)=1`
-/

namespace A335067.P5787971062073414637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002182 (A072968 (10 * a (n - 1)).toNat + (n : ℤ)).toNat - 1

end

end A335067.P5787971062073414637

/-!
# A335068: Numbers k where records occur for sigma(k)/sigma(k+1), where sigma(k) is the sum of divisors of k (A000203).

The programs for A335068, there is no canonical definition to state claims against.
-/

/-! ## A335068.P9836919040337058152

`A266228(A184105(n+1)*A214268(n))`
-/

namespace A335068.P9836919040337058152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (A184105 (n + 1) * A214268 n).toNat

end

end A335068.P9836919040337058152

/-! ## A335068.P7107368826761495973

`A097212(A184105(n+1)^A214268(n))`
-/

namespace A335068.P7107368826761495973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (SequenceMachineLib.roundAway ((A184105 (n + 1) : ℚ) ^ (A214268 n : ℤ))).toNat

end

end A335068.P7107368826761495973

/-! ## A335068.P14273889801042606169

`A266228(A184105(n+1)^A214268(n))`
-/

namespace A335068.P14273889801042606169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (SequenceMachineLib.roundAway ((A184105 (n + 1) : ℚ) ^ (A214268 n : ℤ))).toNat

end

end A335068.P14273889801042606169

/-! ## A335068.P11992014553179401301

`A097212(C(A184105(n+1), A214268(n)))`
-/

namespace A335068.P11992014553179401301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (Nat.choose (A184105 (n + 1)).toNat (A214268 n).toNat)

end

end A335068.P11992014553179401301

/-! ## A335068.P6642202804721391932

`A266228(C(A184105(n+1), A214268(n)))`
-/

namespace A335068.P6642202804721391932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (Nat.choose (A184105 (n + 1)).toNat (A214268 n).toNat)

end

end A335068.P6642202804721391932

/-!
# A335069: Numbers k where records occur for phi(k+1)/phi(k), where phi is the Euler totient function (A000010).

The programs for A335069, there is no canonical definition to state claims against.
-/

/-! ## A335069.P3384214284602773710

`A351576(∏[∏{p}[n+1, gcd(n+1, #²)]])`
-/

namespace A335069.P3384214284602773710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351576 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A335069.P3384214284602773710

/-! ## A335069.P15437091010444615496

`A351576(A276841(n+1))`
-/

namespace A335069.P15437091010444615496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351576 (A276841 (n + 1)).toNat

end

end A335069.P15437091010444615496

/-! ## A335069.P15841671225750135920

`A351576(A364427(n+1))`
-/

namespace A335069.P15841671225750135920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351576 (A364427 (n + 1)).toNat

end

end A335069.P15841671225750135920

/-! ## A335069.P18081772049391701954

`A278222(A000975(2*n+1)-A081577(n))`
-/

namespace A335069.P18081772049391701954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A000975 (2 * n + 1) - A081577 n).toNat

end

end A335069.P18081772049391701954

/-!
# A335070: Numbers k where records occur for phi(k)/phi(k+1), where phi is the Euler totient function (A000010).

The programs for A335070, there is no canonical definition to state claims against.
-/

/-! ## A335070.P3004212398613525210

`gcd(C(2, n+2), p?[n*A353574(n+1)])`
-/

namespace A335070.P3004212398613525210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A335070.P3004212398613525210

/-! ## A335070.P42822878404532705

`eq[A212256(n), A276157(n+1)]`
-/

namespace A335070.P42822878404532705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276157 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335070.P42822878404532705

/-! ## A335070.P8707531818036343834

`eq[A212256(n), A353574(n+1)]`
-/

namespace A335070.P8707531818036343834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335070.P8707531818036343834

/-! ## A335070.P12336271191557196504

`∩[A293711(n+1), A072756(n)]`
-/

namespace A335070.P12336271191557196504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072756 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335070.P12336271191557196504

/-! ## A335070.P9533192382219969856

`∩[A293711(n+1), A080727(n)]`
-/

namespace A335070.P9533192382219969856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335070.P9533192382219969856

/-!
# A335072: Numbers with property that if you remove any digit and subtract 1 the result is prime.

The programs for A335072, there is no canonical definition to state claims against.
-/

/-! ## A335072.P13201499564281415625

`A010051(A022177(n))+A106582(n+1)+11`
-/

namespace A335072.P13201499564281415625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A022177 n).toNat + (A106582 (n + 1) + 11)

end

end A335072.P13201499564281415625

/-! ## A335072.P12634221035154231562

`A308407(A034895(n+1)+2)`
-/

namespace A335072.P12634221035154231562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308407 (A034895 (n + 1) + 2).toNat

end

end A335072.P12634221035154231562

/-! ## A335072.P13816762294837835049

`A308407(A092619(n+1)+2)`
-/

namespace A335072.P13816762294837835049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308407 (A092619 (n + 1) + 2).toNat

end

end A335072.P13816762294837835049

/-! ## A335072.P14736143289532029805

`A308407(A092624(n+1)+2)`
-/

namespace A335072.P14736143289532029805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308407 (A092624 (n + 1) + 2).toNat

end

end A335072.P14736143289532029805

/-! ## A335072.P15490266539257702047

`A308407(A106582(n+1)+2)`
-/

namespace A335072.P15490266539257702047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308407 (A106582 (n + 1) + 2).toNat

end

end A335072.P15490266539257702047

/-!
# A335073: a(n) = Sum_{k=1..n} 2^(bigomega(k) - omega(k)).

The programs for A335073, the canonical program `A335073.P13973839824108093383` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335073 has offset 1).

The definition of A335073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335073.P4048648774172812516

`∑[2^∑{e}[n+1, #-1]]`
-/

namespace A335073.P4048648774172812516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P4048648774172812516

namespace A335073

/-- `∑[2^∑{e}[n+1, #-1]]` -/
def P4048648774172812516.Spec : Prop :=
  ∀ n, P4048648774172812516.a n = (A335073 (n + 1) : ℚ)

end A335073

/-! ## A335073.P5588137998809363529

`∑[∏{e}[n+1, 2^(#-1)]]`
-/

namespace A335073.P5588137998809363529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 : ℚ) ^ ((Nat.factorization (f2 n) p : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P5588137998809363529

namespace A335073

/-- `∑[∏{e}[n+1, 2^(#-1)]]` -/
def P5588137998809363529.Spec : Prop :=
  ∀ n, P5588137998809363529.a n = (A335073 (n + 1) : ℚ)

end A335073

/-! ## A335073.P10488375088892263930

`∑[abs(∏{e}[n+1, (-2)^#/2])]`
-/

namespace A335073.P10488375088892263930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f2 n), ((-2) ^ Nat.factorization (f2 n) p : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P10488375088892263930

namespace A335073

/-- `∑[abs(∏{e}[n+1, (-2)^#/2])]` -/
def P10488375088892263930.Spec : Prop :=
  ∀ n, P10488375088892263930.a n = (A335073 (n + 1) : ℚ)

end A335073

/-! ## A335073.P16441078479283678453

`∑[A162510(n+1)]`
-/

namespace A335073.P16441078479283678453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P16441078479283678453

namespace A335073

/-- `∑[A162510(n+1)]` -/
def P16441078479283678453.Spec : Prop :=
  ∀ n, P16441078479283678453.a n = A335073 (n + 1)

end A335073

/-! ## A335073.P13973839824108093383

`∑[abs(A162512(n+1))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335073

/-- `∑[abs(A162512(n+1))]` -/
def P13973839824108093383.Spec : Prop :=
  ∀ n, P13973839824108093383.a n = A335073 (n + 1)

theorem P13973839824108093383.correct : P13973839824108093383.Spec := by
  intro n
  simp only [A335073, Nat.add_sub_cancel]

end A335073

/-! ## A335073.P1801390394816450436

`∑[2^A046660(n+1)]`
-/

namespace A335073.P1801390394816450436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046660 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P1801390394816450436

namespace A335073

/-- `∑[2^A046660(n+1)]` -/
def P1801390394816450436.Spec : Prop :=
  ∀ n, P1801390394816450436.a n = (A335073 (n + 1) : ℚ)

end A335073

/-! ## A335073.P7844723000954298506

`∑[A000079(A046660(n+1))]`
-/

namespace A335073.P7844723000954298506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A046660 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P7844723000954298506

namespace A335073

/-- `∑[A000079(A046660(n+1))]` -/
def P7844723000954298506.Spec : Prop :=
  ∀ n, P7844723000954298506.a n = A335073 (n + 1)

end A335073

/-! ## A335073.P1522402876482664860

`∑[A061142(A003557(n+1))]`
-/

namespace A335073.P1522402876482664860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P1522402876482664860

namespace A335073

/-- `∑[A061142(A003557(n+1))]` -/
def P1522402876482664860.Spec : Prop :=
  ∀ n, P1522402876482664860.a n = A335073 (n + 1)

end A335073

/-! ## A335073.P8204003327921663372

`∑[A061142(A292589(n+1))]`
-/

namespace A335073.P8204003327921663372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A292589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P8204003327921663372

namespace A335073

/-- `∑[A061142(A292589(n+1))]` -/
def P8204003327921663372.Spec : Prop :=
  ∀ n, P8204003327921663372.a n = A335073 (n + 1)

end A335073

/-! ## A335073.P4755635290355921368

`∑[∑{d}[A162512(n+1), A000010(#)]]`
-/

namespace A335073.P4755635290355921368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P4755635290355921368

namespace A335073

/-- `∑[∑{d}[A162512(n+1), A000010(#)]]` -/
def P4755635290355921368.Spec : Prop :=
  ∀ n, P4755635290355921368.a n = A335073 (n + 1)

end A335073

/-! ## A335073.P4052387396402105145

`∑[A300293(∑{d}[A162512(n+1), #]+2)]`
-/

namespace A335073.P4052387396402105145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (∑ d ∈ Nat.divisors (f2 n).natAbs, d + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P4052387396402105145

namespace A335073

/-- `∑[A300293(∑{d}[A162512(n+1), #]+2)]` -/
def P4052387396402105145.Spec : Prop :=
  ∀ n, P4052387396402105145.a n = A335073 (n + 1)

end A335073

/-! ## A335073.P3568662350593181470

`∑[2^(A001222(n+1)-A001221(n+1))]`
-/

namespace A335073.P3568662350593181470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) - A001221 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P3568662350593181470

namespace A335073

/-- `∑[2^(A001222(n+1)-A001221(n+1))]` -/
def P3568662350593181470.Spec : Prop :=
  ∀ n, P3568662350593181470.a n = (A335073 (n + 1) : ℚ)

end A335073

/-! ## A335073.P8817512348329073754

`∑[A061142(n+1)/A061142(A181819(n+1))]`
-/

namespace A335073.P8817512348329073754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A061142 (A181819 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P8817512348329073754

namespace A335073

/-- `∑[A061142(n+1)/A061142(A181819(n+1))]` -/
def P8817512348329073754.Spec : Prop :=
  ∀ n, P8817512348329073754.a n = (A335073 (n + 1) : ℚ)

end A335073

/-! ## A335073.P3733606790301617200

`∑[gcd(A162466(n+1), A162512(n+1))]`
-/

namespace A335073.P3733606790301617200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162466 (n + 1)) (A162512 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P3733606790301617200

namespace A335073

/-- `∑[gcd(A162466(n+1), A162512(n+1))]` -/
def P3733606790301617200.Spec : Prop :=
  ∀ n, (P3733606790301617200.a n : ℤ) = A335073 (n + 1)

end A335073

/-!
# A335074: Triangle read by rows: consider a figure made up of a row of n congruent rectangles and the diagonals of all possible rectangles; T(n,k) (1 <= k <= n-1) is the number of vertices on the edge separating rectangles k and k+1.

The programs for A335074, there is no canonical definition to state claims against.
-/

/-! ## A335074.P10478766402238072062

`A000005(A220497(A299015(n+1))²)`
-/

namespace A335074.P10478766402238072062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A220497 (A299015 (n + 1)).toNat ^ 2).toNat

end

end A335074.P10478766402238072062

/-! ## A335074.P12132194078287837864

`A131507(n)-A073610(A066827(n+1))`
-/

namespace A335074.P12132194078287837864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A073610 (A066827 (n + 1)).toNat

end

end A335074.P12132194078287837864

/-! ## A335074.P5134592541830269580

`A290251(A222144(n+1)-A004198(n))`
-/

namespace A335074.P5134592541830269580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A222144 (n + 1) - A004198 n).toNat

end

end A335074.P5134592541830269580

/-!
# A335075: Positions of 1's when Kolakoski sequence is grouped into four independent numbers as 1, 2, 11, 22.

The programs for A335075, there is no canonical definition to state claims against.
-/

/-! ## A335075.P3853104063126497593

`lt[A088570(abs(xor(n, -2))), 2]`
-/

namespace A335075.P3853104063126497593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 |Int.xor (n : ℤ) (-2)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335075.P3853104063126497593

/-! ## A335075.P2873610113709431876

`eq[1, A088570(n+1)]+1`
-/

namespace A335075.P2873610113709431876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335075.P2873610113709431876

/-! ## A335075.P5915481095625675400

`lt[A088570(xor(1, n)+1), 2]`
-/

namespace A335075.P5915481095625675400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (Nat.xor 1 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335075.P5915481095625675400

/-! ## A335075.P11857466564700649256

`filter[2*n+1, A078650(#)]`
-/

namespace A335075.P11857466564700649256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A078650 (f1 j) = 1) n)

end

end A335075.P11857466564700649256

/-! ## A335075.P8418905834688289151

`lt[A123594(n+2), n%2]`
-/

namespace A335075.P8418905834688289151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335075.P8418905834688289151

/-! ## A335075.P9048470581443853465

`eq[1, A088570(abs(xor(n, -2)))]`
-/

namespace A335075.P9048470581443853465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335075.P9048470581443853465

/-! ## A335075.P14530792646407796324

`eq[1, A088570(-xor(n, -2))]`
-/

namespace A335075.P14530792646407796324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (-Int.xor (n : ℤ) (-2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335075.P14530792646407796324

/-! ## A335075.P13367839292212845191

`eq[1, and(n, A000002(or(1, n)))]`
-/

namespace A335075.P13367839292212845191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A000002 (Nat.lor 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335075.P13367839292212845191

/-! ## A335075.P15215730306129705186

`eq[1, and(n, A088570(or(1, n)))]`
-/

namespace A335075.P15215730306129705186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A088570 (Nat.lor 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335075.P15215730306129705186

/-! ## A335075.P17079003613101590720

`record[lcm(2, A074291(n+1))/2]`
-/

namespace A335075.P17079003613101590720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A074291 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335075.P17079003613101590720

/-!
# A335077: a(n) sets a record for side length k of zero-triangle in a rotationally symmetrical XOR-triangle.

The programs for A335077, there is no canonical definition to state claims against.
-/

/-! ## A335077.P14780983622529568666

`A192528(or(n², A052921(n)))`
-/

namespace A335077.P14780983622529568666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192528 (Int.lor (n ^ 2 : ℤ) (A052921 n)).toNat

end

end A335077.P14780983622529568666

/-!
# A335078: Irregular triangle read by rows: T(n, k) is the number of rotationally inequivalent Ferris Wheel distributions of Omega(n) colored balls of specification number n into precisely k boxes of the Ferris Wheel, with no box empty (0 < k <= Omega(n)).

The programs for A335078, there is no canonical definition to state claims against.
-/

/-! ## A335078.P1486716289980293746

`or(A266659(A316433(n+4)), A316439(n+1))`
-/

namespace A335078.P1486716289980293746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266659 (A316433 (n + 4)).toNat) (A316439 (n + 1))

end

end A335078.P1486716289980293746

/-! ## A335078.P6939867300590165361

`or(A316439(n+1), A379475(A253566(2*(n+1))))`
-/

namespace A335078.P6939867300590165361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316439 (n + 1)) (A379475 (A253566 (2 * (n + 1))).toNat)

end

end A335078.P6939867300590165361

/-! ## A335078.P3311027671656368418

`or(A220136(A243619(n+1)), A316439(n+1))`
-/

namespace A335078.P3311027671656368418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220136 (A243619 (n + 1)).toNat) (A316439 (n + 1))

end

end A335078.P3311027671656368418

/-! ## A335078.P15514762154426228802

`A072491(A005384(2*n+1)*A316439(n+1))`
-/

namespace A335078.P15514762154426228802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A005384 (2 * n + 1) * A316439 (n + 1)).toNat

end

end A335078.P15514762154426228802

/-! ## A335078.P6106572762620572874

`or(A266253(A227310(n)), A316439(n+1))`
-/

namespace A335078.P6106572762620572874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266253 (A227310 n).toNat) (A316439 (n + 1))

end

end A335078.P6106572762620572874

/-! ## A335078.P1606535620595038511

`or(A096268((A292671(n+1)+1)²), A316439(n+1))`
-/

namespace A335078.P1606535620595038511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096268 ((A292671 (n + 1) + 1) ^ 2).toNat) (A316439 (n + 1))

end

end A335078.P1606535620595038511

/-! ## A335078.P15309030143502120503

`or(A096268(A104656(n+1)), A316439(n+1))`
-/

namespace A335078.P15309030143502120503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096268 (A104656 (n + 1)).toNat) (A316439 (n + 1))

end

end A335078.P15309030143502120503

/-! ## A335078.P17085623776776269867

`or(A011656(A341950(3*(n+3))), A316439(n+1))`
-/

namespace A335078.P17085623776776269867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011656 (A341950 (3 * (n + 3))).toNat) (A316439 (n + 1))

end

end A335078.P17085623776776269867

/-!
# A335079: Row sums of A335078.

The programs for A335079, there is no canonical definition to state claims against.
-/

/-! ## A335079.P10452434037419701540

`A001462(A296121(n+2)%A033864(n+1))`
-/

namespace A335079.P10452434037419701540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.tmod (A296121 (n + 2)) (A033864 (n + 1))).toNat

end

end A335079.P10452434037419701540

/-! ## A335079.P13725643792125216161

`A036042(A104725(n+2)%A240897(n+1))`
-/

namespace A335079.P13725643792125216161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (Int.tmod (A104725 (n + 2)) (A240897 (n + 1))).toNat

end

end A335079.P13725643792125216161

/-! ## A335079.P15917962913827437999

`A216599(A216601(n+2)^7+1)+A001055(n+2)`
-/

namespace A335079.P15917962913827437999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 (A216601 (n + 2) ^ 7 + 1).toNat + A001055 (n + 2)

end

end A335079.P15917962913827437999

/-! ## A335079.P11889378884186256845

`A000961(A001055(n+2)%A164517(n+1))`
-/

namespace A335079.P11889378884186256845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Int.tmod (A001055 (n + 2)) (A164517 (n + 1))).toNat

end

end A335079.P11889378884186256845

/-! ## A335079.P18056870950674299913

`A044818(A001055(n+2))%A340824(n+2)`
-/

namespace A335079.P18056870950674299913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044818 (A001055 (n + 2)).toNat) (A340824 (n + 2))

end

end A335079.P18056870950674299913

/-!
# A335080: First elements of maximal isospectral chains of length 1, or, equivalently, numbers with spectral basis of index 1.

The programs for A335080, there is no canonical definition to state claims against.
-/

/-! ## A335080.P1456537948908124433

`eq[1, A001221(A345992(n+1))]+1`
-/

namespace A335080.P1456537948908124433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A345992 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335080.P1456537948908124433

/-! ## A335080.P1717636351996594622

`eq[2, A054054(a(A345992(n+1)-1))+1]+1` with `a(0)=0`
-/

namespace A335080.P1717636351996594622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A054054 (f2 (A345992 (n + 1) - 1).toNat).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335080.P1717636351996594622

/-! ## A335080.P17518301191959479346

`eq[5, A164719(7*a(A345992(n+1)-1))]+1` with `a(0)=1`
-/

namespace A335080.P17518301191959479346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A164719 (7 * f2 (A345992 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335080.P17518301191959479346

/-! ## A335080.P11839044294175191156

`∪[A007774(n+1), A089229(A069116(n+1))]`
-/

namespace A335080.P11839044294175191156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (A069116 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335080.P11839044294175191156

/-! ## A335080.P5523683234781737001

`∪[A007774(n+1), A089229(A080363(n+1))]`
-/

namespace A335080.P5523683234781737001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (A080363 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335080.P5523683234781737001

/-! ## A335080.P15021591477402746872

`∪[A007774(n+1), A089229(A089229(n+1))]`
-/

namespace A335080.P15021591477402746872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (A089229 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335080.P15021591477402746872

/-! ## A335080.P7950984729966260177

`∪[A007774(n+1), A324455(A145353(n+1))]`
-/

namespace A335080.P7950984729966260177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (A145353 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335080.P7950984729966260177

/-!
# A335081: First elements of maximal isospectral chains of length 2.

The programs for A335081, there is no canonical definition to state claims against.
-/

/-! ## A335081.P3616928048667732382

`A329182(A082220(n+1)*A220977(n+1))`
-/

namespace A335081.P3616928048667732382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329182 (A082220 (n + 1) * A220977 (n + 1)).toNat

end

end A335081.P3616928048667732382

/-!
# A335087: Row sums of A335436.

The programs for A335087, the canonical program `A335087.P7027067568735395978` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335087 has offset 0).

The definition of A335087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335087.P7027067568735395978

`8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=7, a(2)=34, a(3)=150`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335087

/-- `8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P7027067568735395978.Spec : Prop :=
  ∀ n, P7027067568735395978.a n = A335087 n

theorem P7027067568735395978.correct : P7027067568735395978.Spec := by
  intro n
  simp only [A335087]

end A335087

/-! ## A335087.P3401976290217382514

`Δ[n*A204089(n)]`
-/

namespace A335087.P3401976290217382514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A204089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335087.P3401976290217382514

namespace A335087

/-- `Δ[n*A204089(n)]` -/
def P3401976290217382514.Spec : Prop :=
  ∀ n, P3401976290217382514.a n = A335087 n

end A335087

/-! ## A335087.P11459896599946897260

`Δ[n*A062112(2*n)]`
-/

namespace A335087.P11459896599946897260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062112 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335087.P11459896599946897260

namespace A335087

/-- `Δ[n*A062112(2*n)]` -/
def P11459896599946897260.Spec : Prop :=
  ∀ n, P11459896599946897260.a n = A335087 n

end A335087

/-! ## A335087.P9875570788164789007

`Δ[n*A121720(2*n+1)]`
-/

namespace A335087.P9875570788164789007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A121720 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335087.P9875570788164789007

namespace A335087

/-- `Δ[n*A121720(2*n+1)]` -/
def P9875570788164789007.Spec : Prop :=
  ∀ n, P9875570788164789007.a n = A335087 n

end A335087

/-! ## A335087.P12996137811198316867

`Δ[n/2*A060995(n+1)]`
-/

namespace A335087.P12996137811198316867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A060995 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335087.P12996137811198316867

namespace A335087

/-- `Δ[n/2*A060995(n+1)]` -/
def P12996137811198316867.Spec : Prop :=
  ∀ n, P12996137811198316867.a n = (A335087 n : ℚ)

end A335087

/-! ## A335087.P14762481195983577493

`A054145(n)+A053297(n+1)`
-/

namespace A335087.P14762481195983577493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 n + A053297 (n + 1)

end

end A335087.P14762481195983577493

namespace A335087

/-- `A054145(n)+A053297(n+1)` -/
def P14762481195983577493.Spec : Prop :=
  ∀ n, P14762481195983577493.a n = A335087 n

end A335087

/-! ## A335087.P7084806693882475132

`A007052(n)+2*A054145(n)`
-/

namespace A335087.P7084806693882475132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n + 2 * A054145 n

end

end A335087.P7084806693882475132

namespace A335087

/-- `A007052(n)+2*A054145(n)` -/
def P7084806693882475132.Spec : Prop :=
  ∀ n, P7084806693882475132.a n = A335087 n

end A335087

/-! ## A335087.P11342907320893223716

`A007070(n)+n*A007052(n)`
-/

namespace A335087.P11342907320893223716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + (n : ℤ) * A007052 n

end

end A335087.P11342907320893223716

namespace A335087

/-- `A007070(n)+n*A007052(n)` -/
def P11342907320893223716.Spec : Prop :=
  ∀ n, P11342907320893223716.a n = A335087 n

end A335087

/-! ## A335087.P14792675299699085045

`∑[A003480(n)]+2*A054145(n)`
-/

namespace A335087.P14792675299699085045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A054145 n

end

end A335087.P14792675299699085045

namespace A335087

/-- `∑[A003480(n)]+2*A054145(n)` -/
def P14792675299699085045.Spec : Prop :=
  ∀ n, P14792675299699085045.a n = A335087 n

end A335087

/-! ## A335087.P15513944897656155604

`A007070(n)+n*∑[A003480(n)]`
-/

namespace A335087.P15513944897656155604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335087.P15513944897656155604

namespace A335087

/-- `A007070(n)+n*∑[A003480(n)]` -/
def P15513944897656155604.Spec : Prop :=
  ∀ n, P15513944897656155604.a n = A335087 n

end A335087

/-! ## A335087.P7453710160749784962

`Δ[A006012(n)]+n*A007052(n)`
-/

namespace A335087.P7453710160749784962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A007052 n

end

end A335087.P7453710160749784962

namespace A335087

/-- `Δ[A006012(n)]+n*A007052(n)` -/
def P7453710160749784962.Spec : Prop :=
  ∀ n, P7453710160749784962.a n = A335087 n

end A335087

/-! ## A335087.P8493418683492291648

`Δ[n*A007070(A004273(n)-n)]`
-/

namespace A335087.P8493418683492291648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007070 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335087.P8493418683492291648

namespace A335087

/-- `Δ[n*A007070(A004273(n)-n)]` -/
def P8493418683492291648.Spec : Prop :=
  ∀ n, P8493418683492291648.a n = A335087 n

end A335087

/-! ## A335087.P5872416465293584689

`A053297(n+1)+2*A054146(n)`
-/

namespace A335087.P5872416465293584689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053297 (n + 1) + 2 * A054146 n

end

end A335087.P5872416465293584689

namespace A335087

/-- `A053297(n+1)+2*A054146(n)` -/
def P5872416465293584689.Spec : Prop :=
  ∀ n, P5872416465293584689.a n = A335087 n

end A335087

/-! ## A335087.P2275217977368474237

`2*A053297(n+1)-A007052(n)`
-/

namespace A335087.P2275217977368474237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053297 (n + 1) - A007052 n

end

end A335087.P2275217977368474237

namespace A335087

/-- `2*A053297(n+1)-A007052(n)` -/
def P2275217977368474237.Spec : Prop :=
  ∀ n, P2275217977368474237.a n = A335087 n

end A335087

/-! ## A335087.P17526173909817722225

`A204089(n+1)+n*A062113(2*n)`
-/

namespace A335087.P17526173909817722225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1) + (n : ℤ) * A062113 (2 * n)

end

end A335087.P17526173909817722225

namespace A335087

/-- `A204089(n+1)+n*A062113(2*n)` -/
def P17526173909817722225.Spec : Prop :=
  ∀ n, P17526173909817722225.a n = A335087 n

end A335087

/-! ## A335087.P9321615919865900850

`A217730(2*n)+n*A062113(2*n)`
-/

namespace A335087.P9321615919865900850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (2 * n) + (n : ℤ) * A062113 (2 * n)

end

end A335087.P9321615919865900850

namespace A335087

/-- `A217730(2*n)+n*A062113(2*n)` -/
def P9321615919865900850.Spec : Prop :=
  ∀ n, P9321615919865900850.a n = A335087 n

end A335087

/-! ## A335087.P11495491762974495444

`A007068(2*n+1)+n*A062113(2*n)`
-/

namespace A335087.P11495491762974495444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (2 * n + 1) + (n : ℤ) * A062113 (2 * n)

end

end A335087.P11495491762974495444

namespace A335087

/-- `A007068(2*n+1)+n*A062113(2*n)` -/
def P11495491762974495444.Spec : Prop :=
  ∀ n, P11495491762974495444.a n = A335087 n

end A335087

/-! ## A335087.P2777925999622142155

`A068912(2*n)+n*A030436(2*n+1)`
-/

namespace A335087.P2777925999622142155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068912 (2 * n) + (n : ℤ) * A030436 (2 * n + 1)

end

end A335087.P2777925999622142155

namespace A335087

/-- `A068912(2*n)+n*A030436(2*n+1)` -/
def P2777925999622142155.Spec : Prop :=
  ∀ n, P2777925999622142155.a n = A335087 n

end A335087

/-! ## A335087.P6706203819504413365

`A217730(2*n)+n*A121720(2*(n+1))`
-/

namespace A335087.P6706203819504413365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (2 * n) + (n : ℤ) * A121720 (2 * (n + 1))

end

end A335087.P6706203819504413365

namespace A335087

/-- `A217730(2*n)+n*A121720(2*(n+1))` -/
def P6706203819504413365.Spec : Prop :=
  ∀ n, P6706203819504413365.a n = A335087 n

end A335087

/-! ## A335087.P17166826768404565000

`A007068(2*n+1)+n*A121720(2*(n+1))`
-/

namespace A335087.P17166826768404565000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (2 * n + 1) + (n : ℤ) * A121720 (2 * (n + 1))

end

end A335087.P17166826768404565000

namespace A335087

/-- `A007068(2*n+1)+n*A121720(2*(n+1))` -/
def P17166826768404565000.Spec : Prop :=
  ∀ n, P17166826768404565000.a n = A335087 n

end A335087

/-!
# A335088: a(n) = n! * [x^n] exp(Sum_{k=1..n, gcd(n,k) = 1} x^k / k).

The programs for A335088, there is no canonical definition to state claims against.
-/

/-! ## A335088.P14963945527675805966

`A247009(n)-A268219(A077393(n+1))`
-/

namespace A335088.P14963945527675805966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247009 n - A268219 (A077393 (n + 1)).toNat

end

end A335088.P14963945527675805966

/-!
# A335090: a(n) = ((2*n+1)!!)^2 * (Sum_{k=1..n} 1/(2*k+1)^2).

The programs for A335090, there is no canonical definition to state claims against.
-/

/-! ## A335090.P2583231652596104971

`A001824(n)-A001818(n+1)`
-/

namespace A335090.P2583231652596104971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001824 n - A001818 (n + 1)

end

end A335090.P2583231652596104971

/-! ## A335090.P14798169475761151422

`record[A160563(n)-A001497(n)²]`
-/

namespace A335090.P14798169475761151422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160563 n - A001497 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335090.P14798169475761151422

/-! ## A335090.P919696218203946132

`A001824(n)-A001147(n+1)²`
-/

namespace A335090.P919696218203946132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001824 n - A001147 (n + 1) ^ 2

end

end A335090.P919696218203946132

/-! ## A335090.P6974736213153020960

`A001824(n)-A160563(A000217(n+1))`
-/

namespace A335090.P6974736213153020960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001824 n - A160563 (A000217 (n + 1)).toNat

end

end A335090.P6974736213153020960

/-! ## A335090.P2374566633777809406

`A001824(n)-A008956(A055998(n)+2)`
-/

namespace A335090.P2374566633777809406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001824 n - A008956 (A055998 n + 2).toNat

end

end A335090.P2374566633777809406

/-!
# A335091: a(n) = ((2*n+1)!!)^3 * (Sum_{k=1..n} 1/(2*k+1)^3).

The programs for A335091, there is no canonical definition to state claims against.
-/

/-! ## A335091.P8943124454577621824

`A335095(∑[n+4]+2)`
-/

namespace A335091.P8943124454577621824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335095 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A335091.P8943124454577621824

/-! ## A335091.P4802828922562323892

`record[A335095(A060577(n))]`
-/

namespace A335091.P4802828922562323892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335095 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335091.P4802828922562323892

/-!
# A335092: a(n) = ((2*n+1)!!)^4 * (Sum_{k=1..n} 1/(2*k+1)^4).

The programs for A335092, there is no canonical definition to state claims against.
-/

/-! ## A335092.P17640071056176715254

`A335095(A052905(n+2))`
-/

namespace A335092.P17640071056176715254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335095 (A052905 (n + 2)).toNat

end

end A335092.P17640071056176715254

/-!
# A335093: Number of regions after generation n of Conant's dissection of a square when dissected with diagonal lines and where the starting pair of edges rotates counterclockwise around the square.

The programs for A335093, there is no canonical definition to state claims against.
-/

/-! ## A335093.P9705951636051125093

`A002024(or(n, A243391(n+1)))`
-/

namespace A335093.P9705951636051125093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (n : ℤ) (A243391 (n + 1))).toNat

end

end A335093.P9705951636051125093

/-! ## A335093.P7020798259786738153

`A002024(or(n, A303030(n+1)))`
-/

namespace A335093.P7020798259786738153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (n : ℤ) (A303030 (n + 1))).toNat

end

end A335093.P7020798259786738153

/-! ## A335093.P7501049911523181253

`A188429(or(n, A243391(n+1)))`
-/

namespace A335093.P7501049911523181253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188429 (Int.lor (n : ℤ) (A243391 (n + 1))).toNat

end

end A335093.P7501049911523181253

/-! ## A335093.P7250473785596332738

`A194339(or(n, A243391(n+1)))`
-/

namespace A335093.P7250473785596332738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194339 (Int.lor (n : ℤ) (A243391 (n + 1))).toNat

end

end A335093.P7250473785596332738

/-! ## A335093.P15871905056991206237

`A188429(or(n, A303030(n+1)))`
-/

namespace A335093.P15871905056991206237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188429 (Int.lor (n : ℤ) (A303030 (n + 1))).toNat

end

end A335093.P15871905056991206237

/-!
# A335095: Square array T(n,k), n>=0, k>=0, read by antidiagonals: T(n,k) = ((2n+1)!!)^k * Sum_{j=1..n} 1/(2*j+1)^k.

The programs for A335095, there is no canonical definition to state claims against.
-/

/-! ## A335095.P87900722814744610

`A321271(A142963(n+1))`
-/

namespace A335095.P87900722814744610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321271 (A142963 (n + 1)).toNat

end

end A335095.P87900722814744610

/-! ## A335095.P2225384410302266395

`A344174(A194540(n+1))`
-/

namespace A335095.P2225384410302266395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344174 (A194540 (n + 1)).toNat

end

end A335095.P2225384410302266395

/-! ## A335095.P9764965509590686268

`A163529(3^A291656(n))`
-/

namespace A335095.P9764965509590686268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A291656 n : ℤ))).toNat

end

end A335095.P9764965509590686268

/-! ## A335095.P17674099000585773705

`A328114(A334781(n)^6)`
-/

namespace A335095.P17674099000585773705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A334781 n ^ 6).toNat

end

end A335095.P17674099000585773705

/-! ## A335095.P227439350341846805

`dr(A002262(n)^A322220(n))`
-/

namespace A335095.P227439350341846805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A322220 n : ℤ)))

end

end A335095.P227439350341846805

/-!
# A335096: a(n) = ((2*n+1)!!)^n * (Sum_{k=1..n} 1/(2*k+1)^n).

The programs for A335096, there is no canonical definition to state claims against.
-/

/-! ## A335096.P4347309958896903021

`A335095(∑[4*n])`
-/

namespace A335096.P4347309958896903021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335095 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335096.P4347309958896903021

/-!
# A335097: Number of integers less than n with the same number of prime factors (counted with multiplicity) as n.

The programs for A335097, there is no canonical definition to state claims against.
-/

/-! ## A335097.P12811272745068430813

`A058933(n+1)-1`
-/

namespace A335097.P12811272745068430813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (n + 1) - 1

end

end A335097.P12811272745068430813

/-! ## A335097.P11155658793280840770

`n-A070961(n+1)`
-/

namespace A335097.P11155658793280840770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070961 (n + 1)

end

end A335097.P11155658793280840770

/-! ## A335097.P12521755753813910068

`A023443(A058933(n+1))`
-/

namespace A335097.P12521755753813910068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A058933 (n + 1)).toNat

end

end A335097.P12521755753813910068

/-! ## A335097.P13926109524228783254

`A023444(A058933(n+1)+1)`
-/

namespace A335097.P13926109524228783254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A058933 (n + 1) + 1).toNat

end

end A335097.P13926109524228783254

/-! ## A335097.P6603209819441301070

`A023445(A058933(n+1)+2)`
-/

namespace A335097.P6603209819441301070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A058933 (n + 1) + 2).toNat

end

end A335097.P6603209819441301070

/-! ## A335097.P13524153070584327354

`A023447(A058933(n+1)+4)`
-/

namespace A335097.P13524153070584327354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A058933 (n + 1) + 4).toNat

end

end A335097.P13524153070584327354

/-! ## A335097.P16263112949508166367

`A377734(2*A058933(n+1))`
-/

namespace A335097.P16263112949508166367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (2 * A058933 (n + 1)).toNat

end

end A335097.P16263112949508166367

/-! ## A335097.P7788784981421907547

`A001478(n+1)+A058933(n+1)+n`
-/

namespace A335097.P7788784981421907547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A058933 (n + 1) + (n : ℤ))

end

end A335097.P7788784981421907547

/-! ## A335097.P7448102025913313206

`(A058933(n+1)+n)%A000027(n+1)`
-/

namespace A335097.P7448102025913313206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (n + 1) + (n : ℤ)) (A000027 (n + 1))

end

end A335097.P7448102025913313206

/-! ## A335097.P17969689383025126287

`(A058933(n+1)+A028310(n))%(n+1)`
-/

namespace A335097.P17969689383025126287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (n + 1) + A028310 n) (n + 1 : ℤ)

end

end A335097.P17969689383025126287

/-! ## A335097.P13548907826174853506

`(A058933(n+1)+A000007(n)+n)%(n+1)`
-/

namespace A335097.P13548907826174853506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (n + 1) + (A000007 n + (n : ℤ))) (n + 1 : ℤ)

end

end A335097.P13548907826174853506

/-! ## A335097.P13316777781053624819

`(A058933(n+1)+A034856(n+1))%∑[n+2]`
-/

namespace A335097.P13316777781053624819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058933 (n + 1) + A034856 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A335097.P13316777781053624819

/-! ## A335097.P15692535396374428252

`log2(Δ[A339511(n)])`
-/

namespace A335097.P15692535396374428252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339511 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A335097.P15692535396374428252

/-! ## A335097.P8323928126057032692

`log2(A339511(n+1)-A339511(n))`
-/

namespace A335097.P8323928126057032692
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A339511 (n + 1) - A339511 n : ℝ)

end

end A335097.P8323928126057032692

/-! ## A335097.P8931320181245930584

`A115638(2*n+1)+A058933(n+1)`
-/

namespace A335097.P8931320181245930584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + A058933 (n + 1)

end

end A335097.P8931320181245930584

/-! ## A335097.P18314245039108239882

`A053615(A058933(n+1)²+1)`
-/

namespace A335097.P18314245039108239882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A058933 (n + 1) ^ 2 + 1).toNat

end

end A335097.P18314245039108239882

/-! ## A335097.P13229857731090161521

`A083800(n+1)%A058933(n+1)`
-/

namespace A335097.P13229857731090161521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A058933 (n + 1))

end

end A335097.P13229857731090161521

/-! ## A335097.P4949776940358816331

`A070198(n)%A058933(n+1)`
-/

namespace A335097.P4949776940358816331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A058933 (n + 1))

end

end A335097.P4949776940358816331

/-! ## A335097.P16664449175419078918

`A079782(n+1)%A058933(n+1)`
-/

namespace A335097.P16664449175419078918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A058933 (n + 1))

end

end A335097.P16664449175419078918

/-! ## A335097.P1791187454078546725

`A083685(n+1)%A058933(n+1)`
-/

namespace A335097.P1791187454078546725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A058933 (n + 1))

end

end A335097.P1791187454078546725

/-!
# A335098: The number of constructible vertically balanced self-avoiding walks of length n on the upper half-plane of a 2D square lattice where the nodes and connecting rods have equal mass.

The programs for A335098, there is no canonical definition to state claims against.
-/

/-! ## A335098.P14909385980307962151

`A133953(n+1)-A033999(A077538(n))`
-/

namespace A335098.P14909385980307962151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133953 (n + 1) - A033999 (A077538 n).toNat

end

end A335098.P14909385980307962151

/-! ## A335098.P4650833093763197477

`A382426(A382372(n))+A382372(n+2)`
-/

namespace A335098.P4650833093763197477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382426 (A382372 n).toNat + A382372 (n + 2)

end

end A335098.P4650833093763197477

/-!
# A335099: Lexicographically earliest sequence of distinct integers greater than 1 such that a(n) mod a(i)^2 >= a(i) for all i < n.

The programs for A335099, there is no canonical definition to state claims against.
-/

/-! ## A335099.P1266092340626092164

`lt[A050605(A362609(n)), A050605(n)]`
-/

namespace A335099.P1266092340626092164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A362609 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335099.P1266092340626092164

/-! ## A335099.P6202356533672728538

`A053438(eq[A087011(n+1), A140437(n+1)])`
-/

namespace A335099.P6202356533672728538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A335099.P6202356533672728538

/-! ## A335099.P13328508195534141371

`lt[A342940(2*n+5), A050603(n)²²]`
-/

namespace A335099.P13328508195534141371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342940 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050603 n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335099.P13328508195534141371

/-! ## A335099.P7882062772312122796

`lt[A080576(A000041(n)), A050603(n)]`
-/

namespace A335099.P7882062772312122796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080576 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335099.P7882062772312122796

/-! ## A335099.P10501282012195249733

`lt[A057077(n), A057077(A144385(n))]`
-/

namespace A335099.P10501282012195249733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A144385 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335099.P10501282012195249733

