import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A358900: Primes prime(k) such that prime(k)^prime(k) > prime(k-1)^prime(k+1).

The programs for A358900, there is no canonical definition to state claims against.
-/

/-! ## A358900.P4783484581464978546

`A000040(A358899(n+1))`
-/

namespace A358900.P4783484581464978546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A358899 (n + 1)).toNat

end

end A358900.P4783484581464978546

/-! ## A358900.P11070590474522965611

`A065514(A358899(1+n)+1)`
-/

namespace A358900.P11070590474522965611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065514 (A358899 (1 + n) + 1).toNat

end

end A358900.P11070590474522965611

/-! ## A358900.P2708279685781990928

`A046022(A358899(n+1)+2)`
-/

namespace A358900.P2708279685781990928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A358899 (n + 1) + 2).toNat

end

end A358900.P2708279685781990928

/-! ## A358900.P9284787019671810232

`A065091(A358899(n+1)-1)`
-/

namespace A358900.P9284787019671810232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A358899 (n + 1) - 1).toNat

end

end A358900.P9284787019671810232

/-! ## A358900.P17356363295023845447

`∑{d}[A358899(n+1), A007444(#)]`
-/

namespace A358900.P17356363295023845447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A358900.P17356363295023845447

/-!
# A358902: Number of integer compositions of n whose parts have weakly decreasing numbers of distinct prime factors (A001221).

The programs for A358902, there is no canonical definition to state claims against.
-/

/-! ## A358902.P14647553102216268509

`∑[A118759(A013984(n))]`
-/

namespace A358902.P14647553102216268509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A013984 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358902.P14647553102216268509

/-! ## A358902.P17288926874147470072

`∑[A000196(A013984(n)²)]`
-/

namespace A358902.P17288926874147470072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A013984 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358902.P17288926874147470072

/-! ## A358902.P5046052597098140297

`A262689(∑[A013984(n)]²)`
-/

namespace A358902.P5046052597098140297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A358902.P5046052597098140297

/-! ## A358902.P7564909520590011481

`A023438(∑[∑[A151769(n)]])`
-/

namespace A358902.P7564909520590011481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A358902.P7564909520590011481

/-! ## A358902.P11604198252400466371

`A023438(A122203(∑[n+1]))`
-/

namespace A358902.P11604198252400466371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023438 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A358902.P11604198252400466371

/-!
# A358905: Number of sequences of integer partitions with total sum n that are rectangular, meaning all lengths are equal.

The programs for A358905, there is no canonical definition to state claims against.
-/

/-! ## A358905.P3008965892572859956

`A073188(A149246(n))`
-/

namespace A358905.P3008965892572859956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A149246 n).toNat

end

end A358905.P3008965892572859956

/-! ## A358905.P3538971223198886864

`A017994(n)-A257992(A113345(3*n+2))`
-/

namespace A358905.P3538971223198886864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017994 n - A257992 (A113345 (3 * n + 2)).toNat

end

end A358905.P3538971223198886864

/-!
# A358907: Number of finite sequences of distinct integer compositions with total sum n.

The programs for A358907, there is no canonical definition to state claims against.
-/

/-! ## A358907.P16322845434400387283

`A024417(A108484(n))`
-/

namespace A358907.P16322845434400387283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A108484 n).toNat

end

end A358907.P16322845434400387283

/-! ## A358907.P16528173831330373181

`A298305(A152546(n))`
-/

namespace A358907.P16528173831330373181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298305 (A152546 n).toNat

end

end A358907.P16528173831330373181

/-! ## A358907.P10044784538384563950

`A324383(A149557(n+1))`
-/

namespace A358907.P10044784538384563950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324383 (A149557 (n + 1)).toNat

end

end A358907.P10044784538384563950

/-!
# A358909: Number of integer partitions of n whose parts have weakly decreasing numbers of prime factors (A001222).

The programs for A358909, there is no canonical definition to state claims against.
-/

/-! ## A358909.P13855109919553775860

`A000041(n)-A358910(n)`
-/

namespace A358909.P13855109919553775860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A358910 n

end

end A358909.P13855109919553775860

/-! ## A358909.P14456140534651006017

`A213598(n)-A358910(n)`
-/

namespace A358909.P14456140534651006017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A358910 n

end

end A358909.P14456140534651006017

/-! ## A358909.P10374866109657791360

`A238343(A000217(n))-A358910(n)`
-/

namespace A358909.P10374866109657791360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat - A358910 n

end

end A358909.P10374866109657791360

/-! ## A358909.P7785740980801768449

`A210631(A187829(n+1)+1)+A008631(n)`
-/

namespace A358909.P7785740980801768449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (A187829 (n + 1) + 1).toNat + A008631 n

end

end A358909.P7785740980801768449

/-! ## A358909.P9111520114211990181

`A001055(A000079(n))-A326531(n)`
-/

namespace A358909.P9111520114211990181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000079 n).toNat - A326531 n

end

end A358909.P9111520114211990181

/-!
# A358910: Number of integer partitions of n whose parts do not have weakly decreasing numbers of prime factors (A001222).

The programs for A358910, there is no canonical definition to state claims against.
-/

/-! ## A358910.P13167640230994636039

`A000041(n)-A358909(n)`
-/

namespace A358910.P13167640230994636039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A358909 n

end

end A358910.P13167640230994636039

/-! ## A358910.P16295203760668002758

`A213598(n)-A358909(n)`
-/

namespace A358910.P16295203760668002758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A358909 n

end

end A358910.P16295203760668002758

/-! ## A358910.P17566827621516760110

`∑[A002865(n)]-A358909(n)`
-/

namespace A358910.P17566827621516760110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A358909 n

end

end A358910.P17566827621516760110

/-! ## A358910.P12364849976963892277

`A008284(A001844(n))-A358909(n)`
-/

namespace A358910.P12364849976963892277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A001844 n).toNat - A358909 n

end

end A358910.P12364849976963892277

/-! ## A358910.P6222570306151914007

`A346426(A000096(n))-A358909(n)`
-/

namespace A358910.P6222570306151914007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (A000096 n).toNat - A358909 n

end

end A358910.P6222570306151914007

/-!
# A358912: Number of finite sequences of integer partitions with total sum n and all distinct lengths.

The programs for A358912, there is no canonical definition to state claims against.
-/

/-! ## A358912.P10592682960483011726

`A026819(A383498(n+1))`
-/

namespace A358912.P10592682960483011726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A383498 (n + 1)).toNat

end

end A358912.P10592682960483011726

/-! ## A358912.P8618211483124310595

`or(Δ[A119587(n)], A119569(2*n+5))`
-/

namespace A358912.P8618211483124310595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A119569 (2 * n + 5))

end

end A358912.P8618211483124310595

/-! ## A358912.P17027404577883306159

`or(A001221(A168243(n)), A327471(n))`
-/

namespace A358912.P17027404577883306159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A168243 n).toNat) (A327471 n)

end

end A358912.P17027404577883306159

/-! ## A358912.P4899101101427878874

`or(A306383(A026641(n)), A327471(n))`
-/

namespace A358912.P4899101101427878874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A306383 (A026641 n).toNat) (A327471 n)

end

end A358912.P4899101101427878874

/-! ## A358912.P9644217036748982994

`A000006(A275755(n+1)+A034742(n+1))`
-/

namespace A358912.P9644217036748982994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A275755 (n + 1) + A034742 (n + 1)).toNat

end

end A358912.P9644217036748982994

/-!
# A358914: Number of twice-partitions of n into distinct strict partitions.

The programs for A358914, there is no canonical definition to state claims against.
-/

/-! ## A358914.P5779317265186294703

`A003056(A350551(n)+A350528(n+1))`
-/

namespace A358914.P5779317265186294703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A350551 n + A350528 (n + 1)).toNat

end

end A358914.P5779317265186294703

/-! ## A358914.P15295645541310415918

`A013985(n+2)-A340507(A004250(3*n+5))`
-/

namespace A358914.P15295645541310415918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013985 (n + 2) - A340507 (A004250 (3 * n + 5)).toNat

end

end A358914.P15295645541310415918

/-! ## A358914.P4089166826005480281

`A219227(A050342(n))`
-/

namespace A358914.P4089166826005480281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219227 (A050342 n).toNat

end

end A358914.P4089166826005480281

/-! ## A358914.P13300289893824632515

`A050342(n)+A001221(A018242(n))`
-/

namespace A358914.P13300289893824632515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050342 n + A001221 (A018242 n).toNat

end

end A358914.P13300289893824632515

/-! ## A358914.P3811549554810600956

`A225394(n)-A010051(A022558(n))`
-/

namespace A358914.P3811549554810600956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225394 n - A010051 (A022558 n).toNat

end

end A358914.P3811549554810600956

/-!
# A358916: a(1) = 1. Thereafter a(n) is the least novel k != n such that A007947(k)|n.

The programs for A358916, there is no canonical definition to state claims against.
-/

/-! ## A358916.P18432691928575290864

`A033677(n+1)^A257993(A038041(n+1))`
-/

namespace A358916.P18432691928575290864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033677 (n + 1) : ℚ) ^ (A257993 (A038041 (n + 1)).toNat : ℤ)

end

end A358916.P18432691928575290864

/-!
# A358917: a(n) = Fibonacci(n+1)^4 - Fibonacci(n-1)^4.

The programs for A358917, the canonical program `A358917.P12183193250221227758` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358917 has offset 0).

The definition of A358917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358917.P9235647107594735085

`ogf((x+11x^2+x^3)/(1-4x-19x^2-4x^3+x^4))`
-/

namespace A358917.P9235647107594735085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 11, 1] [1, -4, -19, -4, 1] n

end

end A358917.P9235647107594735085

namespace A358917

/-- `ogf((x+11x^2+x^3)/(1-4x-19x^2-4x^3+x^4))` -/
def P9235647107594735085.Spec : Prop :=
  ∀ n, P9235647107594735085.a n = A358917 n

end A358917

/-! ## A358917.P12183193250221227758

`4*a(n-1)+19*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=15, a(3)=80`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358917

/-- `4*a(n-1)+19*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12183193250221227758.Spec : Prop :=
  ∀ n, P12183193250221227758.a n = A358917 n

theorem P12183193250221227758.correct : P12183193250221227758.Spec := by
  intro n
  simp only [A358917]

end A358917

/-! ## A358917.P11225442818953100604

`A000032(n)*A099014(n)`
-/

namespace A358917.P11225442818953100604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A099014 n

end

end A358917.P11225442818953100604

namespace A358917

/-- `A000032(n)*A099014(n)` -/
def P11225442818953100604.Spec : Prop :=
  ∀ n, P11225442818953100604.a n = A358917 n

end A358917

/-! ## A358917.P2853020336875767499

`A000045(2*n)*A295690(2*n)`
-/

namespace A358917.P2853020336875767499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A295690 (2 * n)

end

end A358917.P2853020336875767499

namespace A358917

/-- `A000045(2*n)*A295690(2*n)` -/
def P2853020336875767499.Spec : Prop :=
  ∀ n, P2853020336875767499.a n = A358917 n

end A358917

/-! ## A358917.P17088532780942244215

`A000045(2*n)*A295682(2*n+1)`
-/

namespace A358917.P17088532780942244215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A295682 (2 * n + 1)

end

end A358917.P17088532780942244215

namespace A358917

/-- `A000045(2*n)*A295682(2*n+1)` -/
def P17088532780942244215.Spec : Prop :=
  ∀ n, P17088532780942244215.a n = A358917 n

end A358917

/-! ## A358917.P10879484554533939009

`(A001611(2*n)-1)*A295690(2*n)`
-/

namespace A358917.P10879484554533939009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n) - 1) * A295690 (2 * n)

end

end A358917.P10879484554533939009

namespace A358917

/-- `(A001611(2*n)-1)*A295690(2*n)` -/
def P10879484554533939009.Spec : Prop :=
  ∀ n, P10879484554533939009.a n = A358917 n

end A358917

/-! ## A358917.P9787794889846249126

`(A001519(n)-A121646(n+1))*A001906(n)`
-/

namespace A358917.P9787794889846249126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001519 n - A121646 (n + 1)) * A001906 n

end

end A358917.P9787794889846249126

namespace A358917

/-- `(A001519(n)-A121646(n+1))*A001906(n)` -/
def P9787794889846249126.Spec : Prop :=
  ∀ n, P9787794889846249126.a n = A358917 n

end A358917

/-! ## A358917.P15477741703204321472

`(A175395(n+1)-A000045(2*n))*A000045(2*n)`
-/

namespace A358917.P15477741703204321472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175395 (n + 1) - A000045 (2 * n)) * A000045 (2 * n)

end

end A358917.P15477741703204321472

namespace A358917

/-- `(A175395(n+1)-A000045(2*n))*A000045(2*n)` -/
def P15477741703204321472.Spec : Prop :=
  ∀ n, P15477741703204321472.a n = A358917 n

end A358917

/-!
# A358920: Number of (undirected) paths in the 5 X n king graph.

The programs for A358920, there is no canonical definition to state claims against.
-/

/-! ## A358920.P17730808364295618511

`record[A307026(A045918(n)+1)]`
-/

namespace A358920.P17730808364295618511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307026 (A045918 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358920.P17730808364295618511

/-!
# A358921: a(1) = 1; a(n) is the smallest positive number not among the terms a(n-c .. n-1) where c = the number of times a(n-1) has occurred.

The programs for A358921, there is no canonical definition to state claims against.
-/

/-! ## A358921.P8434653182811954880

`A358492(A038925(n+2))`
-/

namespace A358921.P8434653182811954880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358492 (A038925 (n + 2)).toNat

end

end A358921.P8434653182811954880

/-! ## A358921.P7184181370638087973

`A066099(A179386(n+1)-(n+1))`
-/

namespace A358921.P7184181370638087973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A179386 (n + 1) - (n + 1 : ℤ)).toNat

end

end A358921.P7184181370638087973

/-! ## A358921.P10876853481979812993

`A379692(n+1)%A379693(3*(n+1))`
-/

namespace A358921.P10876853481979812993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379692 (n + 1)) (A379693 (3 * (n + 1)))

end

end A358921.P10876853481979812993

/-! ## A358921.P11985406666523609230

`A295931(A118039(n))+A294168(n+1)`
-/

namespace A358921.P11985406666523609230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295931 (A118039 n).toNat + A294168 (n + 1)

end

end A358921.P11985406666523609230

/-! ## A358921.P16235336570083468911

`A379692(n+1)%A001845(A118039(n))`
-/

namespace A358921.P16235336570083468911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379692 (n + 1)) (A001845 (A118039 n).toNat)

end

end A358921.P16235336570083468911

/-!
# A358922: First of four consecutive primes p,q,r,s such that q*s - p*r is a square.

The programs for A358922, there is no canonical definition to state claims against.
-/

/-! ## A358922.P12621693825304288450

`A291275(A389709(2*n+3)+A006002(n))`
-/

namespace A358922.P12621693825304288450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291275 (A389709 (2 * n + 3) + A006002 n).toNat

end

end A358922.P12621693825304288450

/-!
# A358927: a(n) is the smallest tetrahedral number with exactly n prime factors (counted with multiplicity), or -1 if no such number exists.

The programs for A358927, there is no canonical definition to state claims against.
-/

/-! ## A358927.P16557683165610302172

`A143987(A178532(n+1))`
-/

namespace A358927.P16557683165610302172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143987 (A178532 (n + 1)).toNat

end

end A358927.P16557683165610302172

/-! ## A358927.P13607280139059793498

`A143987(A381534(2*n+1)+2)`
-/

namespace A358927.P13607280139059793498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143987 (A381534 (2 * n + 1) + 2).toNat

end

end A358927.P13607280139059793498

/-!
# A358934: a(n) = Fibonacci(n+1)^5 - Fibonacci(n-1)^5.

The programs for A358934, the canonical program `A358934.P10717467371716533897` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358934 has offset 0).

The definition of A358934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358934.P10717467371716533897

`ogf((x+23x^2-46x^3-23x^4+x^5)/(1-8x-40x^2+60x^3+40x^4-8x^5-x^6))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358934

/-- `ogf((x+23x^2-46x^3-23x^4+x^5)/(1-8x-40x^2+60x^3+40x^4-8x^5-x^6))` -/
def P10717467371716533897.Spec : Prop :=
  ∀ n, P10717467371716533897.a n = A358934 n

theorem P10717467371716533897.correct : P10717467371716533897.Spec := by
  intro n
  simp only [A358934]

end A358934

/-! ## A358934.P9088884106491005640

`A056572(n+1)-A000584(A212804(n))`
-/

namespace A358934.P9088884106491005640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 (n + 1) - A000584 (A212804 n).toNat

end

end A358934.P9088884106491005640

namespace A358934

/-- `A056572(n+1)-A000584(A212804(n))` -/
def P9088884106491005640.Spec : Prop :=
  ∀ n, P9088884106491005640.a n = A358934 n

end A358934

/-!
# A358935: a(n) is the least k > 0 such that fusc(n) = fusc(n + k) or fusc(n) = fusc(n - k) (provided that n - k >= 0), where "fusc" is Stern's diatomic series (A002487).

The programs for A358935, there is no canonical definition to state claims against.
-/

/-! ## A358935.P17703329052235326968

`A000120(A105666(n+1)*A157149(n))`
-/

namespace A358935.P17703329052235326968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105666 (n + 1) * A157149 n).toNat

end

end A358935.P17703329052235326968

/-! ## A358935.P17821448824011885549

`A211100(A004273(n)*A308698(n+1))`
-/

namespace A358935.P17821448824011885549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A004273 n * A308698 (n + 1)).toNat

end

end A358935.P17821448824011885549

/-! ## A358935.P17713618632879305878

`A051903(A039623(n+1)*A195921(n+1))`
-/

namespace A358935.P17713618632879305878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A039623 (n + 1) * A195921 (n + 1)).toNat

end

end A358935.P17713618632879305878

/-! ## A358935.P17922624972102023824

`A095955(A261049(n+2)*A325610(3*n+2))`
-/

namespace A358935.P17922624972102023824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A261049 (n + 2) * A325610 (3 * n + 2)).toNat

end

end A358935.P17922624972102023824

/-!
# A358937: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} x^n * (x^(2*n) - A(x))^n.

The programs for A358937, there is no canonical definition to state claims against.
-/

/-! ## A358937.P3052368619483124512

`A117448(A000085(n))+A051286(n)`
-/

namespace A358937.P3052368619483124512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (A000085 n).toNat + A051286 n

end

end A358937.P3052368619483124512

/-! ## A358937.P7642469361762809716

`A185712(A384648(n+1))`
-/

namespace A358937.P7642469361762809716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A384648 (n + 1)).toNat

end

end A358937.P7642469361762809716

/-! ## A358937.P8922960684198612490

`A172471(A052755(n)-1)+1`
-/

namespace A358937.P8922960684198612490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A052755 n - 1).toNat + 1

end

end A358937.P8922960684198612490

/-! ## A358937.P8881000760805189534

`A054404(A002426(n)+A000051(n))`
-/

namespace A358937.P8881000760805189534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A002426 n + A000051 n).toNat

end

end A358937.P8881000760805189534

/-!
# A358944: Number of Green's L-classes in B_n, the semigroup of binary relations on [n].

The programs for A358944, there is no canonical definition to state claims against.
-/

/-! ## A358944.P11885043570886411935

`A085646(A005470(n))+n`
-/

namespace A358944.P11885043570886411935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085646 (A005470 n).toNat + (n : ℤ)

end

end A358944.P11885043570886411935

/-!
# A358945: Decimal expansion of the positive root of 4*x^2 + x - 1.

The programs for A358945, there is no canonical definition to state claims against.
-/

/-! ## A358945.P4419211489960751867

`9-A189037(n)`
-/

namespace A358945.P4419211489960751867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A189037 n

end

end A358945.P4419211489960751867

/-!
# A358946: Positive integers that are properly represented by each primitive binary quadratic form of discriminant 28 that is properly equivalent to the principal form [1, 4, -3].

The programs for A358946, there is no canonical definition to state claims against.
-/

/-! ## A358946.P7986553281315363050

`∩[A262932(n+1), A242662(n)]`
-/

namespace A358946.P7986553281315363050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358946.P7986553281315363050

/-! ## A358946.P4891731376069834996

`∩[A047613(n+1), A262932(n+1)]`
-/

namespace A358946.P4891731376069834996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358946.P4891731376069834996

/-! ## A358946.P7446558483428050399

`∩[A047614(n+1), A262932(n+1)]`
-/

namespace A358946.P7446558483428050399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358946.P7446558483428050399

/-! ## A358946.P436341206595468727

`∩[A047619(n+1), A262932(n+1)]`
-/

namespace A358946.P436341206595468727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358946.P436341206595468727

/-! ## A358946.P5597607460618075091

`∩[A047620(n+1), A262932(n+1)]`
-/

namespace A358946.P5597607460618075091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358946.P5597607460618075091

/-! ## A358946.P6628369785042871734

`∩[A091072(n+1), A262932(n+1)]`
-/

namespace A358946.P6628369785042871734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358946.P6628369785042871734

/-! ## A358946.P529530113998759786

`∩[A047514(n+1)-2, A262932(n+1)]`
-/

namespace A358946.P529530113998759786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047514 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358946.P529530113998759786

/-!
# A358947: a(n) = 2^m(n), where m(n) is the number of distinct primes, neither 2 nor 7, dividing A358946(n).

The programs for A358947, there is no canonical definition to state claims against.
-/

/-! ## A358947.P15445908046984883992

`A343240(A325327(n+1))`
-/

namespace A358947.P15445908046984883992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343240 (A325327 (n + 1)).toNat

end

end A358947.P15445908046984883992

/-! ## A358947.P17928605155410505945

`A181819(or(A069292(2*(n+2)), A358474(3*n+5)))`
-/

namespace A358947.P17928605155410505945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (Int.lor (A069292 (2 * (n + 2))) (A358474 (3 * n + 5))).toNat

end

end A358947.P17928605155410505945

/-! ## A358947.P16212637095562018409

`A343240(A085303(n+1))`
-/

namespace A358947.P16212637095562018409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343240 (A085303 (n + 1)).toNat

end

end A358947.P16212637095562018409

/-! ## A358947.P10641773057898233921

`A001316(A295260(n+1)%A192126(n))`
-/

namespace A358947.P10641773057898233921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.tmod (A295260 (n + 1)) (A192126 n)).toNat

end

end A358947.P10641773057898233921

/-! ## A358947.P3333207069556399922

`gcd(A006316(A355898(n+1)), A034444(n+1))`
-/

namespace A358947.P3333207069556399922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006316 (A355898 (n + 1)).toNat) (A034444 (n + 1))

end

end A358947.P3333207069556399922

/-!
# A358948: Number of regions formed inside a triangle with edge length 1 by the straight line segments mutually connecting all vertices and points that divide the sides into segments with lengths equal to the Farey series of order n = A006842(n,k)/A006843(n,k), k = 1..A005728(n).

The programs for A358948, there is no canonical definition to state claims against.
-/

/-! ## A358948.P10502893254831169327

`A358950(n+1)-A358949(n+1)+1`
-/

namespace A358948.P10502893254831169327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358950 (n + 1) - A358949 (n + 1) + 1

end

end A358948.P10502893254831169327

/-!
# A358949: Number of vertices formed inside a triangle with edge length 1 by the straight line segments mutually connecting all vertices and points that divide the sides into segments with lengths equal to the Farey series of order n = A006842(n,k)/A006843(n,k), k = 1..A005728(n).

The programs for A358949, there is no canonical definition to state claims against.
-/

/-! ## A358949.P5848551711067020348

`A358950(n+1)-A358948(n+1)+1`
-/

namespace A358949.P5848551711067020348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358950 (n + 1) - A358948 (n + 1) + 1

end

end A358949.P5848551711067020348

/-!
# A358950: Number of edges formed inside a triangle with edge length 1 by the straight line segments mutually connecting all vertices and points that divide the sides into segments with lengths equal to the Farey series of order n = A006842(n,k)/A006843(n,k), k = 1..A005728(n).

The programs for A358950, there is no canonical definition to state claims against.
-/

/-! ## A358950.P3876136340206410238

`A358948(n+1)+A358949(n+1)-1`
-/

namespace A358950.P3876136340206410238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358948 (n + 1) + A358949 (n + 1) - 1

end

end A358950.P3876136340206410238

/-!
# A358952: a(n) = coefficient of x^n in A(x) such that: 0 = Sum_{n=-oo..+oo} x^(2*n) * (x^n - 2*A(x))^(3*n+1).

The programs for A358952, there is no canonical definition to state claims against.
-/

/-! ## A358952.P14557598246612232203

`∑[A048050(A217800(n))+1]`
-/

namespace A358952.P14557598246612232203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A217800 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358952.P14557598246612232203

/-!
# A358953: a(n) = coefficient of x^n in A(x) such that: 0 = Sum_{n=-oo..+oo} x^(3*n) * (x^n - 2*A(x))^(4*n+1).

The programs for A358953, there is no canonical definition to state claims against.
-/

/-! ## A358953.P5787068549810957008

`Δ[A005180(A099237(n))]+1`
-/

namespace A358953.P5787068549810957008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (A099237 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A358953.P5787068549810957008

/-!
# A358954: a(n) = coefficient of x^n in A(x) such that: 0 = Sum_{n=-oo..+oo} x^(4*n) * (x^n - 2*A(x))^(5*n+1).

The programs for A358954, there is no canonical definition to state claims against.
-/

/-! ## A358954.P7181678713395572644

`A119799(A007051(n)²+1)`
-/

namespace A358954.P7181678713395572644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119799 (A007051 n ^ 2 + 1).toNat

end

end A358954.P7181678713395572644

/-!
# A358955: a(n) = coefficient of x^n in A(x) such that: 0 = Sum_{n=-oo..+oo} x^(5*n) * (x^n - 2*A(x))^(6*n+1).

The programs for A358955, there is no canonical definition to state claims against.
-/

/-! ## A358955.P8499657021921359467

`A008706(C(8*n+4, n)/Δ[n²]-A234462(n))`
-/

namespace A358955.P8499657021921359467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (SequenceMachineLib.roundAway ((Nat.choose (8 * n + 4) n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (A234462 n : ℚ))).toNat

end

end A358955.P8499657021921359467

/-!
# A358961: a(n) = coefficient of x^n in A(x) such that: 1 = Sum_{n=-oo..+oo} x^n * (A(x) - x^(2*n+1))^(n-1).

The programs for A358961, there is no canonical definition to state claims against.
-/

/-! ## A358961.P15217860813143731377

`or(A226994(n), A326572(A122584(n+1)))`
-/

namespace A358961.P15217860813143731377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A226994 n) (A326572 (A122584 (n + 1)).toNat)

end

end A358961.P15217860813143731377

/-! ## A358961.P7879412938552609512

`A276797(A170887(2*(n+2))+A155610(n))`
-/

namespace A358961.P7879412938552609512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A170887 (2 * (n + 2)) + A155610 n).toNat

end

end A358961.P7879412938552609512

/-!
# A358962: a(n) = coefficient of x^n in A(x) such that: 1 = Sum_{n=-oo..+oo} x^n * (A(x) - x^(3*n+2))^(n-1).

The programs for A358962, there is no canonical definition to state claims against.
-/

/-! ## A358962.P11497012103292611889

`A218220(A000679(n))+A005825(n)`
-/

namespace A358962.P11497012103292611889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218220 (A000679 n).toNat + A005825 n

end

end A358962.P11497012103292611889

/-! ## A358962.P11661423449945431046

`A276797(A027618(n))+A000010(n+1)`
-/

namespace A358962.P11661423449945431046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A027618 n).toNat + A000010 (n + 1)

end

end A358962.P11661423449945431046

/-!
# A358963: a(n) = coefficient of x^n in A(x) such that: 1 = Sum_{n=-oo..+oo} x^n * (A(x) - x^(4*n+3))^(n-1).

The programs for A358963, there is no canonical definition to state claims against.
-/

/-! ## A358963.P12090529589889847128

`or(record[A154840(3*n)], A006013(n))`
-/

namespace A358963.P12090529589889847128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154840 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A006013 n)

end

end A358963.P12090529589889847128

/-! ## A358963.P6525674920519392831

`or(A006013(n), A191818(C(n, 2)^4))`
-/

namespace A358963.P6525674920519392831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006013 n) (A191818 (Nat.choose n 2 ^ 4))

end

end A358963.P6525674920519392831

/-!
# A358964: a(n) = coefficient of x^n in A(x) such that: 1 = Sum_{n=-oo..+oo} x^n * (A(x) - x^(5*n+4))^(n-1).

The programs for A358964, there is no canonical definition to state claims against.
-/

/-! ## A358964.P3529979583671386651

`A046660(A004211(n))+A006013(n)`
-/

namespace A358964.P3529979583671386651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A004211 n).toNat + A006013 n

end

end A358964.P3529979583671386651

/-! ## A358964.P9548802398861411119

`A179392(A000800(n))+A006013(n)`
-/

namespace A358964.P9548802398861411119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179392 (A000800 n).toNat + A006013 n

end

end A358964.P9548802398861411119

/-! ## A358964.P12496004975299982478

`A037858(A219537(n))+A006013(n)`
-/

namespace A358964.P12496004975299982478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (A219537 n).toNat + A006013 n

end

end A358964.P12496004975299982478

/-!
# A358965: a(n) = coefficient of x^n in A(x) such that: 1 = Sum_{n=-oo..+oo} x^n * (A(x) - x^(6*n+5))^(n-1).

The programs for A358965, there is no canonical definition to state claims against.
-/

/-! ## A358965.P849294657071228929

`A185225(A344071(n))+A006013(n)`
-/

namespace A358965.P849294657071228929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185225 (A344071 n).toNat + A006013 n

end

end A358965.P849294657071228929

/-! ## A358965.P7235283729932393304

`A258825(A125246(n+1))+A006013(n)`
-/

namespace A358965.P7235283729932393304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258825 (A125246 (n + 1)).toNat + A006013 n

end

end A358965.P7235283729932393304

/-! ## A358965.P15535982445572481303

`A151692(A266494(n+1))+A006013(n)`
-/

namespace A358965.P15535982445572481303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 (A266494 (n + 1)).toNat + A006013 n

end

end A358965.P15535982445572481303

/-! ## A358965.P16095279865960705634

`A183094(A247012(n+1)+1)+A006013(n)`
-/

namespace A358965.P16095279865960705634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (A247012 (n + 1) + 1).toNat + A006013 n

end

end A358965.P16095279865960705634

/-!
# A358966: a(n) = n!*Sum_{m=1..floor(n/2)} 1/(m*binomial(n-1,2*m-1)*n).

The programs for A358966, the canonical program `A358966.P3172693408648678065` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358966 has offset 0).

The definition of A358966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358966.P3172693408648678065

`n!*∑{#}[floor(n/2)-1, 1/((#+1)*C(n-1, 2*(#+1)-1)*n)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358966

/-- `n!*∑{#}[floor(n/2)-1, 1/((#+1)*C(n-1, 2*(#+1)-1)*n)]` -/
def P3172693408648678065.Spec : Prop :=
  ∀ n, P3172693408648678065.a n = (A358966 n : ℚ)

end A358966

/-!
# A358967: a(n+1) gives the number of occurrences of the smallest digit of a(n) so far, up to and including a(n), with a(0)=0.

The programs for A358967, there is no canonical definition to state claims against.
-/

/-! ## A358967.P7446201104706373772

`A359031(n)%A001875(n)`
-/

namespace A358967.P7446201104706373772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359031 n) (A001875 n)

end

end A358967.P7446201104706373772

/-! ## A358967.P4798294148283155670

`A359031(and(n, A198275(n)))`
-/

namespace A358967.P4798294148283155670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359031 (Int.land (n : ℤ) (A198275 n)).toNat

end

end A358967.P4798294148283155670

/-! ## A358967.P10691060807066907818

`A359031(and(n, A171389(n)))`
-/

namespace A358967.P10691060807066907818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359031 (Int.land (n : ℤ) (A171389 n)).toNat

end

end A358967.P10691060807066907818

/-! ## A358967.P10437088917028412213

`A359031(and(n, A198276(n)))`
-/

namespace A358967.P10437088917028412213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359031 (Int.land (n : ℤ) (A198276 n)).toNat

end

end A358967.P10437088917028412213

/-! ## A358967.P14130972332573976960

`A359031(and(n, A291557(n)))`
-/

namespace A358967.P14130972332573976960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359031 (Int.land (n : ℤ) (A291557 n)).toNat

end

end A358967.P14130972332573976960

/-! ## A358967.P13483662034689902660

`and(A171390(n+1), A359031(n))`
-/

namespace A358967.P13483662034689902660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171390 (n + 1)) (A359031 n)

end

end A358967.P13483662034689902660

/-! ## A358967.P15780142173291628352

`and(A118883(n+1), A359031(n))`
-/

namespace A358967.P15780142173291628352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A359031 n)

end

end A358967.P15780142173291628352

/-! ## A358967.P12702820567879645600

`and(A359031(n), A378139(n+1))`
-/

namespace A358967.P12702820567879645600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359031 n) (A378139 (n + 1))

end

end A358967.P12702820567879645600

/-! ## A358967.P15182968117653956379

`A359031(n)%A001792(n)`
-/

namespace A358967.P15182968117653956379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359031 n) (A001792 n)

end

end A358967.P15182968117653956379

/-! ## A358967.P6317816540336906804

`A359031(and(n, A127582(n)))`
-/

namespace A358967.P6317816540336906804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359031 (Int.land (n : ℤ) (A127582 n)).toNat

end

end A358967.P6317816540336906804

/-! ## A358967.P18155037629164075162

`and(A178965(n), A359031(n))`
-/

namespace A358967.P18155037629164075162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178965 n) (A359031 n)

end

end A358967.P18155037629164075162

/-! ## A358967.P2643273819838337067

`A359031(and(n, A201914(n)))`
-/

namespace A358967.P2643273819838337067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359031 (Int.land (n : ℤ) (A201914 n)).toNat

end

end A358967.P2643273819838337067

/-! ## A358967.P5889426600314301837

`and(A267226(n+1), A359031(n))`
-/

namespace A358967.P5889426600314301837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267226 (n + 1)) (A359031 n)

end

end A358967.P5889426600314301837

/-! ## A358967.P2968834457678997079

`A359031(and(n, A375155(n+1)))`
-/

namespace A358967.P2968834457678997079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359031 (Int.land (n : ℤ) (A375155 (n + 1))).toNat

end

end A358967.P2968834457678997079

/-! ## A358967.P18396847175379519301

`A359031(and(n, A087323(n)))`
-/

namespace A358967.P18396847175379519301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359031 (Int.land (n : ℤ) (A087323 n)).toNat

end

end A358967.P18396847175379519301

/-! ## A358967.P17054435992967523922

`and(A074494(n+1), A359031(n))`
-/

namespace A358967.P17054435992967523922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074494 (n + 1)) (A359031 n)

end

end A358967.P17054435992967523922

/-! ## A358967.P10479215550627113957

`and(A099035(n+1), A359031(n))`
-/

namespace A358967.P10479215550627113957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099035 (n + 1)) (A359031 n)

end

end A358967.P10479215550627113957

/-! ## A358967.P5628911730379895108

`and(A003261(n+1), A359031(n))`
-/

namespace A358967.P5628911730379895108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A359031 n)

end

end A358967.P5628911730379895108

/-! ## A358967.P7771546619931247837

`and(A163383(n+1), A359031(n))`
-/

namespace A358967.P7771546619931247837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163383 (n + 1)) (A359031 n)

end

end A358967.P7771546619931247837

/-! ## A358967.P14257953536211142539

`and(A135972(n+1), A359031(n))`
-/

namespace A358967.P14257953536211142539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135972 (n + 1)) (A359031 n)

end

end A358967.P14257953536211142539

/-!
# A358970: Nonnegative numbers m such that if 2^k appears in the binary expansion of m, then k+1 divides m.

The programs for A358970, there is no canonical definition to state claims against.
-/

/-! ## A358970.P8892055270540817669

`eq[0, A352452(n)]`
-/

namespace A358970.P8892055270540817669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358970.P8892055270540817669

/-! ## A358970.P11706874179611395201

`eq[n, A352451(n)]`
-/

namespace A358970.P11706874179611395201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358970.P11706874179611395201

/-! ## A358970.P3833736473445041698

`record[A352451(record[A352451(n)])]`
-/

namespace A358970.P3833736473445041698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352451 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358970.P3833736473445041698

/-! ## A358970.P10367607990086703218

`A352451(lt[n, A352451(n)+1])`
-/

namespace A358970.P10367607990086703218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352451 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A358970.P10367607990086703218

/-! ## A358970.P5954831661228847963

`A352451(lt[n-1, A352451(n)])`
-/

namespace A358970.P5954831661228847963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352451 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358970.P5954831661228847963

/-!
# A358971: a(1) = 1. Thereafter a(n) is least novel k != n such that rad(k) = rad(n), where rad is A007947.

The programs for A358971, there is no canonical definition to state claims against.
-/

/-! ## A358971.P15982506915699282536

`A358786(A253288(A358786(A253288(A358786(n+1)))))`
-/

namespace A358971.P15982506915699282536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358786 (A253288 (A358786 (A253288 (A358786 (n + 1)).toNat).toNat).toNat).toNat

end

end A358971.P15982506915699282536

/-! ## A358971.P2663472202438659601

`A358786(∑[A155797(n)!])`
-/

namespace A358971.P2663472202438659601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A155797 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358786 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A358971.P2663472202438659601

/-! ## A358971.P6202718135437719328

`A358786(n+1)^A155797(n)!`
-/

namespace A358971.P6202718135437719328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358786 (n + 1) ^ Nat.factorial (A155797 n).toNat

end

end A358971.P6202718135437719328

/-! ## A358971.P2921991660831134385

`A358786(n+1)%Δ[A358818(n)]`
-/

namespace A358971.P2921991660831134385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358786 (n + 1)) (f1 (n + 1) - f1 n)

end

end A358971.P2921991660831134385

/-! ## A358971.P6405953852413821608

`lcm(Δ[A020753(n+1)], A358786(n+1))`
-/

namespace A358971.P6405953852413821608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A358786 (n + 1))

end

end A358971.P6405953852413821608

/-!
# A358973: Numbers of the form m + omega(m) with m a positive integer.

The programs for A358973, there is no canonical definition to state claims against.
-/

/-! ## A358973.P5678680069476741930

`lt[0, char[∑{p}[n+1, gcd(n, #)]+n+1]]`
-/

namespace A358973.P5678680069476741930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.gcd n p + (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358973.P5678680069476741930

/-! ## A358973.P5919494552925055030

`lt[0, char[A229109(n+1)]]`
-/

namespace A358973.P5919494552925055030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358973.P5919494552925055030

/-! ## A358973.P8554196747294975947

`eq[1, char[A083399(n+1)+n]]`
-/

namespace A358973.P8554196747294975947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358973.P8554196747294975947

/-! ## A358973.P6628325217412556162

`eq[1, char[A001221(n+1)+n+1]]`
-/

namespace A358973.P6628325217412556162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (n + 1 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358973.P6628325217412556162

/-! ## A358973.P18212233092764914319

`comp[comp[A001221(n+2)+n]+1]+1`
-/

namespace A358973.P18212233092764914319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A358973.P18212233092764914319

/-! ## A358973.P1535220480943373470

`comp[comp[A229109(n+1)]%A082140(n)]`
-/

namespace A358973.P1535220480943373470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (A082140 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358973.P1535220480943373470

/-! ## A358973.P14346693888744108959

`eq[char[A229109(n+1)], A057427(n+1)]`
-/

namespace A358973.P14346693888744108959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A358973.P14346693888744108959

/-!
# A358974: a(n) is the least prime p such that q-p = n*(r-q) where p,q,r are consecutive primes.

The programs for A358974, there is no canonical definition to state claims against.
-/

/-! ## A358974.P13439609799360752613

`A151799(A179256(n+1))`
-/

namespace A358974.P13439609799360752613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A179256 (n + 1)).toNat

end

end A358974.P13439609799360752613

/-! ## A358974.P4874064766314468597

`A151799(p?[(2-A038566(n+1))*A279067(n+1)])`
-/

namespace A358974.P4874064766314468597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A038566 (n + 1)) * A279067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A358974.P4874064766314468597

/-! ## A358974.P11968019166671702517

`A151799(p?[A038566(n+1)*A279067(n+1)])`
-/

namespace A358974.P11968019166671702517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1) * A279067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A358974.P11968019166671702517

/-!
# A358975: Numbers that are coprime to their digital sum in base 3 (A053735).

The programs for A358975, the canonical program `A358975.P8882271686286769118` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358975 has offset 1).

The definition of A358975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358975.P8882271686286769118

`eq[1, gcd(n, A053735(n))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A358975

/-- `eq[1, gcd(n, A053735(n))]` -/
def P8882271686286769118.Spec : Prop :=
  ∀ n, (P8882271686286769118.a n : ℤ) = A358975 (n + 1)

theorem P8882271686286769118.correct : P8882271686286769118.Spec := by
  intro n
  simp only [A358975, Nat.add_sub_cancel]

end A358975

/-! ## A358975.P17601820199068283540

`lt[A032741(3*n)!, A179003(n+1)]`
-/

namespace A358975.P17601820199068283540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A032741 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358975.P17601820199068283540

namespace A358975

/-- `lt[A032741(3*n)!, A179003(n+1)]` -/
def P17601820199068283540.Spec : Prop :=
  ∀ n, (P17601820199068283540.a n : ℤ) = A358975 (n + 1)

end A358975

/-! ## A358975.P17998875200374211578

`lt[A304442(A033428(n)), A000203(n+1)]`
-/

namespace A358975.P17998875200374211578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A033428 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358975.P17998875200374211578

namespace A358975

/-- `lt[A304442(A033428(n)), A000203(n+1)]` -/
def P17998875200374211578.Spec : Prop :=
  ∀ n, (P17998875200374211578.a n : ℤ) = A358975 (n + 1)

end A358975

/-! ## A358975.P9588321471150173054

`lt[A032741(n), A348952(A005897(n+1))]`
-/

namespace A358975.P9588321471150173054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348952 (A005897 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358975.P9588321471150173054

namespace A358975

/-- `lt[A032741(n), A348952(A005897(n+1))]` -/
def P9588321471150173054.Spec : Prop :=
  ∀ n, (P9588321471150173054.a n : ℤ) = A358975 (n + 1)

end A358975

/-! ## A358975.P5012306837373882391

`lt[A245211(A008486(n)), A154487(n+1)]`
-/

namespace A358975.P5012306837373882391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245211 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358975.P5012306837373882391

namespace A358975

/-- `lt[A245211(A008486(n)), A154487(n+1)]` -/
def P5012306837373882391.Spec : Prop :=
  ∀ n, (P5012306837373882391.a n : ℤ) = A358975 (n + 1)

end A358975

/-!
# A358976: Numbers that are coprime to the sum of their factorial base digits (A034968).

The programs for A358976, the canonical program `A358976.P7223524224958330645` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358976 has offset 1).

The definition of A358976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6064 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358976.P7223524224958330645

`eq[1, gcd(n, A034968(n))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A358976

/-- `eq[1, gcd(n, A034968(n))]` -/
def P7223524224958330645.Spec : Prop :=
  ∀ n, (P7223524224958330645.a n : ℤ) = A358976 (n + 1)

theorem P7223524224958330645.correct : P7223524224958330645.Spec := by
  intro n
  simp only [A358976, Nat.add_sub_cancel]

end A358976

/-! ## A358976.P16216523971891508065

`lt[A332667(A003415(n)), A332667(n)]`
-/

namespace A358976.P16216523971891508065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332667 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358976.P16216523971891508065

namespace A358976

/-- `lt[A332667(A003415(n)), A332667(n)]` -/
def P16216523971891508065.Spec : Prop :=
  ∀ n, (P16216523971891508065.a n : ℤ) = A358976 (n + 1)

end A358976

/-! ## A358976.P7953252219759114293

`record[A005117(n+1)%A352486(n+5)]`
-/

namespace A358976.P7953252219759114293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (n + 1)) (A352486 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358976.P7953252219759114293

namespace A358976

/-- `record[A005117(n+1)%A352486(n+5)]` -/
def P7953252219759114293.Spec : Prop :=
  ∀ n, P7953252219759114293.a n = A358976 (n + 1)

end A358976

/-!
# A358977: Numbers that are coprime to the sum of their primorial base digits (A276150).

The programs for A358977, the canonical program `A358977.P3842764694478648946` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358977 has offset 1).

The definition of A358977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358977.P6311778206756169911

`eq[1, A373833(n)]`
-/

namespace A358977.P6311778206756169911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358977.P6311778206756169911

namespace A358977

/-- `eq[1, A373833(n)]` -/
def P6311778206756169911.Spec : Prop :=
  ∀ n, (P6311778206756169911.a n : ℤ) = A358977 (n + 1)

end A358977

/-! ## A358977.P3842764694478648946

`eq[1, gcd(n, A276150(n))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358977

/-- `eq[1, gcd(n, A276150(n))]` -/
def P3842764694478648946.Spec : Prop :=
  ∀ n, (P3842764694478648946.a n : ℤ) = A358977 (n + 1)

theorem P3842764694478648946.correct : P3842764694478648946.Spec := by
  intro n
  simp only [A358977, Nat.add_sub_cancel]

end A358977

/-! ## A358977.P5224608878413532169

`lt[A373833(n+1), 2]+1`
-/

namespace A358977.P5224608878413532169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373833 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A358977.P5224608878413532169

namespace A358977

/-- `lt[A373833(n+1), 2]+1` -/
def P5224608878413532169.Spec : Prop :=
  ∀ n, (P5224608878413532169.a n : ℤ) = A358977 (n + 1)

end A358977

/-! ## A358977.P10991036984195515083

`lt[A295182(A373833(n)), A057427(n)]`
-/

namespace A358977.P10991036984195515083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295182 (A373833 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358977.P10991036984195515083

namespace A358977

/-- `lt[A295182(A373833(n)), A057427(n)]` -/
def P10991036984195515083.Spec : Prop :=
  ∀ n, (P10991036984195515083.a n : ℤ) = A358977 (n + 1)

end A358977

/-! ## A358977.P7751979287091338902

`lt[A054884(A373833(n)), A334028(n)]`
-/

namespace A358977.P7751979287091338902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054884 (A373833 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358977.P7751979287091338902

namespace A358977

/-- `lt[A054884(A373833(n)), A334028(n)]` -/
def P7751979287091338902.Spec : Prop :=
  ∀ n, (P7751979287091338902.a n : ℤ) = A358977 (n + 1)

end A358977

/-!
# A358978: Numbers that are coprime to the number of terms in their Zeckendorf representation (A007895).

The programs for A358978, the canonical program `A358978.P4910650545126068101` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358978 has offset 1).

The definition of A358978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358978.P4910650545126068101

`eq[1, gcd(n, A007895(n))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358978

/-- `eq[1, gcd(n, A007895(n))]` -/
def P4910650545126068101.Spec : Prop :=
  ∀ n, (P4910650545126068101.a n : ℤ) = A358978 (n + 1)

theorem P4910650545126068101.correct : P4910650545126068101.Spec := by
  intro n
  simp only [A358978, Nat.add_sub_cancel]

end A358978

/-! ## A358978.P2633825043887212121

`eq[1, gcd(n^3, A219641(n))]`
-/

namespace A358978.P2633825043887212121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 3 : ℤ) (A219641 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358978.P2633825043887212121

namespace A358978

/-- `eq[1, gcd(n^3, A219641(n))]` -/
def P2633825043887212121.Spec : Prop :=
  ∀ n, (P2633825043887212121.a n : ℤ) = A358978 (n + 1)

end A358978

/-! ## A358978.P7575125900109341891

`A063743(n+1)%A095357(n+1)`
-/

namespace A358978.P7575125900109341891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063743 (n + 1)) (A095357 (n + 1))

end

end A358978.P7575125900109341891

namespace A358978

/-- `A063743(n+1)%A095357(n+1)` -/
def P7575125900109341891.Spec : Prop :=
  ∀ n, P7575125900109341891.a n = A358978 (n + 1)

end A358978

/-! ## A358978.P14416152132684136768

`A063743(n+1)+A000007(A001497(n))`
-/

namespace A358978.P14416152132684136768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063743 (n + 1) + A000007 (A001497 n).toNat

end

end A358978.P14416152132684136768

namespace A358978

/-- `A063743(n+1)+A000007(A001497(n))` -/
def P14416152132684136768.Spec : Prop :=
  ∀ n, P14416152132684136768.a n = A358978 (n + 1)

end A358978

/-! ## A358978.P16822356662363468101

`A324679(A324690(n))+A063743(n+1)`
-/

namespace A358978.P16822356662363468101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324679 (A324690 n).toNat + A063743 (n + 1)

end

end A358978.P16822356662363468101

namespace A358978

/-- `A324679(A324690(n))+A063743(n+1)` -/
def P16822356662363468101.Spec : Prop :=
  ∀ n, P16822356662363468101.a n = A358978 (n + 1)

end A358978

/-!
# A358979: Least prime p such that p^n + 4 is the product of n distinct primes.

The programs for A358979, there is no canonical definition to state claims against.
-/

/-! ## A358979.P622356392482987824

`A101636(A008017(n+1))`
-/

namespace A358979.P622356392482987824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101636 (A008017 (n + 1)).toNat

end

end A358979.P622356392482987824

/-!
# A358984: The number of n-digit numbers k such that k + digit reversal of k (A056964) is a square.

The programs for A358984, there is no canonical definition to state claims against.
-/

/-! ## A358984.P6492688928346802551

`A303217(A319616(n+2))-A210186(n+3)`
-/

namespace A358984.P6492688928346802551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303217 (A319616 (n + 2)).toNat - A210186 (n + 3)

end

end A358984.P6492688928346802551

/-!
# A358985: a(n) is the number of numbers of the form k + reverse(k) for at least one n-digit number k.

The programs for A358985, the canonical program `A358985.P1024131715830197092` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358985 has offset 1).

The definition of A358985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358985.P7036924370842506431

`ogf((10+18x-10x^2)/(1-19x^2))`
-/

namespace A358985.P7036924370842506431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 18, -10] [1, 0, -19] n

end

end A358985.P7036924370842506431

namespace A358985

/-- `ogf((10+18x-10x^2)/(1-19x^2))` -/
def P7036924370842506431.Spec : Prop :=
  ∀ n, P7036924370842506431.a n = A358985 (n + 1)

end A358985

/-! ## A358985.P1024131715830197092

`19*a(n-2)` with `a(0)=10, a(1)=18, a(2)=180`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358985

/-- `19*a(n-2)` -/
def P1024131715830197092.Spec : Prop :=
  ∀ n, (P1024131715830197092.a n : ℤ) = A358985 (n + 1)

theorem P1024131715830197092.correct : P1024131715830197092.Spec := by
  intro n
  simp only [A358985, Nat.add_sub_cancel]

end A358985

/-!
# A358987: Omit the trailing 5 from double factorial of odd numbers (A001147(n)).

The programs for A358987, there is no canonical definition to state claims against.
-/

/-! ## A358987.P6160531269998640803

`(a(n-1)+1)*A004273(n)-n` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A358987.P6160531269998640803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 1] fun n a =>
  (a (n - 1) + 1) * A004273 n - (n : ℤ)

end

end A358987.P6160531269998640803

/-!
# A358988: Oblong numbers which are products of four distinct primes.

The programs for A358988, the canonical program `A358988.P13199037608609698996` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358988 has offset 1).

The definition of A358988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 878 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358988.P13199037608609698996

`record[lcm(2, A128896(n+3))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A358988

/-- `record[lcm(2, A128896(n+3))]` -/
def P13199037608609698996.Spec : Prop :=
  ∀ n, (P13199037608609698996.a n : ℤ) = A358988 (n + 1)

theorem P13199037608609698996.correct : P13199037608609698996.Spec := by
  intro n
  simp only [A358988, Nat.add_sub_cancel]

end A358988

/-! ## A358988.P10961226352872437416

`∩[A046386(n+1), n²+n]`
-/

namespace A358988.P10961226352872437416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A358988.P10961226352872437416

namespace A358988

/-- `∩[A046386(n+1), n²+n]` -/
def P10961226352872437416.Spec : Prop :=
  ∀ n, (P10961226352872437416.a n : ℤ) = A358988 (n + 1)

end A358988

/-! ## A358988.P8260065644636034125

`∩[A002378(n), A046386(n+1)]`
-/

namespace A358988.P8260065644636034125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358988.P8260065644636034125

namespace A358988

/-- `∩[A002378(n), A046386(n+1)]` -/
def P8260065644636034125.Spec : Prop :=
  ∀ n, (P8260065644636034125.a n : ℤ) = A358988 (n + 1)

end A358988

/-! ## A358988.P10701455950954376362

`∩[A028690(n+1), A046386(n+1)]`
-/

namespace A358988.P10701455950954376362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358988.P10701455950954376362

namespace A358988

/-- `∩[A028690(n+1), A046386(n+1)]` -/
def P10701455950954376362.Spec : Prop :=
  ∀ n, (P10701455950954376362.a n : ℤ) = A358988 (n + 1)

end A358988

/-! ## A358988.P15403707239706969094

`∩[A045619(n+1), A046386(n+1)]`
-/

namespace A358988.P15403707239706969094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358988.P15403707239706969094

namespace A358988

/-- `∩[A045619(n+1), A046386(n+1)]` -/
def P15403707239706969094.Spec : Prop :=
  ∀ n, (P15403707239706969094.a n : ℤ) = A358988 (n + 1)

end A358988

/-! ## A358988.P15527451300703301952

`∩[2*A000217(n), A046386(n+1)]`
-/

namespace A358988.P15527451300703301952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358988.P15527451300703301952

namespace A358988

/-- `∩[2*A000217(n), A046386(n+1)]` -/
def P15527451300703301952.Spec : Prop :=
  ∀ n, (P15527451300703301952.a n : ℤ) = A358988 (n + 1)

end A358988

/-! ## A358988.P13397399748723063418

`∩[2*A001972(n), A046386(n+1)]`
-/

namespace A358988.P13397399748723063418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001972 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358988.P13397399748723063418

namespace A358988

/-- `∩[2*A001972(n), A046386(n+1)]` -/
def P13397399748723063418.Spec : Prop :=
  ∀ n, (P13397399748723063418.a n : ℤ) = A358988 (n + 1)

end A358988

/-! ## A358988.P1963356127043644695

`∩[2*A253145(n), A046386(n+1)]`
-/

namespace A358988.P1963356127043644695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358988.P1963356127043644695

namespace A358988

/-- `∩[2*A253145(n), A046386(n+1)]` -/
def P1963356127043644695.Spec : Prop :=
  ∀ n, (P1963356127043644695.a n : ℤ) = A358988 (n + 1)

end A358988

/-! ## A358988.P2139731756686404074

`∩[2*A005214(n+1), A046386(n+1)]`
-/

namespace A358988.P2139731756686404074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358988.P2139731756686404074

namespace A358988

/-- `∩[2*A005214(n+1), A046386(n+1)]` -/
def P2139731756686404074.Spec : Prop :=
  ∀ n, (P2139731756686404074.a n : ℤ) = A358988 (n + 1)

end A358988

/-! ## A358988.P17008798090054564885

`∩[2*A061304(n+1), A046386(n+1)]`
-/

namespace A358988.P17008798090054564885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358988.P17008798090054564885

namespace A358988

/-- `∩[2*A061304(n+1), A046386(n+1)]` -/
def P17008798090054564885.Spec : Prop :=
  ∀ n, (P17008798090054564885.a n : ℤ) = A358988 (n + 1)

end A358988

/-!
# A358990: a(n) is the product of the first n odd numbers not divisible by 5.

The programs for A358990, there is no canonical definition to state claims against.
-/

/-! ## A358990.P11348460365417880221

`∏[a(n-4)+10]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7, a(4)=9`
-/

namespace A358990.P11348460365417880221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 7, 9] fun n f1 =>
  f1 (n - 4) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A358990.P11348460365417880221

/-! ## A358990.P6168795735819660571

`a(n-1)*A045572(n)` with `a(0)=1`
-/

namespace A358990.P6168795735819660571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A045572 n

end

end A358990.P6168795735819660571

/-! ## A358990.P6093265118472713417

`∏[or(1, comp[A065502(n+1)])]`
-/

namespace A358990.P6093265118472713417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A358990.P6093265118472713417

/-! ## A358990.P6156808569816776581

`sqrt(A028375(n))*a(n-1)` with `a(0)=1`
-/

namespace A358990.P6156808569816776581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A028375 n : ℝ) * a (n - 1)

end

end A358990.P6156808569816776581

/-! ## A358990.P12508255629270280357

`(2*A047207(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A358990.P12508255629270280357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * A047207 n + 1) * a (n - 1)

end

end A358990.P12508255629270280357

/-!
# A358991: a(n) is the number of zero digits in the product of the first n odd numbers not divisible by 5.

The programs for A358991, there is no canonical definition to state claims against.
-/

/-! ## A358991.P5458373123836944464

`A358992(n)-A358993(n)`
-/

namespace A358991.P5458373123836944464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 n - A358993 n

end

end A358991.P5458373123836944464

/-! ## A358991.P62138998546257947

`A358992(A028310(n))%A358993(n)`
-/

namespace A358991.P62138998546257947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358992 (A028310 n).toNat) (A358993 n)

end

end A358991.P62138998546257947

/-! ## A358991.P8012780918383727047

`A358992(n)+A022958(A358993(n)+2)`
-/

namespace A358991.P8012780918383727047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 n + A022958 (A358993 n + 2).toNat

end

end A358991.P8012780918383727047

/-! ## A358991.P8721452872413815985

`A358992(n)%(A358993(n)%A001359(n+1))`
-/

namespace A358991.P8721452872413815985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358992 n) (Int.tmod (A358993 n) (A001359 (n + 1)))

end

end A358991.P8721452872413815985

/-! ## A358991.P7375528653669604328

`A025465(A007918(n))+A358992(n)%A358993(n)`
-/

namespace A358991.P7375528653669604328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A007918 n).toNat + Int.tmod (A358992 n) (A358993 n)

end

end A358991.P7375528653669604328

/-!
# A358992: a(n) is the number of digits in the product of the first n odd numbers not divisible by 5.

The programs for A358992, there is no canonical definition to state claims against.
-/

/-! ## A358992.P14839477560931258392

`A358993(n)+A358991(n)`
-/

namespace A358992.P14839477560931258392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358993 n + A358991 n

end

end A358992.P14839477560931258392

/-! ## A358992.P13059004623062104150

`∑[A097456(A209268(2*(n+2)))]`
-/

namespace A358992.P13059004623062104150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097456 (A209268 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358992.P13059004623062104150

/-! ## A358992.P13931726998280042864

`A157684(A325544(n)+A157684(n+1))`
-/

namespace A358992.P13931726998280042864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A325544 n + A157684 (n + 1)).toNat

end

end A358992.P13931726998280042864

/-! ## A358992.P685576360364994087

`A025162(n+1)+A001222(A122391(n))`
-/

namespace A358992.P685576360364994087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025162 (n + 1) + A001222 (A122391 n).toNat

end

end A358992.P685576360364994087

/-! ## A358992.P2796401562530688422

`A061420(A177486(n))`
-/

namespace A358992.P2796401562530688422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (A177486 n).toNat

end

end A358992.P2796401562530688422

/-!
# A358993: a(n) is the number of nonzero digits in the product of the first n odd numbers not divisible by 5.

The programs for A358993, there is no canonical definition to state claims against.
-/

/-! ## A358993.P6489586793669133605

`A358992(n)-A358991(n)`
-/

namespace A358993.P6489586793669133605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 n - A358991 n

end

end A358993.P6489586793669133605

/-! ## A358993.P15435931682911290902

`A061420(A177486(n))-A358991(n)`
-/

namespace A358993.P15435931682911290902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (A177486 n).toNat - A358991 n

end

end A358993.P15435931682911290902

/-! ## A358993.P14399832642025344463

`A061420(A006982(n+1))-A358991(n)`
-/

namespace A358993.P14399832642025344463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (A006982 (n + 1)).toNat - A358991 n

end

end A358993.P14399832642025344463

/-! ## A358993.P1863703952024615347

`A061420(A119262(n+1))-A358991(n)`
-/

namespace A358993.P1863703952024615347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (A119262 (n + 1)).toNat - A358991 n

end

end A358993.P1863703952024615347

/-! ## A358993.P8006347593094263019

`A061420(A345235(n+2))-A358991(n)`
-/

namespace A358993.P8006347593094263019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061420 (A345235 (n + 2)).toNat - A358991 n

end

end A358993.P8006347593094263019

/-!
# A358994: The sum of the numbers that are inside the contour of an n-story Christmas tree drawn at the top of the numerical pyramid containing the positive integers in natural order.

The programs for A358994, the canonical program `A358994.P3861400378634581960` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358994 has offset 1).

The definition of A358994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358994.P14505413475175447253

`ogf((21+46x+16x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A358994.P14505413475175447253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, 46, 16, -2] [1, -5, 10, -10, 5, -1] n

end

end A358994.P14505413475175447253

namespace A358994

/-- `ogf((21+46x+16x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14505413475175447253.Spec : Prop :=
  ∀ n, P14505413475175447253.a n = A358994 (n + 1)

end A358994

/-! ## A358994.P3861400378634581960

`(n+1)*((n+1)*(3*(n+1)*(9*(n+1)+22)+49)+26)/8`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A358994

/-- `(n+1)*((n+1)*(3*(n+1)*(9*(n+1)+22)+49)+26)/8` -/
def P3861400378634581960.Spec : Prop :=
  ∀ n, P3861400378634581960.a n = (A358994 (n + 1) : ℚ)

end A358994

/-! ## A358994.P2295260338950539006

`∑[A002411(3*(n+1))+n+3]`
-/

namespace A358994.P2295260338950539006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (3 * (n + 1)) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358994.P2295260338950539006

namespace A358994

/-- `∑[A002411(3*(n+1))+n+3]` -/
def P2295260338950539006.Spec : Prop :=
  ∀ n, P2295260338950539006.a n = A358994 (n + 1)

end A358994

/-! ## A358994.P4835399418818980113

`∑[A064808(3*(n+1))-Δ[n²]]`
-/

namespace A358994.P4835399418818980113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 (3 * (n + 1)) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358994.P4835399418818980113

namespace A358994

/-- `∑[A064808(3*(n+1))-Δ[n²]]` -/
def P4835399418818980113.Spec : Prop :=
  ∀ n, P4835399418818980113.a n = A358994 (n + 1)

end A358994

/-! ## A358994.P15747516969932640653

`∑[(3*n+5)*A000124(3*n+2)+n+1]`
-/

namespace A358994.P15747516969932640653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 5 : ℤ) * A000124 (3 * n + 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358994.P15747516969932640653

namespace A358994

/-- `∑[(3*n+5)*A000124(3*n+2)+n+1]` -/
def P15747516969932640653.Spec : Prop :=
  ∀ n, P15747516969932640653.a n = A358994 (n + 1)

end A358994

/-!
# A358995: Lucas numbers which are the sum of three repdigits.

The programs for A358995, there is no canonical definition to state claims against.
-/

/-! ## A358995.P9999748417107770805

`A000032(val(n+3, 4)!²+n+1)`
-/

namespace A358995.P9999748417107770805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.factorial (SequenceMachineLib.valuation (n + 3) 4) ^ 2 + (n + 1))

end

end A358995.P9999748417107770805

/-! ## A358995.P16843654986455128778

`A000032(A347620(n+2))`
-/

namespace A358995.P16843654986455128778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A347620 (n + 2)).toNat

end

end A358995.P16843654986455128778

/-! ## A358995.P18181777087296678342

`A000032(A347769(n)+2)`
-/

namespace A358995.P18181777087296678342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A347769 n + 2).toNat

end

end A358995.P18181777087296678342

/-! ## A358995.P619568997776454787

`A000204(A347769(n)+2)`
-/

namespace A358995.P619568997776454787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A347769 n + 2).toNat

end

end A358995.P619568997776454787

/-! ## A358995.P13994898404260279373

`A000032(A379262(n)+2)`
-/

namespace A358995.P13994898404260279373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A379262 n + 2).toNat

end

end A358995.P13994898404260279373

/-!
# A358996: Number of self-avoiding paths of length 2*(n+A002620(n-1)) along the edges of a grid with n X n square cells, which do not pass above the diagonal, start at the lower left corner and finish at the upper right corner.

The programs for A358996, there is no canonical definition to state claims against.
-/

/-! ## A358996.P9881186096704314376

`A342499(A226881(n))`
-/

namespace A358996.P9881186096704314376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342499 (A226881 n).toNat

end

end A358996.P9881186096704314376

/-! ## A358996.P10975318238554968777

`A342499(A369781(n))`
-/

namespace A358996.P10975318238554968777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342499 (A369781 n).toNat

end

end A358996.P10975318238554968777

/-! ## A358996.P6043817971320330433

`A323089(A283448(n+1))`
-/

namespace A358996.P6043817971320330433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323089 (A283448 (n + 1)).toNat

end

end A358996.P6043817971320330433

/-!
# A358997: a(n) is the number of distinct positive real roots of the Maclaurin polynomial of degree 2*n for cos(x).

The programs for A358997, there is no canonical definition to state claims against.
-/

/-! ## A358997.P10891445675384345942

`A383644(A028310(2*n))-A028310(n)`
-/

namespace A358997.P10891445675384345942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383644 (A028310 (2 * n)).toNat - A028310 n

end

end A358997.P10891445675384345942

/-! ## A358997.P17519692668448081043

`4*n+3-A344543(3*(n+1))`
-/

namespace A358997.P17519692668448081043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) - A344543 (3 * (n + 1))

end

end A358997.P17519692668448081043

/-! ## A358997.P17296406590620897069

`A285869(A018837(n)%A274384(n+2))`
-/

namespace A358997.P17296406590620897069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (Int.tmod (A018837 n) (A274384 (n + 2))).toNat

end

end A358997.P17296406590620897069

/-! ## A358997.P8668256886830531874

`A285869(A083219(n)%A274384(n+2))`
-/

namespace A358997.P8668256886830531874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (Int.tmod (A083219 n) (A274384 (n + 2))).toNat

end

end A358997.P8668256886830531874

/-! ## A358997.P511702852330814093

`A303536(A117647(n))`
-/

namespace A358997.P511702852330814093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A117647 n).toNat

end

end A358997.P511702852330814093

/-!
# A358998: Nonprimes whose sum of factorials of digits is a prime.

The programs for A358998, there is no canonical definition to state claims against.
-/

/-! ## A358998.P3995993499088013026

`filter[A165451(n+1), A005171(#)]`
-/

namespace A358998.P3995993499088013026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A358998.P3995993499088013026

/-! ## A358998.P1933701014764946246

`filter[A165451(n+1), A066247(#)]`
-/

namespace A358998.P1933701014764946246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A358998.P1933701014764946246

/-! ## A358998.P713682133679458572

`filter[A165451(n+1), A202238(#)]`
-/

namespace A358998.P713682133679458572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A358998.P713682133679458572

/-! ## A358998.P2694576775232033754

`∩[A002808(n+1), A165451(n+1)]`
-/

namespace A358998.P2694576775232033754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358998.P2694576775232033754

/-! ## A358998.P5768122598952561728

`∩[A018252(n+1), A165451(n+1)]`
-/

namespace A358998.P5768122598952561728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358998.P5768122598952561728

