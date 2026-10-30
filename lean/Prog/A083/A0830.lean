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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A083001: Smallest oblong number having n prime divisors (with multiplicity).

The programs for A083001, there is no canonical definition to state claims against.
-/

/-! ## A083001.P5790956167397477591

`2*A075088(n)`
-/

namespace A083001.P5790956167397477591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075088 n

end

end A083001.P5790956167397477591

/-! ## A083001.P14010696242659647373

`2*C(A076550(n)+1, 2)`
-/

namespace A083001.P14010696242659647373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A076550 n + 1).toNat 2

end

end A083001.P14010696242659647373

/-! ## A083001.P5573248926431249894

`A076550(n)+A076550(n)²`
-/

namespace A083001.P5573248926431249894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076550 n + A076550 n ^ 2

end

end A083001.P5573248926431249894

/-! ## A083001.P5007044363756359053

`A075088(n)+C(A076550(n)+1, 2)`
-/

namespace A083001.P5007044363756359053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075088 n + (Nat.choose (A076550 n + 1).toNat 2 : ℤ)

end

end A083001.P5007044363756359053

/-! ## A083001.P17002818000995352858

`2*C(floor(A155850(n+3)/2)+1, 2)`
-/

namespace A083001.P17002818000995352858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (⌊(A155850 (n + 3) : ℚ) / 2⌋ + 1).toNat 2

end

end A083001.P17002818000995352858

/-!
# A083002: Smallest oblong number having at least n distinct prime divisors.

The programs for A083002, there is no canonical definition to state claims against.
-/

/-! ## A083002.P12733370813114867112

`2*C(A069354(n+1), 2)`
-/

namespace A083002.P12733370813114867112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A069354 (n + 1)).toNat 2

end

end A083002.P12733370813114867112

/-! ## A083002.P15982199249584729486

`A059958(n+1)*A069354(n+1)`
-/

namespace A083002.P15982199249584729486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059958 (n + 1) * A069354 (n + 1)

end

end A083002.P15982199249584729486

/-! ## A083002.P16990068528454947698

`floor(A219017(n+1)/2)+floor(A219017(n+1)/2)²`
-/

namespace A083002.P16990068528454947698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A219017 (n + 1) : ℚ) / 2⌋ + ⌊(A219017 (n + 1) : ℚ) / 2⌋ ^ 2

end

end A083002.P16990068528454947698

/-! ## A083002.P8366057475949560570

`A059958(n+1)+A059958(A067080(n+1))²`
-/

namespace A083002.P8366057475949560570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059958 (n + 1) + A059958 (A067080 (n + 1)).toNat ^ 2

end

end A083002.P8366057475949560570

/-! ## A083002.P2379422148161410080

`(A069354(n+1)-1)²+A158388(C(n, 64))+A069354(n+1)`
-/

namespace A083002.P2379422148161410080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069354 (n + 1) - 1) ^ 2 + (A158388 (Nat.choose n 64) + A069354 (n + 1))

end

end A083002.P2379422148161410080

/-!
# A083005: a(1)=1, a(n)=2a(n-1)+1 if a(n-1) is prime, a(n)=a(n-1)+1 otherwise.

The programs for A083005, there is no canonical definition to state claims against.
-/

/-! ## A083005.P11140253341614901882

`record[A080735(n+1)/A163963(A028310(n))]`
-/

namespace A083005.P11140253341614901882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080735 (n + 1) : ℚ) / (A163963 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083005.P11140253341614901882

/-! ## A083005.P9035253666488592984

`record[A080735(n+1)/A163963(A065190(n+1))]`
-/

namespace A083005.P9035253666488592984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080735 (n + 1) : ℚ) / (A163963 (A065190 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083005.P9035253666488592984

/-! ## A083005.P9596764461352843780

`a(n-1)*A294619(A000005(a(n-1)))+1` with `a(0)=1`
-/

namespace A083005.P9596764461352843780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A294619 (A000005 (a (n - 1)).toNat).toNat + 1

end

end A083005.P9596764461352843780

/-! ## A083005.P11531930704758829416

`a(n-1)*A113607(A001222(a(n-1))+1)+1` with `a(0)=1`
-/

namespace A083005.P11531930704758829416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A113607 (A001222 (a (n - 1)).toNat + 1).toNat + 1

end

end A083005.P11531930704758829416

/-! ## A083005.P16786443270912441245

`A143545(a(n-1))+1` with `a(0)=1`
-/

namespace A083005.P16786443270912441245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143545 (a (n - 1)).toNat + 1

end

end A083005.P16786443270912441245

/-!
# A083006: Numbers k such that Sum_{j=0..k-1} Bernoulli(j)*binomial(k,j)^2 is an integer.

The programs for A083006, there is no canonical definition to state claims against.
-/

/-! ## A083006.P14668837179518529492

`eq[A007318(A047030(n)), A213621(n)]`
-/

namespace A083006.P14668837179518529492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A047030 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083006.P14668837179518529492

/-! ## A083006.P7313926868483914182

`eq[A007318(A112952(n)), A050334(n+1)]`
-/

namespace A083006.P7313926868483914182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A112952 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083006.P7313926868483914182

/-! ## A083006.P11728839533063696627

`eq[A008279(A112952(n)), A160135(n+1)]`
-/

namespace A083006.P11728839533063696627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A112952 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083006.P11728839533063696627

/-! ## A083006.P3892373381719486350

`eq[A007318(A112952(n)), A254578(n+1)]`
-/

namespace A083006.P3892373381719486350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A112952 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083006.P3892373381719486350

/-! ## A083006.P17322375149456668639

`eq[A010054(A321791(n)), A045778(n+1)]`
-/

namespace A083006.P17322375149456668639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A321791 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083006.P17322375149456668639

/-!
# A083007: a(n) = Sum_{k=0..n-1} 3^k*B(k)*C(n,k) where B(k) is the k-th Bernoulli number and C(n,k)=binomial(n,k).

The programs for A083007, there is no canonical definition to state claims against.
-/

/-! ## A083007.P7220807323301084504

`(A157799(n)-A285863(n))/A285068(n)`
-/

namespace A083007.P7220807323301084504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157799 n - A285863 n : ℚ) / (A285068 n : ℚ)

end

end A083007.P7220807323301084504

/-!
# A083008: a(n) = Sum_{k=0..n-1} 4^k*B(k)*C(n,k) where B(k) is the k-th Bernoulli number and C(n,k) = binomial(n,k).

The programs for A083008, there is no canonical definition to state claims against.
-/

/-! ## A083008.P1677355904042689430

`(A157817(n)-A288873(n))/A141459(n)`
-/

namespace A083008.P1677355904042689430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157817 n - A288873 n : ℚ) / (A141459 n : ℚ)

end

end A083008.P1677355904042689430

/-!
# A083015: a(n) = the number of ordered pairs of n-bit bit strings, such that both bit strings have at least n/2 one-bits, or both have at most n/2 one-bits.

The programs for A083015, the canonical program `A083015.P16803926072691412127` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083015 has offset 0).

The definition of A083015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083015.P16803926072691412127

`A000302(n)-2*A058622(n)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083015

/-- `A000302(n)-2*A058622(n)²` -/
def P16803926072691412127.Spec : Prop :=
  ∀ n, P16803926072691412127.a n = A083015 n

theorem P16803926072691412127.correct : P16803926072691412127.Spec := by
  intro n
  simp only [A083015]

end A083015

/-! ## A083015.P10405514874938558941

`4^n-A001105(A058622(n))`
-/

namespace A083015.P10405514874938558941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A001105 (A058622 n).toNat

end

end A083015.P10405514874938558941

namespace A083015

/-- `4^n-A001105(A058622(n))` -/
def P10405514874938558941.Spec : Prop :=
  ∀ n, P10405514874938558941.a n = A083015 n

end A083015

/-!
# A083017: Primes whose 10's complement is a palindrome.

The programs for A083017, there is no canonical definition to state claims against.
-/

/-! ## A083017.P11329444622959230207

`record[A037153(n+1)*A145006(n)]`
-/

namespace A083017.P11329444622959230207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037153 (n + 1) * A145006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083017.P11329444622959230207

/-! ## A083017.P2875422213185973048

`record[A037153(n+1)/A096583(n+2)]`
-/

namespace A083017.P2875422213185973048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037153 (n + 1) : ℚ) / (A096583 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083017.P2875422213185973048

/-! ## A083017.P279670475850869028

`A052017(n+1)%A016777(A023502(n))`
-/

namespace A083017.P279670475850869028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052017 (n + 1)) (A016777 (A023502 n).toNat)

end

end A083017.P279670475850869028

/-!
# A083019: Number of common divisors of n and F(n) where F(n) denotes the n-th Fibonacci number.

The programs for A083019, the canonical program `A083019.P18134695761732974330` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083019 has offset 1).

The definition of A083019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083019.P18134695761732974330

`A000005(A104714(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A083019

/-- `A000005(A104714(n+1))` -/
def P18134695761732974330.Spec : Prop :=
  ∀ n, P18134695761732974330.a n = A083019 (n + 1)

theorem P18134695761732974330.correct : P18134695761732974330.Spec := by
  intro n
  simp only [A083019, Nat.add_sub_cancel]

end A083019

/-! ## A083019.P14681277196175762197

`A000005((n+1)/A270313(n+1))`
-/

namespace A083019.P14681277196175762197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A270313 (n + 1) : ℚ))).toNat

end

end A083019.P14681277196175762197

namespace A083019

/-- `A000005((n+1)/A270313(n+1))` -/
def P14681277196175762197.Spec : Prop :=
  ∀ n, P14681277196175762197.a n = A083019 (n + 1)

end A083019

/-! ## A083019.P15740513110664928279

`A000005(gcd(n+1, A002708(n+1)))`
-/

namespace A083019.P15740513110664928279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (A002708 (n + 1)))

end

end A083019.P15740513110664928279

namespace A083019

/-- `A000005(gcd(n+1, A002708(n+1)))` -/
def P15740513110664928279.Spec : Prop :=
  ∀ n, P15740513110664928279.a n = A083019 (n + 1)

end A083019

/-! ## A083019.P15837204049537599095

`∑{d}[n+1, A028654(A000045(n+1)%#)%2]`
-/

namespace A083019.P15837204049537599095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A028654 (Int.tmod (A000045 (n + 1)) (d : ℤ)).toNat) 2

end

end A083019.P15837204049537599095

namespace A083019

/-- `∑{d}[n+1, A028654(A000045(n+1)%#)%2]` -/
def P15837204049537599095.Spec : Prop :=
  ∀ n, P15837204049537599095.a n = A083019 (n + 1)

end A083019

/-! ## A083019.P5773099836143843620

`A000005(gcd(A000045(n+1), A153152(n)))`
-/

namespace A083019.P5773099836143843620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000045 (n + 1)) (A153152 n))

end

end A083019.P5773099836143843620

namespace A083019

/-- `A000005(gcd(A000045(n+1), A153152(n)))` -/
def P5773099836143843620.Spec : Prop :=
  ∀ n, P5773099836143843620.a n = A083019 (n + 1)

end A083019

/-! ## A083019.P16627512393355319645

`A000005(gcd(A028310(n+1), A160536(n+1)))`
-/

namespace A083019.P16627512393355319645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A028310 (n + 1)) (A160536 (n + 1)))

end

end A083019.P16627512393355319645

namespace A083019

/-- `A000005(gcd(A028310(n+1), A160536(n+1)))` -/
def P16627512393355319645.Spec : Prop :=
  ∀ n, P16627512393355319645.a n = A083019 (n + 1)

end A083019

/-! ## A083019.P1157791919231293611

`A000005(gcd(A000027(n+1), A123231(2*n+1)))`
-/

namespace A083019.P1157791919231293611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000027 (n + 1)) (A123231 (2 * n + 1)))

end

end A083019.P1157791919231293611

namespace A083019

/-- `A000005(gcd(A000027(n+1), A123231(2*n+1)))` -/
def P1157791919231293611.Spec : Prop :=
  ∀ n, P1157791919231293611.a n = A083019 (n + 1)

end A083019

/-! ## A083019.P2177893419641003155

`A000005(gcd(A099921(n+1), A099924(n)))`
-/

namespace A083019.P2177893419641003155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A099921 (n + 1)) (A099924 n))

end

end A083019.P2177893419641003155

namespace A083019

/-- `A000005(gcd(A099921(n+1), A099924(n)))` -/
def P2177893419641003155.Spec : Prop :=
  ∀ n, P2177893419641003155.a n = A083019 (n + 1)

end A083019

/-!
# A083020: Irregular triangle read by row of the prime factors of 3^(3^n) + 2.

The programs for A083020, there is no canonical definition to state claims against.
-/

/-! ## A083020.P15985309380199200536

`A006530(3*A349686(3*n+5))`
-/

namespace A083020.P15985309380199200536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A349686 (3 * n + 5)).toNat

end

end A083020.P15985309380199200536

/-!
# A083021: a(n) = the number of distinct primes of the form p(n)#/p(i) + p(i).

The programs for A083021, there is no canonical definition to state claims against.
-/

/-! ## A083021.P15495158535043068272

`A139048(1-char[1]+n)`
-/

namespace A083021.P15495158535043068272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A083021.P15495158535043068272

/-! ## A083021.P14856118044157006464

`A139048(n+1)^floor(atan(n))`
-/

namespace A083021.P14856118044157006464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139048 (n + 1) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A083021.P14856118044157006464

/-! ## A083021.P10634270129754775705

`A159075(n)+A139048(n+1)`
-/

namespace A083021.P10634270129754775705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A139048 (n + 1)

end

end A083021.P10634270129754775705

/-! ## A083021.P11001834172222142594

`A139048(n+1)-A063524(n)`
-/

namespace A083021.P11001834172222142594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (n + 1) - A063524 n

end

end A083021.P11001834172222142594

/-! ## A083021.P15567371176523272937

`A139048(n+1)-A178333(n)`
-/

namespace A083021.P15567371176523272937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (n + 1) - A178333 n

end

end A083021.P15567371176523272937

/-! ## A083021.P11794026564764214224

`A139048(n+1)/A373565(n)`
-/

namespace A083021.P11794026564764214224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139048 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A083021.P11794026564764214224

/-! ## A083021.P11418667808823621909

`gcd(A139048(n+1), A169585(n))`
-/

namespace A083021.P11418667808823621909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139048 (n + 1)) (A169585 n)

end

end A083021.P11418667808823621909

/-! ## A083021.P1188745228953980270

`A139048(n+1)-A055672(2*n)`
-/

namespace A083021.P1188745228953980270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (n + 1) - A055672 (2 * n)

end

end A083021.P1188745228953980270

/-! ## A083021.P13033657451478672873

`A139048(n+1)-A000007(xor(1, n))`
-/

namespace A083021.P13033657451478672873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (n + 1) - A000007 (Nat.xor 1 n)

end

end A083021.P13033657451478672873

/-! ## A083021.P1872486843215823571

`A139048(n+1)-A000007(abs(1-n))`
-/

namespace A083021.P1872486843215823571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (n + 1) - A000007 |1 - (n : ℤ)|.toNat

end

end A083021.P1872486843215823571

/-! ## A083021.P17777643772970262773

`A139048(n+1)-val(A006005(n+1), 3)`
-/

namespace A083021.P17777643772970262773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (n + 1) - (SequenceMachineLib.valuation (A006005 (n + 1)).toNat 3 : ℤ)

end

end A083021.P17777643772970262773

/-! ## A083021.P280188595294184945

`A015748(a(n-1))*A139048(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A083021.P280188595294184945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A015748 (a (n - 1)).toNat * A139048 (n + 1)

end

end A083021.P280188595294184945

/-! ## A083021.P8071088698850331097

`xor(a(n-1)*A102460(n²), A139048(n+1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A083021.P8071088698850331097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Int.xor (a (n - 1) * A102460 (n ^ 2)) (A139048 (n + 1))

end

end A083021.P8071088698850331097

/-! ## A083021.P5701683226946799395

`A139048(n+1)-A003982(A084475(n))`
-/

namespace A083021.P5701683226946799395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (n + 1) - A003982 (A084475 n).toNat

end

end A083021.P5701683226946799395

/-! ## A083021.P17719773369851879966

`A139048(n+1)-A209229(A000384(n))`
-/

namespace A083021.P17719773369851879966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (n + 1) - A209229 (A000384 n).toNat

end

end A083021.P17719773369851879966

/-! ## A083021.P18208886963499697569

`A139048(n+1)-A010054(A000040(n+1))`
-/

namespace A083021.P18208886963499697569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139048 (n + 1) - A010054 (A000040 (n + 1)).toNat

end

end A083021.P18208886963499697569

/-! ## A083021.P11738475048578081987

`A139048(n+1)^A008683(A001747(n+1))`
-/

namespace A083021.P11738475048578081987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139048 (n + 1) : ℚ) ^ (A008683 (A001747 (n + 1)).toNat : ℤ)

end

end A083021.P11738475048578081987

/-!
# A083022: Numbers n such that 4*n^2 - 3 is prime.

The programs for A083022, there is no canonical definition to state claims against.
-/

/-! ## A083022.P16853663265574069898

`A028873(n+1)/2`
-/

namespace A083022.P16853663265574069898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028873 (n + 1) : ℚ) / 2

end

end A083022.P16853663265574069898

/-! ## A083022.P11668541745334512955

`A162860(n+1)/2+1`
-/

namespace A083022.P11668541745334512955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162860 (n + 1) : ℚ) / 2 + 1

end

end A083022.P11668541745334512955

/-! ## A083022.P1921663322759802428

`ceil(sqrt(A028874(n+1))/2)`
-/

namespace A083022.P1921663322759802428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028874 (n + 1) : ℝ) / 2⌉

end

end A083022.P1921663322759802428

/-! ## A083022.P13570345128301953639

`eq[3, A056927(2*(n+1))]+1`
-/

namespace A083022.P13570345128301953639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083022.P13570345128301953639

/-! ## A083022.P8421011997537638505

`A001281(A028873(n+1))`
-/

namespace A083022.P8421011997537638505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028873 (n + 1)).toNat

end

end A083022.P8421011997537638505

/-! ## A083022.P10384972723500823573

`A008619(A162860(n+1))`
-/

namespace A083022.P10384972723500823573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A162860 (n + 1)).toNat

end

end A083022.P10384972723500823573

/-! ## A083022.P3745528499802760706

`A003602(A028873(n+1)-1)`
-/

namespace A083022.P3745528499802760706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A028873 (n + 1) - 1).toNat

end

end A083022.P3745528499802760706

/-! ## A083022.P9505447265179412243

`A060819(2*A028873(n+1))`
-/

namespace A083022.P9505447265179412243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A028873 (n + 1)).toNat

end

end A083022.P9505447265179412243

/-! ## A083022.P4734717152320114156

`ceil(sqrt(p?[n²-3])/2)`
-/

namespace A083022.P4734717152320114156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) / 2⌉

end

end A083022.P4734717152320114156

/-! ## A083022.P7683517177842080035

`round(sqrt(p?[n²-3]/4))`
-/

namespace A083022.P7683517177842080035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4 : ℝ))

end

end A083022.P7683517177842080035

/-! ## A083022.P15598098264059720277

`sqrt(p?[n²-3]+3)/2`
-/

namespace A083022.P15598098264059720277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℝ) / 2

end

end A083022.P15598098264059720277

/-! ## A083022.P1995956973859052817

`ceil(sqrt(p?[n*(n+4)+1]-n)/2)`
-/

namespace A083022.P1995956973859052817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (n : ℤ) : ℝ) / 2⌉

end

end A083022.P1995956973859052817

/-!
# A083023: a(n) = number of partitions of n into a pair of parts n=p+q, p>=q>=0, with p-q equal to a square >= 0.

The programs for A083023, the canonical program `A083023.P2938760846501804758` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083023 has offset 1).

The definition of A083023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083023.P7674334302522221442

`round((n%2+sqrt(n+1))/2)`
-/

namespace A083023.P7674334302522221442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n % 2 : ℕ) : ℝ) + Real.sqrt (n + 1 : ℝ)) / 2)

end

end A083023.P7674334302522221442

namespace A083023

/-- `round((n%2+sqrt(n+1))/2)` -/
def P7674334302522221442.Spec : Prop :=
  ∀ n, P7674334302522221442.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P15768023729843934024

`round((and(1, n)+sqrt(n+1))/2)`
-/

namespace A083023.P15768023729843934024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.land 1 n : ℝ) + Real.sqrt (n + 1 : ℝ)) / 2)

end

end A083023.P15768023729843934024

namespace A083023

/-- `round((and(1, n)+sqrt(n+1))/2)` -/
def P15768023729843934024.Spec : Prop :=
  ∀ n, P15768023729843934024.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P11474175875790892621

`ceil(sqrt(n+2)-a(n-1))` with `a(0)=1`
-/

namespace A083023.P11474175875790892621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (n + 2 : ℝ) - (a (n - 1) : ℝ)⌉

end

end A083023.P11474175875790892621

namespace A083023

/-- `ceil(sqrt(n+2)-a(n-1))` -/
def P11474175875790892621.Spec : Prop :=
  ∀ n, P11474175875790892621.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P2938760846501804758

`Δ[floor(sqrt(n))]+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083023

/-- `Δ[floor(sqrt(n))]+a(n-2)` -/
def P2938760846501804758.Spec : Prop :=
  ∀ n, P2938760846501804758.a n = A083023 (n + 1)

theorem P2938760846501804758.correct : P2938760846501804758.Spec := by
  intro n
  simp only [A083023, Nat.add_sub_cancel]

end A083023

/-! ## A083023.P1638695446815907843

`-floor(a(n-1)-sqrt(n+2))` with `a(0)=1`
-/

namespace A083023.P1638695446815907843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -⌊(a (n - 1) : ℝ) - Real.sqrt (n + 2 : ℝ)⌋

end

end A083023.P1638695446815907843

namespace A083023

/-- `-floor(a(n-1)-sqrt(n+2))` -/
def P1638695446815907843.Spec : Prop :=
  ∀ n, P1638695446815907843.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P711500392233577498

`floor(sqrt(n+1))+1-a(n-1)` with `a(0)=1`
-/

namespace A083023.P711500392233577498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.sqrt (n + 1) : ℤ) + (1 - a (n - 1))

end

end A083023.P711500392233577498

namespace A083023

/-- `floor(sqrt(n+1))+1-a(n-1)` -/
def P711500392233577498.Spec : Prop :=
  ∀ n, P711500392233577498.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P3492195245948945478

`floor(A256244(n+1)/2)`
-/

namespace A083023.P3492195245948945478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256244 (n + 1) : ℚ) / 2⌋

end

end A083023.P3492195245948945478

namespace A083023

/-- `floor(A256244(n+1)/2)` -/
def P3492195245948945478.Spec : Prop :=
  ∀ n, P3492195245948945478.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P17094689654419478869

`a(n-2)+A000005(n+1)%2` with `a(0)=1, a(1)=1`
-/

namespace A083023.P17094689654419478869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Int.tmod (A000005 (n + 1)) 2

end

end A083023.P17094689654419478869

namespace A083023

/-- `a(n-2)+A000005(n+1)%2` -/
def P17094689654419478869.Spec : Prop :=
  ∀ n, P17094689654419478869.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P8524388279247431452

`A004526(A256244(n+1))`
-/

namespace A083023.P8524388279247431452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256244 (n + 1)).toNat

end

end A083023.P8524388279247431452

namespace A083023

/-- `A004526(A256244(n+1))` -/
def P8524388279247431452.Spec : Prop :=
  ∀ n, P8524388279247431452.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P11861166940735518338

`A004524(2*A256244(n+1))/2`
-/

namespace A083023.P11861166940735518338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (2 * A256244 (n + 1)).toNat : ℚ) / 2

end

end A083023.P11861166940735518338

namespace A083023

/-- `A004524(2*A256244(n+1))/2` -/
def P11861166940735518338.Spec : Prop :=
  ∀ n, P11861166940735518338.a n = (A083023 (n + 1) : ℚ)

end A083023

/-! ## A083023.P3709530317386374806

`A080513(n)+1-A080513(A028391(n+1))`
-/

namespace A083023.P3709530317386374806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + 1 - A080513 (A028391 (n + 1)).toNat

end

end A083023.P3709530317386374806

namespace A083023

/-- `A080513(n)+1-A080513(A028391(n+1))` -/
def P3709530317386374806.Spec : Prop :=
  ∀ n, P3709530317386374806.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P6173538494592433703

`A084359(A174091(n+1))`
-/

namespace A083023.P6173538494592433703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A174091 (n + 1)).toNat

end

end A083023.P6173538494592433703

namespace A083023

/-- `A084359(A174091(n+1))` -/
def P6173538494592433703.Spec : Prop :=
  ∀ n, P6173538494592433703.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P11481850571448349712

`A026922(A267654(n+1))`
-/

namespace A083023.P11481850571448349712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A267654 (n + 1)).toNat

end

end A083023.P11481850571448349712

namespace A083023

/-- `A026922(A267654(n+1))` -/
def P11481850571448349712.Spec : Prop :=
  ∀ n, P11481850571448349712.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P4094544629392480751

`A008619(A000196(n+1)-Δ[A008619(n+1)])`
-/

namespace A083023.P4094544629392480751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000196 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A083023.P4094544629392480751

namespace A083023

/-- `A008619(A000196(n+1)-Δ[A008619(n+1)])` -/
def P4094544629392480751.Spec : Prop :=
  ∀ n, P4094544629392480751.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P2140167953187124893

`A084359(n+3)`
-/

namespace A083023.P2140167953187124893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (n + 3)

end

end A083023.P2140167953187124893

namespace A083023

/-- `A084359(n+3)` -/
def P2140167953187124893.Spec : Prop :=
  ∀ n, P2140167953187124893.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P1065459200903276579

`A008619(A028392(n+1))-A008619(n)`
-/

namespace A083023.P1065459200903276579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028392 (n + 1)).toNat - A008619 n

end

end A083023.P1065459200903276579

namespace A083023

/-- `A008619(A028392(n+1))-A008619(n)` -/
def P1065459200903276579.Spec : Prop :=
  ∀ n, P1065459200903276579.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P7170623760742225807

`A008619(A183570(n+1))-A008619(n)`
-/

namespace A083023.P7170623760742225807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A183570 (n + 1)).toNat - A008619 n

end

end A083023.P7170623760742225807

namespace A083023

/-- `A008619(A183570(n+1))-A008619(n)` -/
def P7170623760742225807.Spec : Prop :=
  ∀ n, P7170623760742225807.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P6515852913985431741

`A004526(A028392(n+1))-A004526(n)`
-/

namespace A083023.P6515852913985431741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028392 (n + 1)).toNat - A004526 n

end

end A083023.P6515852913985431741

namespace A083023

/-- `A004526(A028392(n+1))-A004526(n)` -/
def P6515852913985431741.Spec : Prop :=
  ∀ n, P6515852913985431741.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P297595989470948491

`A065033(A078358(n+2))-A065033(n+1)`
-/

namespace A083023.P297595989470948491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A078358 (n + 2)).toNat - A065033 (n + 1)

end

end A083023.P297595989470948491

namespace A083023

/-- `A065033(A078358(n+2))-A065033(n+1)` -/
def P297595989470948491.Spec : Prop :=
  ∀ n, P297595989470948491.a n = A083023 (n + 1)

end A083023

/-! ## A083023.P485137676154674662

`(A256244(n+1)-A071028(A002378(n)))/2`
-/

namespace A083023.P485137676154674662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256244 (n + 1) - A071028 (A002378 n).toNat : ℚ) / 2

end

end A083023.P485137676154674662

namespace A083023

/-- `(A256244(n+1)-A071028(A002378(n)))/2` -/
def P485137676154674662.Spec : Prop :=
  ∀ n, P485137676154674662.a n = (A083023 (n + 1) : ℚ)

end A083023

/-!
# A083024: Molien series for action of SL(3,C) on ternary forms of degree 4.

The programs for A083024, there is no canonical definition to state claims against.
-/

/-! ## A083024.P18017637888317472599

`A000196(∑[A173241(n)²])`
-/

namespace A083024.P18017637888317472599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173241 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083024.P18017637888317472599

/-! ## A083024.P13586417848483371411

`A000196(∑[A007690(2*n)²])`
-/

namespace A083024.P13586417848483371411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083024.P13586417848483371411

/-! ## A083024.P678469003425563809

`A000194(A198896(n))+∑[A295341(n)]`
-/

namespace A083024.P678469003425563809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A198896 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083024.P678469003425563809

/-! ## A083024.P13839183290327028755

`A357862(A003403(n))`
-/

namespace A083024.P13839183290327028755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (A003403 n).toNat

end

end A083024.P13839183290327028755

/-! ## A083024.P15099440804215884690

`A088451(A327047(n))`
-/

namespace A083024.P15099440804215884690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088451 (A327047 n).toNat

end

end A083024.P15099440804215884690

/-!
# A083025: Number of primes congruent to 1 modulo 4 dividing n (with multiplicity).

The programs for A083025, the canonical program `A083025.P6816948614237307391` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083025 has offset 1).

The definition of A083025 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083025.P6816948614237307391

`A001222(n+1)-A007814(n+1)-A065339(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A083025

/-- `A001222(n+1)-A007814(n+1)-A065339(n+1)` -/
def P6816948614237307391.Spec : Prop :=
  ∀ n, P6816948614237307391.a n = A083025 (n + 1)

theorem P6816948614237307391.correct : P6816948614237307391.Spec := by
  intro n
  simp only [A083025, Nat.add_sub_cancel]

end A083025

/-! ## A083025.P11098983722561797514

`val(A319984(1+n), 2)`
-/

namespace A083025.P11098983722561797514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319984 (1 + n)).toNat 2

end

end A083025.P11098983722561797514

namespace A083025

/-- `val(A319984(1+n), 2)` -/
def P11098983722561797514.Spec : Prop :=
  ∀ n, (P11098983722561797514.a n : ℤ) = A083025 (n + 1)

end A083025

/-! ## A083025.P9445135979111477985

`∑{d}[1+n, A354031(#)]`
-/

namespace A083025.P9445135979111477985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A354031 d

end

end A083025.P9445135979111477985

namespace A083025

/-- `∑{d}[1+n, A354031(#)]` -/
def P9445135979111477985.Spec : Prop :=
  ∀ n, P9445135979111477985.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P6999710131977630435

`∑{e}[A170818(n+1), #]`
-/

namespace A083025.P6999710131977630435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A083025.P6999710131977630435

namespace A083025

/-- `∑{e}[A170818(n+1), #]` -/
def P6999710131977630435.Spec : Prop :=
  ∀ n, (P6999710131977630435.a n : ℤ) = A083025 (n + 1)

end A083025

/-! ## A083025.P3126390835287423200

`A001222(A170818(n+1))`
-/

namespace A083025.P3126390835287423200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A170818 (n + 1)).toNat

end

end A083025.P3126390835287423200

namespace A083025

/-- `A001222(A170818(n+1))` -/
def P3126390835287423200.Spec : Prop :=
  ∀ n, P3126390835287423200.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P11669810137615283108

`A001222(A286361(n+1))`
-/

namespace A083025.P11669810137615283108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286361 (n + 1)).toNat

end

end A083025.P11669810137615283108

namespace A083025

/-- `A001222(A286361(n+1))` -/
def P11669810137615283108.Spec : Prop :=
  ∀ n, P11669810137615283108.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P3716368195581937066

`A079635(n+1)+A065339(n+1)`
-/

namespace A083025.P3716368195581937066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (n + 1) + A065339 (n + 1)

end

end A083025.P3716368195581937066

namespace A083025

/-- `A079635(n+1)+A065339(n+1)` -/
def P3716368195581937066.Spec : Prop :=
  ∀ n, P3716368195581937066.a n = A083025 (n + 1)

theorem P3716368195581937066.correct : P3716368195581937066.Spec := by
  intro n
  simp only [A083025, Nat.add_sub_cancel, A083025.P3716368195581937066.a, A083025.P6816948614237307391.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A079635, A079635.P16766627809967727170.a, A001511, A001511.P17146462531039486101.a, A097706, A097706.P6722181687817241685.a, A006519, A006519.P10435570611646570274.a, A072436, A072436.P7287158936470340465.a, A170818, A170818.P6198424121185234946.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083025

/-! ## A083025.P917411121387374715

`A087436(n+1)-A065339(n+1)`
-/

namespace A083025.P917411121387374715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - A065339 (n + 1)

end

end A083025.P917411121387374715

namespace A083025

/-- `A087436(n+1)-A065339(n+1)` -/
def P917411121387374715.Spec : Prop :=
  ∀ n, P917411121387374715.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P8275317329014231676

`A001222(n+1)-A378879(n+1)`
-/

namespace A083025.P8275317329014231676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A378879 (n + 1)

end

end A083025.P8275317329014231676

namespace A083025

/-- `A001222(n+1)-A378879(n+1)` -/
def P8275317329014231676.Spec : Prop :=
  ∀ n, P8275317329014231676.a n = A083025 (n + 1)

theorem P8275317329014231676.correct : P8275317329014231676.Spec := by
  intro n
  simp only [A083025, Nat.add_sub_cancel, A083025.P8275317329014231676.a, A083025.P6816948614237307391.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A378879, A378879.P5399312631734305256.a, A001511, A001511.P17146462531039486101.a, A097706, A097706.P6722181687817241685.a, A006519, A006519.P10435570611646570274.a, A072436, A072436.P7287158936470340465.a, A170818, A170818.P6198424121185234946.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083025

/-! ## A083025.P17340531474485219732

`A378879(n+1)-A378880(n+1)`
-/

namespace A083025.P17340531474485219732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378879 (n + 1) - A378880 (n + 1)

end

end A083025.P17340531474485219732

namespace A083025

/-- `A378879(n+1)-A378880(n+1)` -/
def P17340531474485219732.Spec : Prop :=
  ∀ n, P17340531474485219732.a n = A083025 (n + 1)

theorem P17340531474485219732.correct : P17340531474485219732.Spec := by
  intro n
  simp only [A083025, Nat.add_sub_cancel, A083025.P17340531474485219732.a, A083025.P6816948614237307391.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A378879, A378879.P5399312631734305256.a, A378880, A378880.P15528048256974238467.a, A001511, A001511.P17146462531039486101.a, A097706, A097706.P6722181687817241685.a, A006519, A006519.P10435570611646570274.a, A072436, A072436.P7287158936470340465.a, A170818, A170818.P6198424121185234946.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083025

/-! ## A083025.P16794010854319943511

`A079635((n+1)/A097706(n+1))`
-/

namespace A083025.P16794010854319943511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A083025.P16794010854319943511

namespace A083025

/-- `A079635((n+1)/A097706(n+1))` -/
def P16794010854319943511.Spec : Prop :=
  ∀ n, P16794010854319943511.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P4802499052126990927

`A001222(A072436(A000265(n+1)))`
-/

namespace A083025.P4802499052126990927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072436 (A000265 (n + 1)).toNat).toNat

end

end A083025.P4802499052126990927

namespace A083025

/-- `A001222(A072436(A000265(n+1)))` -/
def P4802499052126990927.Spec : Prop :=
  ∀ n, P4802499052126990927.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P2414131626913777029

`A001222(A072436(A065330(n+1)))`
-/

namespace A083025.P2414131626913777029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072436 (A065330 (n + 1)).toNat).toNat

end

end A083025.P2414131626913777029

namespace A083025

/-- `A001222(A072436(A065330(n+1)))` -/
def P2414131626913777029.Spec : Prop :=
  ∀ n, P2414131626913777029.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P7093217177648817148

`A001222(n+1)-A001222(A065338(n+1))`
-/

namespace A083025.P7093217177648817148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A065338 (n + 1)).toNat

end

end A083025.P7093217177648817148

namespace A083025

/-- `A001222(n+1)-A001222(A065338(n+1))` -/
def P7093217177648817148.Spec : Prop :=
  ∀ n, P7093217177648817148.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P6984844666439198155

`A065339(A332819(n+1))`
-/

namespace A083025.P6984844666439198155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A332819 (n + 1)).toNat

end

end A083025.P6984844666439198155

namespace A083025

/-- `A065339(A332819(n+1))` -/
def P6984844666439198155.Spec : Prop :=
  ∀ n, P6984844666439198155.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P4781151857617894847

`val(A329600(A170818(2*(n+1))), 2)`
-/

namespace A083025.P4781151857617894847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329600 (A170818 (2 * (n + 1))).toNat).toNat 2

end

end A083025.P4781151857617894847

namespace A083025

/-- `val(A329600(A170818(2*(n+1))), 2)` -/
def P4781151857617894847.Spec : Prop :=
  ∀ n, (P4781151857617894847.a n : ℤ) = A083025 (n + 1)

end A083025

/-! ## A083025.P9099022421307992967

`A065339(A267099(n+1))`
-/

namespace A083025.P9099022421307992967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A267099 (n + 1)).toNat

end

end A083025.P9099022421307992967

namespace A083025

/-- `A065339(A267099(n+1))` -/
def P9099022421307992967.Spec : Prop :=
  ∀ n, P9099022421307992967.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P17959118014891992230

`A007814(A319984(n+1))`
-/

namespace A083025.P17959118014891992230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A319984 (n + 1)).toNat

end

end A083025.P17959118014891992230

namespace A083025

/-- `A007814(A319984(n+1))` -/
def P17959118014891992230.Spec : Prop :=
  ∀ n, P17959118014891992230.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P5781588183937043036

`floor(log(A105673((n+1)²)))`
-/

namespace A083025.P5781588183937043036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A105673 ((n + 1) ^ 2) : ℝ)⌋

end

end A083025.P5781588183937043036

namespace A083025

/-- `floor(log(A105673((n+1)²)))` -/
def P5781588183937043036.Spec : Prop :=
  ∀ n, P5781588183937043036.a n = A083025 (n + 1)

end A083025

/-! ## A083025.P2834302676832136031

`round(log(A002654((n+1)²)))`
-/

namespace A083025.P2834302676832136031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A002654 ((n + 1) ^ 2) : ℝ))

end

end A083025.P2834302676832136031

namespace A083025

/-- `round(log(A002654((n+1)²)))` -/
def P2834302676832136031.Spec : Prop :=
  ∀ n, P2834302676832136031.a n = A083025 (n + 1)

end A083025

/-!
# A083026: Numbers that are congruent to {0, 2, 4, 5, 7, 9, 11} mod 12.

The programs for A083026, the canonical program `A083026.P18116660259416238025` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083026 has offset 1).

The definition of A083026 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A083026.anchor (n : ℕ) (hn : 1 ≤ n) : A083026 n = (Nat.nth (fun k => k % 12 ∈ ({0, 2, 4, 5, 7, 9, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A083.A083026`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083026.P18116660259416238025

`a(n-7)+12` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5, a(4)=7, a(5)=9, a(6)=11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083026

/-- `a(n-7)+12` -/
def P18116660259416238025.Spec : Prop :=
  ∀ n, (P18116660259416238025.a n : ℤ) = A083026 (n + 1)

theorem P18116660259416238025.correct : P18116660259416238025.Spec := by
  intro n
  simp only [A083026, Nat.add_sub_cancel]

end A083026

/-! ## A083026.P693190739061085811

`ogf((2x+2x^2+x^3+2x^4+2x^5+2x^6+x^7)/(1-x-x^7+x^8))`
-/

namespace A083026.P693190739061085811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 1, 2, 2, 2, 1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A083026.P693190739061085811

namespace A083026

/-- `ogf((2x+2x^2+x^3+2x^4+2x^5+2x^6+x^7)/(1-x-x^7+x^8))` -/
def P693190739061085811.Spec : Prop :=
  ∀ n, P693190739061085811.a n = A083026 (n + 1)

end A083026

/-! ## A083026.P1038595480724092311

`floor((12*n+5)/7)`
-/

namespace A083026.P1038595480724092311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 * n + 5 : ℚ) / 7⌋

end

end A083026.P1038595480724092311

namespace A083026

/-- `floor((12*n+5)/7)` -/
def P1038595480724092311.Spec : Prop :=
  ∀ n, P1038595480724092311.a n = A083026 (n + 1)

end A083026

/-! ## A083026.P5658893218014043760

`round(2*n-a(n-1)/6)` with `a(0)=0`
-/

namespace A083026.P5658893218014043760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) - (a (n - 1) : ℚ) / 6)

end

end A083026.P5658893218014043760

namespace A083026

/-- `round(2*n-a(n-1)/6)` -/
def P5658893218014043760.Spec : Prop :=
  ∀ n, P5658893218014043760.a n = A083026 (n + 1)

end A083026

/-! ## A083026.P3080852434275832517

`comp[comp[a(n-2)+7]+n]` with `a(0)=0, a(1)=3`
-/

namespace A083026.P3080852434275832517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 2) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083026.P3080852434275832517

namespace A083026

/-- `comp[comp[a(n-2)+7]+n]` -/
def P3080852434275832517.Spec : Prop :=
  ∀ n, (P3080852434275832517.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P15724361743810744028

`2*n+1-∑[∑[(n+1)%7]%3]`
-/

namespace A083026.P15724361743810744028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A083026.P15724361743810744028

namespace A083026

/-- `2*n+1-∑[∑[(n+1)%7]%3]` -/
def P15724361743810744028.Spec : Prop :=
  ∀ n, P15724361743810744028.a n = A083026 (n + 1)

end A083026

/-! ## A083026.P14928717497242991381

`comp[A047317(n+1)+n]`
-/

namespace A083026.P14928717497242991381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047317 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083026.P14928717497242991381

namespace A083026

/-- `comp[A047317(n+1)+n]` -/
def P14928717497242991381.Spec : Prop :=
  ∀ n, (P14928717497242991381.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P15827280103170311571

`comp[comp[A047355(n+1)]+n]`
-/

namespace A083026.P15827280103170311571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083026.P15827280103170311571

namespace A083026

/-- `comp[comp[A047355(n+1)]+n]` -/
def P15827280103170311571.Spec : Prop :=
  ∀ n, (P15827280103170311571.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P11726396343877408529

`comp[A047367(n+1)+1+n]`
-/

namespace A083026.P11726396343877408529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047367 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083026.P11726396343877408529

namespace A083026

/-- `comp[A047367(n+1)+1+n]` -/
def P11726396343877408529.Spec : Prop :=
  ∀ n, (P11726396343877408529.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P5494787458592279794

`comp[comp[A047283(2*n+1)]+n]`
-/

namespace A083026.P5494787458592279794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047283 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083026.P5494787458592279794

namespace A083026

/-- `comp[comp[A047283(2*n+1)]+n]` -/
def P5494787458592279794.Spec : Prop :=
  ∀ n, (P5494787458592279794.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P16891983207310518630

`comp[comp[A047285(2*n+1)]+n]`
-/

namespace A083026.P16891983207310518630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047285 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083026.P16891983207310518630

namespace A083026

/-- `comp[comp[A047285(2*n+1)]+n]` -/
def P16891983207310518630.Spec : Prop :=
  ∀ n, (P16891983207310518630.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P17897427371193976965

`comp[comp[A047340(2*n+1)]+n]`
-/

namespace A083026.P17897427371193976965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047340 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083026.P17897427371193976965

namespace A083026

/-- `comp[comp[A047340(2*n+1)]+n]` -/
def P17897427371193976965.Spec : Prop :=
  ∀ n, (P17897427371193976965.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P8972594154404378929

`comp[comp[A047344(2*n+1)]+n]`
-/

namespace A083026.P8972594154404378929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083026.P8972594154404378929

namespace A083026

/-- `comp[comp[A047344(2*n+1)]+n]` -/
def P8972594154404378929.Spec : Prop :=
  ∀ n, (P8972594154404378929.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P6213284924374693036

`comp[A047346(n+1)%3+2*n]`
-/

namespace A083026.P6213284924374693036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047346 (n + 1)) 3 + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083026.P6213284924374693036

namespace A083026

/-- `comp[A047346(n+1)%3+2*n]` -/
def P6213284924374693036.Spec : Prop :=
  ∀ n, (P6213284924374693036.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P5146328438280866992

`comp[3*n+1-(n-A288156(n))]`
-/

namespace A083026.P5146328438280866992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - ((n : ℤ) - A288156 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083026.P5146328438280866992

namespace A083026

/-- `comp[3*n+1-(n-A288156(n))]` -/
def P5146328438280866992.Spec : Prop :=
  ∀ n, (P5146328438280866992.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P11385398302261087933

`A302255(n)+A047595(n+1)`
-/

namespace A083026.P11385398302261087933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302255 n + A047595 (n + 1)

end

end A083026.P11385398302261087933

namespace A083026

/-- `A302255(n)+A047595(n+1)` -/
def P11385398302261087933.Spec : Prop :=
  ∀ n, P11385398302261087933.a n = A083026 (n + 1)

end A083026

/-! ## A083026.P8371049572995305203

`2*n-A004526(A289139(n))`
-/

namespace A083026.P8371049572995305203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004526 (A289139 n).toNat

end

end A083026.P8371049572995305203

namespace A083026

/-- `2*n-A004526(A289139(n))` -/
def P8371049572995305203.Spec : Prop :=
  ∀ n, P8371049572995305203.a n = A083026 (n + 1)

end A083026

/-! ## A083026.P3360377273500987410

`∪[A175884(n+1), A016969(n)]`
-/

namespace A083026.P3360377273500987410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083026.P3360377273500987410

namespace A083026

/-- `∪[A175884(n+1), A016969(n)]` -/
def P3360377273500987410.Spec : Prop :=
  ∀ n, (P3360377273500987410.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P435443847037994172

`∪[A168224(n+1), A175884(n+1)]`
-/

namespace A083026.P435443847037994172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083026.P435443847037994172

namespace A083026

/-- `∪[A168224(n+1), A175884(n+1)]` -/
def P435443847037994172.Spec : Prop :=
  ∀ n, (P435443847037994172.a n : ℤ) = A083026 (n + 1)

end A083026

/-! ## A083026.P3633455702266126447

`A082977(n+2)-1`
-/

namespace A083026.P3633455702266126447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (n + 2) - 1

end

end A083026.P3633455702266126447

namespace A083026

/-- `A082977(n+2)-1` -/
def P3633455702266126447.Spec : Prop :=
  ∀ n, P3633455702266126447.a n = A083026 (n + 1)

end A083026

/-!
# A083028: Numbers that are congruent to {0, 2, 3, 5, 7, 8, 11} mod 12.

The programs for A083028, the canonical program `A083028.P8207439564120612127` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083028 has offset 1).

The definition of A083028 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A083028.anchor (n : ℕ) (hn : 1 ≤ n) : A083028 n = (Nat.nth (fun k => k % 12 ∈ ({0, 2, 3, 5, 7, 8, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A083.A083028`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083028.P8207439564120612127

`a(n-7)+12` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=8, a(6)=11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083028

/-- `a(n-7)+12` -/
def P8207439564120612127.Spec : Prop :=
  ∀ n, (P8207439564120612127.a n : ℤ) = A083028 (n + 1)

theorem P8207439564120612127.correct : P8207439564120612127.Spec := by
  intro n
  simp only [A083028, Nat.add_sub_cancel]

end A083028

/-! ## A083028.P13081171085407093295

`ogf((2x+x^2+2x^3+2x^4+x^5+3x^6+x^7)/(1-x-x^7+x^8))`
-/

namespace A083028.P13081171085407093295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2, 2, 1, 3, 1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A083028.P13081171085407093295

namespace A083028

/-- `ogf((2x+x^2+2x^3+2x^4+x^5+3x^6+x^7)/(1-x-x^7+x^8))` -/
def P13081171085407093295.Spec : Prop :=
  ∀ n, P13081171085407093295.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P5458740823183489998

`∪[A083031(n+1), A016789(n)]`
-/

namespace A083028.P5458740823183489998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083028.P5458740823183489998

namespace A083028

/-- `∪[A083031(n+1), A016789(n)]` -/
def P5458740823183489998.Spec : Prop :=
  ∀ n, (P5458740823183489998.a n : ℤ) = A083028 (n + 1)

end A083028

/-! ## A083028.P1175555196605637646

`A060107(n+1)+char[A017053(n)]`
-/

namespace A083028.P1175555196605637646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A083028.P1175555196605637646

namespace A083028

/-- `A060107(n+1)+char[A017053(n)]` -/
def P1175555196605637646.Spec : Prop :=
  ∀ n, P1175555196605637646.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P13424911722452899672

`A082977(n+1)+char[A047290(n+1)]`
-/

namespace A083028.P13424911722452899672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047290 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A083028.P13424911722452899672

namespace A083028

/-- `A082977(n+1)+char[A047290(n+1)]` -/
def P13424911722452899672.Spec : Prop :=
  ∀ n, P13424911722452899672.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P4784607904109333269

`A060107(n+1)+A083026(n+1)-A083120(n+1)`
-/

namespace A083028.P4784607904109333269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) + (A083026 (n + 1) - A083120 (n + 1))

end

end A083028.P4784607904109333269

namespace A083028

/-- `A060107(n+1)+A083026(n+1)-A083120(n+1)` -/
def P4784607904109333269.Spec : Prop :=
  ∀ n, P4784607904109333269.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P16259207342536322488

`A190719(n+1)+A190785(n+1)-A191275(n+1)`
-/

namespace A083028.P16259207342536322488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190719 (n + 1) + (A190785 (n + 1) - A191275 (n + 1))

end

end A083028.P16259207342536322488

namespace A083028

/-- `A190719(n+1)+A190785(n+1)-A191275(n+1)` -/
def P16259207342536322488.Spec : Prop :=
  ∀ n, P16259207342536322488.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P5015029335746039739

`or(Δ[A057356(n)], A060107(n+1))`
-/

namespace A083028.P5015029335746039739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A060107 (n + 1))

end

end A083028.P5015029335746039739

namespace A083028

/-- `or(Δ[A057356(n)], A060107(n+1))` -/
def P5015029335746039739.Spec : Prop :=
  ∀ n, P5015029335746039739.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P15730954376436873892

`A082784(n+1)+A083120(n+2)-2`
-/

namespace A083028.P15730954376436873892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (n + 1) + (A083120 (n + 2) - 2)

end

end A083028.P15730954376436873892

namespace A083028

/-- `A082784(n+1)+A083120(n+2)-2` -/
def P15730954376436873892.Spec : Prop :=
  ∀ n, P15730954376436873892.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P11237306813599271279

`A083026(n+1)+A083120(n+2)-A083089(n+2)`
-/

namespace A083028.P11237306813599271279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 1) + (A083120 (n + 2) - A083089 (n + 2))

end

end A083028.P11237306813599271279

namespace A083028

/-- `A083026(n+1)+A083120(n+2)-A083089(n+2)` -/
def P11237306813599271279.Spec : Prop :=
  ∀ n, P11237306813599271279.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P11901123876627832139

`A190719(n+1)+A083026(n+2)-A190785(n+2)`
-/

namespace A083028.P11901123876627832139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190719 (n + 1) + (A083026 (n + 2) - A190785 (n + 2))

end

end A083028.P11901123876627832139

namespace A083028

/-- `A190719(n+1)+A083026(n+2)-A190785(n+2)` -/
def P11901123876627832139.Spec : Prop :=
  ∀ n, P11901123876627832139.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P9888818775008527424

`A190719(n+1)+A191276(n+2)-A190719(n+2)`
-/

namespace A083028.P9888818775008527424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190719 (n + 1) + (A191276 (n + 2) - A190719 (n + 2))

end

end A083028.P9888818775008527424

namespace A083028

/-- `A190719(n+1)+A191276(n+2)-A190719(n+2)` -/
def P9888818775008527424.Spec : Prop :=
  ∀ n, P9888818775008527424.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P1671166442828580460

`eq[0, and(A003815(n), A010892(n))]`
-/

namespace A083028.P1671166442828580460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003815 n) (A010892 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083028.P1671166442828580460

namespace A083028

/-- `eq[0, and(A003815(n), A010892(n))]` -/
def P1671166442828580460.Spec : Prop :=
  ∀ n, (P1671166442828580460.a n : ℤ) = A083028 (n + 1)

end A083028

/-! ## A083028.P7737353726975184841

`A083120(2*n+1)-A083120(n+1)`
-/

namespace A083028.P7737353726975184841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (2 * n + 1) - A083120 (n + 1)

end

end A083028.P7737353726975184841

namespace A083028

/-- `A083120(2*n+1)-A083120(n+1)` -/
def P7737353726975184841.Spec : Prop :=
  ∀ n, P7737353726975184841.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P13994067610965767486

`A083089(2*(n+1))-A083089(n+2)`
-/

namespace A083028.P13994067610965767486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (2 * (n + 1)) - A083089 (n + 2)

end

end A083028.P13994067610965767486

namespace A083028

/-- `A083089(2*(n+1))-A083089(n+2)` -/
def P13994067610965767486.Spec : Prop :=
  ∀ n, P13994067610965767486.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P10363900131880932169

`A190719(2*(n+1))-A190719(n+2)`
-/

namespace A083028.P10363900131880932169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190719 (2 * (n + 1)) - A190719 (n + 2)

end

end A083028.P10363900131880932169

namespace A083028

/-- `A190719(2*(n+1))-A190719(n+2)` -/
def P10363900131880932169.Spec : Prop :=
  ∀ n, P10363900131880932169.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P12785755025604134107

`A191276(2*(n+1))-A191275(n+2)`
-/

namespace A083028.P12785755025604134107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (2 * (n + 1)) - A191275 (n + 2)

end

end A083028.P12785755025604134107

namespace A083028

/-- `A191276(2*(n+1))-A191275(n+2)` -/
def P12785755025604134107.Spec : Prop :=
  ∀ n, P12785755025604134107.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P7644263763055922986

`A289120(2*n)+A057358(2*n+1)`
-/

namespace A083028.P7644263763055922986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289120 (2 * n) + A057358 (2 * n + 1)

end

end A083028.P7644263763055922986

namespace A083028

/-- `A289120(2*n)+A057358(2*n+1)` -/
def P7644263763055922986.Spec : Prop :=
  ∀ n, P7644263763055922986.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P5153926403101957082

`A057359(2*n+1)+A057354(A057359(n+1))`
-/

namespace A083028.P5153926403101957082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (2 * n + 1) + A057354 (A057359 (n + 1)).toNat

end

end A083028.P5153926403101957082

namespace A083028

/-- `A057359(2*n+1)+A057354(A057359(n+1))` -/
def P5153926403101957082.Spec : Prop :=
  ∀ n, P5153926403101957082.a n = A083028 (n + 1)

end A083028

/-! ## A083028.P12919060239440945236

`A191276(2*(n+1))+A238470(n+1)-A191276(n+2)`
-/

namespace A083028.P12919060239440945236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (2 * (n + 1)) + (A238470 (n + 1) - A191276 (n + 2))

end

end A083028.P12919060239440945236

namespace A083028

/-- `A191276(2*(n+1))+A238470(n+1)-A191276(n+2)` -/
def P12919060239440945236.Spec : Prop :=
  ∀ n, P12919060239440945236.a n = A083028 (n + 1)

end A083028

/-!
# A083029: Triangle read by rows: T(n,k), n >=1, 0 <= k <= C(n,k), = number of n X n symmetric positive semi-definite matrices with 2's on the main diagonal and 1's and 0's elsewhere and with k 1's above the diagonal.

The programs for A083029, there is no canonical definition to state claims against.
-/

/-! ## A083029.P14839609198386181744

`A084546(C(A067080(n+1), n))`
-/

namespace A083029.P14839609198386181744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (Nat.choose (A067080 (n + 1)).toNat n)

end

end A083029.P14839609198386181744

/-! ## A083029.P9020649343001228149

`∏{e}[A000079(n+1), A084546(#)]`
-/

namespace A083029.P9020649343001228149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A084546 (Nat.factorization (f1 n).natAbs p)

end

end A083029.P9020649343001228149

/-! ## A083029.P13319132757187783923

`∑{e}[A011782(n+2), A084546(#)]`
-/

namespace A083029.P13319132757187783923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A084546 (Nat.factorization (f1 n).natAbs p)

end

end A083029.P13319132757187783923

/-! ## A083029.P5540317703871068982

`A084546(A186727(2*n+3)+n)`
-/

namespace A083029.P5540317703871068982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (A186727 (2 * n + 3) + (n : ℤ)).toNat

end

end A083029.P5540317703871068982

/-! ## A083029.P14981366434052416361

`A084546(n+1)%A180163(n+1)`
-/

namespace A083029.P14981366434052416361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084546 (n + 1)) (A180163 (n + 1))

end

end A083029.P14981366434052416361

/-!
# A083030: Numbers that are congruent to {0, 4, 7} mod 12.

The programs for A083030, the canonical program `A083030.P14221324195308878567` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083030 has offset 1).

The definition of A083030 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A083030.anchor (n : ℕ) (hn : 1 ≤ n) : A083030 n = (Nat.nth (fun k => k % 12 ∈ ({0, 4, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A083.A083030`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083030.P14221324195308878567

`a(n-3)+12` with `a(0)=0, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083030

/-- `a(n-3)+12` -/
def P14221324195308878567.Spec : Prop :=
  ∀ n, (P14221324195308878567.a n : ℤ) = A083030 (n + 1)

theorem P14221324195308878567.correct : P14221324195308878567.Spec := by
  intro n
  simp only [A083030, Nat.add_sub_cancel]

end A083030

/-! ## A083030.P832207129079406479

`ogf((4x+3x^2+5x^3)/(1-x-x^3+x^4))`
-/

namespace A083030.P832207129079406479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 3, 5] [1, -1, 0, -1, 1] n

end

end A083030.P832207129079406479

namespace A083030

/-- `ogf((4x+3x^2+5x^3)/(1-x-x^3+x^4))` -/
def P832207129079406479.Spec : Prop :=
  ∀ n, P832207129079406479.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P1904201782752035772

`4*(n+1)-(13+2*cos(2*(n+1)*π/3))/3`
-/

namespace A083030.P1904201782752035772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℝ) - (13 + 2 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 3

end

end A083030.P1904201782752035772

namespace A083030

/-- `4*(n+1)-(13+2*cos(2*(n+1)*π/3))/3` -/
def P1904201782752035772.Spec : Prop :=
  ∀ n, P1904201782752035772.a n = (A083030 (n + 1) : ℝ)

end A083030

/-! ## A083030.P1423087812905347432

`∑[5-n%3]-5`
-/

namespace A083030.P1423087812905347432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A083030.P1423087812905347432

namespace A083030

/-- `∑[5-n%3]-5` -/
def P1423087812905347432.Spec : Prop :=
  ∀ n, P1423087812905347432.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P15517220018042423617

`4*n-C(n, 2)%3`
-/

namespace A083030.P15517220018042423617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ((Nat.choose n 2 % 3 : ℕ) : ℤ)

end

end A083030.P15517220018042423617

namespace A083030

/-- `4*n-C(n, 2)%3` -/
def P15517220018042423617.Spec : Prop :=
  ∀ n, P15517220018042423617.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P2286568122026424594

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=5`
-/

namespace A083030.P2286568122026424594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 3, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083030.P2286568122026424594

namespace A083030

/-- `∑[abs(a(n-3))]` -/
def P2286568122026424594.Spec : Prop :=
  ∀ n, (P2286568122026424594.a n : ℤ) = A083030 (n + 1)

end A083030

/-! ## A083030.P16895110067970497122

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=5`
-/

namespace A083030.P16895110067970497122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 3, 5] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083030.P16895110067970497122

namespace A083030

/-- `∑[dr(a(n-3))]` -/
def P16895110067970497122.Spec : Prop :=
  ∀ n, (P16895110067970497122.a n : ℤ) = A083030 (n + 1)

end A083030

/-! ## A083030.P16743851477106503314

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A083030.P16743851477106503314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 3, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083030.P16743851477106503314

namespace A083030

/-- `∑[floor(a(n-3))]` -/
def P16743851477106503314.Spec : Prop :=
  ∀ n, (P16743851477106503314.a n : ℤ) = A083030 (n + 1)

end A083030

/-! ## A083030.P6372383678740587533

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A083030.P6372383678740587533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 3, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083030.P6372383678740587533

namespace A083030

/-- `∑[ceil(a(n-3))]` -/
def P6372383678740587533.Spec : Prop :=
  ∀ n, (P6372383678740587533.a n : ℤ) = A083030 (n + 1)

end A083030

/-! ## A083030.P2893075141627528754

`4*n-char[3*n-1]`
-/

namespace A083030.P2893075141627528754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A083030.P2893075141627528754

namespace A083030

/-- `4*n-char[3*n-1]` -/
def P2893075141627528754.Spec : Prop :=
  ∀ n, P2893075141627528754.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P6488915120497890901

`record[2*n+1-gcd(6, 1-n)²]`
-/

namespace A083030.P6488915120497890901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Int.gcd 6 (1 - (n : ℤ)) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083030.P6488915120497890901

namespace A083030

/-- `record[2*n+1-gcd(6, 1-n)²]` -/
def P6488915120497890901.Spec : Prop :=
  ∀ n, P6488915120497890901.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P3033497958205050906

`∑[2*a(n-3)-a(n-3)]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=5`
-/

namespace A083030.P3033497958205050906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 3, 5] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083030.P3033497958205050906

namespace A083030

/-- `∑[2*a(n-3)-a(n-3)]` -/
def P3033497958205050906.Spec : Prop :=
  ∀ n, P3033497958205050906.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P9438476024096279134

`∑[A328263(n+1)-1]`
-/

namespace A083030.P9438476024096279134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328263 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083030.P9438476024096279134

namespace A083030

/-- `∑[A328263(n+1)-1]` -/
def P9438476024096279134.Spec : Prop :=
  ∀ n, P9438476024096279134.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P4553417308560195566

`∪[A272975(n+1), A017569(n)]`
-/

namespace A083030.P4553417308560195566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083030.P4553417308560195566

namespace A083030

/-- `∪[A272975(n+1), A017569(n)]` -/
def P4553417308560195566.Spec : Prop :=
  ∀ n, (P4553417308560195566.a n : ℤ) = A083030 (n + 1)

end A083030

/-! ## A083030.P10627185051809029007

`A083032(comp[4*n])`
-/

namespace A083030.P10627185051809029007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A083030.P10627185051809029007

namespace A083030

/-- `A083032(comp[4*n])` -/
def P10627185051809029007.Spec : Prop :=
  ∀ n, P10627185051809029007.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P15377580631706102086

`filter[A083032(n+1), A152822(#)]`
-/

namespace A083030.P15377580631706102086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A083030.P15377580631706102086

namespace A083030

/-- `filter[A083032(n+1), A152822(#)]` -/
def P15377580631706102086.Spec : Prop :=
  ∀ n, P15377580631706102086.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P13509839362348709395

`A175884(A047206(n+1))`
-/

namespace A083030.P13509839362348709395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (A047206 (n + 1)).toNat

end

end A083030.P13509839362348709395

namespace A083030

/-- `A175884(A047206(n+1))` -/
def P13509839362348709395.Spec : Prop :=
  ∀ n, P13509839362348709395.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P1117226246228985562

`∩[A083032(n+1), A175884(n+1)]`
-/

namespace A083030.P1117226246228985562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083030.P1117226246228985562

namespace A083030

/-- `∩[A083032(n+1), A175884(n+1)]` -/
def P1117226246228985562.Spec : Prop :=
  ∀ n, (P1117226246228985562.a n : ℤ) = A083030 (n + 1)

end A083030

/-! ## A083030.P246914049799048238

`A014601(A047244(n+1))`
-/

namespace A083030.P246914049799048238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A047244 (n + 1)).toNat

end

end A083030.P246914049799048238

namespace A083030

/-- `A014601(A047244(n+1))` -/
def P246914049799048238.Spec : Prop :=
  ∀ n, P246914049799048238.a n = A083030 (n + 1)

end A083030

/-! ## A083030.P11918359980129471641

`∩[A083032(n+1), A014601(n)]`
-/

namespace A083030.P11918359980129471641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083030.P11918359980129471641

namespace A083030

/-- `∩[A083032(n+1), A014601(n)]` -/
def P11918359980129471641.Spec : Prop :=
  ∀ n, (P11918359980129471641.a n : ℤ) = A083030 (n + 1)

end A083030

/-!
# A083031: Numbers that are congruent to {0, 3, 7} mod 12.

The programs for A083031, the canonical program `A083031.P8697087092755010424` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083031 has offset 1).

The definition of A083031 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A083031.anchor (n : ℕ) (hn : 1 ≤ n) : A083031 n = (Nat.nth (fun k => k % 12 ∈ ({0, 3, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A083.A083031`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083031.P8697087092755010424

`a(n-3)+12` with `a(0)=0, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083031

/-- `a(n-3)+12` -/
def P8697087092755010424.Spec : Prop :=
  ∀ n, (P8697087092755010424.a n : ℤ) = A083031 (n + 1)

theorem P8697087092755010424.correct : P8697087092755010424.Spec := by
  intro n
  simp only [A083031, Nat.add_sub_cancel]

end A083031

/-! ## A083031.P11233532825806155463

`ogf((3x+4x^2+5x^3)/(1-x-x^3+x^4))`
-/

namespace A083031.P11233532825806155463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4, 5] [1, -1, 0, -1, 1] n

end

end A083031.P11233532825806155463

namespace A083031

/-- `ogf((3x+4x^2+5x^3)/(1-x-x^3+x^4))` -/
def P11233532825806155463.Spec : Prop :=
  ∀ n, P11233532825806155463.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P1694260496080103542

`(12*(n+1)-14-cos(2*(n+1)*π/3)+sqrt(3)*sin(2*(n+1)*π/3))/3`
-/

namespace A083031.P1694260496080103542
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((12 * (n + 1) : ℤ) - 14 : ℝ) - Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 3

end

end A083031.P1694260496080103542

namespace A083031

/-- `(12*(n+1)-14-cos(2*(n+1)*π/3)+sqrt(3)*sin(2*(n+1)*π/3))/3` -/
def P1694260496080103542.Spec : Prop :=
  ∀ n, P1694260496080103542.a n = (A083031 (n + 1) : ℝ)

end A083031

/-! ## A083031.P15910898764170711198

`4*n-n²%3`
-/

namespace A083031.P15910898764170711198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A083031.P15910898764170711198

namespace A083031

/-- `4*n-n²%3` -/
def P15910898764170711198.Spec : Prop :=
  ∀ n, P15910898764170711198.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P8346261292485895750

`4*n-floor(sqrt(n%3))`
-/

namespace A083031.P8346261292485895750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.sqrt (n % 3) : ℤ)

end

end A083031.P8346261292485895750

namespace A083031

/-- `4*n-floor(sqrt(n%3))` -/
def P8346261292485895750.Spec : Prop :=
  ∀ n, P8346261292485895750.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P16046760427087857431

`4*n-char[comp[3*n]]`
-/

namespace A083031.P16046760427087857431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A083031.P16046760427087857431

namespace A083031

/-- `4*n-char[comp[3*n]]` -/
def P16046760427087857431.Spec : Prop :=
  ∀ n, P16046760427087857431.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P5115844611916345824

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A083031.P5115844611916345824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083031.P5115844611916345824

namespace A083031

/-- `∑[abs(a(n-3))]` -/
def P5115844611916345824.Spec : Prop :=
  ∀ n, (P5115844611916345824.a n : ℤ) = A083031 (n + 1)

end A083031

/-! ## A083031.P17274005884677252781

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A083031.P17274005884677252781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083031.P17274005884677252781

namespace A083031

/-- `∑[dr(a(n-3))]` -/
def P17274005884677252781.Spec : Prop :=
  ∀ n, (P17274005884677252781.a n : ℤ) = A083031 (n + 1)

end A083031

/-! ## A083031.P2960066757033227768

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A083031.P2960066757033227768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083031.P2960066757033227768

namespace A083031

/-- `∑[floor(a(n-3))]` -/
def P2960066757033227768.Spec : Prop :=
  ∀ n, (P2960066757033227768.a n : ℤ) = A083031 (n + 1)

end A083031

/-! ## A083031.P8477543181936037983

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A083031.P8477543181936037983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083031.P8477543181936037983

namespace A083031

/-- `∑[ceil(a(n-3))]` -/
def P8477543181936037983.Spec : Prop :=
  ∀ n, (P8477543181936037983.a n : ℤ) = A083031 (n + 1)

end A083031

/-! ## A083031.P4239616381830018588

`abs(4-(char[3*n]+record[xor(3, n)]))`
-/

namespace A083031.P4239616381830018588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (((if ∃ j, f1 j = n then 1 else 0) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℕ) : ℤ)|

end

end A083031.P4239616381830018588

namespace A083031

/-- `abs(4-(char[3*n]+record[xor(3, n)]))` -/
def P4239616381830018588.Spec : Prop :=
  ∀ n, P4239616381830018588.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P11708210943114259346

`∑[2*a(n-3)-a(n-3)]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A083031.P11708210943114259346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 5] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083031.P11708210943114259346

namespace A083031

/-- `∑[2*a(n-3)-a(n-3)]` -/
def P11708210943114259346.Spec : Prop :=
  ∀ n, P11708210943114259346.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P3752282203445275171

`∑[∑[a(n-3)^a(n-1)]]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=1, a(4)=-2`
-/

namespace A083031.P3752282203445275171
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 3, 1, 1, -2] fun n f2 =>
  f2 (n - 3) ^ (f2 (n - 1))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083031.P3752282203445275171

namespace A083031

/-- `∑[∑[a(n-3)^a(n-1)]]` -/
def P3752282203445275171.Spec : Prop :=
  ∀ n, P3752282203445275171.a n = (A083031 (n + 1) : ℝ)

end A083031

/-! ## A083031.P17645795082452663436

`A017413(n)%A304809(n)`
-/

namespace A083031.P17645795082452663436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017413 n) (A304809 n)

end

end A083031.P17645795082452663436

namespace A083031

/-- `A017413(n)%A304809(n)` -/
def P17645795082452663436.Spec : Prop :=
  ∀ n, P17645795082452663436.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P14123349962390804738

`A152813(n)%A143978(n+1)`
-/

namespace A083031.P14123349962390804738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152813 n) (A143978 (n + 1))

end

end A083031.P14123349962390804738

namespace A083031

/-- `A152813(n)%A143978(n+1)` -/
def P14123349962390804738.Spec : Prop :=
  ∀ n, P14123349962390804738.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P13436828541705954573

`xor(A056530(n+1), A079978(n))`
-/

namespace A083031.P13436828541705954573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056530 (n + 1)) (A079978 n)

end

end A083031.P13436828541705954573

namespace A083031

/-- `xor(A056530(n+1), A079978(n))` -/
def P13436828541705954573.Spec : Prop :=
  ∀ n, P13436828541705954573.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P12014509451575496802

`∪[A272975(n+1), A017557(n)]`
-/

namespace A083031.P12014509451575496802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083031.P12014509451575496802

namespace A083031

/-- `∪[A272975(n+1), A017557(n)]` -/
def P12014509451575496802.Spec : Prop :=
  ∀ n, (P12014509451575496802.a n : ℤ) = A083031 (n + 1)

end A083031

/-! ## A083031.P1636039780926268170

`filter[A319279(n+1), A093719(#)]`
-/

namespace A083031.P1636039780926268170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A083031.P1636039780926268170

namespace A083031

/-- `filter[A319279(n+1), A093719(#)]` -/
def P1636039780926268170.Spec : Prop :=
  ∀ n, P1636039780926268170.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P2152255445095279029

`filter[A319279(n+1), A152822(#)]`
-/

namespace A083031.P2152255445095279029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A083031.P2152255445095279029

namespace A083031

/-- `filter[A319279(n+1), A152822(#)]` -/
def P2152255445095279029.Spec : Prop :=
  ∀ n, P2152255445095279029.a n = A083031 (n + 1)

end A083031

/-! ## A083031.P9792836615848256294

`A014601(A047242(n+1))`
-/

namespace A083031.P9792836615848256294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A047242 (n + 1)).toNat

end

end A083031.P9792836615848256294

namespace A083031

/-- `A014601(A047242(n+1))` -/
def P9792836615848256294.Spec : Prop :=
  ∀ n, P9792836615848256294.a n = A083031 (n + 1)

end A083031

/-!
# A083032: Numbers that are congruent to {0, 4, 7, 10} mod 12.

The programs for A083032, the canonical program `A083032.P13289112164827680644` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083032 has offset 1).

The definition of A083032 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A083032.anchor (n : ℕ) (hn : 1 ≤ n) : A083032 n = (Nat.nth (fun k => k % 12 ∈ ({0, 4, 7, 10} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A083.A083032`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083032.P13289112164827680644

`a(n-4)+12` with `a(0)=0, a(1)=4, a(2)=7, a(3)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083032

/-- `a(n-4)+12` -/
def P13289112164827680644.Spec : Prop :=
  ∀ n, (P13289112164827680644.a n : ℤ) = A083032 (n + 1)

theorem P13289112164827680644.correct : P13289112164827680644.Spec := by
  intro n
  simp only [A083032, Nat.add_sub_cancel]

end A083032

/-! ## A083032.P17740348073533060837

`ogf((4x+3x^2+3x^3+2x^4)/(1-x-x^4+x^5))`
-/

namespace A083032.P17740348073533060837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 3, 3, 2] [1, -1, 0, 0, -1, 1] n

end

end A083032.P17740348073533060837

namespace A083032

/-- `ogf((4x+3x^2+3x^3+2x^4)/(1-x-x^4+x^5))` -/
def P17740348073533060837.Spec : Prop :=
  ∀ n, P17740348073533060837.a n = A083032 (n + 1)

end A083032

/-! ## A083032.P7183943312979280938

`(12*(n+1)-9+(-1)^(n+1)-2*sin((n+1)*π/2))/4`
-/

namespace A083032.P7183943312979280938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((12 * (n + 1) : ℤ) - 9 + (-1) ^ (n + 1) : ℝ) - 2 * Real.sin ((n + 1 : ℝ) * Real.pi / 2)) / 4

end

end A083032.P7183943312979280938

namespace A083032

/-- `(12*(n+1)-9+(-1)^(n+1)-2*sin((n+1)*π/2))/4` -/
def P7183943312979280938.Spec : Prop :=
  ∀ n, P7183943312979280938.a n = (A083032 (n + 1) : ℝ)

end A083032

/-! ## A083032.P16291649799962156524

`floor(sqrt(n%4))+3*n`
-/

namespace A083032.P16291649799962156524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n % 4) + 3 * n

end

end A083032.P16291649799962156524

namespace A083032

/-- `floor(sqrt(n%4))+3*n` -/
def P16291649799962156524.Spec : Prop :=
  ∀ n, (P16291649799962156524.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P2651921362548547533

`(n²%8)%3+3*n`
-/

namespace A083032.P2651921362548547533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 8 % 3 + 3 * n

end

end A083032.P2651921362548547533

namespace A083032

/-- `(n²%8)%3+3*n` -/
def P2651921362548547533.Spec : Prop :=
  ∀ n, (P2651921362548547533.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P4192872255946725918

`3*n+1-char[4*n]`
-/

namespace A083032.P4192872255946725918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A083032.P4192872255946725918

namespace A083032

/-- `3*n+1-char[4*n]` -/
def P4192872255946725918.Spec : Prop :=
  ∀ n, P4192872255946725918.a n = A083032 (n + 1)

end A083032

/-! ## A083032.P14970824015876155813

`xor(3*n+1, char[4*n])`
-/

namespace A083032.P14970824015876155813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 * n + 1) (if ∃ j, f1 j = n then 1 else 0)

end

end A083032.P14970824015876155813

namespace A083032

/-- `xor(3*n+1, char[4*n])` -/
def P14970824015876155813.Spec : Prop :=
  ∀ n, (P14970824015876155813.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P4093746566196497276

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=3, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A083032.P4093746566196497276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 3, 3, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083032.P4093746566196497276

namespace A083032

/-- `∑[floor(a(n-4))]` -/
def P4093746566196497276.Spec : Prop :=
  ∀ n, (P4093746566196497276.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P12914073707032616232

`∑[a(n-4)%5]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=3, a(4)=2`
-/

namespace A083032.P12914073707032616232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 3, 3, 2] fun n f1 =>
  f1 (n - 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083032.P12914073707032616232

namespace A083032

/-- `∑[a(n-4)%5]` -/
def P12914073707032616232.Spec : Prop :=
  ∀ n, (P12914073707032616232.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P15954675772249420000

`and(A016777(n), A319280(n+1))`
-/

namespace A083032.P15954675772249420000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016777 n) (A319280 (n + 1))

end

end A083032.P15954675772249420000

namespace A083032

/-- `and(A016777(n), A319280(n+1))` -/
def P15954675772249420000.Spec : Prop :=
  ∀ n, P15954675772249420000.a n = A083032 (n + 1)

end A083032

/-! ## A083032.P15418648035971470637

`∪[A083030(n+1), A016957(n)]`
-/

namespace A083032.P15418648035971470637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083032.P15418648035971470637

namespace A083032

/-- `∪[A083030(n+1), A016957(n)]` -/
def P15418648035971470637.Spec : Prop :=
  ∀ n, (P15418648035971470637.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P11913874669815146630

`∪[A083030(n+1), A017641(n)]`
-/

namespace A083032.P11913874669815146630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083032.P11913874669815146630

namespace A083032

/-- `∪[A083030(n+1), A017641(n)]` -/
def P11913874669815146630.Spec : Prop :=
  ∀ n, (P11913874669815146630.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P6771898637644188097

`∪[A272975(n+1), A016957(n)]`
-/

namespace A083032.P6771898637644188097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083032.P6771898637644188097

namespace A083032

/-- `∪[A272975(n+1), A016957(n)]` -/
def P6771898637644188097.Spec : Prop :=
  ∀ n, (P6771898637644188097.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P14048236226270711300

`and(A319280(n+1), A384610(n+1))`
-/

namespace A083032.P14048236226270711300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A319280 (n + 1)) (A384610 (n + 1))

end

end A083032.P14048236226270711300

namespace A083032

/-- `and(A319280(n+1), A384610(n+1))` -/
def P14048236226270711300.Spec : Prop :=
  ∀ n, P14048236226270711300.a n = A083032 (n + 1)

end A083032

/-! ## A083032.P1989637523142022513

`∪[A083030(n+1), A277570(n+1)]`
-/

namespace A083032.P1989637523142022513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083032.P1989637523142022513

namespace A083032

/-- `∪[A083030(n+1), A277570(n+1)]` -/
def P1989637523142022513.Spec : Prop :=
  ∀ n, (P1989637523142022513.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P7822724105557000989

`∪[A272975(n+1), A277570(n+1)]`
-/

namespace A083032.P7822724105557000989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083032.P7822724105557000989

namespace A083032

/-- `∪[A272975(n+1), A277570(n+1)]` -/
def P7822724105557000989.Spec : Prop :=
  ∀ n, (P7822724105557000989.a n : ℤ) = A083032 (n + 1)

end A083032

/-! ## A083032.P3467071019513789605

`Δ[A082643(n+3)+(2-n)²]`
-/

namespace A083032.P3467071019513789605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082643 (n + 3) + (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083032.P3467071019513789605

namespace A083032

/-- `Δ[A082643(n+3)+(2-n)²]` -/
def P3467071019513789605.Spec : Prop :=
  ∀ n, P3467071019513789605.a n = A083032 (n + 1)

end A083032

/-! ## A083032.P5766887204639343002

`A047234(A301729(n+1))`
-/

namespace A083032.P5766887204639343002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (A301729 (n + 1)).toNat

end

end A083032.P5766887204639343002

namespace A083032

/-- `A047234(A301729(n+1))` -/
def P5766887204639343002.Spec : Prop :=
  ∀ n, P5766887204639343002.a n = A083032 (n + 1)

end A083032

/-! ## A083032.P6859394993194079012

`A047234(A047273(n+2))`
-/

namespace A083032.P6859394993194079012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (A047273 (n + 2)).toNat

end

end A083032.P6859394993194079012

namespace A083032

/-- `A047234(A047273(n+2))` -/
def P6859394993194079012.Spec : Prop :=
  ∀ n, P6859394993194079012.a n = A083032 (n + 1)

end A083032

/-! ## A083032.P8755672956797626829

`A083120(A047392(n+2))`
-/

namespace A083032.P8755672956797626829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (A047392 (n + 2)).toNat

end

end A083032.P8755672956797626829

namespace A083032

/-- `A083120(A047392(n+2))` -/
def P8755672956797626829.Spec : Prop :=
  ∀ n, P8755672956797626829.a n = A083032 (n + 1)

end A083032

/-!
# A083033: Numbers that are congruent to {0, 2, 3, 5, 7, 9, 10} mod 12.

The programs for A083033, the canonical program `A083033.P5724706311847260569` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083033 has offset 1).

The definition of A083033 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A083033.anchor (n : ℕ) (hn : 1 ≤ n) : A083033 n = (Nat.nth (fun k => k % 12 ∈ ({0, 2, 3, 5, 7, 9, 10} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A083.A083033`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083033.P6555652453333744859

`floor(3*(4*(n+1)-3)/7)`
-/

namespace A083033.P6555652453333744859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * ((4 * (n + 1) : ℤ) - 3) : ℚ) / 7⌋

end

end A083033.P6555652453333744859

namespace A083033

/-- `floor(3*(4*(n+1)-3)/7)` -/
def P6555652453333744859.Spec : Prop :=
  ∀ n, P6555652453333744859.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P5724706311847260569

`a(n-7)+12` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=9, a(6)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083033

/-- `a(n-7)+12` -/
def P5724706311847260569.Spec : Prop :=
  ∀ n, (P5724706311847260569.a n : ℤ) = A083033 (n + 1)

theorem P5724706311847260569.correct : P5724706311847260569.Spec := by
  intro n
  simp only [A083033, Nat.add_sub_cancel]

end A083033

/-! ## A083033.P3823064775832137223

`ogf((2x+x^2+2x^3+2x^4+2x^5+x^6+2x^7)/(1-x-x^7+x^8))`
-/

namespace A083033.P3823064775832137223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2, 2, 2, 1, 2] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A083033.P3823064775832137223

namespace A083033

/-- `ogf((2x+x^2+2x^3+2x^4+2x^5+x^6+2x^7)/(1-x-x^7+x^8))` -/
def P3823064775832137223.Spec : Prop :=
  ∀ n, P3823064775832137223.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P5239223946685442636

`∑[ceil(tan(gcd(7, ∑[1-n])))]-2`
-/

namespace A083033.P5239223946685442636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Int.gcd 7 (∑ j ∈ Finset.range (n + 1), f2 j) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A083033.P5239223946685442636

namespace A083033

/-- `∑[ceil(tan(gcd(7, ∑[1-n])))]-2` -/
def P5239223946685442636.Spec : Prop :=
  ∀ n, P5239223946685442636.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P14950980444692148981

`∑[gcd(2, ((n+2)%7)%3)]-2`
-/

namespace A083033.P14950980444692148981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((n + 2) % 7 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A083033.P14950980444692148981

namespace A083033

/-- `∑[gcd(2, ((n+2)%7)%3)]-2` -/
def P14950980444692148981.Spec : Prop :=
  ∀ n, P14950980444692148981.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P9325908889437631356

`∑[A291454(n+1)]-2`
-/

namespace A083033.P9325908889437631356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A083033.P9325908889437631356

namespace A083033

/-- `∑[A291454(n+1)]-2` -/
def P9325908889437631356.Spec : Prop :=
  ∀ n, P9325908889437631356.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P13868081318429226934

`comp[A047367(n+2)+n]`
-/

namespace A083033.P13868081318429226934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047367 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083033.P13868081318429226934

namespace A083033

/-- `comp[A047367(n+2)+n]` -/
def P13868081318429226934.Spec : Prop :=
  ∀ n, (P13868081318429226934.a n : ℤ) = A083033 (n + 1)

end A083033

/-! ## A083033.P11015291191121081730

`A057349(n+1)-(n+3)`
-/

namespace A083033.P11015291191121081730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057349 (n + 1) - (n + 3 : ℤ)

end

end A083033.P11015291191121081730

namespace A083033

/-- `A057349(n+1)-(n+3)` -/
def P11015291191121081730.Spec : Prop :=
  ∀ n, P11015291191121081730.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P8762152721303712069

`comp[A047301(n+1)+1+n]`
-/

namespace A083033.P8762152721303712069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047301 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083033.P8762152721303712069

namespace A083033

/-- `comp[A047301(n+1)+1+n]` -/
def P8762152721303712069.Spec : Prop :=
  ∀ n, (P8762152721303712069.a n : ℤ) = A083033 (n + 1)

end A083033

/-! ## A083033.P5133284982285979806

`comp[A047317(n+1)-2+n]`
-/

namespace A083033.P5133284982285979806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047317 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083033.P5133284982285979806

namespace A083033

/-- `comp[A047317(n+1)-2+n]` -/
def P5133284982285979806.Spec : Prop :=
  ∀ n, (P5133284982285979806.a n : ℤ) = A083033 (n + 1)

end A083033

/-! ## A083033.P14751159339923848958

`comp[A288156(n)+2*n-1]`
-/

namespace A083033.P14751159339923848958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n + ((2 * n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083033.P14751159339923848958

namespace A083033

/-- `comp[A288156(n)+2*n-1]` -/
def P14751159339923848958.Spec : Prop :=
  ∀ n, (P14751159339923848958.a n : ℤ) = A083033 (n + 1)

end A083033

/-! ## A083033.P16231713923606275932

`comp[comp[A002265(2*n)+3*n]+n-2]`
-/

namespace A083033.P16231713923606275932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n) + (3 * n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) + ((n : ℤ) - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083033.P16231713923606275932

namespace A083033

/-- `comp[comp[A002265(2*n)+3*n]+n-2]` -/
def P16231713923606275932.Spec : Prop :=
  ∀ n, (P16231713923606275932.a n : ℤ) = A083033 (n + 1)

end A083033

/-! ## A083033.P7138655470615391271

`A238469(n)+A191275(n+1)`
-/

namespace A083033.P7138655470615391271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238469 n + A191275 (n + 1)

end

end A083033.P7138655470615391271

namespace A083033

/-- `A238469(n)+A191275(n+1)` -/
def P7138655470615391271.Spec : Prop :=
  ∀ n, P7138655470615391271.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P347765251202676203

`A083026(n+2)-2`
-/

namespace A083033.P347765251202676203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 2) - 2

end

end A083033.P347765251202676203

namespace A083033

/-- `A083026(n+2)-2` -/
def P347765251202676203.Spec : Prop :=
  ∀ n, P347765251202676203.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P7593228240255965418

`2*n-A004526(A289139(n+1))`
-/

namespace A083033.P7593228240255965418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004526 (A289139 (n + 1)).toNat

end

end A083033.P7593228240255965418

namespace A083033

/-- `2*n-A004526(A289139(n+1))` -/
def P7593228240255965418.Spec : Prop :=
  ∀ n, P7593228240255965418.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P17581350827623921768

`A060107(n+1)+A083028(n+2)-A060107(n+2)`
-/

namespace A083033.P17581350827623921768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) + (A083028 (n + 2) - A060107 (n + 2))

end

end A083033.P17581350827623921768

namespace A083033

/-- `A060107(n+1)+A083028(n+2)-A060107(n+2)` -/
def P17581350827623921768.Spec : Prop :=
  ∀ n, P17581350827623921768.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P1266753683874186202

`A082977(n+3)-3`
-/

namespace A083033.P1266753683874186202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (n + 3) - 3

end

end A083033.P1266753683874186202

namespace A083033

/-- `A082977(n+3)-3` -/
def P1266753683874186202.Spec : Prop :=
  ∀ n, P1266753683874186202.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P11662912866151264154

`A057359(n+2)-1+n`
-/

namespace A083033.P11662912866151264154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (n + 2) - 1 + (n : ℤ)

end

end A083033.P11662912866151264154

namespace A083033

/-- `A057359(n+2)-1+n` -/
def P11662912866151264154.Spec : Prop :=
  ∀ n, P11662912866151264154.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P17040964012550798557

`A060107(n+4)-5`
-/

namespace A083033.P17040964012550798557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 4) - 5

end

end A083033.P17040964012550798557

namespace A083033

/-- `A060107(n+4)-5` -/
def P17040964012550798557.Spec : Prop :=
  ∀ n, P17040964012550798557.a n = A083033 (n + 1)

end A083033

/-! ## A083033.P13144868860716320880

`A083120(n+5)-7`
-/

namespace A083033.P13144868860716320880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083120 (n + 5) - 7

end

end A083033.P13144868860716320880

namespace A083033

/-- `A083120(n+5)-7` -/
def P13144868860716320880.Spec : Prop :=
  ∀ n, P13144868860716320880.a n = A083033 (n + 1)

end A083033

/-!
# A083034: Numbers that are congruent to {0, 1, 3, 5, 7, 8, 10} mod 12.

The programs for A083034, the canonical program `A083034.P9566192718068681718` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083034 has offset 1).

The definition of A083034 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A083034.anchor (n : ℕ) (hn : 1 ≤ n) : A083034 n = (Nat.nth (fun k => k % 12 ∈ ({0, 1, 3, 5, 7, 8, 10} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A083.A083034`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083034.P6714943561499200168

`floor((12*(n+1)-11)/7)`
-/

namespace A083034.P6714943561499200168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((12 * (n + 1) : ℤ) - 11 : ℚ) / 7⌋

end

end A083034.P6714943561499200168

namespace A083034

/-- `floor((12*(n+1)-11)/7)` -/
def P6714943561499200168.Spec : Prop :=
  ∀ n, P6714943561499200168.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P9566192718068681718

`a(n-7)+12` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=7, a(5)=8, a(6)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083034

/-- `a(n-7)+12` -/
def P9566192718068681718.Spec : Prop :=
  ∀ n, (P9566192718068681718.a n : ℤ) = A083034 (n + 1)

theorem P9566192718068681718.correct : P9566192718068681718.Spec := by
  intro n
  simp only [A083034, Nat.add_sub_cancel]

end A083034

/-! ## A083034.P11252727009298065035

`ogf((x+2x^2+2x^3+2x^4+x^5+2x^6+2x^7)/(1-x-x^7+x^8))`
-/

namespace A083034.P11252727009298065035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 2, 1, 2, 2] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A083034.P11252727009298065035

namespace A083034

/-- `ogf((x+2x^2+2x^3+2x^4+x^5+2x^6+2x^7)/(1-x-x^7+x^8))` -/
def P11252727009298065035.Spec : Prop :=
  ∀ n, P11252727009298065035.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P13966821412850459883

`comp[A047301(n+2)+n]`
-/

namespace A083034.P13966821412850459883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047301 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083034.P13966821412850459883

namespace A083034

/-- `comp[A047301(n+2)+n]` -/
def P13966821412850459883.Spec : Prop :=
  ∀ n, (P13966821412850459883.a n : ℤ) = A083034 (n + 1)

end A083034

/-! ## A083034.P5126733986009562090

`comp[floor(A250120(n)/2)+2]`
-/

namespace A083034.P5126733986009562090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A250120 n : ℚ) / 2⌋ + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083034.P5126733986009562090

namespace A083034

/-- `comp[floor(A250120(n)/2)+2]` -/
def P5126733986009562090.Spec : Prop :=
  ∀ n, (P5126733986009562090.a n : ℤ) = A083034 (n + 1)

end A083034

/-! ## A083034.P7081327287321865136

`comp[comp[A083089(n+1)]+1]`
-/

namespace A083034.P7081327287321865136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083034.P7081327287321865136

namespace A083034

/-- `comp[comp[A083089(n+1)]+1]` -/
def P7081327287321865136.Spec : Prop :=
  ∀ n, (P7081327287321865136.a n : ℤ) = A083034 (n + 1)

end A083034

/-! ## A083034.P14860873569220343256

`ceil(A016873(n)/7)+n-1`
-/

namespace A083034.P14860873569220343256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016873 n : ℚ) / 7⌉ + ((n : ℤ) - 1)

end

end A083034.P14860873569220343256

namespace A083034

/-- `ceil(A016873(n)/7)+n-1` -/
def P14860873569220343256.Spec : Prop :=
  ∀ n, P14860873569220343256.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P16574989122746099176

`comp[A047381(n+1)+2+n]`
-/

namespace A083034.P16574989122746099176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047381 (n + 1) + 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083034.P16574989122746099176

namespace A083034

/-- `comp[A047381(n+1)+2+n]` -/
def P16574989122746099176.Spec : Prop :=
  ∀ n, (P16574989122746099176.a n : ℤ) = A083034 (n + 1)

end A083034

/-! ## A083034.P8746843259653124254

`3*n-comp[A032766(3*n+1)]`
-/

namespace A083034.P8746843259653124254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A083034.P8746843259653124254

namespace A083034

/-- `3*n-comp[A032766(3*n+1)]` -/
def P8746843259653124254.Spec : Prop :=
  ∀ n, P8746843259653124254.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P16712360236745488595

`A057358(n)+A047573(n+1)`
-/

namespace A083034.P16712360236745488595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 n + A047573 (n + 1)

end

end A083034.P16712360236745488595

namespace A083034

/-- `A057358(n)+A047573(n+1)` -/
def P16712360236745488595.Spec : Prop :=
  ∀ n, P16712360236745488595.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P2626989574731450228

`A289139(n)+A047588(n+1)`
-/

namespace A083034.P2626989574731450228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 n + A047588 (n + 1)

end

end A083034.P2626989574731450228

namespace A083034

/-- `A289139(n)+A047588(n+1)` -/
def P2626989574731450228.Spec : Prop :=
  ∀ n, P2626989574731450228.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P9059350729130083508

`A083026(n+1)-A234046(n)²`
-/

namespace A083034.P9059350729130083508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083026 (n + 1) - A234046 n ^ 2

end

end A083034.P9059350729130083508

namespace A083034

/-- `A083026(n+1)-A234046(n)²` -/
def P9059350729130083508.Spec : Prop :=
  ∀ n, P9059350729130083508.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P4153478881233503453

`comp[A057354(n)+A004277(n+1)]`
-/

namespace A083034.P4153478881233503453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n + A004277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083034.P4153478881233503453

namespace A083034

/-- `comp[A057354(n)+A004277(n+1)]` -/
def P4153478881233503453.Spec : Prop :=
  ∀ n, (P4153478881233503453.a n : ℤ) = A083034 (n + 1)

end A083034

/-! ## A083034.P14756408045416903976

`2*n-A004526(A225875(n+1))`
-/

namespace A083034.P14756408045416903976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004526 (A225875 (n + 1)).toNat

end

end A083034.P14756408045416903976

namespace A083034

/-- `2*n-A004526(A225875(n+1))` -/
def P14756408045416903976.Spec : Prop :=
  ∀ n, P14756408045416903976.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P18354646935344676501

`A060107(n+1)+A190719(n+1)-A083028(n+1)`
-/

namespace A083034.P18354646935344676501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) + (A190719 (n + 1) - A083028 (n + 1))

end

end A083034.P18354646935344676501

namespace A083034

/-- `A060107(n+1)+A190719(n+1)-A083028(n+1)` -/
def P18354646935344676501.Spec : Prop :=
  ∀ n, P18354646935344676501.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P5901599123786419978

`A060107(n+1)+A191275(n+1)-A190785(n+1)`
-/

namespace A083034.P5901599123786419978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) + (A191275 (n + 1) - A190785 (n + 1))

end

end A083034.P5901599123786419978

namespace A083034

/-- `A060107(n+1)+A191275(n+1)-A190785(n+1)` -/
def P5901599123786419978.Spec : Prop :=
  ∀ n, P5901599123786419978.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P4110637868557118919

`A083033(n+2)-2`
-/

namespace A083034.P4110637868557118919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 2) - 2

end

end A083034.P4110637868557118919

namespace A083034

/-- `A083033(n+2)-2` -/
def P4110637868557118919.Spec : Prop :=
  ∀ n, P4110637868557118919.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P18409819904216412179

`∑[A291454(n+2)]-2`
-/

namespace A083034.P18409819904216412179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291454 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A083034.P18409819904216412179

namespace A083034

/-- `∑[A291454(n+2)]-2` -/
def P18409819904216412179.Spec : Prop :=
  ∀ n, P18409819904216412179.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P13560700116750792452

`A060107(n+1)+A190785(n+2)-A083026(n+2)`
-/

namespace A083034.P13560700116750792452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) + (A190785 (n + 2) - A083026 (n + 2))

end

end A083034.P13560700116750792452

namespace A083034

/-- `A060107(n+1)+A190785(n+2)-A083026(n+2)` -/
def P13560700116750792452.Spec : Prop :=
  ∀ n, P13560700116750792452.a n = A083034 (n + 1)

end A083034

/-! ## A083034.P2601424725145750155

`A082977(n+1)+A190785(n+2)-A083028(n+2)`
-/

namespace A083034.P2601424725145750155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082977 (n + 1) + (A190785 (n + 2) - A083028 (n + 2))

end

end A083034.P2601424725145750155

namespace A083034

/-- `A082977(n+1)+A190785(n+2)-A083028(n+2)` -/
def P2601424725145750155.Spec : Prop :=
  ∀ n, P2601424725145750155.a n = A083034 (n + 1)

end A083034

/-!
# A083035: a(n) = floor(sqrt(2)*n)-2*floor(n/sqrt(2)).

The programs for A083035, the canonical program `A083035.P5765933853908214496` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083035 has offset 1).

The definition of A083035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2)*(n+1))-2*floor((n+1)/sqrt(2))` (program `A083035.P5765933853908214496`, by `A083035.P5765933853908214496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083035.P15605837846043983836

`floor(sqrt(2)*(n+1))%2`
-/

namespace A083035.P15605837846043983836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (2 : ℝ) * (n + 1 : ℝ)⌋ 2

end

end A083035.P15605837846043983836

namespace A083035

/-- `floor(sqrt(2)*(n+1))%2` -/
def P15605837846043983836.Spec : Prop :=
  ∀ n, P15605837846043983836.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P5765933853908214496

`floor(sqrt(2)*(n+1))-2*floor((n+1)/sqrt(2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083035

/-- `floor(sqrt(2)*(n+1))-2*floor((n+1)/sqrt(2))` -/
def P5765933853908214496.Spec : Prop :=
  ∀ n, P5765933853908214496.a n = A083035 (n + 1)

theorem P5765933853908214496.correct : P5765933853908214496.Spec := by
  intro n
  simp only [A083035, Nat.add_sub_cancel]

end A083035

/-! ## A083035.P4758252989711868234

`and(1, comp[floor(n*sqrt(2))])`
-/

namespace A083035.P4758252989711868234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A083035.P4758252989711868234

namespace A083035

/-- `and(1, comp[floor(n*sqrt(2))])` -/
def P4758252989711868234.Spec : Prop :=
  ∀ n, (P4758252989711868234.a n : ℤ) = A083035 (n + 1)

end A083035

/-! ## A083035.P1153023241179944154

`sqrt(comp[floor(n*sqrt(2))]%2)`
-/

namespace A083035.P1153023241179944154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2 : ℕ) : ℝ)

end

end A083035.P1153023241179944154

namespace A083035

/-- `sqrt(comp[floor(n*sqrt(2))]%2)` -/
def P1153023241179944154.Spec : Prop :=
  ∀ n, P1153023241179944154.a n = (A083035 (n + 1) : ℝ)

end A083035

/-! ## A083035.P7731383953006840029

`and(1, floor((n+1)*sqrt(2)))²`
-/

namespace A083035.P7731383953006840029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2

end

end A083035.P7731383953006840029

namespace A083035

/-- `and(1, floor((n+1)*sqrt(2)))²` -/
def P7731383953006840029.Spec : Prop :=
  ∀ n, P7731383953006840029.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P6452429146526709842

`log2(gcd(2, ceil((n+1)*sqrt(2))))`
-/

namespace A083035.P6452429146526709842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ : ℝ)

end

end A083035.P6452429146526709842

namespace A083035

/-- `log2(gcd(2, ceil((n+1)*sqrt(2))))` -/
def P6452429146526709842.Spec : Prop :=
  ∀ n, P6452429146526709842.a n = (A083035 (n + 1) : ℝ)

end A083035

/-! ## A083035.P10864804099970990888

`abs(ceil((n+1)*(4-sqrt(2)))%2)`
-/

namespace A083035.P10864804099970990888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ⌈(n + 1 : ℝ) * (4 - Real.sqrt (2 : ℝ))⌉ 2|

end

end A083035.P10864804099970990888

namespace A083035

/-- `abs(ceil((n+1)*(4-sqrt(2)))%2)` -/
def P10864804099970990888.Spec : Prop :=
  ∀ n, P10864804099970990888.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P4942643437202686780

`(A001951(n+1)%2)²`
-/

namespace A083035.P4942643437202686780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001951 (n + 1)) 2 ^ 2

end

end A083035.P4942643437202686780

namespace A083035

/-- `(A001951(n+1)%2)²` -/
def P4942643437202686780.Spec : Prop :=
  ∀ n, P4942643437202686780.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P14370889051372634717

`(A001952(n+1)%2)²`
-/

namespace A083035.P14370889051372634717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (n + 1)) 2 ^ 2

end

end A083035.P14370889051372634717

namespace A083035

/-- `(A001952(n+1)%2)²` -/
def P14370889051372634717.Spec : Prop :=
  ∀ n, P14370889051372634717.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P9285306236935570062

`and(2, A022842(n+1))/2`
-/

namespace A083035.P9285306236935570062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A022842 (n + 1)) : ℚ) / 2

end

end A083035.P9285306236935570062

namespace A083035

/-- `and(2, A022842(n+1))/2` -/
def P9285306236935570062.Spec : Prop :=
  ∀ n, P9285306236935570062.a n = (A083035 (n + 1) : ℚ)

end A083035

/-! ## A083035.P14894191545933292686

`(a(n-1)-A144611(n))²` with `a(0)=1`
-/

namespace A083035.P14894191545933292686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A144611 n) ^ 2

end

end A083035.P14894191545933292686

namespace A083035

/-- `(a(n-1)-A144611(n))²` -/
def P14894191545933292686.Spec : Prop :=
  ∀ n, P14894191545933292686.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P10957220942125838018

`A059841(A074840(n+1))`
-/

namespace A083035.P10957220942125838018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A074840 (n + 1)).toNat

end

end A083035.P10957220942125838018

namespace A083035

/-- `A059841(A074840(n+1))` -/
def P10957220942125838018.Spec : Prop :=
  ∀ n, P10957220942125838018.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P17728372877621045862

`A000035(A195119(n+1))`
-/

namespace A083035.P17728372877621045862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A195119 (n + 1)).toNat

end

end A083035.P17728372877621045862

namespace A083035

/-- `A000035(A195119(n+1))` -/
def P17728372877621045862.Spec : Prop :=
  ∀ n, P17728372877621045862.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P70424006008622723

`A080764(A159684(n)+n)`
-/

namespace A083035.P70424006008622723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A159684 n + (n : ℤ)).toNat

end

end A083035.P70424006008622723

namespace A083035

/-- `A080764(A159684(n)+n)` -/
def P70424006008622723.Spec : Prop :=
  ∀ n, P70424006008622723.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P5114295574356449960

`A080764(n)*A104521(n)`
-/

namespace A083035.P5114295574356449960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n * A104521 n

end

end A083035.P5114295574356449960

namespace A083035

/-- `A080764(n)*A104521(n)` -/
def P5114295574356449960.Spec : Prop :=
  ∀ n, P5114295574356449960.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P11883084947591610429

`A322996((A265744(n)+2)²)`
-/

namespace A083035.P11883084947591610429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 ((A265744 n + 2) ^ 2).toNat

end

end A083035.P11883084947591610429

namespace A083035

/-- `A322996((A265744(n)+2)²)` -/
def P11883084947591610429.Spec : Prop :=
  ∀ n, P11883084947591610429.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P4808437956266080424

`A104521(n)*A188398(n+1)`
-/

namespace A083035.P4808437956266080424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 n * A188398 (n + 1)

end

end A083035.P4808437956266080424

namespace A083035

/-- `A104521(n)*A188398(n+1)` -/
def P4808437956266080424.Spec : Prop :=
  ∀ n, P4808437956266080424.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P3462644022885715862

`A004530((A265744(n)²+1)²)`
-/

namespace A083035.P3462644022885715862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 ((A265744 n ^ 2 + 1) ^ 2).toNat

end

end A083035.P3462644022885715862

namespace A083035

/-- `A004530((A265744(n)²+1)²)` -/
def P3462644022885715862.Spec : Prop :=
  ∀ n, P3462644022885715862.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P12305977472836292900

`A000035(A001951(n+1))`
-/

namespace A083035.P12305977472836292900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001951 (n + 1)).toNat

end

end A083035.P12305977472836292900

namespace A083035

/-- `A000035(A001951(n+1))` -/
def P12305977472836292900.Spec : Prop :=
  ∀ n, P12305977472836292900.a n = A083035 (n + 1)

end A083035

/-! ## A083035.P12096276250675844270

`A004641(A003152(n+1))`
-/

namespace A083035.P12096276250675844270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (A003152 (n + 1)).toNat

end

end A083035.P12096276250675844270

namespace A083035

/-- `A004641(A003152(n+1))` -/
def P12096276250675844270.Spec : Prop :=
  ∀ n, P12096276250675844270.a n = A083035 (n + 1)

end A083035

/-!
# A083036: Partial sums of A083035.

The programs for A083036, the canonical program `A083036.P2474658439335323916` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083036 has offset 1).

The definition of A083036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083036.P3219145661161168473

`∑[comp[floor(n*sqrt(2))]%2]`
-/

namespace A083036.P3219145661161168473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P3219145661161168473

namespace A083036

/-- `∑[comp[floor(n*sqrt(2))]%2]` -/
def P3219145661161168473.Spec : Prop :=
  ∀ n, (P3219145661161168473.a n : ℤ) = A083036 (n + 1)

end A083036

/-! ## A083036.P2010514323925612777

`∑[and(1, floor((n+1)*sqrt(2)))]`
-/

namespace A083036.P2010514323925612777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P2010514323925612777

namespace A083036

/-- `∑[and(1, floor((n+1)*sqrt(2)))]` -/
def P2010514323925612777.Spec : Prop :=
  ∀ n, P2010514323925612777.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P634868736194098646

`∑[2-gcd(2, floor((n+1)*sqrt(2)))]`
-/

namespace A083036.P634868736194098646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P634868736194098646

namespace A083036

/-- `∑[2-gcd(2, floor((n+1)*sqrt(2)))]` -/
def P634868736194098646.Spec : Prop :=
  ∀ n, P634868736194098646.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P4765290495850006762

`∑[(floor(sqrt(2)*(n+1))%2)^2]`
-/

namespace A083036.P4765290495850006762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (2 : ℝ) * (n + 1 : ℝ)⌋ 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P4765290495850006762

namespace A083036

/-- `∑[(floor(sqrt(2)*(n+1))%2)^2]` -/
def P4765290495850006762.Spec : Prop :=
  ∀ n, P4765290495850006762.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P2474658439335323916

`∑[A083035(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083036

/-- `∑[A083035(n+1)]` -/
def P2474658439335323916.Spec : Prop :=
  ∀ n, P2474658439335323916.a n = A083036 (n + 1)

theorem P2474658439335323916.correct : P2474658439335323916.Spec := by
  intro n
  simp only [A083036, Nat.add_sub_cancel]

end A083036

/-! ## A083036.P14391626450492888935

`∑[(A195119(n+1)%2)²]`
-/

namespace A083036.P14391626450492888935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195119 (n + 1)) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P14391626450492888935

namespace A083036

/-- `∑[(A195119(n+1)%2)²]` -/
def P14391626450492888935.Spec : Prop :=
  ∀ n, P14391626450492888935.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P6853013426858346354

`∑[and(2, A022842(n+1))/2]`
-/

namespace A083036.P6853013426858346354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A022842 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P6853013426858346354

namespace A083036

/-- `∑[and(2, A022842(n+1))/2]` -/
def P6853013426858346354.Spec : Prop :=
  ∀ n, P6853013426858346354.a n = (A083036 (n + 1) : ℚ)

end A083036

/-! ## A083036.P9348010435383115274

`(A083037(n+1)+n+1)/2`
-/

namespace A083036.P9348010435383115274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083037 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A083036.P9348010435383115274

namespace A083036

/-- `(A083037(n+1)+n+1)/2` -/
def P9348010435383115274.Spec : Prop :=
  ∀ n, P9348010435383115274.a n = (A083036 (n + 1) : ℚ)

theorem P9348010435383115274.correct : P9348010435383115274.Spec := by
  intro n
  simp only [A083036, Nat.add_sub_cancel, A083036.P9348010435383115274.a, A083036.P2474658439335323916.f1, A083036.P2474658439335323916.a, A083035, A083035.P5765933853908214496.a, A083037, A083037.P6801730865427598023.a, A123737, A123737.P586469183867328966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A083036

/-! ## A083036.P15489243237222898708

`(n+1-A123737(n+1))/2`
-/

namespace A083036.P15489243237222898708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A123737 (n + 1) : ℚ) / 2

end

end A083036.P15489243237222898708

namespace A083036

/-- `(n+1-A123737(n+1))/2` -/
def P15489243237222898708.Spec : Prop :=
  ∀ n, P15489243237222898708.a n = (A083036 (n + 1) : ℚ)

theorem P15489243237222898708.correct : P15489243237222898708.Spec := by
  intro n
  simp only [A083036, Nat.add_sub_cancel, A083036.P15489243237222898708.a, A083036.P2474658439335323916.f1, A083036.P2474658439335323916.a, A083035, A083035.P5765933853908214496.a, A123737, A123737.P586469183867328966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A083036

/-! ## A083036.P10085326309301151188

`∑[val(A001952(n+1)²²+1, 2)]`
-/

namespace A083036.P10085326309301151188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((A001952 (n + 1) ^ 2) ^ 2 + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P10085326309301151188

namespace A083036

/-- `∑[val(A001952(n+1)²²+1, 2)]` -/
def P10085326309301151188.Spec : Prop :=
  ∀ n, (P10085326309301151188.a n : ℤ) = A083036 (n + 1)

end A083036

/-! ## A083036.P18371545560259371060

`∑[char[A003152(n+1)-char[2*n]]]`
-/

namespace A083036.P18371545560259371060
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P18371545560259371060

namespace A083036

/-- `∑[char[A003152(n+1)-char[2*n]]]` -/
def P18371545560259371060.Spec : Prop :=
  ∀ n, (P18371545560259371060.a n : ℤ) = A083036 (n + 1)

end A083036

/-! ## A083036.P5858620940572524086

`∑[A188037(A188040(A087057(n+1)))]`
-/

namespace A083036.P5858620940572524086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A188040 (A087057 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P5858620940572524086

namespace A083036

/-- `∑[A188037(A188040(A087057(n+1)))]` -/
def P5858620940572524086.Spec : Prop :=
  ∀ n, P5858620940572524086.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P16566216068595230079

`∑[A324772(A188376(n+1))]`
-/

namespace A083036.P16566216068595230079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324772 (A188376 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P16566216068595230079

namespace A083036

/-- `∑[A324772(A188376(n+1))]` -/
def P16566216068595230079.Spec : Prop :=
  ∀ n, P16566216068595230079.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P6220579055073967463

`∑[A159684(A001951(A003152(n+1)))]`
-/

namespace A083036.P6220579055073967463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A001951 (A003152 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P6220579055073967463

namespace A083036

/-- `∑[A159684(A001951(A003152(n+1)))]` -/
def P6220579055073967463.Spec : Prop :=
  ∀ n, P6220579055073967463.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P287417416486009350

`∑[A188295(A049472(A001952(n+1)))]`
-/

namespace A083036.P287417416486009350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A049472 (A001952 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P287417416486009350

namespace A083036

/-- `∑[A188295(A049472(A001952(n+1)))]` -/
def P287417416486009350.Spec : Prop :=
  ∀ n, P287417416486009350.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P11504621590909822616

`∑[A000035(A001952(n+1))]`
-/

namespace A083036.P11504621590909822616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P11504621590909822616

namespace A083036

/-- `∑[A000035(A001952(n+1))]` -/
def P11504621590909822616.Spec : Prop :=
  ∀ n, P11504621590909822616.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P1006720125539122376

`∑[A188037(A003152(A003151(n+1)))]`
-/

namespace A083036.P1006720125539122376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A003152 (A003151 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P1006720125539122376

namespace A083036

/-- `∑[A188037(A003152(A003151(n+1)))]` -/
def P1006720125539122376.Spec : Prop :=
  ∀ n, P1006720125539122376.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P327151284781448719

`∑[A285073(A003152(A285075(n+2)))]`
-/

namespace A083036.P327151284781448719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A003152 (A285075 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P327151284781448719

namespace A083036

/-- `∑[A285073(A003152(A285075(n+2)))]` -/
def P327151284781448719.Spec : Prop :=
  ∀ n, P327151284781448719.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P13322625988744653048

`∑[A285073(A003152(A285078(n+2)))]`
-/

namespace A083036.P13322625988744653048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A003152 (A285078 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P13322625988744653048

namespace A083036

/-- `∑[A285073(A003152(A285078(n+2)))]` -/
def P13322625988744653048.Spec : Prop :=
  ∀ n, P13322625988744653048.a n = A083036 (n + 1)

end A083036

/-! ## A083036.P16481166856239924676

`∑[A159684(A001952(A285074(n+1)))]`
-/

namespace A083036.P16481166856239924676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A001952 (A285074 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P16481166856239924676

namespace A083036

/-- `∑[A159684(A001952(A285074(n+1)))]` -/
def P16481166856239924676.Spec : Prop :=
  ∀ n, P16481166856239924676.a n = A083036 (n + 1)

end A083036

/-!
# A083037: a(n)=2*A083036(n)-n. Also -A123737(n).

The programs for A083037, the canonical program `A083037.P6801730865427598023` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083037 has offset 1).

The definition of A083037 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123737, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083037.P6801730865427598023

`-A123737(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083037

/-- `-A123737(n+1)` -/
def P6801730865427598023.Spec : Prop :=
  ∀ n, P6801730865427598023.a n = A083037 (n + 1)

theorem P6801730865427598023.correct : P6801730865427598023.Spec := by
  intro n
  simp only [A083037, Nat.add_sub_cancel]

end A083037

/-! ## A083037.P10866207263638742104

`2*A083036(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083037.P10866207263638742104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083036 (n + 1) - (n + 1 : ℤ)

end

end A083037.P10866207263638742104

namespace A083037

/-- `2*A083036(n+1)-(n+1)` -/
def P10866207263638742104.Spec : Prop :=
  ∀ n, P10866207263638742104.a n = A083037 (n + 1)

theorem P10866207263638742104.correct : P10866207263638742104.Spec := by
  intro n
  simp only [A083037, Nat.add_sub_cancel, A083037.P10866207263638742104.a, A083037.P6801730865427598023.a, A083036, A083036.P2474658439335323916.f1, A083036.P2474658439335323916.a, A123737, A123737.P586469183867328966.a, A083035, A083035.P5765933853908214496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A083037

/-! ## A083037.P2601474874412809273

`-∑[(-1)^comp[floor(n*sqrt(2))]]`
-/

namespace A083037.P2601474874412809273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083037.P2601474874412809273

namespace A083037

/-- `-∑[(-1)^comp[floor(n*sqrt(2))]]` -/
def P2601474874412809273.Spec : Prop :=
  ∀ n, P2601474874412809273.a n = A083037 (n + 1)

end A083037

/-! ## A083037.P10086061160632748311

`∑[(-1)^A352417(n)]`
-/

namespace A083037.P10086061160632748311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A352417 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083037.P10086061160632748311

namespace A083037

/-- `∑[(-1)^A352417(n)]` -/
def P10086061160632748311.Spec : Prop :=
  ∀ n, P10086061160632748311.a n = (A083037 (n + 1) : ℚ)

end A083037

/-! ## A083037.P13128193180818581018

`∑[(-1)^A087057(n+1)]`
-/

namespace A083037.P13128193180818581018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A087057 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083037.P13128193180818581018

namespace A083037

/-- `∑[(-1)^A087057(n+1)]` -/
def P13128193180818581018.Spec : Prop :=
  ∀ n, P13128193180818581018.a n = (A083037 (n + 1) : ℚ)

end A083037

/-! ## A083037.P16521967879979353501

`∑[and(2, A022842(n+1))]-(n+1)`
-/

namespace A083037.P16521967879979353501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A022842 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A083037.P16521967879979353501

namespace A083037

/-- `∑[and(2, A022842(n+1))]-(n+1)` -/
def P16521967879979353501.Spec : Prop :=
  ∀ n, P16521967879979353501.a n = A083037 (n + 1)

end A083037

/-! ## A083037.P605810455895589763

`∑[((2*A001952(n+1))%4)%3]-(n+1)`
-/

namespace A083037.P605810455895589763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (2 * A001952 (n + 1)) 4) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A083037.P605810455895589763

namespace A083037

/-- `∑[((2*A001952(n+1))%4)%3]-(n+1)` -/
def P605810455895589763.Spec : Prop :=
  ∀ n, P605810455895589763.a n = A083037 (n + 1)

end A083037

/-! ## A083037.P12495018846597031611

`log2(A033999(n)²)-A123737(n+1)`
-/

namespace A083037.P12495018846597031611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A033999 n ^ 2 : ℝ) - (A123737 (n + 1) : ℝ)

end

end A083037.P12495018846597031611

namespace A083037

/-- `log2(A033999(n)²)-A123737(n+1)` -/
def P12495018846597031611.Spec : Prop :=
  ∀ n, P12495018846597031611.a n = (A083037 (n + 1) : ℝ)

end A083037

/-! ## A083037.P2602645246457093176

`A033999(n-A123737(n+1))*A123737(n+1)`
-/

namespace A083037.P2602645246457093176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((n : ℤ) - A123737 (n + 1)).toNat * A123737 (n + 1)

end

end A083037.P2602645246457093176

namespace A083037

/-- `A033999(n-A123737(n+1))*A123737(n+1)` -/
def P2602645246457093176.Spec : Prop :=
  ∀ n, P2602645246457093176.a n = A083037 (n + 1)

end A083037

/-! ## A083037.P10346802608406723514

`n-(A123737(n+1)+A061579(A061579(n)))`
-/

namespace A083037.P10346802608406723514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A123737 (n + 1) + A061579 (A061579 n).toNat)

end

end A083037.P10346802608406723514

namespace A083037

/-- `n-(A123737(n+1)+A061579(A061579(n)))` -/
def P10346802608406723514.Spec : Prop :=
  ∀ n, P10346802608406723514.a n = A083037 (n + 1)

end A083037

/-! ## A083037.P10715890077076149392

`A123737(A026250(n+1))`
-/

namespace A083037.P10715890077076149392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (A026250 (n + 1)).toNat

end

end A083037.P10715890077076149392

namespace A083037

/-- `A123737(A026250(n+1))` -/
def P10715890077076149392.Spec : Prop :=
  ∀ n, P10715890077076149392.a n = A083037 (n + 1)

end A083037

/-! ## A083037.P6398229780573887753

`A123737(A188299(n+1))`
-/

namespace A083037.P6398229780573887753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (A188299 (n + 1)).toNat

end

end A083037.P6398229780573887753

namespace A083037

/-- `A123737(A188299(n+1))` -/
def P6398229780573887753.Spec : Prop :=
  ∀ n, P6398229780573887753.a n = A083037 (n + 1)

end A083037

/-! ## A083037.P13902922578710554116

`A008683(A123711(n+1))-A123737(n+1)`
-/

namespace A083037.P13902922578710554116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A123711 (n + 1)).toNat - A123737 (n + 1)

end

end A083037.P13902922578710554116

namespace A083037

/-- `A008683(A123711(n+1))-A123737(n+1)` -/
def P13902922578710554116.Spec : Prop :=
  ∀ n, P13902922578710554116.a n = A083037 (n + 1)

end A083037

/-!
# A083038: A fractal sequence.

The programs for A083038, the canonical program `A083038.P4826268886601187542` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083038 has offset 1).

The definition of A083038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083038.P15843433570061165450

`∑[∑[(-1)^ceil((n+1)*sqrt(2))]]`
-/

namespace A083038.P15843433570061165450
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083038.P15843433570061165450

namespace A083038

/-- `∑[∑[(-1)^ceil((n+1)*sqrt(2))]]` -/
def P15843433570061165450.Spec : Prop :=
  ∀ n, P15843433570061165450.a n = (A083038 (n + 1) : ℚ)

end A083038

/-! ## A083038.P4826268886601187542

`abs(∑[A083037(n+1)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A083038

/-- `abs(∑[A083037(n+1)])` -/
def P4826268886601187542.Spec : Prop :=
  ∀ n, P4826268886601187542.a n = A083038 (n + 1)

theorem P4826268886601187542.correct : P4826268886601187542.Spec := by
  intro n
  simp only [A083038, Nat.add_sub_cancel]

end A083038

/-! ## A083038.P10168792293022418294

`abs(∑[A123737(n+1)])`
-/

namespace A083038.P10168792293022418294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A083038.P10168792293022418294

namespace A083038

/-- `abs(∑[A123737(n+1)])` -/
def P10168792293022418294.Spec : Prop :=
  ∀ n, P10168792293022418294.a n = A083038 (n + 1)

end A083038

/-! ## A083038.P10582980731536389665

`-∑[A123737(1-(n-2*n))]`
-/

namespace A083038.P10582980731536389665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083038.P10582980731536389665

namespace A083038

/-- `-∑[A123737(1-(n-2*n))]` -/
def P10582980731536389665.Spec : Prop :=
  ∀ n, P10582980731536389665.a n = A083038 (n + 1)

end A083038

/-! ## A083038.P14051423711004679235

`or(∑[A083037(n+1)], A000007(n))`
-/

namespace A083038.P14051423711004679235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A083038.P14051423711004679235

namespace A083038

/-- `or(∑[A083037(n+1)], A000007(n))` -/
def P14051423711004679235.Spec : Prop :=
  ∀ n, P14051423711004679235.a n = A083038 (n + 1)

end A083038

/-! ## A083038.P16937251012462617434

`∑{d}[∑[A123737(n+1)], A000010(#)]`
-/

namespace A083038.P16937251012462617434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A083038.P16937251012462617434

namespace A083038

/-- `∑{d}[∑[A123737(n+1)], A000010(#)]` -/
def P16937251012462617434.Spec : Prop :=
  ∀ n, P16937251012462617434.a n = A083038 (n + 1)

end A083038

/-! ## A083038.P8047095701360318616

`∑[A083037(n+1)]%A000040(n+1)`
-/

namespace A083038.P8047095701360318616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A083038.P8047095701360318616

namespace A083038

/-- `∑[A083037(n+1)]%A000040(n+1)` -/
def P8047095701360318616.Spec : Prop :=
  ∀ n, P8047095701360318616.a n = A083038 (n + 1)

end A083038

/-! ## A083038.P6785080942026570832

`A007318(C(2, n))*∑[A083037(n+1)]`
-/

namespace A083038.P6785080942026570832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083038.P6785080942026570832

namespace A083038

/-- `A007318(C(2, n))*∑[A083037(n+1)]` -/
def P6785080942026570832.Spec : Prop :=
  ∀ n, P6785080942026570832.a n = A083038 (n + 1)

end A083038

/-! ## A083038.P6930874513916490685

`lcm(∑[A123737(n+1)], A123726(2*n+1))`
-/

namespace A083038.P6930874513916490685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A123726 (2 * n + 1))

end

end A083038.P6930874513916490685

namespace A083038

/-- `lcm(∑[A123737(n+1)], A123726(2*n+1))` -/
def P6930874513916490685.Spec : Prop :=
  ∀ n, (P6930874513916490685.a n : ℤ) = A083038 (n + 1)

end A083038

/-! ## A083038.P17035231012333468318

`A014963(6*(n+2))*∑[A083037(n+1)]`
-/

namespace A083038.P17035231012333468318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083038.P17035231012333468318

namespace A083038

/-- `A014963(6*(n+2))*∑[A083037(n+1)]` -/
def P17035231012333468318.Spec : Prop :=
  ∀ n, P17035231012333468318.a n = A083038 (n + 1)

end A083038

/-!
# A083039: Number of divisors of n that are <= 3.

The programs for A083039, the canonical program `A083039.P14013712439427917222` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083039 has offset 1).

The definition of A083039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083039.P14013712439427917222

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083039

/-- `a(n-6)` -/
def P14013712439427917222.Spec : Prop :=
  ∀ n, (P14013712439427917222.a n : ℤ) = A083039 (n + 1)

theorem P14013712439427917222.correct : P14013712439427917222.Spec := by
  intro n
  simp only [A083039, Nat.add_sub_cancel]

end A083039

/-!
# A083040: Number of divisors of n that are <= 4.

The programs for A083040, the canonical program `A083040.P8939719104433153851` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083040 has offset 1).

The definition of A083040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083040.P8939719104433153851

`ogf((1+x-x^2-x^3-4x^4+x^5+x^6+3x^7+3x^8-4x^9)/(1-x-x^2+2x^5-x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083040

/-- `ogf((1+x-x^2-x^3-4x^4+x^5+x^6+3x^7+3x^8-4x^9)/(1-x-x^2+2x^5-x^8-x^9+x^10))` -/
def P8939719104433153851.Spec : Prop :=
  ∀ n, P8939719104433153851.a n = A083040 (n + 1)

theorem P8939719104433153851.correct : P8939719104433153851.Spec := by
  intro n
  simp only [A083040, Nat.add_sub_cancel]

end A083040

/-!
# A083043: Integers y such that 11*x^2 - 9*y^2 = 2 for some integer x.

The programs for A083043, the canonical program `A083043.P14565589014594477279` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083043 has offset 1).

The definition of A083043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083043.P8188112121027753603

`ogf((1+x)/(1-20x+x^2))`
-/

namespace A083043.P8188112121027753603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -20, 1] n

end

end A083043.P8188112121027753603

namespace A083043

/-- `ogf((1+x)/(1-20x+x^2))` -/
def P8188112121027753603.Spec : Prop :=
  ∀ n, P8188112121027753603.a n = A083043 (n + 1)

end A083043

/-! ## A083043.P14565589014594477279

`20*a(n-1)-a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083043

/-- `20*a(n-1)-a(n-2)` -/
def P14565589014594477279.Spec : Prop :=
  ∀ n, P14565589014594477279.a n = A083043 (n + 1)

theorem P14565589014594477279.correct : P14565589014594477279.Spec := by
  intro n
  simp only [A083043, Nat.add_sub_cancel]

end A083043

/-! ## A083043.P2780886566943577042

`∑[A090728(n)]-1`
-/

namespace A083043.P2780886566943577042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A083043.P2780886566943577042

namespace A083043

/-- `∑[A090728(n)]-1` -/
def P2780886566943577042.Spec : Prop :=
  ∀ n, P2780886566943577042.a n = A083043 (n + 1)

end A083043

/-! ## A083043.P9249400942527388284

`Δ[A001085(n)/9]`
-/

namespace A083043.P9249400942527388284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001085 n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083043.P9249400942527388284

namespace A083043

/-- `Δ[A001085(n)/9]` -/
def P9249400942527388284.Spec : Prop :=
  ∀ n, P9249400942527388284.a n = (A083043 (n + 1) : ℚ)

end A083043

/-! ## A083043.P1741995423604171761

`A041014(2*n)/3`
-/

namespace A083043.P1741995423604171761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041014 (2 * n) : ℚ) / 3

end

end A083043.P1741995423604171761

namespace A083043

/-- `A041014(2*n)/3` -/
def P1741995423604171761.Spec : Prop :=
  ∀ n, P1741995423604171761.a n = (A083043 (n + 1) : ℚ)

end A083043

/-! ## A083043.P8422553647355729132

`A041178(2*n)/9`
-/

namespace A083043.P8422553647355729132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041178 (2 * n) : ℚ) / 9

end

end A083043.P8422553647355729132

namespace A083043

/-- `A041178(2*n)/9` -/
def P8422553647355729132.Spec : Prop :=
  ∀ n, P8422553647355729132.a n = (A083043 (n + 1) : ℚ)

end A083043

/-! ## A083043.P7696045418283205841

`2*A280072(n+1)-1`
-/

namespace A083043.P7696045418283205841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280072 (n + 1) - 1

end

end A083043.P7696045418283205841

namespace A083043

/-- `2*A280072(n+1)-1` -/
def P7696045418283205841.Spec : Prop :=
  ∀ n, P7696045418283205841.a n = A083043 (n + 1)

end A083043

/-! ## A083043.P6338400721815430411

`A075843(n+1)+A075843(n)`
-/

namespace A083043.P6338400721815430411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075843 (n + 1) + A075843 n

end

end A083043.P6338400721815430411

namespace A083043

/-- `A075843(n+1)+A075843(n)` -/
def P6338400721815430411.Spec : Prop :=
  ∀ n, P6338400721815430411.a n = A083043 (n + 1)

end A083043

/-! ## A083043.P15744623198685525509

`Δ[A280071(n+1)-A280072(n+1)]`
-/

namespace A083043.P15744623198685525509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280071 (n + 1) - A280072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083043.P15744623198685525509

namespace A083043

/-- `Δ[A280071(n+1)-A280072(n+1)]` -/
def P15744623198685525509.Spec : Prop :=
  ∀ n, P15744623198685525509.a n = A083043 (n + 1)

end A083043

/-! ## A083043.P14728184508991213716

`∑[2*A075839(n+1)]-A075839(n+1)`
-/

namespace A083043.P14728184508991213716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A075839 (n + 1)

end

end A083043.P14728184508991213716

namespace A083043

/-- `∑[2*A075839(n+1)]-A075839(n+1)` -/
def P14728184508991213716.Spec : Prop :=
  ∀ n, P14728184508991213716.a n = A083043 (n + 1)

end A083043

/-!
# A083044: Square table read by antidiagonals forms a permutation of the natural numbers: T(n,0) = floor(n*x/(x-1))+1, T(n,k+1) = ceiling(x*T(n,k)), where x=3/2, n >= 0, k >= 0.

The programs for A083044, there is no canonical definition to state claims against.
-/

/-! ## A083044.P15887351504644966086

`A367856(n)+1`
-/

namespace A083044.P15887351504644966086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367856 n + 1

end

end A083044.P15887351504644966086

/-! ## A083044.P15542532639891276346

`A029579(2*A367856(n))`
-/

namespace A083044.P15542532639891276346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A367856 n).toNat

end

end A083044.P15542532639891276346

/-! ## A083044.P14818399869291675489

`∑{e}[A008776(n), A367856(#)]`
-/

namespace A083044.P14818399869291675489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A367856 (Nat.factorization (f1 n).natAbs p)

end

end A083044.P14818399869291675489

/-! ## A083044.P3325857252690883711

`xor(A179801(A005428(n)), A194030(n+1))`
-/

namespace A083044.P3325857252690883711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179801 (A005428 n).toNat) (A194030 (n + 1))

end

end A083044.P3325857252690883711

/-! ## A083044.P15514423431645009548

`xor(A133010(A238374(n)), A194030(n+1))`
-/

namespace A083044.P15514423431645009548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133010 (A238374 n).toNat) (A194030 (n + 1))

end

end A083044.P15514423431645009548

/-!
# A083045: Main diagonal of table A083044.

The programs for A083045, there is no canonical definition to state claims against.
-/

/-! ## A083045.P8697086222313374214

`record[(A367856(n)+1)*A003982(n)]`
-/

namespace A083045.P8697086222313374214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A367856 n + 1) * A003982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083045.P8697086222313374214

/-! ## A083045.P17611835714350725123

`A083044(∑[4*n])`
-/

namespace A083045.P17611835714350725123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083044 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083045.P17611835714350725123

/-! ## A083045.P8340604051479570150

`record[A003982(n)*A083044(n)]`
-/

namespace A083045.P8340604051479570150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A083044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083045.P8340604051479570150

/-! ## A083045.P14523817356077634860

`or(A000007(n), A083044(A046092(n)))`
-/

namespace A083045.P14523817356077634860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A083044 (A046092 n).toNat)

end

end A083045.P14523817356077634860

/-! ## A083045.P12992346127817789969

`A083044(A046092(n))%A229573(n+1)`
-/

namespace A083045.P12992346127817789969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083044 (A046092 n).toNat) (A229573 (n + 1))

end

end A083045.P12992346127817789969

/-!
# A083046: Antidiagonal sums of table A083044.

The programs for A083046, there is no canonical definition to state claims against.
-/

/-! ## A083046.P15983567597922508624

`∑[A185585(3*a(n-1))]` with `a(0)=1`
-/

namespace A083046.P15983567597922508624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A185585 (3 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083046.P15983567597922508624

/-! ## A083046.P16412122513183037599

`∑[A377436(∑[A308251(n)])]`
-/

namespace A083046.P16412122513183037599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377436 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083046.P16412122513183037599

/-! ## A083046.P5208177344899598942

`A000267(A238620(5*n+3))`
-/

namespace A083046.P5208177344899598942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A238620 (5 * n + 3)).toNat

end

end A083046.P5208177344899598942

/-!
# A083047: Square table read by antidiagonals forms a permutation of the natural numbers: T(n,0) = floor(n*x/(x-1))+1, T(n,k+1) = ceiling(x*T(n,k)), where x = (sqrt(5)+1)/2, n>=0, k>=0.

The programs for A083047, there is no canonical definition to state claims against.
-/

/-! ## A083047.P8609661970791138127

`A126714(n+1)+A175004(n+1)-A035513(n+1)`
-/

namespace A083047.P8609661970791138127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126714 (n + 1) + (A175004 (n + 1) - A035513 (n + 1))

end

end A083047.P8609661970791138127

/-! ## A083047.P7623657319009010243

`A345253(A345254(n+1))`
-/

namespace A083047.P7623657319009010243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (A345254 (n + 1)).toNat

end

end A083047.P7623657319009010243

/-! ## A083047.P6243773136965227459

`A191737(n+1)-A340988(A207938(n+1))`
-/

namespace A083047.P6243773136965227459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191737 (n + 1) - A340988 ((A207938 (n + 1)).toNat + 91)

end

end A083047.P6243773136965227459

/-! ## A083047.P5107228327967612416

`A191737(n+1)-A386636(A386636(3*n+1))`
-/

namespace A083047.P5107228327967612416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191737 (n + 1) - A386636 (A386636 (3 * n + 1)).toNat

end

end A083047.P5107228327967612416

/-! ## A083047.P12165682718364887529

`A191737(n+1)-A316869(A122129(3*n+2))`
-/

namespace A083047.P12165682718364887529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191737 (n + 1) - A316869 (A122129 (3 * n + 2)).toNat

end

end A083047.P12165682718364887529

/-!
# A083048: Main diagonal of table A083047.

The programs for A083048, there is no canonical definition to state claims against.
-/

/-! ## A083048.P16244614134243833365

`A083047(∑[4*n])`
-/

namespace A083048.P16244614134243833365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083048.P16244614134243833365

/-! ## A083048.P18149468342664837657

`record[A083047(n*A003982(n))]`
-/

namespace A083048.P18149468342664837657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083048.P18149468342664837657

/-! ## A083048.P15416381423533219092

`A083047(A046092(n))%A159697(n)`
-/

namespace A083048.P15416381423533219092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083047 (A046092 n).toNat) (A159697 n)

end

end A083048.P15416381423533219092

/-! ## A083048.P14850977283194773748

`A083047(A046092(n))*A178334(n+2)`
-/

namespace A083048.P14850977283194773748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A046092 n).toNat * A178334 (n + 2)

end

end A083048.P14850977283194773748

/-! ## A083048.P3850402192943498833

`A083047(A046092(n))+A000038(A083050(n))`
-/

namespace A083048.P3850402192943498833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A046092 n).toNat + A000038 (A083050 n).toNat

end

end A083048.P3850402192943498833

/-! ## A083048.P11370692011726771649

`A083047(A046092(n))+A071045(A178334(n))`
-/

namespace A083048.P11370692011726771649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A046092 n).toNat + A071045 (A178334 n).toNat

end

end A083048.P11370692011726771649

/-! ## A083048.P18422587557610120121

`A083047(A046092(n))+A000038(A162430(n+1))`
-/

namespace A083048.P18422587557610120121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A046092 n).toNat + A000038 (A162430 (n + 1)).toNat

end

end A083048.P18422587557610120121

/-!
# A083049: Antidiagonal sums of table A083047.

The programs for A083049, there is no canonical definition to state claims against.
-/

/-! ## A083049.P1650594221835044977

`A026277(a(n-1)+2*n+1)` with `a(0)=1`
-/

namespace A083049.P1650594221835044977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026277 (a (n - 1) + (2 * n + 1 : ℤ)).toNat

end

end A083049.P1650594221835044977

/-! ## A083049.P7692675991654519065

`A004956(a(n-1)+n)+floor(ϕ*n)` with `a(0)=1`
-/

namespace A083049.P7692675991654519065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004956 (a (n - 1) + (n : ℤ)).toNat + ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A083049.P7692675991654519065

/-! ## A083049.P17492594447157619613

`A026351(a(n-1)+n)+floor(ϕ*n)` with `a(0)=1`
-/

namespace A083049.P17492594447157619613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026351 (a (n - 1) + (n : ℤ)).toNat + ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A083049.P17492594447157619613

/-! ## A083049.P15679499123775187314

`A026355(a(n-1)+n)+A004956(n)` with `a(0)=1`
-/

namespace A083049.P15679499123775187314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026355 (a (n - 1) + (n : ℤ)).toNat + A004956 n

end

end A083049.P15679499123775187314

/-! ## A083049.P2268848168349805090

`A026355(a(n-1)+n)+A026351(n)` with `a(0)=1`
-/

namespace A083049.P2268848168349805090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026355 (a (n - 1) + (n : ℤ)).toNat + A026351 n

end

end A083049.P2268848168349805090

/-!
# A083050: Square table read by antidiagonals forms a permutation of the natural numbers: T(n,0) = floor(n*x/(x-1))+1, T(n,k+1) = ceiling(x*T(n,k)), where x = sqrt(2), n>=0, k>=0.

The programs for A083050, there is no canonical definition to state claims against.
-/

/-! ## A083050.P17559069646240672605

`A194030(n+1)-A046369(A100981(n+1))%2`
-/

namespace A083050.P17559069646240672605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194030 (n + 1) - Int.tmod (A046369 (A100981 (n + 1)).toNat) 2

end

end A083050.P17559069646240672605

/-! ## A083050.P11076254592638963723

`A194030(n+1)-A060689(A027895(n+1))`
-/

namespace A083050.P11076254592638963723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194030 (n + 1) - A060689 (A027895 (n + 1)).toNat

end

end A083050.P11076254592638963723

/-! ## A083050.P11288493094773198511

`A194030(n+1)-A340988(A002145(n+1))`
-/

namespace A083050.P11288493094773198511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194030 (n + 1) - A340988 ((A002145 (n + 1)).toNat + 91)

end

end A083050.P11288493094773198511

/-! ## A083050.P1958181714188769469

`A194030(n+1)-A058348(A034296(n+2))`
-/

namespace A083050.P1958181714188769469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194030 (n + 1) - A058348 (A034296 (n + 2)).toNat

end

end A083050.P1958181714188769469

/-! ## A083050.P13316284589484803591

`A194030(n+1)-A194016(A193993(3*(n+1)))`
-/

namespace A083050.P13316284589484803591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194030 (n + 1) - A194016 (A193993 (3 * (n + 1))).toNat

end

end A083050.P13316284589484803591

/-!
# A083051: First column of table A083050.

The programs for A083051, the canonical program `A083051.P15776179668375550154` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083051 has offset 0).

The definition of A083051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083051.P3872594815345425298

`comp[ceil(n*sqrt(2))]`
-/

namespace A083051.P3872594815345425298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083051.P3872594815345425298

namespace A083051

/-- `comp[ceil(n*sqrt(2))]` -/
def P3872594815345425298.Spec : Prop :=
  ∀ n, (P3872594815345425298.a n : ℤ) = A083051 n

end A083051

/-! ## A083051.P5218897662865537418

`∑[runs[n-floor(n/sqrt(2))]]`
-/

namespace A083051.P5218897662865537418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083051.P5218897662865537418

namespace A083051

/-- `∑[runs[n-floor(n/sqrt(2))]]` -/
def P5218897662865537418.Spec : Prop :=
  ∀ n, (P5218897662865537418.a n : ℤ) = A083051 n

end A083051

/-! ## A083051.P11895325459654181181

`floor(record[xor(1, n)]+n*sqrt(2))`
-/

namespace A083051.P11895325459654181181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) + (n : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A083051.P11895325459654181181

namespace A083051

/-- `floor(record[xor(1, n)]+n*sqrt(2))` -/
def P11895325459654181181.Spec : Prop :=
  ∀ n, P11895325459654181181.a n = A083051 n

end A083051

/-! ## A083051.P247025788961144999

`record[floor(n/sqrt(2))+xor(1, n)]`
-/

namespace A083051.P247025788961144999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083051.P247025788961144999

namespace A083051

/-- `record[floor(n/sqrt(2))+xor(1, n)]` -/
def P247025788961144999.Spec : Prop :=
  ∀ n, P247025788961144999.a n = A083051 n

end A083051

/-! ## A083051.P7354669719216087719

`floor(Δ[n²]+n/cos(atan(1)))`
-/

namespace A083051.P7354669719216087719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + (n : ℝ) / Real.cos (Real.arctan (1 : ℝ))⌋

end

end A083051.P7354669719216087719

namespace A083051

/-- `floor(Δ[n²]+n/cos(atan(1)))` -/
def P7354669719216087719.Spec : Prop :=
  ∀ n, P7354669719216087719.a n = A083051 n

end A083051

/-! ## A083051.P15377344160878476811

`floor(n*sqrt(2))+or(1, 2*n)`
-/

namespace A083051.P15377344160878476811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (Nat.lor 1 (2 * n) : ℤ)

end

end A083051.P15377344160878476811

namespace A083051

/-- `floor(n*sqrt(2))+or(1, 2*n)` -/
def P15377344160878476811.Spec : Prop :=
  ∀ n, P15377344160878476811.a n = A083051 n

end A083051

/-! ## A083051.P5842380585625995045

`floor(n*sqrt(2))+xor(1, 2*n)`
-/

namespace A083051.P5842380585625995045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (Nat.xor 1 (2 * n) : ℤ)

end

end A083051.P5842380585625995045

namespace A083051

/-- `floor(n*sqrt(2))+xor(1, 2*n)` -/
def P5842380585625995045.Spec : Prop :=
  ∀ n, P5842380585625995045.a n = A083051 n

end A083051

/-! ## A083051.P2752450604778105403

`A289037(n+1)-2`
-/

namespace A083051.P2752450604778105403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1) - 2

end

end A083051.P2752450604778105403

namespace A083051

/-- `A289037(n+1)-2` -/
def P2752450604778105403.Spec : Prop :=
  ∀ n, P2752450604778105403.a n = A083051 n

end A083051

/-! ## A083051.P15776179668375550154

`A001951(n)+Δ[n²]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083051

/-- `A001951(n)+Δ[n²]` -/
def P15776179668375550154.Spec : Prop :=
  ∀ n, P15776179668375550154.a n = A083051 n

theorem P15776179668375550154.correct : P15776179668375550154.Spec := by
  intro n
  simp only [A083051]

end A083051

/-! ## A083051.P10359384460962772951

`A285075(n+1)-1+n`
-/

namespace A083051.P10359384460962772951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 1) - 1 + (n : ℤ)

end

end A083051.P10359384460962772951

namespace A083051

/-- `A285075(n+1)-1+n` -/
def P10359384460962772951.Spec : Prop :=
  ∀ n, P10359384460962772951.a n = A083051 n

end A083051

/-! ## A083051.P11015754349773990625

`(A188039(n+1)+n)/2`
-/

namespace A083051.P11015754349773990625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188039 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A083051.P11015754349773990625

namespace A083051

/-- `(A188039(n+1)+n)/2` -/
def P11015754349773990625.Spec : Prop :=
  ∀ n, P11015754349773990625.a n = (A083051 n : ℚ)

end A083051

/-! ## A083051.P5773837098239345359

`A276864(n)+a(n-1)` with `a(0)=1`
-/

namespace A083051.P5773837098239345359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276864 n + a (n - 1)

end

end A083051.P5773837098239345359

namespace A083051

/-- `A276864(n)+a(n-1)` -/
def P5773837098239345359.Spec : Prop :=
  ∀ n, P5773837098239345359.a n = A083051 n

end A083051

/-! ## A083051.P3245375978505254618

`A097508(n)+A016777(n)`
-/

namespace A083051.P3245375978505254618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + A016777 n

end

end A083051.P3245375978505254618

namespace A083051

/-- `A097508(n)+A016777(n)` -/
def P3245375978505254618.Spec : Prop :=
  ∀ n, P3245375978505254618.a n = A083051 n

theorem P3245375978505254618.correct : P3245375978505254618.Spec := by
  intro n
  simp only [A083051, Nat.add_sub_cancel, A083051.P3245375978505254618.a, A083051.P15776179668375550154.f1, A083051.P15776179668375550154.a, A001951, A001951.P3206377842744091648.a, A016777, A016777.P9931792138852554157.a, A097508, A097508.P15482133836038292803.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083051

/-! ## A083051.P8930281834371659400

`A016813(n)-A195119(n)`
-/

namespace A083051.P8930281834371659400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A195119 n

end

end A083051.P8930281834371659400

namespace A083051

/-- `A016813(n)-A195119(n)` -/
def P8930281834371659400.Spec : Prop :=
  ∀ n, P8930281834371659400.a n = A083051 n

end A083051

/-! ## A083051.P16102017681654033716

`A016861(n)-A195176(n)`
-/

namespace A083051.P16102017681654033716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A195176 n

end

end A083051.P16102017681654033716

namespace A083051

/-- `A016861(n)-A195176(n)` -/
def P16102017681654033716.Spec : Prop :=
  ∀ n, P16102017681654033716.a n = A083051 n

end A083051

/-! ## A083051.P3160626336090943574

`A191405(n)+A074840(n+1)`
-/

namespace A083051.P3160626336090943574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191405 n + A074840 (n + 1)

end

end A083051.P3160626336090943574

namespace A083051

/-- `A191405(n)+A074840(n+1)` -/
def P3160626336090943574.Spec : Prop :=
  ∀ n, P3160626336090943574.a n = A083051 n

end A083051

/-! ## A083051.P1985990595760506950

`A285075(n+1)+A023443(n)`
-/

namespace A083051.P1985990595760506950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 1) + A023443 n

end

end A083051.P1985990595760506950

namespace A083051

/-- `A285075(n+1)+A023443(n)` -/
def P1985990595760506950.Spec : Prop :=
  ∀ n, P1985990595760506950.a n = A083051 n

end A083051

/-! ## A083051.P5377507693256880379

`A317439(n+1)+A001951(n)`
-/

namespace A083051.P5377507693256880379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1) + A001951 n

end

end A083051.P5377507693256880379

namespace A083051

/-- `A317439(n+1)+A001951(n)` -/
def P5377507693256880379.Spec : Prop :=
  ∀ n, P5377507693256880379.a n = A083051 n

end A083051

/-! ## A083051.P2219384843430145570

`A285075(n+1)-A024000(n)`
-/

namespace A083051.P2219384843430145570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 1) - A024000 n

end

end A083051.P2219384843430145570

namespace A083051

/-- `A285075(n+1)-A024000(n)` -/
def P2219384843430145570.Spec : Prop :=
  ∀ n, P2219384843430145570.a n = A083051 n

end A083051

/-!
# A083052: Main diagonal of table A083050.

The programs for A083052, there is no canonical definition to state claims against.
-/

/-! ## A083052.P14156122249641238407

`A083050(∑[4*n])`
-/

namespace A083052.P14156122249641238407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083052.P14156122249641238407

/-! ## A083052.P5927081477329209247

`record[A083050(n*A003982(n))]`
-/

namespace A083052.P5927081477329209247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083052.P5927081477329209247

/-! ## A083052.P11558371265876355275

`record[gcd(A003987(n), A083050(n))]`
-/

namespace A083052.P11558371265876355275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A083050 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083052.P11558371265876355275

/-! ## A083052.P12989244588356472243

`A083050(A046092(n))+A000038(n+4)`
-/

namespace A083052.P12989244588356472243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 (A046092 n).toNat + A000038 (n + 4)

end

end A083052.P12989244588356472243

/-! ## A083052.P12087155860598503447

`A083050(A046092(n))*A178334(n+2)`
-/

namespace A083052.P12087155860598503447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 (A046092 n).toNat * A178334 (n + 2)

end

end A083052.P12087155860598503447

/-!
# A083053: Antidiagonal sums of table A083050.

The programs for A083053, there is no canonical definition to state claims against.
-/

/-! ## A083053.P9329142199705232910

`A299275(n)+comp[A354763(n+3)]`
-/

namespace A083053.P9329142199705232910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354763 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299275 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A083053.P9329142199705232910

/-! ## A083053.P10514968127314727186

`∑[∑[A056792(A030971(n+1))]]+n`
-/

namespace A083053.P10514968127314727186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A030971 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A083053.P10514968127314727186

/-! ## A083053.P2316653354591476475

`A299275(n)+A000120(A023037(n))`
-/

namespace A083053.P2316653354591476475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299275 n + A000120 (A023037 n).toNat

end

end A083053.P2316653354591476475

/-!
# A083054: a(n) = floor(sqrt(3)*n) - 3*floor(n/sqrt(3)).

The programs for A083054, the canonical program `A083054.P3565283331036424042` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083054 has offset 1).

The definition of A083054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(3)*(n+1))-3*floor((n+1)/sqrt(3))` (program `A083054.P3565283331036424042`, by `A083054.P3565283331036424042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083054.P12277327429859256231

`floor((n+1)*sqrt(3))%3`
-/

namespace A083054.P12277327429859256231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ 3

end

end A083054.P12277327429859256231

namespace A083054

/-- `floor((n+1)*sqrt(3))%3` -/
def P12277327429859256231.Spec : Prop :=
  ∀ n, P12277327429859256231.a n = A083054 (n + 1)

end A083054

/-! ## A083054.P3565283331036424042

`floor(sqrt(3)*(n+1))-3*floor((n+1)/sqrt(3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083054

/-- `floor(sqrt(3)*(n+1))-3*floor((n+1)/sqrt(3))` -/
def P3565283331036424042.Spec : Prop :=
  ∀ n, P3565283331036424042.a n = A083054 (n + 1)

theorem P3565283331036424042.correct : P3565283331036424042.Spec := by
  intro n
  simp only [A083054, Nat.add_sub_cancel]

end A083054

/-! ## A083054.P113885305949620990

`dr(∑[A080757(n)]%3)`
-/

namespace A083054.P113885305949620990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3)

end

end A083054.P113885305949620990

namespace A083054

/-- `dr(∑[A080757(n)]%3)` -/
def P113885305949620990.Spec : Prop :=
  ∀ n, (P113885305949620990.a n : ℤ) = A083054 (n + 1)

end A083054

/-! ## A083054.P10477201268647043477

`dr(A022838(n+1)%3)`
-/

namespace A083054.P10477201268647043477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A022838 (n + 1)) 3)

end

end A083054.P10477201268647043477

namespace A083054

/-- `dr(A022838(n+1)%3)` -/
def P10477201268647043477.Spec : Prop :=
  ∀ n, (P10477201268647043477.a n : ℤ) = A083054 (n + 1)

end A083054

/-! ## A083054.P8135577370823391889

`dr(A182778(n+1)%3)`
-/

namespace A083054.P8135577370823391889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A182778 (n + 1)) 3)

end

end A083054.P8135577370823391889

namespace A083054

/-- `dr(A182778(n+1)%3)` -/
def P8135577370823391889.Spec : Prop :=
  ∀ n, (P8135577370823391889.a n : ℤ) = A083054 (n + 1)

end A083054

/-! ## A083054.P1952571062616257582

`-((n+1-A188089(n+1))%3)`
-/

namespace A083054.P1952571062616257582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ((n + 1 : ℤ) - A188089 (n + 1)) 3

end

end A083054.P1952571062616257582

namespace A083054

/-- `-((n+1-A188089(n+1))%3)` -/
def P1952571062616257582.Spec : Prop :=
  ∀ n, P1952571062616257582.a n = A083054 (n + 1)

end A083054

/-! ## A083054.P15775444681828306723

`A010872(A022838(n+1)+A010872(n)-n)`
-/

namespace A083054.P15775444681828306723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A022838 (n + 1) + (A010872 n - (n : ℤ))).toNat

end

end A083054.P15775444681828306723

namespace A083054

/-- `A010872(A022838(n+1)+A010872(n)-n)` -/
def P15775444681828306723.Spec : Prop :=
  ∀ n, P15775444681828306723.a n = A083054 (n + 1)

end A083054

/-! ## A083054.P16933586756802390770

`A010872(A022838(n+1))`
-/

namespace A083054.P16933586756802390770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A022838 (n + 1)).toNat

end

end A083054.P16933586756802390770

namespace A083054

/-- `A010872(A022838(n+1))` -/
def P16933586756802390770.Spec : Prop :=
  ∀ n, P16933586756802390770.a n = A083054 (n + 1)

end A083054

/-! ## A083054.P17169274162023832419

`A010872(2*(A182777(n+1)+1))`
-/

namespace A083054.P17169274162023832419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * (A182777 (n + 1) + 1)).toNat

end

end A083054.P17169274162023832419

namespace A083054

/-- `A010872(2*(A182777(n+1)+1))` -/
def P17169274162023832419.Spec : Prop :=
  ∀ n, P17169274162023832419.a n = A083054 (n + 1)

end A083054

/-! ## A083054.P13651689225857703123

`A131555(A194028(n+1))`
-/

namespace A083054.P13651689225857703123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A194028 (n + 1)).toNat

end

end A083054.P13651689225857703123

namespace A083054

/-- `A131555(A194028(n+1))` -/
def P13651689225857703123.Spec : Prop :=
  ∀ n, P13651689225857703123.a n = A083054 (n + 1)

end A083054

/-! ## A083054.P2798487207181834694

`A010872(A182778(n+1))`
-/

namespace A083054.P2798487207181834694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A182778 (n + 1)).toNat

end

end A083054.P2798487207181834694

namespace A083054

/-- `A010872(A182778(n+1))` -/
def P2798487207181834694.Spec : Prop :=
  ∀ n, P2798487207181834694.a n = A083054 (n + 1)

end A083054

/-!
# A083055: a(n) = cardinality{ k<=n / A083054(k)=1}.

The programs for A083055, the canonical program `A083055.P13576914672482687507` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083055 has offset 1).

The definition of A083055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083055.P13252121465744678383

`∑[(floor((n+1)*sqrt(3))%3)%2]`
-/

namespace A083055.P13252121465744678383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083055.P13252121465744678383

namespace A083055

/-- `∑[(floor((n+1)*sqrt(3))%3)%2]` -/
def P13252121465744678383.Spec : Prop :=
  ∀ n, P13252121465744678383.a n = A083055 (n + 1)

end A083055

/-! ## A083055.P13576914672482687507

`∑[A083054(1+n)%2]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083055

/-- `∑[A083054(1+n)%2]` -/
def P13576914672482687507.Spec : Prop :=
  ∀ n, P13576914672482687507.a n = A083055 (n + 1)

theorem P13576914672482687507.correct : P13576914672482687507.Spec := by
  intro n
  simp only [A083055, Nat.add_sub_cancel]

end A083055

/-! ## A083055.P7792833086413155243

`∑[and(1, A083054(n+1))]`
-/

namespace A083055.P7792833086413155243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A083054 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083055.P7792833086413155243

namespace A083055

/-- `∑[and(1, A083054(n+1))]` -/
def P7792833086413155243.Spec : Prop :=
  ∀ n, P7792833086413155243.a n = A083055 (n + 1)

end A083055

/-! ## A083055.P1150094573822966111

`∑[and(1, A022838(n+1)%3)]`
-/

namespace A083055.P1150094573822966111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (A022838 (n + 1)) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083055.P1150094573822966111

namespace A083055

/-- `∑[and(1, A022838(n+1)%3)]` -/
def P1150094573822966111.Spec : Prop :=
  ∀ n, P1150094573822966111.a n = A083055 (n + 1)

end A083055

/-! ## A083055.P1018275293475561576

`ceil((A083056(n+1)+n)/3)`
-/

namespace A083055.P1018275293475561576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083056 (n + 1) + (n : ℤ) : ℚ) / 3⌉

end

end A083055.P1018275293475561576

namespace A083055

/-- `ceil((A083056(n+1)+n)/3)` -/
def P1018275293475561576.Spec : Prop :=
  ∀ n, P1018275293475561576.a n = A083055 (n + 1)

end A083055

/-! ## A083055.P10311401820417949996

`∑[dr(∑[A080757(n)]%3)%2]`
-/

namespace A083055.P10311401820417949996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083055.P10311401820417949996

namespace A083055

/-- `∑[dr(∑[A080757(n)]%3)%2]` -/
def P10311401820417949996.Spec : Prop :=
  ∀ n, (P10311401820417949996.a n : ℤ) = A083055 (n + 1)

end A083055

/-! ## A083055.P6078297157903626494

`A008611(A083056(n+1)+n)`
-/

namespace A083055.P6078297157903626494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A083056 (n + 1) + (n : ℤ)).toNat

end

end A083055.P6078297157903626494

namespace A083055

/-- `A008611(A083056(n+1)+n)` -/
def P6078297157903626494.Spec : Prop :=
  ∀ n, P6078297157903626494.a n = A083055 (n + 1)

end A083055

/-! ## A083055.P13750014819754399432

`A008620(A083056(n+1)+n)`
-/

namespace A083055.P13750014819754399432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A083056 (n + 1) + (n : ℤ)).toNat

end

end A083055.P13750014819754399432

namespace A083055

/-- `A008620(A083056(n+1)+n)` -/
def P13750014819754399432.Spec : Prop :=
  ∀ n, P13750014819754399432.a n = A083055 (n + 1)

end A083055

/-! ## A083055.P11165155079917237275

`∑[A053479(2*(n+1))%2]`
-/

namespace A083055.P11165155079917237275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053479 (2 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083055.P11165155079917237275

namespace A083055

/-- `∑[A053479(2*(n+1))%2]` -/
def P11165155079917237275.Spec : Prop :=
  ∀ n, P11165155079917237275.a n = A083055 (n + 1)

end A083055

/-! ## A083055.P16936317255813242259

`∑[and(1, A053479(2*n+2))]`
-/

namespace A083055.P16936317255813242259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053479 (2 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083055.P16936317255813242259

namespace A083055

/-- `∑[and(1, A053479(2*n+2))]` -/
def P16936317255813242259.Spec : Prop :=
  ∀ n, P16936317255813242259.a n = A083055 (n + 1)

end A083055

/-!
# A083056: a(n) = 3*A083055(n)-n.

The programs for A083056, the canonical program `A083056.P3013421395682300767` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083056 has offset 1).

The definition of A083056 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083055, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083056.P3013421395682300767

`3*A083055(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083056

/-- `3*A083055(n+1)-(n+1)` -/
def P3013421395682300767.Spec : Prop :=
  ∀ n, P3013421395682300767.a n = A083056 (n + 1)

theorem P3013421395682300767.correct : P3013421395682300767.Spec := by
  intro n
  simp only [A083056, Nat.add_sub_cancel]

end A083056

/-! ## A083056.P12673141706237038697

`∑[C(4, A083054(n+1)%2)-2]`
-/

namespace A083056.P12673141706237038697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 4 (Int.tmod (A083054 (n + 1)) 2).toNat : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083056.P12673141706237038697

namespace A083056

/-- `∑[C(4, A083054(n+1)%2)-2]` -/
def P12673141706237038697.Spec : Prop :=
  ∀ n, P12673141706237038697.a n = A083056 (n + 1)

end A083056

/-! ## A083056.P6295984451112624801

`-∑[A131713(A182777(n+1))]`
-/

namespace A083056.P6295984451112624801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A182777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083056.P6295984451112624801

namespace A083056

/-- `-∑[A131713(A182777(n+1))]` -/
def P6295984451112624801.Spec : Prop :=
  ∀ n, P6295984451112624801.a n = A083056 (n + 1)

end A083056

/-! ## A083056.P17043300690968271362

`∑[-A131713(floor((n+1)*sqrt(3)))]`
-/

namespace A083056.P17043300690968271362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131713 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083056.P17043300690968271362

namespace A083056

/-- `∑[-A131713(floor((n+1)*sqrt(3)))]` -/
def P17043300690968271362.Spec : Prop :=
  ∀ n, P17043300690968271362.a n = A083056 (n + 1)

end A083056

/-! ## A083056.P13763681398692692326

`-∑[A131713(A022838(n+1))]`
-/

namespace A083056.P13763681398692692326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A022838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083056.P13763681398692692326

namespace A083056

/-- `-∑[A131713(A022838(n+1))]` -/
def P13763681398692692326.Spec : Prop :=
  ∀ n, P13763681398692692326.a n = A083056 (n + 1)

end A083056

/-! ## A083056.P15457135821513653281

`∑[3-A173259(A198081(n+1))]`
-/

namespace A083056.P15457135821513653281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A173259 (A198081 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083056.P15457135821513653281

namespace A083056

/-- `∑[3-A173259(A198081(n+1))]` -/
def P15457135821513653281.Spec : Prop :=
  ∀ n, P15457135821513653281.a n = A083056 (n + 1)

end A083056

/-! ## A083056.P16232757638030554481

`∑[A131713(A022838(n+1))*A260196(n+2)]`
-/

namespace A083056.P16232757638030554481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A022838 (n + 1)).toNat * A260196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083056.P16232757638030554481

namespace A083056

/-- `∑[A131713(A022838(n+1))*A260196(n+2)]` -/
def P16232757638030554481.Spec : Prop :=
  ∀ n, P16232757638030554481.a n = A083056 (n + 1)

end A083056

/-! ## A083056.P7802306599821041205

`∑[A000035(2*n)-A131713(A022838(n+1))]`
-/

namespace A083056.P7802306599821041205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A131713 (A022838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083056.P7802306599821041205

namespace A083056

/-- `∑[A000035(2*n)-A131713(A022838(n+1))]` -/
def P7802306599821041205.Spec : Prop :=
  ∀ n, P7802306599821041205.a n = A083056 (n + 1)

end A083056

/-! ## A083056.P8868687419289637908

`A008486(∑[A053479(2*(n+1))%2])-(n+1)`
-/

namespace A083056.P8868687419289637908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053479 (2 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A083056.P8868687419289637908

namespace A083056

/-- `A008486(∑[A053479(2*(n+1))%2])-(n+1)` -/
def P8868687419289637908.Spec : Prop :=
  ∀ n, P8868687419289637908.a n = A083056 (n + 1)

end A083056

/-! ## A083056.P14171256992241558061

`∑[A131713(A182778(n+1))²-2]`
-/

namespace A083056.P14171256992241558061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (A182778 (n + 1)).toNat ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083056.P14171256992241558061

namespace A083056

/-- `∑[A131713(A182778(n+1))²-2]` -/
def P14171256992241558061.Spec : Prop :=
  ∀ n, P14171256992241558061.a n = A083056 (n + 1)

end A083056

/-!
# A083057: Partial sums of A083056.

The programs for A083057, the canonical program `A083057.P18266580190478007741` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083057 has offset 1).

The definition of A083057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083057.P18266580190478007741

`∑[A083056(1+n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083057

/-- `∑[A083056(1+n)]` -/
def P18266580190478007741.Spec : Prop :=
  ∀ n, P18266580190478007741.a n = A083057 (n + 1)

theorem P18266580190478007741.correct : P18266580190478007741.Spec := by
  intro n
  simp only [A083057, Nat.add_sub_cancel]

end A083057

/-! ## A083057.P15208909093745151589

`∑[3*A083055(n+1)-(n+1)]`
-/

namespace A083057.P15208909093745151589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083055 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P15208909093745151589

namespace A083057

/-- `∑[3*A083055(n+1)-(n+1)]` -/
def P15208909093745151589.Spec : Prop :=
  ∀ n, P15208909093745151589.a n = A083057 (n + 1)

end A083057

/-! ## A083057.P9447568001694400184

`∑[∑[C(4, A083054(n+1)%2)-2]]`
-/

namespace A083057.P9447568001694400184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 4 (Int.tmod (A083054 (n + 1)) 2).toNat : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P9447568001694400184

namespace A083057

/-- `∑[∑[C(4, A083054(n+1)%2)-2]]` -/
def P9447568001694400184.Spec : Prop :=
  ∀ n, P9447568001694400184.a n = A083057 (n + 1)

end A083057

/-! ## A083057.P9245003020315578497

`A083056(floor(acot(n)+n)+1)+a(n-1)` with `a(0)=2`
-/

namespace A083057.P9245003020315578497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A083056 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat + a (n - 1)

end

end A083057.P9245003020315578497

namespace A083057

/-- `A083056(floor(acot(n)+n)+1)+a(n-1)` -/
def P9245003020315578497.Spec : Prop :=
  ∀ n, P9245003020315578497.a n = A083057 (n + 1)

end A083057

/-! ## A083057.P16104653882103331071

`∑[A008486(A083055(n+1))-(n+1)]`
-/

namespace A083057.P16104653882103331071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A083055 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P16104653882103331071

namespace A083057

/-- `∑[A008486(A083055(n+1))-(n+1)]` -/
def P16104653882103331071.Spec : Prop :=
  ∀ n, P16104653882103331071.a n = A083057 (n + 1)

end A083057

/-! ## A083057.P13321362444183329930

`∑[A066182(3*A083055(n+1))-n]`
-/

namespace A083057.P13321362444183329930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (3 * A083055 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P13321362444183329930

namespace A083057

/-- `∑[A066182(3*A083055(n+1))-n]` -/
def P13321362444183329930.Spec : Prop :=
  ∀ n, P13321362444183329930.a n = A083057 (n + 1)

end A083057

/-! ## A083057.P6869511850626449959

`∑[∑[-A131713(A182777(n+1))]]`
-/

namespace A083057.P6869511850626449959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131713 (A182777 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P6869511850626449959

namespace A083057

/-- `∑[∑[-A131713(A182777(n+1))]]` -/
def P6869511850626449959.Spec : Prop :=
  ∀ n, P6869511850626449959.a n = A083057 (n + 1)

end A083057

/-! ## A083057.P12718109038202016635

`∑[∑[-A131713(A022838(n+1))]]`
-/

namespace A083057.P12718109038202016635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131713 (A022838 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P12718109038202016635

namespace A083057

/-- `∑[∑[-A131713(A022838(n+1))]]` -/
def P12718109038202016635.Spec : Prop :=
  ∀ n, P12718109038202016635.a n = A083057 (n + 1)

end A083057

/-! ## A083057.P7495751445164137898

`∑[∑[3-A173259(A198081(n+1))]]`
-/

namespace A083057.P7495751445164137898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A173259 (A198081 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P7495751445164137898

namespace A083057

/-- `∑[∑[3-A173259(A198081(n+1))]]` -/
def P7495751445164137898.Spec : Prop :=
  ∀ n, P7495751445164137898.a n = A083057 (n + 1)

end A083057

/-! ## A083057.P2613967744531253863

`∑[∑[-A131713(A182778(n+1))]]`
-/

namespace A083057.P2613967744531253863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A131713 (A182778 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083057.P2613967744531253863

namespace A083057

/-- `∑[∑[-A131713(A182778(n+1))]]` -/
def P2613967744531253863.Spec : Prop :=
  ∀ n, P2613967744531253863.a n = A083057 (n + 1)

end A083057

/-!
# A083058: Number of eigenvalues equal to 1 of n X n matrix A(i,j)=1 if j=1 or i divides j.

The programs for A083058, the canonical program `A083058.P9770800018096476175` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083058 has offset 1).

The definition of A083058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083058.P18118953354933149310

`n+1-ceil(log2(or(n, n+1)))`
-/

namespace A083058.P18118953354933149310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈Real.logb 2 (Nat.lor n (n + 1) : ℝ)⌉

end

end A083058.P18118953354933149310

namespace A083058

/-- `n+1-ceil(log2(or(n, n+1)))` -/
def P18118953354933149310.Spec : Prop :=
  ∀ n, P18118953354933149310.a n = A083058 (n + 1)

end A083058

/-! ## A083058.P9770800018096476175

`floor(sqrt(n²+1))-floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083058

/-- `floor(sqrt(n²+1))-floor(log2(n+1))` -/
def P9770800018096476175.Spec : Prop :=
  ∀ n, P9770800018096476175.a n = A083058 (n + 1)

theorem P9770800018096476175.correct : P9770800018096476175.Spec := by
  intro n
  simp only [A083058, Nat.add_sub_cancel]

end A083058

/-! ## A083058.P10143385584457904943

`abs(A070939(ceil(n/2))-n)`
-/

namespace A083058.P10143385584457904943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A070939 ⌈(n : ℚ) / 2⌉.toNat - (n : ℤ)|

end

end A083058.P10143385584457904943

namespace A083058

/-- `abs(A070939(ceil(n/2))-n)` -/
def P10143385584457904943.Spec : Prop :=
  ∀ n, P10143385584457904943.a n = A083058 (n + 1)

end A083058

/-! ## A083058.P16173399035295411007

`ceil(A028310(n)-log2(n+1))`
-/

namespace A083058.P16173399035295411007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028310 n : ℝ) - Real.logb 2 (n + 1 : ℝ)⌉

end

end A083058.P16173399035295411007

namespace A083058

/-- `ceil(A028310(n)-log2(n+1))` -/
def P16173399035295411007.Spec : Prop :=
  ∀ n, P16173399035295411007.a n = A083058 (n + 1)

end A083058

/-! ## A083058.P13960368735123967584

`∏{e}[A053644(n+1), n-#]`
-/

namespace A083058.P13960368735123967584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A083058.P13960368735123967584

namespace A083058

/-- `∏{e}[A053644(n+1), n-#]` -/
def P13960368735123967584.Spec : Prop :=
  ∀ n, P13960368735123967584.a n = A083058 (n + 1)

end A083058

/-! ## A083058.P11456848045891820066

`abs(∑[char[A000225(n+2)]]+1-n)`
-/

namespace A083058.P11456848045891820066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (n : ℤ)|

end

end A083058.P11456848045891820066

namespace A083058

/-- `abs(∑[char[A000225(n+2)]]+1-n)` -/
def P11456848045891820066.Spec : Prop :=
  ∀ n, P11456848045891820066.a n = A083058 (n + 1)

end A083058

/-! ## A083058.P12978274223039658926

`∑[A014653(n*A255308(n+1))]`
-/

namespace A083058.P12978274223039658926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014653 ((n : ℤ) * A255308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083058.P12978274223039658926

namespace A083058

/-- `∑[A014653(n*A255308(n+1))]` -/
def P12978274223039658926.Spec : Prop :=
  ∀ n, P12978274223039658926.a n = A083058 (n + 1)

end A083058

/-! ## A083058.P8119464686083297797

`A049039(n+1)%A181440(n+1)`
-/

namespace A083058.P8119464686083297797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049039 (n + 1)) (A181440 (n + 1))

end

end A083058.P8119464686083297797

namespace A083058

/-- `A049039(n+1)%A181440(n+1)` -/
def P8119464686083297797.Spec : Prop :=
  ∀ n, P8119464686083297797.a n = A083058 (n + 1)

end A083058

/-! ## A083058.P1878658324293052417

`A288205(n+1)%A181440(n+1)`
-/

namespace A083058.P1878658324293052417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288205 (n + 1)) (A181440 (n + 1))

end

end A083058.P1878658324293052417

namespace A083058

/-- `A288205(n+1)%A181440(n+1)` -/
def P1878658324293052417.Spec : Prop :=
  ∀ n, P1878658324293052417.a n = A083058 (n + 1)

end A083058

/-! ## A083058.P11295167581951256336

`ceil(A065033(2*n)-log2(n+1))`
-/

namespace A083058.P11295167581951256336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065033 (2 * n) : ℝ) - Real.logb 2 (n + 1 : ℝ)⌉

end

end A083058.P11295167581951256336

namespace A083058

/-- `ceil(A065033(2*n)-log2(n+1))` -/
def P11295167581951256336.Spec : Prop :=
  ∀ n, P11295167581951256336.a n = A083058 (n + 1)

end A083058

/-! ## A083058.P11449058429068091735

`∑[A008683(n+1)^A007814(A051664(n+1))]`
-/

namespace A083058.P11449058429068091735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℚ) ^ (A007814 (A051664 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083058.P11449058429068091735

namespace A083058

/-- `∑[A008683(n+1)^A007814(A051664(n+1))]` -/
def P11449058429068091735.Spec : Prop :=
  ∀ n, P11449058429068091735.a n = (A083058 (n + 1) : ℚ)

end A083058

/-! ## A083058.P16201766482917028737

`floor(log2(A001037(n+1)))`
-/

namespace A083058.P16201766482917028737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A001037 (n + 1)).toNat

end

end A083058.P16201766482917028737

namespace A083058

/-- `floor(log2(A001037(n+1)))` -/
def P16201766482917028737.Spec : Prop :=
  ∀ n, (P16201766482917028737.a n : ℤ) = A083058 (n + 1)

end A083058

/-! ## A083058.P2374378105201129399

`floor(log2(A060477(n+1)))`
-/

namespace A083058.P2374378105201129399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A060477 (n + 1)).toNat

end

end A083058.P2374378105201129399

namespace A083058

/-- `floor(log2(A060477(n+1)))` -/
def P2374378105201129399.Spec : Prop :=
  ∀ n, (P2374378105201129399.a n : ℤ) = A083058 (n + 1)

end A083058

/-!
# A083059: a(n) is the number of natural numbers k such that A078496(k)=n.

The programs for A083059, there is no canonical definition to state claims against.
-/

/-! ## A083059.P2517465249551318487

`C(A086063(n), A233510(A116512(n+5)))`
-/

namespace A083059.P2517465249551318487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A086063 n).toNat (A233510 (A116512 (n + 5)).toNat).toNat

end

end A083059.P2517465249551318487

/-! ## A083059.P13874540633973904932

`C(A001222(A092997(2*(n+2))), A093035(n+5))`
-/

namespace A083059.P13874540633973904932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A092997 (2 * (n + 2))).toNat).toNat (A093035 (n + 5)).toNat

end

end A083059.P13874540633973904932

/-! ## A083059.P8793894023949599443

`A326702(A002837(3*n+2)*A010051(n+5))`
-/

namespace A083059.P8793894023949599443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A002837 (3 * n + 2) * A010051 (n + 5)).toNat

end

end A083059.P8793894023949599443

/-! ## A083059.P6260326943715227786

`A265404(A005382(2*n+3)*A078442(n+5))`
-/

namespace A083059.P6260326943715227786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265404 (A005382 (2 * n + 3) * A078442 (n + 5)).toNat

end

end A083059.P6260326943715227786

/-! ## A083059.P14429591787213615693

`Δ[A057872(n+4)%A015048(n+1)]`
-/

namespace A083059.P14429591787213615693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057872 (n + 4)) (A015048 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083059.P14429591787213615693

/-!
# A083060: a(n) is the number of natural numbers k such that A078496(k) = prime(n), where prime(n) denotes the n-th prime.

The programs for A083060, there is no canonical definition to state claims against.
-/

/-! ## A083060.P7338240113308865612

`Δ[A049880(A233583(n+1))-A233583(n+1)]`
-/

namespace A083060.P7338240113308865612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049880 (A233583 (n + 1)).toNat - A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083060.P7338240113308865612

/-! ## A083060.P15242148067637204457

`A343222(A005179(n+1)*A286586(n+1))`
-/

namespace A083060.P15242148067637204457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A005179 (n + 1) * A286586 (n + 1)).toNat

end

end A083060.P15242148067637204457

/-! ## A083060.P10746388797845643482

`A140361(lcm(A189671(n+1), A299149(n+1)))`
-/

namespace A083060.P10746388797845643482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (Int.lcm (A189671 (n + 1)) (A299149 (n + 1)))

end

end A083060.P10746388797845643482

/-!
# A083061: Triangle of coefficients of a companion polynomial to the Gandhi polynomial.

The programs for A083061, there is no canonical definition to state claims against.
-/

/-! ## A083061.P18303319535272669520

`A094665(comp[∑[n]])`
-/

namespace A083061.P18303319535272669520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A083061.P18303319535272669520

/-! ## A083061.P11100473071011542911

`and(-1, A094665(A014132(n+1)))`
-/

namespace A083061.P11100473071011542911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A094665 (A014132 (n + 1)).toNat)

end

end A083061.P11100473071011542911

/-! ## A083061.P1599686508111667673

`A085734(n)/2^(C(comp[C(n, 2)]-n, 2)-(n+1))`
-/

namespace A083061.P1599686508111667673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085734 n : ℚ) / (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A083061.P1599686508111667673

/-! ## A083061.P11066893479265651788

`A085734(n)/A130321(n)`
-/

namespace A083061.P11066893479265651788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085734 n : ℚ) / (A130321 n : ℚ)

end

end A083061.P11066893479265651788

/-! ## A083061.P18271315314006066823

`A085734(n)/sqrt(A262616(n))`
-/

namespace A083061.P18271315314006066823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A085734 n : ℝ) / Real.sqrt (A262616 n : ℝ)

end

end A083061.P18271315314006066823

/-!
# A083062: a(n) = (n+1)^n/(n+2) - (-1)^n/(n+2).

The programs for A083062, the canonical program `A083062.P2076799064924966290` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083062 has offset 0).

The definition of A083062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083062.P2076799064924966290

`(n+1)^n/(n+2)-(-1)^n/(n+2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083062

/-- `(n+1)^n/(n+2)-(-1)^n/(n+2)` -/
def P2076799064924966290.Spec : Prop :=
  ∀ n, P2076799064924966290.a n = (A083062 n : ℚ)

end A083062

/-! ## A083062.P5379635492518056255

`floor(A091759(n)/2)`
-/

namespace A083062.P5379635492518056255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091759 n : ℚ) / 2⌋

end

end A083062.P5379635492518056255

namespace A083062

/-- `floor(A091759(n)/2)` -/
def P5379635492518056255.Spec : Prop :=
  ∀ n, P5379635492518056255.a n = A083062 n

end A083062

/-! ## A083062.P4127029339787715577

`xor(1, (n+1)^n)/(n+2)`
-/

namespace A083062.P4127029339787715577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 ((n + 1) ^ n) : ℚ) / (n + 2 : ℚ)

end

end A083062.P4127029339787715577

namespace A083062

/-- `xor(1, (n+1)^n)/(n+2)` -/
def P4127029339787715577.Spec : Prop :=
  ∀ n, P4127029339787715577.a n = (A083062 n : ℚ)

end A083062

/-! ## A083062.P1166549536759810483

`floor(or(1, (n+1)^n)/(n+2))`
-/

namespace A083062.P1166549536759810483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 ((n + 1) ^ n) : ℚ) / (n + 2 : ℚ)⌋

end

end A083062.P1166549536759810483

namespace A083062

/-- `floor(or(1, (n+1)^n)/(n+2))` -/
def P1166549536759810483.Spec : Prop :=
  ∀ n, P1166549536759810483.a n = A083062 n

end A083062

/-! ## A083062.P15642038825835296469

`round((n+1)^n*ceil(tanh(n))/(n+2))`
-/

namespace A083062.P15642038825835296469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ n : ℤ) * ⌈Real.tanh (n : ℝ)⌉ : ℚ) / (n + 2 : ℚ))

end

end A083062.P15642038825835296469

namespace A083062

/-- `round((n+1)^n*ceil(tanh(n))/(n+2))` -/
def P15642038825835296469.Spec : Prop :=
  ∀ n, P15642038825835296469.a n = A083062 n

end A083062

/-! ## A083062.P4457533517983070665

`A320453(n+1)/(n+1)`
-/

namespace A083062.P4457533517983070665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320453 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083062.P4457533517983070665

namespace A083062

/-- `A320453(n+1)/(n+1)` -/
def P4457533517983070665.Spec : Prop :=
  ∀ n, P4457533517983070665.a n = (A083062 n : ℚ)

end A083062

/-!
# A083063: a(n) = (n+1)^(n-1)/(n+2) + (-1)^n/(n+2).

The programs for A083063, the canonical program `A083063.P3832202120964794391` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083063 has offset 0).

The definition of A083063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083063.P3832202120964794391

`(n+1)^(n-1)/(n+2)+(-1)^n/(n+2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083063

/-- `(n+1)^(n-1)/(n+2)+(-1)^n/(n+2)` -/
def P3832202120964794391.Spec : Prop :=
  ∀ n, P3832202120964794391.a n = (A083063 n : ℚ)

end A083063

/-! ## A083063.P3792971360244008519

`A062160((n+1)²+n²)`
-/

namespace A083063.P3792971360244008519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062160 ((n + 1) ^ 2 + n ^ 2)

end

end A083063.P3792971360244008519

namespace A083063

/-- `A062160((n+1)²+n²)` -/
def P3792971360244008519.Spec : Prop :=
  ∀ n, P3792971360244008519.a n = A083063 n

end A083063

/-!
# A083064: Square number array T(n,k) = (k*(k+2)^n+1)/(k+1) read by antidiagonals.

The programs for A083064, the canonical program `A083064.P531314480605534163` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083064 has offset 0).

The definition of A083064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083064.P531314480605534163

`((row(n)-col(n))*(row(n)-col(n)+2)^col(n)+1)/(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083064

/-- `((row(n)-col(n))*(row(n)-col(n)+2)^col(n)+1)/(row(n)-col(n)+1)` -/
def P531314480605534163.Spec : Prop :=
  ∀ n, P531314480605534163.a n = (A083064 n : ℚ)

end A083064

/-! ## A083064.P12798512139656712159

`A204057(n+1)-A085141(A185284(2*n))`
-/

namespace A083064.P12798512139656712159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (n + 1) - A085141 (A185284 (2 * n)).toNat

end

end A083064.P12798512139656712159

namespace A083064

/-- `A204057(n+1)-A085141(A185284(2*n))` -/
def P12798512139656712159.Spec : Prop :=
  ∀ n, P12798512139656712159.a n = A083064 n

end A083064

/-! ## A083064.P9068641641492078927

`A194907(A204057(n+1)%A109138(n+1))`
-/

namespace A083064.P9068641641492078927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194907 (Int.tmod (A204057 (n + 1)) (A109138 (n + 1))).toNat

end

end A083064.P9068641641492078927

namespace A083064

/-- `A194907(A204057(n+1)%A109138(n+1))` -/
def P9068641641492078927.Spec : Prop :=
  ∀ n, P9068641641492078927.a n = A083064 n

end A083064

/-! ## A083064.P7243176585577762270

`A048266(A204057(n+1))`
-/

namespace A083064.P7243176585577762270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A204057 (n + 1)).toNat

end

end A083064.P7243176585577762270

namespace A083064

/-- `A048266(A204057(n+1))` -/
def P7243176585577762270.Spec : Prop :=
  ∀ n, P7243176585577762270.a n = A083064 n

end A083064

/-! ## A083064.P1147894292251211926

`A101157(A204057(n+1)²)`
-/

namespace A083064.P1147894292251211926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 (A204057 (n + 1) ^ 2).toNat

end

end A083064.P1147894292251211926

namespace A083064

/-- `A101157(A204057(n+1)²)` -/
def P1147894292251211926.Spec : Prop :=
  ∀ n, P1147894292251211926.a n = A083064 n

end A083064

/-!
# A083065: 4th row of number array A083064.

The programs for A083065, the canonical program `A083065.P6974994007339420009` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083065 has offset 0).

The definition of A083065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083065.P14184961126698273499

`ogf((1-2x)/(1-6x+5x^2))`
-/

namespace A083065.P14184961126698273499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 5] n

end

end A083065.P14184961126698273499

namespace A083065

/-- `ogf((1-2x)/(1-6x+5x^2))` -/
def P14184961126698273499.Spec : Prop :=
  ∀ n, P14184961126698273499.a n = A083065 n

end A083065

/-! ## A083065.P6974994007339420009

`5*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083065

/-- `5*a(n-1)-1` -/
def P6974994007339420009.Spec : Prop :=
  ∀ n, P6974994007339420009.a n = A083065 n

theorem P6974994007339420009.correct : P6974994007339420009.Spec := by
  intro n
  simp only [A083065]

end A083065

/-! ## A083065.P7505505554045625355

`(3*5^n+1)/4`
-/

namespace A083065.P7505505554045625355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 5 ^ n + 1 : ℚ) / 4

end

end A083065.P7505505554045625355

namespace A083065

/-- `(3*5^n+1)/4` -/
def P7505505554045625355.Spec : Prop :=
  ∀ n, P7505505554045625355.a n = (A083065 n : ℚ)

theorem P7505505554045625355.correct : P7505505554045625355.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083065, Nat.add_sub_cancel, A083065.P7505505554045625355.a, A083065.P6974994007339420009.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083065, Nat.add_sub_cancel, A083065.P7505505554045625355.a, A083065.P6974994007339420009.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A083065

/-! ## A083065.P13674265405757166964

`lcm(5, a(n-1))-1` with `a(0)=1`
-/

namespace A083065.P13674265405757166964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - 1

end

end A083065.P13674265405757166964

namespace A083065

/-- `lcm(5, a(n-1))-1` -/
def P13674265405757166964.Spec : Prop :=
  ∀ n, P13674265405757166964.a n = A083065 n

end A083065

/-! ## A083065.P9208810269072893264

`a(n-1)/(1-4/5)-1` with `a(0)=1`
-/

namespace A083065.P9208810269072893264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - 1

end

end A083065.P9208810269072893264

namespace A083065

/-- `a(n-1)/(1-4/5)-1` -/
def P9208810269072893264.Spec : Prop :=
  ∀ n, P9208810269072893264.a n = (A083065 n : ℚ)

end A083065

/-! ## A083065.P6979931018512239909

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` with `a(0)=1`
-/

namespace A083065.P6979931018512239909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 1))))

end

end A083065.P6979931018512239909

namespace A083065

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` -/
def P6979931018512239909.Spec : Prop :=
  ∀ n, P6979931018512239909.a n = A083065 n

theorem P6979931018512239909.correct : P6979931018512239909.Spec := by
  intro n
  simp only [A083065, Nat.add_sub_cancel, A083065.P6979931018512239909.a, A083065.P6974994007339420009.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083065

/-! ## A083065.P4526551330162957196

`a(n-1)-(1-a(n-1)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A083065.P4526551330162957196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A083065.P4526551330162957196

namespace A083065

/-- `a(n-1)-(1-a(n-1)-a(n-1)-a(n-1)-a(n-1))` -/
def P4526551330162957196.Spec : Prop :=
  ∀ n, P4526551330162957196.a n = A083065 n

theorem P4526551330162957196.correct : P4526551330162957196.Spec := by
  intro n
  simp only [A083065, Nat.add_sub_cancel, A083065.P4526551330162957196.a, A083065.P6974994007339420009.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083065

/-! ## A083065.P3149736056249206699

`∑[A005053(n)]`
-/

namespace A083065.P3149736056249206699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083065.P3149736056249206699

namespace A083065

/-- `∑[A005053(n)]` -/
def P3149736056249206699.Spec : Prop :=
  ∀ n, P3149736056249206699.a n = A083065 n

end A083065

/-! ## A083065.P14279613710496192033

`A125833(n)+1`
-/

namespace A083065.P14279613710496192033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125833 n + 1

end

end A083065.P14279613710496192033

namespace A083065

/-- `A125833(n)+1` -/
def P14279613710496192033.Spec : Prop :=
  ∀ n, P14279613710496192033.a n = A083065 n

end A083065

/-! ## A083065.P7879506740200643571

`∑[A249512(2*n)]`
-/

namespace A083065.P7879506740200643571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249512 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083065.P7879506740200643571

namespace A083065

/-- `∑[A249512(2*n)]` -/
def P7879506740200643571.Spec : Prop :=
  ∀ n, P7879506740200643571.a n = A083065 n

end A083065

/-! ## A083065.P4783843573770594315

`3*A003463(n)+1`
-/

namespace A083065.P4783843573770594315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003463 n + 1

end

end A083065.P4783843573770594315

namespace A083065

/-- `3*A003463(n)+1` -/
def P4783843573770594315.Spec : Prop :=
  ∀ n, P4783843573770594315.a n = A083065 n

end A083065

/-! ## A083065.P9491086050353238599

`A178683(3*n)+1`
-/

namespace A083065.P9491086050353238599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178683 (3 * n) + 1

end

end A083065.P9491086050353238599

namespace A083065

/-- `A178683(3*n)+1` -/
def P9491086050353238599.Spec : Prop :=
  ∀ n, P9491086050353238599.a n = A083065 n

end A083065

/-! ## A083065.P844923268746091934

`3*A047850(n)-2`
-/

namespace A083065.P844923268746091934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047850 n - 2

end

end A083065.P844923268746091934

namespace A083065

/-- `3*A047850(n)-2` -/
def P844923268746091934.Spec : Prop :=
  ∀ n, P844923268746091934.a n = A083065 n

end A083065

/-! ## A083065.P18093261955953850135

`∑{#}[n, C(n, #)*A002001(#)]`
-/

namespace A083065.P18093261955953850135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A002001 k

end

end A083065.P18093261955953850135

namespace A083065

/-- `∑{#}[n, C(n, #)*A002001(#)]` -/
def P18093261955953850135.Spec : Prop :=
  ∀ n, P18093261955953850135.a n = A083065 n

end A083065

/-! ## A083065.P15306367652120896886

`A249512(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A083065.P15306367652120896886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249512 (n + n) + a (n - 1)

end

end A083065.P15306367652120896886

namespace A083065

/-- `A249512(n+n)+a(n-1)` -/
def P15306367652120896886.Spec : Prop :=
  ∀ n, P15306367652120896886.a n = A083065 n

end A083065

/-! ## A083065.P2238353578044586550

`A034478(n)+A003463(n)`
-/

namespace A083065.P2238353578044586550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + A003463 n

end

end A083065.P2238353578044586550

namespace A083065

/-- `A034478(n)+A003463(n)` -/
def P2238353578044586550.Spec : Prop :=
  ∀ n, P2238353578044586550.a n = A083065 n

end A083065

/-! ## A083065.P11198039705210414285

`A000351(n)-A003463(n)`
-/

namespace A083065.P11198039705210414285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A003463 n

end

end A083065.P11198039705210414285

namespace A083065

/-- `A000351(n)-A003463(n)` -/
def P11198039705210414285.Spec : Prop :=
  ∀ n, P11198039705210414285.a n = A083065 n

end A083065

/-! ## A083065.P6508921363069506889

`∑[A005054(n)]-A003463(n)`
-/

namespace A083065.P6508921363069506889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003463 n

end

end A083065.P6508921363069506889

namespace A083065

/-- `∑[A005054(n)]-A003463(n)` -/
def P6508921363069506889.Spec : Prop :=
  ∀ n, P6508921363069506889.a n = A083065 n

end A083065

/-! ## A083065.P6791082497161515274

`A048330(A008574(n)-1)+1`
-/

namespace A083065.P6791082497161515274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048330 (A008574 n - 1).toNat + 1

end

end A083065.P6791082497161515274

namespace A083065

/-- `A048330(A008574(n)-1)+1` -/
def P6791082497161515274.Spec : Prop :=
  ∀ n, P6791082497161515274.a n = A083065 n

end A083065

/-! ## A083065.P5015518150462911904

`A056487(2*n)-A003463(n)`
-/

namespace A083065.P5015518150462911904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (2 * n) - A003463 n

end

end A083065.P5015518150462911904

namespace A083065

/-- `A056487(2*n)-A003463(n)` -/
def P5015518150462911904.Spec : Prop :=
  ∀ n, P5015518150462911904.a n = A083065 n

end A083065

/-!
# A083066: 5th row of number array A083064.

The programs for A083066, the canonical program `A083066.P5310134503661304163` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083066 has offset 0).

The definition of A083066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083066.P17356900833405146100

`ogf((1-2x)/(1-7x+6x^2))`
-/

namespace A083066.P17356900833405146100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -7, 6] n

end

end A083066.P17356900833405146100

namespace A083066

/-- `ogf((1-2x)/(1-7x+6x^2))` -/
def P17356900833405146100.Spec : Prop :=
  ∀ n, P17356900833405146100.a n = A083066 n

end A083066

/-! ## A083066.P5310134503661304163

`6*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083066

/-- `6*a(n-1)-1` -/
def P5310134503661304163.Spec : Prop :=
  ∀ n, P5310134503661304163.a n = A083066 n

theorem P5310134503661304163.correct : P5310134503661304163.Spec := by
  intro n
  simp only [A083066]

end A083066

/-! ## A083066.P16711914598743866987

`(4*6^n+1)/5`
-/

namespace A083066.P16711914598743866987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * 6 ^ n + 1 : ℚ) / 5

end

end A083066.P16711914598743866987

namespace A083066

/-- `(4*6^n+1)/5` -/
def P16711914598743866987.Spec : Prop :=
  ∀ n, P16711914598743866987.a n = (A083066 n : ℚ)

theorem P16711914598743866987.correct : P16711914598743866987.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083066, Nat.add_sub_cancel, A083066.P16711914598743866987.a, A083066.P5310134503661304163.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083066, Nat.add_sub_cancel, A083066.P16711914598743866987.a, A083066.P5310134503661304163.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A083066

/-! ## A083066.P13801473124807478968

`lcm(6, a(n-1))-1` with `a(0)=1`
-/

namespace A083066.P13801473124807478968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 6 (a (n - 1)) : ℤ) - 1

end

end A083066.P13801473124807478968

namespace A083066

/-- `lcm(6, a(n-1))-1` -/
def P13801473124807478968.Spec : Prop :=
  ∀ n, P13801473124807478968.a n = A083066 n

end A083066

/-! ## A083066.P6937082169105651284

`xor(3, a(n-1)/(1-5/6))` with `a(0)=1`
-/

namespace A083066.P6937082169105651284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (5 : ℚ) / 6)))

end

end A083066.P6937082169105651284

namespace A083066

/-- `xor(3, a(n-1)/(1-5/6))` -/
def P6937082169105651284.Spec : Prop :=
  ∀ n, P6937082169105651284.a n = A083066 n

end A083066

/-! ## A083066.P9779126313015505236

`∑[A067411(n)]`
-/

namespace A083066.P9779126313015505236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083066.P9779126313015505236

namespace A083066

/-- `∑[A067411(n)]` -/
def P9779126313015505236.Spec : Prop :=
  ∀ n, P9779126313015505236.a n = A083066 n

end A083066

/-! ## A083066.P15837906401323344474

`floor(A005618(n)/3)`
-/

namespace A083066.P15837906401323344474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005618 n : ℚ) / 3⌋

end

end A083066.P15837906401323344474

namespace A083066

/-- `floor(A005618(n)/3)` -/
def P15837906401323344474.Spec : Prop :=
  ∀ n, P15837906401323344474.a n = A083066 n

end A083066

/-! ## A083066.P17517517366305871513

`∑[A354541(3*n)]`
-/

namespace A083066.P17517517366305871513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354541 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083066.P17517517366305871513

namespace A083066

/-- `∑[A354541(3*n)]` -/
def P17517517366305871513.Spec : Prop :=
  ∀ n, P17517517366305871513.a n = A083066 n

end A083066

/-! ## A083066.P2202551043421723215

`2*A152596(n)-1`
-/

namespace A083066.P2202551043421723215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152596 n - 1

end

end A083066.P2202551043421723215

namespace A083066

/-- `2*A152596(n)-1` -/
def P2202551043421723215.Spec : Prop :=
  ∀ n, P2202551043421723215.a n = A083066 n

end A083066

/-! ## A083066.P7512469929113782705

`4*A003464(n)+1`
-/

namespace A083066.P7512469929113782705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003464 n + 1

end

end A083066.P7512469929113782705

namespace A083066

/-- `4*A003464(n)+1` -/
def P7512469929113782705.Spec : Prop :=
  ∀ n, P7512469929113782705.a n = A083066 n

end A083066

/-! ## A083066.P409046510267517962

`4*A047851(n)-3`
-/

namespace A083066.P409046510267517962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047851 n - 3

end

end A083066.P409046510267517962

namespace A083066

/-- `4*A047851(n)-3` -/
def P409046510267517962.Spec : Prop :=
  ∀ n, P409046510267517962.a n = A083066 n

end A083066

/-! ## A083066.P17078635641146028429

`ceil(A005610(n+1)/3)`
-/

namespace A083066.P17078635641146028429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005610 (n + 1) : ℚ) / 3⌉

end

end A083066.P17078635641146028429

namespace A083066

/-- `ceil(A005610(n+1)/3)` -/
def P17078635641146028429.Spec : Prop :=
  ∀ n, P17078635641146028429.a n = A083066 n

end A083066

/-! ## A083066.P15823932861565301905

`∑[2*A167747(n)]-1`
-/

namespace A083066.P15823932861565301905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A083066.P15823932861565301905

namespace A083066

/-- `∑[2*A167747(n)]-1` -/
def P15823932861565301905.Spec : Prop :=
  ∀ n, P15823932861565301905.a n = A083066 n

end A083066

/-! ## A083066.P3128737797505571277

`ceil(∑[2*A000400(n)]/3)`
-/

namespace A083066.P3128737797505571277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A083066.P3128737797505571277

namespace A083066

/-- `ceil(∑[2*A000400(n)]/3)` -/
def P3128737797505571277.Spec : Prop :=
  ∀ n, P3128737797505571277.a n = A083066 n

end A083066

/-! ## A083066.P3474403934976702832

`∑{#}[n, C(n, #)*A005054(#)]`
-/

namespace A083066.P3474403934976702832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A005054 k

end

end A083066.P3474403934976702832

namespace A083066

/-- `∑{#}[n, C(n, #)*A005054(#)]` -/
def P3474403934976702832.Spec : Prop :=
  ∀ n, P3474403934976702832.a n = A083066 n

end A083066

/-! ## A083066.P17843324672406051052

`2*A329115(2*(n+1))+1`
-/

namespace A083066.P17843324672406051052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329115 (2 * (n + 1)) + 1

end

end A083066.P17843324672406051052

namespace A083066

/-- `2*A329115(2*(n+1))+1` -/
def P17843324672406051052.Spec : Prop :=
  ∀ n, P17843324672406051052.a n = A083066 n

end A083066

/-! ## A083066.P6149427484981513199

`∑{#}[n+1, C(n+1, #)*A123010(#+1)]`
-/

namespace A083066.P6149427484981513199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A123010 (k + 1)

end

end A083066.P6149427484981513199

namespace A083066

/-- `∑{#}[n+1, C(n+1, #)*A123010(#+1)]` -/
def P6149427484981513199.Spec : Prop :=
  ∀ n, P6149427484981513199.a n = A083066 n

end A083066

/-! ## A083066.P11699044492222001717

`A000400(n)-A003464(n)`
-/

namespace A083066.P11699044492222001717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - A003464 n

end

end A083066.P11699044492222001717

namespace A083066

/-- `A000400(n)-A003464(n)` -/
def P11699044492222001717.Spec : Prop :=
  ∀ n, P11699044492222001717.a n = A083066 n

end A083066

/-! ## A083066.P13658225321160437160

`A074601(n)-∑[A092807(n)]`
-/

namespace A083066.P13658225321160437160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074601 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083066.P13658225321160437160

namespace A083066

/-- `A074601(n)-∑[A092807(n)]` -/
def P13658225321160437160.Spec : Prop :=
  ∀ n, P13658225321160437160.a n = A083066 n

end A083066

/-! ## A083066.P3610979073000395761

`∑[A016129(n)]-A248216(n)`
-/

namespace A083066.P3610979073000395761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A248216 n

end

end A083066.P3610979073000395761

namespace A083066

/-- `∑[A016129(n)]-A248216(n)` -/
def P3610979073000395761.Spec : Prop :=
  ∀ n, P3610979073000395761.a n = A083066 n

end A083066

/-!
# A083067: 6th row of number array A083064.

The programs for A083067, the canonical program `A083067.P5740607754180906809` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083067 has offset 0).

The definition of A083067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083067.P7768449043384999352

`ogf((1-2x)/(1-8x+7x^2))`
-/

namespace A083067.P7768449043384999352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -8, 7] n

end

end A083067.P7768449043384999352

namespace A083067

/-- `ogf((1-2x)/(1-8x+7x^2))` -/
def P7768449043384999352.Spec : Prop :=
  ∀ n, P7768449043384999352.a n = A083067 n

end A083067

/-! ## A083067.P5740607754180906809

`7*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083067

/-- `7*a(n-1)-1` -/
def P5740607754180906809.Spec : Prop :=
  ∀ n, P5740607754180906809.a n = A083067 n

theorem P5740607754180906809.correct : P5740607754180906809.Spec := by
  intro n
  simp only [A083067]

end A083067

/-! ## A083067.P5605043877741653260

`(5*7^n+1)/6`
-/

namespace A083067.P5605043877741653260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 7 ^ n + 1 : ℚ) / 6

end

end A083067.P5605043877741653260

namespace A083067

/-- `(5*7^n+1)/6` -/
def P5605043877741653260.Spec : Prop :=
  ∀ n, P5605043877741653260.a n = (A083067 n : ℚ)

theorem P5605043877741653260.correct : P5605043877741653260.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083067, Nat.add_sub_cancel, A083067.P5605043877741653260.a, A083067.P5740607754180906809.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083067, Nat.add_sub_cancel, A083067.P5605043877741653260.a, A083067.P5740607754180906809.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A083067

/-! ## A083067.P2106340372390234606

`record[7*T(n-1,k-1)-1]` with `a(0)=1`
-/

namespace A083067.P2106340372390234606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * SequenceMachineLib.triUpLeft f1 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083067.P2106340372390234606

namespace A083067

/-- `record[7*T(n-1,k-1)-1]` -/
def P2106340372390234606.Spec : Prop :=
  ∀ n, P2106340372390234606.a n = A083067 n

end A083067

/-! ## A083067.P511064227345789140

`lcm(7, a(n-1))-1` with `a(0)=1`
-/

namespace A083067.P511064227345789140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 1

end

end A083067.P511064227345789140

namespace A083067

/-- `lcm(7, a(n-1))-1` -/
def P511064227345789140.Spec : Prop :=
  ∀ n, P511064227345789140.a n = A083067 n

end A083067

/-! ## A083067.P242414303284614621

`a(n-1)/(1-6/7)-1` with `a(0)=1`
-/

namespace A083067.P242414303284614621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7) - 1

end

end A083067.P242414303284614621

namespace A083067

/-- `a(n-1)/(1-6/7)-1` -/
def P242414303284614621.Spec : Prop :=
  ∀ n, P242414303284614621.a n = (A083067 n : ℚ)

end A083067

/-! ## A083067.P13618423607746010675

`∑[A196661(n)]`
-/

namespace A083067.P13618423607746010675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083067.P13618423607746010675

namespace A083067

/-- `∑[A196661(n)]` -/
def P13618423607746010675.Spec : Prop :=
  ∀ n, P13618423607746010675.a n = A083067 n

end A083067

/-! ## A083067.P16716027581114223150

`A125729(n+1)+1`
-/

namespace A083067.P16716027581114223150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125729 (n + 1) + 1

end

end A083067.P16716027581114223150

namespace A083067

/-- `A125729(n+1)+1` -/
def P16716027581114223150.Spec : Prop :=
  ∀ n, P16716027581114223150.a n = A083067 n

end A083067

/-! ## A083067.P17707165082035223240

`5*A023000(n)+1`
-/

namespace A083067.P17707165082035223240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A023000 n + 1

end

end A083067.P17707165082035223240

namespace A083067

/-- `5*A023000(n)+1` -/
def P17707165082035223240.Spec : Prop :=
  ∀ n, P17707165082035223240.a n = A083067 n

end A083067

/-! ## A083067.P2113129883416415056

`5*A047852(n)-4`
-/

namespace A083067.P2113129883416415056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A047852 n - 4

end

end A083067.P2113129883416415056

namespace A083067

/-- `5*A047852(n)-4` -/
def P2113129883416415056.Spec : Prop :=
  ∀ n, P2113129883416415056.a n = A083067 n

end A083067

/-! ## A083067.P1340702125437822643

`A199489(n)-7^n`
-/

namespace A083067.P1340702125437822643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199489 n - (7 ^ n : ℤ)

end

end A083067.P1340702125437822643

namespace A083067

/-- `A199489(n)-7^n` -/
def P1340702125437822643.Spec : Prop :=
  ∀ n, P1340702125437822643.a n = A083067 n

end A083067

/-! ## A083067.P15621972365201200999

`record[-A152861(n+2)]`
-/

namespace A083067.P15621972365201200999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A152861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083067.P15621972365201200999

namespace A083067

/-- `record[-A152861(n+2)]` -/
def P15621972365201200999.Spec : Prop :=
  ∀ n, P15621972365201200999.a n = A083067 n

end A083067

/-! ## A083067.P2287473005781496150

`∑{#}[n, C(n, #)*A052934(#)]`
-/

namespace A083067.P2287473005781496150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A052934 k

end

end A083067.P2287473005781496150

namespace A083067

/-- `∑{#}[n, C(n, #)*A052934(#)]` -/
def P2287473005781496150.Spec : Prop :=
  ∀ n, P2287473005781496150.a n = A083067 n

end A083067

/-! ## A083067.P11107022399668437667

`A083076(n)+A023000(n)`
-/

namespace A083067.P11107022399668437667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n + A023000 n

end

end A083067.P11107022399668437667

namespace A083067

/-- `A083076(n)+A023000(n)` -/
def P11107022399668437667.Spec : Prop :=
  ∀ n, P11107022399668437667.a n = A083067 n

end A083067

/-! ## A083067.P2490446010727330081

`A000420(n)-A023000(n)`
-/

namespace A083067.P2490446010727330081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - A023000 n

end

end A083067.P2490446010727330081

namespace A083067

/-- `A000420(n)-A023000(n)` -/
def P2490446010727330081.Spec : Prop :=
  ∀ n, P2490446010727330081.a n = A083067 n

end A083067

/-! ## A083067.P2465427964260972465

`A199417(n)-A083076(n)`
-/

namespace A083067.P2465427964260972465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n - A083076 n

end

end A083067.P2465427964260972465

namespace A083067

/-- `A199417(n)-A083076(n)` -/
def P2465427964260972465.Spec : Prop :=
  ∀ n, P2465427964260972465.a n = A083067 n

end A083067

/-! ## A083067.P2542718907688793533

`A023000(n)+∑[A270471(n)]`
-/

namespace A083067.P2542718907688793533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083067.P2542718907688793533

namespace A083067

/-- `A023000(n)+∑[A270471(n)]` -/
def P2542718907688793533.Spec : Prop :=
  ∀ n, P2542718907688793533.a n = A083067 n

end A083067

/-! ## A083067.P7691235746631884341

`∑[A055272(n)]-A023000(n)`
-/

namespace A083067.P7691235746631884341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023000 n

end

end A083067.P7691235746631884341

namespace A083067

/-- `∑[A055272(n)]-A023000(n)` -/
def P7691235746631884341.Spec : Prop :=
  ∀ n, P7691235746631884341.a n = A083067 n

end A083067

/-! ## A083067.P9946079294049668460

`A024075(n)+1-A023000(n)`
-/

namespace A083067.P9946079294049668460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n + (1 - A023000 n)

end

end A083067.P9946079294049668460

namespace A083067

/-- `A024075(n)+1-A023000(n)` -/
def P9946079294049668460.Spec : Prop :=
  ∀ n, P9946079294049668460.a n = A083067 n

end A083067

/-! ## A083067.P6734833287039362140

`A125823(n+1)+A023000(n)+1`
-/

namespace A083067.P6734833287039362140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125823 (n + 1) + (A023000 n + 1)

end

end A083067.P6734833287039362140

namespace A083067

/-- `A125823(n+1)+A023000(n)+1` -/
def P6734833287039362140.Spec : Prop :=
  ∀ n, P6734833287039362140.a n = A083067 n

end A083067

/-!
# A083068: 7th row of number array A083064.

The programs for A083068, the canonical program `A083068.P6305258557678750166` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083068 has offset 0).

The definition of A083068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083068.P6305258557678750166

`8*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083068

/-- `8*a(n-1)-1` -/
def P6305258557678750166.Spec : Prop :=
  ∀ n, P6305258557678750166.a n = A083068 n

theorem P6305258557678750166.correct : P6305258557678750166.Spec := by
  intro n
  simp only [A083068]

end A083068

/-! ## A083068.P8206974839854830562

`1+A125837(n)`
-/

namespace A083068.P8206974839854830562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A125837 n

end

end A083068.P8206974839854830562

namespace A083068

/-- `1+A125837(n)` -/
def P8206974839854830562.Spec : Prop :=
  ∀ n, P8206974839854830562.a n = A083068 n

end A083068

/-! ## A083068.P17607272017885896434

`(6*8^n+1)/7`
-/

namespace A083068.P17607272017885896434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * 8 ^ n + 1 : ℚ) / 7

end

end A083068.P17607272017885896434

namespace A083068

/-- `(6*8^n+1)/7` -/
def P17607272017885896434.Spec : Prop :=
  ∀ n, P17607272017885896434.a n = (A083068 n : ℚ)

theorem P17607272017885896434.correct : P17607272017885896434.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083068, Nat.add_sub_cancel, A083068.P17607272017885896434.a, A083068.P6305258557678750166.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083068, Nat.add_sub_cancel, A083068.P17607272017885896434.a, A083068.P6305258557678750166.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A083068

/-! ## A083068.P14089145504774216833

`ogf((1-2x)/(1-9x+8x^2))`
-/

namespace A083068.P14089145504774216833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -9, 8] n

end

end A083068.P14089145504774216833

namespace A083068

/-- `ogf((1-2x)/(1-9x+8x^2))` -/
def P14089145504774216833.Spec : Prop :=
  ∀ n, P14089145504774216833.a n = A083068 n

end A083068

/-! ## A083068.P1738101964157763720

`lcm(8, a(n-1))-1` with `a(0)=1`
-/

namespace A083068.P1738101964157763720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 8 (a (n - 1)) : ℤ) - 1

end

end A083068.P1738101964157763720

namespace A083068

/-- `lcm(8, a(n-1))-1` -/
def P1738101964157763720.Spec : Prop :=
  ∀ n, P1738101964157763720.a n = A083068 n

end A083068

/-! ## A083068.P6136468060304521937

`a(n-1)/(1/2)^3-1` with `a(0)=1`
-/

namespace A083068.P6136468060304521937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 - 1

end

end A083068.P6136468060304521937

namespace A083068

/-- `a(n-1)/(1/2)^3-1` -/
def P6136468060304521937.Spec : Prop :=
  ∀ n, P6136468060304521937.a n = (A083068 n : ℚ)

end A083068

/-! ## A083068.P16470822943572318428

`∑[A083233(n)]`
-/

namespace A083068.P16470822943572318428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083068.P16470822943572318428

namespace A083068

/-- `∑[A083233(n)]` -/
def P16470822943572318428.Spec : Prop :=
  ∀ n, P16470822943572318428.a n = A083068 n

end A083068

/-! ## A083068.P12656069279160021578

`A057744(3*n)`
-/

namespace A083068.P12656069279160021578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057744 (3 * n)

end

end A083068.P12656069279160021578

namespace A083068

/-- `A057744(3*n)` -/
def P12656069279160021578.Spec : Prop :=
  ∀ n, P12656069279160021578.a n = A083068 n

end A083068

/-! ## A083068.P306132670596021273

`A299913(Δ[n²])`
-/

namespace A083068.P306132670596021273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A083068.P306132670596021273

namespace A083068

/-- `A299913(Δ[n²])` -/
def P306132670596021273.Spec : Prop :=
  ∀ n, P306132670596021273.a n = A083068 n

end A083068

/-! ## A083068.P12469577249606647960

`record[∑[A094014(n)]]`
-/

namespace A083068.P12469577249606647960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083068.P12469577249606647960

namespace A083068

/-- `record[∑[A094014(n)]]` -/
def P12469577249606647960.Spec : Prop :=
  ∀ n, P12469577249606647960.a n = A083068 n

end A083068

/-! ## A083068.P13097954307548055736

`∑[A111286(3*n)]`
-/

namespace A083068.P13097954307548055736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083068.P13097954307548055736

namespace A083068

/-- `∑[A111286(3*n)]` -/
def P13097954307548055736.Spec : Prop :=
  ∀ n, P13097954307548055736.a n = A083068 n

end A083068

/-! ## A083068.P12347006677954871658

`2*A083713(n)+1`
-/

namespace A083068.P12347006677954871658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083713 n + 1

end

end A083068.P12347006677954871658

namespace A083068

/-- `2*A083713(n)+1` -/
def P12347006677954871658.Spec : Prop :=
  ∀ n, P12347006677954871658.a n = A083068 n

end A083068

/-! ## A083068.P5417622227041958456

`A033129(3*n)+1`
-/

namespace A083068.P5417622227041958456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 (3 * n) + 1

end

end A083068.P5417622227041958456

namespace A083068

/-- `A033129(3*n)+1` -/
def P5417622227041958456.Spec : Prop :=
  ∀ n, P5417622227041958456.a n = A083068 n

end A083068

/-! ## A083068.P14161971569434863122

`A122552(3*n+1)`
-/

namespace A083068.P14161971569434863122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 (3 * n + 1)

end

end A083068.P14161971569434863122

namespace A083068

/-- `A122552(3*n+1)` -/
def P14161971569434863122.Spec : Prop :=
  ∀ n, P14161971569434863122.a n = A083068 n

end A083068

/-! ## A083068.P12654853600842461333

`A294627(3*n+1)`
-/

namespace A083068.P12654853600842461333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294627 (3 * n + 1)

end

end A083068.P12654853600842461333

namespace A083068

/-- `A294627(3*n+1)` -/
def P12654853600842461333.Spec : Prop :=
  ∀ n, P12654853600842461333.a n = A083068 n

end A083068

/-! ## A083068.P6946187399919056603

`6*A023001(n)+1`
-/

namespace A083068.P6946187399919056603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A023001 n + 1

end

end A083068.P6946187399919056603

namespace A083068

/-- `6*A023001(n)+1` -/
def P6946187399919056603.Spec : Prop :=
  ∀ n, P6946187399919056603.a n = A083068 n

end A083068

/-! ## A083068.P7168995960649906576

`A273050(Δ[n²])+1`
-/

namespace A083068.P7168995960649906576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A083068.P7168995960649906576

namespace A083068

/-- `A273050(Δ[n²])+1` -/
def P7168995960649906576.Spec : Prop :=
  ∀ n, P7168995960649906576.a n = A083068 n

end A083068

/-! ## A083068.P16686835160124906446

`∑[2*A103333(n)]-1`
-/

namespace A083068.P16686835160124906446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A083068.P16686835160124906446

namespace A083068

/-- `∑[2*A103333(n)]-1` -/
def P16686835160124906446.Spec : Prop :=
  ∀ n, P16686835160124906446.a n = A083068 n

end A083068

/-! ## A083068.P3426761535198718805

`3*A125835(n+1)+1`
-/

namespace A083068.P3426761535198718805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A125835 (n + 1) + 1

end

end A083068.P3426761535198718805

namespace A083068

/-- `3*A125835(n+1)+1` -/
def P3426761535198718805.Spec : Prop :=
  ∀ n, P3426761535198718805.a n = A083068 n

end A083068

/-! ## A083068.P3047792791546492727

`A023001(n+1)-A125835(n+1)`
-/

namespace A083068.P3047792791546492727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 (n + 1) - A125835 (n + 1)

end

end A083068.P3047792791546492727

namespace A083068

/-- `A023001(n+1)-A125835(n+1)` -/
def P3047792791546492727.Spec : Prop :=
  ∀ n, P3047792791546492727.a n = A083068 n

end A083068

/-!
# A083069: Main diagonal of number array A083064.

The programs for A083069, the canonical program `A083069.P12968474162012729806` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083069 has offset 0).

The definition of A083069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083069.P12968474162012729806

`(n*(n+2)^n+1)/(n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083069

/-- `(n*(n+2)^n+1)/(n+1)` -/
def P12968474162012729806.Spec : Prop :=
  ∀ n, P12968474162012729806.a n = (A083069 n : ℚ)

end A083069

/-! ## A083069.P18191927196057062981

`1+A125598(n+1)*n`
-/

namespace A083069.P18191927196057062981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A125598 (n + 1) * (n : ℤ)

end

end A083069.P18191927196057062981

namespace A083069

/-- `1+A125598(n+1)*n` -/
def P18191927196057062981.Spec : Prop :=
  ∀ n, P18191927196057062981.a n = A083069 n

end A083069

/-! ## A083069.P14238451217559160039

`record[A232006(n)]-A125598(n+1)`
-/

namespace A083069.P14238451217559160039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A125598 (n + 1)

end

end A083069.P14238451217559160039

namespace A083069

/-- `record[A232006(n)]-A125598(n+1)` -/
def P14238451217559160039.Spec : Prop :=
  ∀ n, P14238451217559160039.a n = A083069 n

end A083069

/-! ## A083069.P15300302402644446340

`A000272(n+2)-A125598(n+1)`
-/

namespace A083069.P15300302402644446340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 2) - A125598 (n + 1)

end

end A083069.P15300302402644446340

namespace A083069

/-- `A000272(n+2)-A125598(n+1)` -/
def P15300302402644446340.Spec : Prop :=
  ∀ n, P15300302402644446340.a n = A083069 n

end A083069

/-! ## A083069.P18406404256603366892

`record[A232006(n)]-floor(A060072(n+2)/(n+2))`
-/

namespace A083069.P18406404256603366892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ⌊(A060072 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A083069.P18406404256603366892

namespace A083069

/-- `record[A232006(n)]-floor(A060072(n+2)/(n+2))` -/
def P18406404256603366892.Spec : Prop :=
  ∀ n, P18406404256603366892.a n = A083069 n

end A083069

/-! ## A083069.P10944024513984895382

`ceil(A083070(n+1)/(n+2))`
-/

namespace A083069.P10944024513984895382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083070 (n + 1) : ℚ) / (n + 2 : ℚ)⌉

end

end A083069.P10944024513984895382

namespace A083069

/-- `ceil(A083070(n+1)/(n+2))` -/
def P10944024513984895382.Spec : Prop :=
  ∀ n, P10944024513984895382.a n = A083069 n

end A083069

/-!
# A083070: First superdiagonal of number array A083064.

The programs for A083070, the canonical program `A083070.P11494677024799877221` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083070 has offset 1).

The definition of A083070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083070.P11494677024799877221

`(n*(n+2)^(n+1)+1)/(n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083070

/-- `(n*(n+2)^(n+1)+1)/(n+1)` -/
def P11494677024799877221.Spec : Prop :=
  ∀ n, P11494677024799877221.a n = (A083070 (n + 1) : ℚ)

end A083070

/-! ## A083070.P14045602364052872926

`A060072(n+2)*n+1`
-/

namespace A083070.P14045602364052872926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060072 (n + 2) * (n : ℤ) + 1

end

end A083070.P14045602364052872926

namespace A083070

/-- `A060072(n+2)*n+1` -/
def P14045602364052872926.Spec : Prop :=
  ∀ n, P14045602364052872926.a n = A083070 (n + 1)

end A083070

/-! ## A083070.P5767328349089809690

`A083069(n)*(n+2)-1`
-/

namespace A083070.P5767328349089809690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083069 n * (n + 2 : ℤ) - 1

end

end A083070.P5767328349089809690

namespace A083070

/-- `A083069(n)*(n+2)-1` -/
def P5767328349089809690.Spec : Prop :=
  ∀ n, P5767328349089809690.a n = A083070 (n + 1)

end A083070

/-! ## A083070.P4810784347192280020

`A051846(n+1)-A370671(n+2)`
-/

namespace A083070.P4810784347192280020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051846 (n + 1) - A370671 (n + 2)

end

end A083070.P4810784347192280020

namespace A083070

/-- `A051846(n+1)-A370671(n+2)` -/
def P4810784347192280020.Spec : Prop :=
  ∀ n, P4810784347192280020.a n = A083070 (n + 1)

end A083070

/-! ## A083070.P17477386197401366553

`A000169(n+2)-A060072(n+2)`
-/

namespace A083070.P17477386197401366553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 2) - A060072 (n + 2)

end

end A083070.P17477386197401366553

namespace A083070

/-- `A000169(n+2)-A060072(n+2)` -/
def P17477386197401366553.Spec : Prop :=
  ∀ n, P17477386197401366553.a n = A083070 (n + 1)

end A083070

/-! ## A083070.P1708100475783769113

`A037205(n+1)+1-A060072(n+2)`
-/

namespace A083070.P1708100475783769113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037205 (n + 1) + (1 - A060072 (n + 2))

end

end A083070.P1708100475783769113

namespace A083070

/-- `A037205(n+1)+1-A060072(n+2)` -/
def P1708100475783769113.Spec : Prop :=
  ∀ n, P1708100475783769113.a n = A083070 (n + 1)

end A083070

/-! ## A083070.P11277274640398492655

`ceil(A191690(n+2)/(n+2))`
-/

namespace A083070.P11277274640398492655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191690 (n + 2) : ℚ) / (n + 2 : ℚ)⌉

end

end A083070.P11277274640398492655

namespace A083070

/-- `ceil(A191690(n+2)/(n+2))` -/
def P11277274640398492655.Spec : Prop :=
  ∀ n, P11277274640398492655.a n = A083070 (n + 1)

end A083070

/-! ## A083070.P15366958816945431347

`A191690(n+2)-n*A000169(n+2)`
-/

namespace A083070.P15366958816945431347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191690 (n + 2) - (n : ℤ) * A000169 (n + 2)

end

end A083070.P15366958816945431347

namespace A083070

/-- `A191690(n+2)-n*A000169(n+2)` -/
def P15366958816945431347.Spec : Prop :=
  ∀ n, P15366958816945431347.a n = A083070 (n + 1)

end A083070

/-!
# A083071: First subdiagonal of number array A083064.

The programs for A083071, the canonical program `A083071.P3643450803609442591` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083071 has offset 0).

The definition of A083071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083071.P3643450803609442591

`((n+1)*(n+3)^n+1)/(n+2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083071

/-- `((n+1)*(n+3)^n+1)/(n+2)` -/
def P3643450803609442591.Spec : Prop :=
  ∀ n, P3643450803609442591.a n = (A083071 n : ℚ)

end A083071

/-! ## A083071.P15839941924554867874

`(1+n)*A196793(n)-n`
-/

namespace A083071.P15839941924554867874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A196793 n - (n : ℤ)

end

end A083071.P15839941924554867874

namespace A083071

/-- `(1+n)*A196793(n)-n` -/
def P15839941924554867874.Spec : Prop :=
  ∀ n, P15839941924554867874.a n = A083071 n

end A083071

/-! ## A083071.P11016814722101186883

`A083064(A056220(n+1))`
-/

namespace A083071.P11016814722101186883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083064 (A056220 (n + 1)).toNat

end

end A083071.P11016814722101186883

namespace A083071

/-- `A083064(A056220(n+1))` -/
def P11016814722101186883.Spec : Prop :=
  ∀ n, P11016814722101186883.a n = A083071 n

end A083071

/-! ## A083071.P4719783842470904793

`A083064(A054000(n+1)+1)`
-/

namespace A083071.P4719783842470904793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083064 (A054000 (n + 1) + 1).toNat

end

end A083071.P4719783842470904793

namespace A083071

/-- `A083064(A054000(n+1)+1)` -/
def P4719783842470904793.Spec : Prop :=
  ∀ n, P4719783842470904793.a n = A083071 n

end A083071

/-! ## A083071.P6636114992182233772

`A083064(A028387(n)+A002378(n))`
-/

namespace A083071.P6636114992182233772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083064 (A028387 n + A002378 n).toNat

end

end A083071.P6636114992182233772

namespace A083071

/-- `A083064(A028387(n)+A002378(n))` -/
def P6636114992182233772.Spec : Prop :=
  ∀ n, P6636114992182233772.a n = A083071 n

end A083071

/-!
# A083072: A subdiagonal of number array A083064.

The programs for A083072, the canonical program `A083072.P18280841056130460034` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083072 has offset 0).

The definition of A083072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083072.P18280841056130460034

`((n+2)*(n+4)^n+1)/(n+3)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083072

/-- `((n+2)*(n+4)^n+1)/(n+3)` -/
def P18280841056130460034.Spec : Prop :=
  ∀ n, P18280841056130460034.a n = (A083072 n : ℚ)

end A083072

/-! ## A083072.P17797975801748078522

`ceil(A065888(n+4)/((n+1)*(n+3)²))`
-/

namespace A083072.P17797975801748078522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065888 (n + 4) : ℚ) / ((n + 1) * (n + 3) ^ 2 : ℚ)⌉

end

end A083072.P17797975801748078522

namespace A083072

/-- `ceil(A065888(n+4)/((n+1)*(n+3)²))` -/
def P17797975801748078522.Spec : Prop :=
  ∀ n, P17797975801748078522.a n = A083072 n

end A083072

/-! ## A083072.P11509890077101160020

`A083064(A132209(n+1))`
-/

namespace A083072.P11509890077101160020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083064 (A132209 (n + 1)).toNat

end

end A083072.P11509890077101160020

namespace A083072

/-- `A083064(A132209(n+1))` -/
def P11509890077101160020.Spec : Prop :=
  ∀ n, P11509890077101160020.a n = A083072 n

end A083072

/-! ## A083072.P17463118684406481882

`A083064(A142463(n+1))`
-/

namespace A083072.P17463118684406481882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083064 (A142463 (n + 1)).toNat

end

end A083072.P17463118684406481882

namespace A083072

/-- `A083064(A142463(n+1))` -/
def P17463118684406481882.Spec : Prop :=
  ∀ n, P17463118684406481882.a n = A083072 n

end A083072

/-! ## A083072.P6285851788441592189

`A083064(2*A028387(n)+1)`
-/

namespace A083072.P6285851788441592189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083064 (2 * A028387 n + 1).toNat

end

end A083072.P6285851788441592189

namespace A083072

/-- `A083064(2*A028387(n)+1)` -/
def P6285851788441592189.Spec : Prop :=
  ∀ n, P6285851788441592189.a n = A083072 n

end A083072

/-!
# A083073: A subdiagonal of number array A083064.

The programs for A083073, the canonical program `A083073.P3423650037782562540` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083073 has offset 0).

The definition of A083073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083073.P3423650037782562540

`((n+3)*(n+5)^n+1)/(n+4)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083073

/-- `((n+3)*(n+5)^n+1)/(n+4)` -/
def P3423650037782562540.Spec : Prop :=
  ∀ n, P3423650037782562540.a n = (A083073 n : ℚ)

end A083073

/-! ## A083073.P18120429575694466415

`ceil(A083072(n+1)/(n+5))`
-/

namespace A083073.P18120429575694466415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083072 (n + 1) : ℚ) / (n + 5 : ℚ)⌉

end

end A083073.P18120429575694466415

namespace A083073

/-- `ceil(A083072(n+1)/(n+5))` -/
def P18120429575694466415.Spec : Prop :=
  ∀ n, P18120429575694466415.a n = A083073 n

end A083073

/-! ## A083073.P11529780442345353641

`A083064((n+1)*2*(n+3))`
-/

namespace A083073.P11529780442345353641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083064 ((n + 1) * (2 * (n + 3)))

end

end A083073.P11529780442345353641

namespace A083073

/-- `A083064((n+1)*2*(n+3))` -/
def P11529780442345353641.Spec : Prop :=
  ∀ n, P11529780442345353641.a n = A083073 n

end A083073

/-! ## A083073.P2108564213375321996

`or(1, A083064(A054000(n+2)))`
-/

namespace A083073.P2108564213375321996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A083064 (A054000 (n + 2)).toNat)

end

end A083073.P2108564213375321996

namespace A083073

/-- `or(1, A083064(A054000(n+2)))` -/
def P2108564213375321996.Spec : Prop :=
  ∀ n, P2108564213375321996.a n = A083073 n

end A083073

/-!
# A083074: a(n) = n^3 - n^2 - n - 1.

The programs for A083074, the canonical program `A083074.P14700976878568610308` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083074 has offset 0).

The definition of A083074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-n²-n-1` (program `A083074.P14700976878568610308`, by `A083074.P14700976878568610308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083074.P14700976878568610308

`n^3-n²-n-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083074

/-- `n^3-n²-n-1` -/
def P14700976878568610308.Spec : Prop :=
  ∀ n, P14700976878568610308.a n = A083074 n

theorem P14700976878568610308.correct : P14700976878568610308.Spec := by
  intro n
  simp only [A083074]

end A083074

/-! ## A083074.P925787201506531664

`ogf((-1+2x+3x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A083074.P925787201506531664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, 3, 2] [1, -4, 6, -4, 1] n

end

end A083074.P925787201506531664

namespace A083074

/-- `ogf((-1+2x+3x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P925787201506531664.Spec : Prop :=
  ∀ n, P925787201506531664.a n = A083074 n

end A083074

/-! ## A083074.P3768384381002492420

`∑[∑[a(n-1)+6]]` with `a(0)=-1, a(1)=0, a(2)=4`
-/

namespace A083074.P3768384381002492420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 4] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083074.P3768384381002492420

namespace A083074

/-- `∑[∑[a(n-1)+6]]` -/
def P3768384381002492420.Spec : Prop :=
  ∀ n, P3768384381002492420.a n = A083074 n

end A083074

/-! ## A083074.P1568245326023490770

`floor(lcm(n-1, n²)+ϕ-(n+2))`
-/

namespace A083074.P1568245326023490770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℝ) + (Real.goldenRatio - (n + 2 : ℝ))⌋

end

end A083074.P1568245326023490770

namespace A083074

/-- `floor(lcm(n-1, n²)+ϕ-(n+2))` -/
def P1568245326023490770.Spec : Prop :=
  ∀ n, P1568245326023490770.a n = A083074 n

end A083074

/-! ## A083074.P15962052256761643831

`∑{#}[1, A152015(C(n, #))]`
-/

namespace A083074.P15962052256761643831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A152015 (Nat.choose n k)

end

end A083074.P15962052256761643831

namespace A083074

/-- `∑{#}[1, A152015(C(n, #))]` -/
def P15962052256761643831.Spec : Prop :=
  ∀ n, P15962052256761643831.a n = A083074 n

end A083074

/-! ## A083074.P6564979929224299713

`round(A045991(n)-(n-log2(1/2)))`
-/

namespace A083074.P6564979929224299713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045991 n : ℝ) - ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)))

end

end A083074.P6564979929224299713

namespace A083074

/-- `round(A045991(n)-(n-log2(1/2)))` -/
def P6564979929224299713.Spec : Prop :=
  ∀ n, P6564979929224299713.a n = A083074 n

end A083074

/-! ## A083074.P1831368828486310178

`ceil(n^4/(n+1)-A005408(n))`
-/

namespace A083074.P1831368828486310178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 4 : ℚ) / (n + 1 : ℚ) - (A005408 n : ℚ)⌉

end

end A083074.P1831368828486310178

namespace A083074

/-- `ceil(n^4/(n+1)-A005408(n))` -/
def P1831368828486310178.Spec : Prop :=
  ∀ n, P1831368828486310178.a n = A083074 n

end A083074

/-! ## A083074.P6086650630512943420

`∑[round(3*n/acot(n))-A008706(n)]`
-/

namespace A083074.P6086650630512943420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ))) - A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083074.P6086650630512943420

namespace A083074

/-- `∑[round(3*n/acot(n))-A008706(n)]` -/
def P6086650630512943420.Spec : Prop :=
  ∀ n, P6086650630512943420.a n = A083074 n

end A083074

/-! ## A083074.P12259903890786200178

`∑{#}[n, (C(#, n)+2*n)*(#-1)]`
-/

namespace A083074.P12259903890786200178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose k n + 2 * n : ℤ) * ((k : ℤ) - 1)

end

end A083074.P12259903890786200178

namespace A083074

/-- `∑{#}[n, (C(#, n)+2*n)*(#-1)]` -/
def P12259903890786200178.Spec : Prop :=
  ∀ n, P12259903890786200178.a n = A083074 n

end A083074

/-!
# A083075: Square array read by antidiagonals: T(n,k) = (k*(2*k+3)^n + 1)/(k+1).

The programs for A083075, the canonical program `A083075.P6091674031568569074` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083075 has offset 0).

The definition of A083075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083075.P6091674031568569074

`((row(n)-col(n))*(2*(row(n)-col(n))+3)^col(n)+1)/(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083075

/-- `((row(n)-col(n))*(2*(row(n)-col(n))+3)^col(n)+1)/(row(n)-col(n)+1)` -/
def P6091674031568569074.Spec : Prop :=
  ∀ n, P6091674031568569074.a n = (A083075 n : ℚ)

end A083075

/-! ## A083075.P6646667355421173451

`A335333(n)+A088194(A294950(n))`
-/

namespace A083075.P6646667355421173451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 n + A088194 (A294950 n).toNat

end

end A083075.P6646667355421173451

namespace A083075

/-- `A335333(n)+A088194(A294950(n))` -/
def P6646667355421173451.Spec : Prop :=
  ∀ n, P6646667355421173451.a n = A083075 n

end A083075

/-! ## A083075.P18405183356240941165

`A335333(n)+A111829(A299905(n))`
-/

namespace A083075.P18405183356240941165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 n + A111829 (A299905 n).toNat

end

end A083075.P18405183356240941165

namespace A083075

/-- `A335333(n)+A111829(A299905(n))` -/
def P18405183356240941165.Spec : Prop :=
  ∀ n, P18405183356240941165.a n = A083075 n

end A083075

/-! ## A083075.P17418961021080839898

`and(A191151(A004731(n)), A335333(n))`
-/

namespace A083075.P17418961021080839898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A191151 (A004731 n).toNat) (A335333 n)

end

end A083075.P17418961021080839898

namespace A083075

/-- `and(A191151(A004731(n)), A335333(n))` -/
def P17418961021080839898.Spec : Prop :=
  ∀ n, P17418961021080839898.a n = A083075 n

end A083075

/-! ## A083075.P12477382361870042299

`and(A139832(A174678(n)), A335333(n))`
-/

namespace A083075.P12477382361870042299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139832 (A174678 n).toNat) (A335333 n)

end

end A083075.P12477382361870042299

namespace A083075

/-- `and(A139832(A174678(n)), A335333(n))` -/
def P12477382361870042299.Spec : Prop :=
  ∀ n, P12477382361870042299.a n = A083075 n

end A083075

/-!
# A083076: Third row of number array A083075.

The programs for A083076, the canonical program `A083076.P6993246293120151656` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083076 has offset 0).

The definition of A083076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083076.P3867693476891763916

`ogf((1-3x)/(1-8x+7x^2))`
-/

namespace A083076.P3867693476891763916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -8, 7] n

end

end A083076.P3867693476891763916

namespace A083076

/-- `ogf((1-3x)/(1-8x+7x^2))` -/
def P3867693476891763916.Spec : Prop :=
  ∀ n, P3867693476891763916.a n = A083076 n

end A083076

/-! ## A083076.P6993246293120151656

`7*a(n-1)-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083076

/-- `7*a(n-1)-2` -/
def P6993246293120151656.Spec : Prop :=
  ∀ n, P6993246293120151656.a n = A083076 n

theorem P6993246293120151656.correct : P6993246293120151656.Spec := by
  intro n
  simp only [A083076]

end A083076

/-! ## A083076.P10811100013495774219

`(2*7^n+1)/3`
-/

namespace A083076.P10811100013495774219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 7 ^ n + 1 : ℚ) / 3

end

end A083076.P10811100013495774219

namespace A083076

/-- `(2*7^n+1)/3` -/
def P10811100013495774219.Spec : Prop :=
  ∀ n, P10811100013495774219.a n = (A083076 n : ℚ)

theorem P10811100013495774219.correct : P10811100013495774219.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083076, Nat.add_sub_cancel, A083076.P10811100013495774219.a, A083076.P6993246293120151656.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083076, Nat.add_sub_cancel, A083076.P10811100013495774219.a, A083076.P6993246293120151656.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A083076

/-! ## A083076.P15320922377329792916

`lcm(7, a(n-1))-2` with `a(0)=1`
-/

namespace A083076.P15320922377329792916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 2

end

end A083076.P15320922377329792916

namespace A083076

/-- `lcm(7, a(n-1))-2` -/
def P15320922377329792916.Spec : Prop :=
  ∀ n, P15320922377329792916.a n = A083076 n

end A083076

/-! ## A083076.P7945236344422723999

`or(1, floor(2/3*7^n))`
-/

namespace A083076.P7945236344422723999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(2 : ℚ) / 3 * (7 ^ n : ℚ)⌋

end

end A083076.P7945236344422723999

namespace A083076

/-- `or(1, floor(2/3*7^n))` -/
def P7945236344422723999.Spec : Prop :=
  ∀ n, P7945236344422723999.a n = A083076 n

end A083076

/-! ## A083076.P1240881798033745326

`xor(1, floor(2/3*7^n))`
-/

namespace A083076.P1240881798033745326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(2 : ℚ) / 3 * (7 ^ n : ℚ)⌋

end

end A083076.P1240881798033745326

namespace A083076

/-- `xor(1, floor(2/3*7^n))` -/
def P1240881798033745326.Spec : Prop :=
  ∀ n, P1240881798033745326.a n = A083076 n

end A083076

/-! ## A083076.P14549820780023225895

`a(n-1)/(1-6/7)-2` with `a(0)=1`
-/

namespace A083076.P14549820780023225895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7) - 2

end

end A083076.P14549820780023225895

namespace A083076

/-- `a(n-1)/(1-6/7)-2` -/
def P14549820780023225895.Spec : Prop :=
  ∀ n, P14549820780023225895.a n = (A083076 n : ℚ)

end A083076

/-! ## A083076.P16183445727254516682

`∑[A270471(n)]`
-/

namespace A083076.P16183445727254516682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083076.P16183445727254516682

namespace A083076

/-- `∑[A270471(n)]` -/
def P16183445727254516682.Spec : Prop :=
  ∀ n, P16183445727254516682.a n = A083076 n

end A083076

/-! ## A083076.P11327924236445894263

`ceil(A238275(n)/2)`
-/

namespace A083076.P11327924236445894263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238275 n : ℚ) / 2⌉

end

end A083076.P11327924236445894263

namespace A083076

/-- `ceil(A238275(n)/2)` -/
def P11327924236445894263.Spec : Prop :=
  ∀ n, P11327924236445894263.a n = A083076 n

end A083076

/-! ## A083076.P10278889605723002807

`A125823(n+1)+1`
-/

namespace A083076.P10278889605723002807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125823 (n + 1) + 1

end

end A083076.P10278889605723002807

namespace A083076

/-- `A125823(n+1)+1` -/
def P10278889605723002807.Spec : Prop :=
  ∀ n, P10278889605723002807.a n = A083076 n

end A083076

/-! ## A083076.P7366353267775655571

`4*A023000(n)+1`
-/

namespace A083076.P7366353267775655571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023000 n + 1

end

end A083076.P7366353267775655571

namespace A083076

/-- `4*A023000(n)+1` -/
def P7366353267775655571.Spec : Prop :=
  ∀ n, P7366353267775655571.a n = A083076 n

end A083076

/-! ## A083076.P11816159914100500779

`4*A047852(n)-3`
-/

namespace A083076.P11816159914100500779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047852 n - 3

end

end A083076.P11816159914100500779

namespace A083076

/-- `4*A047852(n)-3` -/
def P11816159914100500779.Spec : Prop :=
  ∀ n, P11816159914100500779.a n = A083076 n

end A083076

/-! ## A083076.P4625217682792832711

`ceil(2/3*A000420(n))`
-/

namespace A083076.P4625217682792832711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A000420 n : ℚ)⌉

end

end A083076.P4625217682792832711

namespace A083076

/-- `ceil(2/3*A000420(n))` -/
def P4625217682792832711.Spec : Prop :=
  ∀ n, P4625217682792832711.a n = A083076 n

end A083076

/-! ## A083076.P5143793395099732435

`2*A125725(n+1)+1`
-/

namespace A083076.P5143793395099732435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125725 (n + 1) + 1

end

end A083076.P5143793395099732435

namespace A083076

/-- `2*A125725(n+1)+1` -/
def P5143793395099732435.Spec : Prop :=
  ∀ n, P5143793395099732435.a n = A083076 n

end A083076

/-! ## A083076.P15935869622342178600

`A208704(n)+a(n-1)` with `a(0)=1`
-/

namespace A083076.P15935869622342178600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208704 n + a (n - 1)

end

end A083076.P15935869622342178600

namespace A083076

/-- `A208704(n)+a(n-1)` -/
def P15935869622342178600.Spec : Prop :=
  ∀ n, P15935869622342178600.a n = A083076 n

end A083076

/-! ## A083076.P4129001289547055317

`∑{#}[n, C(n, #)*A067411(#)]`
-/

namespace A083076.P4129001289547055317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A067411 k

end

end A083076.P4129001289547055317

namespace A083076

/-- `∑{#}[n, C(n, #)*A067411(#)]` -/
def P4129001289547055317.Spec : Prop :=
  ∀ n, P4129001289547055317.a n = A083076 n

end A083076

/-! ## A083076.P1763929348665667801

`∑[A003950(n)/A029653(∑[n])]`
-/

namespace A083076.P1763929348665667801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003950 n : ℚ) / (A029653 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083076.P1763929348665667801

namespace A083076

/-- `∑[A003950(n)/A029653(∑[n])]` -/
def P1763929348665667801.Spec : Prop :=
  ∀ n, P1763929348665667801.a n = (A083076 n : ℚ)

end A083076

/-!
# A083077: Fifth row of number array A083075.

The programs for A083077, the canonical program `A083077.P1856384230237202949` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083077 has offset 0).

The definition of A083077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083077.P1771956995609699239

`ogf((1-3x)/(1-12x+11x^2))`
-/

namespace A083077.P1771956995609699239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -12, 11] n

end

end A083077.P1771956995609699239

namespace A083077

/-- `ogf((1-3x)/(1-12x+11x^2))` -/
def P1771956995609699239.Spec : Prop :=
  ∀ n, P1771956995609699239.a n = A083077 n

end A083077

/-! ## A083077.P1856384230237202949

`11*a(n-1)-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083077

/-- `11*a(n-1)-2` -/
def P1856384230237202949.Spec : Prop :=
  ∀ n, P1856384230237202949.a n = A083077 n

theorem P1856384230237202949.correct : P1856384230237202949.Spec := by
  intro n
  simp only [A083077]

end A083077

/-! ## A083077.P16575477594692246703

`(4*11^n+1)/5`
-/

namespace A083077.P16575477594692246703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * 11 ^ n + 1 : ℚ) / 5

end

end A083077.P16575477594692246703

namespace A083077

/-- `(4*11^n+1)/5` -/
def P16575477594692246703.Spec : Prop :=
  ∀ n, P16575477594692246703.a n = (A083077 n : ℚ)

theorem P16575477594692246703.correct : P16575477594692246703.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083077, Nat.add_sub_cancel, A083077.P16575477594692246703.a, A083077.P1856384230237202949.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083077, Nat.add_sub_cancel, A083077.P16575477594692246703.a, A083077.P1856384230237202949.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A083077

/-! ## A083077.P12753336280057012409

`lcm(11, a(n-1))-2` with `a(0)=1`
-/

namespace A083077.P12753336280057012409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - 2

end

end A083077.P12753336280057012409

namespace A083077

/-- `lcm(11, a(n-1))-2` -/
def P12753336280057012409.Spec : Prop :=
  ∀ n, P12753336280057012409.a n = A083077 n

end A083077

/-! ## A083077.P2724357201396003059

`floor(A156341(n)/2)`
-/

namespace A083077.P2724357201396003059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156341 n : ℚ) / 2⌋

end

end A083077.P2724357201396003059

namespace A083077

/-- `floor(A156341(n)/2)` -/
def P2724357201396003059.Spec : Prop :=
  ∀ n, P2724357201396003059.a n = A083077 n

end A083077

/-! ## A083077.P6485848639166989745

`ceil(A199020(n)/5)`
-/

namespace A083077.P6485848639166989745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199020 n : ℚ) / 5⌉

end

end A083077.P6485848639166989745

namespace A083077

/-- `ceil(A199020(n)/5)` -/
def P6485848639166989745.Spec : Prop :=
  ∀ n, P6485848639166989745.a n = A083077 n

end A083077

/-!
# A083078: 6th row of number array A083075.

The programs for A083078, the canonical program `A083078.P13695899043466552781` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083078 has offset 0).

The definition of A083078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083078.P541426840793146475

`ogf((1-3x)/(1-14x+13x^2))`
-/

namespace A083078.P541426840793146475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -14, 13] n

end

end A083078.P541426840793146475

namespace A083078

/-- `ogf((1-3x)/(1-14x+13x^2))` -/
def P541426840793146475.Spec : Prop :=
  ∀ n, P541426840793146475.a n = A083078 n

end A083078

/-! ## A083078.P3507082567766716929

`(5*13^n+1)/6`
-/

namespace A083078.P3507082567766716929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 13 ^ n + 1 : ℚ) / 6

end

end A083078.P3507082567766716929

namespace A083078

/-- `(5*13^n+1)/6` -/
def P3507082567766716929.Spec : Prop :=
  ∀ n, P3507082567766716929.a n = (A083078 n : ℚ)

theorem P3507082567766716929.correct : P3507082567766716929.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083078, Nat.add_sub_cancel, A083078.P3507082567766716929.a, A083078.P13695899043466552781.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083078, Nat.add_sub_cancel, A083078.P3507082567766716929.a, A083078.P13695899043466552781.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A083078

/-! ## A083078.P13695899043466552781

`13*a(n-1)-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083078

/-- `13*a(n-1)-2` -/
def P13695899043466552781.Spec : Prop :=
  ∀ n, P13695899043466552781.a n = A083078 n

theorem P13695899043466552781.correct : P13695899043466552781.Spec := by
  intro n
  simp only [A083078]

end A083078

/-! ## A083078.P4770402903968966135

`lcm(13, a(n-1))-2` with `a(0)=1`
-/

namespace A083078.P4770402903968966135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 13 (a (n - 1)) : ℤ) - 2

end

end A083078.P4770402903968966135

namespace A083078

/-- `lcm(13, a(n-1))-2` -/
def P4770402903968966135.Spec : Prop :=
  ∀ n, P4770402903968966135.a n = A083078 n

end A083078

/-! ## A083078.P1803276010894758933

`A153079(n)-2*A196792(n)`
-/

namespace A083078.P1803276010894758933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153079 n - 2 * A196792 n

end

end A083078.P1803276010894758933

namespace A083078

/-- `A153079(n)-2*A196792(n)` -/
def P1803276010894758933.Spec : Prop :=
  ∀ n, P1803276010894758933.a n = A083078 n

end A083078

/-! ## A083078.P10468753950090993856

`A083075(A055999(n+3))`
-/

namespace A083078.P10468753950090993856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (A055999 (n + 3)).toNat

end

end A083078.P10468753950090993856

namespace A083078

/-- `A083075(A055999(n+3))` -/
def P10468753950090993856.Spec : Prop :=
  ∀ n, P10468753950090993856.a n = A083078 n

end A083078

/-! ## A083078.P3356371777545260233

`A083075(A000217(n+6)-6)`
-/

namespace A083078.P3356371777545260233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (A000217 (n + 6) - 6).toNat

end

end A083078.P3356371777545260233

namespace A083078

/-- `A083075(A000217(n+6)-6)` -/
def P3356371777545260233.Spec : Prop :=
  ∀ n, P3356371777545260233.a n = A083078 n

end A083078

/-! ## A083078.P16375576361090988333

`A083075((n+9)²%A000217(n+11))`
-/

namespace A083078.P16375576361090988333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (Int.tmod ((n + 9) ^ 2 : ℤ) (A000217 (n + 11))).toNat

end

end A083078.P16375576361090988333

namespace A083078

/-- `A083075((n+9)²%A000217(n+11))` -/
def P16375576361090988333.Spec : Prop :=
  ∀ n, P16375576361090988333.a n = A083078 n

end A083078

/-! ## A083078.P13496561688769981753

`A083075(A167614(n+1)+Δ[A167614(2*(n+1))])`
-/

namespace A083078.P13496561688769981753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (A167614 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A083078.P13496561688769981753

namespace A083078

/-- `A083075(A167614(n+1)+Δ[A167614(2*(n+1))])` -/
def P13496561688769981753.Spec : Prop :=
  ∀ n, P13496561688769981753.a n = A083078 n

end A083078

/-!
# A083079: 4th column of number array A083075.

The programs for A083079, the canonical program `A083079.P4244302985691793340` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083079 has offset 0).

The definition of A083079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083079.P15920137758035381037

`ogf((1+59x-17x^2+5x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A083079.P15920137758035381037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 59, -17, 5] [1, -4, 6, -4, 1] n

end

end A083079.P15920137758035381037

namespace A083079

/-- `ogf((1+59x-17x^2+5x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P15920137758035381037.Spec : Prop :=
  ∀ n, P15920137758035381037.a n = A083079 n

end A083079

/-! ## A083079.P12198975626931346909

`(n*(2*n+3)^3+1)/(n+1)`
-/

namespace A083079.P12198975626931346909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 3) ^ 3 + 1 : ℚ) / (n + 1 : ℚ)

end

end A083079.P12198975626931346909

namespace A083079

/-- `(n*(2*n+3)^3+1)/(n+1)` -/
def P12198975626931346909.Spec : Prop :=
  ∀ n, P12198975626931346909.a n = (A083079 n : ℚ)

end A083079

/-! ## A083079.P4244302985691793340

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=63, a(2)=229, a(3)=547`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083079

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4244302985691793340.Spec : Prop :=
  ∀ n, P4244302985691793340.a n = A083079 n

theorem P4244302985691793340.correct : P4244302985691793340.Spec := by
  intro n
  simp only [A083079]

end A083079

/-! ## A083079.P4887989552208706024

`(2*n+3)²*Δ[n²]-A192544(n+1)`
-/

namespace A083079.P4887989552208706024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - A192544 (n + 1)

end

end A083079.P4887989552208706024

namespace A083079

/-- `(2*n+3)²*Δ[n²]-A192544(n+1)` -/
def P4887989552208706024.Spec : Prop :=
  ∀ n, P4887989552208706024.a n = A083079 n

theorem P4887989552208706024.correct : P4887989552208706024.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A083079, Nat.add_sub_cancel, A083079.P4887989552208706024.f1, A083079.P4887989552208706024.a, A083079.P4244302985691793340.a, A192544, A192544.P6167349055891237540.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A083079, Nat.add_sub_cancel, A083079.P4887989552208706024.f1, A083079.P4887989552208706024.a, A083079.P4244302985691793340.a, A192544, A192544.P6167349055891237540.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083079

/-! ## A083079.P7432402987245803503

`2*A054554(n+3)*n+1`
-/

namespace A083079.P7432402987245803503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054554 (n + 3) * (n : ℤ) + 1

end

end A083079.P7432402987245803503

namespace A083079

/-- `2*A054554(n+3)*n+1` -/
def P7432402987245803503.Spec : Prop :=
  ∀ n, P7432402987245803503.a n = A083079 n

theorem P7432402987245803503.correct : P7432402987245803503.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A083079, Nat.add_sub_cancel, A083079.P7432402987245803503.a, A083079.P4244302985691793340.a, A054554, A054554.P10059529129339584182.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A083079, Nat.add_sub_cancel, A083079.P7432402987245803503.a, A083079.P4244302985691793340.a, A054554, A054554.P10059529129339584182.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083079

/-! ## A083079.P11740270541815685015

`A316224(n+1)-A014106(n+2)`
-/

namespace A083079.P11740270541815685015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 (n + 1) - A014106 (n + 2)

end

end A083079.P11740270541815685015

namespace A083079

/-- `A316224(n+1)-A014106(n+2)` -/
def P11740270541815685015.Spec : Prop :=
  ∀ n, P11740270541815685015.a n = A083079 n

theorem P11740270541815685015.correct : P11740270541815685015.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A083079, Nat.add_sub_cancel, A083079.P11740270541815685015.a, A083079.P4244302985691793340.a, A014106, A014106.P1375640882817375549.a, A316224, A316224.P13763735533833760107.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A083079, Nat.add_sub_cancel, A083079.P11740270541815685015.a, A083079.P4244302985691793340.a, A014106, A014106.P1375640882817375549.a, A316224, A316224.P13763735533833760107.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083079

/-! ## A083079.P120463727493805570

`record[(n+1)²+A331433(n)-6]`
-/

namespace A083079.P120463727493805570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A331433 n - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083079.P120463727493805570

namespace A083079

/-- `record[(n+1)²+A331433(n)-6]` -/
def P120463727493805570.Spec : Prop :=
  ∀ n, P120463727493805570.a n = A083079 n

end A083079

/-! ## A083079.P1549612133823818140

`(A001844(2*n+3)+1)*n+1`
-/

namespace A083079.P1549612133823818140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001844 (2 * n + 3) + 1) * (n : ℤ) + 1

end

end A083079.P1549612133823818140

namespace A083079

/-- `(A001844(2*n+3)+1)*n+1` -/
def P1549612133823818140.Spec : Prop :=
  ∀ n, P1549612133823818140.a n = A083079 n

theorem P1549612133823818140.correct : P1549612133823818140.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A083079, Nat.add_sub_cancel, A083079.P1549612133823818140.a, A083079.P4244302985691793340.a, A001844, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A083079, Nat.add_sub_cancel, A083079.P1549612133823818140.a, A083079.P4244302985691793340.a, A001844, A001844.P5037395199076350534.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083079

/-! ## A083079.P7819255860949240463

`(A046092(2*n+3)+2)*n+1`
-/

namespace A083079.P7819255860949240463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 (2 * n + 3) + 2) * (n : ℤ) + 1

end

end A083079.P7819255860949240463

namespace A083079

/-- `(A046092(2*n+3)+2)*n+1` -/
def P7819255860949240463.Spec : Prop :=
  ∀ n, P7819255860949240463.a n = A083079 n

theorem P7819255860949240463.correct : P7819255860949240463.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A083079, Nat.add_sub_cancel, A083079.P7819255860949240463.a, A083079.P4244302985691793340.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A083079, Nat.add_sub_cancel, A083079.P7819255860949240463.a, A083079.P4244302985691793340.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083079

/-! ## A083079.P6115005937100566997

`abs(A343007(2*n+3)-A016755(n+1))`
-/

namespace A083079.P6115005937100566997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343007 (2 * n + 3) - A016755 (n + 1)|

end

end A083079.P6115005937100566997

namespace A083079

/-- `abs(A343007(2*n+3)-A016755(n+1))` -/
def P6115005937100566997.Spec : Prop :=
  ∀ n, P6115005937100566997.a n = A083079 n

end A083079

/-! ## A083079.P6209508372245408629

`A051890(2*(n+2))*n+1`
-/

namespace A083079.P6209508372245408629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 (2 * (n + 2)) * (n : ℤ) + 1

end

end A083079.P6209508372245408629

namespace A083079

/-- `A051890(2*(n+2))*n+1` -/
def P6209508372245408629.Spec : Prop :=
  ∀ n, P6209508372245408629.a n = A083079 n

theorem P6209508372245408629.correct : P6209508372245408629.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A083079, Nat.add_sub_cancel, A083079.P6209508372245408629.a, A083079.P4244302985691793340.a, A051890, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A083079, Nat.add_sub_cancel, A083079.P6209508372245408629.a, A083079.P4244302985691793340.a, A051890, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083079

/-!
# A083080: Main diagonal of number array A083075.

The programs for A083080, the canonical program `A083080.P3167400736418808002` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083080 has offset 0).

The definition of A083080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083080.P3167400736418808002

`(n*(2*n+3)^n+1)/(n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083080

/-- `(n*(2*n+3)^n+1)/(n+1)` -/
def P3167400736418808002.Spec : Prop :=
  ∀ n, P3167400736418808002.a n = (A083080 n : ℚ)

end A083080

/-! ## A083080.P8520743442915027771

`A083075(∑[4*n])`
-/

namespace A083080.P8520743442915027771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083080.P8520743442915027771

namespace A083080

/-- `A083075(∑[4*n])` -/
def P8520743442915027771.Spec : Prop :=
  ∀ n, P8520743442915027771.a n = A083080 n

end A083080

/-! ## A083080.P1855623158888315791

`or(1, A083075(A046092(n)))`
-/

namespace A083080.P1855623158888315791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A083075 (A046092 n).toNat)

end

end A083080.P1855623158888315791

namespace A083080

/-- `or(1, A083075(A046092(n)))` -/
def P1855623158888315791.Spec : Prop :=
  ∀ n, P1855623158888315791.a n = A083080 n

end A083080

/-! ## A083080.P11044595801399084040

`record[A083075(∑[A071045(n)])]`
-/

namespace A083080.P11044595801399084040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083080.P11044595801399084040

namespace A083080

/-- `record[A083075(∑[A071045(n)])]` -/
def P11044595801399084040.Spec : Prop :=
  ∀ n, P11044595801399084040.a n = A083080 n

end A083080

/-! ## A083080.P16306211274675145109

`record[A003982(n)*A083075(n)]`
-/

namespace A083080.P16306211274675145109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A083075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083080.P16306211274675145109

namespace A083080

/-- `record[A003982(n)*A083075(n)]` -/
def P16306211274675145109.Spec : Prop :=
  ∀ n, P16306211274675145109.a n = A083080 n

end A083080

/-!
# A083081: First superdiagonal of number array A083075.

The programs for A083081, the canonical program `A083081.P13980442273468319131` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083081 has offset 1).

The definition of A083081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083081.P13980442273468319131

`(n*(2*(n+1)+1)^(n+1)+1)/(n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083081

/-- `(n*(2*(n+1)+1)^(n+1)+1)/(n+1)` -/
def P13980442273468319131.Spec : Prop :=
  ∀ n, P13980442273468319131.a n = (A083081 (n + 1) : ℚ)

end A083081

/-! ## A083081.P17348123249247315433

`lcm(2*n+3, A083080(n))-2`
-/

namespace A083081.P17348123249247315433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n + 3 : ℤ) (A083080 n) : ℤ) - 2

end

end A083081.P17348123249247315433

namespace A083081

/-- `lcm(2*n+3, A083080(n))-2` -/
def P17348123249247315433.Spec : Prop :=
  ∀ n, P17348123249247315433.a n = A083081 (n + 1)

end A083081

/-! ## A083081.P10254552769310044485

`A083075(2*(n+1)²)`
-/

namespace A083081.P10254552769310044485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (2 * (n + 1) ^ 2)

end

end A083081.P10254552769310044485

namespace A083081

/-- `A083075(2*(n+1)²)` -/
def P10254552769310044485.Spec : Prop :=
  ∀ n, P10254552769310044485.a n = A083081 (n + 1)

end A083081

/-! ## A083081.P8479649357996471782

`record[A083075(∑[A014682(n)])]`
-/

namespace A083081.P8479649357996471782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083081.P8479649357996471782

namespace A083081

/-- `record[A083075(∑[A014682(n)])]` -/
def P8479649357996471782.Spec : Prop :=
  ∀ n, P8479649357996471782.a n = A083081 (n + 1)

end A083081

/-! ## A083081.P12946919280233703870

`record[A083075(∑[A131728(n)])]`
-/

namespace A083081.P12946919280233703870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083081.P12946919280233703870

namespace A083081

/-- `record[A083075(∑[A131728(n)])]` -/
def P12946919280233703870.Spec : Prop :=
  ∀ n, P12946919280233703870.a n = A083081 (n + 1)

end A083081

/-!
# A083082: First subdiagonal of number array A083075.

The programs for A083082, the canonical program `A083082.P10202790274696103651` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083082 has offset 0).

The definition of A083082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083082.P10202790274696103651

`((n+1)*(2*n+5)^n+1)/(n+2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083082

/-- `((n+1)*(2*n+5)^n+1)/(n+2)` -/
def P10202790274696103651.Spec : Prop :=
  ∀ n, P10202790274696103651.a n = (A083082 n : ℚ)

end A083082

/-! ## A083082.P1076899116124136368

`A083075((n+2)*2*n+1)`
-/

namespace A083082.P1076899116124136368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 ((n + 2) * (2 * n) + 1)

end

end A083082.P1076899116124136368

namespace A083082

/-- `A083075((n+2)*2*n+1)` -/
def P1076899116124136368.Spec : Prop :=
  ∀ n, P1076899116124136368.a n = A083082 n

end A083082

/-! ## A083082.P13754775928504213962

`record[A083075(A105638(n+3))]`
-/

namespace A083082.P13754775928504213962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (A105638 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083082.P13754775928504213962

namespace A083082

/-- `record[A083075(A105638(n+3))]` -/
def P13754775928504213962.Spec : Prop :=
  ∀ n, P13754775928504213962.a n = A083082 n

end A083082

/-! ## A083082.P8724696450172034371

`record[A083075(∑[A071045(n)]+n)]`
-/

namespace A083082.P8724696450172034371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083082.P8724696450172034371

namespace A083082

/-- `record[A083075(∑[A071045(n)]+n)]` -/
def P8724696450172034371.Spec : Prop :=
  ∀ n, P8724696450172034371.a n = A083082 n

end A083082

/-! ## A083082.P11958634927133471879

`or(1, A083075(A105638(2*(n+2))))`
-/

namespace A083082.P11958634927133471879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A083075 (A105638 (2 * (n + 2))).toNat)

end

end A083082.P11958634927133471879

namespace A083082

/-- `or(1, A083075(A105638(2*(n+2))))` -/
def P11958634927133471879.Spec : Prop :=
  ∀ n, P11958634927133471879.a n = A083082 n

end A083082

/-!
# A083083: A diagonal of number array A083075.

The programs for A083083, the canonical program `A083083.P4756318945435132160` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083083 has offset 0).

The definition of A083083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083083.P4756318945435132160

`((n+2)*(2*n+7)^n+1)/(n+3)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083083

/-- `((n+2)*(2*n+7)^n+1)/(n+3)` -/
def P4756318945435132160.Spec : Prop :=
  ∀ n, P4756318945435132160.a n = (A083083 n : ℚ)

end A083083

/-! ## A083083.P10320336444736023126

`A083075(A090288(n)+1)`
-/

namespace A083083.P10320336444736023126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (A090288 n + 1).toNat

end

end A083083.P10320336444736023126

namespace A083083

/-- `A083075(A090288(n)+1)` -/
def P10320336444736023126.Spec : Prop :=
  ∀ n, P10320336444736023126.a n = A083083 n

end A083083

/-! ## A083083.P14134691435898153015

`A083075(A132209(n+1))`
-/

namespace A083083.P14134691435898153015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (A132209 (n + 1)).toNat

end

end A083083.P14134691435898153015

namespace A083083

/-- `A083075(A132209(n+1))` -/
def P14134691435898153015.Spec : Prop :=
  ∀ n, P14134691435898153015.a n = A083083 n

end A083083

/-! ## A083083.P2299731893746198477

`A083075(A142463(n+1))`
-/

namespace A083083.P2299731893746198477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (A142463 (n + 1)).toNat

end

end A083083.P2299731893746198477

namespace A083083

/-- `A083075(A142463(n+1))` -/
def P2299731893746198477.Spec : Prop :=
  ∀ n, P2299731893746198477.a n = A083083 n

end A083083

/-! ## A083083.P7539827598401409830

`A083075(or(1, A090288(n)))`
-/

namespace A083083.P7539827598401409830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (Int.lor 1 (A090288 n)).toNat

end

end A083083.P7539827598401409830

namespace A083083

/-- `A083075(or(1, A090288(n)))` -/
def P7539827598401409830.Spec : Prop :=
  ∀ n, P7539827598401409830.a n = A083083 n

end A083083

/-!
# A083084: A diagonal of number array A083075.

The programs for A083084, the canonical program `A083084.P14486616516514837407` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083084 has offset 0).

The definition of A083084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083084.P14486616516514837407

`((n+3)*(2*n+9)^n+1)/(n+4)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083084

/-- `((n+3)*(2*n+9)^n+1)/(n+4)` -/
def P14486616516514837407.Spec : Prop :=
  ∀ n, P14486616516514837407.a n = (A083084 n : ℚ)

end A083084

/-! ## A083084.P4433406075058302679

`A083075(2*(n+1)*(n+3))`
-/

namespace A083084.P4433406075058302679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (2 * ((n + 1) * (n + 3)))

end

end A083084.P4433406075058302679

namespace A083084

/-- `A083075(2*(n+1)*(n+3))` -/
def P4433406075058302679.Spec : Prop :=
  ∀ n, P4433406075058302679.a n = A083084 n

end A083084

/-! ## A083084.P18185645606229518785

`record[A083075(∑[A014682(n)+2])]`
-/

namespace A083084.P18185645606229518785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083084.P18185645606229518785

namespace A083084

/-- `record[A083075(∑[A014682(n)+2])]` -/
def P18185645606229518785.Spec : Prop :=
  ∀ n, P18185645606229518785.a n = A083084 n

end A083084

/-!
# A083085: a(n) = (2+(-5)^n)/3.

The programs for A083085, the canonical program `A083085.P12304870393543893817` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083085 has offset 0).

The definition of A083085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083085.P12304870393543893817

`ogf((1+3x)/(1+4x-5x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083085

/-- `ogf((1+3x)/(1+4x-5x^2))` -/
def P12304870393543893817.Spec : Prop :=
  ∀ n, P12304870393543893817.a n = A083085 n

theorem P12304870393543893817.correct : P12304870393543893817.Spec := by
  intro n
  simp only [A083085]

end A083085

/-! ## A083085.P3111361591782293866

`(2+(-5)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083085.P3111361591782293866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (-5) ^ n : ℚ) / 3

end

end A083085.P3111361591782293866

namespace A083085

/-- `(2+(-5)^n)/3` -/
def P3111361591782293866.Spec : Prop :=
  ∀ n, P3111361591782293866.a n = (A083085 n : ℚ)

end A083085

/-! ## A083085.P7923215826680639493

`∑[ogf((1+3x)/(1+5x))]`
-/

namespace A083085.P7923215826680639493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083085.P7923215826680639493

namespace A083085

/-- `∑[ogf((1+3x)/(1+5x))]` -/
def P7923215826680639493.Spec : Prop :=
  ∀ n, P7923215826680639493.a n = A083085 n

end A083085

/-! ## A083085.P8399649442213565624

`4-5*a(n-1)` with `a(0)=1`
-/

namespace A083085.P8399649442213565624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - 5 * a (n - 1)

end

end A083085.P8399649442213565624

namespace A083085

/-- `4-5*a(n-1)` -/
def P8399649442213565624.Spec : Prop :=
  ∀ n, P8399649442213565624.a n = A083085 n

end A083085

/-! ## A083085.P18220903731293843070

`xor(1, floor((-5)^n/3))`
-/

namespace A083085.P18220903731293843070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊((-5) ^ n : ℚ) / 3⌋

end

end A083085.P18220903731293843070

namespace A083085

/-- `xor(1, floor((-5)^n/3))` -/
def P18220903731293843070.Spec : Prop :=
  ∀ n, P18220903731293843070.a n = A083085 n

end A083085

/-! ## A083085.P6340895182696510418

`a(n-1)/(4/5-1)+4` with `a(0)=1`
-/

namespace A083085.P6340895182696510418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((4 : ℚ) / 5 - 1) + 4

end

end A083085.P6340895182696510418

namespace A083085

/-- `a(n-1)/(4/5-1)+4` -/
def P6340895182696510418.Spec : Prop :=
  ∀ n, P6340895182696510418.a n = (A083085 n : ℚ)

end A083085

/-! ## A083085.P11499743372234944595

`4-a(n-1)/(1-4/5)` with `a(0)=1`
-/

namespace A083085.P11499743372234944595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 - a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A083085.P11499743372234944595

namespace A083085

/-- `4-a(n-1)/(1-4/5)` -/
def P11499743372234944595.Spec : Prop :=
  ∀ n, P11499743372234944595.a n = (A083085 n : ℚ)

end A083085

/-! ## A083085.P10324200368503499569

`3-2*A166122(n)`
-/

namespace A083085.P10324200368503499569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A166122 n

end

end A083085.P10324200368503499569

namespace A083085

/-- `3-2*A166122(n)` -/
def P10324200368503499569.Spec : Prop :=
  ∀ n, P10324200368503499569.a n = A083085 n

end A083085

/-! ## A083085.P10826732533090452753

`∑{#}[n, (-1)^(n-#)*C(n, #)*A083086(#)]`
-/

namespace A083085.P10826732533090452753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A083086 k : ℚ)

end

end A083085.P10826732533090452753

namespace A083085

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A083086(#)]` -/
def P10826732533090452753.Spec : Prop :=
  ∀ n, P10826732533090452753.a n = (A083085 n : ℚ)

end A083085

/-! ## A083085.P12863778360547933357

`∑[A020699(n)*A033999(n)]`
-/

namespace A083085.P12863778360547933357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083085.P12863778360547933357

namespace A083085

/-- `∑[A020699(n)*A033999(n)]` -/
def P12863778360547933357.Spec : Prop :=
  ∀ n, P12863778360547933357.a n = A083085 n

end A083085

/-! ## A083085.P5098547446896346977

`∑[∑[A055842(n)]/A280560(n)]`
-/

namespace A083085.P5098547446896346977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A280560 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083085.P5098547446896346977

namespace A083085

/-- `∑[∑[A055842(n)]/A280560(n)]` -/
def P5098547446896346977.Spec : Prop :=
  ∀ n, P5098547446896346977.a n = (A083085 n : ℚ)

end A083085

/-!
# A083086: a(n) = (2^(n+1) + (-4)^n)/3.

The programs for A083086, the canonical program `A083086.P15318894095947502197` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083086 has offset 0).

The definition of A083086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083086.P12440628899755328336

`ogf((1+2x)/(1+2x-8x^2))`
-/

namespace A083086.P12440628899755328336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 2, -8] n

end

end A083086.P12440628899755328336

namespace A083086

/-- `ogf((1+2x)/(1+2x-8x^2))` -/
def P12440628899755328336.Spec : Prop :=
  ∀ n, P12440628899755328336.a n = A083086 n

end A083086

/-! ## A083086.P15597469073378148391

`(2^(n+1)+(-4)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083086.P15597469073378148391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) + (-4) ^ n : ℚ) / 3

end

end A083086.P15597469073378148391

namespace A083086

/-- `(2^(n+1)+(-4)^n)/3` -/
def P15597469073378148391.Spec : Prop :=
  ∀ n, P15597469073378148391.a n = (A083086 n : ℚ)

end A083086

/-! ## A083086.P15318894095947502197

`(-1)^n*A000079(n)*A078008(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083086

/-- `(-1)^n*A000079(n)*A078008(n)` -/
def P15318894095947502197.Spec : Prop :=
  ∀ n, P15318894095947502197.a n = A083086 n

theorem P15318894095947502197.correct : P15318894095947502197.Spec := by
  intro n
  simp only [A083086]

end A083086

/-! ## A083086.P15719461117533212499

`2^(n+1)-4*a(n-1)` with `a(0)=1`
-/

namespace A083086.P15719461117533212499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (n + 1) : ℤ) - 4 * a (n - 1)

end

end A083086.P15719461117533212499

namespace A083086

/-- `2^(n+1)-4*a(n-1)` -/
def P15719461117533212499.Spec : Prop :=
  ∀ n, P15719461117533212499.a n = A083086 n

end A083086

/-! ## A083086.P13873353431472081488

`2*(2^n-2*a(n-1))` with `a(0)=1`
-/

namespace A083086.P13873353431472081488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 ^ n : ℤ) - 2 * a (n - 1))

end

end A083086.P13873353431472081488

namespace A083086

/-- `2*(2^n-2*a(n-1))` -/
def P13873353431472081488.Spec : Prop :=
  ∀ n, P13873353431472081488.a n = A083086 n

end A083086

/-! ## A083086.P2213766067159329680

`2*(4*a(n-2)-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A083086.P2213766067159329680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (4 * a (n - 2) - a (n - 1))

end

end A083086.P2213766067159329680

namespace A083086

/-- `2*(4*a(n-2)-a(n-1))` -/
def P2213766067159329680.Spec : Prop :=
  ∀ n, P2213766067159329680.a n = A083086 n

end A083086

/-! ## A083086.P6957318505787279231

`2^n*A151575(n)`
-/

namespace A083086.P6957318505787279231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A151575 n

end

end A083086.P6957318505787279231

namespace A083086

/-- `2^n*A151575(n)` -/
def P6957318505787279231.Spec : Prop :=
  ∀ n, P6957318505787279231.a n = A083086 n

theorem P6957318505787279231.correct : P6957318505787279231.Spec := by
  intro n
  simp only [A083086, Nat.add_sub_cancel, A083086.P6957318505787279231.a, A083086.P15318894095947502197.a, A000079, A000079.P10855139691139572931.a, A078008, A078008.P1209086084566211837.a, A151575, A151575.P12730425805375642226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083086

/-! ## A083086.P8001493270111289116

`2^(n+1)-A123016(n+2)`
-/

namespace A083086.P8001493270111289116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A123016 (n + 2)

end

end A083086.P8001493270111289116

namespace A083086

/-- `2^(n+1)-A123016(n+2)` -/
def P8001493270111289116.Spec : Prop :=
  ∀ n, P8001493270111289116.a n = A083086 n

end A083086

/-! ## A083086.P3165767991508317680

`a(n-1)+A009117(n)+a(n-1)` with `a(0)=1`
-/

namespace A083086.P3165767991508317680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A009117 n + a (n - 1))

end

end A083086.P3165767991508317680

namespace A083086

/-- `a(n-1)+A009117(n)+a(n-1)` -/
def P3165767991508317680.Spec : Prop :=
  ∀ n, P3165767991508317680.a n = A083086 n

end A083086

/-! ## A083086.P10038011351882697488

`∑[2^(n-1)-a(n-1)]-A084241(n)` with `a(0)=1`
-/

namespace A083086.P10038011351882697488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A084241 n : ℚ)

end

end A083086.P10038011351882697488

namespace A083086

/-- `∑[2^(n-1)-a(n-1)]-A084241(n)` -/
def P10038011351882697488.Spec : Prop :=
  ∀ n, P10038011351882697488.a n = (A083086 n : ℚ)

end A083086

/-! ## A083086.P7349580336732818619

`A084633(n)*A097073(n)`
-/

namespace A083086.P7349580336732818619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 n * A097073 n

end

end A083086.P7349580336732818619

namespace A083086

/-- `A084633(n)*A097073(n)` -/
def P7349580336732818619.Spec : Prop :=
  ∀ n, P7349580336732818619.a n = A083086 n

end A083086

/-! ## A083086.P6872867085618574770

`A078008(n)*A122803(n)`
-/

namespace A083086.P6872867085618574770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n * A122803 n

end

end A083086.P6872867085618574770

namespace A083086

/-- `A078008(n)*A122803(n)` -/
def P6872867085618574770.Spec : Prop :=
  ∀ n, P6872867085618574770.a n = A083086 n

end A083086

/-! ## A083086.P5800826899702948657

`A054881(n)*A280560(n)`
-/

namespace A083086.P5800826899702948657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054881 n * A280560 n

end

end A083086.P5800826899702948657

namespace A083086

/-- `A054881(n)*A280560(n)` -/
def P5800826899702948657.Spec : Prop :=
  ∀ n, P5800826899702948657.a n = A083086 n

end A083086

/-! ## A083086.P6668096708260591911

`A151575(n)*A186949(n)`
-/

namespace A083086.P6668096708260591911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n * A186949 n

end

end A083086.P6668096708260591911

namespace A083086

/-- `A151575(n)*A186949(n)` -/
def P6668096708260591911.Spec : Prop :=
  ∀ n, P6668096708260591911.a n = A083086 n

end A083086

/-! ## A083086.P10833469292319466201

`A001045(n+1)-A084241(n)`
-/

namespace A083086.P10833469292319466201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A084241 n

end

end A083086.P10833469292319466201

namespace A083086

/-- `A001045(n+1)-A084241(n)` -/
def P10833469292319466201.Spec : Prop :=
  ∀ n, P10833469292319466201.a n = A083086 n

end A083086

/-! ## A083086.P8620966053148177369

`A152046(n+1)-A084241(n)`
-/

namespace A083086.P8620966053148177369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1) - A084241 n

end

end A083086.P8620966053148177369

namespace A083086

/-- `A152046(n+1)-A084241(n)` -/
def P8620966053148177369.Spec : Prop :=
  ∀ n, P8620966053148177369.a n = A083086 n

end A083086

/-! ## A083086.P17813336652632612629

`A000079(n)*A140966(n)-A000079(n)`
-/

namespace A083086.P17813336652632612629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A140966 n - A000079 n

end

end A083086.P17813336652632612629

namespace A083086

/-- `A000079(n)*A140966(n)-A000079(n)` -/
def P17813336652632612629.Spec : Prop :=
  ∀ n, P17813336652632612629.a n = A083086 n

end A083086

/-! ## A083086.P9879319171379827428

`A014551(n)*A151575(n)-A078008(n)`
-/

namespace A083086.P9879319171379827428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n * A151575 n - A078008 n

end

end A083086.P9879319171379827428

namespace A083086

/-- `A014551(n)*A151575(n)-A078008(n)` -/
def P9879319171379827428.Spec : Prop :=
  ∀ n, P9879319171379827428.a n = A083086 n

end A083086

/-! ## A083086.P4636365428102084501

`A000079(n)*A171501(n)-A171449(n)`
-/

namespace A083086.P4636365428102084501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A171501 n - A171449 n

end

end A083086.P4636365428102084501

namespace A083086

/-- `A000079(n)*A171501(n)-A171449(n)` -/
def P4636365428102084501.Spec : Prop :=
  ∀ n, P4636365428102084501.a n = A083086 n

end A083086

/-! ## A083086.P7047191203277828930

`A171501(n)*A171559(n)-A171449(n)`
-/

namespace A083086.P7047191203277828930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171501 n * A171559 n - A171449 n

end

end A083086.P7047191203277828930

namespace A083086

/-- `A171501(n)*A171559(n)-A171449(n)` -/
def P7047191203277828930.Spec : Prop :=
  ∀ n, P7047191203277828930.a n = A083086 n

end A083086

/-!
# A083087: Square table read by antidiagonals which forms a permutation of the natural numbers: T(n,0) = floor(n*x/(x-1))+1, T(n,k+1) = ceiling(x*T(n,k)), for n>=0, k>=0, where x = 1 + sqrt(2).

The programs for A083087, there is no canonical definition to state claims against.
-/

/-! ## A083087.P5396958309214370520

`A191724(n+1)-A057558(A060439(n+1))`
-/

namespace A083087.P5396958309214370520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191724 (n + 1) - A057558 (A060439 (n + 1)).toNat

end

end A083087.P5396958309214370520

/-! ## A083087.P14609935170417387737

`A191724(n+1)-A133010(A191663(n+1))`
-/

namespace A083087.P14609935170417387737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191724 (n + 1) - A133010 (A191663 (n + 1)).toNat

end

end A083087.P14609935170417387737

/-! ## A083087.P7258169364773822024

`A191724(n+1)-A179801(A191722(n+1))`
-/

namespace A083087.P7258169364773822024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191724 (n + 1) - A179801 (A191722 (n + 1)).toNat

end

end A083087.P7258169364773822024

/-! ## A083087.P12474020668088040275

`A191724(n+1)-A179801(A191728(n+1))`
-/

namespace A083087.P12474020668088040275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191724 (n + 1) - A179801 (A191728 (n + 1)).toNat

end

end A083087.P12474020668088040275

/-! ## A083087.P16178327647542491900

`A191724(n+1)-A025469(A041471(n))`
-/

namespace A083087.P16178327647542491900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191724 (n + 1) - A025469 (A041471 n).toNat

end

end A083087.P16178327647542491900

/-!
# A083088: First column of table A083087.

The programs for A083088, the canonical program `A083088.P2188734894265162216` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083088 has offset 0).

The definition of A083088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083088.P2188734894265162216

`floor(n/sqrt(2))+n+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083088

/-- `floor(n/sqrt(2))+n+1` -/
def P2188734894265162216.Spec : Prop :=
  ∀ n, P2188734894265162216.a n = A083088 n

theorem P2188734894265162216.correct : P2188734894265162216.Spec := by
  intro n
  simp only [A083088]

end A083088

/-! ## A083088.P13367012298703481448

`∑[runs[ceil(n*(2-sqrt(2)))]]`
-/

namespace A083088.P13367012298703481448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (2 - Real.sqrt (2 : ℝ))⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083088.P13367012298703481448

namespace A083088

/-- `∑[runs[ceil(n*(2-sqrt(2)))]]` -/
def P13367012298703481448.Spec : Prop :=
  ∀ n, (P13367012298703481448.a n : ℤ) = A083088 n

end A083088

/-! ## A083088.P14944907117562610381

`ceil(1/acot(n/(2-sqrt(2))))`
-/

namespace A083088.P14944907117562610381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((n : ℝ) / (2 - Real.sqrt (2 : ℝ)))⌉

end

end A083088.P14944907117562610381

namespace A083088

/-- `ceil(1/acot(n/(2-sqrt(2))))` -/
def P14944907117562610381.Spec : Prop :=
  ∀ n, P14944907117562610381.a n = A083088 n

end A083088

/-! ## A083088.P5364452977837784713

`ceil(sqrt(or(1, n²)/2)+n)`
-/

namespace A083088.P5364452977837784713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((Nat.lor 1 (n ^ 2) : ℚ) / 2 : ℝ) + (n : ℝ)⌉

end

end A083088.P5364452977837784713

namespace A083088

/-- `ceil(sqrt(or(1, n²)/2)+n)` -/
def P5364452977837784713.Spec : Prop :=
  ∀ n, P5364452977837784713.a n = A083088 n

end A083088

/-! ## A083088.P7687236021152430645

`floor(n*cos(acot(1))+1+n)`
-/

namespace A083088.P7687236021152430645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.cos (SequenceMachineLib.acot (1 : ℝ)) + 1 + (n : ℝ)⌋

end

end A083088.P7687236021152430645

namespace A083088

/-- `floor(n*cos(acot(1))+1+n)` -/
def P7687236021152430645.Spec : Prop :=
  ∀ n, P7687236021152430645.a n = A083088 n

end A083088

/-! ## A083088.P11386836927288380531

`floor(n*sin(acot(1))+n+1)`
-/

namespace A083088.P11386836927288380531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sin (SequenceMachineLib.acot (1 : ℝ)) + (n + 1 : ℝ)⌋

end

end A083088.P11386836927288380531

namespace A083088

/-- `floor(n*sin(acot(1))+n+1)` -/
def P11386836927288380531.Spec : Prop :=
  ∀ n, P11386836927288380531.a n = A083088 n

end A083088

/-! ## A083088.P15604035754927157323

`ceil(sqrt(∑[or(1, n)]-n)+n)`
-/

namespace A083088.P15604035754927157323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℝ) + (n : ℝ)⌉

end

end A083088.P15604035754927157323

namespace A083088

/-- `ceil(sqrt(∑[or(1, n)]-n)+n)` -/
def P15604035754927157323.Spec : Prop :=
  ∀ n, P15604035754927157323.a n = A083088 n

end A083088

/-! ## A083088.P5588704957252875684

`(A188319(n+1)+n)/4`
-/

namespace A083088.P5588704957252875684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188319 (n + 1) + (n : ℤ) : ℚ) / 4

end

end A083088.P5588704957252875684

namespace A083088

/-- `(A188319(n+1)+n)/4` -/
def P5588704957252875684.Spec : Prop :=
  ∀ n, P5588704957252875684.a n = (A083088 n : ℚ)

end A083088

/-! ## A083088.P6193167280309210695

`∪[A000778(n), A080755(n+1)]`
-/

namespace A083088.P6193167280309210695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083088.P6193167280309210695

namespace A083088

/-- `∪[A000778(n), A080755(n+1)]` -/
def P6193167280309210695.Spec : Prop :=
  ∀ n, (P6193167280309210695.a n : ℤ) = A083088 n

end A083088

/-! ## A083088.P537449920588132501

`eq[0, A285076(n+1)]`
-/

namespace A083088.P537449920588132501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083088.P537449920588132501

namespace A083088

/-- `eq[0, A285076(n+1)]` -/
def P537449920588132501.Spec : Prop :=
  ∀ n, (P537449920588132501.a n : ℤ) = A083088 n

end A083088

/-! ## A083088.P538062415231711798

`eq[A019590(n+1), A285073(n+1)]`
-/

namespace A083088.P538062415231711798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083088.P538062415231711798

namespace A083088

/-- `eq[A019590(n+1), A285073(n+1)]` -/
def P538062415231711798.Spec : Prop :=
  ∀ n, (P538062415231711798.a n : ℤ) = A083088 n

end A083088

/-! ## A083088.P8331342015104956013

`eq[A033322(n+1), A285073(n+1)]`
-/

namespace A083088.P8331342015104956013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083088.P8331342015104956013

namespace A083088

/-- `eq[A033322(n+1), A285073(n+1)]` -/
def P8331342015104956013.Spec : Prop :=
  ∀ n, (P8331342015104956013.a n : ℤ) = A083088 n

end A083088

/-! ## A083088.P2103896401718065712

`eq[A188037(n+1), A188038(n+1)]`
-/

namespace A083088.P2103896401718065712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083088.P2103896401718065712

namespace A083088

/-- `eq[A188037(n+1), A188038(n+1)]` -/
def P2103896401718065712.Spec : Prop :=
  ∀ n, (P2103896401718065712.a n : ℤ) = A083088 n

end A083088

/-! ## A083088.P2251106884297748197

`A023443(A285077(n+1))`
-/

namespace A083088.P2251106884297748197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285077 (n + 1)).toNat

end

end A083088.P2251106884297748197

namespace A083088

/-- `A023443(A285077(n+1))` -/
def P2251106884297748197.Spec : Prop :=
  ∀ n, P2251106884297748197.a n = A083088 n

end A083088

/-! ## A083088.P11596529906326779487

`A000720(A000040(A049472(n)+n+1))`
-/

namespace A083088.P11596529906326779487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (A049472 n + (n + 1 : ℤ)).toNat).toNat

end

end A083088.P11596529906326779487

namespace A083088

/-- `A000720(A000040(A049472(n)+n+1))` -/
def P11596529906326779487.Spec : Prop :=
  ∀ n, P11596529906326779487.a n = A083088 n

end A083088

/-! ## A083088.P13250936313908058442

`A049473(A001951(n)+n+1)`
-/

namespace A083088.P13250936313908058442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A001951 n + (n + 1 : ℤ)).toNat

end

end A083088.P13250936313908058442

namespace A083088

/-- `A049473(A001951(n)+n+1)` -/
def P13250936313908058442.Spec : Prop :=
  ∀ n, P13250936313908058442.a n = A083088 n

end A083088

/-! ## A083088.P8228030364067053617

`A049473(A049472(2*n)+n+1)`
-/

namespace A083088.P8228030364067053617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A049472 (2 * n) + (n + 1 : ℤ)).toNat

end

end A083088.P8228030364067053617

namespace A083088

/-- `A049473(A049472(2*n)+n+1)` -/
def P8228030364067053617.Spec : Prop :=
  ∀ n, P8228030364067053617.a n = A083088 n

end A083088

/-! ## A083088.P7854715462005141631

`A049472(A001953(A049472(n)+n+1))`
-/

namespace A083088.P7854715462005141631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A001953 (A049472 n + (n + 1 : ℤ)).toNat).toNat

end

end A083088.P7854715462005141631

namespace A083088

/-- `A049472(A001953(A049472(n)+n+1))` -/
def P7854715462005141631.Spec : Prop :=
  ∀ n, P7854715462005141631.a n = A083088 n

end A083088

/-! ## A083088.P5717627288623825895

`A049472(A097432(A049472(n)+n+1))`
-/

namespace A083088.P5717627288623825895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A097432 (A049472 n + (n + 1 : ℤ)).toNat).toNat

end

end A083088.P5717627288623825895

namespace A083088

/-- `A049472(A097432(A049472(n)+n+1))` -/
def P5717627288623825895.Spec : Prop :=
  ∀ n, P5717627288623825895.a n = A083088 n

end A083088

/-!
# A083089: Numbers that are congruent to {0, 2, 4, 6, 7, 9, 11} mod 12.

The programs for A083089, the canonical program `A083089.P11747172532424685322` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083089 has offset 1).

The definition of A083089 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A083089.anchor (n : ℕ) (hn : 1 ≤ n) : A083089 n = (Nat.nth (fun k => k % 12 ∈ ({0, 2, 4, 6, 7, 9, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A083.A083089`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083089.P11747172532424685322

`a(n-7)+12` with `a(0)=0, a(1)=2, a(2)=4, a(3)=6, a(4)=7, a(5)=9, a(6)=11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083089

/-- `a(n-7)+12` -/
def P11747172532424685322.Spec : Prop :=
  ∀ n, (P11747172532424685322.a n : ℤ) = A083089 (n + 1)

theorem P11747172532424685322.correct : P11747172532424685322.Spec := by
  intro n
  simp only [A083089, Nat.add_sub_cancel]

end A083089

/-! ## A083089.P18082030815025848038

`2*(n+1)-2-floor(2*n/7)`
-/

namespace A083089.P18082030815025848038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 2 - ⌊(2 * n : ℚ) / 7⌋

end

end A083089.P18082030815025848038

namespace A083089

/-- `2*(n+1)-2-floor(2*n/7)` -/
def P18082030815025848038.Spec : Prop :=
  ∀ n, P18082030815025848038.a n = A083089 (n + 1)

end A083089

/-! ## A083089.P15511635910394882181

`ogf((2x+2x^2+2x^3+x^4+2x^5+2x^6+x^7)/(1-x-x^7+x^8))`
-/

namespace A083089.P15511635910394882181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 2, 1, 2, 2, 1] [1, -1, 0, 0, 0, 0, 0, -1, 1] n

end

end A083089.P15511635910394882181

namespace A083089

/-- `ogf((2x+2x^2+2x^3+x^4+2x^5+2x^6+x^7)/(1-x-x^7+x^8))` -/
def P15511635910394882181.Spec : Prop :=
  ∀ n, P15511635910394882181.a n = A083089 (n + 1)

end A083089

/-! ## A083089.P3709818272470515449

`ceil(lcm(2, 12*n)/7)`
-/

namespace A083089.P3709818272470515449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (12 * n) : ℚ) / 7⌉

end

end A083089.P3709818272470515449

namespace A083089

/-- `ceil(lcm(2, 12*n)/7)` -/
def P3709818272470515449.Spec : Prop :=
  ∀ n, P3709818272470515449.a n = A083089 (n + 1)

end A083089

/-! ## A083089.P16650259886857812555

`comp[comp[a(n-2)+7]+n]` with `a(0)=0, a(1)=4`
-/

namespace A083089.P16650259886857812555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 2) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083089.P16650259886857812555

namespace A083089

/-- `comp[comp[a(n-2)+7]+n]` -/
def P16650259886857812555.Spec : Prop :=
  ∀ n, (P16650259886857812555.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P3519163753439307282

`floor(A017593(n)/7)`
-/

namespace A083089.P3519163753439307282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017593 n : ℚ) / 7⌋

end

end A083089.P3519163753439307282

namespace A083089

/-- `floor(A017593(n)/7)` -/
def P3519163753439307282.Spec : Prop :=
  ∀ n, P3519163753439307282.a n = A083089 (n + 1)

end A083089

/-! ## A083089.P15373591969317415897

`floor(2*A016945(n)/7)`
-/

namespace A083089.P15373591969317415897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A016945 n : ℚ) / 7⌋

end

end A083089.P15373591969317415897

namespace A083089

/-- `floor(2*A016945(n)/7)` -/
def P15373591969317415897.Spec : Prop :=
  ∀ n, P15373591969317415897.a n = A083089 (n + 1)

end A083089

/-! ## A083089.P14152710481454475452

`comp[floor(A250120(n)/2)+1]`
-/

namespace A083089.P14152710481454475452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A250120 n : ℚ) / 2⌋ + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083089.P14152710481454475452

namespace A083089

/-- `comp[floor(A250120(n)/2)+1]` -/
def P14152710481454475452.Spec : Prop :=
  ∀ n, (P14152710481454475452.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P1530177930558045051

`comp[comp[A047345(n+1)]+n]`
-/

namespace A083089.P1530177930558045051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083089.P1530177930558045051

namespace A083089

/-- `comp[comp[A047345(n+1)]+n]` -/
def P1530177930558045051.Spec : Prop :=
  ∀ n, (P1530177930558045051.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P11089994101565065402

`comp[A047381(n+1)+1+n]`
-/

namespace A083089.P11089994101565065402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047381 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083089.P11089994101565065402

namespace A083089

/-- `comp[A047381(n+1)+1+n]` -/
def P11089994101565065402.Spec : Prop :=
  ∀ n, (P11089994101565065402.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P7294638940813456682

`comp[A047301(n+1)-2+n]`
-/

namespace A083089.P7294638940813456682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047301 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083089.P7294638940813456682

namespace A083089

/-- `comp[A047301(n+1)-2+n]` -/
def P7294638940813456682.Spec : Prop :=
  ∀ n, (P7294638940813456682.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P10981668282329324339

`comp[2*n-(4-A288156(n))]`
-/

namespace A083089.P10981668282329324339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (4 - A288156 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A083089.P10981668282329324339

namespace A083089

/-- `comp[2*n-(4-A288156(n))]` -/
def P10981668282329324339.Spec : Prop :=
  ∀ n, (P10981668282329324339.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P11971844970304061481

`comp[comp[A047291(2*n+1)]+n]`
-/

namespace A083089.P11971844970304061481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047291 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083089.P11971844970304061481

namespace A083089

/-- `comp[comp[A047291(2*n+1)]+n]` -/
def P11971844970304061481.Spec : Prop :=
  ∀ n, (P11971844970304061481.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P16407349494856327311

`comp[comp[A047293(2*n+1)]+n]`
-/

namespace A083089.P16407349494856327311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047293 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083089.P16407349494856327311

namespace A083089

/-- `comp[comp[A047293(2*n+1)]+n]` -/
def P16407349494856327311.Spec : Prop :=
  ∀ n, (P16407349494856327311.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P6306254571831898888

`comp[comp[A047297(2*n+1)]+n]`
-/

namespace A083089.P6306254571831898888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047297 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083089.P6306254571831898888

namespace A083089

/-- `comp[comp[A047297(2*n+1)]+n]` -/
def P6306254571831898888.Spec : Prop :=
  ∀ n, (P6306254571831898888.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P11108180100691191354

`comp[comp[A047365(2*n+1)]+n]`
-/

namespace A083089.P11108180100691191354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047365 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083089.P11108180100691191354

namespace A083089

/-- `comp[comp[A047365(2*n+1)]+n]` -/
def P11108180100691191354.Spec : Prop :=
  ∀ n, (P11108180100691191354.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P12974991951436829986

`comp[comp[A047377(2*n+1)]+n]`
-/

namespace A083089.P12974991951436829986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047377 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083089.P12974991951436829986

namespace A083089

/-- `comp[comp[A047377(2*n+1)]+n]` -/
def P12974991951436829986.Spec : Prop :=
  ∀ n, (P12974991951436829986.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P5759700029860375809

`∪[A175884(n+1), A180713(n)]`
-/

namespace A083089.P5759700029860375809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180713 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083089.P5759700029860375809

namespace A083089

/-- `∪[A175884(n+1), A180713(n)]` -/
def P5759700029860375809.Spec : Prop :=
  ∀ n, (P5759700029860375809.a n : ℤ) = A083089 (n + 1)

end A083089

/-! ## A083089.P12576754006926674913

`A023443(A083034(n+2))`
-/

namespace A083089.P12576754006926674913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083034 (n + 2)).toNat

end

end A083089.P12576754006926674913

namespace A083089

/-- `A023443(A083034(n+2))` -/
def P12576754006926674913.Spec : Prop :=
  ∀ n, P12576754006926674913.a n = A083089 (n + 1)

end A083089

/-! ## A083089.P13499932040319745592

`A145569(2*n)`
-/

namespace A083089.P13499932040319745592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (2 * n)

end

end A083089.P13499932040319745592

namespace A083089

/-- `A145569(2*n)` -/
def P13499932040319745592.Spec : Prop :=
  ∀ n, P13499932040319745592.a n = A083089 (n + 1)

end A083089

/-!
# A083090: Main diagonal of table A083087.

The programs for A083090, there is no canonical definition to state claims against.
-/

/-! ## A083090.P6321441894998959102

`A083087(∑[4*n])`
-/

namespace A083090.P6321441894998959102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083090.P6321441894998959102

/-! ## A083090.P16919565634212927149

`A326632(n)+A083087(A046092(n))`
-/

namespace A083090.P16919565634212927149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326632 n + A083087 (A046092 n).toNat

end

end A083090.P16919565634212927149

/-! ## A083090.P3411766419741709100

`A083087(A046092(n))*A173441(2*n+3)`
-/

namespace A083090.P3411766419741709100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083087 (A046092 n).toNat * A173441 (2 * n + 3)

end

end A083090.P3411766419741709100

/-!
# A083091: Antidiagonal sums of table A083087.

The programs for A083091, there is no canonical definition to state claims against.
-/

/-! ## A083091.P11048044521695828569

`A186221(A097432(a(n-1)+n))` with `a(0)=1`
-/

namespace A083091.P11048044521695828569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186221 (A097432 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A083091.P11048044521695828569

/-! ## A083091.P6325115860697072405

`A248562(A048776(n))`
-/

namespace A083091.P6325115860697072405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (A048776 n).toNat

end

end A083091.P6325115860697072405

/-! ## A083091.P3190879752894412889

`A248562(∑[A083087(∑[n])])`
-/

namespace A083091.P3190879752894412889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083087 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083091.P3190879752894412889

/-!
# A083092: Numbers k such that 7*5^k + 2 is a prime.

The programs for A083092, there is no canonical definition to state claims against.
-/

/-! ## A083092.P9529479255358623514

`A013597(∑[A038723(n)+∏{d}[n+1, #+1]-1]+n)`
-/

namespace A083092.P9529479255358623514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038723 n + (((∏ d ∈ Nat.divisors (f2 n), (d + 1) : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A083092.P9529479255358623514

/-!
# A083093: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 3.

The programs for A083093, the canonical program `A083093.P3003172321114587579` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083093 has offset 0).

The definition of A083093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083093.P3003172321114587579

`C(row(n), col(n))%3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083093

/-- `C(row(n), col(n))%3` -/
def P3003172321114587579.Spec : Prop :=
  ∀ n, (P3003172321114587579.a n : ℤ) = A083093 n

theorem P3003172321114587579.correct : P3003172321114587579.Spec := by
  intro n
  simp only [A083093]

end A083093

/-! ## A083093.P5409507430586271519

`(T(n-1,k)+T(n-1,k-1))%3` with `a(0)=1`
-/

namespace A083093.P5409507430586271519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) % 3

end

end A083093.P5409507430586271519

namespace A083093

/-- `(T(n-1,k)+T(n-1,k-1))%3` -/
def P5409507430586271519.Spec : Prop :=
  ∀ n, (P5409507430586271519.a n : ℤ) = A083093 n

end A083093

/-! ## A083093.P16673322670573577360

`(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%3` with `a(0)=1, a(1)=1`
-/

namespace A083093.P16673322670573577360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp2Left a n) % 3

end

end A083093.P16673322670573577360

namespace A083093

/-- `(T(n-1,k-1)+T(n-2,k)+T(n-2,k-1))%3` -/
def P16673322670573577360.Spec : Prop :=
  ∀ n, (P16673322670573577360.a n : ℤ) = A083093 n

end A083093

/-! ## A083093.P10315489517502090489

`(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%3` with `a(0)=1`
-/

namespace A083093.P10315489517502090489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)) 3

end

end A083093.P10315489517502090489

namespace A083093

/-- `(2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k)))%3` -/
def P10315489517502090489.Spec : Prop :=
  ∀ n, P10315489517502090489.a n = A083093 n

end A083093

/-! ## A083093.P6402545474797196724

`C(∑[abs(T(n-1,k))], col(n))%3` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A083093.P6402545474797196724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.triCol n) % 3

end

end A083093.P6402545474797196724

namespace A083093

/-- `C(∑[abs(T(n-1,k))], col(n))%3` -/
def P6402545474797196724.Spec : Prop :=
  ∀ n, (P6402545474797196724.a n : ℤ) = A083093 n

end A083093

/-! ## A083093.P5408878415097331119

`A007318(n)%3`
-/

namespace A083093.P5408878415097331119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 3

end

end A083093.P5408878415097331119

namespace A083093

/-- `A007318(n)%3` -/
def P5408878415097331119.Spec : Prop :=
  ∀ n, P5408878415097331119.a n = A083093 n

end A083093

/-! ## A083093.P7153588818104438968

`A013611(n)%3`
-/

namespace A083093.P7153588818104438968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013611 n) 3

end

end A083093.P7153588818104438968

namespace A083093

/-- `A013611(n)%3` -/
def P7153588818104438968.Spec : Prop :=
  ∀ n, P7153588818104438968.a n = A083093 n

end A083093

/-! ## A083093.P15085598529397892434

`A026907(n)%3`
-/

namespace A083093.P15085598529397892434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026907 n) 3

end

end A083093.P15085598529397892434

namespace A083093

/-- `A026907(n)%3` -/
def P15085598529397892434.Spec : Prop :=
  ∀ n, P15085598529397892434.a n = A083093 n

end A083093

/-! ## A083093.P15471088885220710765

`A028313(n)%3`
-/

namespace A083093.P15471088885220710765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028313 n) 3

end

end A083093.P15471088885220710765

namespace A083093

/-- `A028313(n)%3` -/
def P15471088885220710765.Spec : Prop :=
  ∀ n, P15471088885220710765.a n = A083093 n

end A083093

/-! ## A083093.P10281009021629298678

`A038231(n)%3`
-/

namespace A083093.P10281009021629298678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038231 n) 3

end

end A083093.P10281009021629298678

namespace A083093

/-- `A038231(n)%3` -/
def P10281009021629298678.Spec : Prop :=
  ∀ n, P10281009021629298678.a n = A083093 n

end A083093

/-! ## A083093.P10262429718800196192

`A081578(n)%3`
-/

namespace A083093.P10262429718800196192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081578 n) 3

end

end A083093.P10262429718800196192

namespace A083093

/-- `A081578(n)%3` -/
def P10262429718800196192.Spec : Prop :=
  ∀ n, P10262429718800196192.a n = A083093 n

end A083093

/-! ## A083093.P12997586601852013013

`A093561(n)%3`
-/

namespace A083093.P12997586601852013013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093561 n) 3

end

end A083093.P12997586601852013013

namespace A083093

/-- `A093561(n)%3` -/
def P12997586601852013013.Spec : Prop :=
  ∀ n, P12997586601852013013.a n = A083093 n

end A083093

/-! ## A083093.P11724599228880650842

`A093564(n)%3`
-/

namespace A083093.P11724599228880650842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093564 n) 3

end

end A083093.P11724599228880650842

namespace A083093

/-- `A093564(n)%3` -/
def P11724599228880650842.Spec : Prop :=
  ∀ n, P11724599228880650842.a n = A083093 n

end A083093

/-! ## A083093.P13636574716393820443

`A093645(n)%3`
-/

namespace A083093.P13636574716393820443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093645 n) 3

end

end A083093.P13636574716393820443

namespace A083093

/-- `A093645(n)%3` -/
def P13636574716393820443.Spec : Prop :=
  ∀ n, P13636574716393820443.a n = A083093 n

end A083093

/-! ## A083093.P13535895477776013746

`A095666(n)%3`
-/

namespace A083093.P13535895477776013746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095666 n) 3

end

end A083093.P13535895477776013746

namespace A083093

/-- `A095666(n)%3` -/
def P13535895477776013746.Spec : Prop :=
  ∀ n, P13535895477776013746.a n = A083093 n

end A083093

/-! ## A083093.P15720194412336737347

`A116414(n)%3`
-/

namespace A083093.P15720194412336737347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116414 n) 3

end

end A083093.P15720194412336737347

namespace A083093

/-- `A116414(n)%3` -/
def P15720194412336737347.Spec : Prop :=
  ∀ n, P15720194412336737347.a n = A083093 n

end A083093

/-! ## A083093.P17853347252229179837

`A131061(n)%3`
-/

namespace A083093.P17853347252229179837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131061 n) 3

end

end A083093.P17853347252229179837

namespace A083093

/-- `A131061(n)%3` -/
def P17853347252229179837.Spec : Prop :=
  ∀ n, P17853347252229179837.a n = A083093 n

end A083093

/-! ## A083093.P12122271223488709989

`A131067(n)%3`
-/

namespace A083093.P12122271223488709989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131067 n) 3

end

end A083093.P12122271223488709989

namespace A083093

/-- `A131067(n)%3` -/
def P12122271223488709989.Spec : Prop :=
  ∀ n, P12122271223488709989.a n = A083093 n

end A083093

/-! ## A083093.P3184564557567719651

`A131115(n)%3`
-/

namespace A083093.P3184564557567719651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131115 n) 3

end

end A083093.P3184564557567719651

namespace A083093

/-- `A131115(n)%3` -/
def P3184564557567719651.Spec : Prop :=
  ∀ n, P3184564557567719651.a n = A083093 n

end A083093

/-! ## A083093.P11670827355301257676

`A010872(A095145(n))`
-/

namespace A083093.P11670827355301257676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A095145 n).toNat

end

end A083093.P11670827355301257676

namespace A083093

/-- `A010872(A095145(n))` -/
def P11670827355301257676.Spec : Prop :=
  ∀ n, P11670827355301257676.a n = A083093 n

end A083093

/-!
# A083094: Numbers k such that Sum_{j=0..k} (binomial(k,j) mod 3) is odd.

The programs for A083094, the canonical program `A083094.P9155610752686370673` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083094 has offset 1).

The definition of A083094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083094.P9155610752686370673

`2*A074939(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083094

/-- `2*A074939(n)` -/
def P9155610752686370673.Spec : Prop :=
  ∀ n, P9155610752686370673.a n = A083094 (n + 1)

theorem P9155610752686370673.correct : P9155610752686370673.Spec := by
  intro n
  simp only [A083094, Nat.add_sub_cancel]

end A083094

/-! ## A083094.P6020098561515314814

`4*A083095(n+1)`
-/

namespace A083094.P6020098561515314814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A083095 (n + 1)

end

end A083094.P6020098561515314814

namespace A083094

/-- `4*A083095(n+1)` -/
def P6020098561515314814.Spec : Prop :=
  ∀ n, P6020098561515314814.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P15231496403653677779

`and(3*(∑[and(n, -n)^log2(3)]+1+n), -4)`
-/

namespace A083094.P15231496403653677779
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (3 * (∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℝ)))) (-4)

end

end A083094.P15231496403653677779

namespace A083094

/-- `and(3*(∑[and(n, -n)^log2(3)]+1+n), -4)` -/
def P15231496403653677779.Spec : Prop :=
  ∀ n, P15231496403653677779.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P10121012259161943383

`and(2*(∑[3*a(∑[n]%n)-3]-1), -3)` with `a(0)=2`
-/

namespace A083094.P10121012259161943383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)) (-3)

end

end A083094.P10121012259161943383

namespace A083094

/-- `and(2*(∑[3*a(∑[n]%n)-3]-1), -3)` -/
def P10121012259161943383.Spec : Prop :=
  ∀ n, P10121012259161943383.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P3582794161838029142

`record[A300222(4*n)]`
-/

namespace A083094.P3582794161838029142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083094.P3582794161838029142

namespace A083094

/-- `record[A300222(4*n)]` -/
def P3582794161838029142.Spec : Prop :=
  ∀ n, P3582794161838029142.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P8196293188855240603

`4*A083097(n+1)`
-/

namespace A083094.P8196293188855240603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A083097 (n + 1)

end

end A083094.P8196293188855240603

namespace A083094

/-- `4*A083097(n+1)` -/
def P8196293188855240603.Spec : Prop :=
  ∀ n, P8196293188855240603.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P3623505080470491088

`and(-3, A190640(n+1))`
-/

namespace A083094.P3623505080470491088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A190640 (n + 1))

end

end A083094.P3623505080470491088

namespace A083094

/-- `and(-3, A190640(n+1))` -/
def P3623505080470491088.Spec : Prop :=
  ∀ n, P3623505080470491088.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P13911627125599091432

`record[2*A117966(2*n)]`
-/

namespace A083094.P13911627125599091432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117966 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083094.P13911627125599091432

namespace A083094

/-- `record[2*A117966(2*n)]` -/
def P13911627125599091432.Spec : Prop :=
  ∀ n, P13911627125599091432.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P17194230714632344793

`2/3*A083096(n+1)`
-/

namespace A083094.P17194230714632344793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A083096 (n + 1) : ℚ)

end

end A083094.P17194230714632344793

namespace A083094

/-- `2/3*A083096(n+1)` -/
def P17194230714632344793.Spec : Prop :=
  ∀ n, P17194230714632344793.a n = (A083094 (n + 1) : ℚ)

end A083094

/-! ## A083094.P9969998601866990391

`A004488(A074939(n))`
-/

namespace A083094.P9969998601866990391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A074939 n).toNat

end

end A083094.P9969998601866990391

namespace A083094

/-- `A004488(A074939(n))` -/
def P9969998601866990391.Spec : Prop :=
  ∀ n, P9969998601866990391.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P6194289021159482595

`A005823(A026147(n+1))`
-/

namespace A083094.P6194289021159482595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A026147 (n + 1)).toNat

end

end A083094.P6194289021159482595

namespace A083094

/-- `A005823(A026147(n+1))` -/
def P6194289021159482595.Spec : Prop :=
  ∀ n, P6194289021159482595.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P3391782626671725516

`A008586(A083097(n+1))`
-/

namespace A083094.P3391782626671725516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A083097 (n + 1)).toNat

end

end A083094.P3391782626671725516

namespace A083094

/-- `A008586(A083097(n+1))` -/
def P3391782626671725516.Spec : Prop :=
  ∀ n, P3391782626671725516.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P13577178311660754011

`filter[A008586(n), A088917(#)]`
-/

namespace A083094.P13577178311660754011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088917 (f1 j).toNat = 1) n)

end

end A083094.P13577178311660754011

namespace A083094

/-- `filter[A008586(n), A088917(#)]` -/
def P13577178311660754011.Spec : Prop :=
  ∀ n, P13577178311660754011.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P7602355166199704157

`filter[A019425(n), A088917(#)]`
-/

namespace A083094.P7602355166199704157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088917 (f1 j).toNat = 1) n)

end

end A083094.P7602355166199704157

namespace A083094

/-- `filter[A019425(n), A088917(#)]` -/
def P7602355166199704157.Spec : Prop :=
  ∀ n, P7602355166199704157.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P4473171977172202956

`filter[A088440(n), A088917(#)]`
-/

namespace A083094.P4473171977172202956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088917 (f1 j).toNat = 1) n)

end

end A083094.P4473171977172202956

namespace A083094

/-- `filter[A088440(n), A088917(#)]` -/
def P4473171977172202956.Spec : Prop :=
  ∀ n, P4473171977172202956.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P16080117328273566116

`A083096(n+1)-A074939(n)`
-/

namespace A083094.P16080117328273566116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083096 (n + 1) - A074939 n

end

end A083094.P16080117328273566116

namespace A083094

/-- `A083096(n+1)-A074939(n)` -/
def P16080117328273566116.Spec : Prop :=
  ∀ n, P16080117328273566116.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P2838384582170443107

`A055246(n+1)-A106400(n)`
-/

namespace A083094.P2838384582170443107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 1) - A106400 n

end

end A083094.P2838384582170443107

namespace A083094

/-- `A055246(n+1)-A106400(n)` -/
def P2838384582170443107.Spec : Prop :=
  ∀ n, P2838384582170443107.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P18085400015515498964

`filter[A005823(n+1), A121262(#)]`
-/

namespace A083094.P18085400015515498964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A083094.P18085400015515498964

namespace A083094

/-- `filter[A005823(n+1), A121262(#)]` -/
def P18085400015515498964.Spec : Prop :=
  ∀ n, P18085400015515498964.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P2225327886278612928

`filter[A005823(n+1), A152822(#)]`
-/

namespace A083094.P2225327886278612928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A083094.P2225327886278612928

namespace A083094

/-- `filter[A005823(n+1), A152822(#)]` -/
def P2225327886278612928.Spec : Prop :=
  ∀ n, P2225327886278612928.a n = A083094 (n + 1)

end A083094

/-! ## A083094.P1676438518389499214

`filter[A196747(n+1), A121262(#)]`
-/

namespace A083094.P1676438518389499214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A083094.P1676438518389499214

namespace A083094

/-- `filter[A196747(n+1), A121262(#)]` -/
def P1676438518389499214.Spec : Prop :=
  ∀ n, P1676438518389499214.a n = A083094 (n + 1)

end A083094

/-!
# A083095: a(n) = A083094(n)/4.

The programs for A083095, the canonical program `A083095.P498644682861140894` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083095 has offset 1).

The definition of A083095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083094, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083095.P498644682861140894

`A083094(n+1)/4`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083095

/-- `A083094(n+1)/4` -/
def P498644682861140894.Spec : Prop :=
  ∀ n, P498644682861140894.a n = (A083095 (n + 1) : ℚ)

end A083095

/-! ## A083095.P2018619296334179178

`eq[0, A000989(2*n)]`
-/

namespace A083095.P2018619296334179178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P2018619296334179178

namespace A083095

/-- `eq[0, A000989(2*n)]` -/
def P2018619296334179178.Spec : Prop :=
  ∀ n, (P2018619296334179178.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P1364774596897770773

`eq[0, A006997(2*n)]`
-/

namespace A083095.P1364774596897770773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P1364774596897770773

namespace A083095

/-- `eq[0, A006997(2*n)]` -/
def P1364774596897770773.Spec : Prop :=
  ∀ n, (P1364774596897770773.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P4706589170306616696

`eq[0, A060373(2*n)]`
-/

namespace A083095.P4706589170306616696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P4706589170306616696

namespace A083095

/-- `eq[0, A060373(2*n)]` -/
def P4706589170306616696.Spec : Prop :=
  ∀ n, (P4706589170306616696.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P7448606436598600313

`eq[0, A081603(2*n)]`
-/

namespace A083095.P7448606436598600313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P7448606436598600313

namespace A083095

/-- `eq[0, A081603(2*n)]` -/
def P7448606436598600313.Spec : Prop :=
  ∀ n, (P7448606436598600313.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P2173787940725698076

`eq[0, A134022(2*n)]`
-/

namespace A083095.P2173787940725698076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P2173787940725698076

namespace A083095

/-- `eq[0, A134022(2*n)]` -/
def P2173787940725698076.Spec : Prop :=
  ∀ n, (P2173787940725698076.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P3367669494250159390

`eq[0, A227428(2*n)]`
-/

namespace A083095.P3367669494250159390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P3367669494250159390

namespace A083095

/-- `eq[0, A227428(2*n)]` -/
def P3367669494250159390.Spec : Prop :=
  ∀ n, (P3367669494250159390.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P676859982051137881

`eq[0, A262097(2*n)]`
-/

namespace A083095.P676859982051137881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P676859982051137881

namespace A083095

/-- `eq[0, A262097(2*n)]` -/
def P676859982051137881.Spec : Prop :=
  ∀ n, (P676859982051137881.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P9038354357448087533

`eq[0, A273513(2*n)]`
-/

namespace A083095.P9038354357448087533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P9038354357448087533

namespace A083095

/-- `eq[0, A273513(2*n)]` -/
def P9038354357448087533.Spec : Prop :=
  ∀ n, (P9038354357448087533.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P17572649525698595476

`eq[0, A273514(2*n)]`
-/

namespace A083095.P17572649525698595476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P17572649525698595476

namespace A083095

/-- `eq[0, A273514(2*n)]` -/
def P17572649525698595476.Spec : Prop :=
  ∀ n, (P17572649525698595476.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P6728331429586433560

`eq[0, A273515(2*n)]`
-/

namespace A083095.P6728331429586433560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P6728331429586433560

namespace A083095

/-- `eq[0, A273515(2*n)]` -/
def P6728331429586433560.Spec : Prop :=
  ∀ n, (P6728331429586433560.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P11138786653842777498

`eq[0, A289814(2*n)]`
-/

namespace A083095.P11138786653842777498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P11138786653842777498

namespace A083095

/-- `eq[0, A289814(2*n)]` -/
def P11138786653842777498.Spec : Prop :=
  ∀ n, (P11138786653842777498.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P125664736109652899

`eq[0, A353158(2*n)]`
-/

namespace A083095.P125664736109652899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P125664736109652899

namespace A083095

/-- `eq[0, A353158(2*n)]` -/
def P125664736109652899.Spec : Prop :=
  ∀ n, (P125664736109652899.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P1923225499241294272

`eq[1, A006996(2*n)]`
-/

namespace A083095.P1923225499241294272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083095.P1923225499241294272

namespace A083095

/-- `eq[1, A006996(2*n)]` -/
def P1923225499241294272.Spec : Prop :=
  ∀ n, (P1923225499241294272.a n : ℤ) = A083095 (n + 1)

end A083095

/-! ## A083095.P11474793721334832124

`A001281(A074939(n))`
-/

namespace A083095.P11474793721334832124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A074939 n).toNat

end

end A083095.P11474793721334832124

namespace A083095

/-- `A001281(A074939(n))` -/
def P11474793721334832124.Spec : Prop :=
  ∀ n, P11474793721334832124.a n = A083095 (n + 1)

end A083095

/-! ## A083095.P18000461838497601195

`A106251(A074938(n))`
-/

namespace A083095.P18000461838497601195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106251 (A074938 n).toNat

end

end A083095.P18000461838497601195

namespace A083095

/-- `A106251(A074938(n))` -/
def P18000461838497601195.Spec : Prop :=
  ∀ n, P18000461838497601195.a n = A083095 (n + 1)

end A083095

/-! ## A083095.P8943140059432824522

`A110654(A081601(n+1))`
-/

namespace A083095.P8943140059432824522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A081601 (n + 1)).toNat

end

end A083095.P8943140059432824522

namespace A083095

/-- `A110654(A081601(n+1))` -/
def P8943140059432824522.Spec : Prop :=
  ∀ n, P8943140059432824522.a n = A083095 (n + 1)

end A083095

/-! ## A083095.P1320607015158356615

`A004526(A191107(n+1))`
-/

namespace A083095.P1320607015158356615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A191107 (n + 1)).toNat

end

end A083095.P1320607015158356615

namespace A083095

/-- `A004526(A191107(n+1))` -/
def P1320607015158356615.Spec : Prop :=
  ∀ n, P1320607015158356615.a n = A083095 (n + 1)

end A083095

/-! ## A083095.P6615134817922256974

`A057353(A191106(n+1))`
-/

namespace A083095.P6615134817922256974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A191106 (n + 1)).toNat

end

end A083095.P6615134817922256974

namespace A083095

/-- `A057353(A191106(n+1))` -/
def P6615134817922256974.Spec : Prop :=
  ∀ n, P6615134817922256974.a n = A083095 (n + 1)

end A083095

/-! ## A083095.P15198388039262816644

`A174257(A356426(n+1))`
-/

namespace A083095.P15198388039262816644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A356426 (n + 1)).toNat

end

end A083095.P15198388039262816644

namespace A083095

/-- `A174257(A356426(n+1))` -/
def P15198388039262816644.Spec : Prop :=
  ∀ n, P15198388039262816644.a n = A083095 (n + 1)

end A083095

/-!
# A083096: Numbers k such that 3 divides Sum_{j=1..k} binomial(2*j,j).

The programs for A083096, the canonical program `A083096.P3509897848883931141` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083096 has offset 1).

The definition of A083096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083096.P483420292271661431

`6*floor((∑[3*a(∑[n]%n)-3]-1)/2)` with `a(0)=2`
-/

namespace A083096.P483420292271661431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2⌋

end

end A083096.P483420292271661431

namespace A083096

/-- `6*floor((∑[3*a(∑[n]%n)-3]-1)/2)` -/
def P483420292271661431.Spec : Prop :=
  ∀ n, P483420292271661431.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P3509897848883931141

`6*floor(3*(∑[and(n, -n)^log2(3)]+1+n)/4)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083096

/-- `6*floor(3*(∑[and(n, -n)^log2(3)]+1+n)/4)` -/
def P3509897848883931141.Spec : Prop :=
  ∀ n, P3509897848883931141.a n = A083096 (n + 1)

theorem P3509897848883931141.correct : P3509897848883931141.Spec := by
  intro n
  simp only [A083096, Nat.add_sub_cancel]

end A083096

/-! ## A083096.P10727317546433050033

`3/2*and(3*(∑[and(n, -n)^log2(3)]+1+n), -4)`
-/

namespace A083096.P10727317546433050033
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (Int.land (SequenceMachineLib.roundAway (3 * (∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℝ)))) (-4) : ℚ)

end

end A083096.P10727317546433050033

namespace A083096

/-- `3/2*and(3*(∑[and(n, -n)^log2(3)]+1+n), -4)` -/
def P10727317546433050033.Spec : Prop :=
  ∀ n, P10727317546433050033.a n = (A083096 (n + 1) : ℚ)

end A083096

/-! ## A083096.P2567532506773313397

`3*A074939(n)`
-/

namespace A083096.P2567532506773313397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074939 n

end

end A083096.P2567532506773313397

namespace A083096

/-- `3*A074939(n)` -/
def P2567532506773313397.Spec : Prop :=
  ∀ n, P2567532506773313397.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P11196913090475792564

`6*A083097(n+1)`
-/

namespace A083096.P11196913090475792564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A083097 (n + 1)

end

end A083096.P11196913090475792564

namespace A083096

/-- `6*A083097(n+1)` -/
def P11196913090475792564.Spec : Prop :=
  ∀ n, P11196913090475792564.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P2994360185806127777

`A074939(A001969(n+1))`
-/

namespace A083096.P2994360185806127777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 (A001969 (n + 1)).toNat

end

end A083096.P2994360185806127777

namespace A083096

/-- `A074939(A001969(n+1))` -/
def P2994360185806127777.Spec : Prop :=
  ∀ n, P2994360185806127777.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P15371657294417747264

`A081601(A026147(n+1))`
-/

namespace A083096.P15371657294417747264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (A026147 (n + 1)).toNat

end

end A083096.P15371657294417747264

namespace A083096

/-- `A081601(A026147(n+1))` -/
def P15371657294417747264.Spec : Prop :=
  ∀ n, P15371657294417747264.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P9257842205560699477

`∩[A081601(n+1), A074939(n)]`
-/

namespace A083096.P9257842205560699477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083096.P9257842205560699477

namespace A083096

/-- `∩[A081601(n+1), A074939(n)]` -/
def P9257842205560699477.Spec : Prop :=
  ∀ n, (P9257842205560699477.a n : ℤ) = A083096 (n + 1)

end A083096

/-! ## A083096.P11911682596678720924

`A074938(A143579(2*n+1))-1`
-/

namespace A083096.P11911682596678720924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 (A143579 (2 * n + 1)).toNat - 1

end

end A083096.P11911682596678720924

namespace A083096

/-- `A074938(A143579(2*n+1))-1` -/
def P11911682596678720924.Spec : Prop :=
  ∀ n, P11911682596678720924.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P2339628182271612200

`A081601(A010060(n)+2*n+1)`
-/

namespace A083096.P2339628182271612200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (A010060 n + (2 * n + 1 : ℤ)).toNat

end

end A083096.P2339628182271612200

namespace A083096

/-- `A081601(A010060(n)+2*n+1)` -/
def P2339628182271612200.Spec : Prop :=
  ∀ n, P2339628182271612200.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P834687865250293028

`A081601(A316828(2*n)+2*n+1)`
-/

namespace A083096.P834687865250293028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (A316828 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A083096.P834687865250293028

namespace A083096

/-- `A081601(A316828(2*n)+2*n+1)` -/
def P834687865250293028.Spec : Prop :=
  ∀ n, P834687865250293028.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P14749416128090636576

`A005836(A092246(n+1))`
-/

namespace A083096.P14749416128090636576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A092246 (n + 1)).toNat

end

end A083096.P14749416128090636576

namespace A083096

/-- `A005836(A092246(n+1))` -/
def P14749416128090636576.Spec : Prop :=
  ∀ n, P14749416128090636576.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P10440398444860933777

`∩[A186776(n+1), A074939(n)]`
-/

namespace A083096.P10440398444860933777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083096.P10440398444860933777

namespace A083096

/-- `∩[A186776(n+1), A074939(n)]` -/
def P10440398444860933777.Spec : Prop :=
  ∀ n, (P10440398444860933777.a n : ℤ) = A083096 (n + 1)

end A083096

/-! ## A083096.P3015087303137147661

`record[A005836(2*n+1)*A010059(n)]`
-/

namespace A083096.P3015087303137147661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (2 * n + 1) * A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083096.P3015087303137147661

namespace A083096

/-- `record[A005836(2*n+1)*A010059(n)]` -/
def P3015087303137147661.Spec : Prop :=
  ∀ n, P3015087303137147661.a n = A083096 (n + 1)

end A083096

/-! ## A083096.P15492563486221274669

`∩[A256883(n+1), A074939(n)]`
-/

namespace A083096.P15492563486221274669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083096.P15492563486221274669

namespace A083096

/-- `∩[A256883(n+1), A074939(n)]` -/
def P15492563486221274669.Spec : Prop :=
  ∀ n, (P15492563486221274669.a n : ℤ) = A083096 (n + 1)

end A083096

/-! ## A083096.P3131454532286961855

`∩[A005836(n+1), A256883(n+1)]`
-/

namespace A083096.P3131454532286961855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083096.P3131454532286961855

namespace A083096

/-- `∩[A005836(n+1), A256883(n+1)]` -/
def P3131454532286961855.Spec : Prop :=
  ∀ n, (P3131454532286961855.a n : ℤ) = A083096 (n + 1)

end A083096

/-! ## A083096.P12066873245929239811

`∩[A081601(n+1), A256883(n+1)]`
-/

namespace A083096.P12066873245929239811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083096.P12066873245929239811

namespace A083096

/-- `∩[A081601(n+1), A256883(n+1)]` -/
def P12066873245929239811.Spec : Prop :=
  ∀ n, (P12066873245929239811.a n : ℤ) = A083096 (n + 1)

end A083096

/-! ## A083096.P9140803358438266370

`∩[A082575(n+1), A256883(n+1)]`
-/

namespace A083096.P9140803358438266370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083096.P9140803358438266370

namespace A083096

/-- `∩[A082575(n+1), A256883(n+1)]` -/
def P9140803358438266370.Spec : Prop :=
  ∀ n, (P9140803358438266370.a n : ℤ) = A083096 (n + 1)

end A083096

/-! ## A083096.P5897560979552782784

`∩[A185256(n+1), A256883(n+1)]`
-/

namespace A083096.P5897560979552782784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083096.P5897560979552782784

namespace A083096

/-- `∩[A185256(n+1), A256883(n+1)]` -/
def P5897560979552782784.Spec : Prop :=
  ∀ n, (P5897560979552782784.a n : ℤ) = A083096 (n + 1)

end A083096

/-! ## A083096.P6581668036339160484

`∩[A186776(n+1), A256883(n+1)]`
-/

namespace A083096.P6581668036339160484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083096.P6581668036339160484

namespace A083096

/-- `∩[A186776(n+1), A256883(n+1)]` -/
def P6581668036339160484.Spec : Prop :=
  ∀ n, (P6581668036339160484.a n : ℤ) = A083096 (n + 1)

end A083096

/-!
# A083097: a(n) = A083096(n)/6.

The programs for A083097, the canonical program `A083097.P13791379161997685885` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083097 has offset 1).

The definition of A083097 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083097.P13791379161997685885

`A074939(n)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083097

/-- `A074939(n)/2` -/
def P13791379161997685885.Spec : Prop :=
  ∀ n, P13791379161997685885.a n = (A083097 (n + 1) : ℚ)

end A083097

/-! ## A083097.P9125977989343428324

`floor((∑[3*a(∑[n]%n)-3]-1)/2)` with `a(0)=2`
-/

namespace A083097.P9125977989343428324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2⌋

end

end A083097.P9125977989343428324

namespace A083097

/-- `floor((∑[3*a(∑[n]%n)-3]-1)/2)` -/
def P9125977989343428324.Spec : Prop :=
  ∀ n, P9125977989343428324.a n = A083097 (n + 1)

end A083097

/-! ## A083097.P8375498408168959720

`floor(3*(∑[and(n, -n)^log2(3)]+1+n)/4)`
-/

namespace A083097.P8375498408168959720
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℝ)) / 4)⌋

end

end A083097.P8375498408168959720

namespace A083097

/-- `floor(3*(∑[and(n, -n)^log2(3)]+1+n)/4)` -/
def P8375498408168959720.Spec : Prop :=
  ∀ n, P8375498408168959720.a n = A083097 (n + 1)

end A083097

/-! ## A083097.P1123520350832505308

`round((3*(∑[and(n, -n)^log2(3)]+n)+1)/4)`
-/

namespace A083097.P1123520350832505308
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) + 1) / 4)

end

end A083097.P1123520350832505308

namespace A083097

/-- `round((3*(∑[and(n, -n)^log2(3)]+n)+1)/4)` -/
def P1123520350832505308.Spec : Prop :=
  ∀ n, P1123520350832505308.a n = A083097 (n + 1)

end A083097

/-! ## A083097.P9278054740576284890

`ceil(3/2*(∑[and(n, -n)^log2(3)]+n)/2)`
-/

namespace A083097.P9278054740576284890
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℚ) / 2 : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2)⌉

end

end A083097.P9278054740576284890

namespace A083097

/-- `ceil(3/2*(∑[and(n, -n)^log2(3)]+n)/2)` -/
def P9278054740576284890.Spec : Prop :=
  ∀ n, P9278054740576284890.a n = A083097 (n + 1)

end A083097

/-! ## A083097.P2060664930468429439

`and(3*(∑[and(n, -n)^log2(3)]+1+n), -4)/4`
-/

namespace A083097.P2060664930468429439
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (SequenceMachineLib.roundAway (3 * (∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℝ)))) (-4) : ℚ) / 4

end

end A083097.P2060664930468429439

namespace A083097

/-- `and(3*(∑[and(n, -n)^log2(3)]+1+n), -4)/4` -/
def P2060664930468429439.Spec : Prop :=
  ∀ n, P2060664930468429439.a n = (A083097 (n + 1) : ℚ)

end A083097

/-! ## A083097.P953059642217480915

`round(A062548(n)/8)`
-/

namespace A083097.P953059642217480915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062548 n : ℚ) / 8)

end

end A083097.P953059642217480915

namespace A083097

/-- `round(A062548(n)/8)` -/
def P953059642217480915.Spec : Prop :=
  ∀ n, P953059642217480915.a n = A083097 (n + 1)

end A083097

/-! ## A083097.P8699202744268875268

`A083096(n+1)/6`
-/

namespace A083097.P8699202744268875268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083096 (n + 1) : ℚ) / 6

end

end A083097.P8699202744268875268

namespace A083097

/-- `A083096(n+1)/6` -/
def P8699202744268875268.Spec : Prop :=
  ∀ n, P8699202744268875268.a n = (A083097 (n + 1) : ℚ)

end A083097

/-! ## A083097.P13032607294667536559

`eq[0, A276204(2*n)]`
-/

namespace A083097.P13032607294667536559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276204 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083097.P13032607294667536559

namespace A083097

/-- `eq[0, A276204(2*n)]` -/
def P13032607294667536559.Spec : Prop :=
  ∀ n, (P13032607294667536559.a n : ℤ) = A083097 (n + 1)

end A083097

/-! ## A083097.P1215516123208092795

`eq[0, A276207(2*n)]`
-/

namespace A083097.P1215516123208092795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276207 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083097.P1215516123208092795

namespace A083097

/-- `eq[0, A276207(2*n)]` -/
def P1215516123208092795.Spec : Prop :=
  ∀ n, (P1215516123208092795.a n : ℤ) = A083097 (n + 1)

end A083097

/-! ## A083097.P13877692574460967545

`eq[0, A300222(2*n)]`
-/

namespace A083097.P13877692574460967545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083097.P13877692574460967545

namespace A083097

/-- `eq[0, A300222(2*n)]` -/
def P13877692574460967545.Spec : Prop :=
  ∀ n, (P13877692574460967545.a n : ℤ) = A083097 (n + 1)

end A083097

/-! ## A083097.P8999647982978445532

`A007494(A005836(n+1))`
-/

namespace A083097.P8999647982978445532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A005836 (n + 1)).toNat

end

end A083097.P8999647982978445532

namespace A083097

/-- `A007494(A005836(n+1))` -/
def P8999647982978445532.Spec : Prop :=
  ∀ n, P8999647982978445532.a n = A083097 (n + 1)

end A083097

/-! ## A083097.P13999919384276891548

`A384717(A003278(n+1))`
-/

namespace A083097.P13999919384276891548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384717 (A003278 (n + 1)).toNat

end

end A083097.P13999919384276891548

namespace A083097

/-- `A384717(A003278(n+1))` -/
def P13999919384276891548.Spec : Prop :=
  ∀ n, P13999919384276891548.a n = A083097 (n + 1)

end A083097

/-! ## A083097.P13717664389571102464

`eq[A134022(n), A160384(n)]`
-/

namespace A083097.P13717664389571102464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083097.P13717664389571102464

namespace A083097

/-- `eq[A134022(n), A160384(n)]` -/
def P13717664389571102464.Spec : Prop :=
  ∀ n, (P13717664389571102464.a n : ℤ) = A083097 (n + 1)

end A083097

/-!
# A083098: a(n) = 2*a(n-1) + 6*a(n-2).

The programs for A083098, the canonical program `A083098.P12663785285402134032` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083098 has offset 0).

The definition of A083098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+6*a(n-2)` (program `A083098.P12663785285402134032`, by `A083098.P12663785285402134032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083098.P15749272808096693068

`ogf((1-x)/(1-2x-6x^2))`
-/

namespace A083098.P15749272808096693068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -6] n

end

end A083098.P15749272808096693068

namespace A083098

/-- `ogf((1-x)/(1-2x-6x^2))` -/
def P15749272808096693068.Spec : Prop :=
  ∀ n, P15749272808096693068.a n = A083098 n

end A083098

/-! ## A083098.P12663785285402134032

`2*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083098

/-- `2*a(n-1)+6*a(n-2)` -/
def P12663785285402134032.Spec : Prop :=
  ∀ n, (P12663785285402134032.a n : ℤ) = A083098 n

theorem P12663785285402134032.correct : P12663785285402134032.Spec := by
  intro n
  simp only [A083098]

end A083098

/-! ## A083098.P2742845522781016828

`∑{#}[n, A098158(C(n+1, 2)+#)*7^(n-#)]`
-/

namespace A083098.P2742845522781016828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A098158 (Nat.choose (n + 1) 2 + k) : ℚ) * (7 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A083098.P2742845522781016828

namespace A083098

/-- `∑{#}[n, A098158(C(n+1, 2)+#)*7^(n-#)]` -/
def P2742845522781016828.Spec : Prop :=
  ∀ n, P2742845522781016828.a n = (A083098 n : ℚ)

end A083098

/-! ## A083098.P16522800571410110150

`2*(a(n-1)+3*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A083098.P16522800571410110150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) + 3 * a (n - 2))

end

end A083098.P16522800571410110150

namespace A083098

/-- `2*(a(n-1)+3*a(n-2))` -/
def P16522800571410110150.Spec : Prop :=
  ∀ n, (P16522800571410110150.a n : ℤ) = A083098 n

theorem P16522800571410110150.correct : P16522800571410110150.Spec := by
  intro n
  simp only [A083098, Nat.add_sub_cancel, A083098.P16522800571410110150.a, A083098.P12663785285402134032.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083098

/-! ## A083098.P18054643368469893584

`2-2*(1-3*a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A083098.P18054643368469893584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - 2 * (1 - 3 * a (n - 2) - a (n - 1))

end

end A083098.P18054643368469893584

namespace A083098

/-- `2-2*(1-3*a(n-2)-a(n-1))` -/
def P18054643368469893584.Spec : Prop :=
  ∀ n, P18054643368469893584.a n = A083098 n

end A083098

/-! ## A083098.P1961472006853786045

`Δ[A083099(n)]`
-/

namespace A083098.P1961472006853786045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083098.P1961472006853786045

namespace A083098

/-- `Δ[A083099(n)]` -/
def P1961472006853786045.Spec : Prop :=
  ∀ n, P1961472006853786045.a n = A083098 n

end A083098

/-! ## A083098.P4836138240469061362

`A127226(n)/2`
-/

namespace A083098.P4836138240469061362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127226 n : ℚ) / 2

end

end A083098.P4836138240469061362

namespace A083098

/-- `A127226(n)/2` -/
def P4836138240469061362.Spec : Prop :=
  ∀ n, P4836138240469061362.a n = (A083098 n : ℚ)

end A083098

/-! ## A083098.P3828355348126048557

`A291008(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A083098.P3828355348126048557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291008 (n - 1) + a (n - 1)

end

end A083098.P3828355348126048557

namespace A083098

/-- `A291008(n-1)+a(n-1)` -/
def P3828355348126048557.Spec : Prop :=
  ∀ n, P3828355348126048557.a n = A083098 n

end A083098

/-! ## A083098.P479499502629378016

`A384711(n)-A274520(n)`
-/

namespace A083098.P479499502629378016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384711 n - A274520 n

end

end A083098.P479499502629378016

namespace A083098

/-- `A384711(n)-A274520(n)` -/
def P479499502629378016.Spec : Prop :=
  ∀ n, P479499502629378016.a n = A083098 n

end A083098

/-! ## A083098.P4459195092520614759

`A002537(n)*A016116(n)`
-/

namespace A083098.P4459195092520614759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002537 n * A016116 n

end

end A083098.P4459195092520614759

namespace A083098

/-- `A002537(n)*A016116(n)` -/
def P4459195092520614759.Spec : Prop :=
  ∀ n, P4459195092520614759.a n = A083098 n

end A083098

/-! ## A083098.P5979091656768408083

`Δ[A002536(n)*A016116(n)]`
-/

namespace A083098.P5979091656768408083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083098.P5979091656768408083

namespace A083098

/-- `Δ[A002536(n)*A016116(n)]` -/
def P5979091656768408083.Spec : Prop :=
  ∀ n, P5979091656768408083.a n = A083098 n

end A083098

/-! ## A083098.P15609998317025885208

`Δ[A002536(n)*A131572(n)]`
-/

namespace A083098.P15609998317025885208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083098.P15609998317025885208

namespace A083098

/-- `Δ[A002536(n)*A131572(n)]` -/
def P15609998317025885208.Spec : Prop :=
  ∀ n, P15609998317025885208.a n = A083098 n

end A083098

/-! ## A083098.P12746212061911402346

`A083099(n+1)-A083099(n)`
-/

namespace A083098.P12746212061911402346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 (n + 1) - A083099 n

end

end A083098.P12746212061911402346

namespace A083098

/-- `A083099(n+1)-A083099(n)` -/
def P12746212061911402346.Spec : Prop :=
  ∀ n, P12746212061911402346.a n = A083098 n

end A083098

/-! ## A083098.P3332359095851623935

`A384711(n)-A083099(n)-A083099(n)`
-/

namespace A083098.P3332359095851623935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384711 n - A083099 n - A083099 n

end

end A083098.P3332359095851623935

namespace A083098

/-- `A384711(n)-A083099(n)-A083099(n)` -/
def P3332359095851623935.Spec : Prop :=
  ∀ n, P3332359095851623935.a n = A083098 n

end A083098

/-! ## A083098.P6945862524893806850

`Δ[A274520(n)]/2`
-/

namespace A083098.P6945862524893806850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274520 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A083098.P6945862524893806850

namespace A083098

/-- `Δ[A274520(n)]/2` -/
def P6945862524893806850.Spec : Prop :=
  ∀ n, P6945862524893806850.a n = (A083098 n : ℚ)

end A083098

/-! ## A083098.P16972761801398593263

`Δ[A291008(n)/7]`
-/

namespace A083098.P16972761801398593263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291008 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083098.P16972761801398593263

namespace A083098

/-- `Δ[A291008(n)/7]` -/
def P16972761801398593263.Spec : Prop :=
  ∀ n, P16972761801398593263.a n = (A083098 n : ℚ)

end A083098

/-! ## A083098.P14199578288395321790

`∑{#}[n, (-1)^(n-#)*C(n, #)*A108851(#)]`
-/

namespace A083098.P14199578288395321790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A108851 k : ℚ)

end

end A083098.P14199578288395321790

namespace A083098

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A108851(#)]` -/
def P14199578288395321790.Spec : Prop :=
  ∀ n, P14199578288395321790.a n = (A083098 n : ℚ)

end A083098

/-!
# A083099: a(n) = 2*a(n-1) + 6*a(n-2), a(0) = 0, a(1) = 1.

The programs for A083099, the canonical program `A083099.P10590144455885802594` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083099 has offset 0).

The definition of A083099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+6*a(n-2)` (program `A083099.P10590144455885802594`, by `A083099.P10590144455885802594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083099.P4252072668693771335

`ogf(x/(1-2x-6x^2))`
-/

namespace A083099.P4252072668693771335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -6] n

end

end A083099.P4252072668693771335

namespace A083099

/-- `ogf(x/(1-2x-6x^2))` -/
def P4252072668693771335.Spec : Prop :=
  ∀ n, P4252072668693771335.a n = A083099 n

end A083099

/-! ## A083099.P10590144455885802594

`2*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083099

/-- `2*a(n-1)+6*a(n-2)` -/
def P10590144455885802594.Spec : Prop :=
  ∀ n, (P10590144455885802594.a n : ℤ) = A083099 n

theorem P10590144455885802594.correct : P10590144455885802594.Spec := by
  intro n
  simp only [A083099]

end A083099

/-! ## A083099.P10072968874399620444

`((1+sqrt(7))^n-(1-sqrt(7))^n)*7/(14*sqrt(7))`
-/

namespace A083099.P10072968874399620444
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (7 : ℝ)) ^ n - (1 - Real.sqrt (7 : ℝ)) ^ n) * 7 / (14 * Real.sqrt (7 : ℝ))

end

end A083099.P10072968874399620444

namespace A083099

/-- `((1+sqrt(7))^n-(1-sqrt(7))^n)*7/(14*sqrt(7))` -/
def P10072968874399620444.Spec : Prop :=
  ∀ n, P10072968874399620444.a n = (A083099 n : ℝ)

theorem P10072968874399620444.correct : P10072968874399620444.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083099, Nat.add_sub_cancel, A083099.P10072968874399620444.a, A083099.P10590144455885802594.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A083099, Nat.add_sub_cancel, A083099.P10072968874399620444.a, A083099.P10590144455885802594.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A083099

/-! ## A083099.P7963852887084459169

`2*(a(n-1)+3*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A083099.P7963852887084459169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) + 3 * a (n - 2))

end

end A083099.P7963852887084459169

namespace A083099

/-- `2*(a(n-1)+3*a(n-2))` -/
def P7963852887084459169.Spec : Prop :=
  ∀ n, (P7963852887084459169.a n : ℤ) = A083099 n

theorem P7963852887084459169.correct : P7963852887084459169.Spec := by
  intro n
  simp only [A083099, Nat.add_sub_cancel, A083099.P7963852887084459169.a, A083099.P10590144455885802594.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083099

/-! ## A083099.P17269682449535684447

`2*(4*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A083099.P17269682449535684447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (4 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A083099.P17269682449535684447

namespace A083099

/-- `2*(4*a(n-2)-(a(n-2)-a(n-1)))` -/
def P17269682449535684447.Spec : Prop :=
  ∀ n, P17269682449535684447.a n = A083099 n

end A083099

/-! ## A083099.P14424510677334027952

`A002536(n)*A016116(n)`
-/

namespace A083099.P14424510677334027952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A016116 n

end

end A083099.P14424510677334027952

namespace A083099

/-- `A002536(n)*A016116(n)` -/
def P14424510677334027952.Spec : Prop :=
  ∀ n, P14424510677334027952.a n = A083099 n

end A083099

/-! ## A083099.P10631121383814688025

`A002536(n)*A131572(n)`
-/

namespace A083099.P10631121383814688025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A131572 n

end

end A083099.P10631121383814688025

namespace A083099

/-- `A002536(n)*A131572(n)` -/
def P10631121383814688025.Spec : Prop :=
  ∀ n, P10631121383814688025.a n = A083099 n

end A083099

/-! ## A083099.P4154149234363204708

`∑[A083098(n)]-A083098(n)`
-/

namespace A083099.P4154149234363204708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A083098 n

end

end A083099.P4154149234363204708

namespace A083099

/-- `∑[A083098(n)]-A083098(n)` -/
def P4154149234363204708.Spec : Prop :=
  ∀ n, P4154149234363204708.a n = A083099 n

end A083099

/-! ## A083099.P2981467783542263557

`Δ[A083098(n)/7]`
-/

namespace A083099.P2981467783542263557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083098 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083099.P2981467783542263557

namespace A083099

/-- `Δ[A083098(n)/7]` -/
def P2981467783542263557.Spec : Prop :=
  ∀ n, P2981467783542263557.a n = (A083099 n : ℚ)

end A083099

/-! ## A083099.P478473518954377460

`A307469(n)-A384712(n)`
-/

namespace A083099.P478473518954377460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307469 n - A384712 n

end

end A083099.P478473518954377460

namespace A083099

/-- `A307469(n)-A384712(n)` -/
def P478473518954377460.Spec : Prop :=
  ∀ n, P478473518954377460.a n = A083099 n

end A083099

/-! ## A083099.P18017620291461586925

`A384712(n)-A384711(n)`
-/

namespace A083099.P18017620291461586925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384712 n - A384711 n

end

end A083099.P18017620291461586925

namespace A083099

/-- `A384712(n)-A384711(n)` -/
def P18017620291461586925.Spec : Prop :=
  ∀ n, P18017620291461586925.a n = A083099 n

end A083099

/-! ## A083099.P2645844586062240378

`gcd(A274520(n), A291008(n))`
-/

namespace A083099.P2645844586062240378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274520 n) (A291008 n)

end

end A083099.P2645844586062240378

namespace A083099

/-- `gcd(A274520(n), A291008(n))` -/
def P2645844586062240378.Spec : Prop :=
  ∀ n, (P2645844586062240378.a n : ℤ) = A083099 n

end A083099

/-! ## A083099.P10543954101497019483

`A384711(n+1)-(A384711(n)+A133592(n+1))`
-/

namespace A083099.P10543954101497019483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384711 (n + 1) - (A384711 n + A133592 (n + 1))

end

end A083099.P10543954101497019483

namespace A083099

/-- `A384711(n+1)-(A384711(n)+A133592(n+1))` -/
def P10543954101497019483.Spec : Prop :=
  ∀ n, P10543954101497019483.a n = A083099 n

end A083099

/-! ## A083099.P2617959573472362679

`A015519(n+1)/A305492(n+1)*A274520(n)`
-/

namespace A083099.P2617959573472362679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015519 (n + 1) : ℚ) / (A305492 (n + 1) : ℚ) * (A274520 n : ℚ)

end

end A083099.P2617959573472362679

namespace A083099

/-- `A015519(n+1)/A305492(n+1)*A274520(n)` -/
def P2617959573472362679.Spec : Prop :=
  ∀ n, P2617959573472362679.a n = (A083099 n : ℚ)

end A083099

/-! ## A083099.P13629341336892517270

`A083102(n)/A274526(n+1)*A274520(n)`
-/

namespace A083099.P13629341336892517270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083102 n : ℚ) / (A274526 (n + 1) : ℚ) * (A274520 n : ℚ)

end

end A083099.P13629341336892517270

namespace A083099

/-- `A083102(n)/A274526(n+1)*A274520(n)` -/
def P13629341336892517270.Spec : Prop :=
  ∀ n, P13629341336892517270.a n = (A083099 n : ℚ)

end A083099

/-! ## A083099.P6058444964055840878

`∑{#}[n, (-1)^(n-#)*C(n, #)*A015530(#)]`
-/

namespace A083099.P6058444964055840878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A015530 k : ℚ)

end

end A083099.P6058444964055840878

namespace A083099

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A015530(#)]` -/
def P6058444964055840878.Spec : Prop :=
  ∀ n, P6058444964055840878.a n = (A083099 n : ℚ)

end A083099

