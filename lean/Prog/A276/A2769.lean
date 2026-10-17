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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A276900: Number of ordered set partitions of [n] such that for each block b the smallest integer interval containing b has at most ten elements.

The programs for A276900, there is no canonical definition to state claims against.
-/

/-! ## A276900.P5447833103829061648

`A122101(∑[C(A250120(n)+n, 64)²+n])`
-/

namespace A276900.P5447833103829061648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A250120 n + (n : ℤ)).toNat 64 ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276900.P5447833103829061648

/-! ## A276900.P8240410884287700097

`A122101(or(A000217(n), A185284(3*n+4)))`
-/

namespace A276900.P8240410884287700097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (Int.lor (A000217 n) (A185284 (3 * n + 4))).toNat

end

end A276900.P8240410884287700097

/-!
# A276901: Number of positive walks with n steps {-3,-2,-1,1,2,3} starting at the origin, ending at altitude 2, and staying strictly above the x-axis.

The programs for A276901, there is no canonical definition to state claims against.
-/

/-! ## A276901.P8219348708726429043

`A008647(A201841(n+1)+A201816(n+1))`
-/

namespace A276901.P8219348708726429043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A201841 (n + 1) + A201816 (n + 1)).toNat

end

end A276901.P8219348708726429043

/-! ## A276901.P10976671980928597919

`A373114(A371608(n))`
-/

namespace A276901.P10976671980928597919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373114 (A371608 n).toNat

end

end A276901.P10976671980928597919

/-!
# A276902: Number of positive walks with n steps {-3,-2,-1,0,1,2,3} starting at the origin, ending at altitude 1, and staying strictly above the x-axis.

The programs for A276902, there is no canonical definition to state claims against.
-/

/-! ## A276902.P2802655699179577523

`A060143(A068764(n)+n)`
-/

namespace A276902.P2802655699179577523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A068764 n + (n : ℤ)).toNat

end

end A276902.P2802655699179577523

/-! ## A276902.P15599211223045202059

`A060143(Δ[A277130(2^n)]+n)`
-/

namespace A276902.P15599211223045202059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277130 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A276902.P15599211223045202059

/-! ## A276902.P4151276216779929797

`A060143(A166229(n)/gcd(2, A151282(n))+n)`
-/

namespace A276902.P4151276216779929797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (SequenceMachineLib.roundAway ((A166229 n : ℚ) / (Int.gcd 2 (A151282 n) : ℚ) + (n : ℚ))).toNat

end

end A276902.P4151276216779929797

/-!
# A276903: Number of positive walks with n steps {-2,-1,0,1,2} starting at the origin, ending at altitude 2, and staying strictly above the x-axis.

The programs for A276903, there is no canonical definition to state claims against.
-/

/-! ## A276903.P15595490478836911294

`A008618(Δ[Δ[A150050(n)]])`
-/

namespace A276903.P15595490478836911294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150050 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (f1 (n + 1) - f1 n).toNat

end

end A276903.P15595490478836911294

/-! ## A276903.P6712162145582042078

`A008676(A037529(n+1)+6)`
-/

namespace A276903.P6712162145582042078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A037529 (n + 1) + 6).toNat

end

end A276903.P6712162145582042078

/-! ## A276903.P2649269287794780275

`A165190(A150127(n+2)/2)`
-/

namespace A276903.P2649269287794780275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (SequenceMachineLib.roundAway ((A150127 (n + 2) : ℚ) / 2)).toNat

end

end A276903.P2649269287794780275

/-!
# A276904: Number of positive walks with n steps {-3,-2,-1,0,1,2,3} starting at the origin, ending at altitude 2, and staying strictly above the x-axis.

The programs for A276904, there is no canonical definition to state claims against.
-/

/-! ## A276904.P9635281078239754056

`A057354(A336945(n+1)+A028303(n+3))`
-/

namespace A276904.P9635281078239754056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A336945 (n + 1) + A028303 (n + 3)).toNat

end

end A276904.P9635281078239754056

/-! ## A276904.P1240263686758191932

`A066339(Δ[A007446(n)])`
-/

namespace A276904.P1240263686758191932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (f1 (n + 1) - f1 n).toNat

end

end A276904.P1240263686758191932

/-!
# A276906: G.f.: exp( Sum_{n>=1} [ Sum_{k>=1} k^n * x^(2*k-1) ]^n / n ), a power series in x with integer coefficients.

The programs for A276906, there is no canonical definition to state claims against.
-/

/-! ## A276906.P16107190545715979713

`A026819(or(3, A076901(n)))`
-/

namespace A276906.P16107190545715979713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.lor 3 (A076901 n)).toNat

end

end A276906.P16107190545715979713

/-! ## A276906.P5767913184808250317

`A046155(or(3, A076901(n)))`
-/

namespace A276906.P5767913184808250317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.lor 3 (A076901 n)).toNat

end

end A276906.P5767913184808250317

/-! ## A276906.P7594778712098446957

`A026819(A076901(n)+n)`
-/

namespace A276906.P7594778712098446957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A076901 n + (n : ℤ)).toNat

end

end A276906.P7594778712098446957

/-! ## A276906.P6742013977631167988

`A046155(A076901(n)+n)`
-/

namespace A276906.P6742013977631167988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A076901 n + (n : ℤ)).toNat

end

end A276906.P6742013977631167988

/-!
# A276907: L.g.f.: Sum_{n>=1} [ Sum_{k>=1} k^n * x^(2*k-1) ]^n / n.

The programs for A276907, there is no canonical definition to state claims against.
-/

/-! ## A276907.P13670418789390835745

`A210983(A051292(n+1))`
-/

namespace A276907.P13670418789390835745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210983 (A051292 (n + 1)).toNat

end

end A276907.P13670418789390835745

/-! ## A276907.P16415986154039997644

`A210983(round(sqrt(A210695(n)+1)))`
-/

namespace A276907.P16415986154039997644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210983 (SequenceMachineLib.roundAway (Real.sqrt (A210695 n + 1 : ℝ))).toNat

end

end A276907.P16415986154039997644

/-!
# A276909: E.g.f. A(x) satisfies: Series_Reversion( A(x)*exp(A(x)) ) = A(x)*exp(-A(x)).

The programs for A276909, there is no canonical definition to state claims against.
-/

/-! ## A276909.P16392937923045519019

`A056594(n)*A276910(n+1)`
-/

namespace A276909.P16392937923045519019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A276910 (n + 1)

end

end A276909.P16392937923045519019

/-! ## A276909.P15380447184177138968

`A057077(n)*A276910(n+1)`
-/

namespace A276909.P15380447184177138968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A276910 (n + 1)

end

end A276909.P15380447184177138968

/-! ## A276909.P1470437700528181813

`∏[A033999(n)]*A276910(n+1)`
-/

namespace A276909.P1470437700528181813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A276910 (n + 1)

end

end A276909.P1470437700528181813

/-! ## A276909.P7214933919378947950

`A276910(n+1)/A057077(n+1)`
-/

namespace A276909.P7214933919378947950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276910 (n + 1) : ℚ) / (A057077 (n + 1) : ℚ)

end

end A276909.P7214933919378947950

/-! ## A276909.P13045019573513654856

`A049310(A000217(n))*A276910(n+1)`
-/

namespace A276909.P13045019573513654856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A000217 n).toNat * A276910 (n + 1)

end

end A276909.P13045019573513654856

/-! ## A276909.P8972195376334339199

`A179270(n+1)/A318008(n+1)*A276910(n+1)`
-/

namespace A276909.P8972195376334339199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179270 (n + 1) : ℚ) / (A318008 (n + 1) : ℚ) * (A276910 (n + 1) : ℚ)

end

end A276909.P8972195376334339199

/-!
# A276910: E.g.f. A(x) satisfies: inverse of function A(x)*exp(i*A(x)) equals the conjugate, A(x)*exp(-i*A(x)), where i=sqrt(-1).

The programs for A276910, there is no canonical definition to state claims against.
-/

/-! ## A276910.P10351854474331122329

`A056594(n)*A276909(n+1)`
-/

namespace A276910.P10351854474331122329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A276909 (n + 1)

end

end A276910.P10351854474331122329

/-! ## A276910.P12009097367571243353

`A057077(n)*A276909(n+1)`
-/

namespace A276910.P12009097367571243353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A276909 (n + 1)

end

end A276910.P12009097367571243353

/-! ## A276910.P2684567351219585050

`Δ[A014550(n)]*A276909(n+1)`
-/

namespace A276910.P2684567351219585050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A276909 (n + 1)

end

end A276910.P2684567351219585050

/-! ## A276910.P13833379652639969866

`∏[A033999(n)]*A276909(n+1)`
-/

namespace A276910.P13833379652639969866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A276909 (n + 1)

end

end A276910.P13833379652639969866

/-! ## A276910.P3056312195372570164

`A009531(n+1)*A276909(n+1)`
-/

namespace A276910.P3056312195372570164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (n + 1) * A276909 (n + 1)

end

end A276910.P3056312195372570164

/-! ## A276910.P8800554799932428695

`A276909(n+1)/A057077(n+1)`
-/

namespace A276910.P8800554799932428695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276909 (n + 1) : ℚ) / (A057077 (n + 1) : ℚ)

end

end A276910.P8800554799932428695

/-! ## A276910.P367562455302750427

`A049310(A000217(n))*A276909(n+1)`
-/

namespace A276910.P367562455302750427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A000217 n).toNat * A276909 (n + 1)

end

end A276910.P367562455302750427

/-! ## A276910.P15248766337213149624

`A179270(n+1)/A318008(n+1)*A276909(n+1)`
-/

namespace A276910.P15248766337213149624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179270 (n + 1) : ℚ) / (A318008 (n + 1) : ℚ) * (A276909 (n + 1) : ℚ)

end

end A276910.P15248766337213149624

/-!
# A276911: E.g.f. A(x) satisfies: A(A( x*exp(-x) )) = x*exp(x).

The programs for A276911, there is no canonical definition to state claims against.
-/

/-! ## A276911.P15817610533623883893

`(A138398(2^n-n)+char[5])*(n+1)`
-/

namespace A276911.P15817610533623883893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138398 (2 ^ n - n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (n + 1 : ℤ)

end

end A276911.P15817610533623883893

/-! ## A276911.P11189447874562551504

`A028310((n+1)*A088313(n))`
-/

namespace A276911.P11189447874562551504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n + 1 : ℤ) * A088313 n).toNat

end

end A276911.P11189447874562551504

/-!
# A276912: E.g.f.: A(x) satisfies: Series_Reversion( log(A(x)) * A(x) ) = log(A(x)) / A(x).

The programs for A276912, there is no canonical definition to state claims against.
-/

/-! ## A276912.P13903082817253991245

`A023990(∑[(n-1)^n])`
-/

namespace A276912.P13903082817253991245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276912.P13903082817253991245

/-! ## A276912.P17830881976338188705

`A297791(∑[∑[∑{d}[n, #]]+1])`
-/

namespace A276912.P17830881976338188705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297791 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276912.P17830881976338188705

/-!
# A276913: E.g.f. A(x) satisfies: Series_Reversion( A(x)*exp(x) ) = A(x)*exp(-x).

The programs for A276913, there is no canonical definition to state claims against.
-/

/-! ## A276913.P4381386970344176493

`A193342(ceil(abs((1-n)/2)))*A193356(n+1)`
-/

namespace A276913.P4381386970344176493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193342 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat * A193356 (n + 1)

end

end A276913.P4381386970344176493

/-!
# A276914: Subsequence of triangular numbers obtained by adding a square and two smaller triangles, a(n) = n^2 + 2*A000217(A052928(n)).

The programs for A276914, the canonical program `A276914.P5782440633712661028` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276914 has offset 0).

The definition of A276914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276914.P7969822415097471250

`n*(2*n+(-1)^n)`
-/

namespace A276914.P7969822415097471250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * n : ℤ) + (-1) ^ n)

end

end A276914.P7969822415097471250

namespace A276914

/-- `n*(2*n+(-1)^n)` -/
def P7969822415097471250.Spec : Prop :=
  ∀ n, P7969822415097471250.a n = A276914 n

end A276914

/-! ## A276914.P4024338095779752900

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=15, a(4)=36`
-/

namespace A276914.P4024338095779752900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10, 15, 36] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A276914.P4024338095779752900

namespace A276914

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4024338095779752900.Spec : Prop :=
  ∀ n, P4024338095779752900.a n = A276914 n

end A276914

/-! ## A276914.P1868966283561575846

`A000217(A042948(n))`
-/

namespace A276914.P1868966283561575846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A042948 n).toNat

end

end A276914.P1868966283561575846

namespace A276914

/-- `A000217(A042948(n))` -/
def P1868966283561575846.Spec : Prop :=
  ∀ n, P1868966283561575846.a n = A276914 n

end A276914

/-! ## A276914.P5782440633712661028

`n²+2*A000217(A052928(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276914

/-- `n²+2*A000217(A052928(n))` -/
def P5782440633712661028.Spec : Prop :=
  ∀ n, P5782440633712661028.a n = A276914 n

theorem P5782440633712661028.correct : P5782440633712661028.Spec := by
  intro n
  simp only [A276914]

end A276914

/-! ## A276914.P9290548923547139917

`C(or(1, n)+n, 2)`
-/

namespace A276914.P9290548923547139917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n + n) 2

end

end A276914.P9290548923547139917

namespace A276914

/-- `C(or(1, n)+n, 2)` -/
def P9290548923547139917.Spec : Prop :=
  ∀ n, (P9290548923547139917.a n : ℤ) = A276914 n

end A276914

/-! ## A276914.P11170832303304783662

`lcm(n, xor(1, n)+n)`
-/

namespace A276914.P11170832303304783662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.xor 1 n + n)

end

end A276914.P11170832303304783662

namespace A276914

/-- `lcm(n, xor(1, n)+n)` -/
def P11170832303304783662.Spec : Prop :=
  ∀ n, (P11170832303304783662.a n : ℤ) = A276914 n

end A276914

/-! ## A276914.P3327916319172119973

`C(Δ[n²]-and(1, n), 2)`
-/

namespace A276914.P3327916319172119973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.land 1 n : ℤ)).toNat 2

end

end A276914.P3327916319172119973

namespace A276914

/-- `C(Δ[n²]-and(1, n), 2)` -/
def P3327916319172119973.Spec : Prop :=
  ∀ n, (P3327916319172119973.a n : ℤ) = A276914 n

end A276914

/-! ## A276914.P7045858570756433283

`C(and(n, -2)+n+1, 2)`
-/

namespace A276914.P7045858570756433283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-2) + (n + 1 : ℤ)).toNat 2

end

end A276914.P7045858570756433283

namespace A276914

/-- `C(and(n, -2)+n+1, 2)` -/
def P7045858570756433283.Spec : Prop :=
  ∀ n, (P7045858570756433283.a n : ℤ) = A276914 n

end A276914

/-! ## A276914.P8005430584957880770

`C(char[2*n]+2*n, 2)`
-/

namespace A276914.P8005430584957880770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 2 * n) 2

end

end A276914.P8005430584957880770

namespace A276914

/-- `C(char[2*n]+2*n, 2)` -/
def P8005430584957880770.Spec : Prop :=
  ∀ n, (P8005430584957880770.a n : ℤ) = A276914 n

end A276914

/-! ## A276914.P14684123553650271587

`record[C(n+1, and(2, n+2))]`
-/

namespace A276914.P14684123553650271587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.land 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276914.P14684123553650271587

namespace A276914

/-- `record[C(n+1, and(2, n+2))]` -/
def P14684123553650271587.Spec : Prop :=
  ∀ n, (P14684123553650271587.a n : ℤ) = A276914 n

end A276914

/-! ## A276914.P5218929764403970993

`abs(n*or(2, -(2*n+1)))`
-/

namespace A276914.P5218929764403970993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor 2 (-(2 * n + 1 : ℤ))|

end

end A276914.P5218929764403970993

namespace A276914

/-- `abs(n*or(2, -(2*n+1)))` -/
def P5218929764403970993.Spec : Prop :=
  ∀ n, P5218929764403970993.a n = A276914 n

end A276914

/-! ## A276914.P13719506060924968788

`-n*or(2, -(2*n+1))`
-/

namespace A276914.P13719506060924968788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor 2 (-(2 * n + 1 : ℤ)))

end

end A276914.P13719506060924968788

namespace A276914

/-- `-n*or(2, -(2*n+1))` -/
def P13719506060924968788.Spec : Prop :=
  ∀ n, P13719506060924968788.a n = A276914 n

end A276914

/-! ## A276914.P14853565242376717016

`2*n*(n-n%2)+n`
-/

namespace A276914.P14853565242376717016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) - ((n % 2 : ℕ) : ℤ))) + (n : ℤ)

end

end A276914.P14853565242376717016

namespace A276914

/-- `2*n*(n-n%2)+n` -/
def P14853565242376717016.Spec : Prop :=
  ∀ n, P14853565242376717016.a n = A276914 n

end A276914

/-!
# A276915: Indices of triangular numbers in A276914 which are also pentagonal.

The programs for A276915, the canonical program `A276915.P8468349229582316141` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276915 has offset 0).

The definition of A276915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276915.P8468349229582316141

`14*a(n-1)-a(n-2)-4*(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276915

/-- `14*a(n-1)-a(n-2)-4*(-1)^n` -/
def P8468349229582316141.Spec : Prop :=
  ∀ n, P8468349229582316141.a n = A276915 n

theorem P8468349229582316141.correct : P8468349229582316141.Spec := by
  intro n
  simp only [A276915]

end A276915

/-! ## A276915.P1621378900747498176

`13*a(n-1)+13*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A276915.P1621378900747498176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10] fun n a =>
  13 * a (n - 1) + 13 * a (n - 2) - a (n - 3)

end

end A276915.P1621378900747498176

namespace A276915

/-- `13*a(n-1)+13*a(n-2)-a(n-3)` -/
def P1621378900747498176.Spec : Prop :=
  ∀ n, P1621378900747498176.a n = A276915 n

end A276915

/-! ## A276915.P10846479502431587764

`ceil(A046175(n)/2)`
-/

namespace A276915.P10846479502431587764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046175 n : ℚ) / 2⌉

end

end A276915.P10846479502431587764

namespace A276915

/-- `ceil(A046175(n)/2)` -/
def P10846479502431587764.Spec : Prop :=
  ∀ n, P10846479502431587764.a n = A276915 n

end A276915

/-! ## A276915.P16154051727248701489

`floor(A101879(2*n)/2)`
-/

namespace A276915.P16154051727248701489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101879 (2 * n) : ℚ) / 2⌋

end

end A276915.P16154051727248701489

namespace A276915

/-- `floor(A101879(2*n)/2)` -/
def P16154051727248701489.Spec : Prop :=
  ∀ n, P16154051727248701489.a n = A276915 n

end A276915

/-! ## A276915.P8771677550145196818

`round(A001835(2*n)/4)`
-/

namespace A276915.P8771677550145196818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001835 (2 * n) : ℚ) / 4)

end

end A276915.P8771677550145196818

namespace A276915

/-- `round(A001835(2*n)/4)` -/
def P8771677550145196818.Spec : Prop :=
  ∀ n, P8771677550145196818.a n = A276915 n

end A276915

/-! ## A276915.P7657795244716940056

`round(A005246(4*n)/4)`
-/

namespace A276915.P7657795244716940056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005246 (4 * n) : ℚ) / 4)

end

end A276915.P7657795244716940056

namespace A276915

/-- `round(A005246(4*n)/4)` -/
def P7657795244716940056.Spec : Prop :=
  ∀ n, P7657795244716940056.a n = A276915 n

end A276915

/-! ## A276915.P15930317679898441827

`A001835(2*n-1)-a(n-1)` with `a(0)=0`
-/

namespace A276915.P15930317679898441827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001835 (2 * n - 1) - a (n - 1)

end

end A276915.P15930317679898441827

namespace A276915

/-- `A001835(2*n-1)-a(n-1)` -/
def P15930317679898441827.Spec : Prop :=
  ∀ n, P15930317679898441827.a n = A276915 n

end A276915

/-! ## A276915.P11803828516711145127

`2*A099270(n)-A007655(n+1)`
-/

namespace A276915.P11803828516711145127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099270 n - A007655 (n + 1)

end

end A276915.P11803828516711145127

namespace A276915

/-- `2*A099270(n)-A007655(n+1)` -/
def P11803828516711145127.Spec : Prop :=
  ∀ n, P11803828516711145127.a n = A276915 n

end A276915

/-!
# A276916: Subsequence of centered square numbers obtained by adding four triangles from A276914 and a central element, a(n) = 4*A276914(n) + 1.

The programs for A276916, the canonical program `A276916.P17251283384701176591` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276916 has offset 0).

The definition of A276916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276916.P17251283384701176591

`4*n*(2*n+(-1)^n)+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276916

/-- `4*n*(2*n+(-1)^n)+1` -/
def P17251283384701176591.Spec : Prop :=
  ∀ n, P17251283384701176591.a n = A276916 n

theorem P17251283384701176591.correct : P17251283384701176591.Spec := by
  intro n
  simp only [A276916]

end A276916

/-! ## A276916.P6836473823939110169

`ceil((2*lt[n, or(2, n)]+1)²/2)`
-/

namespace A276916.P6836473823939110169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) ^ 2 : ℚ) / 2⌉

end

end A276916.P6836473823939110169

namespace A276916

/-- `ceil((2*lt[n, or(2, n)]+1)²/2)` -/
def P6836473823939110169.Spec : Prop :=
  ∀ n, P6836473823939110169.a n = A276916 n

end A276916

/-! ## A276916.P11374239125235306004

`ceil(A047471(n+1)²/2)`
-/

namespace A276916.P11374239125235306004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047471 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A276916.P11374239125235306004

namespace A276916

/-- `ceil(A047471(n+1)²/2)` -/
def P11374239125235306004.Spec : Prop :=
  ∀ n, P11374239125235306004.a n = A276916 n

end A276916

/-! ## A276916.P3308378544338444997

`record[((n+1)²+n²)*A133872(n)]`
-/

namespace A276916.P3308378544338444997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n ^ 2 : ℤ) * A133872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276916.P3308378544338444997

namespace A276916

/-- `record[((n+1)²+n²)*A133872(n)]` -/
def P3308378544338444997.Spec : Prop :=
  ∀ n, P3308378544338444997.a n = A276916 n

end A276916

/-! ## A276916.P8908723321797211030

`record[and(2, n+2)*∑[2*n]+1]`
-/

namespace A276916.P8908723321797211030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276916.P8908723321797211030

namespace A276916

/-- `record[and(2, n+2)*∑[2*n]+1]` -/
def P8908723321797211030.Spec : Prop :=
  ∀ n, (P8908723321797211030.a n : ℤ) = A276916 n

end A276916

/-! ## A276916.P2001455847154403672

`A001844(comp[or(2, n)])`
-/

namespace A276916.P2001455847154403672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A276916.P2001455847154403672

namespace A276916

/-- `A001844(comp[or(2, n)])` -/
def P2001455847154403672.Spec : Prop :=
  ∀ n, P2001455847154403672.a n = A276916 n

end A276916

/-! ## A276916.P12992413596160744353

`ceil(A047476(2*(n+1))²/2)`
-/

namespace A276916.P12992413596160744353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047476 (2 * (n + 1)) ^ 2 : ℚ) / 2⌉

end

end A276916.P12992413596160744353

namespace A276916

/-- `ceil(A047476(2*(n+1))²/2)` -/
def P12992413596160744353.Spec : Prop :=
  ∀ n, P12992413596160744353.a n = A276916 n

end A276916

/-! ## A276916.P10537573250923465356

`record[((n+1)²+n²)*A057077(n)]`
-/

namespace A276916.P10537573250923465356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n ^ 2 : ℤ) * A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276916.P10537573250923465356

namespace A276916

/-- `record[((n+1)²+n²)*A057077(n)]` -/
def P10537573250923465356.Spec : Prop :=
  ∀ n, P10537573250923465356.a n = A276916 n

end A276916

/-! ## A276916.P17410664669118339897

`A001844(A042948(n))`
-/

namespace A276916.P17410664669118339897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A042948 n).toNat

end

end A276916.P17410664669118339897

namespace A276916

/-- `A001844(A042948(n))` -/
def P17410664669118339897.Spec : Prop :=
  ∀ n, P17410664669118339897.a n = A276916 n

end A276916

/-! ## A276916.P14956989019014330568

`A001844(A052928(n)+n)`
-/

namespace A276916.P14956989019014330568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A052928 n + (n : ℤ)).toNat

end

end A276916.P14956989019014330568

namespace A276916

/-- `A001844(A052928(n)+n)` -/
def P14956989019014330568.Spec : Prop :=
  ∀ n, P14956989019014330568.a n = A276916 n

end A276916

/-! ## A276916.P11988622844207966354

`record[xor(A046092(n), A057077(n))]`
-/

namespace A276916.P11988622844207966354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046092 n) (A057077 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276916.P11988622844207966354

namespace A276916

/-- `record[xor(A046092(n), A057077(n))]` -/
def P11988622844207966354.Spec : Prop :=
  ∀ n, P11988622844207966354.a n = A276916 n

end A276916

/-! ## A276916.P4264274381295648606

`A001844(A042963(n+1)-1)`
-/

namespace A276916.P4264274381295648606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A042963 (n + 1) - 1).toNat

end

end A276916.P4264274381295648606

namespace A276916

/-- `A001844(A042963(n+1)-1)` -/
def P4264274381295648606.Spec : Prop :=
  ∀ n, P4264274381295648606.a n = A276916 n

end A276916

/-! ## A276916.P16713198362439445940

`A001844(A042964(n+1)-2)`
-/

namespace A276916.P16713198362439445940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A042964 (n + 1) - 2).toNat

end

end A276916.P16713198362439445940

namespace A276916

/-- `A001844(A042964(n+1)-2)` -/
def P16713198362439445940.Spec : Prop :=
  ∀ n, P16713198362439445940.a n = A276916 n

end A276916

/-! ## A276916.P5747835153870625394

`A001844(A047467(n+1)/2)`
-/

namespace A276916.P5747835153870625394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (SequenceMachineLib.roundAway ((A047467 (n + 1) : ℚ) / 2)).toNat

end

end A276916.P5747835153870625394

namespace A276916

/-- `A001844(A047467(n+1)/2)` -/
def P5747835153870625394.Spec : Prop :=
  ∀ n, P5747835153870625394.a n = A276916 n

end A276916

/-! ## A276916.P7486737165859044661

`A001844(A098180(2*n)-1)`
-/

namespace A276916.P7486737165859044661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A098180 (2 * n) - 1).toNat

end

end A276916.P7486737165859044661

namespace A276916

/-- `A001844(A098180(2*n)-1)` -/
def P7486737165859044661.Spec : Prop :=
  ∀ n, P7486737165859044661.a n = A276916 n

end A276916

/-! ## A276916.P18127490953223799330

`A001844(A109613(n)-1+n)`
-/

namespace A276916.P18127490953223799330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A109613 n - 1 + (n : ℤ)).toNat

end

end A276916.P18127490953223799330

namespace A276916

/-- `A001844(A109613(n)-1+n)` -/
def P18127490953223799330.Spec : Prop :=
  ∀ n, P18127490953223799330.a n = A276916 n

end A276916

/-! ## A276916.P9404019185319442794

`A001844(n-(1-A109613(n)))`
-/

namespace A276916.P9404019185319442794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 ((n : ℤ) - (1 - A109613 n)).toNat

end

end A276916.P9404019185319442794

namespace A276916

/-- `A001844(n-(1-A109613(n)))` -/
def P9404019185319442794.Spec : Prop :=
  ∀ n, P9404019185319442794.a n = A276916 n

end A276916

/-! ## A276916.P10941600658487605678

`A001844(2*A004526(n)+n)`
-/

namespace A276916.P10941600658487605678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (2 * A004526 n + (n : ℤ)).toNat

end

end A276916.P10941600658487605678

namespace A276916

/-- `A001844(2*A004526(n)+n)` -/
def P10941600658487605678.Spec : Prop :=
  ∀ n, P10941600658487605678.a n = A276916 n

end A276916

/-! ## A276916.P4812792635170394128

`A001844(2*n-A000035(n))`
-/

namespace A276916.P4812792635170394128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 ((2 * n : ℤ) - A000035 n).toNat

end

end A276916.P4812792635170394128

namespace A276916

/-- `A001844(2*n-A000035(n))` -/
def P4812792635170394128.Spec : Prop :=
  ∀ n, P4812792635170394128.a n = A276916 n

end A276916

/-! ## A276916.P4790795028852696460

`A001844(2*n+1-A000034(n))`
-/

namespace A276916.P4790795028852696460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 ((2 * n + 1 : ℤ) - A000034 n).toNat

end

end A276916.P4790795028852696460

namespace A276916

/-- `A001844(2*n+1-A000034(n))` -/
def P4790795028852696460.Spec : Prop :=
  ∀ n, P4790795028852696460.a n = A276916 n

end A276916

/-!
# A276917: Numbers obtained by alternatively adding centered pentagonal layers of 5*(2^n-1) and 5*(3^n-1) elements.

The programs for A276917, there is no canonical definition to state claims against.
-/

/-! ## A276917.P6187636659378869943

`eq[2, A005811(A001742(n+1))]`
-/

namespace A276917.P6187636659378869943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A001742 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276917.P6187636659378869943

/-! ## A276917.P13609582337447847330

`A279001(A332669(n)+A325244(2*(n+2)))`
-/

namespace A276917.P13609582337447847330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279001 (A332669 n + A325244 (2 * (n + 2))).toNat

end

end A276917.P13609582337447847330

/-!
# A276918: a(2n) = A060867(n+1), a(2n+1) = A092440(n+1).

The programs for A276918, the canonical program `A276918.P3989954430826876645` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276918 has offset 0).

The definition of A276918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276918.P3989954430826876645

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=25`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276918

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P3989954430826876645.Spec : Prop :=
  ∀ n, P3989954430826876645.a n = A276918 n

theorem P3989954430826876645.correct : P3989954430826876645.Spec := by
  intro n
  simp only [A276918]

end A276918

/-! ## A276918.P13384077400733867324

`∑[2^n]+2*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A276918.P13384077400733867324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 2)

end

end A276918.P13384077400733867324

namespace A276918

/-- `∑[2^n]+2*a(n-2)` -/
def P13384077400733867324.Spec : Prop :=
  ∀ n, (P13384077400733867324.a n : ℤ) = A276918 n

end A276918

/-! ## A276918.P698038495978519919

`a(n-2)+∑[2^n]+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A276918.P698038495978519919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2))

end

end A276918.P698038495978519919

namespace A276918

/-- `a(n-2)+∑[2^n]+a(n-2)` -/
def P698038495978519919.Spec : Prop :=
  ∀ n, (P698038495978519919.a n : ℤ) = A276918 n

end A276918

/-! ## A276918.P2859850774560592054

`A208901(n+2)+1`
-/

namespace A276918.P2859850774560592054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208901 (n + 2) + 1

end

end A276918.P2859850774560592054

namespace A276918

/-- `A208901(n+2)+1` -/
def P2859850774560592054.Spec : Prop :=
  ∀ n, P2859850774560592054.a n = A276918 n

end A276918

/-! ## A276918.P6208770015656354598

`A208900(n+2)-1`
-/

namespace A276918.P6208770015656354598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208900 (n + 2) - 1

end

end A276918.P6208770015656354598

namespace A276918

/-- `A208900(n+2)-1` -/
def P6208770015656354598.Spec : Prop :=
  ∀ n, P6208770015656354598.a n = A276918 n

end A276918

/-! ## A276918.P328388098839833669

`∑[A156232(n+2)]+1`
-/

namespace A276918.P328388098839833669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156232 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A276918.P328388098839833669

namespace A276918

/-- `∑[A156232(n+2)]+1` -/
def P328388098839833669.Spec : Prop :=
  ∀ n, P328388098839833669.a n = A276918 n

end A276918

/-! ## A276918.P7115261795791649136

`∑[2*A014236(n)]+1`
-/

namespace A276918.P7115261795791649136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A276918.P7115261795791649136

namespace A276918

/-- `∑[2*A014236(n)]+1` -/
def P7115261795791649136.Spec : Prop :=
  ∀ n, P7115261795791649136.a n = A276918 n

end A276918

/-! ## A276918.P17335830167950412077

`2*A233411(n+1)+1`
-/

namespace A276918.P17335830167950412077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233411 (n + 1) + 1

end

end A276918.P17335830167950412077

namespace A276918

/-- `2*A233411(n+1)+1` -/
def P17335830167950412077.Spec : Prop :=
  ∀ n, P17335830167950412077.a n = A276918 n

end A276918

/-! ## A276918.P8656099885122414337

`2^(n+2)-A052551(n+2)`
-/

namespace A276918.P8656099885122414337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A052551 (n + 2)

end

end A276918.P8656099885122414337

namespace A276918

/-- `2^(n+2)-A052551(n+2)` -/
def P8656099885122414337.Spec : Prop :=
  ∀ n, P8656099885122414337.a n = A276918 n

end A276918

/-! ## A276918.P9303649432837614313

`a(n-1)+4*A007179(n)` with `a(0)=1`
-/

namespace A276918.P9303649432837614313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * A007179 n

end

end A276918.P9303649432837614313

namespace A276918

/-- `a(n-1)+4*A007179(n)` -/
def P9303649432837614313.Spec : Prop :=
  ∀ n, P9303649432837614313.a n = A276918 n

end A276918

/-! ## A276918.P579145354080250180

`A395108(n)+A014236(n)`
-/

namespace A276918.P579145354080250180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395108 n + A014236 n

end

end A276918.P579145354080250180

namespace A276918

/-- `A395108(n)+A014236(n)` -/
def P579145354080250180.Spec : Prop :=
  ∀ n, P579145354080250180.a n = A276918 n

end A276918

/-! ## A276918.P3202924135339714298

`∪[A060867(n+1), A092440(n)]`
-/

namespace A276918.P3202924135339714298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276918.P3202924135339714298

namespace A276918

/-- `∪[A060867(n+1), A092440(n)]` -/
def P3202924135339714298.Spec : Prop :=
  ∀ n, (P3202924135339714298.a n : ℤ) = A276918 n

end A276918

/-! ## A276918.P18291472051496166627

`A052551(n)²+Δ[A052551(n)]²`
-/

namespace A276918.P18291472051496166627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n ^ 2 + (f1 (n + 1) - f1 n) ^ 2

end

end A276918.P18291472051496166627

namespace A276918

/-- `A052551(n)²+Δ[A052551(n)]²` -/
def P18291472051496166627.Spec : Prop :=
  ∀ n, P18291472051496166627.a n = A276918 n

end A276918

/-! ## A276918.P3371022214161584515

`A274230(n+1)+A007179(n+2)`
-/

namespace A276918.P3371022214161584515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (n + 1) + A007179 (n + 2)

end

end A276918.P3371022214161584515

namespace A276918

/-- `A274230(n+1)+A007179(n+2)` -/
def P3371022214161584515.Spec : Prop :=
  ∀ n, P3371022214161584515.a n = A276918 n

end A276918

/-! ## A276918.P427073321000307385

`A274230(n+2)+A077957(n+1)`
-/

namespace A276918.P427073321000307385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (n + 2) + A077957 (n + 1)

end

end A276918.P427073321000307385

namespace A276918

/-- `A274230(n+2)+A077957(n+1)` -/
def P427073321000307385.Spec : Prop :=
  ∀ n, P427073321000307385.a n = A276918 n

end A276918

/-! ## A276918.P8709998118351560246

`A048578(n+1)-A060546(n+3)`
-/

namespace A276918.P8709998118351560246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (n + 1) - A060546 (n + 3)

end

end A276918.P8709998118351560246

namespace A276918

/-- `A048578(n+1)-A060546(n+3)` -/
def P8709998118351560246.Spec : Prop :=
  ∀ n, P8709998118351560246.a n = A276918 n

end A276918

/-! ## A276918.P735844489473716090

`A274230(n+1)+A274638(n+1)+1`
-/

namespace A276918.P735844489473716090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (n + 1) + (A274638 (n + 1) + 1)

end

end A276918.P735844489473716090

namespace A276918

/-- `A274230(n+1)+A274638(n+1)+1` -/
def P735844489473716090.Spec : Prop :=
  ∀ n, P735844489473716090.a n = A276918 n

end A276918

/-! ## A276918.P7508176293226567352

`A027556(n+1)+A052957(n+1)-1`
-/

namespace A276918.P7508176293226567352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 (n + 1) + (A052957 (n + 1) - 1)

end

end A276918.P7508176293226567352

namespace A276918

/-- `A027556(n+1)+A052957(n+1)-1` -/
def P7508176293226567352.Spec : Prop :=
  ∀ n, P7508176293226567352.a n = A276918 n

end A276918

/-! ## A276918.P3503697830375941875

`A122746(n+1)+1-A060546(n+1)`
-/

namespace A276918.P3503697830375941875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 (n + 1) + (1 - A060546 (n + 1))

end

end A276918.P3503697830375941875

namespace A276918

/-- `A122746(n+1)+1-A060546(n+1)` -/
def P3503697830375941875.Spec : Prop :=
  ∀ n, P3503697830375941875.a n = A276918 n

end A276918

/-!
# A276919: Number of solutions to x^3 + y^3 + z^3 + t^3 == 1 (mod n) for 1 <= x, y, z, t <= n.

The programs for A276919, there is no canonical definition to state claims against.
-/

/-! ## A276919.P12539501265875393559

`(n+1)*A350656((n+1)²)`
-/

namespace A276919.P12539501265875393559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A350656 ((n + 1) ^ 2)

end

end A276919.P12539501265875393559

/-! ## A276919.P4255412446543311533

`(∑[record[A335434(n+1)]]+n)*(n+1)`
-/

namespace A276919.P4255412446543311533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) * (n + 1 : ℤ)

end

end A276919.P4255412446543311533

/-! ## A276919.P8645923422171025026

`A000578(n+1)-A324518(A376537(2*n+1))`
-/

namespace A276919.P8645923422171025026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - A324518 (A376537 (2 * n + 1)).toNat

end

end A276919.P8645923422171025026

/-!
# A276921: Number A(n,k) of ordered set partitions of [n] with at most k elements per block; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A276921, there is no canonical definition to state claims against.
-/

/-! ## A276921.P11181636314615679673

`gcd(A129835(A293135(n)), A293301(n))`
-/

namespace A276921.P11181636314615679673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129835 (A293135 n).toNat) (A293301 n)

end

end A276921.P11181636314615679673

/-! ## A276921.P16344727173969600202

`A276890(n)+A151670(A057372(n+1))`
-/

namespace A276921.P16344727173969600202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 n + A151670 (A057372 (n + 1)).toNat

end

end A276921.P16344727173969600202

/-! ## A276921.P16090521539544305224

`A129835(A293135(n))/A134868(A273730(n))`
-/

namespace A276921.P16090521539544305224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129835 (A293135 n).toNat : ℚ) / (A134868 (A273730 n).toNat : ℚ)

end

end A276921.P16090521539544305224

/-! ## A276921.P16437867723377276000

`gcd(A045945(A229637(n+1)), A293135(n))`
-/

namespace A276921.P16437867723377276000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045945 (A229637 (n + 1)).toNat) (A293135 n)

end

end A276921.P16437867723377276000

/-! ## A276921.P14698296616166090846

`A276890(n)+A000122(A259393(n+4))`
-/

namespace A276921.P14698296616166090846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 n + A000122 (A259393 (n + 4)).toNat

end

end A276921.P14698296616166090846

/-!
# A276922: Number T(n,k) of ordered set partitions of [n] where the maximal block size equals k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A276922, there is no canonical definition to state claims against.
-/

/-! ## A276922.P6018152711215829639

`A050320(A000010(n+1))*A122311(A262071(n))`
-/

namespace A276922.P6018152711215829639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A000010 (n + 1)).toNat * A122311 (A262071 n).toNat

end

end A276922.P6018152711215829639

/-! ## A276922.P7161904870673267932

`xor(A185284(3*n), A271703(n))`
-/

namespace A276922.P7161904870673267932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (3 * n)) (A271703 n)

end

end A276922.P7161904870673267932

/-!
# A276923: Number of ordered set partitions of [2n] where the maximal block size equals n.

The programs for A276923, there is no canonical definition to state claims against.
-/

/-! ## A276923.P8528830436149024415

`A276922(∑[4*n])`
-/

namespace A276923.P8528830436149024415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276923.P8528830436149024415

/-! ## A276923.P17734237870407757257

`record[A276922(n*A008619(n))]`
-/

namespace A276923.P17734237870407757257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276922 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276923.P17734237870407757257

/-! ## A276923.P7198089947644025321

`record[gcd(A112467(n), A276922(n))]`
-/

namespace A276923.P7198089947644025321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A276922 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276923.P7198089947644025321

/-! ## A276923.P1765344967755486877

`lcm(A057077(n), A276922(A046092(n)))`
-/

namespace A276923.P1765344967755486877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A276922 (A046092 n).toNat)

end

end A276923.P1765344967755486877

/-! ## A276923.P17015154741525809002

`A276922(A046092(n))%∏[A141214(n)]`
-/

namespace A276923.P17015154741525809002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276922 (A046092 n).toNat) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A276923.P17015154741525809002

/-!
# A276924: Number of ordered set partitions of [n] with at most four elements per block.

The programs for A276924, there is no canonical definition to state claims against.
-/

/-! ## A276924.P7167324866995827677

`A276921(A052905(n+2))`
-/

namespace A276924.P7167324866995827677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A052905 (n + 2)).toNat

end

end A276924.P7167324866995827677

/-! ## A276924.P4998001595866772668

`A276921(eq[4, A025581(n)])`
-/

namespace A276924.P4998001595866772668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276924.P4998001595866772668

/-! ## A276924.P3214233410336502017

`A276921(A055999(n+2)+1)`
-/

namespace A276924.P3214233410336502017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A055999 (n + 2) + 1).toNat

end

end A276924.P3214233410336502017

/-! ## A276924.P6557197968322719356

`A276921(A046691(n+3)-1)`
-/

namespace A276924.P6557197968322719356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A046691 (n + 3) - 1).toNat

end

end A276924.P6557197968322719356

/-! ## A276924.P12239340109917558307

`A276921(A027379(n+3)-2)`
-/

namespace A276924.P12239340109917558307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A027379 (n + 3) - 2).toNat

end

end A276924.P12239340109917558307

/-! ## A276924.P3070792390550059763

`A276921(A000124(n+5)-6)`
-/

namespace A276924.P3070792390550059763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A000124 (n + 5) - 6).toNat

end

end A276924.P3070792390550059763

/-! ## A276924.P2088615270541601561

`A276921(Δ[Δ[A022815(n+1)]])`
-/

namespace A276924.P2088615270541601561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (f1 (n + 1) - f1 n).toNat

end

end A276924.P2088615270541601561

/-! ## A276924.P6091553779454342096

`A276921(Δ[A023545(n+1)]-1)`
-/

namespace A276924.P6091553779454342096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (f1 (n + 1) - f1 n - 1).toNat

end

end A276924.P6091553779454342096

/-! ## A276924.P3170155479113476226

`A276921(A059100(n+4)-A167499(n+1))`
-/

namespace A276924.P3170155479113476226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A059100 (n + 4) - A167499 (n + 1)).toNat

end

end A276924.P3170155479113476226

/-!
# A276925: Number of ordered set partitions of [n] with at most five elements per block.

The programs for A276925, there is no canonical definition to state claims against.
-/

/-! ## A276925.P319100496155170432

`A276921(A055999(n+3))`
-/

namespace A276925.P319100496155170432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A055999 (n + 3)).toNat

end

end A276925.P319100496155170432

/-! ## A276925.P17429206241603891018

`A276921(eq[5, A025581(n)])`
-/

namespace A276925.P17429206241603891018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276925.P17429206241603891018

/-! ## A276925.P17418280160717146084

`A276921(Δ[A023551(n+1)])`
-/

namespace A276925.P17418280160717146084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (f1 (n + 1) - f1 n).toNat

end

end A276925.P17418280160717146084

/-! ## A276925.P3006149760731646749

`A276921(A052905(n+3)-1)`
-/

namespace A276925.P3006149760731646749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A052905 (n + 3) - 1).toNat

end

end A276925.P3006149760731646749

/-! ## A276925.P13367592988073758522

`A276921(A000217(n+6)-6)`
-/

namespace A276925.P13367592988073758522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A000217 (n + 6) - 6).toNat

end

end A276925.P13367592988073758522

/-! ## A276925.P7685811156620888495

`A276921(eq[6, A004736(n+1)])`
-/

namespace A276925.P7685811156620888495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276925.P7685811156620888495

/-! ## A276925.P6585010919320024100

`A276921(Δ[A023545(n+2)]-2)`
-/

namespace A276925.P6585010919320024100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (f1 (n + 1) - f1 n - 2).toNat

end

end A276925.P6585010919320024100

/-! ## A276925.P765891430355672898

`A276921(A000096(n+4)+n+1)`
-/

namespace A276925.P765891430355672898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A276925.P765891430355672898

/-! ## A276925.P16622377647852549746

`A276921(A000124(n+5)+n-1)`
-/

namespace A276925.P16622377647852549746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A276925.P16622377647852549746

/-!
# A276926: Number of ordered set partitions of [n] with at most six elements per block.

The programs for A276926, there is no canonical definition to state claims against.
-/

/-! ## A276926.P14625097868071738195

`A276921(eq[6, A025581(n)])`
-/

namespace A276926.P14625097868071738195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276926.P14625097868071738195

/-! ## A276926.P2488878184114295067

`A276921(eq[13, A099375(n)])`
-/

namespace A276926.P2488878184114295067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276926.P2488878184114295067

/-! ## A276926.P397399831725234831

`A276921(eq[64, A130321(n)])`
-/

namespace A276926.P397399831725234831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276926.P397399831725234831

/-! ## A276926.P7898857745366163289

`A276921(A055999(n+4)-1)`
-/

namespace A276926.P7898857745366163289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A055999 (n + 4) - 1).toNat

end

end A276926.P7898857745366163289

/-! ## A276926.P4303300683949854152

`A276921(eq[7, A004736(n+1)])`
-/

namespace A276926.P4303300683949854152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276926.P4303300683949854152

/-! ## A276926.P13513762443587386556

`A276921(Δ[A023551(n+2)]-1)`
-/

namespace A276926.P13513762443587386556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (f1 (n + 1) - f1 n - 1).toNat

end

end A276926.P13513762443587386556

/-!
# A276927: Number of ordered set partitions of [n] with at most seven elements per block.

The programs for A276927, there is no canonical definition to state claims against.
-/

/-! ## A276927.P10800031653707071368

`A276921(A155212(n+4))`
-/

namespace A276927.P10800031653707071368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A155212 (n + 4)).toNat

end

end A276927.P10800031653707071368

/-! ## A276927.P15984883453034596110

`A276921(eq[7, A025581(n)])`
-/

namespace A276927.P15984883453034596110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276927.P15984883453034596110

/-! ## A276927.P15641640747484315931

`A276921(eq[8, A193739(n)])`
-/

namespace A276927.P15641640747484315931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276927.P15641640747484315931

/-! ## A276927.P2241760480874913215

`A276921(eq[15, A099375(n)])`
-/

namespace A276927.P2241760480874913215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276927.P2241760480874913215

/-! ## A276927.P18088517482020726547

`A276921(A161680(n+9)-8)`
-/

namespace A276927.P18088517482020726547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A161680 (n + 9) - 8).toNat

end

end A276927.P18088517482020726547

/-! ## A276927.P3269665313030675673

`A276921(eq[8, A004736(n+1)])`
-/

namespace A276927.P3269665313030675673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276927.P3269665313030675673

/-! ## A276927.P12452003462674513531

`A276921(eq[15, A272172(n+1)])`
-/

namespace A276927.P12452003462674513531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276927.P12452003462674513531

/-!
# A276928: Number of ordered set partitions of [n] with at most eight elements per block.

The programs for A276928, there is no canonical definition to state claims against.
-/

/-! ## A276928.P2033060247643622331

`A276921(eq[8, A025581(n)])`
-/

namespace A276928.P2033060247643622331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276928.P2033060247643622331

/-! ## A276928.P9432468383851809046

`A276921(eq[9, A193739(n)])`
-/

namespace A276928.P9432468383851809046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276928.P9432468383851809046

/-! ## A276928.P14839181287302052523

`A276921(eq[17, A099375(n)])`
-/

namespace A276928.P14839181287302052523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276928.P14839181287302052523

/-! ## A276928.P10109869809001811520

`A276921(A000096(n+8)-8)`
-/

namespace A276928.P10109869809001811520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A000096 (n + 8) - 8).toNat

end

end A276928.P10109869809001811520

/-! ## A276928.P13680145672306413302

`A276921(eq[9, A004736(n+1)])`
-/

namespace A276928.P13680145672306413302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276928.P13680145672306413302

/-!
# A276929: Number of ordered set partitions of [n] with at most nine elements per block.

The programs for A276929, there is no canonical definition to state claims against.
-/

/-! ## A276929.P6107052637720871110

`A276921(A056000(n+6))`
-/

namespace A276929.P6107052637720871110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A056000 (n + 6)).toNat

end

end A276929.P6107052637720871110

/-! ## A276929.P2396018400707771206

`A276921(eq[9, A025581(n)])`
-/

namespace A276929.P2396018400707771206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276929.P2396018400707771206

/-! ## A276929.P11757153761211200354

`A276921(eq[19, A099375(n)])`
-/

namespace A276929.P11757153761211200354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276929.P11757153761211200354

/-! ## A276929.P16545625197086838201

`A276921(eq[10, A004736(n+1)])`
-/

namespace A276929.P16545625197086838201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276929.P16545625197086838201

/-! ## A276929.P11319555802213194856

`A276921(A000217(n+9)+n)`
-/

namespace A276929.P11319555802213194856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A000217 (n + 9) + (n : ℤ)).toNat

end

end A276929.P11319555802213194856

/-! ## A276929.P16267748181583452997

`A276921(A000124(n+9)+A004273(n)-n)`
-/

namespace A276929.P16267748181583452997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (A000124 (n + 9) + (A004273 n - (n : ℤ))).toNat

end

end A276929.P16267748181583452997

/-!
# A276930: Number of ordered set partitions of [n] with at most ten elements per block.

The programs for A276930, there is no canonical definition to state claims against.
-/

/-! ## A276930.P4836815485032985131

`A276921(eq[10, A025581(n)])`
-/

namespace A276930.P4836815485032985131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276930.P4836815485032985131

/-! ## A276930.P2331958404775981854

`A052875(n)+A008966(A115098(n))`
-/

namespace A276930.P2331958404775981854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + A008966 (A115098 n).toNat

end

end A276930.P2331958404775981854

/-! ## A276930.P15771971691905624140

`A103226(A157211(n))+A000670(n)`
-/

namespace A276930.P15771971691905624140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103226 (A157211 n).toNat + A000670 n

end

end A276930.P15771971691905624140

/-! ## A276930.P9447763948897594385

`A324678(A114851(n))+A000670(n)`
-/

namespace A276930.P9447763948897594385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324678 (A114851 n).toNat + A000670 n

end

end A276930.P9447763948897594385

/-! ## A276930.P12236813466385190855

`A000670(n)-A010059(A022179(n))`
-/

namespace A276930.P12236813466385190855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A010059 (A022179 n).toNat

end

end A276930.P12236813466385190855

/-!
# A276931: Row 2 of A276616: a(n) = A276932(n)/2.

The programs for A276931, the canonical program `A276931.P10992499058279843691` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276931 has offset 0).

The definition of A276931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276932, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276931.P10992499058279843691

`A276932(n)/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A276931

/-- `A276932(n)/2` -/
def P10992499058279843691.Spec : Prop :=
  ∀ n, P10992499058279843691.a n = (A276931 n : ℚ)

end A276931

/-! ## A276931.P13720820168692416900

`A153880(A273670(n))/2`
-/

namespace A276931.P13720820168692416900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 (A273670 n).toNat : ℚ) / 2

end

end A276931.P13720820168692416900

namespace A276931

/-- `A153880(A273670(n))/2` -/
def P13720820168692416900.Spec : Prop :=
  ∀ n, P13720820168692416900.a n = (A276931 n : ℚ)

end A276931

/-! ## A276931.P16700876161297938651

`A153880(comp[A153880(n)])/2`
-/

namespace A276931.P16700876161297938651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A276931.P16700876161297938651

namespace A276931

/-- `A153880(comp[A153880(n)])/2` -/
def P16700876161297938651.Spec : Prop :=
  ∀ n, P16700876161297938651.a n = (A276931 n : ℚ)

end A276931

/-! ## A276931.P7329927379810350356

`A153880(lt[1, A275832(n)])/2`
-/

namespace A276931.P7329927379810350356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A276931.P7329927379810350356

namespace A276931

/-- `A153880(lt[1, A275832(n)])/2` -/
def P7329927379810350356.Spec : Prop :=
  ∀ n, P7329927379810350356.a n = (A276931 n : ℚ)

end A276931

/-! ## A276931.P17347697948456510563

`A153880(record[A276958(n+1)])/2`
-/

namespace A276931.P17347697948456510563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A276931.P17347697948456510563

namespace A276931

/-- `A153880(record[A276958(n+1)])/2` -/
def P17347697948456510563.Spec : Prop :=
  ∀ n, P17347697948456510563.a n = (A276931 n : ℚ)

end A276931

/-! ## A276931.P9821252611171327464

`A153880(eq[1, A276949(n)])/2`
-/

namespace A276931.P9821252611171327464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A276931.P9821252611171327464

namespace A276931

/-- `A153880(eq[1, A276949(n)])/2` -/
def P9821252611171327464.Spec : Prop :=
  ∀ n, P9821252611171327464.a n = (A276931 n : ℚ)

end A276931

/-! ## A276931.P2615271138390998767

`eq[A055093(2*n)+1, A055093(2*n+1)]`
-/

namespace A276931.P2615271138390998767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276931.P2615271138390998767

namespace A276931

/-- `eq[A055093(2*n)+1, A055093(2*n+1)]` -/
def P2615271138390998767.Spec : Prop :=
  ∀ n, (P2615271138390998767.a n : ℤ) = A276931 n

end A276931

/-! ## A276931.P16653763678175337709

`A001281(A276932(n))`
-/

namespace A276931.P16653763678175337709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A276932 n).toNat

end

end A276931.P16653763678175337709

namespace A276931

/-- `A001281(A276932(n))` -/
def P16653763678175337709.Spec : Prop :=
  ∀ n, P16653763678175337709.a n = A276931 n

end A276931

/-! ## A276931.P849570207844127011

`eq[2, A276949(2*n)]`
-/

namespace A276931.P849570207844127011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276931.P849570207844127011

namespace A276931

/-- `eq[2, A276949(2*n)]` -/
def P849570207844127011.Spec : Prop :=
  ∀ n, (P849570207844127011.a n : ℤ) = A276931 n

end A276931

/-! ## A276931.P7396260915265594275

`eq[2, A276949(n)]/2`
-/

namespace A276931.P7396260915265594275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A276931.P7396260915265594275

namespace A276931

/-- `eq[2, A276949(n)]/2` -/
def P7396260915265594275.Spec : Prop :=
  ∀ n, P7396260915265594275.a n = (A276931 n : ℚ)

end A276931

/-! ## A276931.P9902304166427023750

`A275848(A257692(n+1))/2`
-/

namespace A276931.P9902304166427023750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275848 (A257692 (n + 1)).toNat : ℚ) / 2

end

end A276931.P9902304166427023750

namespace A276931

/-- `A275848(A257692(n+1))/2` -/
def P9902304166427023750.Spec : Prop :=
  ∀ n, P9902304166427023750.a n = (A276931 n : ℚ)

end A276931

/-! ## A276931.P6729902270541628428

`A266193(A276933(n))/2`
-/

namespace A276931.P6729902270541628428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266193 (A276933 n).toNat : ℚ) / 2

end

end A276931.P6729902270541628428

namespace A276931

/-- `A266193(A276933(n))/2` -/
def P6729902270541628428.Spec : Prop :=
  ∀ n, P6729902270541628428.a n = (A276931 n : ℚ)

end A276931

/-! ## A276931.P6154340703594382568

`A276616(∑[n+1]+2)`
-/

namespace A276931.P6154340703594382568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276616 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A276931.P6154340703594382568

namespace A276931

/-- `A276616(∑[n+1]+2)` -/
def P6154340703594382568.Spec : Prop :=
  ∀ n, P6154340703594382568.a n = A276931 n

end A276931

/-! ## A276931.P17414740546282465036

`A276617(∑[n+2])`
-/

namespace A276931.P17414740546282465036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276931.P17414740546282465036

namespace A276931

/-- `A276617(∑[n+2])` -/
def P17414740546282465036.Spec : Prop :=
  ∀ n, P17414740546282465036.a n = A276931 n

end A276931

/-! ## A276931.P10119368975658826537

`eq[2, A055396(A275734(2*n))]`
-/

namespace A276931.P10119368975658826537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A275734 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276931.P10119368975658826537

namespace A276931

/-- `eq[2, A055396(A275734(2*n))]` -/
def P10119368975658826537.Spec : Prop :=
  ∀ n, (P10119368975658826537.a n : ℤ) = A276931 n

end A276931

/-!
# A276932: Row 2 of A276953: a(n) = A153880(A273670(n)).

The programs for A276932, the canonical program `A276932.P111272194335471514` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276932 has offset 0).

The definition of A276932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276932.P111272194335471514

`A153880(A273670(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A276932

/-- `A153880(A273670(n))` -/
def P111272194335471514.Spec : Prop :=
  ∀ n, P111272194335471514.a n = A276932 n

theorem P111272194335471514.correct : P111272194335471514.Spec := by
  intro n
  simp only [A276932]

end A276932

/-! ## A276932.P10293709154224477886

`2*A276931(n)`
-/

namespace A276932.P10293709154224477886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276931 n

end

end A276932.P10293709154224477886

namespace A276932

/-- `2*A276931(n)` -/
def P10293709154224477886.Spec : Prop :=
  ∀ n, P10293709154224477886.a n = A276932 n

end A276932

/-! ## A276932.P876744115122377117

`A153880(comp[A153880(n)])`
-/

namespace A276932.P876744115122377117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A276932.P876744115122377117

namespace A276932

/-- `A153880(comp[A153880(n)])` -/
def P876744115122377117.Spec : Prop :=
  ∀ n, P876744115122377117.a n = A276932 n

end A276932

/-! ## A276932.P14261043573121424619

`A153880(lt[1, A275832(n)])`
-/

namespace A276932.P14261043573121424619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276932.P14261043573121424619

namespace A276932

/-- `A153880(lt[1, A275832(n)])` -/
def P14261043573121424619.Spec : Prop :=
  ∀ n, P14261043573121424619.a n = A276932 n

end A276932

/-! ## A276932.P224005674470107791

`A153880(A275840(n)+A256450(n))`
-/

namespace A276932.P224005674470107791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A275840 n + A256450 n).toNat

end

end A276932.P224005674470107791

namespace A276932

/-- `A153880(A275840(n)+A256450(n))` -/
def P224005674470107791.Spec : Prop :=
  ∀ n, P224005674470107791.a n = A276932 n

end A276932

/-! ## A276932.P9691429355686501416

`A276931(A005843(n)/2)+A276931(n)`
-/

namespace A276932.P9691429355686501416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276931 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A276931 n

end

end A276932.P9691429355686501416

namespace A276932

/-- `A276931(A005843(n)/2)+A276931(n)` -/
def P9691429355686501416.Spec : Prop :=
  ∀ n, P9691429355686501416.a n = A276932 n

end A276932

/-! ## A276932.P11786717306975034501

`A153880(record[A276958(n+1)])`
-/

namespace A276932.P11786717306975034501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276932.P11786717306975034501

namespace A276932

/-- `A153880(record[A276958(n+1)])` -/
def P11786717306975034501.Spec : Prop :=
  ∀ n, P11786717306975034501.a n = A276932 n

end A276932

/-! ## A276932.P6667160995753952233

`A153880(eq[1, A276949(n)])`
-/

namespace A276932.P6667160995753952233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276932.P6667160995753952233

namespace A276932

/-- `A153880(eq[1, A276949(n)])` -/
def P6667160995753952233.Spec : Prop :=
  ∀ n, P6667160995753952233.a n = A276932 n

end A276932

/-! ## A276932.P3699620466304823960

`A153880(A275848(A256450(n)))`
-/

namespace A276932.P3699620466304823960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A275848 (A256450 n).toNat).toNat

end

end A276932.P3699620466304823960

namespace A276932

/-- `A153880(A275848(A256450(n)))` -/
def P3699620466304823960.Spec : Prop :=
  ∀ n, P3699620466304823960.a n = A276932 n

end A276932

/-! ## A276932.P14236156006992223863

`A004277(A276931(n))`
-/

namespace A276932.P14236156006992223863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A276931 n).toNat

end

end A276932.P14236156006992223863

namespace A276932

/-- `A004277(A276931(n))` -/
def P14236156006992223863.Spec : Prop :=
  ∀ n, P14236156006992223863.a n = A276932 n

end A276932

/-! ## A276932.P11677037149487403880

`eq[3, A020639(A275734(n))]`
-/

namespace A276932.P11677037149487403880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276932.P11677037149487403880

namespace A276932

/-- `eq[3, A020639(A275734(n))]` -/
def P11677037149487403880.Spec : Prop :=
  ∀ n, (P11677037149487403880.a n : ℤ) = A276932 n

end A276932

/-! ## A276932.P16714754715356250970

`eq[2, A276949(n)]`
-/

namespace A276932.P16714754715356250970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276932.P16714754715356250970

namespace A276932

/-- `eq[2, A276949(n)]` -/
def P16714754715356250970.Spec : Prop :=
  ∀ n, (P16714754715356250970.a n : ℤ) = A276932 n

end A276932

/-! ## A276932.P16146466162236939874

`A275848(A257692(n+1))`
-/

namespace A276932.P16146466162236939874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (A257692 (n + 1)).toNat

end

end A276932.P16146466162236939874

namespace A276932

/-- `A275848(A257692(n+1))` -/
def P16146466162236939874.Spec : Prop :=
  ∀ n, P16146466162236939874.a n = A276932 n

end A276932

/-! ## A276932.P13495710049828511650

`A276958(A255411(A273670(2*n-n)))`
-/

namespace A276932.P13495710049828511650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (A255411 (A273670 (2 * n - n)).toNat).toNat

end

end A276932.P13495710049828511650

namespace A276932

/-- `A276958(A255411(A273670(2*n-n)))` -/
def P13495710049828511650.Spec : Prop :=
  ∀ n, P13495710049828511650.a n = A276932 n

end A276932

/-! ## A276932.P15497160584634026836

`A275846(A255411(A275846(A256450(A275845(n)))))`
-/

namespace A276932.P15497160584634026836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275846 (A255411 (A275846 (A256450 (A275845 n).toNat).toNat).toNat).toNat

end

end A276932.P15497160584634026836

namespace A276932

/-- `A275846(A255411(A275846(A256450(A275845(n)))))` -/
def P15497160584634026836.Spec : Prop :=
  ∀ n, P15497160584634026836.a n = A276932 n

end A276932

/-! ## A276932.P5886580880424457213

`A275846(A255411(A273670(A275848(A275847(n)))))`
-/

namespace A276932.P5886580880424457213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275846 (A255411 (A273670 (A275848 (A275847 n).toNat).toNat).toNat).toNat

end

end A276932.P5886580880424457213

namespace A276932

/-- `A275846(A255411(A273670(A275848(A275847(n)))))` -/
def P5886580880424457213.Spec : Prop :=
  ∀ n, P5886580880424457213.a n = A276932 n

end A276932

/-! ## A276932.P17389000233231532136

`A275848(A255411(A275845(A273670(A275846(n)))))`
-/

namespace A276932.P17389000233231532136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (A255411 (A275845 (A273670 (A275846 n).toNat).toNat).toNat).toNat

end

end A276932.P17389000233231532136

namespace A276932

/-- `A275848(A255411(A275845(A273670(A275846(n)))))` -/
def P17389000233231532136.Spec : Prop :=
  ∀ n, P17389000233231532136.a n = A276932 n

end A276932

/-! ## A276932.P14782289727425565985

`A153880(A273668(A256450(A273667(n))))`
-/

namespace A276932.P14782289727425565985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A273668 (A256450 (A273667 n).toNat).toNat).toNat

end

end A276932.P14782289727425565985

namespace A276932

/-- `A153880(A273668(A256450(A273667(n))))` -/
def P14782289727425565985.Spec : Prop :=
  ∀ n, P14782289727425565985.a n = A276932 n

end A276932

/-! ## A276932.P15500681477131060401

`A153880(A273668(A256450(A275835(A225901(n)))))`
-/

namespace A276932.P15500681477131060401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A273668 (A256450 (A275835 (A225901 n).toNat).toNat).toNat).toNat

end

end A276932.P15500681477131060401

namespace A276932

/-- `A153880(A273668(A256450(A275835(A225901(n)))))` -/
def P15500681477131060401.Spec : Prop :=
  ∀ n, P15500681477131060401.a n = A276932 n

end A276932

/-! ## A276932.P13878653467407662415

`A266193(A276933(n))`
-/

namespace A276932.P13878653467407662415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A276933 n).toNat

end

end A276932.P13878653467407662415

namespace A276932

/-- `A266193(A276933(n))` -/
def P13878653467407662415.Spec : Prop :=
  ∀ n, P13878653467407662415.a n = A276932 n

end A276932

/-!
# A276933: Row 3 of A276953: a(n) = A153880(A153880(A273670(n))).

The programs for A276933, the canonical program `A276933.P13598886561639021604` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276933 has offset 0).

The definition of A276933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276933.P5737547067056993599

`6*A276934(n)`
-/

namespace A276933.P5737547067056993599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A276934 n

end

end A276933.P5737547067056993599

namespace A276933

/-- `6*A276934(n)` -/
def P5737547067056993599.Spec : Prop :=
  ∀ n, P5737547067056993599.a n = A276933 n

end A276933

/-! ## A276933.P8238749511608629109

`A153880(A276932(n))`
-/

namespace A276933.P8238749511608629109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A276932 n).toNat

end

end A276933.P8238749511608629109

namespace A276933

/-- `A153880(A276932(n))` -/
def P8238749511608629109.Spec : Prop :=
  ∀ n, P8238749511608629109.a n = A276933 n

end A276933

/-! ## A276933.P13598886561639021604

`A153880(A153880(A273670(n)))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A276933

/-- `A153880(A153880(A273670(n)))` -/
def P13598886561639021604.Spec : Prop :=
  ∀ n, P13598886561639021604.a n = A276933 n

theorem P13598886561639021604.correct : P13598886561639021604.Spec := by
  intro n
  simp only [A276933]

end A276933

/-! ## A276933.P265892764684963046

`A153880(2*A276931(n))`
-/

namespace A276933.P265892764684963046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (2 * A276931 n).toNat

end

end A276933.P265892764684963046

namespace A276933

/-- `A153880(2*A276931(n))` -/
def P265892764684963046.Spec : Prop :=
  ∀ n, P265892764684963046.a n = A276933 n

end A276933

/-! ## A276933.P10337175783664647651

`A153880(A276931(n)+A276931(n))`
-/

namespace A276933.P10337175783664647651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A276931 n + A276931 n).toNat

end

end A276933.P10337175783664647651

namespace A276933

/-- `A153880(A276931(n)+A276931(n))` -/
def P10337175783664647651.Spec : Prop :=
  ∀ n, P10337175783664647651.a n = A276933 n

end A276933

/-! ## A276933.P9893546256082844178

`A153880(A153880(A275848(A256450(n))))`
-/

namespace A276933.P9893546256082844178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A153880 (A275848 (A256450 n).toNat).toNat).toNat

end

end A276933.P9893546256082844178

namespace A276933

/-- `A153880(A153880(A275848(A256450(n))))` -/
def P9893546256082844178.Spec : Prop :=
  ∀ n, P9893546256082844178.a n = A276933 n

end A276933

/-! ## A276933.P4217499136244088072

`A008458(A276934(n))`
-/

namespace A276933.P4217499136244088072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A276934 n).toNat

end

end A276933.P4217499136244088072

namespace A276933

/-- `A008458(A276934(n))` -/
def P4217499136244088072.Spec : Prop :=
  ∀ n, P4217499136244088072.a n = A276933 n

end A276933

/-! ## A276933.P6101785781330173968

`A153880(eq[2, A276949(n)])`
-/

namespace A276933.P6101785781330173968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A276933.P6101785781330173968

namespace A276933

/-- `A153880(eq[2, A276949(n)])` -/
def P6101785781330173968.Spec : Prop :=
  ∀ n, P6101785781330173968.a n = A276933 n

end A276933

/-! ## A276933.P1684873677276030058

`A153880(A153880(A273668(A256450(A273667(n)))))`
-/

namespace A276933.P1684873677276030058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A153880 (A273668 (A256450 (A273667 n).toNat).toNat).toNat).toNat

end

end A276933.P1684873677276030058

namespace A276933

/-- `A153880(A153880(A273668(A256450(A273667(n)))))` -/
def P1684873677276030058.Spec : Prop :=
  ∀ n, P1684873677276030058.a n = A276933 n

end A276933

/-! ## A276933.P385106681183379258

`A153880(A153880(A276617(∑[n+1])))`
-/

namespace A276933.P385106681183379258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A153880 (A276617 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A276933.P385106681183379258

namespace A276933

/-- `A153880(A153880(A276617(∑[n+1])))` -/
def P385106681183379258.Spec : Prop :=
  ∀ n, P385106681183379258.a n = A276933 n

end A276933

/-! ## A276933.P5289924955540437731

`eq[5, A020639(A275734(n))]`
-/

namespace A276933.P5289924955540437731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276933.P5289924955540437731

namespace A276933

/-- `eq[5, A020639(A275734(n))]` -/
def P5289924955540437731.Spec : Prop :=
  ∀ n, (P5289924955540437731.a n : ℤ) = A276933 n

end A276933

/-!
# A276934: Row 3 of A276616: a(n) = A276933(n) / 6.

The programs for A276934, the canonical program `A276934.P15106644444833656235` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276934 has offset 0).

The definition of A276934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276933, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276934.P15106644444833656235

`A276933(n)/6`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A276934

/-- `A276933(n)/6` -/
def P15106644444833656235.Spec : Prop :=
  ∀ n, P15106644444833656235.a n = (A276934 n : ℚ)

end A276934

/-! ## A276934.P2319968354157575012

`A153880(A276932(n))/6`
-/

namespace A276934.P2319968354157575012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 (A276932 n).toNat : ℚ) / 6

end

end A276934.P2319968354157575012

namespace A276934

/-- `A153880(A276932(n))/6` -/
def P2319968354157575012.Spec : Prop :=
  ∀ n, P2319968354157575012.a n = (A276934 n : ℚ)

end A276934

/-! ## A276934.P6833357535327008213

`A153880(2*A276931(n))/6`
-/

namespace A276934.P6833357535327008213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 (2 * A276931 n).toNat : ℚ) / 6

end

end A276934.P6833357535327008213

namespace A276934

/-- `A153880(2*A276931(n))/6` -/
def P6833357535327008213.Spec : Prop :=
  ∀ n, P6833357535327008213.a n = (A276934 n : ℚ)

end A276934

/-! ## A276934.P12504566734464264988

`A153880(A153880(A273670(n)))/6`
-/

namespace A276934.P12504566734464264988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 (A153880 (A273670 n).toNat).toNat : ℚ) / 6

end

end A276934.P12504566734464264988

namespace A276934

/-- `A153880(A153880(A273670(n)))/6` -/
def P12504566734464264988.Spec : Prop :=
  ∀ n, P12504566734464264988.a n = (A276934 n : ℚ)

end A276934

/-! ## A276934.P9956139121882003143

`A153880(A276931(n)+A276931(n))/6`
-/

namespace A276934.P9956139121882003143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 (A276931 n + A276931 n).toNat : ℚ) / 6

end

end A276934.P9956139121882003143

namespace A276934

/-- `A153880(A276931(n)+A276931(n))/6` -/
def P9956139121882003143.Spec : Prop :=
  ∀ n, P9956139121882003143.a n = (A276934 n : ℚ)

end A276934

/-! ## A276934.P17473397258249638460

`A278529(A276933(n)-1)`
-/

namespace A276934.P17473397258249638460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A276933 n - 1).toNat

end

end A276934.P17473397258249638460

namespace A276934

/-- `A278529(A276933(n)-1)` -/
def P17473397258249638460.Spec : Prop :=
  ∀ n, P17473397258249638460.a n = A276934 n

end A276934

/-! ## A276934.P1921188274751452098

`A260739(A276933(n)-3)`
-/

namespace A276934.P1921188274751452098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A276933 n - 3).toNat

end

end A276934.P1921188274751452098

namespace A276934

/-- `A260739(A276933(n)-3)` -/
def P1921188274751452098.Spec : Prop :=
  ∀ n, P1921188274751452098.a n = A276934 n

end A276934

/-! ## A276934.P17729312456395654044

`A008615(A276933(n))`
-/

namespace A276934.P17729312456395654044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A276933 n).toNat

end

end A276934.P17729312456395654044

namespace A276934

/-- `A008615(A276933(n))` -/
def P17729312456395654044.Spec : Prop :=
  ∀ n, P17729312456395654044.a n = A276934 n

end A276934

/-! ## A276934.P4075275638652692846

`A103221(A276933(n)+1)`
-/

namespace A276934.P4075275638652692846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A276933 n + 1).toNat

end

end A276934.P4075275638652692846

namespace A276934

/-- `A103221(A276933(n)+1)` -/
def P4075275638652692846.Spec : Prop :=
  ∀ n, P4075275638652692846.a n = A276934 n

end A276934

/-! ## A276934.P6468163244243901351

`A078898(A276933(n)-3)`
-/

namespace A276934.P6468163244243901351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A276933 n - 3).toNat

end

end A276934.P6468163244243901351

namespace A276934

/-- `A078898(A276933(n)-3)` -/
def P6468163244243901351.Spec : Prop :=
  ∀ n, P6468163244243901351.a n = A276934 n

end A276934

/-! ## A276934.P5418352221740413028

`A103221(or(1, A276933(n)))`
-/

namespace A276934.P5418352221740413028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor 1 (A276933 n)).toNat

end

end A276934.P5418352221740413028

namespace A276934

/-- `A103221(or(1, A276933(n)))` -/
def P5418352221740413028.Spec : Prop :=
  ∀ n, P5418352221740413028.a n = A276934 n

end A276934

/-! ## A276934.P16056037702708580770

`A276616(∑[n+2]+4)`
-/

namespace A276934.P16056037702708580770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276616 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A276934.P16056037702708580770

namespace A276934

/-- `A276616(∑[n+2]+4)` -/
def P16056037702708580770.Spec : Prop :=
  ∀ n, P16056037702708580770.a n = A276934 n

end A276934

/-! ## A276934.P17002827741336305608

`A276617(∑[n+3]+1)`
-/

namespace A276934.P17002827741336305608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276934.P17002827741336305608

namespace A276934

/-- `A276617(∑[n+3]+1)` -/
def P17002827741336305608.Spec : Prop :=
  ∀ n, P17002827741336305608.a n = A276934 n

end A276934

/-!
# A276935: Number of distinct prime factors prime(k) of n such that prime(k)^k, but not prime(k)^(k+1) is a divisor of n.

The programs for A276935, the canonical program `A276935.P875992339060351895` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276935 has offset 1).

The definition of A276935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276935.P875992339060351895

`∑{p}[n+1, val(A000040(val(n+1, #)), #)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276935

/-- `∑{p}[n+1, val(A000040(val(n+1, #)), #)]` -/
def P875992339060351895.Spec : Prop :=
  ∀ n, (P875992339060351895.a n : ℤ) = A276935 (n + 1)

theorem P875992339060351895.correct : P875992339060351895.Spec := by
  intro n
  simp only [A276935, Nat.add_sub_cancel]

end A276935

/-! ## A276935.P11163189950666981581

`∑{p}[n+1, val(A000043(val(n+1, #)), #)]`
-/

namespace A276935.P11163189950666981581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A000043 (SequenceMachineLib.valuation (n + 1) p)).toNat p

end

end A276935.P11163189950666981581

namespace A276935

/-- `∑{p}[n+1, val(A000043(val(n+1, #)), #)]` -/
def P11163189950666981581.Spec : Prop :=
  ∀ n, (P11163189950666981581.a n : ℤ) = A276935 (n + 1)

end A276935

/-! ## A276935.P10852306826227423250

`∑{p}[n+1, val(A230047(val(n+1, #)), #)]`
-/

namespace A276935.P10852306826227423250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A230047 (SequenceMachineLib.valuation (n + 1) p)).toNat p

end

end A276935.P10852306826227423250

namespace A276935

/-- `∑{p}[n+1, val(A230047(val(n+1, #)), #)]` -/
def P10852306826227423250.Spec : Prop :=
  ∀ n, (P10852306826227423250.a n : ℤ) = A276935 (n + 1)

end A276935

/-! ## A276935.P11238964302425407337

`∑{p}[n+1, val(#, A103866(val(n+1, #)+1))]`
-/

namespace A276935.P11238964302425407337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (A103866 (SequenceMachineLib.valuation (n + 1) p + 1)).toNat

end

end A276935.P11238964302425407337

namespace A276935

/-- `∑{p}[n+1, val(#, A103866(val(n+1, #)+1))]` -/
def P11238964302425407337.Spec : Prop :=
  ∀ n, (P11238964302425407337.a n : ℤ) = A276935 (n + 1)

end A276935

/-! ## A276935.P13821493964551466231

`A056169(A342007((n+1)²))`
-/

namespace A276935.P13821493964551466231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A342007 ((n + 1) ^ 2)).toNat

end

end A276935.P13821493964551466231

namespace A276935

/-- `A056169(A342007((n+1)²))` -/
def P13821493964551466231.Spec : Prop :=
  ∀ n, P13821493964551466231.a n = A276935 (n + 1)

end A276935

/-! ## A276935.P7969602681726728104

`∑{e}[3*A190100(∑[n+1]+1), A008437(#)]`
-/

namespace A276935.P7969602681726728104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A190100 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008437 (Nat.factorization (f1 n).natAbs p)

end

end A276935.P7969602681726728104

namespace A276935

/-- `∑{e}[3*A190100(∑[n+1]+1), A008437(#)]` -/
def P7969602681726728104.Spec : Prop :=
  ∀ n, P7969602681726728104.a n = A276935 (n + 1)

end A276935

/-! ## A276935.P5440704824804035438

`A056169(A328618(n+1))`
-/

namespace A276935.P5440704824804035438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A328618 (n + 1)).toNat

end

end A276935.P5440704824804035438

namespace A276935

/-- `A056169(A328618(n+1))` -/
def P5440704824804035438.Spec : Prop :=
  ∀ n, P5440704824804035438.a n = A276935 (n + 1)

end A276935

/-! ## A276935.P4976120713479552158

`A369426(A064549(n+1))`
-/

namespace A276935.P4976120713479552158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369426 (A064549 (n + 1)).toNat

end

end A276935.P4976120713479552158

namespace A276935

/-- `A369426(A064549(n+1))` -/
def P4976120713479552158.Spec : Prop :=
  ∀ n, P4976120713479552158.a n = A276935 (n + 1)

end A276935

/-! ## A276935.P5390894787126928404

`A369426(A366423(n+1))`
-/

namespace A276935.P5390894787126928404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369426 (A366423 (n + 1)).toNat

end

end A276935.P5390894787126928404

namespace A276935

/-- `A369426(A366423(n+1))` -/
def P5390894787126928404.Spec : Prop :=
  ∀ n, P5390894787126928404.a n = A276935 (n + 1)

end A276935

/-! ## A276935.P2899213073738511933

`A369426(A046162(n+2))`
-/

namespace A276935.P2899213073738511933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369426 (A046162 (n + 2)).toNat

end

end A276935.P2899213073738511933

namespace A276935

/-- `A369426(A046162(n+2))` -/
def P2899213073738511933.Spec : Prop :=
  ∀ n, P2899213073738511933.a n = A276935 (n + 1)

end A276935

/-! ## A276935.P3796885959024730607

`A129251((n+1)²)-A129251(n+1)`
-/

namespace A276935.P3796885959024730607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 ((n + 1) ^ 2) - A129251 (n + 1)

end

end A276935.P3796885959024730607

namespace A276935

/-- `A129251((n+1)²)-A129251(n+1)` -/
def P3796885959024730607.Spec : Prop :=
  ∀ n, P3796885959024730607.a n = A276935 (n + 1)

end A276935

/-!
# A276936: Numbers m with at least one distinct prime factor prime(k) such that prime(k)^k divides, but prime(k)^(k+1) does not divide m.

The programs for A276936, the canonical program `A276936.P4504177896743748025` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276936 has offset 1).

The definition of A276936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276936.P4504177896743748025

`eq[char[A325130(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276936

/-- `eq[char[A325130(n+1)], A000007(n)]` -/
def P4504177896743748025.Spec : Prop :=
  ∀ n, (P4504177896743748025.a n : ℤ) = A276936 (n + 1)

theorem P4504177896743748025.correct : P4504177896743748025.Spec := by
  intro n
  simp only [A276936, Nat.add_sub_cancel]

end A276936

/-! ## A276936.P11687685557963255433

`eq[char[A325130(n+1)], A000038(n)]`
-/

namespace A276936.P11687685557963255433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276936.P11687685557963255433

namespace A276936

/-- `eq[char[A325130(n+1)], A000038(n)]` -/
def P11687685557963255433.Spec : Prop :=
  ∀ n, (P11687685557963255433.a n : ℤ) = A276936 (n + 1)

end A276936

/-! ## A276936.P8388390786365989348

`eq[char[A325130(n+1)], A130706(n)]`
-/

namespace A276936.P8388390786365989348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276936.P8388390786365989348

namespace A276936

/-- `eq[char[A325130(n+1)], A130706(n)]` -/
def P8388390786365989348.Spec : Prop :=
  ∀ n, (P8388390786365989348.a n : ℤ) = A276936 (n + 1)

end A276936

/-! ## A276936.P17749571125678798688

`eq[char[A325130(n+1)], A036987(2*n)]`
-/

namespace A276936.P17749571125678798688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276936.P17749571125678798688

namespace A276936

/-- `eq[char[A325130(n+1)], A036987(2*n)]` -/
def P17749571125678798688.Spec : Prop :=
  ∀ n, (P17749571125678798688.a n : ℤ) = A276936 (n + 1)

end A276936

/-!
# A276937: Numbers m with at least one prime factor prime(k) such that prime(k)^k is a divisor of m, but with no factor prime(j) such that prime(j)^(j+1) divides m.

The programs for A276937, there is no canonical definition to state claims against.
-/

/-! ## A276937.P2937246997753880202

`A064989(A276938(n+1))`
-/

namespace A276937.P2937246997753880202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A276938 (n + 1)).toNat

end

end A276937.P2937246997753880202

/-! ## A276937.P14527109457967850367

`A283463(A276938(n+1)+1)`
-/

namespace A276937.P14527109457967850367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A276938 (n + 1) + 1).toNat

end

end A276937.P14527109457967850367

/-! ## A276937.P2261336684005740022

`lt[A359550(n²), A359550(n)]`
-/

namespace A276937.P2261336684005740022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A276937.P2261336684005740022

/-! ## A276937.P5441458173749459394

`eq[A129251(n+1), A256750((n+1)²)]+1`
-/

namespace A276937.P5441458173749459394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A276937.P5441458173749459394

/-! ## A276937.P1271906249956704278

`A276941(∑[n]+2)`
-/

namespace A276937.P1271906249956704278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276941 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A276937.P1271906249956704278

/-! ## A276937.P18309036896936931234

`record[gcd(A002262(n), A276941(n+2))]`
-/

namespace A276937.P18309036896936931234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A276941 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276937.P18309036896936931234

/-! ## A276937.P12283797692930134431

`record[A276941(n+2)/A208338(n+1)]`
-/

namespace A276937.P12283797692930134431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276941 (n + 2) : ℚ) / (A208338 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276937.P12283797692930134431

/-!
# A276938: Second row of A276941: a(n) = A003961(A276937(n)).

The programs for A276938, there is no canonical definition to state claims against.
-/

/-! ## A276938.P12614936472627118884

`∑{d}[A276937(n+1), A003972(#)]`
-/

namespace A276938.P12614936472627118884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A276938.P12614936472627118884

/-! ## A276938.P13090476242349781545

`A003961(A276937(n+1))`
-/

namespace A276938.P13090476242349781545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A276937 (n + 1)).toNat

end

end A276938.P13090476242349781545

/-! ## A276938.P17865575023085095615

`A045965(A276937(n+1)%A017473(n))`
-/

namespace A276938.P17865575023085095615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (Int.tmod (A276937 (n + 1)) (A017473 n)).toNat

end

end A276938.P17865575023085095615

/-! ## A276938.P2339058138634705934

`A001222(A002476(n+1))*A045965(A276937(n+1))`
-/

namespace A276938.P2339058138634705934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * A045965 (A276937 (n + 1)).toNat

end

end A276938.P2339058138634705934

/-! ## A276938.P16814404251647797463

`A045965(A276937(n+1))%A207050(n+1)`
-/

namespace A276938.P16814404251647797463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045965 (A276937 (n + 1)).toNat) (A207050 (n + 1))

end

end A276938.P16814404251647797463

/-! ## A276938.P346936988329054542

`A045965(A276937(n+1)^A133707(n+1))`
-/

namespace A276938.P346936988329054542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (SequenceMachineLib.roundAway ((A276937 (n + 1) : ℚ) ^ (A133707 (n + 1) : ℤ))).toNat

end

end A276938.P346936988329054542

/-! ## A276938.P282958715869729168

`A003961(A276941(∑[n]+2))`
-/

namespace A276938.P282958715869729168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A276941 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A276938.P282958715869729168

/-!
# A276939: Row 2 of A276945: a(n) = A002110(n) + A002110(n+1).

The programs for A276939, there is no canonical definition to state claims against.
-/

/-! ## A276939.P10839818542998394330

`A002110(n)+A002110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276939.P10839818542998394330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + A002110 (n + 1)

end

end A276939.P10839818542998394330

/-! ## A276939.P8189021633899530879

`abs(Δ[A070918(∑[n])])`
-/

namespace A276939.P8189021633899530879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276939.P8189021633899530879

/-! ## A276939.P6410233977068578269

`A370121(∑[n+1]+n)`
-/

namespace A276939.P6410233977068578269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370121 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A276939.P6410233977068578269

/-! ## A276939.P8345056934031062985

`A057588(n+1)+A006862(n)`
-/

namespace A276939.P8345056934031062985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057588 (n + 1) + A006862 n

end

end A276939.P8345056934031062985

/-! ## A276939.P9487831167949084122

`∏[A008578(n+1)]*A008864(n+1)`
-/

namespace A276939.P9487831167949084122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A008864 (n + 1)

end

end A276939.P9487831167949084122

/-! ## A276939.P10124121893073594029

`∏[A000040(n+1)]+∏[A008578(n+1)]`
-/

namespace A276939.P10124121893073594029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ∏ j ∈ Finset.range (n + 1), f2 j

end

end A276939.P10124121893073594029

/-! ## A276939.P3127610616597858750

`∏[A000040(n+1)]+∏[A015919(n+1)]`
-/

namespace A276939.P3127610616597858750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ∏ j ∈ Finset.range (n + 1), f2 j

end

end A276939.P3127610616597858750

/-! ## A276939.P10816048351346648625

`(A006862(n)-A060882(n))*A002110(n)`
-/

namespace A276939.P10816048351346648625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006862 n - A060882 n) * A002110 n

end

end A276939.P10816048351346648625

/-!
# A276940: a(1) = 2; for n > 1, a(n) = (n-2)! * n^3.

The programs for A276940, there is no canonical definition to state claims against.
-/

/-! ## A276940.P9447731910919776456

`abs(1-n)!*floor(sqrt((n+1)^6+3))`
-/

namespace A276940.P9447731910919776456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat * Nat.sqrt ((n + 1) ^ 6 + 3)

end

end A276940.P9447731910919776456

/-! ## A276940.P13151865140919661657

`(n+1)*A054119(n+1)`
-/

namespace A276940.P13151865140919661657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054119 (n + 1)

end

end A276940.P13151865140919661657

/-! ## A276940.P10761332245008304927

`(n+1)*A143122(A027379(n))`
-/

namespace A276940.P10761332245008304927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143122 (A027379 n).toNat

end

end A276940.P10761332245008304927

/-! ## A276940.P15691074136916374067

`(n+1)²*A001048(A028310(n))`
-/

namespace A276940.P15691074136916374067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A001048 (A028310 n).toNat

end

end A276940.P15691074136916374067

/-!
# A276941: Square array A(row,col): A(1,col) = A276937(col), and for row > 1, A(row,col) = A003961(A(row-1,col)), read by descending antidiagonals: A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A276941, there is no canonical definition to state claims against.
-/

/-! ## A276941.P1146011956303606452

`A276942(A061579(n)+2)`
-/

namespace A276941.P1146011956303606452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276942 (A061579 n + 2).toNat

end

end A276941.P1146011956303606452

/-! ## A276941.P11084252505758182602

`A276942(A038722(n+1)+1)`
-/

namespace A276941.P11084252505758182602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276942 (A038722 (n + 1) + 1).toNat

end

end A276941.P11084252505758182602

/-! ## A276941.P7070082847095663110

`A276942(A114327(n)+2+n)`
-/

namespace A276941.P7070082847095663110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276942 (A114327 n + 2 + (n : ℤ)).toNat

end

end A276941.P7070082847095663110

/-! ## A276941.P1252982534487999987

`A276942(A265129(n+1)-n)`
-/

namespace A276941.P1252982534487999987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276942 (A265129 (n + 1) - (n : ℤ)).toNat

end

end A276941.P1252982534487999987

/-! ## A276941.P14909044496261527333

`A276942(A002024(n+1)²-n+1)`
-/

namespace A276941.P14909044496261527333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276942 (A002024 (n + 1) ^ 2 - (n : ℤ) + 1).toNat

end

end A276941.P14909044496261527333

/-! ## A276941.P13001221229727070505

`A276942(eq[A130595(n), A155997(n)]-3*n)`
-/

namespace A276941.P13001221229727070505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276942 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 3 * n)

end

end A276941.P13001221229727070505

/-!
# A276942: Square array A(row,col): A(row,1) = A276937(row), and for col > 1, A(row,col) = A003961(A(row,col-1)), read by descending antidiagonals: A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A276942, there is no canonical definition to state claims against.
-/

/-! ## A276942.P745793973391848683

`A276941(A061579(n)+2)`
-/

namespace A276942.P745793973391848683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276941 (A061579 n + 2).toNat

end

end A276942.P745793973391848683

/-! ## A276942.P12712061799530056159

`A276941(A038722(n+1)+1)`
-/

namespace A276942.P12712061799530056159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276941 (A038722 (n + 1) + 1).toNat

end

end A276942.P12712061799530056159

/-! ## A276942.P14823407038090546843

`A276941(A114327(n)+2+n)`
-/

namespace A276942.P14823407038090546843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276941 (A114327 n + 2 + (n : ℤ)).toNat

end

end A276942.P14823407038090546843

/-! ## A276942.P11729294128128379872

`A276941(2-A001489(A061579(n)))`
-/

namespace A276942.P11729294128128379872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276941 (2 - A001489 (A061579 n).toNat).toNat

end

end A276942.P11729294128128379872

/-! ## A276942.P5450724866934017805

`A276941(A004736(n+1)+n-A002260(n+1)+2)`
-/

namespace A276942.P5450724866934017805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276941 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 2).toNat

end

end A276942.P5450724866934017805

/-!
# A276943: Square array A(row,col) read by antidiagonals: A(1,col) = A276155(col), and for row > 1, A(row,col) = A276154(A(row-1,col)); Dispersion of primorial base left shift A276154 (array transposed).

The programs for A276943, there is no canonical definition to state claims against.
-/

/-! ## A276943.P8319953291747203043

`A276945(A038722(n+1))`
-/

namespace A276943.P8319953291747203043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (A038722 (n + 1)).toNat

end

end A276943.P8319953291747203043

/-! ## A276943.P1237029800856510917

`A276945(A061579(n)+1)`
-/

namespace A276943.P1237029800856510917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (A061579 n + 1).toNat

end

end A276943.P1237029800856510917

/-! ## A276943.P13933760014620360879

`A286615(A061579(n)+1)+1`
-/

namespace A276943.P13933760014620360879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286615 (A061579 n + 1).toNat + 1

end

end A276943.P13933760014620360879

/-! ## A276943.P6915112602587306370

`A276945(A093995(n+1)-n)`
-/

namespace A276943.P6915112602587306370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A276943.P6915112602587306370

/-! ## A276943.P14654322400337631098

`A276945(2-A127948(n)+n)`
-/

namespace A276943.P14654322400337631098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (2 - A127948 n + (n : ℤ)).toNat

end

end A276943.P14654322400337631098

/-! ## A276943.P4189447293234829789

`A276945(2-(A127948(n)-n))`
-/

namespace A276943.P4189447293234829789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (2 - (A127948 n - (n : ℤ))).toNat

end

end A276943.P4189447293234829789

/-! ## A276943.P246125622939975531

`A002110(A002262(n))*A286623(n+1)`
-/

namespace A276943.P246125622939975531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A002262 n).toNat * A286623 (n + 1)

end

end A276943.P246125622939975531

/-! ## A276943.P6331866886945412033

`A276945(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A276943.P6331866886945412033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A276943.P6331866886945412033

/-! ## A276943.P18367066704755207955

`A286616(n+1)+1`
-/

namespace A276943.P18367066704755207955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286616 (n + 1) + 1

end

end A276943.P18367066704755207955

/-!
# A276944: Inverse permutation to A276943.

The programs for A276944, there is no canonical definition to state claims against.
-/

/-! ## A276944.P7508806376956539293

`A038722(A276946(n+1))`
-/

namespace A276944.P7508806376956539293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A276946 (n + 1)).toNat

end

end A276944.P7508806376956539293

/-!
# A276945: Square array A(row,col): A(row,1) = A276155(row), and for col > 1, A(row,col) = A276154(A(row,col-1)); Dispersion of primorial base left shift A276154.

The programs for A276945, there is no canonical definition to state claims against.
-/

/-! ## A276945.P7893217581161501916

`A286615(n+1)+1`
-/

namespace A276945.P7893217581161501916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286615 (n + 1) + 1

end

end A276945.P7893217581161501916

/-! ## A276945.P15865883996744128277

`A276943(A038722(n+1))`
-/

namespace A276945.P15865883996744128277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (A038722 (n + 1)).toNat

end

end A276945.P15865883996744128277

/-! ## A276945.P13382185771555452821

`A276943(A061579(n)+1)`
-/

namespace A276945.P13382185771555452821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (A061579 n + 1).toNat

end

end A276945.P13382185771555452821

/-! ## A276945.P2465422405159303357

`A276943(A093995(n+1)-n)`
-/

namespace A276945.P2465422405159303357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A276945.P2465422405159303357

/-! ## A276945.P5722264474838164434

`A276943(2-A127948(n)+n)`
-/

namespace A276945.P5722264474838164434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (2 - A127948 n + (n : ℤ)).toNat

end

end A276945.P5722264474838164434

/-! ## A276945.P11071017575857658412

`A276943(2-(A127948(n)-n))`
-/

namespace A276945.P11071017575857658412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (2 - (A127948 n - (n : ℤ))).toNat

end

end A276945.P11071017575857658412

/-! ## A276945.P9418982600285864924

`A276943(A057944(n)+A004736(n+1))`
-/

namespace A276945.P9418982600285864924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (A057944 n + A004736 (n + 1)).toNat

end

end A276945.P9418982600285864924

/-! ## A276945.P3502656646104534386

`A276943(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A276945.P3502656646104534386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A276945.P3502656646104534386

/-! ## A276945.P2318159887062272726

`A286616(A061579(n)+1)+1`
-/

namespace A276945.P2318159887062272726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286616 (A061579 n + 1).toNat + 1

end

end A276945.P2318159887062272726

/-!
# A276946: Inverse permutation to A276945.

The programs for A276946, there is no canonical definition to state claims against.
-/

/-! ## A276946.P16181429111666688896

`A038722(A276944(n+1))`
-/

namespace A276946.P16181429111666688896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A276944 (n + 1)).toNat

end

end A276946.P16181429111666688896

/-!
# A276947: First differences of A256450: a(n) = A256450(n) - A256450(n-1).

The programs for A276947, the canonical program `A276947.P6732567290194453229` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276947 has offset 1).

The definition of A276947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276947.P10247587340096437726

`Δ[A256450(n)]`
-/

namespace A276947.P10247587340096437726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276947.P10247587340096437726

namespace A276947

/-- `Δ[A256450(n)]` -/
def P10247587340096437726.Spec : Prop :=
  ∀ n, P10247587340096437726.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P12292391973221008289

`Δ[comp[A255411(n)]]`
-/

namespace A276947.P12292391973221008289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276947.P12292391973221008289

namespace A276947

/-- `Δ[comp[A255411(n)]]` -/
def P12292391973221008289.Spec : Prop :=
  ∀ n, P12292391973221008289.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P6732567290194453229

`Δ[lt[0, A257511(n)]]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A276947

/-- `Δ[lt[0, A257511(n)]]` -/
def P6732567290194453229.Spec : Prop :=
  ∀ n, P6732567290194453229.a n = A276947 (n + 1)

theorem P6732567290194453229.correct : P6732567290194453229.Spec := by
  intro n
  simp only [A276947, Nat.add_sub_cancel]

end A276947

/-! ## A276947.P6690079139960316173

`Δ[eq[1, A257680(n)]]`
-/

namespace A276947.P6690079139960316173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276947.P6690079139960316173

namespace A276947

/-- `Δ[eq[1, A257680(n)]]` -/
def P6690079139960316173.Spec : Prop :=
  ∀ n, P6690079139960316173.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P6166688850805266015

`Δ[lt[1, A257079(n)]]`
-/

namespace A276947.P6166688850805266015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276947.P6166688850805266015

namespace A276947

/-- `Δ[lt[1, A257079(n)]]` -/
def P6166688850805266015.Spec : Prop :=
  ∀ n, P6166688850805266015.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P6950295328136833991

`Δ[lt[n, A257080(n)]]`
-/

namespace A276947.P6950295328136833991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276947.P6950295328136833991

namespace A276947

/-- `Δ[lt[n, A257080(n)]]` -/
def P6950295328136833991.Spec : Prop :=
  ∀ n, P6950295328136833991.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P6202551412504040436

`Δ[record[n-A257685(n+1)]]`
-/

namespace A276947.P6202551412504040436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257685 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276947.P6202551412504040436

namespace A276947

/-- `Δ[record[n-A257685(n+1)]]` -/
def P6202551412504040436.Spec : Prop :=
  ∀ n, P6202551412504040436.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P3388971071879453447

`Δ[A273670(n)-A275840(n)]`
-/

namespace A276947.P3388971071879453447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - A275840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276947.P3388971071879453447

namespace A276947

/-- `Δ[A273670(n)-A275840(n)]` -/
def P3388971071879453447.Spec : Prop :=
  ∀ n, P3388971071879453447.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P8861823862004383826

`A256450(n+1)-A256450(n)`
-/

namespace A276947.P8861823862004383826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (n + 1) - A256450 n

end

end A276947.P8861823862004383826

namespace A276947

/-- `A256450(n+1)-A256450(n)` -/
def P8861823862004383826.Spec : Prop :=
  ∀ n, P8861823862004383826.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P3235098496417762928

`Δ[eq[1, A257679(n)]]`
-/

namespace A276947.P3235098496417762928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276947.P3235098496417762928

namespace A276947

/-- `Δ[eq[1, A257679(n)]]` -/
def P3235098496417762928.Spec : Prop :=
  ∀ n, P3235098496417762928.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P419309492160636395

`Δ[A275847(A273670(n))]`
-/

namespace A276947.P419309492160636395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275847 (A273670 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276947.P419309492160636395

namespace A276947

/-- `Δ[A275847(A273670(n))]` -/
def P419309492160636395.Spec : Prop :=
  ∀ n, P419309492160636395.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P6271356530721589560

`A276948(A276012(n+1))`
-/

namespace A276947.P6271356530721589560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276948 (A276012 (n + 1)).toNat

end

end A276947.P6271356530721589560

namespace A276947

/-- `A276948(A276012(n+1))` -/
def P6271356530721589560.Spec : Prop :=
  ∀ n, P6271356530721589560.a n = A276947 (n + 1)

end A276947

/-! ## A276947.P3450206985742313169

`Δ[A257684(A257692(n+1))]`
-/

namespace A276947.P3450206985742313169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A257692 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276947.P3450206985742313169

namespace A276947

/-- `Δ[A257684(A257692(n+1))]` -/
def P3450206985742313169.Spec : Prop :=
  ∀ n, P3450206985742313169.a n = A276947 (n + 1)

end A276947

/-!
# A276948: First differences of A273670: a(n) = A273670(n) - A273670(n-1).

The programs for A276948, the canonical program `A276948.P13226370530176528930` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276948 has offset 1).

The definition of A276948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276948.P13226370530176528930

`Δ[A273670(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A276948

/-- `Δ[A273670(n)]` -/
def P13226370530176528930.Spec : Prop :=
  ∀ n, P13226370530176528930.a n = A276948 (n + 1)

theorem P13226370530176528930.correct : P13226370530176528930.Spec := by
  intro n
  simp only [A276948, Nat.add_sub_cancel]

end A276948

/-! ## A276948.P4463862521978893117

`Δ[comp[A153880(n)]]`
-/

namespace A276948.P4463862521978893117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276948.P4463862521978893117

namespace A276948

/-- `Δ[comp[A153880(n)]]` -/
def P4463862521978893117.Spec : Prop :=
  ∀ n, P4463862521978893117.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P5887572675082955719

`Δ[comp[A276009(n)]]`
-/

namespace A276948.P5887572675082955719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276948.P5887572675082955719

namespace A276948

/-- `Δ[comp[A276009(n)]]` -/
def P5887572675082955719.Spec : Prop :=
  ∀ n, P5887572675082955719.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P7333711792516620324

`gcd(2, Δ[A276934(n)])`
-/

namespace A276948.P7333711792516620324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276934 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A276948.P7333711792516620324

namespace A276948

/-- `gcd(2, Δ[A276934(n)])` -/
def P7333711792516620324.Spec : Prop :=
  ∀ n, (P7333711792516620324.a n : ℤ) = A276948 (n + 1)

end A276948

/-! ## A276948.P11468803776074548476

`Δ[lt[1, A275832(n)]]`
-/

namespace A276948.P11468803776074548476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275832 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276948.P11468803776074548476

namespace A276948

/-- `Δ[lt[1, A275832(n)]]` -/
def P11468803776074548476.Spec : Prop :=
  ∀ n, P11468803776074548476.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P2415779823643793865

`Δ[record[A276958(n+1)]]`
-/

namespace A276948.P2415779823643793865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276948.P2415779823643793865

namespace A276948

/-- `Δ[record[A276958(n+1)]]` -/
def P2415779823643793865.Spec : Prop :=
  ∀ n, P2415779823643793865.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P17227421434045538582

`Δ[record[A382184(n+1)]]`
-/

namespace A276948.P17227421434045538582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382184 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276948.P17227421434045538582

namespace A276948

/-- `Δ[record[A382184(n+1)]]` -/
def P17227421434045538582.Spec : Prop :=
  ∀ n, P17227421434045538582.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P16524654577800236419

`Δ[A275840(n)+A256450(n)]`
-/

namespace A276948.P16524654577800236419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275840 n + A256450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276948.P16524654577800236419

namespace A276948

/-- `Δ[A275840(n)+A256450(n)]` -/
def P16524654577800236419.Spec : Prop :=
  ∀ n, P16524654577800236419.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P2344237958782666120

`A273670(n+1)-A273670(n)`
-/

namespace A276948.P2344237958782666120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (n + 1) - A273670 n

end

end A276948.P2344237958782666120

namespace A276948

/-- `A273670(n+1)-A273670(n)` -/
def P2344237958782666120.Spec : Prop :=
  ∀ n, P2344237958782666120.a n = A276948 (n + 1)

theorem P2344237958782666120.correct : P2344237958782666120.Spec := by
  intro n
  simp only [A276948, Nat.add_sub_cancel, A276948.P2344237958782666120.a, A276948.P13226370530176528930.f1, A276948.P13226370530176528930.a, SequenceMachineLib.memo_apply]

end A276948

/-! ## A276948.P16832511341094767428

`Δ[eq[1, A276949(n)]]`
-/

namespace A276948.P16832511341094767428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276948.P16832511341094767428

namespace A276948

/-- `Δ[eq[1, A276949(n)]]` -/
def P16832511341094767428.Spec : Prop :=
  ∀ n, P16832511341094767428.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P11232088494935754365

`Δ[record[A275848(n+1)]]`
-/

namespace A276948.P11232088494935754365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276948.P11232088494935754365

namespace A276948

/-- `Δ[record[A275848(n+1)]]` -/
def P11232088494935754365.Spec : Prop :=
  ∀ n, P11232088494935754365.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P16962816684798384842

`Δ[lt[A276949(n+1), 2]]`
-/

namespace A276948.P16962816684798384842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276948.P16962816684798384842

namespace A276948

/-- `Δ[lt[A276949(n+1), 2]]` -/
def P16962816684798384842.Spec : Prop :=
  ∀ n, P16962816684798384842.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P7245315721991986626

`A276947(A276011(n+1))`
-/

namespace A276948.P7245315721991986626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276947 (A276011 (n + 1)).toNat

end

end A276948.P7245315721991986626

namespace A276948

/-- `A276947(A276011(n+1))` -/
def P7245315721991986626.Spec : Prop :=
  ∀ n, P7245315721991986626.a n = A276948 (n + 1)

end A276948

/-! ## A276948.P502063112990272786

`Δ[A276617(∑[n+1])]`
-/

namespace A276948.P502063112990272786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276948.P502063112990272786

namespace A276948

/-- `Δ[A276617(∑[n+1])]` -/
def P502063112990272786.Spec : Prop :=
  ∀ n, P502063112990272786.a n = A276948 (n + 1)

end A276948

/-!
# A276949: Index of row where n is located in array A276953 (equally: column in A276955).

The programs for A276949, there is no canonical definition to state claims against.
-/

/-! ## A276949.P15418576023755182645

`A257679(A225901(n))`
-/

namespace A276949.P15418576023755182645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A225901 n).toNat

end

end A276949.P15418576023755182645

/-! ## A276949.P9950098128885040724

`A257679(A275847(n))`
-/

namespace A276949.P9950098128885040724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A275847 n).toNat

end

end A276949.P9950098128885040724

/-! ## A276949.P712904115240931089

`A257679(A273667(n))`
-/

namespace A276949.P712904115240931089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A273667 n).toNat

end

end A276949.P712904115240931089

/-! ## A276949.P1648374720650427272

`val(A004277(A276010(n)), 2)`
-/

namespace A276949.P1648374720650427272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (A276010 n).toNat).toNat 2

end

end A276949.P1648374720650427272

/-! ## A276949.P10328741890112600140

`A257261(A059590(A276010(n)))`
-/

namespace A276949.P10328741890112600140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 (A059590 (A276010 n).toNat).toNat

end

end A276949.P10328741890112600140

/-! ## A276949.P15588693020555553194

`A257679(A275957(n))`
-/

namespace A276949.P15588693020555553194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A275957 n).toNat

end

end A276949.P15588693020555553194

/-! ## A276949.P13563285755629287513

`A257679(A255411(n)-(A153880(n)+n))`
-/

namespace A276949.P13563285755629287513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A276949.P13563285755629287513

/-! ## A276949.P14979216455422557760

`A257679(A255411(n)-n-A153880(n))`
-/

namespace A276949.P14979216455422557760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A276949.P14979216455422557760

/-! ## A276949.P13328788145545447689

`A055396(A275734(n))`
-/

namespace A276949.P13328788145545447689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A275734 n).toNat

end

end A276949.P13328788145545447689

/-! ## A276949.P6834790805936582895

`A277885(A275725(n))`
-/

namespace A276949.P6834790805936582895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A275725 n).toNat

end

end A276949.P6834790805936582895

/-! ## A276949.P10404996469214407303

`A277885(A290095(n))`
-/

namespace A276949.P10404996469214407303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A290095 n).toNat

end

end A276949.P10404996469214407303

/-!
# A276950: Characteristic function for A273670: 1 if there is at least one maximal digit present in the factorial representation of n (A007623), otherwise 0.

The programs for A276950, the canonical program `A276950.P3224110198419510546` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276950 has offset 0).

The definition of A276950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276950.P12823864070623310216

`A257680(A225901(n))`
-/

namespace A276950.P12823864070623310216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A225901 n).toNat

end

end A276950.P12823864070623310216

namespace A276950

/-- `A257680(A225901(n))` -/
def P12823864070623310216.Spec : Prop :=
  ∀ n, P12823864070623310216.a n = A276950 n

end A276950

/-! ## A276950.P3224110198419510546

`char[A273670(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A276950

/-- `char[A273670(n)]` -/
def P3224110198419510546.Spec : Prop :=
  ∀ n, (P3224110198419510546.a n : ℤ) = A276950 n

theorem P3224110198419510546.correct : P3224110198419510546.Spec := by
  intro n
  simp only [A276950]

end A276950

/-! ## A276950.P2878314290325868124

`char[A275952(n)]`
-/

namespace A276950.P2878314290325868124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276950.P2878314290325868124

namespace A276950

/-- `char[A275952(n)]` -/
def P2878314290325868124.Spec : Prop :=
  ∀ n, (P2878314290325868124.a n : ℤ) = A276950 n

end A276950

/-! ## A276950.P994512873868942319

`A273665(n)%2`
-/

namespace A276950.P994512873868942319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273665 n) 2

end

end A276950.P994512873868942319

namespace A276950

/-- `A273665(n)%2` -/
def P994512873868942319.Spec : Prop :=
  ∀ n, P994512873868942319.a n = A276950 n

end A276950

/-! ## A276950.P6839525464126470889

`A276010(n)%2`
-/

namespace A276950.P6839525464126470889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276010 n) 2

end

end A276950.P6839525464126470889

namespace A276950

/-- `A276010(n)%2` -/
def P6839525464126470889.Spec : Prop :=
  ∀ n, P6839525464126470889.a n = A276950 n

end A276950

/-! ## A276950.P12351154753611163637

`floor(atan(A275832(n)))`
-/

namespace A276950.P12351154753611163637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A275832 n : ℝ)⌋

end

end A276950.P12351154753611163637

namespace A276950

/-- `floor(atan(A275832(n)))` -/
def P12351154753611163637.Spec : Prop :=
  ∀ n, P12351154753611163637.a n = A276950 n

end A276950

/-! ## A276950.P5303901077185354782

`char[comp[A153880(n)]]`
-/

namespace A276950.P5303901077185354782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A276950.P5303901077185354782

namespace A276950

/-- `char[comp[A153880(n)]]` -/
def P5303901077185354782.Spec : Prop :=
  ∀ n, (P5303901077185354782.a n : ℤ) = A276950 n

end A276950

/-! ## A276950.P4379557710970046448

`char[comp[A276009(n)]]`
-/

namespace A276950.P4379557710970046448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A276950.P4379557710970046448

namespace A276950

/-- `char[comp[A276009(n)]]` -/
def P4379557710970046448.Spec : Prop :=
  ∀ n, (P4379557710970046448.a n : ℤ) = A276950 n

end A276950

/-! ## A276950.P15707454181029648545

`log2(gcd(2, A275734(n)))`
-/

namespace A276950.P15707454181029648545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A275734 n) : ℝ)

end

end A276950.P15707454181029648545

namespace A276950

/-- `log2(gcd(2, A275734(n)))` -/
def P15707454181029648545.Spec : Prop :=
  ∀ n, P15707454181029648545.a n = (A276950 n : ℝ)

end A276950

/-! ## A276950.P3008079264054358887

`char[A382184(n+1)]`
-/

namespace A276950.P3008079264054358887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276950.P3008079264054358887

namespace A276950

/-- `char[A382184(n+1)]` -/
def P3008079264054358887.Spec : Prop :=
  ∀ n, (P3008079264054358887.a n : ℤ) = A276950 n

end A276950

/-! ## A276950.P3359504448110892646

`char[eq[1, A276949(n)]]`
-/

namespace A276950.P3359504448110892646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A276950.P3359504448110892646

namespace A276950

/-- `char[eq[1, A276949(n)]]` -/
def P3359504448110892646.Spec : Prop :=
  ∀ n, (P3359504448110892646.a n : ℤ) = A276950 n

end A276950

/-! ## A276950.P7655032905076336418

`char[record[A275848(n+1)]]`
-/

namespace A276950.P7655032905076336418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276950.P7655032905076336418

namespace A276950

/-- `char[record[A275848(n+1)]]` -/
def P7655032905076336418.Spec : Prop :=
  ∀ n, (P7655032905076336418.a n : ℤ) = A276950 n

end A276950

/-! ## A276950.P17930140792085999733

`char[record[A276958(n+1)]]`
-/

namespace A276950.P17930140792085999733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276950.P17930140792085999733

namespace A276950

/-- `char[record[A276958(n+1)]]` -/
def P17930140792085999733.Spec : Prop :=
  ∀ n, (P17930140792085999733.a n : ℤ) = A276950 n

end A276950

/-! ## A276950.P2241892566735017159

`1-char[A276009(n+1)]`
-/

namespace A276950.P2241892566735017159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276950.P2241892566735017159

namespace A276950

/-- `1-char[A276009(n+1)]` -/
def P2241892566735017159.Spec : Prop :=
  ∀ n, P2241892566735017159.a n = A276950 n

end A276950

/-! ## A276950.P10566255380556285102

`1-char[n-A276008(n)]`
-/

namespace A276950.P10566255380556285102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276008 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A276950.P10566255380556285102

namespace A276950

/-- `1-char[n-A276008(n)]` -/
def P10566255380556285102.Spec : Prop :=
  ∀ n, P10566255380556285102.a n = A276950 n

end A276950

/-! ## A276950.P12411312725265059148

`A000035(A276010(n))`
-/

namespace A276950.P12411312725265059148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A276010 n).toNat

end

end A276950.P12411312725265059148

namespace A276950

/-- `A000035(A276010(n))` -/
def P12411312725265059148.Spec : Prop :=
  ∀ n, P12411312725265059148.a n = A276950 n

end A276950

/-! ## A276950.P13183271146837386132

`char[A275848(A256450(n))]`
-/

namespace A276950.P13183271146837386132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (A256450 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A276950.P13183271146837386132

namespace A276950

/-- `char[A275848(A256450(n))]` -/
def P13183271146837386132.Spec : Prop :=
  ∀ n, (P13183271146837386132.a n : ℤ) = A276950 n

end A276950

/-! ## A276950.P8215375421632092515

`A054977(n)%A275832(n)`
-/

namespace A276950.P8215375421632092515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054977 n) (A275832 n)

end

end A276950.P8215375421632092515

namespace A276950

/-- `A054977(n)%A275832(n)` -/
def P8215375421632092515.Spec : Prop :=
  ∀ n, P8215375421632092515.a n = A276950 n

end A276950

/-! ## A276950.P17129419809639748974

`A158388(n)%A275832(n)`
-/

namespace A276950.P17129419809639748974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158388 n) (A275832 n)

end

end A276950.P17129419809639748974

namespace A276950

/-- `A158388(n)%A275832(n)` -/
def P17129419809639748974.Spec : Prop :=
  ∀ n, P17129419809639748974.a n = A276950 n

end A276950

/-! ## A276950.P14904128773987063901

`A261143(n)%A275832(n)`
-/

namespace A276950.P14904128773987063901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261143 n) (A275832 n)

end

end A276950.P14904128773987063901

namespace A276950

/-- `A261143(n)%A275832(n)` -/
def P14904128773987063901.Spec : Prop :=
  ∀ n, P14904128773987063901.a n = A276950 n

end A276950

/-!
# A276951: Index of column where n is located in array A276953 (equally: row in A276955).

The programs for A276951, there is no canonical definition to state claims against.
-/

/-! ## A276951.P13952561587719508083

`A257681(A275847(n))`
-/

namespace A276951.P13952561587719508083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257681 (A275847 n).toNat

end

end A276951.P13952561587719508083

/-! ## A276951.P17634782547693913024

`A276952(A382184(n))`
-/

namespace A276951.P17634782547693913024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A382184 n).toNat

end

end A276951.P17634782547693913024

/-! ## A276951.P11668301797213994213

`(A329048(n)-1)%A018642(n+1)`
-/

namespace A276951.P11668301797213994213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329048 n - 1) (A018642 (n + 1))

end

end A276951.P11668301797213994213

/-! ## A276951.P18293580908901884321

`A329048(n)%A075929(n+3)-1`
-/

namespace A276951.P18293580908901884321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329048 n) (A075929 (n + 3)) - 1

end

end A276951.P18293580908901884321

/-! ## A276951.P6354619179238888651

`(A348630(n+5)-1)%A329048(n)`
-/

namespace A276951.P6354619179238888651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348630 (n + 5) - 1) (A329048 n)

end

end A276951.P6354619179238888651

/-!
# A276952: Partial sums of A276950.

The programs for A276952, the canonical program `A276952.P13654825874652364893` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276952 has offset 0).

The definition of A276952 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276950, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276952.P13654825874652364893

`A276950(n)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A276952

/-- `A276950(n)+a(n-1)` -/
def P13654825874652364893.Spec : Prop :=
  ∀ n, P13654825874652364893.a n = A276952 n

theorem P13654825874652364893.correct : P13654825874652364893.Spec := by
  intro n
  simp only [A276952]

end A276952

/-! ## A276952.P12209426657302622135

`∑[A276950(n)]`
-/

namespace A276952.P12209426657302622135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P12209426657302622135

namespace A276952

/-- `∑[A276950(n)]` -/
def P12209426657302622135.Spec : Prop :=
  ∀ n, P12209426657302622135.a n = A276952 n

end A276952

/-! ## A276952.P2627933274206778977

`∑[char[A273670(n)]]`
-/

namespace A276952.P2627933274206778977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P2627933274206778977

namespace A276952

/-- `∑[char[A273670(n)]]` -/
def P2627933274206778977.Spec : Prop :=
  ∀ n, (P2627933274206778977.a n : ℤ) = A276952 n

end A276952

/-! ## A276952.P9822070295107489031

`∑[char[A275952(n)]]`
-/

namespace A276952.P9822070295107489031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275952 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P9822070295107489031

namespace A276952

/-- `∑[char[A275952(n)]]` -/
def P9822070295107489031.Spec : Prop :=
  ∀ n, (P9822070295107489031.a n : ℤ) = A276952 n

end A276952

/-! ## A276952.P17006307672602509012

`∑[A276010(n)%2]`
-/

namespace A276952.P17006307672602509012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276010 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P17006307672602509012

namespace A276952

/-- `∑[A276010(n)%2]` -/
def P17006307672602509012.Spec : Prop :=
  ∀ n, P17006307672602509012.a n = A276952 n

end A276952

/-! ## A276952.P7937566584720386079

`∑[floor(atan(A275832(n)))]`
-/

namespace A276952.P7937566584720386079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A275832 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P7937566584720386079

namespace A276952

/-- `∑[floor(atan(A275832(n)))]` -/
def P7937566584720386079.Spec : Prop :=
  ∀ n, P7937566584720386079.a n = A276952 n

end A276952

/-! ## A276952.P17283501652422188572

`∑[char[comp[A153880(n)]]]`
-/

namespace A276952.P17283501652422188572
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P17283501652422188572

namespace A276952

/-- `∑[char[comp[A153880(n)]]]` -/
def P17283501652422188572.Spec : Prop :=
  ∀ n, (P17283501652422188572.a n : ℤ) = A276952 n

end A276952

/-! ## A276952.P10273399757983905998

`∑[char[comp[A276009(n)]]]`
-/

namespace A276952.P10273399757983905998
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P10273399757983905998

namespace A276952

/-- `∑[char[comp[A276009(n)]]]` -/
def P10273399757983905998.Spec : Prop :=
  ∀ n, (P10273399757983905998.a n : ℤ) = A276952 n

end A276952

/-! ## A276952.P8689731478906881832

`∑[char[A382184(n+1)]]`
-/

namespace A276952.P8689731478906881832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P8689731478906881832

namespace A276952

/-- `∑[char[A382184(n+1)]]` -/
def P8689731478906881832.Spec : Prop :=
  ∀ n, (P8689731478906881832.a n : ℤ) = A276952 n

end A276952

/-! ## A276952.P11649960187849667736

`∑[char[A382184(n)]]-1`
-/

namespace A276952.P11649960187849667736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382184 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A276952.P11649960187849667736

namespace A276952

/-- `∑[char[A382184(n)]]-1` -/
def P11649960187849667736.Spec : Prop :=
  ∀ n, P11649960187849667736.a n = A276952 n

end A276952

/-! ## A276952.P1286079369641681881

`∑[char[eq[1, A276949(n)]]]`
-/

namespace A276952.P1286079369641681881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P1286079369641681881

namespace A276952

/-- `∑[char[eq[1, A276949(n)]]]` -/
def P1286079369641681881.Spec : Prop :=
  ∀ n, (P1286079369641681881.a n : ℤ) = A276952 n

end A276952

/-! ## A276952.P2210311301017020057

`∑[char[record[A276958(n+1)]]]`
-/

namespace A276952.P2210311301017020057
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P2210311301017020057

namespace A276952

/-- `∑[char[record[A276958(n+1)]]]` -/
def P2210311301017020057.Spec : Prop :=
  ∀ n, (P2210311301017020057.a n : ℤ) = A276952 n

end A276952

/-! ## A276952.P1714969590521769198

`∑[char[A275848(A256450(n))]]`
-/

namespace A276952.P1714969590521769198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (A256450 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P1714969590521769198

namespace A276952

/-- `∑[char[A275848(A256450(n))]]` -/
def P1714969590521769198.Spec : Prop :=
  ∀ n, (P1714969590521769198.a n : ℤ) = A276952 n

end A276952

/-! ## A276952.P7234106800132201405

`∑[val(A020639(A275734(n)), 2)]`
-/

namespace A276952.P7234106800132201405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A275734 n).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P7234106800132201405

namespace A276952

/-- `∑[val(A020639(A275734(n)), 2)]` -/
def P7234106800132201405.Spec : Prop :=
  ∀ n, (P7234106800132201405.a n : ℤ) = A276952 n

end A276952

/-! ## A276952.P2370921185524792422

`∑[A257680(A225901(n))]`
-/

namespace A276952.P2370921185524792422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A225901 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P2370921185524792422

namespace A276952

/-- `∑[A257680(A225901(n))]` -/
def P2370921185524792422.Spec : Prop :=
  ∀ n, P2370921185524792422.a n = A276952 n

end A276952

/-! ## A276952.P15166854391600641262

`∑[A257680(A275845(n))]`
-/

namespace A276952.P15166854391600641262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A275845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P15166854391600641262

namespace A276952

/-- `∑[A257680(A275845(n))]` -/
def P15166854391600641262.Spec : Prop :=
  ∀ n, P15166854391600641262.a n = A276952 n

end A276952

/-! ## A276952.P4401157561998114882

`∑[A257680(A275847(n))]`
-/

namespace A276952.P4401157561998114882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A275847 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P4401157561998114882

namespace A276952

/-- `∑[A257680(A275847(n))]` -/
def P4401157561998114882.Spec : Prop :=
  ∀ n, P4401157561998114882.a n = A276952 n

end A276952

/-! ## A276952.P8462880799491481818

`A273663(n+2-A276950(n+1))`
-/

namespace A276952.P8462880799491481818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 ((n + 2 : ℤ) - A276950 (n + 1)).toNat

end

end A276952.P8462880799491481818

namespace A276952

/-- `A273663(n+2-A276950(n+1))` -/
def P8462880799491481818.Spec : Prop :=
  ∀ n, P8462880799491481818.a n = A276952 n

end A276952

/-! ## A276952.P991105650773171585

`A273663(n+2-A257680(A275847(n+1)))`
-/

namespace A276952.P991105650773171585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 ((n + 2 : ℤ) - A257680 (A275847 (n + 1)).toNat).toNat

end

end A276952.P991105650773171585

namespace A276952

/-- `A273663(n+2-A257680(A275847(n+1)))` -/
def P991105650773171585.Spec : Prop :=
  ∀ n, P991105650773171585.a n = A276952 n

end A276952

/-! ## A276952.P9528861296267895274

`∑[A257680(A275837(A273668(n)))]`
-/

namespace A276952.P9528861296267895274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A275837 (A273668 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276952.P9528861296267895274

namespace A276952

/-- `∑[A257680(A275837(A273668(n)))]` -/
def P9528861296267895274.Spec : Prop :=
  ∀ n, P9528861296267895274.a n = A276952 n

end A276952

/-!
# A276953: Square array A(row,col) read by antidiagonals: A(1,col) = A273670(col-1), and for row > 1, A(row,col) = A153880(A(row-1,col)); Dispersion of factorial base shift A153880 (array transposed).

The programs for A276953, there is no canonical definition to state claims against.
-/

/-! ## A276953.P12686766823675023224

`A275848(A257503(n+1))`
-/

namespace A276953.P12686766823675023224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (A257503 (n + 1)).toNat

end

end A276953.P12686766823675023224

/-! ## A276953.P8796496875314361294

`A276955(A038722(n+1))`
-/

namespace A276953.P8796496875314361294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276955 (A038722 (n + 1)).toNat

end

end A276953.P8796496875314361294

/-! ## A276953.P8718643489916529986

`A276955(A061579(n)+1)`
-/

namespace A276953.P8718643489916529986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276955 (A061579 n + 1).toNat

end

end A276953.P8718643489916529986

/-! ## A276953.P10702406308313742520

`A166350(n+1)*A276616(n+1)`
-/

namespace A276953.P10702406308313742520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) * A276616 (n + 1)

end

end A276953.P10702406308313742520

/-! ## A276953.P2930775973395261799

`A000142(A002260(n+1))*A276616(n+1)`
-/

namespace A276953.P2930775973395261799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002260 (n + 1)).toNat * A276616 (n + 1)

end

end A276953.P2930775973395261799

/-! ## A276953.P5362501236253216356

`A276955(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A276953.P5362501236253216356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276955 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A276953.P5362501236253216356

/-!
# A276954: Inverse permutation to A276953.

The programs for A276954, there is no canonical definition to state claims against.
-/

/-! ## A276954.P6935657131185429382

`A276949(n+1)+A276956(n+1)-A276951(n+1)`
-/

namespace A276954.P6935657131185429382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (n + 1) + (A276956 (n + 1) - A276951 (n + 1))

end

end A276954.P6935657131185429382

/-! ## A276954.P7657786433054441326

`A257504(A275847(n+1))`
-/

namespace A276954.P7657786433054441326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257504 (A275847 (n + 1)).toNat

end

end A276954.P7657786433054441326

/-! ## A276954.P12736056032873300535

`A038722(A276956(n+1))`
-/

namespace A276954.P12736056032873300535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A276956 (n + 1)).toNat

end

end A276954.P12736056032873300535

/-! ## A276954.P11722647481857069779

`A276944(n+1)%A217999(2*n+5)`
-/

namespace A276954.P11722647481857069779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276944 (n + 1)) (A217999 (2 * n + 5))

end

end A276954.P11722647481857069779

/-! ## A276954.P6138515477201330752

`A276944(n+1)%A016825(A000045(n))`
-/

namespace A276954.P6138515477201330752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276944 (n + 1)) (A016825 (A000045 n).toNat)

end

end A276954.P6138515477201330752

/-!
# A276955: Square array A(row,col): A(row,1) = A273670(row-1), and for col > 1, A(row,col) = A153880(A(row,col-1)); Dispersion of factorial base left shift A153880.

The programs for A276955, there is no canonical definition to state claims against.
-/

/-! ## A276955.P10080982661647564608

`A275848(A257505(n+1))`
-/

namespace A276955.P10080982661647564608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (A257505 (n + 1)).toNat

end

end A276955.P10080982661647564608

/-! ## A276955.P13564646771737436901

`A276953(A038722(n+1))`
-/

namespace A276955.P13564646771737436901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276953 (A038722 (n + 1)).toNat

end

end A276955.P13564646771737436901

/-! ## A276955.P10915697984299463839

`A276953(A061579(n)+1)`
-/

namespace A276955.P10915697984299463839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276953 (A061579 n + 1).toNat

end

end A276955.P10915697984299463839

/-! ## A276955.P6136973391046070718

`A276953(∑[A198954(n)]-n)`
-/

namespace A276955.P6136973391046070718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276953 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A276955.P6136973391046070718

/-! ## A276955.P11554589137966810275

`A276953(A114327(n)+1+n)`
-/

namespace A276955.P11554589137966810275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276953 (A114327 n + 1 + (n : ℤ)).toNat

end

end A276955.P11554589137966810275

/-! ## A276955.P1273782864662873958

`A276953(A093995(n+1)-n)`
-/

namespace A276955.P1273782864662873958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276953 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A276955.P1273782864662873958

/-! ## A276955.P14062898217241620081

`A276953(2-A127948(n)+n)`
-/

namespace A276955.P14062898217241620081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276953 (2 - A127948 n + (n : ℤ)).toNat

end

end A276955.P14062898217241620081

/-! ## A276955.P10898316493705276633

`A276953(2-(A127948(n)-n))`
-/

namespace A276955.P10898316493705276633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276953 (2 - (A127948 n - (n : ℤ))).toNat

end

end A276955.P10898316493705276633

/-! ## A276955.P6783277240083207817

`A000142(A004736(n+1))*A276617(n+1)`
-/

namespace A276955.P6783277240083207817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A004736 (n + 1)).toNat * A276617 (n + 1)

end

end A276955.P6783277240083207817

/-! ## A276955.P12317105799184845372

`A276953(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A276955.P12317105799184845372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276953 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A276955.P12317105799184845372

/-!
# A276956: Inverse permutation to A276955.

The programs for A276956, there is no canonical definition to state claims against.
-/

/-! ## A276956.P2157918628563657536

`A276951(n+1)+A276954(n+1)-A276949(n+1)`
-/

namespace A276956.P2157918628563657536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 (n + 1) + (A276954 (n + 1) - A276949 (n + 1))

end

end A276956.P2157918628563657536

/-! ## A276956.P994533747069948404

`A257506(A275847(n+1))`
-/

namespace A276956.P994533747069948404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257506 (A275847 (n + 1)).toNat

end

end A276956.P994533747069948404

/-! ## A276956.P9500155841143759000

`A038722(A276954(n+1))`
-/

namespace A276956.P9500155841143759000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A276954 (n + 1)).toNat

end

end A276956.P9500155841143759000

/-! ## A276956.P17266152923158226365

`A276946(n+1)%Δ[A212612(n+1)]`
-/

namespace A276956.P17266152923158226365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276946 (n + 1)) (f1 (n + 1) - f1 n)

end

end A276956.P17266152923158226365

/-! ## A276956.P3555470353478439703

`A057427(A348289(n))*A276946(n+1)`
-/

namespace A276956.P3555470353478439703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A348289 n).toNat * A276946 (n + 1)

end

end A276956.P3555470353478439703

/-!
# A276959: Sum of squares of digits in all divisors of n.

The programs for A276959, there is no canonical definition to state claims against.
-/

/-! ## A276959.P15627833640531430391

`∑{d}[n+1, A003132(#)]`
-/

namespace A276959.P15627833640531430391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003132 d

end

end A276959.P15627833640531430391

/-! ## A276959.P13971226391246116723

`∑{digits}[A037278(n+1), #²]`
-/

namespace A276959.P13971226391246116723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276959.P13971226391246116723

/-! ## A276959.P13957780123976116645

`∑{digits}[A176558(n+1), #²]`
-/

namespace A276959.P13957780123976116645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276959.P13957780123976116645

/-! ## A276959.P1948255820728358162

`∑{digits}[A243360(n+1), #²]`
-/

namespace A276959.P1948255820728358162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276959.P1948255820728358162

/-! ## A276959.P16412862624858531600

`∑{digits}[A243361(n+1), #²]`
-/

namespace A276959.P16412862624858531600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A276959.P16412862624858531600

/-! ## A276959.P14702572628190463956

`∑{d}[n+1, A258881(#)-#]`
-/

namespace A276959.P14702572628190463956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A258881 d - (d : ℤ))

end

end A276959.P14702572628190463956

/-! ## A276959.P16811852723150625101

`∑{d}[n+1, A257588(A051022(#))]`
-/

namespace A276959.P16811852723150625101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A257588 (A051022 d).toNat

end

end A276959.P16811852723150625101

/-!
# A276960: a(n) = A000262(n)^2.

The programs for A276960, the canonical program `A276960.P2113863334697293408` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276960 has offset 0).

The definition of A276960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276960.P2113863334697293408

`A000262(n)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276960

/-- `A000262(n)²` -/
def P2113863334697293408.Spec : Prop :=
  ∀ n, P2113863334697293408.a n = A276960 n

theorem P2113863334697293408.correct : P2113863334697293408.Spec := by
  intro n
  simp only [A276960]

end A276960

/-! ## A276960.P17482162464823918391

`A293125(n)²`
-/

namespace A276960.P17482162464823918391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293125 n ^ 2

end

end A276960.P17482162464823918391

namespace A276960

/-- `A293125(n)²` -/
def P17482162464823918391.Spec : Prop :=
  ∀ n, P17482162464823918391.a n = A276960 n

end A276960

/-! ## A276960.P18158841436150079585

`A059110(∑[n])²`
-/

namespace A276960.P18158841436150079585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059110 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A276960.P18158841436150079585

namespace A276960

/-- `A059110(∑[n])²` -/
def P18158841436150079585.Spec : Prop :=
  ∀ n, P18158841436150079585.a n = A276960 n

end A276960

/-! ## A276960.P11799632649073197378

`A059114(∑[n])²`
-/

namespace A276960.P11799632649073197378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059114 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A276960.P11799632649073197378

namespace A276960

/-- `A059114(∑[n])²` -/
def P11799632649073197378.Spec : Prop :=
  ∀ n, P11799632649073197378.a n = A276960 n

end A276960

/-! ## A276960.P17444793006233845885

`A129652(∑[n])²`
-/

namespace A276960.P17444793006233845885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A276960.P17444793006233845885

namespace A276960

/-- `A129652(∑[n])²` -/
def P17444793006233845885.Spec : Prop :=
  ∀ n, P17444793006233845885.a n = A276960 n

end A276960

/-!
# A276961: Number of set partitions of [2n] with largest set of size n.

The programs for A276961, there is no canonical definition to state claims against.
-/

/-! ## A276961.P17469229134865593709

`A327884(∑[4*n])`
-/

namespace A276961.P17469229134865593709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276961.P17469229134865593709

/-! ## A276961.P16415015301600626366

`A080510(A004277(n²))`
-/

namespace A276961.P16415015301600626366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A004277 (n ^ 2)).toNat

end

end A276961.P16415015301600626366

/-! ## A276961.P4476782128494798802

`A080510(A028310(2*n²))`
-/

namespace A276961.P4476782128494798802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A028310 (2 * n ^ 2)).toNat

end

end A276961.P4476782128494798802

/-! ## A276961.P16558346150194108627

`A080510(n²+A028310(n²))`
-/

namespace A276961.P16558346150194108627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A276961.P16558346150194108627

/-! ## A276961.P14116781973640433400

`A080510(A001105(A000007(n)+n))`
-/

namespace A276961.P14116781973640433400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080510 (A001105 (A000007 n + (n : ℤ)).toNat).toNat

end

end A276961.P14116781973640433400

/-!
# A276962: Numbers n such that n^17 - 1 is semiprime.

The programs for A276962, there is no canonical definition to state claims against.
-/

/-! ## A276962.P13719930642930904925

`p?[A217071(n+1)-1]+1`
-/

namespace A276962.P13719930642930904925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217071 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A276962.P13719930642930904925

/-! ## A276962.P16212880313289074154

`A000593(p?[A217071(n+1)-1])`
-/

namespace A276962.P16212880313289074154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217071 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A276962.P16212880313289074154

/-! ## A276962.P17287252065880344769

`A014683(p?[A217071(n+1)-1])`
-/

namespace A276962.P17287252065880344769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217071 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A276962.P17287252065880344769

/-! ## A276962.P14943444134557548576

`A017665(p?[A217071(n+1)-1])`
-/

namespace A276962.P14943444134557548576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217071 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A276962.P14943444134557548576

/-! ## A276962.P10689082446491632600

`A023888(p?[A217071(n+1)-1])`
-/

namespace A276962.P10689082446491632600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217071 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A276962.P10689082446491632600

/-! ## A276962.P6452336560098894170

`∩[A008864(n+1), A217071(n+1)]`
-/

namespace A276962.P6452336560098894170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276962.P6452336560098894170

/-! ## A276962.P9655420092454721803

`∩[A055670(n+1), A217071(n+1)]`
-/

namespace A276962.P9655420092454721803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276962.P9655420092454721803

/-! ## A276962.P5735400039277966621

`∩[A135731(n+1), A217071(n+1)]`
-/

namespace A276962.P5735400039277966621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276962.P5735400039277966621

/-! ## A276962.P5087862117428707249

`∩[A217071(n+1), A299763(n+1)]`
-/

namespace A276962.P5087862117428707249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276962.P5087862117428707249

/-!
# A276963: a(n) = prime(n+1)^4 - prime(n)^4.

The programs for A276963, the canonical program `A276963.P164865024294200041` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276963 has offset 1).

The definition of A276963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276963.P164865024294200041

`Δ[(1-A066872(n+1))²]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276963

/-- `Δ[(1-A066872(n+1))²]` -/
def P164865024294200041.Spec : Prop :=
  ∀ n, P164865024294200041.a n = A276963 (n + 1)

theorem P164865024294200041.correct : P164865024294200041.Spec := by
  intro n
  simp only [A276963, Nat.add_sub_cancel]

end A276963

/-! ## A276963.P13014693005408082632

`A133535(n+1)-A172191(n+1)`
-/

namespace A276963.P13014693005408082632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133535 (n + 1) - A172191 (n + 1)

end

end A276963.P13014693005408082632

namespace A276963

/-- `A133535(n+1)-A172191(n+1)` -/
def P13014693005408082632.Spec : Prop :=
  ∀ n, P13014693005408082632.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P8024497028519096375

`A069482(n+1)*A069484(n+1)`
-/

namespace A276963.P8024497028519096375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) * A069484 (n + 1)

end

end A276963.P8024497028519096375

namespace A276963

/-- `A069482(n+1)*A069484(n+1)` -/
def P8024497028519096375.Spec : Prop :=
  ∀ n, P8024497028519096375.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P4042588590718198652

`(A291463(n+1)+A048852(n+1))*A069484(n+1)`
-/

namespace A276963.P4042588590718198652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) + A048852 (n + 1)) * A069484 (n + 1)

end

end A276963.P4042588590718198652

namespace A276963

/-- `(A291463(n+1)+A048852(n+1))*A069484(n+1)` -/
def P4042588590718198652.Spec : Prop :=
  ∀ n, P4042588590718198652.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P6672634538281999255

`A069484(n+1)/A006094(n+1)*A069487(n+1)`
-/

namespace A276963.P6672634538281999255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069484 (n + 1) : ℚ) / (A006094 (n + 1) : ℚ) * (A069487 (n + 1) : ℚ)

end

end A276963.P6672634538281999255

namespace A276963

/-- `A069484(n+1)/A006094(n+1)*A069487(n+1)` -/
def P6672634538281999255.Spec : Prop :=
  ∀ n, P6672634538281999255.a n = (A276963 (n + 1) : ℚ)

end A276963

/-! ## A276963.P4500348333479101201

`Δ[A030514(n+1)]`
-/

namespace A276963.P4500348333479101201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P4500348333479101201

namespace A276963

/-- `Δ[A030514(n+1)]` -/
def P4500348333479101201.Spec : Prop :=
  ∀ n, P4500348333479101201.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P1774621838242864851

`Δ[A153482(n+1)]`
-/

namespace A276963.P1774621838242864851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P1774621838242864851

namespace A276963

/-- `Δ[A153482(n+1)]` -/
def P1774621838242864851.Spec : Prop :=
  ∀ n, P1774621838242864851.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P12090049287000889618

`Δ[A153483(n+1)]`
-/

namespace A276963.P12090049287000889618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P12090049287000889618

namespace A276963

/-- `Δ[A153483(n+1)]` -/
def P12090049287000889618.Spec : Prop :=
  ∀ n, P12090049287000889618.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P1283836970862156326

`Δ[A287925(n+1)]`
-/

namespace A276963.P1283836970862156326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P1283836970862156326

namespace A276963

/-- `Δ[A287925(n+1)]` -/
def P1283836970862156326.Spec : Prop :=
  ∀ n, P1283836970862156326.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P15982073101187115117

`Δ[A001248(n+1)²]`
-/

namespace A276963.P15982073101187115117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P15982073101187115117

namespace A276963

/-- `Δ[A001248(n+1)²]` -/
def P15982073101187115117.Spec : Prop :=
  ∀ n, P15982073101187115117.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P10567993115864973388

`Δ[sqrt(A179645(n+1))]`
-/

namespace A276963.P10567993115864973388
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179645 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P10567993115864973388

namespace A276963

/-- `Δ[sqrt(A179645(n+1))]` -/
def P10567993115864973388.Spec : Prop :=
  ∀ n, P10567993115864973388.a n = (A276963 (n + 1) : ℝ)

end A276963

/-! ## A276963.P14978516567554269201

`Δ[Δ[A007504(n)]²²]`
-/

namespace A276963.P14978516567554269201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P14978516567554269201

namespace A276963

/-- `Δ[Δ[A007504(n)]²²]` -/
def P14978516567554269201.Spec : Prop :=
  ∀ n, P14978516567554269201.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P15263103684856312846

`Δ[Δ[A008348(n)]²²]`
-/

namespace A276963.P15263103684856312846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P15263103684856312846

namespace A276963

/-- `Δ[Δ[A008348(n)]²²]` -/
def P15263103684856312846.Spec : Prop :=
  ∀ n, P15263103684856312846.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P10755438815713079952

`Δ[Δ[A022837(n)]²²]`
-/

namespace A276963.P10755438815713079952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P10755438815713079952

namespace A276963

/-- `Δ[Δ[A022837(n)]²²]` -/
def P10755438815713079952.Spec : Prop :=
  ∀ n, P10755438815713079952.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P9632920778851776542

`Δ[Δ[A064365(n)]²²]`
-/

namespace A276963.P9632920778851776542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P9632920778851776542

namespace A276963

/-- `Δ[Δ[A064365(n)]²²]` -/
def P9632920778851776542.Spec : Prop :=
  ∀ n, P9632920778851776542.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P3177558740339683073

`Δ[Δ[A309222(n)]²²]`
-/

namespace A276963.P3177558740339683073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P3177558740339683073

namespace A276963

/-- `Δ[Δ[A309222(n)]²²]` -/
def P3177558740339683073.Spec : Prop :=
  ∀ n, P3177558740339683073.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P6557082430456196186

`Δ[p?[A259153(n)]²²]`
-/

namespace A276963.P6557082430456196186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P6557082430456196186

namespace A276963

/-- `Δ[p?[A259153(n)]²²]` -/
def P6557082430456196186.Spec : Prop :=
  ∀ n, P6557082430456196186.a n = A276963 (n + 1)

end A276963

/-! ## A276963.P4475329330431231794

`Δ[A172191(n+1)/2]`
-/

namespace A276963.P4475329330431231794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172191 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P4475329330431231794

namespace A276963

/-- `Δ[A172191(n+1)/2]` -/
def P4475329330431231794.Spec : Prop :=
  ∀ n, P4475329330431231794.a n = (A276963 (n + 1) : ℚ)

end A276963

/-! ## A276963.P2176531782935550291

`Δ[A000040(n+1)^4]`
-/

namespace A276963.P2176531782935550291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276963.P2176531782935550291

namespace A276963

/-- `Δ[A000040(n+1)^4]` -/
def P2176531782935550291.Spec : Prop :=
  ∀ n, P2176531782935550291.a n = A276963 (n + 1)

end A276963

/-!
# A276964: a(n) = A000262(n)*A000262(n+1).

The programs for A276964, the canonical program `A276964.P13301482771124687693` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276964 has offset 0).

The definition of A276964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276964.P13301482771124687693

`A000262(n)*A000262(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A276964

/-- `A000262(n)*A000262(n+1)` -/
def P13301482771124687693.Spec : Prop :=
  ∀ n, P13301482771124687693.a n = A276964 n

theorem P13301482771124687693.correct : P13301482771124687693.Spec := by
  intro n
  simp only [A276964]

end A276964

/-! ## A276964.P10426734089174136907

`Δ[A173227(n)]*A000262(n)`
-/

namespace A276964.P10426734089174136907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000262 n

end

end A276964.P10426734089174136907

namespace A276964

/-- `Δ[A173227(n)]*A000262(n)` -/
def P10426734089174136907.Spec : Prop :=
  ∀ n, P10426734089174136907.a n = A276964 n

end A276964

/-! ## A276964.P15355424308482581089

`ratio[A000262(n)]*A276960(n)`
-/

namespace A276964.P15355424308482581089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A276960 n : ℚ)

end

end A276964.P15355424308482581089

namespace A276964

/-- `ratio[A000262(n)]*A276960(n)` -/
def P15355424308482581089.Spec : Prop :=
  ∀ n, P15355424308482581089.a n = (A276964 n : ℚ)

end A276964

/-! ## A276964.P17054600401960974862

`record[A129652(n)]*A000262(n)`
-/

namespace A276964.P17054600401960974862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000262 n

end

end A276964.P17054600401960974862

namespace A276964

/-- `record[A129652(n)]*A000262(n)` -/
def P17054600401960974862.Spec : Prop :=
  ∀ n, P17054600401960974862.a n = A276964 n

end A276964

/-! ## A276964.P5444627481396162693

`record[A206703(n)]*A000262(n)`
-/

namespace A276964.P5444627481396162693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000262 n

end

end A276964.P5444627481396162693

namespace A276964

/-- `record[A206703(n)]*A000262(n)` -/
def P5444627481396162693.Spec : Prop :=
  ∀ n, P5444627481396162693.a n = A276964 n

end A276964

/-!
# A276965: Square row sums of the triangle of Lah numbers (A105278).

The programs for A276965, there is no canonical definition to state claims against.
-/

/-! ## A276965.P11832962369370908945

`A057653(n*a(n-1))` with `a(0)=1`
-/

namespace A276965.P11832962369370908945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057653 ((n : ℤ) * a (n - 1)).toNat

end

end A276965.P11832962369370908945

/-!
# A276966: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 33", based on the 5-celled von Neumann neighborhood.

The programs for A276966, there is no canonical definition to state claims against.
-/

/-! ## A276966.P8804065288233205799

`and(A277799(n), A278345(n))`
-/

namespace A276966.P8804065288233205799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277799 n) (A278345 n)

end

end A276966.P8804065288233205799

/-! ## A276966.P11676845979298937469

`and(A278345(n), A280412(n))`
-/

namespace A276966.P11676845979298937469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278345 n) (A280412 n)

end

end A276966.P11676845979298937469

/-! ## A276966.P8012071863002353670

`and(A278345(n), A282004(n))`
-/

namespace A276966.P8012071863002353670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278345 n) (A282004 n)

end

end A276966.P8012071863002353670

/-! ## A276966.P3431389320649011685

`and(A278345(n), A282658(n))`
-/

namespace A276966.P3431389320649011685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278345 n) (A282658 n)

end

end A276966.P3431389320649011685

/-! ## A276966.P2610602400582670672

`and(A278345(n), A285645(n))`
-/

namespace A276966.P2610602400582670672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278345 n) (A285645 n)

end

end A276966.P2610602400582670672

/-! ## A276966.P7133906870035341195

`and(A278345(n), A288762(n))`
-/

namespace A276966.P7133906870035341195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278345 n) (A288762 n)

end

end A276966.P7133906870035341195

/-! ## A276966.P9417245744396216959

`and(A168330(n+1), A278345(n))`
-/

namespace A276966.P9417245744396216959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168330 (n + 1)) (A278345 n)

end

end A276966.P9417245744396216959

/-! ## A276966.P8804459079328593567

`and(A278345(n), A327767(n+1))`
-/

namespace A276966.P8804459079328593567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278345 n) (A327767 (n + 1))

end

end A276966.P8804459079328593567

/-! ## A276966.P14465929019506105253

`and(A266255(n), A278345(n))`
-/

namespace A276966.P14465929019506105253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266255 n) (A278345 n)

end

end A276966.P14465929019506105253

/-! ## A276966.P15296477582610421108

`and(A266302(n), A278345(n))`
-/

namespace A276966.P15296477582610421108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266302 n) (A278345 n)

end

end A276966.P15296477582610421108

/-! ## A276966.P3317619281041881079

`and(A266661(n), A278345(n))`
-/

namespace A276966.P3317619281041881079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266661 n) (A278345 n)

end

end A276966.P3317619281041881079

/-!
# A276967: Odd integers n such that 2^n == 2^3 (mod n).

The programs for A276967, the canonical program `A276967.P14871204394231339155` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276967 has offset 1).

The definition of A276967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276967.P14871204394231339155

`A015922(record[(n+1)/gcd(2, A015922(n+1))])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A276967

/-- `A015922(record[(n+1)/gcd(2, A015922(n+1))])` -/
def P14871204394231339155.Spec : Prop :=
  ∀ n, P14871204394231339155.a n = A276967 (n + 1)

theorem P14871204394231339155.correct : P14871204394231339155.Spec := by
  intro n
  simp only [A276967, Nat.add_sub_cancel]

end A276967

/-! ## A276967.P13075477910263578024

`record[A000265(A015922(n+1))]`
-/

namespace A276967.P13075477910263578024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A015922 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276967.P13075477910263578024

namespace A276967

/-- `record[A000265(A015922(n+1))]` -/
def P13075477910263578024.Spec : Prop :=
  ∀ n, P13075477910263578024.a n = A276967 (n + 1)

end A276967

/-! ## A276967.P4040424492573801496

`filter[A015922(n+1), A039982(#)]`
-/

namespace A276967.P4040424492573801496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A276967.P4040424492573801496

namespace A276967

/-- `filter[A015922(n+1), A039982(#)]` -/
def P4040424492573801496.Spec : Prop :=
  ∀ n, P4040424492573801496.a n = A276967 (n + 1)

end A276967

/-! ## A276967.P2957204341070699962

`filter[A015922(n+1), A093719(#)]`
-/

namespace A276967.P2957204341070699962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A276967.P2957204341070699962

namespace A276967

/-- `filter[A015922(n+1), A093719(#)]` -/
def P2957204341070699962.Spec : Prop :=
  ∀ n, P2957204341070699962.a n = A276967 (n + 1)

end A276967

/-! ## A276967.P16194675933890111552

`filter[A015922(n+1), A254651(#)]`
-/

namespace A276967.P16194675933890111552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A276967.P16194675933890111552

namespace A276967

/-- `filter[A015922(n+1), A254651(#)]` -/
def P16194675933890111552.Spec : Prop :=
  ∀ n, P16194675933890111552.a n = A276967 (n + 1)

end A276967

/-! ## A276967.P17242824105244295674

`∩[A015922(n+1), A381822(n+1)]`
-/

namespace A276967.P17242824105244295674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P17242824105244295674

namespace A276967

/-- `∩[A015922(n+1), A381822(n+1)]` -/
def P17242824105244295674.Spec : Prop :=
  ∀ n, (P17242824105244295674.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P9927266151731215961

`record[A093178(A015922(n+2))]`
-/

namespace A276967.P9927266151731215961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A015922 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276967.P9927266151731215961

namespace A276967

/-- `record[A093178(A015922(n+2))]` -/
def P9927266151731215961.Spec : Prop :=
  ∀ n, P9927266151731215961.a n = A276967 (n + 1)

end A276967

/-! ## A276967.P1890812982779312711

`∩[A015922(n+1), A004273(n)]`
-/

namespace A276967.P1890812982779312711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P1890812982779312711

namespace A276967

/-- `∩[A015922(n+1), A004273(n)]` -/
def P1890812982779312711.Spec : Prop :=
  ∀ n, (P1890812982779312711.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P355467766829582689

`∩[A015922(n+1), A060747(n)]`
-/

namespace A276967.P355467766829582689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P355467766829582689

namespace A276967

/-- `∩[A015922(n+1), A060747(n)]` -/
def P355467766829582689.Spec : Prop :=
  ∀ n, (P355467766829582689.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P11733137532277877821

`∩[A015922(n+1), A053229(n+1)-2]`
-/

namespace A276967.P11733137532277877821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P11733137532277877821

namespace A276967

/-- `∩[A015922(n+1), A053229(n+1)-2]` -/
def P11733137532277877821.Spec : Prop :=
  ∀ n, (P11733137532277877821.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P6430438612120621016

`∩[A015922(n+1), A260392(n+1)]`
-/

namespace A276967.P6430438612120621016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P6430438612120621016

namespace A276967

/-- `∩[A015922(n+1), A260392(n+1)]` -/
def P6430438612120621016.Spec : Prop :=
  ∀ n, (P6430438612120621016.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P12777042893906596765

`∩[A015922(n+1), A277599(n+1)]`
-/

namespace A276967.P12777042893906596765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P12777042893906596765

namespace A276967

/-- `∩[A015922(n+1), A277599(n+1)]` -/
def P12777042893906596765.Spec : Prop :=
  ∀ n, (P12777042893906596765.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P14063605687943554748

`∩[A015922(n+1), A328585(n+1)]`
-/

namespace A276967.P14063605687943554748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P14063605687943554748

namespace A276967

/-- `∩[A015922(n+1), A328585(n+1)]` -/
def P14063605687943554748.Spec : Prop :=
  ∀ n, (P14063605687943554748.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P18081500849530265212

`∩[A015922(n+1), A191275(n+1)]`
-/

namespace A276967.P18081500849530265212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P18081500849530265212

namespace A276967

/-- `∩[A015922(n+1), A191275(n+1)]` -/
def P18081500849530265212.Spec : Prop :=
  ∀ n, (P18081500849530265212.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P16607319059236618854

`∩[A015922(n+1), A277573(n+1)]`
-/

namespace A276967.P16607319059236618854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P16607319059236618854

namespace A276967

/-- `∩[A015922(n+1), A277573(n+1)]` -/
def P16607319059236618854.Spec : Prop :=
  ∀ n, (P16607319059236618854.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P8749704240903560075

`∩[A015922(n+1), A285627(n+1)]`
-/

namespace A276967.P8749704240903560075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P8749704240903560075

namespace A276967

/-- `∩[A015922(n+1), A285627(n+1)]` -/
def P8749704240903560075.Spec : Prop :=
  ∀ n, (P8749704240903560075.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P2181765279122806693

`∩[A015922(n+1), A047584(n+1)]`
-/

namespace A276967.P2181765279122806693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P2181765279122806693

namespace A276967

/-- `∩[A015922(n+1), A047584(n+1)]` -/
def P2181765279122806693.Spec : Prop :=
  ∀ n, (P2181765279122806693.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P17014458150249893967

`∩[A015922(n+1), A284852(n+1)]`
-/

namespace A276967.P17014458150249893967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P17014458150249893967

namespace A276967

/-- `∩[A015922(n+1), A284852(n+1)]` -/
def P17014458150249893967.Spec : Prop :=
  ∀ n, (P17014458150249893967.a n : ℤ) = A276967 (n + 1)

end A276967

/-! ## A276967.P15647952785548189213

`∩[A015922(n+1), A342051(n+1)]`
-/

namespace A276967.P15647952785548189213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276967.P15647952785548189213

namespace A276967

/-- `∩[A015922(n+1), A342051(n+1)]` -/
def P15647952785548189213.Spec : Prop :=
  ∀ n, (P15647952785548189213.a n : ℤ) = A276967 (n + 1)

end A276967

/-!
# A276968: Odd integers n such that 2^n == 2^5 (mod n).

The programs for A276968, there is no canonical definition to state claims against.
-/

/-! ## A276968.P2378287812509969898

`A015925(lt[0, A015925(n+1)%2]+1)`
-/

namespace A276968.P2378287812509969898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015925 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A276968.P2378287812509969898

/-! ## A276968.P1290572864321977117

`A015925(record[(n+1)/gcd(2, A015925(n+1))])`
-/

namespace A276968.P1290572864321977117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A015925 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A276968.P1290572864321977117

/-! ## A276968.P7694246521882067400

`A015925(record[(n+1)*and(1, A015925(n+1))])`
-/

namespace A276968.P7694246521882067400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A015925 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276968.P7694246521882067400

/-! ## A276968.P7249772061347748141

`filter[A015925(n+1), A093719(#)]`
-/

namespace A276968.P7249772061347748141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A276968.P7249772061347748141

/-! ## A276968.P2776994291668971974

`∩[A015925(n+1), A047623(n+1)]`
-/

namespace A276968.P2776994291668971974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P2776994291668971974

/-! ## A276968.P2782950074797372164

`∩[A015925(n+1), A325128(n+1)]`
-/

namespace A276968.P2782950074797372164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P2782950074797372164

/-! ## A276968.P13029214711327077173

`∩[A015925(n+1), A381822(n+1)]`
-/

namespace A276968.P13029214711327077173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P13029214711327077173

/-! ## A276968.P2260512671116608424

`record[A093178(A015925(n+1))]`
-/

namespace A276968.P2260512671116608424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A015925 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276968.P2260512671116608424

/-! ## A276968.P12381106066011766143

`∩[A015925(n+1), A004273(n)]`
-/

namespace A276968.P12381106066011766143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P12381106066011766143

/-! ## A276968.P816438027361882924

`∩[A015925(n+1), A060747(n)]`
-/

namespace A276968.P816438027361882924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P816438027361882924

/-! ## A276968.P8460613946499185451

`∩[A015925(n+1), A053229(n+1)]`
-/

namespace A276968.P8460613946499185451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P8460613946499185451

/-! ## A276968.P8497030626204165835

`∩[A015925(n+1), A260392(n+1)]`
-/

namespace A276968.P8497030626204165835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P8497030626204165835

/-! ## A276968.P10343187348642119231

`∩[A015925(n+1), A277599(n+1)]`
-/

namespace A276968.P10343187348642119231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P10343187348642119231

/-! ## A276968.P13529507439502488269

`∩[A015925(n+1), A328585(n+1)]`
-/

namespace A276968.P13529507439502488269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P13529507439502488269

/-! ## A276968.P3247130437167501983

`∩[A015925(n+1), A191275(n+1)]`
-/

namespace A276968.P3247130437167501983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P3247130437167501983

/-! ## A276968.P5494238426608234287

`∩[A015925(n+1), A277573(n+1)]`
-/

namespace A276968.P5494238426608234287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P5494238426608234287

/-! ## A276968.P3784874367187247368

`∩[A015925(n+1), A342051(n+1)]`
-/

namespace A276968.P3784874367187247368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P3784874367187247368

/-! ## A276968.P833340852805720066

`∩[A015925(n+1), A232744(n+1)]`
-/

namespace A276968.P833340852805720066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276968.P833340852805720066

/-!
# A276969: Odd integers n such that 2^n == 2^7 (mod n).

The programs for A276969, there is no canonical definition to state claims against.
-/

/-! ## A276969.P372176846489467884

`A015927(record[(n+1)/gcd(2, A015927(n+1))])`
-/

namespace A276969.P372176846489467884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A015927 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A276969.P372176846489467884

/-! ## A276969.P13454524103265146069

`record[A000265(A015927(n+1))]`
-/

namespace A276969.P13454524103265146069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A015927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276969.P13454524103265146069

/-! ## A276969.P11245241354786744493

`filter[A015927(n+1), A374134(#)]`
-/

namespace A276969.P11245241354786744493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A276969.P11245241354786744493

/-! ## A276969.P4756403799278316826

`filter[A015927(n+1), A093719(#)]`
-/

namespace A276969.P4756403799278316826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A276969.P4756403799278316826

/-! ## A276969.P18164800368589962198

`record[A171435(2*A015927(n+1))]`
-/

namespace A276969.P18164800368589962198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A015927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276969.P18164800368589962198

/-! ## A276969.P4388750551329522470

`∩[A015927(n+1), A276283(n)]`
-/

namespace A276969.P4388750551329522470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P4388750551329522470

/-! ## A276969.P3216527011820570443

`∩[A015927(n+1), A334420(n+1)]`
-/

namespace A276969.P3216527011820570443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P3216527011820570443

/-! ## A276969.P1336008874826902595

`∩[A015927(n+1), A325128(n+1)]`
-/

namespace A276969.P1336008874826902595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P1336008874826902595

/-! ## A276969.P16302581954087598218

`∩[A015927(n+1), A372293(n+1)]`
-/

namespace A276969.P16302581954087598218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P16302581954087598218

/-! ## A276969.P3350322421907520117

`∩[A015927(n+1), A381822(n+1)]`
-/

namespace A276969.P3350322421907520117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P3350322421907520117

/-! ## A276969.P9502085127951326031

`∩[A015927(n+1), A089684(n+1)]`
-/

namespace A276969.P9502085127951326031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P9502085127951326031

/-! ## A276969.P4050914108298170947

`record[A093178(A015927(n+2))]`
-/

namespace A276969.P4050914108298170947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A015927 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276969.P4050914108298170947

/-! ## A276969.P4664261869065612477

`∩[A015927(n+1), A004273(n)]`
-/

namespace A276969.P4664261869065612477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P4664261869065612477

/-! ## A276969.P12349031286297464860

`∩[A015927(n+1), A060747(n)]`
-/

namespace A276969.P12349031286297464860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P12349031286297464860

/-! ## A276969.P11867687894063112053

`∩[A015927(n+1), A343011(n+1)]`
-/

namespace A276969.P11867687894063112053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P11867687894063112053

/-! ## A276969.P8031231734761568053

`∩[A015927(n+1), A260392(n+1)]`
-/

namespace A276969.P8031231734761568053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P8031231734761568053

/-! ## A276969.P14421135724675574926

`∩[A015927(n+1), A277599(n+1)]`
-/

namespace A276969.P14421135724675574926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P14421135724675574926

/-! ## A276969.P16230279865333388104

`∩[A015927(n+1), A328585(n+1)]`
-/

namespace A276969.P16230279865333388104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276969.P16230279865333388104

/-!
# A276970: Odd integers n such that 2^n == 2^9 (mod n).

The programs for A276970, there is no canonical definition to state claims against.
-/

/-! ## A276970.P14796161994553176789

`filter[A015931(n+1), A093719(#)]`
-/

namespace A276970.P14796161994553176789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A276970.P14796161994553176789

/-! ## A276970.P15869661339856445217

`∩[A015931(n+1), A004273(n)]`
-/

namespace A276970.P15869661339856445217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P15869661339856445217

/-! ## A276970.P8022127562254425189

`∩[A015931(n+1), A060747(n)]`
-/

namespace A276970.P8022127562254425189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P8022127562254425189

/-! ## A276970.P1393822392793964752

`∩[A015931(n+1), A260392(n+1)]`
-/

namespace A276970.P1393822392793964752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P1393822392793964752

/-! ## A276970.P17287186598900411288

`∩[A015931(n+1), A277599(n+1)]`
-/

namespace A276970.P17287186598900411288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P17287186598900411288

/-! ## A276970.P12474294020805093170

`∩[A015931(n+1), A328585(n+1)]`
-/

namespace A276970.P12474294020805093170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P12474294020805093170

/-! ## A276970.P2244859560552989763

`∩[A015931(n+1), A191275(n+1)]`
-/

namespace A276970.P2244859560552989763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P2244859560552989763

/-! ## A276970.P17783118883834952586

`∩[A015931(n+1), A277573(n+1)]`
-/

namespace A276970.P17783118883834952586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P17783118883834952586

/-! ## A276970.P9298138162337908642

`∩[A015931(n+1), A342051(n+1)]`
-/

namespace A276970.P9298138162337908642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P9298138162337908642

/-! ## A276970.P8280778494369923915

`∩[A015931(n+1), A232744(n+1)]`
-/

namespace A276970.P8280778494369923915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P8280778494369923915

/-! ## A276970.P10969616177136224960

`∩[A015931(n+1), A047273(n+1)]`
-/

namespace A276970.P10969616177136224960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276970.P10969616177136224960

/-! ## A276970.P3900436313922715082

`filter[A015931(n+1), A000035(#)]`
-/

namespace A276970.P3900436313922715082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A276970.P3900436313922715082

/-! ## A276970.P5537597238963757694

`filter[A015931(n+1), A260390(#)]`
-/

namespace A276970.P5537597238963757694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A276970.P5537597238963757694

/-!
# A276971: Odd integers n such that 2^n == 2^11 (mod n).

The programs for A276971, there is no canonical definition to state claims against.
-/

/-! ## A276971.P13242602574105493507

`A015935(record[(n+1)/gcd(2, A015935(n+1))])`
-/

namespace A276971.P13242602574105493507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A015935 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015935 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A276971.P13242602574105493507

/-! ## A276971.P17513742619084110140

`record[A000265(A015935(n+1))]`
-/

namespace A276971.P17513742619084110140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A015935 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276971.P17513742619084110140

/-! ## A276971.P6843942309274174896

`filter[A015935(n+1), A374134(#)]`
-/

namespace A276971.P6843942309274174896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A276971.P6843942309274174896

/-! ## A276971.P995003503232208944

`filter[A015935(n+1), A093719(#)]`
-/

namespace A276971.P995003503232208944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A276971.P995003503232208944

/-! ## A276971.P12202818560021258609

`∩[A015935(n+1), A325128(n+1)]`
-/

namespace A276971.P12202818560021258609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276971.P12202818560021258609

/-! ## A276971.P17454614428103582232

`∩[A015935(n+1), A381822(n+1)]`
-/

namespace A276971.P17454614428103582232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276971.P17454614428103582232

/-! ## A276971.P12256866349485377518

`∩[A015935(n+1), A089684(n+1)]`
-/

namespace A276971.P12256866349485377518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276971.P12256866349485377518

/-! ## A276971.P17215268954278164961

`∩[A015935(n+1), A326835(n+1)]`
-/

namespace A276971.P17215268954278164961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276971.P17215268954278164961

/-! ## A276971.P3842126065638892453

`record[A093178(A015935(n+2))]`
-/

namespace A276971.P3842126065638892453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A015935 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276971.P3842126065638892453

/-! ## A276971.P12137466805279566595

`∩[A015935(n+1), A004273(n)]`
-/

namespace A276971.P12137466805279566595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276971.P12137466805279566595

/-!
# A276973: Sums, in cents, of pairs of United States coins of different denominations.

The programs for A276973, there is no canonical definition to state claims against.
-/

/-! ## A276973.P16869816274955753685

`eq[A011542(n), A278248(A057536(n))]`
-/

namespace A276973.P16869816274955753685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278248 (A057536 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276973.P16869816274955753685

/-! ## A276973.P2231170750644812400

`A002476(n+1)-A070939(3^n)`
-/

namespace A276973.P2231170750644812400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - A070939 (3 ^ n)

end

end A276973.P2231170750644812400

/-! ## A276973.P10861300540108047614

`A002476(n+1)-A029837(A034472(n))`
-/

namespace A276973.P10861300540108047614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - A029837 (A034472 n).toNat

end

end A276973.P10861300540108047614

/-! ## A276973.P10196525244390737645

`A002476(n+1)-A070940(A000244(n))`
-/

namespace A276973.P10196525244390737645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - A070940 (A000244 n).toNat

end

end A276973.P10196525244390737645

/-! ## A276973.P14971161493703148865

`A002476(n+1)-A029837(A104081(n))`
-/

namespace A276973.P14971161493703148865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - A029837 (A104081 n).toNat

end

end A276973.P14971161493703148865

/-!
# A276974: Number T(n,k) of permutations of [n] where the minimal distance between elements of the same cycle equals k (k=n for the identity permutation in S_n); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A276974, there is no canonical definition to state claims against.
-/

/-! ## A276974.P4891781360755408640

`A006842(A361579(n)+1)`
-/

namespace A276974.P4891781360755408640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006842 (A361579 n + 1).toNat

end

end A276974.P4891781360755408640

/-! ## A276974.P5446889717163895744

`∑{d}[A281446(n), A116537(#)]`
-/

namespace A276974.P5446889717163895744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A116537 d

end

end A276974.P5446889717163895744

/-! ## A276974.P8342646398300938862

`A051162(round(sinh(A288108(n))))`
-/

namespace A276974.P8342646398300938862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (SequenceMachineLib.roundAway (Real.sinh (A288108 n : ℝ))).toNat

end

end A276974.P8342646398300938862

/-! ## A276974.P2816076160515087819

`A371591(A353859(n)^A353859(n+1))`
-/

namespace A276974.P2816076160515087819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371591 (SequenceMachineLib.roundAway ((A353859 n : ℚ) ^ (A353859 (n + 1) : ℤ))).toNat

end

end A276974.P2816076160515087819

/-! ## A276974.P11611797839484488235

`A022827(A347010(n+1))`
-/

namespace A276974.P11611797839484488235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022827 (A347010 (n + 1)).toNat

end

end A276974.P11611797839484488235

/-!
# A276975: Number of permutations of [n] such that the minimal distance between elements of the same cycle equals one, a(1)=1 by convention.

The programs for A276975, there is no canonical definition to state claims against.
-/

/-! ## A276975.P10064632529975149064

`abs(record[Δ[A276974(n)]])`
-/

namespace A276975.P10064632529975149064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A276975.P10064632529975149064

/-! ## A276975.P15864010265676457619

`A276974(∑[n+1]+1)`
-/

namespace A276975.P15864010265676457619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A276975.P15864010265676457619

/-! ## A276975.P2299050141880729512

`record[A276974(n+1)]+floor(acot(n))`
-/

namespace A276975.P2299050141880729512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A276975.P2299050141880729512

/-! ## A276975.P7079671252042555854

`A000038(n)+record[Δ[A276974(n)]]`
-/

namespace A276975.P7079671252042555854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276975.P7079671252042555854

/-! ## A276975.P16401003271495716368

`A000007(n)+record[A276974(n+1)]`
-/

namespace A276975.P16401003271495716368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276975.P16401003271495716368

/-!
# A276976: Smallest m such that b^m == b^n (mod n) for every integer b.

The programs for A276976, there is no canonical definition to state claims against.
-/

/-! ## A276976.P12141866749256450825

`A270096(n+1)+A098108(A284075(n+1))`
-/

namespace A276976.P12141866749256450825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1) + A098108 (A284075 (n + 1)).toNat

end

end A276976.P12141866749256450825

/-! ## A276976.P17821778170289629627

`A270096(n+1)+A060175(A269983(2*n+3))`
-/

namespace A276976.P17821778170289629627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1) + A060175 (A269983 (2 * n + 3)).toNat

end

end A276976.P17821778170289629627

/-! ## A276976.P11533789820510393107

`A270096(n+1)+A016232(A195315(n+1))`
-/

namespace A276976.P11533789820510393107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1) + A016232 (A195315 (n + 1)).toNat

end

end A276976.P11533789820510393107

/-! ## A276976.P8027918184377332386

`A270096(n+1)+A088517(A270339(n+5))`
-/

namespace A276976.P8027918184377332386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1) + A088517 (A270339 (n + 5)).toNat

end

end A276976.P8027918184377332386

/-! ## A276976.P11769577114982228079

`A270096(n+1)+A010054(A134605(2*(n+1)))`
-/

namespace A276976.P11769577114982228079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 1) + A010054 (A134605 (2 * (n + 1))).toNat

end

end A276976.P11769577114982228079

/-!
# A276978: a(n) = (ceiling(n/2))^n.

The programs for A276978, there is no canonical definition to state claims against.
-/

/-! ## A276978.P12535082298076137339

`∑[log2(gcd(2, n))]^(n+1)`
-/

namespace A276978.P12535082298076137339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A276978.P12535082298076137339

/-! ## A276978.P16566076186810181807

`∑[char[2*n]]^(n+1)`
-/

namespace A276978.P16566076186810181807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A276978.P16566076186810181807

/-! ## A276978.P8813607971384272330

`abs(∑[n%2-1]^(n+1))`
-/

namespace A276978.P8813607971384272330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)|

end

end A276978.P8813607971384272330

/-! ## A276978.P9371263719728363223

`abs(∑[1-and(1, n)]^(n+1))`
-/

namespace A276978.P9371263719728363223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)|

end

end A276978.P9371263719728363223

/-! ## A276978.P981546093527828458

`root(∑[(n+1)%2], 1/(n+1))`
-/

namespace A276978.P981546093527828458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / (1 / (n + 1 : ℚ) : ℝ))

end

end A276978.P981546093527828458

/-! ## A276978.P9896383448712006263

`root(∑[and(1, n+1)], 1/(n+1))`
-/

namespace A276978.P9896383448712006263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / (1 / (n + 1 : ℚ) : ℝ))

end

end A276978.P9896383448712006263

/-! ## A276978.P11439864307113829514

`floor((and(n, -2)/2+1)^(n+1))`
-/

namespace A276978.P11439864307113829514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Int.land (n : ℤ) (-2) : ℚ) / 2 + 1) ^ (n + 1)⌋

end

end A276978.P11439864307113829514

/-! ## A276978.P17812922246563804243

`round((and(n, -2)/2+1)^(n+1))`
-/

namespace A276978.P17812922246563804243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Int.land (n : ℤ) (-2) : ℚ) / 2 + 1) ^ (n + 1))

end

end A276978.P17812922246563804243

/-! ## A276978.P12678765343915735805

`abs(∑[1-a(n-1)]^(n+1))` with `a(0)=1`
-/

namespace A276978.P12678765343915735805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)|

end

end A276978.P12678765343915735805

/-! ## A276978.P16248126865933689842

`floor(∑[1-a(n-1)]^(n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A276978.P16248126865933689842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A276978.P16248126865933689842

/-!
# A276979: a(n) = (floor(n/2)+1)^n.

The programs for A276979, there is no canonical definition to state claims against.
-/

/-! ## A276979.P9089845046531744047

`(ceil(n/2)+1)^(n+1)`
-/

namespace A276979.P9089845046531744047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) ^ (n + 1)

end

end A276979.P9089845046531744047

/-! ## A276979.P6900083948740482432

`record[ceil(xor(1, n)/4)^floor(n/2)]`
-/

namespace A276979.P6900083948740482432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.xor 1 n : ℚ) / 4⌉ : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276979.P6900083948740482432

/-! ## A276979.P11134010030761734185

`record[floor(n/2)^(n-2%(n+1))]`
-/

namespace A276979.P11134010030761734185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ : ℚ) ^ ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276979.P11134010030761734185

/-! ## A276979.P1754467151463783815

`record[floor(n/2)^((3*n)%(n+1))]`
-/

namespace A276979.P1754467151463783815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ (3 * n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276979.P1754467151463783815

/-! ## A276979.P912765297490599032

`floor(∑[1-a(n-1)]^(n+1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A276979.P912765297490599032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A276979.P912765297490599032

/-! ## A276979.P897189445668341931

`∪[(n+1)^(2*n+1), ((n+1)^n)²]`
-/

namespace A276979.P897189445668341931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A276979.P897189445668341931

/-! ## A276979.P5825254777124080592

`A009998(A210981(n+1))`
-/

namespace A276979.P5825254777124080592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A210981 (n + 1)).toNat

end

end A276979.P5825254777124080592

/-! ## A276979.P14193869238306536010

`A089072(A080827(n+1))`
-/

namespace A276979.P14193869238306536010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (A080827 (n + 1)).toNat

end

end A276979.P14193869238306536010

/-! ## A276979.P4768643911236143065

`A099555(A081346(n+1))`
-/

namespace A276979.P4768643911236143065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099555 (A081346 (n + 1)).toNat

end

end A276979.P4768643911236143065

/-! ## A276979.P15458262361758329608

`A089072(A085913(n+2))`
-/

namespace A276979.P15458262361758329608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (A085913 (n + 2)).toNat

end

end A276979.P15458262361758329608

/-!
# A276981: Irregular triangle T(n,k) read by rows of residue classes of powers of 10 modulo n.

The programs for A276981, there is no canonical definition to state claims against.
-/

/-! ## A276981.P11268328454484842274

`A213725(or(A056440(n+1), A265711(3*n+1)))`
-/

namespace A276981.P11268328454484842274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (Int.lor (A056440 (n + 1)) (A265711 (3 * n + 1))).toNat

end

end A276981.P11268328454484842274

/-! ## A276981.P9209578453540371247

`A065648(A101891(n))%A059128(n)`
-/

namespace A276981.P9209578453540371247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065648 (A101891 n).toNat) (A059128 n)

end

end A276981.P9209578453540371247

/-! ## A276981.P4062810911346440182

`A081603(C(A097987(n+1), A137734(n)))`
-/

namespace A276981.P4062810911346440182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (Nat.choose (A097987 (n + 1)).toNat (A137734 n).toNat)

end

end A276981.P4062810911346440182

/-! ## A276981.P17501198546453274900

`A025581(A023393(n)%A296021(3*n+2))`
-/

namespace A276981.P17501198546453274900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Int.tmod (A023393 n) (A296021 (3 * n + 2))).toNat

end

end A276981.P17501198546453274900

/-! ## A276981.P16846882691992669653

`C(A001222(A002064(n)), A023416(2*(n+2)))`
-/

namespace A276981.P16846882691992669653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A002064 n).toNat).toNat (A023416 (2 * (n + 2))).toNat

end

end A276981.P16846882691992669653

/-!
# A276983: Semiprimes n such that n-1 or n+1 is prime.

The programs for A276983, the canonical program `A276983.P11229659679597284587` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276983 has offset 1).

The definition of A276983 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120628, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A276983.P11229659679597284587

`2*A120628(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A276983

/-- `2*A120628(n+1)` -/
def P11229659679597284587.Spec : Prop :=
  ∀ n, P11229659679597284587.a n = A276983 (n + 1)

theorem P11229659679597284587.correct : P11229659679597284587.Spec := by
  intro n
  simp only [A276983, Nat.add_sub_cancel]

end A276983

/-! ## A276983.P17027641713686586773

`∪[A077065(n+1), A077068(n+1)]`
-/

namespace A276983.P17027641713686586773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P17027641713686586773

namespace A276983

/-- `∪[A077065(n+1), A077068(n+1)]` -/
def P17027641713686586773.Spec : Prop :=
  ∀ n, (P17027641713686586773.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P1568246593130691033

`∪[A005383(n+1)+1, A077065(n+1)]`
-/

namespace A276983.P1568246593130691033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P1568246593130691033

namespace A276983

/-- `∪[A005383(n+1)+1, A077065(n+1)]` -/
def P1568246593130691033.Spec : Prop :=
  ∀ n, (P1568246593130691033.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P4379748903901993833

`2*∪[A005382(n+1), A005384(n+1)]`
-/

namespace A276983.P4379748903901993833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P4379748903901993833

namespace A276983

/-- `2*∪[A005382(n+1), A005384(n+1)]` -/
def P4379748903901993833.Spec : Prop :=
  ∀ n, (P4379748903901993833.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P953348156309834949

`∩[A100484(n+1), A333197(n+1)]`
-/

namespace A276983.P953348156309834949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P953348156309834949

namespace A276983

/-- `∩[A100484(n+1), A333197(n+1)]` -/
def P953348156309834949.Spec : Prop :=
  ∀ n, (P953348156309834949.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P4465604917243340931

`∩[A001747(n+1), A333197(n+1)]`
-/

namespace A276983.P4465604917243340931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P4465604917243340931

namespace A276983

/-- `∩[A001747(n+1), A333197(n+1)]` -/
def P4465604917243340931.Spec : Prop :=
  ∀ n, (P4465604917243340931.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P4372965341002314366

`∩[A062091(n+1), A333197(n+1)]`
-/

namespace A276983.P4372965341002314366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P4372965341002314366

namespace A276983

/-- `∩[A062091(n+1), A333197(n+1)]` -/
def P4372965341002314366.Spec : Prop :=
  ∀ n, (P4372965341002314366.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P1035202340482939978

`∩[A193305(n+1), A333197(n+1)]`
-/

namespace A276983.P1035202340482939978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P1035202340482939978

namespace A276983

/-- `∩[A193305(n+1), A333197(n+1)]` -/
def P1035202340482939978.Spec : Prop :=
  ∀ n, (P1035202340482939978.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P15625967526238638239

`∩[A157931(n+1), A333197(n+1)]`
-/

namespace A276983.P15625967526238638239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P15625967526238638239

namespace A276983

/-- `∩[A157931(n+1), A333197(n+1)]` -/
def P15625967526238638239.Spec : Prop :=
  ∀ n, (P15625967526238638239.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P11423484666671447598

`∩[A253106(n+1), A333197(n+1)]`
-/

namespace A276983.P11423484666671447598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P11423484666671447598

namespace A276983

/-- `∩[A253106(n+1), A333197(n+1)]` -/
def P11423484666671447598.Spec : Prop :=
  ∀ n, (P11423484666671447598.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P15158548684063830833

`∩[A318990(n+1), A333197(n+1)]`
-/

namespace A276983.P15158548684063830833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P15158548684063830833

namespace A276983

/-- `∩[A318990(n+1), A333197(n+1)]` -/
def P15158548684063830833.Spec : Prop :=
  ∀ n, (P15158548684063830833.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P9749353206246827784

`record[2*A087713(n+2)]`
-/

namespace A276983.P9749353206246827784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087713 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276983.P9749353206246827784

namespace A276983

/-- `record[2*A087713(n+2)]` -/
def P9749353206246827784.Spec : Prop :=
  ∀ n, P9749353206246827784.a n = A276983 (n + 1)

end A276983

/-! ## A276983.P3463090394605060408

`∩[A075862(n+1), A333197(n+1)]`
-/

namespace A276983.P3463090394605060408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P3463090394605060408

namespace A276983

/-- `∩[A075862(n+1), A333197(n+1)]` -/
def P3463090394605060408.Spec : Prop :=
  ∀ n, (P3463090394605060408.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P16624997254099824731

`record[2*A006530(A082542(n+1))]`
-/

namespace A276983.P16624997254099824731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (A082542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276983.P16624997254099824731

namespace A276983

/-- `record[2*A006530(A082542(n+1))]` -/
def P16624997254099824731.Spec : Prop :=
  ∀ n, P16624997254099824731.a n = A276983 (n + 1)

end A276983

/-! ## A276983.P7735556359560771658

`∩[A091376(n+1), A333197(n+1)]`
-/

namespace A276983.P7735556359560771658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P7735556359560771658

namespace A276983

/-- `∩[A091376(n+1), A333197(n+1)]` -/
def P7735556359560771658.Spec : Prop :=
  ∀ n, (P7735556359560771658.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P715573673047976682

`∩[A333197(n+1), A387787(n+1)]`
-/

namespace A276983.P715573673047976682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276983.P715573673047976682

namespace A276983

/-- `∩[A333197(n+1), A387787(n+1)]` -/
def P715573673047976682.Spec : Prop :=
  ∀ n, (P715573673047976682.a n : ℤ) = A276983 (n + 1)

end A276983

/-! ## A276983.P4266242404534128633

`A120628(n+1)+A120628(n+1)%A016961(n)`
-/

namespace A276983.P4266242404534128633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120628 (n + 1) + Int.tmod (A120628 (n + 1)) (A016961 n)

end

end A276983.P4266242404534128633

namespace A276983

/-- `A120628(n+1)+A120628(n+1)%A016961(n)` -/
def P4266242404534128633.Spec : Prop :=
  ∀ n, P4266242404534128633.a n = A276983 (n + 1)

end A276983

/-! ## A276983.P10447058771037214257

`A120628(n+1)+A120628((n+1)%A087475(n))`
-/

namespace A276983.P10447058771037214257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120628 (n + 1) + A120628 (Int.tmod (n + 1 : ℤ) (A087475 n)).toNat

end

end A276983.P10447058771037214257

namespace A276983

/-- `A120628(n+1)+A120628((n+1)%A087475(n))` -/
def P10447058771037214257.Spec : Prop :=
  ∀ n, P10447058771037214257.a n = A276983 (n + 1)

end A276983

/-! ## A276983.P18021145825428400044

`filter[A333197(n+1), A064911(#)]`
-/

namespace A276983.P18021145825428400044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A276983.P18021145825428400044

namespace A276983

/-- `filter[A333197(n+1), A064911(#)]` -/
def P18021145825428400044.Spec : Prop :=
  ∀ n, P18021145825428400044.a n = A276983 (n + 1)

end A276983

/-! ## A276983.P2268992310262158274

`filter[A333197(n+1), A101040(#)]`
-/

namespace A276983.P2268992310262158274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A276983.P2268992310262158274

namespace A276983

/-- `filter[A333197(n+1), A101040(#)]` -/
def P2268992310262158274.Spec : Prop :=
  ∀ n, P2268992310262158274.a n = A276983 (n + 1)

end A276983

/-!
# A276984: Sum of squares of numbers less than n that do not divide n.

The programs for A276984, the canonical program `A276984.P11228554743463774471` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276984 has offset 1).

The definition of A276984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276984.P11228554743463774471

`∑[(n+1)²]-∑{d}[n+1, #²]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A276984

/-- `∑[(n+1)²]-∑{d}[n+1, #²]` -/
def P11228554743463774471.Spec : Prop :=
  ∀ n, P11228554743463774471.a n = A276984 (n + 1)

theorem P11228554743463774471.correct : P11228554743463774471.Spec := by
  intro n
  simp only [A276984, Nat.add_sub_cancel]

end A276984

/-! ## A276984.P11835843096934663699

`∑[n²]-A067558(n+1)`
-/

namespace A276984.P11835843096934663699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A067558 (n + 1)

end

end A276984.P11835843096934663699

namespace A276984

/-- `∑[n²]-A067558(n+1)` -/
def P11835843096934663699.Spec : Prop :=
  ∀ n, P11835843096934663699.a n = A276984 (n + 1)

end A276984

/-! ## A276984.P11535380654171314284

`∑[(n+1)²]-A001157(n+1)`
-/

namespace A276984.P11535380654171314284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001157 (n + 1)

end

end A276984.P11535380654171314284

namespace A276984

/-- `∑[(n+1)²]-A001157(n+1)` -/
def P11535380654171314284.Spec : Prop :=
  ∀ n, P11535380654171314284.a n = A276984 (n + 1)

end A276984

/-! ## A276984.P10596955518899954276

`abs(A000330(n+1)-A001157(n+1))`
-/

namespace A276984.P10596955518899954276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000330 (n + 1) - A001157 (n + 1)|

end

end A276984.P10596955518899954276

namespace A276984

/-- `abs(A000330(n+1)-A001157(n+1))` -/
def P10596955518899954276.Spec : Prop :=
  ∀ n, P10596955518899954276.a n = A276984 (n + 1)

end A276984

/-! ## A276984.P15165313352980930719

`A000292(n+1)+A000292(n)-A001157(n+1)`
-/

namespace A276984.P15165313352980930719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A000292 n - A001157 (n + 1))

end

end A276984.P15165313352980930719

namespace A276984

/-- `A000292(n+1)+A000292(n)-A001157(n+1)` -/
def P15165313352980930719.Spec : Prop :=
  ∀ n, P15165313352980930719.a n = A276984 (n + 1)

end A276984

/-! ## A276984.P6039838395566530608

`A064602(n+1)-(A279847(n+1)+A001157(n+1))`
-/

namespace A276984.P6039838395566530608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) - (A279847 (n + 1) + A001157 (n + 1))

end

end A276984.P6039838395566530608

namespace A276984

/-- `A064602(n+1)-(A279847(n+1)+A001157(n+1))` -/
def P6039838395566530608.Spec : Prop :=
  ∀ n, P6039838395566530608.a n = A276984 (n + 1)

end A276984

/-! ## A276984.P7781956374030490757

`A000330(n+1)-A035316((n+1)²)`
-/

namespace A276984.P7781956374030490757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - A035316 ((n + 1) ^ 2)

end

end A276984.P7781956374030490757

namespace A276984

/-- `A000330(n+1)-A035316((n+1)²)` -/
def P7781956374030490757.Spec : Prop :=
  ∀ n, P7781956374030490757.a n = A276984 (n + 1)

end A276984

/-!
# A276985: Triangle read by rows: T(n,k) = number of k-dimensional elements in an n-dimensional cross-polytope, n>=1, 0<=k

The programs for A276985, the canonical program `A276985.P4240912874753505783` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276985 has offset 1).

The definition of A276985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276985.P4240912874753505783

`2*A193862(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A276985

/-- `2*A193862(n)` -/
def P4240912874753505783.Spec : Prop :=
  ∀ n, P4240912874753505783.a n = A276985 (n + 1)

theorem P4240912874753505783.correct : P4240912874753505783.Spec := by
  intro n
  simp only [A276985, Nat.add_sub_cancel]

end A276985

/-! ## A276985.P15123473787492467267

`A209757(n+1)+A013609(n)`
-/

namespace A276985.P15123473787492467267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209757 (n + 1) + A013609 n

end

end A276985.P15123473787492467267

namespace A276985

/-- `A209757(n+1)+A013609(n)` -/
def P15123473787492467267.Spec : Prop :=
  ∀ n, P15123473787492467267.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P6318085978379822611

`2*A059268(n)*A135278(n)`
-/

namespace A276985.P6318085978379822611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059268 n * A135278 n)

end

end A276985.P6318085978379822611

namespace A276985

/-- `2*A059268(n)*A135278(n)` -/
def P6318085978379822611.Spec : Prop :=
  ∀ n, P6318085978379822611.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P16736050538663855805

`2*A133341(n)*A238303(n)`
-/

namespace A276985.P16736050538663855805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133341 n * A238303 n)

end

end A276985.P16736050538663855805

namespace A276985

/-- `2*A133341(n)*A238303(n)` -/
def P16736050538663855805.Spec : Prop :=
  ∀ n, P16736050538663855805.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P17847942954126544288

`A209761(n+1)+A209706(n+1)`
-/

namespace A276985.P17847942954126544288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209761 (n + 1) + A209706 (n + 1)

end

end A276985.P17847942954126544288

namespace A276985

/-- `A209761(n+1)+A209706(n+1)` -/
def P17847942954126544288.Spec : Prop :=
  ∀ n, P17847942954126544288.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P17075428701013737451

`A210234(n+1)+A210233(n+1)`
-/

namespace A276985.P17075428701013737451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210234 (n + 1) + A210233 (n + 1)

end

end A276985.P17075428701013737451

namespace A276985

/-- `A210234(n+1)+A210233(n+1)` -/
def P17075428701013737451.Spec : Prop :=
  ∀ n, P17075428701013737451.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P14252054165617265411

`2*A143376(n+1)/A130321(n)`
-/

namespace A276985.P14252054165617265411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A143376 (n + 1) : ℚ) / (A130321 n : ℚ))

end

end A276985.P14252054165617265411

namespace A276985

/-- `2*A143376(n+1)/A130321(n)` -/
def P14252054165617265411.Spec : Prop :=
  ∀ n, P14252054165617265411.a n = (A276985 (n + 1) : ℚ)

end A276985

/-! ## A276985.P3129633237018742696

`(A007318(n+1)+A007318(n))*A130453(n+1)`
-/

namespace A276985.P3129633237018742696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (n + 1) + A007318 n) * A130453 (n + 1)

end

end A276985.P3129633237018742696

namespace A276985

/-- `(A007318(n+1)+A007318(n))*A130453(n+1)` -/
def P3129633237018742696.Spec : Prop :=
  ∀ n, P3129633237018742696.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P2846480021897131447

`A193844(n+1)+A193844(n)`
-/

namespace A276985.P2846480021897131447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (n + 1) + A193844 n

end

end A276985.P2846480021897131447

namespace A276985

/-- `A193844(n+1)+A193844(n)` -/
def P2846480021897131447.Spec : Prop :=
  ∀ n, P2846480021897131447.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P3190014199248782813

`A182059(n+1)+2*A013609(n)`
-/

namespace A276985.P3190014199248782813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182059 (n + 1) + 2 * A013609 n

end

end A276985.P3190014199248782813

namespace A276985

/-- `A182059(n+1)+2*A013609(n)` -/
def P3190014199248782813.Spec : Prop :=
  ∀ n, P3190014199248782813.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P17598982594574222957

`A209705(n+1)+A209762(n+1)+A209705(n+2)`
-/

namespace A276985.P17598982594574222957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (n + 1) + (A209762 (n + 1) + A209705 (n + 2))

end

end A276985.P17598982594574222957

namespace A276985

/-- `A209705(n+1)+A209762(n+1)+A209705(n+2)` -/
def P17598982594574222957.Spec : Prop :=
  ∀ n, P17598982594574222957.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P7500282811069485192

`2*A115068(A038722(n+1))`
-/

namespace A276985.P7500282811069485192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115068 (A038722 (n + 1)).toNat

end

end A276985.P7500282811069485192

namespace A276985

/-- `2*A115068(A038722(n+1))` -/
def P7500282811069485192.Spec : Prop :=
  ∀ n, P7500282811069485192.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P1622323160520700388

`2*A193819(A066182(n+1))`
-/

namespace A276985.P1622323160520700388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193819 (A066182 (n + 1)).toNat

end

end A276985.P1622323160520700388

namespace A276985

/-- `2*A193819(A066182(n+1))` -/
def P1622323160520700388.Spec : Prop :=
  ∀ n, P1622323160520700388.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P1914964824010982487

`A013609(comp[∑[n]])`
-/

namespace A276985.P1914964824010982487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A276985.P1914964824010982487

namespace A276985

/-- `A013609(comp[∑[n]])` -/
def P1914964824010982487.Spec : Prop :=
  ∀ n, P1914964824010982487.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P16856198211381147034

`A182059(comp[∑[n]])`
-/

namespace A276985.P16856198211381147034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182059 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A276985.P16856198211381147034

namespace A276985

/-- `A182059(comp[∑[n]])` -/
def P16856198211381147034.Spec : Prop :=
  ∀ n, P16856198211381147034.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P1609960676916095853

`abs(A303872(comp[∑[n]]))`
-/

namespace A276985.P1609960676916095853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303872 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A276985.P1609960676916095853

namespace A276985

/-- `abs(A303872(comp[∑[n]]))` -/
def P1609960676916095853.Spec : Prop :=
  ∀ n, P1609960676916095853.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P10801913688159383852

`2*A082137(comp[∑[n]])`
-/

namespace A276985.P10801913688159383852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082137 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A276985.P10801913688159383852

namespace A276985

/-- `2*A082137(comp[∑[n]])` -/
def P10801913688159383852.Spec : Prop :=
  ∀ n, P10801913688159383852.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P10035936842388957125

`A038207(A099375(n)+n)`
-/

namespace A276985.P10035936842388957125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A099375 n + (n : ℤ)).toNat

end

end A276985.P10035936842388957125

namespace A276985

/-- `A038207(A099375(n)+n)` -/
def P10035936842388957125.Spec : Prop :=
  ∀ n, P10035936842388957125.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P12276121033813859716

`abs(A185342(n))`
-/

namespace A276985.P12276121033813859716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185342 n|

end

end A276985.P12276121033813859716

namespace A276985

/-- `abs(A185342(n))` -/
def P12276121033813859716.Spec : Prop :=
  ∀ n, P12276121033813859716.a n = A276985 (n + 1)

end A276985

/-! ## A276985.P9194737066480520741

`gcd(A000038(n), A185342(n))`
-/

namespace A276985.P9194737066480520741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A185342 n)

end

end A276985.P9194737066480520741

namespace A276985

/-- `gcd(A000038(n), A185342(n))` -/
def P9194737066480520741.Spec : Prop :=
  ∀ n, (P9194737066480520741.a n : ℤ) = A276985 (n + 1)

end A276985

/-!
# A276986: Numbers n for which there is a permutation p of (1,2,3,...,n) such that k+p(k) is a Catalan number for 1<=k<=n.

The programs for A276986, there is no canonical definition to state claims against.
-/

/-! ## A276986.P6514245039128947363

`A197433(2*n)-A197433(n)`
-/

namespace A276986.P6514245039128947363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 (2 * n) - A197433 n

end

end A276986.P6514245039128947363

/-! ## A276986.P15365696186130891208

`A080336(A197433(n))`
-/

namespace A276986.P15365696186130891208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 (A197433 n).toNat

end

end A276986.P15365696186130891208

/-! ## A276986.P12379720214406508202

`A080336(lt[0, A176137(n)])`
-/

namespace A276986.P12379720214406508202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A276986.P12379720214406508202

/-! ## A276986.P5521907363702514614

`A335524((∑[and(n, -n)^log2(3)]+n)/2+1)`
-/

namespace A276986.P5521907363702514614
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + 1)).toNat

end

end A276986.P5521907363702514614

/-! ## A276986.P14505650475008619103

`A335525((∑[and(n, -n)^log2(3)]+n)/2+1)`
-/

namespace A276986.P14505650475008619103
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335525 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + 1)).toNat

end

end A276986.P14505650475008619103

/-!
# A276988: a(n) is the least k such that 10*k+prime(n) is composite.

The programs for A276988, the canonical program `A276988.P13668740206633188978` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276988 has offset 1).

The definition of A276988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276988.P13196036762687916551

`char[1]+A010051(A175225(n+1))+1`
-/

namespace A276988.P13196036762687916551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A010051 (A175225 (n + 1)).toNat + 1)

end

end A276988.P13196036762687916551

namespace A276988

/-- `char[1]+A010051(A175225(n+1))+1` -/
def P13196036762687916551.Spec : Prop :=
  ∀ n, P13196036762687916551.a n = A276988 (n + 1)

end A276988

/-! ## A276988.P6075273094814783023

`A010051(A175225(n+1))+A000005(C(2, n)!)`
-/

namespace A276988.P6075273094814783023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A175225 (n + 1)).toNat + A000005 (Nat.factorial (Nat.choose 2 n))

end

end A276988.P6075273094814783023

namespace A276988

/-- `A010051(A175225(n+1))+A000005(C(2, n)!)` -/
def P6075273094814783023.Spec : Prop :=
  ∀ n, P6075273094814783023.a n = A276988 (n + 1)

end A276988

/-! ## A276988.P13668740206633188978

`floor(A006530(A175225(n+1))/A052147(n+1))+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A276988

/-- `floor(A006530(A175225(n+1))/A052147(n+1))+1` -/
def P13668740206633188978.Spec : Prop :=
  ∀ n, P13668740206633188978.a n = A276988 (n + 1)

theorem P13668740206633188978.correct : P13668740206633188978.Spec := by
  intro n
  simp only [A276988, Nat.add_sub_cancel]

end A276988

/-! ## A276988.P17055704712958356089

`ceil(A006530(A175225(n+1))/(A000040(n+1)+2))`
-/

namespace A276988.P17055704712958356089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (A175225 (n + 1)).toNat : ℚ) / (A000040 (n + 1) + 2 : ℚ)⌉

end

end A276988.P17055704712958356089

namespace A276988

/-- `ceil(A006530(A175225(n+1))/(A000040(n+1)+2))` -/
def P17055704712958356089.Spec : Prop :=
  ∀ n, P17055704712958356089.a n = A276988 (n + 1)

end A276988

/-! ## A276988.P10823986213099194121

`A010051(A175225(n+1))+A014963((n+1)*A008619(n+1))`
-/

namespace A276988.P10823986213099194121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A175225 (n + 1)).toNat + A014963 ((n + 1 : ℤ) * A008619 (n + 1)).toNat

end

end A276988.P10823986213099194121

namespace A276988

/-- `A010051(A175225(n+1))+A014963((n+1)*A008619(n+1))` -/
def P10823986213099194121.Spec : Prop :=
  ∀ n, P10823986213099194121.a n = A276988 (n + 1)

end A276988

/-!
# A276989: Reversion of x - x^2 - x^6.

The programs for A276989, there is no canonical definition to state claims against.
-/

/-! ## A276989.P7095309765967700368

`A028310(A068875(n)-A366046(n))`
-/

namespace A276989.P7095309765967700368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A068875 n - A366046 n).toNat

end

end A276989.P7095309765967700368

/-! ## A276989.P16687627627599274438

`A272461(n+1)-A107846(A020063(n))`
-/

namespace A276989.P16687627627599274438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272461 (n + 1) - A107846 (A020063 n).toNat

end

end A276989.P16687627627599274438

/-! ## A276989.P1644823138677595322

`A272461(n+1)-A107846(A036675(n))`
-/

namespace A276989.P1644823138677595322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272461 (n + 1) - A107846 (A036675 n).toNat

end

end A276989.P1644823138677595322

/-! ## A276989.P12119026116522879553

`A272461(n+1)-A067169(A125053(n))`
-/

namespace A276989.P12119026116522879553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272461 (n + 1) - A067169 ((A125053 n).toNat + 11)

end

end A276989.P12119026116522879553

/-! ## A276989.P6358384674660087134

`A272461(A002998(n+1))`
-/

namespace A276989.P6358384674660087134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272461 (A002998 (n + 1)).toNat

end

end A276989.P6358384674660087134

/-!
# A276995: Triangle read by rows, T(n,k) = k^(n-k)*(n-k)!*Sum_{j=0..n-k}(-1)^j/j! for 0<=k<=n.

The programs for A276995, there is no canonical definition to state claims against.
-/

/-! ## A276995.P1061955919119008170

`A156788(n)/A395701(n)`
-/

namespace A276995.P1061955919119008170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156788 n : ℚ) / (A395701 n : ℚ)

end

end A276995.P1061955919119008170

/-! ## A276995.P7184267560002539840

`A000166(A025581(n))*A004248(n)`
-/

namespace A276995.P7184267560002539840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A025581 n).toNat * A004248 n

end

end A276995.P7184267560002539840

/-! ## A276995.P6164300182056555081

`A004248(n)/A007318(n)*A008290(n)`
-/

namespace A276995.P6164300182056555081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004248 n : ℚ) / (A007318 n : ℚ) * (A008290 n : ℚ)

end

end A276995.P6164300182056555081

/-! ## A276995.P17656699977005990739

`A192262(A363044(n+2))+char[12]`
-/

namespace A276995.P17656699977005990739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192262 (A363044 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A276995.P17656699977005990739

/-! ## A276995.P5222730511135423965

`A001222(A118041(A135814(n)))`
-/

namespace A276995.P5222730511135423965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118041 (A135814 n).toNat).toNat

end

end A276995.P5222730511135423965

/-!
# A276996: Numerators of coefficients of polynomials arising from applying the complete Bell polynomials to k!B_k(x)/(k*(k-1)) with B_k(x) the Bernoulli polynomials.

The programs for A276996, there is no canonical definition to state claims against.
-/

/-! ## A276996.P12067057528402655276

`A325495(A027642(n))-A206778(n+1)`
-/

namespace A276996.P12067057528402655276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325495 (A027642 n).toNat - A206778 (n + 1)

end

end A276996.P12067057528402655276

/-! ## A276996.P5995472404711359672

`A347456(A347712(3*(n+1)))-A347564(n)`
-/

namespace A276996.P5995472404711359672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347456 (A347712 (3 * (n + 1))).toNat - A347564 n

end

end A276996.P5995472404711359672

/-!
# A276997: Denominators of coefficients of polynomials arising from applying the complete Bell polynomials to k!B_k(x)/(k*(k-1)) with B_k(x) the Bernoulli polynomials.

The programs for A276997, there is no canonical definition to state claims against.
-/

/-! ## A276997.P3192691110492531762

`A225630(A246332(n+1))`
-/

namespace A276997.P3192691110492531762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225630 (A246332 (n + 1)).toNat

end

end A276997.P3192691110492531762

/-! ## A276997.P16151247824033860028

`A323166(A060357(n)-A349979(n))`
-/

namespace A276997.P16151247824033860028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (A060357 n - A349979 n).toNat

end

end A276997.P16151247824033860028

/-! ## A276997.P4107777638724520600

`gcd(A004247(n), A225630(A016993(n)))`
-/

namespace A276997.P4107777638724520600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A225630 (A016993 n).toNat)

end

end A276997.P4107777638724520600

/-! ## A276997.P14153434884337776946

`gcd(A062110(n), A225641(A035337(n)))`
-/

namespace A276997.P14153434884337776946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062110 n) (A225641 (A035337 n).toNat)

end

end A276997.P14153434884337776946

/-! ## A276997.P1203282463535114996

`A260238(A329029(n)+A285573(n+1))`
-/

namespace A276997.P1203282463535114996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260238 (A329029 n + A285573 (n + 1)).toNat

end

end A276997.P1203282463535114996

/-!
# A276999: Triangle read by rows, T(n,k) = n^k - 2^(k/2)*KummerU(-k/2,1/2,n^2/2) for 0<=k<=n.

The programs for A276999, there is no canonical definition to state claims against.
-/

/-! ## A276999.P15651740737078587108

`A079901(n)-A244490(n)`
-/

namespace A276999.P15651740737078587108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 n - A244490 n

end

end A276999.P15651740737078587108

/-! ## A276999.P11371843647537703804

`A003056(n)^A002262(n)-A334014(A007401(n+1))`
-/

namespace A276999.P11371843647537703804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (A002262 n : ℤ) - (A334014 (A007401 (n + 1)).toNat : ℚ)

end

end A276999.P11371843647537703804

