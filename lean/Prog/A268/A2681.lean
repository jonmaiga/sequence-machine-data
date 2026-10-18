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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

/-!
# A268100: a(n) = 2^((n-1) mod 2)*5*10^floor((n-1)/2).

The programs for A268100, the canonical program `A268100.P1907987868947441674` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268100 has offset 0).

The definition of A268100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268100.P1585747916379144754

`ogf((1+5x)/(1-10x^2))`
-/

namespace A268100.P1585747916379144754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 0, -10] n

end

end A268100.P1585747916379144754

namespace A268100

/-- `ogf((1+5x)/(1-10x^2))` -/
def P1585747916379144754.Spec : Prop :=
  ∀ n, P1585747916379144754.a n = A268100 n

end A268100

/-! ## A268100.P1907987868947441674

`10*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A268100

/-- `10*a(n-2)` -/
def P1907987868947441674.Spec : Prop :=
  ∀ n, (P1907987868947441674.a n : ℤ) = A268100 n

theorem P1907987868947441674.correct : P1907987868947441674.Spec := by
  intro n
  simp only [A268100]

end A268100

/-! ## A268100.P17623289718038514455

`∏[abs(a(n-2))]` with `a(0)=1, a(1)=5, a(2)=2`
-/

namespace A268100.P17623289718038514455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P17623289718038514455

namespace A268100

/-- `∏[abs(a(n-2))]` -/
def P17623289718038514455.Spec : Prop :=
  ∀ n, (P17623289718038514455.a n : ℤ) = A268100 n

end A268100

/-! ## A268100.P7194006489282149238

`∏[7-a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A268100.P7194006489282149238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P7194006489282149238

namespace A268100

/-- `∏[7-a(n-1)]` -/
def P7194006489282149238.Spec : Prop :=
  ∀ n, P7194006489282149238.a n = A268100 n

end A268100

/-! ## A268100.P12606987160687012151

`∏[round(3/acot(n)²)%6]`
-/

namespace A268100.P12606987160687012151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ) ^ 2)) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P12606987160687012151

namespace A268100

/-- `∏[round(3/acot(n)²)%6]` -/
def P12606987160687012151.Spec : Prop :=
  ∀ n, P12606987160687012151.a n = A268100 n

end A268100

/-! ## A268100.P11604745194217955779

`∏[xor(n%2+3, ceil(acot(n)))]`
-/

namespace A268100.P11604745194217955779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 + 3 : ℕ) : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P11604745194217955779

namespace A268100

/-- `∏[xor(n%2+3, ceil(acot(n)))]` -/
def P11604745194217955779.Spec : Prop :=
  ∀ n, P11604745194217955779.a n = A268100 n

end A268100

/-! ## A268100.P6027264339232100427

`∏[dr(or(1, 3*2^n-2))]`
-/

namespace A268100.P6027264339232100427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor 1 ((3 * 2 ^ n : ℤ) - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P6027264339232100427

namespace A268100

/-- `∏[dr(or(1, 3*2^n-2))]` -/
def P6027264339232100427.Spec : Prop :=
  ∀ n, (P6027264339232100427.a n : ℤ) = A268100 n

end A268100

/-! ## A268100.P16402124776221249881

`∏[or(1, 3*2^n-2)%9]`
-/

namespace A268100.P16402124776221249881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 ((3 * 2 ^ n : ℤ) - 2)) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P16402124776221249881

namespace A268100

/-- `∏[or(1, 3*2^n-2)%9]` -/
def P16402124776221249881.Spec : Prop :=
  ∀ n, P16402124776221249881.a n = A268100 n

end A268100

/-! ## A268100.P10063417850222209217

`a(n-2)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=5`
-/

namespace A268100.P10063417850222209217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A268100.P10063417850222209217

namespace A268100

/-- `a(n-2)+a(n-2)/(1/3)²` -/
def P10063417850222209217.Spec : Prop :=
  ∀ n, P10063417850222209217.a n = (A268100 n : ℚ)

end A268100

/-! ## A268100.P1920966895029493952

`∏[dr(A040093(n))]`
-/

namespace A268100.P1920966895029493952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040093 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P1920966895029493952

namespace A268100

/-- `∏[dr(A040093(n))]` -/
def P1920966895029493952.Spec : Prop :=
  ∀ n, (P1920966895029493952.a n : ℤ) = A268100 n

end A268100

/-! ## A268100.P18063159805640470473

`∏[dr(A040348(n))]`
-/

namespace A268100.P18063159805640470473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040348 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P18063159805640470473

namespace A268100

/-- `∏[dr(A040348(n))]` -/
def P18063159805640470473.Spec : Prop :=
  ∀ n, (P18063159805640470473.a n : ℤ) = A268100 n

end A268100

/-! ## A268100.P5016492598265980658

`∏[dr(A040759(n))]`
-/

namespace A268100.P5016492598265980658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040759 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P5016492598265980658

namespace A268100

/-- `∏[dr(A040759(n))]` -/
def P5016492598265980658.Spec : Prop :=
  ∀ n, (P5016492598265980658.a n : ℤ) = A268100 n

end A268100

/-! ## A268100.P16710648455942785221

`∏[dr(A052940(n))]`
-/

namespace A268100.P16710648455942785221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A052940 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P16710648455942785221

namespace A268100

/-- `∏[dr(A052940(n))]` -/
def P16710648455942785221.Spec : Prop :=
  ∀ n, (P16710648455942785221.a n : ℤ) = A268100 n

end A268100

/-! ## A268100.P4156589791283448445

`∏[A072996(n+1)]`
-/

namespace A268100.P4156589791283448445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P4156589791283448445

namespace A268100

/-- `∏[A072996(n+1)]` -/
def P4156589791283448445.Spec : Prop :=
  ∀ n, P4156589791283448445.a n = A268100 n

end A268100

/-! ## A268100.P5615856006072976935

`∏[A040312(a(n-1))]` with `a(0)=1`
-/

namespace A268100.P5615856006072976935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A040312 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P5615856006072976935

namespace A268100

/-- `∏[A040312(a(n-1))]` -/
def P5615856006072976935.Spec : Prop :=
  ∀ n, P5615856006072976935.a n = A268100 n

end A268100

/-! ## A268100.P1596753698903041774

`∏[A040941(a(n-1))]` with `a(0)=1`
-/

namespace A268100.P1596753698903041774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A040941 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P1596753698903041774

namespace A268100

/-- `∏[A040941(a(n-1))]` -/
def P1596753698903041774.Spec : Prop :=
  ∀ n, P1596753698903041774.a n = A268100 n

end A268100

/-! ## A268100.P12911334098117874606

`∏[A046600(a(n-1))]` with `a(0)=1`
-/

namespace A268100.P12911334098117874606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A046600 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P12911334098117874606

namespace A268100

/-- `∏[A046600(a(n-1))]` -/
def P12911334098117874606.Spec : Prop :=
  ∀ n, P12911334098117874606.a n = A268100 n

end A268100

/-! ## A268100.P15580998721807853633

`∏[A055183(a(n-1))]` with `a(0)=1`
-/

namespace A268100.P15580998721807853633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A055183 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P15580998721807853633

namespace A268100

/-- `∏[A055183(a(n-1))]` -/
def P15580998721807853633.Spec : Prop :=
  ∀ n, P15580998721807853633.a n = A268100 n

end A268100

/-! ## A268100.P12968557130192311815

`∏[A132376(a(n-1))]` with `a(0)=1`
-/

namespace A268100.P12968557130192311815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A132376 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P12968557130192311815

namespace A268100

/-- `∏[A132376(a(n-1))]` -/
def P12968557130192311815.Spec : Prop :=
  ∀ n, P12968557130192311815.a n = A268100 n

end A268100

/-! ## A268100.P8074761038756308333

`∏[A153354(a(n-1))]` with `a(0)=1`
-/

namespace A268100.P8074761038756308333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A153354 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268100.P8074761038756308333

namespace A268100

/-- `∏[A153354(a(n-1))]` -/
def P8074761038756308333.Spec : Prop :=
  ∀ n, P8074761038756308333.a n = A268100 n

end A268100

/-!
# A268101: Smallest prime p such that some polynomial of the form a*x^2 - b*x + p generates distinct primes in absolute value for x = 1 to n, where 0 < a < p and 0 <= b < p.

The programs for A268101, there is no canonical definition to state claims against.
-/

/-! ## A268101.P12517380482791948338

`xor(3*A210709(n), A066169(n+1))`
-/

namespace A268101.P12517380482791948338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * A210709 n) (A066169 (n + 1))

end

end A268101.P12517380482791948338

/-! ## A268101.P8180791908113035387

`A007918(2^A034576(a(n-1)+1)+n+1)` with `a(0)=2`
-/

namespace A268101.P8180791908113035387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A034576 (a (n - 1) + 1).toNat : ℤ) + (n + 1 : ℚ))).toNat

end

end A268101.P8180791908113035387

/-! ## A268101.P18278413135931343349

`xor(A008585(A210709(n)), A066169(n+1))`
-/

namespace A268101.P18278413135931343349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008585 (A210709 n).toNat) (A066169 (n + 1))

end

end A268101.P18278413135931343349

/-! ## A268101.P17004194737578740524

`A151800(lt[A077020(n+3), A325148(n+2)])`
-/

namespace A268101.P17004194737578740524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077020 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325148 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268101.P17004194737578740524

/-! ## A268101.P1101326607599955759

`A151800(lt[A387735(n+1), A387682(3*n+1)])`
-/

namespace A268101.P1101326607599955759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387682 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268101.P1101326607599955759

/-!
# A268102: Number of nX4 0..4 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268102, there is no canonical definition to state claims against.
-/

/-! ## A268102.P202141214464546541

`A268103(A141214(n+1))`
-/

namespace A268102.P202141214464546541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268103 (A141214 (n + 1)).toNat

end

end A268102.P202141214464546541

/-! ## A268102.P16093394776019137416

`A268103(A056000(n)+7)`
-/

namespace A268102.P16093394776019137416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268103 (A056000 n + 7).toNat

end

end A268102.P16093394776019137416

/-!
# A268103: T(n,k)=Number of nXk 0..k arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268103, there is no canonical definition to state claims against.
-/

/-! ## A268103.P5073313682693134712

`A285007(A113711(2*n+1))+A268246(n+1)`
-/

namespace A268103.P5073313682693134712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A113711 (2 * n + 1)).toNat + A268246 (n + 1)

end

end A268103.P5073313682693134712

/-! ## A268103.P2947609097176419352

`A268246(n+1)+A102681(A089259(2*(n+2)))`
-/

namespace A268103.P2947609097176419352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268246 (n + 1) + A102681 (A089259 (2 * (n + 2))).toNat

end

end A268103.P2947609097176419352

/-! ## A268103.P2885615647222605923

`A268246(n+1)+A102681(A083881(n))`
-/

namespace A268103.P2885615647222605923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268246 (n + 1) + A102681 (A083881 n).toNat

end

end A268103.P2885615647222605923

/-!
# A268104: Number of 1Xn 0..n arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268104, there is no canonical definition to state claims against.
-/

/-! ## A268104.P5198084356765618064

`A269435((n+1)²+n²)`
-/

namespace A268104.P5198084356765618064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 ((n + 1) ^ 2 + n ^ 2)

end

end A268104.P5198084356765618064

/-! ## A268104.P2260685612111472496

`record[gcd(A037012(n), A269435(n+1))]`
-/

namespace A268104.P2260685612111472496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A269435 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268104.P2260685612111472496

/-! ## A268104.P14497578666136388936

`A000034(2*n)*A269435(A001844(n))`
-/

namespace A268104.P14497578666136388936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A269435 (A001844 n).toNat

end

end A268104.P14497578666136388936

/-! ## A268104.P6801950770139747856

`A269435(A001844(n))*A327832(2*n+1)`
-/

namespace A268104.P6801950770139747856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A001844 n).toNat * A327832 (2 * n + 1)

end

end A268104.P6801950770139747856

/-! ## A268104.P11768873259940800183

`A007318(A000217(n))*A269435(A001844(n))`
-/

namespace A268104.P11768873259940800183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A269435 (A001844 n).toNat

end

end A268104.P11768873259940800183

/-!
# A268105: Number of 2Xn 0..n arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268105, there is no canonical definition to state claims against.
-/

/-! ## A268105.P10823761754839417626

`A268104(n+1)²`
-/

namespace A268105.P10823761754839417626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268104 (n + 1) ^ 2

end

end A268105.P10823761754839417626

/-! ## A268105.P9435309819374622146

`A269435(A001844(n))²`
-/

namespace A268105.P9435309819374622146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A001844 n).toNat ^ 2

end

end A268105.P9435309819374622146

/-! ## A268105.P4793219850492752314

`A269435(∑[A008574(n)])²`
-/

namespace A268105.P4793219850492752314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A268105.P4793219850492752314

/-! ## A268105.P4066677221596383186

`A269435(4*A000124(n)-3)²`
-/

namespace A268105.P4066677221596383186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (4 * A000124 n - 3).toNat ^ 2

end

end A268105.P4066677221596383186

/-! ## A268105.P8941197931127970226

`A269435(A000124(2*n)+n)²`
-/

namespace A268105.P8941197931127970226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000124 (2 * n) + (n : ℤ)).toNat ^ 2

end

end A268105.P8941197931127970226

/-!
# A268106: Number of 3Xn 0..n arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268106, there is no canonical definition to state claims against.
-/

/-! ## A268106.P8039053323199960166

`A268104(n+1)^3`
-/

namespace A268106.P8039053323199960166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268104 (n + 1) ^ 3

end

end A268106.P8039053323199960166

/-! ## A268106.P7536316777887970042

`sqrt(A268105(n+1)^3)`
-/

namespace A268106.P7536316777887970042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A268105 (n + 1) ^ 3 : ℝ)

end

end A268106.P7536316777887970042

/-! ## A268106.P2086098967802228761

`A269435((n+1)²+n²)^3`
-/

namespace A268106.P2086098967802228761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 ((n + 1) ^ 2 + n ^ 2) ^ 3

end

end A268106.P2086098967802228761

/-! ## A268106.P12790176833195186607

`A268104(n+1)*A268105(n+1)`
-/

namespace A268106.P12790176833195186607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268104 (n + 1) * A268105 (n + 1)

end

end A268106.P12790176833195186607

/-! ## A268106.P15247391966697212807

`(A007318(A000217(n))*A269435(A001844(n)))^3`
-/

namespace A268106.P15247391966697212807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (A000217 n).toNat * A269435 (A001844 n).toNat) ^ 3

end

end A268106.P15247391966697212807

/-!
# A268108: Even indices of Pell numbers of the form x^2 + y^2 where x, y > 0.

The programs for A268108, there is no canonical definition to state claims against.
-/

/-! ## A268108.P9693130779576123340

`A017089(eq[A001227(n+1), A173302(n)])`
-/

namespace A268108.P9693130779576123340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A268108.P9693130779576123340

/-!
# A268109: Terms of A268101 without repetition.

The programs for A268109, there is no canonical definition to state claims against.
-/

/-! ## A268109.P5994466959140705815

`record[A268101(A152271(n))]`
-/

namespace A268109.P5994466959140705815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268101 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268109.P5994466959140705815

/-! ## A268109.P14482867333012963502

`record[A268101(A360189(n))]`
-/

namespace A268109.P14482867333012963502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268101 (A360189 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268109.P14482867333012963502

/-! ## A268109.P12580136581221123833

`record[A268101(A003963(n+1))]`
-/

namespace A268109.P12580136581221123833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268101 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268109.P12580136581221123833

/-! ## A268109.P2819139381043247284

`record[A268101(A003987(n)+1)]`
-/

namespace A268109.P2819139381043247284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268101 (A003987 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268109.P2819139381043247284

/-! ## A268109.P11659655843300425444

`record[A268101(A004182(n)+1)]`
-/

namespace A268109.P11659655843300425444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268101 (A004182 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268109.P11659655843300425444

/-!
# A268113: Number of legal positions in Go played on an n X n+1 grid (each group must have at least one liberty).

The programs for A268113, there is no canonical definition to state claims against.
-/

/-! ## A268113.P748269855426225167

`A356134(∑[n+2])`
-/

namespace A268113.P748269855426225167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268113.P748269855426225167

/-! ## A268113.P1188227281371351106

`A356049(2*(n+1)²)`
-/

namespace A268113.P1188227281371351106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356049 (2 * (n + 1) ^ 2)

end

end A268113.P1188227281371351106

/-!
# A268114: Number of n X n arrays containing n copies of 0..n-1 with every element equal to or 1 greater than any north or west neighbors modulo n and the upper left element equal to 0.

The programs for A268114, there is no canonical definition to state claims against.
-/

/-! ## A268114.P11108890065964553619

`A268115(∑[4*n]+1)`
-/

namespace A268114.P11108890065964553619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268114.P11108890065964553619

/-! ## A268114.P9619629768134565764

`record[ceil(sqrt(8*(n+1)))%2*A268115(n+1)]`
-/

namespace A268114.P9619629768134565764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2 * A268115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268114.P9619629768134565764

/-! ## A268114.P6548435987397724021

`record[A268115(A008619(n²))]`
-/

namespace A268114.P6548435987397724021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A008619 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268114.P6548435987397724021

/-! ## A268114.P4316569076096920934

`record[A268115(A080827(n+1))]`
-/

namespace A268114.P4316569076096920934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A080827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268114.P4316569076096920934

/-! ## A268114.P18301252885904306448

`record[A268115(A265225(n)+1)]`
-/

namespace A268114.P18301252885904306448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A265225 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268114.P18301252885904306448

/-!
# A268115: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any north or west neighbors modulo n and the upper left element equal to 0.

The programs for A268115, there is no canonical definition to state claims against.
-/

/-! ## A268115.P15214488931948618930

`A267392(n+1)+A083892(A157149(n))`
-/

namespace A268115.P15214488931948618930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267392 (n + 1) + A083892 (A157149 n).toNat

end

end A268115.P15214488931948618930

/-! ## A268115.P17916058761550356900

`A267553(n+1)+A185044(A099608(n))`
-/

namespace A268115.P17916058761550356900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (n + 1) + A185044 (A099608 n).toNat

end

end A268115.P17916058761550356900

/-! ## A268115.P5453932818141031535

`A267553(n+1)+A186745(A331278(n))`
-/

namespace A268115.P5453932818141031535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267553 (n + 1) + A186745 (A331278 n).toNat

end

end A268115.P5453932818141031535

/-! ## A268115.P16709520108821761895

`A281516(A052307(n))+A267553((n+1)^A004197(n))`
-/

namespace A268115.P16709520108821761895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281516 (A052307 n).toNat + A267553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A268115.P16709520108821761895

/-! ## A268115.P2039536626900520463

`A089856(A267553(n+1))`
-/

namespace A268115.P2039536626900520463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A267553 (n + 1)).toNat

end

end A268115.P2039536626900520463

/-!
# A268116: Number of (n+1)Xn arrays containing n copies of 0..n+1-1 with every element equal to or 1 greater than any north or west neighbors modulo n and the upper left element equal to 0.

The programs for A268116, there is no canonical definition to state claims against.
-/

/-! ## A268116.P16588785901420970604

`A268115(2*(n+1)²+1)`
-/

namespace A268116.P16588785901420970604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (2 * (n + 1) ^ 2 + 1)

end

end A268116.P16588785901420970604

/-! ## A268116.P9759501915783767366

`record[A268115(A052938(n²))]`
-/

namespace A268116.P9759501915783767366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A052938 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268116.P9759501915783767366

/-! ## A268116.P18348207712790884067

`record[A268115(A265225(n)-n)]`
-/

namespace A268116.P18348207712790884067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A265225 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268116.P18348207712790884067

/-! ## A268116.P4288603098767845118

`record[A268115(A082155(n+1)+1)]`
-/

namespace A268116.P4288603098767845118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A082155 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268116.P4288603098767845118

/-!
# A268117: Number of nX(n+1) arrays of permutations of n+1 copies of 0..n-1 with every element equal to or 1 greater than any north or west neighbors modulo n and the upper left element equal to 0.

The programs for A268117, there is no canonical definition to state claims against.
-/

/-! ## A268117.P13230943683111762238

`A268115(2*(n+1)²)`
-/

namespace A268117.P13230943683111762238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (2 * (n + 1) ^ 2)

end

end A268117.P13230943683111762238

/-! ## A268117.P11732214359435922547

`record[A268115(A053439(n))]`
-/

namespace A268117.P11732214359435922547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A053439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268117.P11732214359435922547

/-! ## A268117.P8150287669160876762

`record[A268115(A275009(n))]`
-/

namespace A268117.P8150287669160876762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A275009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268117.P8150287669160876762

/-! ## A268117.P9225878777557326936

`record[A268115(∑[A266072(n)])]`
-/

namespace A268117.P9225878777557326936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268117.P9225878777557326936

/-!
# A268118: Number of nX(n+2) arrays of permutations of n+2 copies of 0..n-1 with every element equal to or 1 greater than any north or west neighbors modulo n and the upper left element equal to 0.

The programs for A268118, there is no canonical definition to state claims against.
-/

/-! ## A268118.P563531533155754373

`A268115(∑[4*(n+1)])`
-/

namespace A268118.P563531533155754373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268118.P563531533155754373

/-! ## A268118.P2376398966092884224

`record[A268115(A182455(n))]`
-/

namespace A268118.P2376398966092884224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A182455 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268118.P2376398966092884224

/-! ## A268118.P4005824291870903468

`record[A268115(A265225(n))]`
-/

namespace A268118.P4005824291870903468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268118.P4005824291870903468

/-! ## A268118.P276688791969561178

`record[A268115(A121728(n+1))]`
-/

namespace A268118.P276688791969561178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A121728 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268118.P276688791969561178

/-!
# A268119: Number of nX(n+3) arrays of permutations of n+3 copies of 0..n-1 with every element equal to or 1 greater than any north or west neighbors modulo n and the upper left element equal to 0.

The programs for A268119, there is no canonical definition to state claims against.
-/

/-! ## A268119.P6533067195191032978

`A268115(2*(n+2)²-1)`
-/

namespace A268119.P6533067195191032978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (2 * (n + 2) ^ 2 - 1)

end

end A268119.P6533067195191032978

/-! ## A268119.P2311461331474792019

`record[A268115(A266448(n))]`
-/

namespace A268119.P2311461331474792019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A266448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268119.P2311461331474792019

/-!
# A268120: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any north or west neighbors modulo 4 and the upper left element equal to 0.

The programs for A268120, there is no canonical definition to state claims against.
-/

/-! ## A268120.P795603413943018419

`A268115(∑[n+3]+7)`
-/

namespace A268120.P795603413943018419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A268120.P795603413943018419

/-! ## A268120.P4013724247476593918

`record[gcd(A268115(n+2), A293293(n))]`
-/

namespace A268120.P4013724247476593918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268115 (n + 2)) (A293293 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268120.P4013724247476593918

/-! ## A268120.P3583071742517598540

`A268115(A167614(n+2)+1)+char[16]`
-/

namespace A268120.P3583071742517598540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A268120.P3583071742517598540

/-! ## A268120.P2009291930513989113

`A268115(A000096(n+2)+5)+char[17]`
-/

namespace A268120.P2009291930513989113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A268120.P2009291930513989113

/-! ## A268120.P14183797338628685521

`A268115(A052905(n)+9)%A210852(n+3)`
-/

namespace A268120.P14183797338628685521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268115 (A052905 n + 9).toNat) (A210852 (n + 3))

end

end A268120.P14183797338628685521

/-!
# A268121: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any north or west neighbors modulo 5 and the upper left element equal to 0.

The programs for A268121, there is no canonical definition to state claims against.
-/

/-! ## A268121.P5414442790944992554

`A268115(A167499(n+3))`
-/

namespace A268121.P5414442790944992554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A167499 (n + 3)).toNat

end

end A268121.P5414442790944992554

/-! ## A268121.P504891224094659349

`A268115(A155212(n)+13)`
-/

namespace A268121.P504891224094659349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A155212 n + 13).toNat

end

end A268121.P504891224094659349

/-! ## A268121.P16157074937287490089

`A268115(A056000(n)+15)`
-/

namespace A268121.P16157074937287490089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A056000 n + 15).toNat

end

end A268121.P16157074937287490089

/-! ## A268121.P2220285554450720419

`A268115(eq[7, A066657(n)])`
-/

namespace A268121.P2220285554450720419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268121.P2220285554450720419

/-! ## A268121.P4716837409025239

`A268115(A166136(n+3)-1)`
-/

namespace A268121.P4716837409025239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A166136 (n + 3) - 1).toNat

end

end A268121.P4716837409025239

/-!
# A268122: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any north or west neighbors modulo 6 and the upper left element equal to 0.

The programs for A268122, there is no canonical definition to state claims against.
-/

/-! ## A268122.P2918102957391003797

`A268115(A166136(n+4))`
-/

namespace A268122.P2918102957391003797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A166136 (n + 4)).toNat

end

end A268122.P2918102957391003797

/-! ## A268122.P11928200161827306135

`A268115(A056115(n)+21)`
-/

namespace A268122.P11928200161827306135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A056115 n + 21).toNat

end

end A268122.P11928200161827306135

/-! ## A268122.P10154209744113373341

`A268115(eq[6, A256910(n)])`
-/

namespace A268122.P10154209744113373341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268122.P10154209744113373341

/-! ## A268122.P12543425343646120905

`A268115(A167499(n+4)+1)`
-/

namespace A268122.P12543425343646120905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A167499 (n + 4) + 1).toNat

end

end A268122.P12543425343646120905

/-! ## A268122.P12444164120216074678

`A268115(A077169(n+6)+1)`
-/

namespace A268122.P12444164120216074678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A077169 (n + 6) + 1).toNat

end

end A268122.P12444164120216074678

/-!
# A268123: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any north or west neighbors modulo 7 and the upper left element equal to 0.

The programs for A268123, there is no canonical definition to state claims against.
-/

/-! ## A268123.P388766651484356939

`A268115(A167487(n+5))`
-/

namespace A268123.P388766651484356939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A167487 (n + 5)).toNat

end

end A268123.P388766651484356939

/-! ## A268123.P13759591939975886917

`A268115(A056119(n)+28)`
-/

namespace A268123.P13759591939975886917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A056119 n + 28).toNat

end

end A268123.P13759591939975886917

/-! ## A268123.P4743316097042014592

`A268115(eq[11, A066657(n)])`
-/

namespace A268123.P4743316097042014592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268123.P4743316097042014592

/-! ## A268123.P17923940976475920719

`A268115(A167499(n+5)+2)`
-/

namespace A268123.P17923940976475920719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A167499 (n + 5) + 2).toNat

end

end A268123.P17923940976475920719

/-! ## A268123.P1637060715344824495

`A268115(A167614(n+5)+4)`
-/

namespace A268123.P1637060715344824495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A167614 (n + 5) + 4).toNat

end

end A268123.P1637060715344824495

/-!
# A268124: a(n) = n^4 * (n+3)^6 * 4^(-n).

The programs for A268124, there is no canonical definition to state claims against.
-/

/-! ## A268124.P4374799061764011079

`A323022(A379659(n))*A354178(2*(n+1))`
-/

namespace A268124.P4374799061764011079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A379659 n).toNat * A354178 (2 * (n + 1))

end

end A268124.P4374799061764011079

/-!
# A268125: Minimal order of recurrence for number of legal n X m Go positions, for fixed n.

The programs for A268125, there is no canonical definition to state claims against.
-/

/-! ## A268125.P11365775054223787947

`A197625(A115098(n))`
-/

namespace A268125.P11365775054223787947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197625 (A115098 n).toNat

end

end A268125.P11365775054223787947

/-!
# A268126: Numbers n such that phi(n) = 4*phi(n-1).

The programs for A268126, there is no canonical definition to state claims against.
-/

/-! ## A268126.P670602399111041510

`A172314(n+1)+1`
-/

namespace A268126.P670602399111041510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172314 (n + 1) + 1

end

end A268126.P670602399111041510

/-! ## A268126.P4748491525118476806

`or(1, A172314(1-(n-2*n)))`
-/

namespace A268126.P4748491525118476806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A172314 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A268126.P4748491525118476806

/-!
# A268127: a(n) = (A005704(n)-A006047(n))/3.

The programs for A268127, the canonical program `A268127.P12853289484081754662` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268127 has offset 0).

The definition of A268127 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268127.P12853289484081754662

`(A005704(n)-A006047(n))/3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A268127

/-- `(A005704(n)-A006047(n))/3` -/
def P12853289484081754662.Spec : Prop :=
  ∀ n, P12853289484081754662.a n = (A268127 n : ℚ)

end A268127

/-! ## A268127.P5657495277219739218

`(∑[A062051(n)]-A006047(n))/3`
-/

namespace A268127.P5657495277219739218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A006047 n : ℤ) : ℚ) / 3

end

end A268127.P5657495277219739218

namespace A268127

/-- `(∑[A062051(n)]-A006047(n))/3` -/
def P5657495277219739218.Spec : Prop :=
  ∀ n, P5657495277219739218.a n = (A268127 n : ℚ)

end A268127

/-! ## A268127.P1871786434355025047

`(A005704(n)-A006047(n))*3^A008836(A006530(n+1))`
-/

namespace A268127.P1871786434355025047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005704 n - A006047 n : ℚ) * (3 : ℚ) ^ (A008836 (A006530 (n + 1)).toNat : ℤ)

end

end A268127.P1871786434355025047

namespace A268127

/-- `(A005704(n)-A006047(n))*3^A008836(A006530(n+1))` -/
def P1871786434355025047.Spec : Prop :=
  ∀ n, P1871786434355025047.a n = (A268127 n : ℚ)

end A268127

/-! ## A268127.P15302372189620684252

`A255588(∑[A062051(n)]-A006047(n))`
-/

namespace A268127.P15302372189620684252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (∑ j ∈ Finset.range (n + 1), f1 j - A006047 n).toNat

end

end A268127.P15302372189620684252

namespace A268127

/-- `A255588(∑[A062051(n)]-A006047(n))` -/
def P15302372189620684252.Spec : Prop :=
  ∀ n, P15302372189620684252.a n = A268127 n

end A268127

/-! ## A268127.P8724853658452114788

`A002264(A005704(n)-A006047(n))`
-/

namespace A268127.P8724853658452114788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005704 n - A006047 n).toNat

end

end A268127.P8724853658452114788

namespace A268127

/-- `A002264(A005704(n)-A006047(n))` -/
def P8724853658452114788.Spec : Prop :=
  ∀ n, P8724853658452114788.a n = A268127 n

end A268127

/-! ## A268127.P4432380785851582051

`A285870(A005704(n)-A006047(n))`
-/

namespace A268127.P4432380785851582051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A005704 n - A006047 n).toNat

end

end A268127.P4432380785851582051

namespace A268127

/-- `A285870(A005704(n)-A006047(n))` -/
def P4432380785851582051.Spec : Prop :=
  ∀ n, P4432380785851582051.a n = A268127 n

end A268127

/-! ## A268127.P821864285828627393

`A285870(∑[A062051(n)]-A006047(n))`
-/

namespace A268127.P821864285828627393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (∑ j ∈ Finset.range (n + 1), f1 j - A006047 n).toNat

end

end A268127.P821864285828627393

namespace A268127

/-- `A285870(∑[A062051(n)]-A006047(n))` -/
def P821864285828627393.Spec : Prop :=
  ∀ n, P821864285828627393.a n = A268127 n

end A268127

/-! ## A268127.P16919296261511397285

`A008611(A005704(n)+1-A006047(n))`
-/

namespace A268127.P16919296261511397285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A005704 n + (1 - A006047 n)).toNat

end

end A268127.P16919296261511397285

namespace A268127

/-- `A008611(A005704(n)+1-A006047(n))` -/
def P16919296261511397285.Spec : Prop :=
  ∀ n, P16919296261511397285.a n = A268127 n

end A268127

/-! ## A268127.P4636943852725566776

`A008611(1-(A006047(n)-A005704(n)))`
-/

namespace A268127.P4636943852725566776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (1 - (A006047 n - A005704 n)).toNat

end

end A268127.P4636943852725566776

namespace A268127

/-- `A008611(1-(A006047(n)-A005704(n)))` -/
def P4636943852725566776.Spec : Prop :=
  ∀ n, P4636943852725566776.a n = A268127 n

end A268127

/-! ## A268127.P14668619183542904514

`A008620(A005704(n)-A006047(n))-1`
-/

namespace A268127.P14668619183542904514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A005704 n - A006047 n).toNat - 1

end

end A268127.P14668619183542904514

namespace A268127

/-- `A008620(A005704(n)-A006047(n))-1` -/
def P14668619183542904514.Spec : Prop :=
  ∀ n, P14668619183542904514.a n = A268127 n

end A268127

/-!
# A268128: a(n) = (A000123(n) - A001316)/2.

The programs for A268128, the canonical program `A268128.P3789248238406704639` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268128 has offset 0).

The definition of A268128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268128.P3789248238406704639

`(A000123(n)-A001316(n))/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A268128

/-- `(A000123(n)-A001316(n))/2` -/
def P3789248238406704639.Spec : Prop :=
  ∀ n, P3789248238406704639.a n = (A268128 n : ℚ)

end A268128

/-! ## A268128.P12729994156984024429

`(∑[A018819(n)]-A001316(n))/2`
-/

namespace A268128.P12729994156984024429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A001316 n : ℤ) : ℚ) / 2

end

end A268128.P12729994156984024429

namespace A268128

/-- `(∑[A018819(n)]-A001316(n))/2` -/
def P12729994156984024429.Spec : Prop :=
  ∀ n, P12729994156984024429.a n = (A268128 n : ℚ)

end A268128

/-! ## A268128.P819362186859847440

`(A000123(n)-A000079(A000120(n)))/2`
-/

namespace A268128.P819362186859847440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 n - A000079 (A000120 n).toNat : ℚ) / 2

end

end A268128.P819362186859847440

namespace A268128

/-- `(A000123(n)-A000079(A000120(n)))/2` -/
def P819362186859847440.Spec : Prop :=
  ∀ n, P819362186859847440.a n = (A268128 n : ℚ)

end A268128

/-! ## A268128.P6250606541866647466

`(A018819(2*n)-A001316(n))/2`
-/

namespace A268128.P6250606541866647466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018819 (2 * n) - A001316 n : ℚ) / 2

end

end A268128.P6250606541866647466

namespace A268128

/-- `(A018819(2*n)-A001316(n))/2` -/
def P6250606541866647466.Spec : Prop :=
  ∀ n, P6250606541866647466.a n = (A268128 n : ℚ)

end A268128

/-! ## A268128.P17149185532139536078

`(∑[A307148(2*n+1)]-A001316(n))/2`
-/

namespace A268128.P17149185532139536078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307148 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A001316 n : ℤ) : ℚ) / 2

end

end A268128.P17149185532139536078

namespace A268128

/-- `(∑[A307148(2*n+1)]-A001316(n))/2` -/
def P17149185532139536078.Spec : Prop :=
  ∀ n, P17149185532139536078.a n = (A268128 n : ℚ)

end A268128

/-! ## A268128.P16427585411315386734

`A273943(A000123(n)-A001316(n))`
-/

namespace A268128.P16427585411315386734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A000123 n - A001316 n).toNat

end

end A268128.P16427585411315386734

namespace A268128

/-- `A273943(A000123(n)-A001316(n))` -/
def P16427585411315386734.Spec : Prop :=
  ∀ n, P16427585411315386734.a n = A268128 n

end A268128

/-! ## A268128.P5567993453877165546

`A014682(A000123(n)-A001316(n))`
-/

namespace A268128.P5567993453877165546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000123 n - A001316 n).toNat

end

end A268128.P5567993453877165546

namespace A268128

/-- `A014682(A000123(n)-A001316(n))` -/
def P5567993453877165546.Spec : Prop :=
  ∀ n, P5567993453877165546.a n = A268128 n

end A268128

/-! ## A268128.P10350930611494757538

`A014682(∑[A018819(n)]-A001316(n))`
-/

namespace A268128.P10350930611494757538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j - A001316 n).toNat

end

end A268128.P10350930611494757538

namespace A268128

/-- `A014682(∑[A018819(n)]-A001316(n))` -/
def P10350930611494757538.Spec : Prop :=
  ∀ n, P10350930611494757538.a n = A268128 n

end A268128

/-! ## A268128.P4093983513792431176

`A014682(A018819(2*n)-A001316(n))`
-/

namespace A268128.P4093983513792431176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A018819 (2 * n) - A001316 n).toNat

end

end A268128.P4093983513792431176

namespace A268128

/-- `A014682(A018819(2*n)-A001316(n))` -/
def P4093983513792431176.Spec : Prop :=
  ∀ n, P4093983513792431176.a n = A268128 n

end A268128

/-! ## A268128.P9177056574624111473

`A038572(A000123(n)-A001316(n))`
-/

namespace A268128.P9177056574624111473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A000123 n - A001316 n).toNat

end

end A268128.P9177056574624111473

namespace A268128

/-- `A038572(A000123(n)-A001316(n))` -/
def P9177056574624111473.Spec : Prop :=
  ∀ n, P9177056574624111473.a n = A268128 n

end A268128

/-!
# A268130: Primes p of the form sigma(2^k + 1) - 1 for some k >= 0.

The programs for A268130, there is no canonical definition to state claims against.
-/

/-! ## A268130.P2562679853425160761

`p?[∑{d}[2^n+1, #]-1]`
-/

namespace A268130.P2562679853425160761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268130.P2562679853425160761

/-! ## A268130.P1157091428983392437

`p?[A000203(2^n+1)-1]`
-/

namespace A268130.P1157091428983392437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 ^ n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268130.P1157091428983392437

/-! ## A268130.P11685544388730277131

`record[A006530(∑{d}[2^n+1, #]-1)]`
-/

namespace A268130.P11685544388730277131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f2 n), d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268130.P11685544388730277131

/-! ## A268130.P18352991929049255605

`record[A006530(A000203(2^n+1)-1)]`
-/

namespace A268130.P18352991929049255605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000203 (2 ^ n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268130.P18352991929049255605

/-! ## A268130.P1546320591676006182

`record[A020639(A000203(2^n+1)-1)]`
-/

namespace A268130.P1546320591676006182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (2 ^ n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268130.P1546320591676006182

/-!
# A268133: If a(n) is not a square, then a(n+1) = a(n) + a(n-1), else a(n+1) is the smallest positive integer not occurring earlier.

The programs for A268133, there is no canonical definition to state claims against.
-/

/-! ## A268133.P8107544931341204572

`round(ϕ*a(n-1))%A141740(2*n)` with `a(0)=1`
-/

namespace A268133.P8107544931341204572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))) (A141740 (2 * n))

end

end A268133.P8107544931341204572

/-! ## A268133.P3988336813875342607

`A000045(n+2)%A340418(n+5)`
-/

namespace A268133.P3988336813875342607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 2)) (A340418 (n + 5))

end

end A268133.P3988336813875342607

/-! ## A268133.P4594377379480360797

`record[A094392(n+1)]%A002476(2*(n+1))`
-/

namespace A268133.P4594377379480360797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A002476 (2 * (n + 1)))

end

end A268133.P4594377379480360797

/-! ## A268133.P9339264824096585163

`record[A202502(n+1)]%A046117(2*n+5)`
-/

namespace A268133.P9339264824096585163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A046117 (2 * n + 5))

end

end A268133.P9339264824096585163

/-! ## A268133.P15189879801286182140

`A194000(∑[n])`
-/

namespace A268133.P15189879801286182140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194000 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268133.P15189879801286182140

/-!
# A268135: Numbers n such that the digit sum of n^2 is a divisor of the digit sum of n.

The programs for A268135, the canonical program `A268135.P792278026408180777` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268135 has offset 1).

The definition of A268135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268135.P792278026408180777

`eq[0, A007953(n+1)%A004159(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A268135

/-- `eq[0, A007953(n+1)%A004159(n+1)]+1` -/
def P792278026408180777.Spec : Prop :=
  ∀ n, (P792278026408180777.a n : ℤ) = A268135 (n + 1)

theorem P792278026408180777.correct : P792278026408180777.Spec := by
  intro n
  simp only [A268135, Nat.add_sub_cancel]

end A268135

/-! ## A268135.P10645430538640869073

`record[A058369(A360457(2*(n+1)))]`
-/

namespace A268135.P10645430538640869073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (A360457 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268135.P10645430538640869073

namespace A268135

/-- `record[A058369(A360457(2*(n+1)))]` -/
def P10645430538640869073.Spec : Prop :=
  ∀ n, P10645430538640869073.a n = A268135 (n + 1)

end A268135

/-! ## A268135.P209579646630564078

`A058369(A135382(2*n+3)-n)`
-/

namespace A268135.P209579646630564078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (A135382 (2 * n + 3) - (n : ℤ)).toNat

end

end A268135.P209579646630564078

namespace A268135

/-- `A058369(A135382(2*n+3)-n)` -/
def P209579646630564078.Spec : Prop :=
  ∀ n, P209579646630564078.a n = A268135 (n + 1)

end A268135

/-! ## A268135.P1889552728970787222

`A058369(n+2)%A367910(n+3)`
-/

namespace A268135.P1889552728970787222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058369 (n + 2)) (A367910 (n + 3))

end

end A268135.P1889552728970787222

namespace A268135

/-- `A058369(n+2)%A367910(n+3)` -/
def P1889552728970787222.Spec : Prop :=
  ∀ n, P1889552728970787222.a n = A268135 (n + 1)

end A268135

/-! ## A268135.P12474334746044519446

`A058369(ceil(atan(A331753(3*(n+1)))+n))`
-/

namespace A268135.P12474334746044519446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 ⌈Real.arctan (A331753 (3 * (n + 1)) : ℝ) + (n : ℝ)⌉.toNat

end

end A268135.P12474334746044519446

namespace A268135

/-- `A058369(ceil(atan(A331753(3*(n+1)))+n))` -/
def P12474334746044519446.Spec : Prop :=
  ∀ n, P12474334746044519446.a n = A268135 (n + 1)

end A268135

/-!
# A268136: a(n) = (3/n)*Sum_{k=0..n-1} A245769(k)^2.

The programs for A268136, there is no canonical definition to state claims against.
-/

/-! ## A268136.P5411311847589979314

`A324584(A212804(n)+A081185(n))`
-/

namespace A268136.P5411311847589979314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324584 (A212804 n + A081185 n).toNat

end

end A268136.P5411311847589979314

/-!
# A268140: Smallest prime followed by at least 2^n nonprimes.

The programs for A268140, there is no canonical definition to state claims against.
-/

/-! ## A268140.P5839859917492649601

`A030296(2^n)-1`
-/

namespace A268140.P5839859917492649601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (2 ^ n) - 1

end

end A268140.P5839859917492649601

/-! ## A268140.P13726779366299135473

`A100964(floor(2^n/2)+1)`
-/

namespace A268140.P13726779366299135473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100964 (⌊(2 ^ n : ℚ) / 2⌋ + 1).toNat

end

end A268140.P13726779366299135473

/-! ## A268140.P8439024697560830978

`A104138(A008860(n))`
-/

namespace A268140.P8439024697560830978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A008860 n).toNat

end

end A268140.P8439024697560830978

/-! ## A268140.P2888642430014317497

`A104138(A051535(n))`
-/

namespace A268140.P2888642430014317497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A051535 n).toNat

end

end A268140.P2888642430014317497

/-! ## A268140.P5849583193091909375

`A104138(A062258(n))`
-/

namespace A268140.P5849583193091909375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A062258 n).toNat

end

end A268140.P5849583193091909375

/-!
# A268141: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with every element equal to at least one diagonal or antidiagonal neighbor and the top left element equal to 0.

The programs for A268141, there is no canonical definition to state claims against.
-/

/-! ## A268141.P3120861398367947931

`A268142(A141214(n+1))`
-/

namespace A268141.P3120861398367947931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (A141214 (n + 1)).toNat

end

end A268141.P3120861398367947931

/-! ## A268141.P9582593927023469202

`A268142(A055998(n+2))`
-/

namespace A268141.P9582593927023469202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (A055998 (n + 2)).toNat

end

end A268141.P9582593927023469202

/-! ## A268141.P9657279803699450173

`A268142(A155212(n)+5)`
-/

namespace A268141.P9657279803699450173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (A155212 n + 5).toNat

end

end A268141.P9657279803699450173

/-!
# A268142: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to at least one diagonal or antidiagonal neighbor and the top left element equal to 0.

The programs for A268142, there is no canonical definition to state claims against.
-/

/-! ## A268142.P6439671497662849809

`A153723(A145033(n))%A145033(n)`
-/

namespace A268142.P6439671497662849809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153723 (A145033 n).toNat) (A145033 n)

end

end A268142.P6439671497662849809

/-! ## A268142.P864383281333373273

`A240178(A287318(n))%A133620(n+5)`
-/

namespace A268142.P864383281333373273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240178 (A287318 n).toNat) (A133620 (n + 5))

end

end A268142.P864383281333373273

/-! ## A268142.P15497509691981820379

`and(A026670(A174109(n)), A268159(n+1))`
-/

namespace A268142.P15497509691981820379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026670 (A174109 n).toNat) (A268159 (n + 1))

end

end A268142.P15497509691981820379

/-! ## A268142.P11545313913200339795

`and(A268159(n+1), A302026(A022172(n)))`
-/

namespace A268142.P11545313913200339795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A268159 (n + 1)) (A302026 (A022172 n).toNat)

end

end A268142.P11545313913200339795

/-! ## A268142.P17870100799483033634

`A348743(A348756(n+1))%A363043(n+1)`
-/

namespace A268142.P17870100799483033634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348743 (A348756 (n + 1)).toNat) (A363043 (n + 1))

end

end A268142.P17870100799483033634

/-!
# A268143: Number of 3 X n arrays containing n copies of 0..3-1 with every element equal to at least one diagonal or antidiagonal neighbor and the top left element equal to 0.

The programs for A268143, there is no canonical definition to state claims against.
-/

/-! ## A268143.P17148956727077685577

`A268142(∑[n+2]+4)`
-/

namespace A268143.P17148956727077685577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268143.P17148956727077685577

/-! ## A268143.P8856626861193344470

`lcm(2, A268142(A167614(n+1)))`
-/

namespace A268143.P8856626861193344470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268142 (A167614 (n + 1)).toNat)

end

end A268143.P8856626861193344470

/-! ## A268143.P12717332077033707015

`A268142(A167614(n+1))+A185284(n)`
-/

namespace A268143.P12717332077033707015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (A167614 (n + 1)).toNat + A185284 n

end

end A268143.P12717332077033707015

/-! ## A268143.P1522140590923356490

`A268142(A167614(n+1))+A243834(n)`
-/

namespace A268143.P1522140590923356490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (A167614 (n + 1)).toNat + A243834 n

end

end A268143.P1522140590923356490

/-! ## A268143.P16675801061568528967

`A010168(n)*A268142(A167614(n+1))`
-/

namespace A268143.P16675801061568528967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010168 n * A268142 (A167614 (n + 1)).toNat

end

end A268143.P16675801061568528967

/-!
# A268144: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to at least one diagonal or antidiagonal neighbor and the top left element equal to 0.

The programs for A268144, there is no canonical definition to state claims against.
-/

/-! ## A268144.P13431828831801888959

`A268142(A141214(n)+7)`
-/

namespace A268144.P13431828831801888959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (A141214 n + 7).toNat

end

end A268144.P13431828831801888959

/-! ## A268144.P13791978520059021905

`A268142(A052905(n)+9)`
-/

namespace A268144.P13791978520059021905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (A052905 n + 9).toNat

end

end A268144.P13791978520059021905

/-! ## A268144.P17138252425796931222

`A268142(A055999(n)+10)`
-/

namespace A268144.P17138252425796931222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (A055999 n + 10).toNat

end

end A268144.P17138252425796931222

/-! ## A268144.P15573613977177961006

`A268142(eq[5, A066657(n)])`
-/

namespace A268144.P15573613977177961006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268144.P15573613977177961006

/-!
# A268145: Twin prime pairs concatenated to their average in decimal representation (with the lesser twin prepended and the greater twin appended).

The programs for A268145, there is no canonical definition to state claims against.
-/

/-! ## A268145.P9088144141089001228

`A001703(A001359(n+1))`
-/

namespace A268145.P9088144141089001228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001703 (A001359 (n + 1)).toNat

end

end A268145.P9088144141089001228

/-! ## A268145.P18290773916856551095

`A049857(A014574(n+1))`
-/

namespace A268145.P18290773916856551095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (A014574 (n + 1)).toNat

end

end A268145.P18290773916856551095

/-! ## A268145.P15001456376169816382

`A001703(A124588(n+2))`
-/

namespace A268145.P15001456376169816382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001703 (A124588 (n + 2)).toNat

end

end A268145.P15001456376169816382

/-! ## A268145.P5810356419322127637

`A001703(A181747(n+2))`
-/

namespace A268145.P5810356419322127637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001703 (A181747 (n + 2)).toNat

end

end A268145.P5810356419322127637

/-!
# A268146: Twin prime pairs concatenated to their average in decimal representation (the greater twin prepended, the lesser appended).

The programs for A268146, there is no canonical definition to state claims against.
-/

/-! ## A268146.P5460631556061558780

`3*A075004(A001359(n+1))`
-/

namespace A268146.P5460631556061558780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A075004 (A001359 (n + 1)).toNat

end

end A268146.P5460631556061558780

/-! ## A268146.P2719107540559508627

`3*A075004(A014574(n+1)-1)`
-/

namespace A268146.P2719107540559508627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A075004 (A014574 (n + 1) - 1).toNat

end

end A268146.P2719107540559508627

/-! ## A268146.P9748003539970708130

`3*A075004(floor(sqrt(A037074(n+1))))`
-/

namespace A268146.P9748003539970708130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A075004 (Int.sqrt (A037074 (n + 1))).toNat

end

end A268146.P9748003539970708130

/-! ## A268146.P13978959395200793430

`3*A075004(2*A040040(n+1)-1)`
-/

namespace A268146.P13978959395200793430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A075004 (2 * A040040 (n + 1) - 1).toNat

end

end A268146.P13978959395200793430

/-! ## A268146.P13037737388634189816

`3*A075004(A111166(n+1)+A000007(n))`
-/

namespace A268146.P13037737388634189816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A075004 (A111166 (n + 1) + A000007 n).toNat

end

end A268146.P13037737388634189816

/-!
# A268147: A double binomial sum involving absolute values.

The programs for A268147, the canonical program `A268147.P1665359769578713358` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268147 has offset 0).

The definition of A268147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268147.P1665359769578713358

`n*16^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A268147

/-- `n*16^n` -/
def P1665359769578713358.Spec : Prop :=
  ∀ n, (P1665359769578713358.a n : ℤ) = A268147 n

theorem P1665359769578713358.correct : P1665359769578713358.Spec := by
  intro n
  simp only [A268147]

end A268147

/-!
# A268148: A double binomial sum involving absolute values.

The programs for A268148, the canonical program `A268148.P15178606553971626759` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268148 has offset 0).

The definition of A268148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268148.P15178606553971626759

`2^(4*n-1)*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A268148

/-- `2^(4*n-1)*n*(2*n-1)` -/
def P15178606553971626759.Spec : Prop :=
  ∀ n, P15178606553971626759.a n = (A268148 n : ℚ)

end A268148

/-! ## A268148.P15223180878191188610

`A128798(2*n)/4`
-/

namespace A268148.P15223180878191188610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128798 (2 * n) : ℚ) / 4

end

end A268148.P15223180878191188610

namespace A268148

/-- `A128798(2*n)/4` -/
def P15223180878191188610.Spec : Prop :=
  ∀ n, P15223180878191188610.a n = (A268148 n : ℚ)

end A268148

/-! ## A268148.P9097651032895482388

`A000079(4*n)*C(2*n, 2)/2`
-/

namespace A268148.P9097651032895482388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (4 * n) * (Nat.choose (2 * n) 2 : ℤ) : ℚ) / 2

end

end A268148.P9097651032895482388

namespace A268148

/-- `A000079(4*n)*C(2*n, 2)/2` -/
def P9097651032895482388.Spec : Prop :=
  ∀ n, P9097651032895482388.a n = (A268148 n : ℚ)

end A268148

/-! ## A268148.P605157761725132341

`A116144(A004273(n))`
-/

namespace A268148.P605157761725132341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116144 (A004273 n).toNat

end

end A268148.P605157761725132341

namespace A268148

/-- `A116144(A004273(n))` -/
def P605157761725132341.Spec : Prop :=
  ∀ n, P605157761725132341.a n = A268148 n

end A268148

/-! ## A268148.P14357502883416966670

`A116144(log2(A081294(n)))`
-/

namespace A268148.P14357502883416966670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116144 (SequenceMachineLib.roundAway (Real.logb 2 (A081294 n : ℝ))).toNat

end

end A268148.P14357502883416966670

namespace A268148

/-- `A116144(log2(A081294(n)))` -/
def P14357502883416966670.Spec : Prop :=
  ∀ n, P14357502883416966670.a n = A268148 n

end A268148

/-! ## A268148.P13084176527910394312

`A116144(record[A026741(n)])`
-/

namespace A268148.P13084176527910394312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116144 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268148.P13084176527910394312

namespace A268148

/-- `A116144(record[A026741(n)])` -/
def P13084176527910394312.Spec : Prop :=
  ∀ n, P13084176527910394312.a n = A268148 n

end A268148

/-! ## A268148.P8555306071990802167

`A116144(eq[0, A142150(n)])`
-/

namespace A268148.P8555306071990802167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268148.P8555306071990802167

namespace A268148

/-- `A116144(eq[0, A142150(n)])` -/
def P8555306071990802167.Spec : Prop :=
  ∀ n, P8555306071990802167.a n = A268148 n

end A268148

/-! ## A268148.P13015932727615455207

`A116144(floor(sqrt(A002939(n))))`
-/

namespace A268148.P13015932727615455207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116144 (Int.sqrt (A002939 n)).toNat

end

end A268148.P13015932727615455207

namespace A268148

/-- `A116144(floor(sqrt(A002939(n))))` -/
def P13015932727615455207.Spec : Prop :=
  ∀ n, P13015932727615455207.a n = A268148 n

end A268148

/-! ## A268148.P489928822301508792

`A018215(n)²-A002697(2*n)`
-/

namespace A268148.P489928822301508792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 n ^ 2 - A002697 (2 * n)

end

end A268148.P489928822301508792

namespace A268148

/-- `A018215(n)²-A002697(2*n)` -/
def P489928822301508792.Spec : Prop :=
  ∀ n, P489928822301508792.a n = A268148 n

end A268148

/-! ## A268148.P15384998037493082248

`A001787(2*n)²-A002697(2*n)`
-/

namespace A268148.P15384998037493082248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (2 * n) ^ 2 - A002697 (2 * n)

end

end A268148.P15384998037493082248

namespace A268148

/-- `A001787(2*n)²-A002697(2*n)` -/
def P15384998037493082248.Spec : Prop :=
  ∀ n, P15384998037493082248.a n = A268148 n

end A268148

/-!
# A268149: A double binomial sum involving absolute values.

The programs for A268149, there is no canonical definition to state claims against.
-/

/-! ## A268149.P2043968795721615734

`A002736(2*n)`
-/

namespace A268149.P2043968795721615734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002736 (2 * n)

end

end A268149.P2043968795721615734

/-! ## A268149.P12033065956670692767

`2*n*A166337(n)`
-/

namespace A268149.P12033065956670692767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A166337 n)

end

end A268149.P12033065956670692767

/-! ## A268149.P12473410845526742161

`(2*n)²*A001448(n)`
-/

namespace A268149.P12473410845526742161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) * A001448 n

end

end A268149.P12473410845526742161

/-! ## A268149.P8035814415924219174

`n²*A146534(2*n)`
-/

namespace A268149.P8035814415924219174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A146534 (2 * n)

end

end A268149.P8035814415924219174

/-! ## A268149.P2177035632405125365

`n²*A240530(2*n)`
-/

namespace A268149.P2177035632405125365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A240530 (2 * n)

end

end A268149.P2177035632405125365

/-! ## A268149.P497049008718104373

`2*n*A005430(2*n)`
-/

namespace A268149.P497049008718104373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A005430 (2 * n)

end

end A268149.P497049008718104373

/-! ## A268149.P14464922029107728954

`(2*n)²*A000984(2*n)`
-/

namespace A268149.P14464922029107728954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) * A000984 (2 * n)

end

end A268149.P14464922029107728954

/-! ## A268149.P10659496214189626543

`8*n²*A088218(2*n)`
-/

namespace A268149.P10659496214189626543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) * A088218 (2 * n)

end

end A268149.P10659496214189626543

/-! ## A268149.P994440599386970698

`(2*n+1)*A110609(2*n)`
-/

namespace A268149.P994440599386970698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A110609 (2 * n)

end

end A268149.P994440599386970698

/-! ## A268149.P2540936391701594238

`A000984(2*n)*A016742(n)`
-/

namespace A268149.P2540936391701594238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A016742 n

end

end A268149.P2540936391701594238

/-!
# A268151: A double binomial sum involving absolute values.

The programs for A268151, the canonical program `A268151.P6720507253312557380` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268151 has offset 0).

The definition of A268151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268151.P6720507253312557380

`2^(4*n-1)*n*(6*n-1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A268151

/-- `2^(4*n-1)*n*(6*n-1)` -/
def P6720507253312557380.Spec : Prop :=
  ∀ n, P6720507253312557380.a n = (A268151 n : ℚ)

end A268151

/-! ## A268151.P4369682077517917702

`record[A084857(n)*A122803(n)]`
-/

namespace A268151.P4369682077517917702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084857 n * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268151.P4369682077517917702

namespace A268151

/-- `record[A084857(n)*A122803(n)]` -/
def P4369682077517917702.Spec : Prop :=
  ∀ n, P4369682077517917702.a n = A268151 n

end A268151

/-! ## A268151.P14119537634963691070

`A000302(n)²*A000326(2*n)/2`
-/

namespace A268151.P14119537634963691070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n ^ 2 * A000326 (2 * n) : ℚ) / 2

end

end A268151.P14119537634963691070

namespace A268151

/-- `A000302(n)²*A000326(2*n)/2` -/
def P14119537634963691070.Spec : Prop :=
  ∀ n, P14119537634963691070.a n = (A268151 n : ℚ)

end A268151

/-! ## A268151.P4803409056347221400

`A000302(2*n)*A000326(2*n)/2`
-/

namespace A268151.P4803409056347221400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 (2 * n) * A000326 (2 * n) : ℚ) / 2

end

end A268151.P4803409056347221400

namespace A268151

/-- `A000302(2*n)*A000326(2*n)/2` -/
def P4803409056347221400.Spec : Prop :=
  ∀ n, P4803409056347221400.a n = (A268151 n : ℚ)

end A268151

/-! ## A268151.P14215810843291386247

`A001815(A008574(n))-A268148(n)`
-/

namespace A268151.P14215810843291386247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 (A008574 n).toNat - A268148 n

end

end A268151.P14215810843291386247

namespace A268151

/-- `A001815(A008574(n))-A268148(n)` -/
def P14215810843291386247.Spec : Prop :=
  ∀ n, P14215810843291386247.a n = A268151 n

end A268151

/-! ## A268151.P13550359924327924298

`A001815(A008586(n))-A268148(n)`
-/

namespace A268151.P13550359924327924298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 (A008586 n).toNat - A268148 n

end

end A268151.P13550359924327924298

namespace A268151

/-- `A001815(A008586(n))-A268148(n)` -/
def P13550359924327924298.Spec : Prop :=
  ∀ n, P13550359924327924298.a n = A268151 n

end A268151

/-!
# A268152: A double binomial sum involving absolute values.

The programs for A268152, the canonical program `A268152.P971803202470408903` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268152 has offset 0).

The definition of A268152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268152.P971803202470408903

`4^(2*n-1)*n*(36*n^3-84*n²+67*n-17)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A268152

/-- `4^(2*n-1)*n*(36*n^3-84*n²+67*n-17)` -/
def P971803202470408903.Spec : Prop :=
  ∀ n, P971803202470408903.a n = (A268152 n : ℚ)

end A268152

/-!
# A268153: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A268153, there is no canonical definition to state claims against.
-/

/-! ## A268153.P15430571443459911483

`A264099(2^n-1)`
-/

namespace A268153.P15430571443459911483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264099 (2 ^ n - 1)

end

end A268153.P15430571443459911483

/-! ## A268153.P10672039776586461096

`record[A264099(A175946(n+1))]`
-/

namespace A268153.P10672039776586461096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264099 (A175946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268153.P10672039776586461096

/-! ## A268153.P4795002747129261873

`record[A264099(A059268(n)-1)]`
-/

namespace A268153.P4795002747129261873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264099 (A059268 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268153.P4795002747129261873

/-! ## A268153.P2917863941663426015

`or(char[1], A264099(A000225(n)))`
-/

namespace A268153.P2917863941663426015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A264099 (A000225 n).toNat)

end

end A268153.P2917863941663426015

/-! ## A268153.P1527713024429697356

`record[gcd(A087117(n), A264099(n))]`
-/

namespace A268153.P1527713024429697356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087117 n) (A264099 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268153.P1527713024429697356

/-!
# A268154: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A268154, there is no canonical definition to state claims against.
-/

/-! ## A268154.P6675639812371338847

`∑[A264099(n)]`
-/

namespace A268154.P6675639812371338847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268154.P6675639812371338847

/-! ## A268154.P5954575965364920981

`a(n-1)-(A000007(n)-A264099(n))` with `a(0)=1`
-/

namespace A268154.P5954575965364920981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A264099 n)

end

end A268154.P5954575965364920981

/-! ## A268154.P16298455883830719216

`a(n-1)+A057427(n)*A264099(n)` with `a(0)=1`
-/

namespace A268154.P16298455883830719216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A264099 n

end

end A268154.P16298455883830719216

/-! ## A268154.P6827452624003896828

`∑[∑[A268194(n)]+1-A268194(n)]`
-/

namespace A268154.P6827452624003896828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268194 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A268194 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268154.P6827452624003896828

/-!
# A268155: Primes which are squares (mod 229).

The programs for A268155, there is no canonical definition to state claims against.
-/

/-! ## A268155.P5586506426716285288

`∪[A141165(n+1), A141166(n+1)]`
-/

namespace A268155.P5586506426716285288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268155.P5586506426716285288

/-! ## A268155.P834623527488187558

`p?[n*or(1, A011627(n))]`
-/

namespace A268155.P834623527488187558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 (A011627 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268155.P834623527488187558

/-! ## A268155.P12103868989200912344

`p?[or(A011627(n), A093178(n))]`
-/

namespace A268155.P12103868989200912344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011627 n) (A093178 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268155.P12103868989200912344

/-! ## A268155.P5630381199144051120

`p?[(n+1)*A057979(A036205(n+1))]`
-/

namespace A268155.P5630381199144051120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A057979 (A036205 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268155.P5630381199144051120

/-! ## A268155.P9110530897948292048

`eq[A011627(n), A240235(n+1)]`
-/

namespace A268155.P9110530897948292048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268155.P9110530897948292048

/-!
# A268157: Number of n X 3 arrays containing 3 copies of 0..n-1 with every element equal to at least one vertical or antidiagonal neighbor and the top left element equal to 0.

The programs for A268157, there is no canonical definition to state claims against.
-/

/-! ## A268157.P6615989925373428262

`A268159(∑[n+3]+1)`
-/

namespace A268157.P6615989925373428262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268157.P6615989925373428262

/-! ## A268157.P5821281928833718720

`record[A268159(∑[A158416(n)])]`
-/

namespace A268157.P5821281928833718720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268157.P5821281928833718720

/-! ## A268157.P5552399953539508732

`record[lcm(A213629(n+3), A268159(n+1))]`
-/

namespace A268157.P5552399953539508732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A213629 (n + 3)) (A268159 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268157.P5552399953539508732

/-!
# A268158: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with every element equal to at least one vertical or antidiagonal neighbor and the top left element equal to 0.

The programs for A268158, there is no canonical definition to state claims against.
-/

/-! ## A268158.P4867431434264725302

`A268159(record[a(n-1)+n])` with `a(0)=10, a(1)=-2`
-/

namespace A268158.P4867431434264725302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, -2] fun n f1 =>
  f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268158.P4867431434264725302

/-! ## A268158.P5405686289516887161

`A268159(A141214(n+1))`
-/

namespace A268158.P5405686289516887161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (A141214 (n + 1)).toNat

end

end A268158.P5405686289516887161

/-! ## A268158.P8174069364662313072

`A268159(A027379(n+2))`
-/

namespace A268158.P8174069364662313072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (A027379 (n + 2)).toNat

end

end A268158.P8174069364662313072

/-!
# A268159: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to at least one vertical or antidiagonal neighbor and the top left element equal to 0.

The programs for A268159, there is no canonical definition to state claims against.
-/

/-! ## A268159.P14236837065622813013

`A276086(A349205(n))%A304952(n+1)`
-/

namespace A268159.P14236837065622813013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (A349205 (n + 21)).toNat) (A304952 (n + 1))

end

end A268159.P14236837065622813013

/-! ## A268159.P12882932467624469647

`A207500(2*n+3)%A007966(A056941(n))`
-/

namespace A268159.P12882932467624469647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207500 (2 * n + 3)) (A007966 (A056941 n).toNat)

end

end A268159.P12882932467624469647

/-! ## A268159.P16143685791582419903

`A007360(A085778(3*n+2))%A295213(n+1)`
-/

namespace A268159.P16143685791582419903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007360 (A085778 (3 * n + 2)).toNat) (A295213 (n + 1))

end

end A268159.P16143685791582419903

/-!
# A268160: Number of 3Xn arrays containing n copies of 0..3-1 with every element equal to at least one vertical or antidiagonal neighbor and the top left element equal to 0.

The programs for A268160, there is no canonical definition to state claims against.
-/

/-! ## A268160.P14903197588494946504

`A268159(∑[n+2]+4)`
-/

namespace A268160.P14903197588494946504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268160.P14903197588494946504

/-! ## A268160.P12370725559431904950

`lcm(2, A268159(A167614(n+1)))`
-/

namespace A268160.P12370725559431904950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268159 (A167614 (n + 1)).toNat)

end

end A268160.P12370725559431904950

/-! ## A268160.P6781350814274387841

`A268159(A167614(n+1))+A011732(n)`
-/

namespace A268160.P6781350814274387841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (A167614 (n + 1)).toNat + A011732 n

end

end A268160.P6781350814274387841

/-! ## A268160.P3031460092886023333

`A268159(A167614(n+1))+A054899(n)`
-/

namespace A268160.P3031460092886023333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (A167614 (n + 1)).toNat + A054899 n

end

end A268160.P3031460092886023333

/-! ## A268160.P15481249957345711566

`A268159(A167614(n+1))+A084904(n)`
-/

namespace A268160.P15481249957345711566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (A167614 (n + 1)).toNat + A084904 n

end

end A268160.P15481249957345711566

/-!
# A268161: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to at least one vertical or antidiagonal neighbor and the top left element equal to 0.

The programs for A268161, there is no canonical definition to state claims against.
-/

/-! ## A268161.P8610021566125262961

`A268159(∑[n+3]+7)`
-/

namespace A268161.P8610021566125262961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A268161.P8610021566125262961

/-! ## A268161.P9273647626311523752

`A326686(n)+A268159(A141214(n)+7)`
-/

namespace A268161.P9273647626311523752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A268159 (A141214 n + 7).toNat

end

end A268161.P9273647626311523752

/-! ## A268161.P3040566823803473227

`A102480(n)*A268159(A141214(n)+7)`
-/

namespace A268161.P3040566823803473227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102480 n * A268159 (A141214 n + 7).toNat

end

end A268161.P3040566823803473227

/-! ## A268161.P15800690168070898141

`A014963(4*n+2)*A268159(A141214(n)+7)`
-/

namespace A268161.P15800690168070898141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A268159 (A141214 n + 7).toNat

end

end A268161.P15800690168070898141

/-!
# A268162: Number of 5 X n arrays containing n copies of 0..5-1 with every element equal to at least one vertical or antidiagonal neighbor and the top left element equal to 0.

The programs for A268162, there is no canonical definition to state claims against.
-/

/-! ## A268162.P27460676405219520

`A268159(A155212(n)+13)`
-/

namespace A268162.P27460676405219520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (A155212 n + 13).toNat

end

end A268162.P27460676405219520

/-! ## A268162.P2469118498677793136

`A268159(A056000(n)+15)`
-/

namespace A268162.P2469118498677793136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (A056000 n + 15).toNat

end

end A268162.P2469118498677793136

/-! ## A268162.P3017746593783650683

`A268159(eq[7, A066657(n)])`
-/

namespace A268162.P3017746593783650683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268162.P3017746593783650683

/-!
# A268163: Number of labeled binary-ternary rooted non-planar trees, indexed by number of leaves.

The programs for A268163, the canonical program `A268163.P2134947381450812661` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268163 has offset 0).

The definition of A268163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268163.P2134947381450812661

`((24*n-36)*a(n-1)+(3*n-5)*(3*n-7)*a(n-2))/11` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A268163

/-- `((24*n-36)*a(n-1)+(3*n-5)*(3*n-7)*a(n-2))/11` -/
def P2134947381450812661.Spec : Prop :=
  ∀ n, P2134947381450812661.a n = (A268163 n : ℚ)

end A268163

/-! ## A268163.P7205276824073053816

`A070790(a(n-1)+2)+1` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A268163.P7205276824073053816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  A070790 (a (n - 1) + 2).toNat + 1

end

end A268163.P7205276824073053816

namespace A268163

/-- `A070790(a(n-1)+2)+1` -/
def P7205276824073053816.Spec : Prop :=
  ∀ n, P7205276824073053816.a n = A268163 n

end A268163

/-!
# A268164: Number of n X 1 0..3 arrays with every repeated value in every row and column one larger mod 4 than the previous repeated value, and upper left element zero.

The programs for A268164, the canonical program `A268164.P6872958342442097189` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268164 has offset 1).

The definition of A268164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268164.P6872958342442097189

`5*a(n-1)-2*a(n-2)-12*a(n-3)` with `a(0)=1, a(1)=4, a(2)=15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A268164

/-- `5*a(n-1)-2*a(n-2)-12*a(n-3)` -/
def P6872958342442097189.Spec : Prop :=
  ∀ n, P6872958342442097189.a n = A268164 (n + 1)

theorem P6872958342442097189.correct : P6872958342442097189.Spec := by
  intro n
  simp only [A268164, Nat.add_sub_cancel]

end A268164

/-! ## A268164.P15650255422675101774

`A063782(n+1)+A063782(n)-A000244(n+1)`
-/

namespace A268164.P15650255422675101774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 (n + 1) + (A063782 n - A000244 (n + 1))

end

end A268164.P15650255422675101774

namespace A268164

/-- `A063782(n+1)+A063782(n)-A000244(n+1)` -/
def P15650255422675101774.Spec : Prop :=
  ∀ n, P15650255422675101774.a n = A268164 (n + 1)

end A268164

/-! ## A268164.P4707131718900054140

`A268939(n+1)/4`
-/

namespace A268164.P4707131718900054140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268939 (n + 1) : ℚ) / 4

end

end A268164.P4707131718900054140

namespace A268164

/-- `A268939(n+1)/4` -/
def P4707131718900054140.Spec : Prop :=
  ∀ n, P4707131718900054140.a n = (A268164 (n + 1) : ℚ)

end A268164

/-! ## A268164.P8426296535576960523

`sqrt(A268165(n+1))/2`
-/

namespace A268164.P8426296535576960523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A268165 (n + 1) : ℝ) / 2

end

end A268164.P8426296535576960523

namespace A268164

/-- `sqrt(A268165(n+1))/2` -/
def P8426296535576960523.Spec : Prop :=
  ∀ n, P8426296535576960523.a n = (A268164 (n + 1) : ℝ)

end A268164

/-! ## A268164.P8367274978258027093

`A268944(A055999(n)+4)/4`
-/

namespace A268164.P8367274978258027093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268944 (A055999 n + 4).toNat : ℚ) / 4

end

end A268164.P8367274978258027093

namespace A268164

/-- `A268944(A055999(n)+4)/4` -/
def P8367274978258027093.Spec : Prop :=
  ∀ n, P8367274978258027093.a n = (A268164 (n + 1) : ℚ)

end A268164

/-!
# A268165: Number of n X 2 0..3 arrays with every repeated value in every row and column one larger mod 4 than the previous repeated value, and upper left element zero.

The programs for A268165, there is no canonical definition to state claims against.
-/

/-! ## A268165.P4686112310451170696

`(2*A268164(n+1))²`
-/

namespace A268165.P4686112310451170696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A268164 (n + 1)) ^ 2

end

end A268165.P4686112310451170696

/-! ## A268165.P6115722231546648138

`(A268939(n+1)/2)²`
-/

namespace A268165.P6115722231546648138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A268939 (n + 1) : ℚ) / 2) ^ 2

end

end A268165.P6115722231546648138

/-! ## A268165.P1782619826696920182

`A268164(n+1)*A268939(n+1)`
-/

namespace A268165.P1782619826696920182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268164 (n + 1) * A268939 (n + 1)

end

end A268165.P1782619826696920182

/-! ## A268165.P1708238163257129964

`(Δ[A268164(n+1)]-A063782(n))²`
-/

namespace A268165.P1708238163257129964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A063782 n) ^ 2

end

end A268165.P1708238163257129964

/-! ## A268165.P13573073016880745864

`(A268944(A055999(n)+4)/2)²`
-/

namespace A268165.P13573073016880745864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A268944 (A055999 n + 4).toNat : ℚ) / 2) ^ 2

end

end A268165.P13573073016880745864

/-!
# A268166: Number of nX3 0..3 arrays with every repeated value in every row and column one larger mod 4 than the previous repeated value, and upper left element zero.

The programs for A268166, there is no canonical definition to state claims against.
-/

/-! ## A268166.P16186680830470285195

`A268169(∑[n+2]+4)`
-/

namespace A268166.P16186680830470285195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268169 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268166.P16186680830470285195

/-! ## A268166.P4007074406539321123

`lcm(3, A268169(A167614(n+1)))`
-/

namespace A268166.P4007074406539321123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A268169 (A167614 (n + 1)).toNat)

end

end A268166.P4007074406539321123

/-! ## A268166.P15898008231032652809

`A268169(A167614(n+1))+A178798(n)`
-/

namespace A268166.P15898008231032652809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268169 (A167614 (n + 1)).toNat + A178798 n

end

end A268166.P15898008231032652809

/-! ## A268166.P7050587950740755812

`A268169(A167614(n+1))+A185293(n)`
-/

namespace A268166.P7050587950740755812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268169 (A167614 (n + 1)).toNat + A185293 n

end

end A268166.P7050587950740755812

/-! ## A268166.P11473156941617406321

`A326459(n)+A268169(A167614(n+1))`
-/

namespace A268166.P11473156941617406321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326459 n + A268169 (A167614 (n + 1)).toNat

end

end A268166.P11473156941617406321

/-!
# A268167: Number of nX4 0..3 arrays with every repeated value in every row and column one larger mod 4 than the previous repeated value, and upper left element zero.

The programs for A268167, there is no canonical definition to state claims against.
-/

/-! ## A268167.P15371658917386831517

`A268169(∑[n+3]+7)`
-/

namespace A268167.P15371658917386831517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268169 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A268167.P15371658917386831517

/-!
# A268168: Number of nX5 0..3 arrays with every repeated value in every row and column one larger mod 4 than the previous repeated value, and upper left element zero.

The programs for A268168, there is no canonical definition to state claims against.
-/

/-! ## A268168.P4846738487949027589

`A268169(A374005(n+1))`
-/

namespace A268168.P4846738487949027589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268169 (A374005 (n + 1)).toNat

end

end A268168.P4846738487949027589

/-! ## A268168.P10437223387809991831

`A268169(∑[round(1/acot(n))+5]+5)`
-/

namespace A268168.P10437223387809991831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268169 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A268168.P10437223387809991831

/-!
# A268169: T(n,k)=Number of nXk 0..3 arrays with every repeated value in every row and column one larger mod 4 than the previous repeated value, and upper left element zero.

The programs for A268169, there is no canonical definition to state claims against.
-/

/-! ## A268169.P17536610202087222150

`A002265(A267933(n+1))%A153138(n+1)`
-/

namespace A268169.P17536610202087222150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A267933 (n + 1)).toNat) (A153138 (n + 1))

end

end A268169.P17536610202087222150

/-! ## A268169.P14564136619676418955

`A002265(A267933(n+1)+A164555(n)^10)`
-/

namespace A268169.P14564136619676418955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A267933 (n + 1) + A164555 n ^ 10).toNat

end

end A268169.P14564136619676418955

/-! ## A268169.P9629200651642855021

`A002265(or(A185293(n+2), A267933(n+1)))`
-/

namespace A268169.P9629200651642855021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lor (A185293 (n + 2)) (A267933 (n + 1))).toNat

end

end A268169.P9629200651642855021

/-! ## A268169.P7914341636744054833

`A002265(A267933(n+1)^A103376(n+1))`
-/

namespace A268169.P7914341636744054833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A267933 (n + 1) : ℚ) ^ (A103376 (n + 1) : ℤ))).toNat

end

end A268169.P7914341636744054833

/-! ## A268169.P9383046733371608246

`A002265(C(A267933(n+1), A103376(n+1)))`
-/

namespace A268169.P9383046733371608246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Nat.choose (A267933 (n + 1)).toNat (A103376 (n + 1)).toNat)

end

end A268169.P9383046733371608246

/-!
# A268170: E.g.f. A(x) satisfies: A(x) = exp( Integral B(x) dx ) such that B(x) = exp(1+x - exp(x)) * exp( Integral A(x) dx ), where the constant of integration is zero.

The programs for A268170, there is no canonical definition to state claims against.
-/

/-! ## A268170.P17203058609920138591

`A004525(A054091(n))-A281400(n+1)`
-/

namespace A268170.P17203058609920138591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A054091 n).toNat - A281400 (n + 1)

end

end A268170.P17203058609920138591

/-! ## A268170.P6006608169688680651

`A093660(A011782(n))-A281400(n+1)`
-/

namespace A268170.P6006608169688680651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093660 (A011782 n).toNat - A281400 (n + 1)

end

end A268170.P6006608169688680651

/-! ## A268170.P3166556447298366823

`A008619(A111063(n))-A281400(n+1)`
-/

namespace A268170.P3166556447298366823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111063 n).toNat - A281400 (n + 1)

end

end A268170.P3166556447298366823

/-!
# A268171: E.g.f. A(x) satisfies: A(x) = exp(1+x - exp(x)) * exp( Integral C(x) dx ) such that C(x) = exp( Integral A(x) dx ), where the constant of integration is zero.

The programs for A268171, there is no canonical definition to state claims against.
-/

/-! ## A268171.P3790878184326685892

`A168431(A062491(n))`
-/

namespace A268171.P3790878184326685892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168431 (A062491 n).toNat

end

end A268171.P3790878184326685892

/-! ## A268171.P17084118924663515825

`A111857(A001861(n))^A111857(n+1)`
-/

namespace A268171.P17084118924663515825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111857 (A001861 n).toNat : ℚ) ^ (A111857 (n + 1) : ℤ)

end

end A268171.P17084118924663515825

/-! ## A268171.P473474762397477377

`A111857(A001861(n))-A121373(3*n+2)`
-/

namespace A268171.P473474762397477377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (A001861 n).toNat - A121373 (3 * n + 2)

end

end A268171.P473474762397477377

/-!
# A268172: Binary-ternary Wedderburn-Etherington numbers.

The programs for A268172, there is no canonical definition to state claims against.
-/

/-! ## A268172.P1183719132178743186

`A292085(A034856(n+1)+A000038(n))`
-/

namespace A268172.P1183719132178743186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A034856 (n + 1) + A000038 n).toNat

end

end A268172.P1183719132178743186

/-! ## A268172.P4549059755787121167

`A292085(A034856(n+1))-A000007(n)`
-/

namespace A268172.P4549059755787121167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A034856 (n + 1)).toNat - A000007 n

end

end A268172.P4549059755787121167

/-! ## A268172.P7200185180581178234

`A292085(A046691(n)+2)-A000007(n)`
-/

namespace A268172.P7200185180581178234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A046691 n + 2).toNat - A000007 n

end

end A268172.P7200185180581178234

/-! ## A268172.P17886879803606189752

`A292085(A034856(n+1))%A000302(n)`
-/

namespace A268172.P17886879803606189752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292085 (A034856 (n + 1)).toNat) (A000302 n)

end

end A268172.P17886879803606189752

/-! ## A268172.P4345666358532805397

`A292085(A034856(n+1)+2*A000007(n))`
-/

namespace A268172.P4345666358532805397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A034856 (n + 1) + 2 * A000007 n).toNat

end

end A268172.P4345666358532805397

/-! ## A268172.P311378066663794534

`A292085(A034856(char[1]+1+n))%A066351(n)`
-/

namespace A268172.P311378066663794534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292085 (A034856 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat) (A066351 n)

end

end A268172.P311378066663794534

/-! ## A268172.P17877757387245727586

`A292085(A000007(n)+A034856(n+1)+A000007(n))`
-/

namespace A268172.P17877757387245727586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (A000007 n + (A034856 (n + 1) + A000007 n)).toNat

end

end A268172.P17877757387245727586

/-!
# A268173: a(n) = Sum_{k=0..n} (-1)^k*floor(sqrt(k)).

The programs for A268173, the canonical program `A268173.P14821145454414080414` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268173 has offset 0).

The definition of A268173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268173.P14821145454414080414

`floor(sqrt(n))*(-1)^n/2-((-1)^(floor(sqrt(n))+1)+1)/4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A268173

/-- `floor(sqrt(n))*(-1)^n/2-((-1)^(floor(sqrt(n))+1)+1)/4` -/
def P14821145454414080414.Spec : Prop :=
  ∀ n, P14821145454414080414.a n = (A268173 n : ℚ)

end A268173

/-! ## A268173.P11903707443523660241

`A270825(or(2, n))`
-/

namespace A268173.P11903707443523660241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270825 (Nat.lor 2 n)

end

end A268173.P11903707443523660241

namespace A268173

/-- `A270825(or(2, n))` -/
def P11903707443523660241.Spec : Prop :=
  ∀ n, P11903707443523660241.a n = A268173 n

end A268173

/-! ## A268173.P7366990849581385069

`floor(floor(sqrt(n))/A280560(n))`
-/

namespace A268173.P7366990849581385069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.sqrt n : ℚ) / (A280560 n : ℚ)⌋

end

end A268173.P7366990849581385069

namespace A268173

/-- `floor(floor(sqrt(n))/A280560(n))` -/
def P7366990849581385069.Spec : Prop :=
  ∀ n, P7366990849581385069.a n = A268173 n

end A268173

/-! ## A268173.P11398448764881967775

`floor(A033999(n)/2*floor(sqrt(n)))`
-/

namespace A268173.P11398448764881967775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033999 n : ℚ) / 2 * (Nat.sqrt n : ℚ)⌋

end

end A268173.P11398448764881967775

namespace A268173

/-- `floor(A033999(n)/2*floor(sqrt(n)))` -/
def P11398448764881967775.Spec : Prop :=
  ∀ n, P11398448764881967775.a n = A268173 n

end A268173

/-! ## A268173.P4966522288264525743

`floor(A000196(n)/(2*(-1)^n))`
-/

namespace A268173.P4966522288264525743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000196 n : ℚ) / (2 * (-1) ^ n : ℚ)⌋

end

end A268173.P4966522288264525743

namespace A268173

/-- `floor(A000196(n)/(2*(-1)^n))` -/
def P4966522288264525743.Spec : Prop :=
  ∀ n, P4966522288264525743.a n = A268173 n

end A268173

/-! ## A268173.P3458256131490306875

`A270825(A174091(n))`
-/

namespace A268173.P3458256131490306875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270825 (A174091 n).toNat

end

end A268173.P3458256131490306875

namespace A268173

/-- `A270825(A174091(n))` -/
def P3458256131490306875.Spec : Prop :=
  ∀ n, P3458256131490306875.a n = A268173 n

end A268173

/-! ## A268173.P15587547536297311790

`-∑[A000196(n)*A033999(n+1)]`
-/

namespace A268173.P15587547536297311790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268173.P15587547536297311790

namespace A268173

/-- `-∑[A000196(n)*A033999(n+1)]` -/
def P15587547536297311790.Spec : Prop :=
  ∀ n, P15587547536297311790.a n = A268173 n

end A268173

/-! ## A268173.P2937426143999076940

`floor(floor(sqrt(n))/A184334(3*n+1))`
-/

namespace A268173.P2937426143999076940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.sqrt n : ℚ) / (A184334 (3 * n + 1) : ℚ)⌋

end

end A268173.P2937426143999076940

namespace A268173

/-- `floor(floor(sqrt(n))/A184334(3*n+1))` -/
def P2937426143999076940.Spec : Prop :=
  ∀ n, P2937426143999076940.a n = A268173 n

end A268173

/-! ## A268173.P12811016936229346396

`A262352(n²)`
-/

namespace A268173.P12811016936229346396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (n ^ 2)

end

end A268173.P12811016936229346396

namespace A268173

/-- `A262352(n²)` -/
def P12811016936229346396.Spec : Prop :=
  ∀ n, P12811016936229346396.a n = A268173 n

end A268173

/-! ## A268173.P6852302894536156867

`A262352(A000290(n))%7`
-/

namespace A268173.P6852302894536156867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262352 (A000290 n).toNat) 7

end

end A268173.P6852302894536156867

namespace A268173

/-- `A262352(A000290(n))%7` -/
def P6852302894536156867.Spec : Prop :=
  ∀ n, P6852302894536156867.a n = A268173 n

end A268173

/-! ## A268173.P15523001470814485135

`A262352(A005563(n))%7`
-/

namespace A268173.P15523001470814485135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262352 (A005563 n).toNat) 7

end

end A268173.P15523001470814485135

namespace A268173

/-- `A262352(A005563(n))%7` -/
def P15523001470814485135.Spec : Prop :=
  ∀ n, P15523001470814485135.a n = A268173 n

end A268173

/-! ## A268173.P10348448178068050770

`(1-A000007(n))*A262352(A000290(n))`
-/

namespace A268173.P10348448178068050770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A262352 (A000290 n).toNat

end

end A268173.P10348448178068050770

namespace A268173

/-- `(1-A000007(n))*A262352(A000290(n))` -/
def P10348448178068050770.Spec : Prop :=
  ∀ n, P10348448178068050770.a n = A268173 n

end A268173

/-! ## A268173.P10323154121364916127

`(1-A000038(n))*A262352(A000290(n))`
-/

namespace A268173.P10323154121364916127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000038 n) * A262352 (A000290 n).toNat

end

end A268173.P10323154121364916127

namespace A268173

/-- `(1-A000038(n))*A262352(A000290(n))` -/
def P10323154121364916127.Spec : Prop :=
  ∀ n, P10323154121364916127.a n = A268173 n

end A268173

/-! ## A268173.P15948564461986703974

`A000045(gcd(n, n+1))*A262352(A000290(n))`
-/

namespace A268173.P15948564461986703974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A262352 (A000290 n).toNat

end

end A268173.P15948564461986703974

namespace A268173

/-- `A000045(gcd(n, n+1))*A262352(A000290(n))` -/
def P15948564461986703974.Spec : Prop :=
  ∀ n, P15948564461986703974.a n = A268173 n

end A268173

/-! ## A268173.P10139541658058046356

`A014963(A000217(n+9))*A262352(A000290(n))`
-/

namespace A268173.P10139541658058046356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 9)).toNat * A262352 (A000290 n).toNat

end

end A268173.P10139541658058046356

namespace A268173

/-- `A014963(A000217(n+9))*A262352(A000290(n))` -/
def P10139541658058046356.Spec : Prop :=
  ∀ n, P10139541658058046356.a n = A268173 n

end A268173

/-!
# A268174: Integers m such that m^(m+1) == 1 (modulo (m+2)).

The programs for A268174, the canonical program `A268174.P3160749783044655820` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268174 has offset 1).

The definition of A268174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268174.P3856724310203073768

`eq[1, A110146(n)]`
-/

namespace A268174.P3856724310203073768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268174.P3856724310203073768

namespace A268174

/-- `eq[1, A110146(n)]` -/
def P3856724310203073768.Spec : Prop :=
  ∀ n, (P3856724310203073768.a n : ℤ) = A268174 (n + 1)

end A268174

/-! ## A268174.P10383776440272846934

`A176997(n+2)-2`
-/

namespace A268174.P10383776440272846934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 2) - 2

end

end A268174.P10383776440272846934

namespace A268174

/-- `A176997(n+2)-2` -/
def P10383776440272846934.Spec : Prop :=
  ∀ n, P10383776440272846934.a n = A268174 (n + 1)

end A268174

/-! ## A268174.P13083283386499953388

`A015919(n+3)-2`
-/

namespace A268174.P13083283386499953388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 3) - 2

end

end A268174.P13083283386499953388

namespace A268174

/-- `A015919(n+3)-2` -/
def P13083283386499953388.Spec : Prop :=
  ∀ n, P13083283386499953388.a n = A268174 (n + 1)

end A268174

/-! ## A268174.P10291749767576136642

`eq[1, A062173(n+2)]`
-/

namespace A268174.P10291749767576136642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268174.P10291749767576136642

namespace A268174

/-- `eq[1, A062173(n+2)]` -/
def P10291749767576136642.Spec : Prop :=
  ∀ n, (P10291749767576136642.a n : ℤ) = A268174 (n + 1)

end A268174

/-! ## A268174.P2775988931154801023

`eq[2, A015910(n+2)]`
-/

namespace A268174.P2775988931154801023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268174.P2775988931154801023

namespace A268174

/-- `eq[2, A015910(n+2)]` -/
def P2775988931154801023.Spec : Prop :=
  ∀ n, (P2775988931154801023.a n : ℤ) = A268174 (n + 1)

end A268174

/-! ## A268174.P365701898867527738

`eq[2, A105222(n+2)]`
-/

namespace A268174.P365701898867527738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268174.P365701898867527738

namespace A268174

/-- `eq[2, A105222(n+2)]` -/
def P365701898867527738.Spec : Prop :=
  ∀ n, (P365701898867527738.a n : ℤ) = A268174 (n + 1)

end A268174

/-! ## A268174.P10078642571944364275

`∑[abs(Δ[A015919(n+2)])]`
-/

namespace A268174.P10078642571944364275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268174.P10078642571944364275

namespace A268174

/-- `∑[abs(Δ[A015919(n+2)])]` -/
def P10078642571944364275.Spec : Prop :=
  ∀ n, P10078642571944364275.a n = A268174 (n + 1)

end A268174

/-! ## A268174.P1406515932849432454

`2*A139791(n+1)-1`
-/

namespace A268174.P1406515932849432454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139791 (n + 1) - 1

end

end A268174.P1406515932849432454

namespace A268174

/-- `2*A139791(n+1)-1` -/
def P1406515932849432454.Spec : Prop :=
  ∀ n, P1406515932849432454.a n = A268174 (n + 1)

end A268174

/-! ## A268174.P5154293246787529364

`A004273(A139791(n+1))`
-/

namespace A268174.P5154293246787529364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A139791 (n + 1)).toNat

end

end A268174.P5154293246787529364

namespace A268174

/-- `A004273(A139791(n+1))` -/
def P5154293246787529364.Spec : Prop :=
  ∀ n, P5154293246787529364.a n = A268174 (n + 1)

end A268174

/-! ## A268174.P3160749783044655820

`eq[A001057(n), A213381(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A268174

/-- `eq[A001057(n), A213381(n)]` -/
def P3160749783044655820.Spec : Prop :=
  ∀ n, (P3160749783044655820.a n : ℤ) = A268174 (n + 1)

theorem P3160749783044655820.correct : P3160749783044655820.Spec := by
  intro n
  simp only [A268174, Nat.add_sub_cancel]

end A268174

/-! ## A268174.P1806633241506804074

`∑[A000027(Δ[A015919(n+2)])]`
-/

namespace A268174.P1806633241506804074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268174.P1806633241506804074

namespace A268174

/-- `∑[A000027(Δ[A015919(n+2)])]` -/
def P1806633241506804074.Spec : Prop :=
  ∀ n, P1806633241506804074.a n = A268174 (n + 1)

end A268174

/-! ## A268174.P15965453031114532345

`eq[A270096(n+2)+1, A020639(A311002(n))]`
-/

namespace A268174.P15965453031114532345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270096 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A311002 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268174.P15965453031114532345

namespace A268174

/-- `eq[A270096(n+2)+1, A020639(A311002(n))]` -/
def P15965453031114532345.Spec : Prop :=
  ∀ n, (P15965453031114532345.a n : ℤ) = A268174 (n + 1)

end A268174

/-! ## A268174.P12487483584886072594

`eq[0, A128311(n+2)]`
-/

namespace A268174.P12487483584886072594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268174.P12487483584886072594

namespace A268174

/-- `eq[0, A128311(n+2)]` -/
def P12487483584886072594.Spec : Prop :=
  ∀ n, (P12487483584886072594.a n : ℤ) = A268174 (n + 1)

end A268174

/-! ## A268174.P5367132742131222128

`eq[A278907(n), A288196(n)]`
-/

namespace A268174.P5367132742131222128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268174.P5367132742131222128

namespace A268174

/-- `eq[A278907(n), A288196(n)]` -/
def P5367132742131222128.Spec : Prop :=
  ∀ n, (P5367132742131222128.a n : ℤ) = A268174 (n + 1)

end A268174

/-!
# A268176: a(0) = a(1) = 1, and a(n) = a(n-1) + a( (a(n-1)-1) mod n ) for n>=2.

The programs for A268176, the canonical program `A268176.P7643646627479509458` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268176 has offset 0).

The definition of A268176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268176.P7643646627479509458

`a(n-1)+a((a(n-1)-1)%n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A268176

/-- `a(n-1)+a((a(n-1)-1)%n)` -/
def P7643646627479509458.Spec : Prop :=
  ∀ n, (P7643646627479509458.a n : ℤ) = A268176 n

theorem P7643646627479509458.correct : P7643646627479509458.Spec := by
  intro n
  simp only [A268176]

end A268176

/-! ## A268176.P4073816373705073502

`A361926(A026735(n))`
-/

namespace A268176.P4073816373705073502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361926 (A026735 n).toNat

end

end A268176.P4073816373705073502

namespace A268176

/-- `A361926(A026735(n))` -/
def P4073816373705073502.Spec : Prop :=
  ∀ n, P4073816373705073502.a n = A268176 n

end A268176

/-! ## A268176.P13884851397497530230

`A122921(xor(2, A018043(n)))`
-/

namespace A268176.P13884851397497530230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (Int.xor 2 (A018043 n)).toNat

end

end A268176.P13884851397497530230

namespace A268176

/-- `A122921(xor(2, A018043(n)))` -/
def P13884851397497530230.Spec : Prop :=
  ∀ n, P13884851397497530230.a n = A268176 n

end A268176

/-! ## A268176.P7239916003336437886

`A134871(Δ[record[A177352(n)]])`
-/

namespace A268176.P7239916003336437886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134871 (f1 (n + 1) - f1 n).toNat

end

end A268176.P7239916003336437886

namespace A268176

/-- `A134871(Δ[record[A177352(n)]])` -/
def P7239916003336437886.Spec : Prop :=
  ∀ n, P7239916003336437886.a n = A268176 n

end A268176

/-! ## A268176.P10686071594088105074

`A131625(A054925(n)+1)+1`
-/

namespace A268176.P10686071594088105074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131625 (A054925 n + 1).toNat + 1

end

end A268176.P10686071594088105074

namespace A268176

/-- `A131625(A054925(n)+1)+1` -/
def P10686071594088105074.Spec : Prop :=
  ∀ n, P10686071594088105074.a n = A268176 n

end A268176

/-!
# A268177: Numbers m such that Sum_{i=1..q} 1/lambda(d(i)) is an integer, where d(i) are the q divisors of m and lambda is the Carmichael lambda function (A002322).

The programs for A268177, there is no canonical definition to state claims against.
-/

/-! ## A268177.P10220129235691937177

`record[gcd(A047994(n+1), A293473(n))]`
-/

namespace A268177.P10220129235691937177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047994 (n + 1)) (A293473 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268177.P10220129235691937177

/-! ## A268177.P16940568472642600298

`record[lcm(A235124(n+2), A345933(n+1))]`
-/

namespace A268177.P16940568472642600298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A235124 (n + 2)) (A345933 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268177.P16940568472642600298

/-! ## A268177.P3426459291720896931

`A000005(A097756(n+1))*∑[log2(gcd(2, n))]`
-/

namespace A268177.P3426459291720896931
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000005 (A097756 (n + 1)).toNat : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268177.P3426459291720896931

/-! ## A268177.P11458579234412847767

`A000005(A097756(n+1))*A008619(n)`
-/

namespace A268177.P11458579234412847767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A097756 (n + 1)).toNat * A008619 n

end

end A268177.P11458579234412847767

/-! ## A268177.P5028562112998845216

`A000005(A097756(n+1))*A194964(n+1)`
-/

namespace A268177.P5028562112998845216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A097756 (n + 1)).toNat * A194964 (n + 1)

end

end A268177.P5028562112998845216

/-!
# A268178: Number of nX3 0..3 arrays with every repeated value in every row equal to, and in every column unequal to, the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268178, there is no canonical definition to state claims against.
-/

/-! ## A268178.P2437288938619693591

`A268423(∑[n+2]+4)`
-/

namespace A268178.P2437288938619693591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268178.P2437288938619693591

/-! ## A268178.P1536849081739819356

`A268423(A167614(n+1))+A011741(n)`
-/

namespace A268178.P1536849081739819356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (A167614 (n + 1)).toNat + A011741 n

end

end A268178.P1536849081739819356

/-! ## A268178.P11137008349080425687

`A268423(A167614(n+1))+A011742(n)`
-/

namespace A268178.P11137008349080425687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (A167614 (n + 1)).toNat + A011742 n

end

end A268178.P11137008349080425687

/-! ## A268178.P3779895909650323279

`A268423(A167614(n+1))+A025437(n)`
-/

namespace A268178.P3779895909650323279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (A167614 (n + 1)).toNat + A025437 n

end

end A268178.P3779895909650323279

/-! ## A268178.P138022497048467444

`A268423(A167614(n+1))+A025444(n)`
-/

namespace A268178.P138022497048467444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (A167614 (n + 1)).toNat + A025444 n

end

end A268178.P138022497048467444

/-!
# A268179: Number of nX4 0..4 arrays with every repeated value in every row equal to, and in every column unequal to, the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268179, there is no canonical definition to state claims against.
-/

/-! ## A268179.P1483728256614852919

`A268180(A141214(n+1))`
-/

namespace A268179.P1483728256614852919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (A141214 (n + 1)).toNat

end

end A268179.P1483728256614852919

/-! ## A268179.P12871055467898146592

`A268180(A155212(n)+5)`
-/

namespace A268179.P12871055467898146592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (A155212 n + 5).toNat

end

end A268179.P12871055467898146592

/-!
# A268180: T(n,k)=Number of nXk 0..k arrays with every repeated value in every row equal to, and in every column unequal to, the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268180, there is no canonical definition to state claims against.
-/

/-! ## A268180.P16445114084559968512

`A268003(n+1)-A011745(A000166(n))`
-/

namespace A268180.P16445114084559968512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (n + 1) - A011745 (A000166 n).toNat

end

end A268180.P16445114084559968512

/-! ## A268180.P16343136662704901524

`A268003(n+1)-A023969(A000088(n))`
-/

namespace A268180.P16343136662704901524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (n + 1) - A023969 (A000088 n).toNat

end

end A268180.P16343136662704901524

/-! ## A268180.P13841352202317374752

`A268003(n+1)-A025465(A001003(n))`
-/

namespace A268180.P13841352202317374752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (n + 1) - A025465 (A001003 n).toNat

end

end A268180.P13841352202317374752

/-! ## A268180.P15179182863230708950

`A268003(n+1)-A025465(A002135(n))`
-/

namespace A268180.P15179182863230708950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (n + 1) - A025465 (A002135 n).toNat

end

end A268180.P15179182863230708950

/-!
# A268181: Number of 3Xn 0..n arrays with every repeated value in every row equal to, and in every column unequal to, the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268181, there is no canonical definition to state claims against.
-/

/-! ## A268181.P11807088501289004263

`A268180(∑[n+2]+4)`
-/

namespace A268181.P11807088501289004263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268181.P11807088501289004263

/-! ## A268181.P14706022376585528910

`and(-1, A268180(A167614(n+1)))`
-/

namespace A268181.P14706022376585528910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A268180 (A167614 (n + 1)).toNat)

end

end A268181.P14706022376585528910

/-! ## A268181.P11646101148436219652

`record[A268180(A198455(n+1)+4)]`
-/

namespace A268181.P11646101148436219652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (A198455 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268181.P11646101148436219652

/-!
# A268183: Values of a^2 + b^2 such that sigma(a^2 + b^2) is of the form x^2 + y^2 where a, b, x, y are nonzero integers.

The programs for A268183, there is no canonical definition to state claims against.
-/

/-! ## A268183.P13838739298868605444

`∩[A132777(n+1), A333911(n+1)]`
-/

namespace A268183.P13838739298868605444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268183.P13838739298868605444

/-!
# A268184: Number of n-isohedral edge-to-edge tilings of regular polygons.

The programs for A268184, there is no canonical definition to state claims against.
-/

/-! ## A268184.P2358076765288044444

`A350943(A058696(n+1))`
-/

namespace A268184.P2358076765288044444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350943 (A058696 (n + 1)).toNat

end

end A268184.P2358076765288044444

/-!
# A268185: a(n) = prime(n) + last digit of prime(n).

The programs for A268185, the canonical program `A268185.P2116769644466918163` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268185 has offset 1).

The definition of A268185 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268185.P2116769644466918163

`A000040(n+1)+A007652(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A268185

/-- `A000040(n+1)+A007652(n+1)` -/
def P2116769644466918163.Spec : Prop :=
  ∀ n, P2116769644466918163.a n = A268185 (n + 1)

theorem P2116769644466918163.correct : P2116769644466918163.Spec := by
  intro n
  simp only [A268185, Nat.add_sub_cancel]

end A268185

/-! ## A268185.P17326091093961040478

`A007652(n+1)+Δ[A007504(n)]`
-/

namespace A268185.P17326091093961040478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (f1 (n + 1) - f1 n)

end

end A268185.P17326091093961040478

namespace A268185

/-- `A007652(n+1)+Δ[A007504(n)]` -/
def P17326091093961040478.Spec : Prop :=
  ∀ n, P17326091093961040478.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P4471506945299420252

`A175225(n+1)-A072003(n+1)`
-/

namespace A268185.P4471506945299420252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - A072003 (n + 1)

end

end A268185.P4471506945299420252

namespace A268185

/-- `A175225(n+1)-A072003(n+1)` -/
def P4471506945299420252.Spec : Prop :=
  ∀ n, P4471506945299420252.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P16943761568035235935

`A175222(n+1)-A277097(n+1)`
-/

namespace A268185.P16943761568035235935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) - A277097 (n + 1)

end

end A268185.P16943761568035235935

namespace A268185

/-- `A175222(n+1)-A277097(n+1)` -/
def P16943761568035235935.Spec : Prop :=
  ∀ n, P16943761568035235935.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P7471938626818210297

`A007652(n+1)+abs(Δ[A022837(n)])`
-/

namespace A268185.P7471938626818210297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + |f1 (n + 1) - f1 n|

end

end A268185.P7471938626818210297

namespace A268185

/-- `A007652(n+1)+abs(Δ[A022837(n)])` -/
def P7471938626818210297.Spec : Prop :=
  ∀ n, P7471938626818210297.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P11589247454854780853

`A006093(n+1)+A007652(n+1)+1`
-/

namespace A268185.P11589247454854780853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A007652 (n + 1) + 1)

end

end A268185.P11589247454854780853

namespace A268185

/-- `A006093(n+1)+A007652(n+1)+1` -/
def P11589247454854780853.Spec : Prop :=
  ∀ n, P11589247454854780853.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P1861986147545124217

`A007652(n+1)+A040976(n+1)+2`
-/

namespace A268185.P1861986147545124217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (A040976 (n + 1) + 2)

end

end A268185.P1861986147545124217

namespace A268185

/-- `A007652(n+1)+A040976(n+1)+2` -/
def P1861986147545124217.Spec : Prop :=
  ∀ n, P1861986147545124217.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P8537656557285358831

`A007652(n+1)+A095116(n+1)-n`
-/

namespace A268185.P8537656557285358831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (A095116 (n + 1) - (n : ℤ))

end

end A268185.P8537656557285358831

namespace A268185

/-- `A007652(n+1)+A095116(n+1)-n` -/
def P8537656557285358831.Spec : Prop :=
  ∀ n, P8537656557285358831.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P5549289931065459882

`A010879(A137589(n+1))+A000040(n+1)`
-/

namespace A268185.P5549289931065459882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A137589 (n + 1)).toNat + A000040 (n + 1)

end

end A268185.P5549289931065459882

namespace A268185

/-- `A010879(A137589(n+1))+A000040(n+1)` -/
def P5549289931065459882.Spec : Prop :=
  ∀ n, P5549289931065459882.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P1027198381834851501

`A002024(A161625(n+1))+A000040(n+1)`
-/

namespace A268185.P1027198381834851501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A161625 (n + 1)).toNat + A000040 (n + 1)

end

end A268185.P1027198381834851501

namespace A268185

/-- `A002024(A161625(n+1))+A000040(n+1)` -/
def P1027198381834851501.Spec : Prop :=
  ∀ n, P1027198381834851501.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P6508753742485167031

`A007652(n+1)+A065073(n+1)-A007605(n+1)`
-/

namespace A268185.P6508753742485167031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (A065073 (n + 1) - A007605 (n + 1))

end

end A268185.P6508753742485167031

namespace A268185

/-- `A007652(n+1)+A065073(n+1)-A007605(n+1)` -/
def P6508753742485167031.Spec : Prop :=
  ∀ n, P6508753742485167031.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P7836152023640875830

`A007652(n+1)+A082542(n+1)-A070750(n+1)`
-/

namespace A268185.P7836152023640875830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (A082542 (n + 1) - A070750 (n + 1))

end

end A268185.P7836152023640875830

namespace A268185

/-- `A007652(n+1)+A082542(n+1)-A070750(n+1)` -/
def P7836152023640875830.Spec : Prop :=
  ∀ n, P7836152023640875830.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P1209098605287383919

`A007652(n+1)+A263483(n+1)-A039704(n+1)`
-/

namespace A268185.P1209098605287383919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (A263483 (n + 1) - A039704 (n + 1))

end

end A268185.P1209098605287383919

namespace A268185

/-- `A007652(n+1)+A263483(n+1)-A039704(n+1)` -/
def P1209098605287383919.Spec : Prop :=
  ∀ n, P1209098605287383919.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P7807809993181235874

`A007652(n+1)+A267573(n+1)-A039702(n+1)`
-/

namespace A268185.P7807809993181235874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1) + (A267573 (n + 1) - A039702 (n + 1))

end

end A268185.P7807809993181235874

namespace A268185

/-- `A007652(n+1)+A267573(n+1)-A039702(n+1)` -/
def P7807809993181235874.Spec : Prop :=
  ∀ n, P7807809993181235874.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P13499863176584921360

`A000040(n+1)+A302660(n+1)-A038194(n+1)`
-/

namespace A268185.P13499863176584921360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A302660 (n + 1) - A038194 (n + 1))

end

end A268185.P13499863176584921360

namespace A268185

/-- `A000040(n+1)+A302660(n+1)-A038194(n+1)` -/
def P13499863176584921360.Spec : Prop :=
  ∀ n, P13499863176584921360.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P9613153595400539713

`A000040(n+1)+A063482(n+1)/A000040(n+1)`
-/

namespace A268185.P9613153595400539713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A063482 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A268185.P9613153595400539713

namespace A268185

/-- `A000040(n+1)+A063482(n+1)/A000040(n+1)` -/
def P9613153595400539713.Spec : Prop :=
  ∀ n, P9613153595400539713.a n = (A268185 (n + 1) : ℚ)

end A268185

/-! ## A268185.P15382486461064717025

`A007652(n+1)+A063482(n+1)/A007652(n+1)`
-/

namespace A268185.P15382486461064717025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007652 (n + 1) : ℚ) + (A063482 (n + 1) : ℚ) / (A007652 (n + 1) : ℚ)

end

end A268185.P15382486461064717025

namespace A268185

/-- `A007652(n+1)+A063482(n+1)/A007652(n+1)` -/
def P15382486461064717025.Spec : Prop :=
  ∀ n, P15382486461064717025.a n = (A268185 (n + 1) : ℚ)

end A268185

/-! ## A268185.P15688472677667879248

`A008578(n+2)+A007652(n+1)`
-/

namespace A268185.P15688472677667879248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A007652 (n + 1)

end

end A268185.P15688472677667879248

namespace A268185

/-- `A008578(n+2)+A007652(n+1)` -/
def P15688472677667879248.Spec : Prop :=
  ∀ n, P15688472677667879248.a n = A268185 (n + 1)

end A268185

/-! ## A268185.P2393665444775886837

`A182986(n+2)+A063482(n+1)/A182986(n+2)`
-/

namespace A268185.P2393665444775886837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182986 (n + 2) : ℚ) + (A063482 (n + 1) : ℚ) / (A182986 (n + 2) : ℚ)

end

end A268185.P2393665444775886837

namespace A268185

/-- `A182986(n+2)+A063482(n+1)/A182986(n+2)` -/
def P2393665444775886837.Spec : Prop :=
  ∀ n, P2393665444775886837.a n = (A268185 (n + 1) : ℚ)

end A268185

/-! ## A268185.P112666623456445087

`A067747(2*n+1)+A007652(n+1)`
-/

namespace A268185.P112666623456445087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) + A007652 (n + 1)

end

end A268185.P112666623456445087

namespace A268185

/-- `A067747(2*n+1)+A007652(n+1)` -/
def P112666623456445087.Spec : Prop :=
  ∀ n, P112666623456445087.a n = A268185 (n + 1)

end A268185

/-!
# A268187: Triangle read by rows: T(n,k) is the number of no-leg partitions of n having Durfee square of size k (n >= 1, 1 <= k <= floor(sqrt(n))). Also, number of no-arm partitions of n having Durfee square of size k.

The programs for A268187, there is no canonical definition to state claims against.
-/

/-! ## A268187.P8182814120939326364

`gcd(A055642(A000045(n)), A250046(n+1))`
-/

namespace A268187.P8182814120939326364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A000045 n).toNat) (A250046 (n + 1))

end

end A268187.P8182814120939326364

/-! ## A268187.P14015718517553512011

`A175244(A096981(n))`
-/

namespace A268187.P14015718517553512011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175244 (A096981 n).toNat

end

end A268187.P14015718517553512011

/-! ## A268187.P4993171935749131736

`gcd(A055642(A332336(n)), A089494(n+1))`
-/

namespace A268187.P4993171935749131736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A332336 n).toNat) (A089494 (n + 1))

end

end A268187.P4993171935749131736

/-! ## A268187.P9787957377374467176

`A187489(A003137(n+1)*A008997(n+1))`
-/

namespace A268187.P9787957377374467176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187489 (A003137 (n + 1) * A008997 (n + 1)).toNat

end

end A268187.P9787957377374467176

/-! ## A268187.P5794998364477617139

`gcd(A064547(A212621(3*n+4)), A280952(n))`
-/

namespace A268187.P5794998364477617139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064547 (A212621 (3 * n + 4)).toNat) (A280952 n)

end

end A268187.P5794998364477617139

/-!
# A268189: Triangle read by rows: T(n,k) is the number of partitions of n for which the sum of the parts larger than the smallest part is k (n>=1, 0<=k<=n-1).

The programs for A268189, there is no canonical definition to state claims against.
-/

/-! ## A268189.P5422010871696214840

`A340524(n+1)/A040001(A002530(n))`
-/

namespace A268189.P5422010871696214840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340524 (n + 1) : ℚ) / (A040001 (A002530 n).toNat : ℚ)

end

end A268189.P5422010871696214840

/-! ## A268189.P4989686090160900956

`A340524(n+1)/A207709(A022173(n))`
-/

namespace A268189.P4989686090160900956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340524 (n + 1) : ℚ) / (A207709 (A022173 n).toNat : ℚ)

end

end A268189.P4989686090160900956

/-! ## A268189.P7037181318000954861

`gcd(A340524(n+1), A340555(A181985(n+1)))`
-/

namespace A268189.P7037181318000954861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A340524 (n + 1)) (A340555 (A181985 (n + 1)).toNat)

end

end A268189.P7037181318000954861

/-! ## A268189.P3201016884344663548

`A265247(n+1)-A185264(A265259(n))`
-/

namespace A268189.P3201016884344663548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265247 (n + 1) - A185264 (A265259 n).toNat

end

end A268189.P3201016884344663548

/-! ## A268189.P6503566263980948510

`A265247(n+1)/A327168(A281175(n))`
-/

namespace A268189.P6503566263980948510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265247 (n + 1) : ℚ) / (A327168 (A281175 n).toNat : ℚ)

end

end A268189.P6503566263980948510

/-!
# A268190: Triangle read by rows: T(n,k) (n, k>=1) is the number of partitions of n such that the difference between the two largest distinct parts is k; T(n,0) is the number of partitions of n in which all parts are equal.

The programs for A268190, there is no canonical definition to state claims against.
-/

/-! ## A268190.P7905056365076856358

`A238353(lt[A276853(n), A114150(n)])`
-/

namespace A268190.P7905056365076856358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268190.P7905056365076856358

/-! ## A268190.P11302832687058858642

`A238353(lt[A024574(n+1), A114150(n)])`
-/

namespace A268190.P11302832687058858642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268190.P11302832687058858642

/-! ## A268190.P4534436383214300412

`A238353(lt[A191455(n+1), A114150(n)])`
-/

namespace A268190.P4534436383214300412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268190.P4534436383214300412

/-! ## A268190.P16591628853577048213

`A238353(lt[A022843(2*n), A114150(n)])`
-/

namespace A268190.P16591628853577048213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268190.P16591628853577048213

/-! ## A268190.P8526179920619944042

`A001221(or(A017222(2*(n+2)), A255582(n+1)))`
-/

namespace A268190.P8526179920619944042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A017222 (2 * (n + 2))) (A255582 (n + 1))).toNat

end

end A268190.P8526179920619944042

/-!
# A268191: The difference between the two largest distinct parts of a partition (0 if no distinct parts), summed over all partitions of n.

The programs for A268191, there is no canonical definition to state claims against.
-/

/-! ## A268191.P12382359824743561442

`A215513(n+1)+A086738(n+1)`
-/

namespace A268191.P12382359824743561442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215513 (n + 1) + A086738 (n + 1)

end

end A268191.P12382359824743561442

/-! ## A268191.P16464164798283076900

`A092269(n+1)-A000203(n+1)`
-/

namespace A268191.P16464164798283076900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - A000203 (n + 1)

end

end A268191.P16464164798283076900

/-! ## A268191.P10694101273175595176

`A162329(n+1)-A220907(n+1)`
-/

namespace A268191.P10694101273175595176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162329 (n + 1) - A220907 (n + 1)

end

end A268191.P10694101273175595176

/-! ## A268191.P15171136915712554112

`A220477(n+1)-A182984(n+1)`
-/

namespace A268191.P15171136915712554112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220477 (n + 1) - A182984 (n + 1)

end

end A268191.P15171136915712554112

/-! ## A268191.P7709792470551646330

`A092269(n+1)-(A001065(n+1)+n+1)`
-/

namespace A268191.P7709792470551646330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - (A001065 (n + 1) + (n + 1 : ℤ))

end

end A268191.P7709792470551646330

/-! ## A268191.P4163359994321545493

`A092269(n+1)+A220477(n+1)-A006128(n+1)`
-/

namespace A268191.P4163359994321545493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A220477 (n + 1) - A006128 (n + 1))

end

end A268191.P4163359994321545493

/-! ## A268191.P9221916502175449450

`A220483(n+1)+A220489(n+1)-A000203(n+1)`
-/

namespace A268191.P9221916502175449450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220483 (n + 1) + (A220489 (n + 1) - A000203 (n + 1))

end

end A268191.P9221916502175449450

/-! ## A268191.P2694693988543549233

`A182978(n+1)-A046746(n+1)`
-/

namespace A268191.P2694693988543549233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182978 (n + 1) - A046746 (n + 1)

end

end A268191.P2694693988543549233

/-! ## A268191.P4024519370912325374

`A116686(n+1)-A182977(n+1)`
-/

namespace A268191.P4024519370912325374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116686 (n + 1) - A182977 (n + 1)

end

end A268191.P4024519370912325374

/-! ## A268191.P14766542470014253413

`A006128(n+1)-(A182977(n+1)+A046746(n+1))`
-/

namespace A268191.P14766542470014253413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A182977 (n + 1) + A046746 (n + 1))

end

end A268191.P14766542470014253413

/-! ## A268191.P3524488470925051648

`A116686(n+1)+A182978(n+1)-A006128(n+1)`
-/

namespace A268191.P3524488470925051648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116686 (n + 1) + (A182978 (n + 1) - A006128 (n + 1))

end

end A268191.P3524488470925051648

/-! ## A268191.P14785020119098146911

`A182978(n+1)-(A182629(n+1)+A000203(n+1))`
-/

namespace A268191.P14785020119098146911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182978 (n + 1) - (A182629 (n + 1) + A000203 (n + 1))

end

end A268191.P14785020119098146911

/-! ## A268191.P5290515322615203685

`A220477(n+1)-(A182977(n+1)+A182629(n+1))`
-/

namespace A268191.P5290515322615203685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220477 (n + 1) - (A182977 (n + 1) + A182629 (n + 1))

end

end A268191.P5290515322615203685

/-! ## A268191.P17845080229274772726

`A211870(n+1)+A211881(n+1)-A182977(n+1)`
-/

namespace A268191.P17845080229274772726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211870 (n + 1) + (A211881 (n + 1) - A182977 (n + 1))

end

end A268191.P17845080229274772726

/-!
# A268192: Triangle read by rows: T(n,k) is the number of partitions of weight k among the complements of the partitions of n.

The programs for A268192, there is no canonical definition to state claims against.
-/

/-! ## A268192.P12978956346789997728

`A228369(A125739(n+1))+round(-∏{p}[n+1, -#]/(n+3))`
-/

namespace A268192.P12978956346789997728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228369 (A125739 (n + 1)).toNat + SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ)))

end

end A268192.P12978956346789997728

/-!
# A268193: Triangle read by rows: T(n,k) (n>=1, k>=0) is the number of partitions of n which have k distinct parts i such that i+1 is also a part.

The programs for A268193, there is no canonical definition to state claims against.
-/

/-! ## A268193.P4157235855768781442

`A352248(A237593(3*n+5)*A274316(n+1))`
-/

namespace A268193.P4157235855768781442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352248 (A237593 (3 * n + 5) * A274316 (n + 1)).toNat

end

end A268193.P4157235855768781442

/-!
# A268194: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 363", based on the 5-celled von Neumann neighborhood.

The programs for A268194, there is no canonical definition to state claims against.
-/

/-! ## A268194.P12846850457487646101

`Δ[A264099(n)]`
-/

namespace A268194.P12846850457487646101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268194.P12846850457487646101

/-! ## A268194.P12479881486988643652

`A264099(n+1)-A264099(n)`
-/

namespace A268194.P12479881486988643652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264099 (n + 1) - A264099 n

end

end A268194.P12479881486988643652

/-! ## A268194.P15750252760414839437

`Δ[A168269(n+1)²-A270457(n+1)]`
-/

namespace A268194.P15750252760414839437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168269 (n + 1) ^ 2 - A270457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268194.P15750252760414839437

/-!
# A268195: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A268195, there is no canonical definition to state claims against.
-/

/-! ## A268195.P2759413331586696459

`A268276(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A268195.P2759413331586696459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268276 (n - 1) + a (n - 1)

end

end A268195.P2759413331586696459

/-! ## A268195.P13733025185966273516

`Δ[A268275(n)]-A268276(n)`
-/

namespace A268195.P13733025185966273516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A268276 n

end

end A268195.P13733025185966273516

/-! ## A268195.P2871726694747261364

`A268275(n+1)-(A268276(n)+A268275(n))`
-/

namespace A268195.P2871726694747261364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268275 (n + 1) - (A268276 n + A268275 n)

end

end A268195.P2871726694747261364

/-! ## A268195.P6161277060724590128

`∑[Δ[A016754(n)]-A272845(n)]`
-/

namespace A268195.P6161277060724590128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268195.P6161277060724590128

/-! ## A268195.P17836045445854212550

`∑[A004771(n)+1-A272845(n)]`
-/

namespace A268195.P17836045445854212550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (1 - A272845 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268195.P17836045445854212550

/-! ## A268195.P4123479040441806693

`∑[A022144(n+1)-A272845(n)]`
-/

namespace A268195.P4123479040441806693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (n + 1) - A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268195.P4123479040441806693

/-! ## A268195.P6546427073192945985

`A016754(n+1)-(∑[A272845(n)]+1)`
-/

namespace A268195.P6546427073192945985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268195.P6546427073192945985

/-! ## A268195.P13064114103999281294

`A005563(2*(n+1))-∑[A272845(n)]`
-/

namespace A268195.P13064114103999281294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268195.P13064114103999281294

/-! ## A268195.P2594693417355167508

`A005408(n+1)²-Δ[A272844(n)]`
-/

namespace A268195.P2594693417355167508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A268195.P2594693417355167508

/-! ## A268195.P12113250810530377528

`∑[A098181(A004771(n))-A272845(n)]`
-/

namespace A268195.P12113250810530377528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (A004771 n).toNat - A272845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268195.P12113250810530377528

/-! ## A268195.P14738407495712216072

`A016754(n+1)-A272842(n+1)`
-/

namespace A268195.P14738407495712216072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A272842 (n + 1)

end

end A268195.P14738407495712216072

/-! ## A268195.P10353155549705435914

`Δ[A005563(n)]²-A272842(n+1)`
-/

namespace A268195.P10353155549705435914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A272842 (n + 1)

end

end A268195.P10353155549705435914

/-! ## A268195.P4697211958258899614

`A005408(n+1)²-A272842(n+1)`
-/

namespace A268195.P4697211958258899614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) ^ 2 - A272842 (n + 1)

end

end A268195.P4697211958258899614

/-! ## A268195.P13245305569290961215

`A155156(∑[n+1])+1-A272842(n+1)`
-/

namespace A268195.P13245305569290961215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (∑ j ∈ Finset.range (n + 1), f1 j) + (1 - A272842 (n + 1))

end

end A268195.P13245305569290961215

/-! ## A268195.P16491650673374610797

`A098181(∑[A268276(n)]-A268276(n))`
-/

namespace A268195.P16491650673374610797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (∑ j ∈ Finset.range (n + 1), f1 j - A268276 n).toNat

end

end A268195.P16491650673374610797

/-!
# A268196: a(n) = Product_{k=0..n} binomial(3*k,k).

The programs for A268196, there is no canonical definition to state claims against.
-/

/-! ## A268196.P15540199680715148970

`∏[C(3*n, n)]`
-/

namespace A268196.P15540199680715148970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268196.P15540199680715148970

/-! ## A268196.P453267140583427982

`C(3*n, n)*a(n-1)` with `a(0)=1`
-/

namespace A268196.P453267140583427982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (3 * n) n * a (n - 1)

end

end A268196.P453267140583427982

/-! ## A268196.P11781333273778021362

`∏[A005809(n)]`
-/

namespace A268196.P11781333273778021362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268196.P11781333273778021362

/-! ## A268196.P1396454477098402246

`∏[sqrt(A188662(n))]`
-/

namespace A268196.P1396454477098402246
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188662 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268196.P1396454477098402246

/-! ## A268196.P14787546920264178306

`∏[A119301(∑[n])]`
-/

namespace A268196.P14787546920264178306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A268196.P14787546920264178306

/-!
# A268197: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with w*(25*w + 24*x + 48*y + 96*z) a square, where w is a positive integer and x,y,z are nonnegative integers.

The programs for A268197, there is no canonical definition to state claims against.
-/

/-! ## A268197.P10188867757518047873

`A066888(n)^A001727(A284991(n))`
-/

namespace A268197.P10188867757518047873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066888 n : ℚ) ^ (A001727 (A284991 n).toNat : ℤ)

end

end A268197.P10188867757518047873

/-! ## A268197.P8844599459210166806

`A242628(A156950(n)*A277013(n+5))`
-/

namespace A268197.P8844599459210166806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242628 (A156950 n * A277013 (n + 5)).toNat

end

end A268197.P8844599459210166806

/-! ## A268197.P11985544704155422269

`gcd(A066888(n), A122757(A155085(n+1)))`
-/

namespace A268197.P11985544704155422269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066888 n) (A122757 (A155085 (n + 1)).toNat)

end

end A268197.P11985544704155422269

/-! ## A268197.P7567169913397236701

`A162642(C(n+5, A026780(n)))`
-/

namespace A268197.P7567169913397236701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (Nat.choose (n + 5) (A026780 n).toNat)

end

end A268197.P7567169913397236701

/-! ## A268197.P1576437840235788656

`A001221(A372498(n+1)+A372489(n))`
-/

namespace A268197.P1576437840235788656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A372498 (n + 1) + A372489 n).toNat

end

end A268197.P1576437840235788656

/-!
# A268198: Numbers n such that there exist three nonnegative integers a,b, and c satisfying n=a*b and (a^2+b^2)/(1+a*b) = c^2.

The programs for A268198, there is no canonical definition to state claims against.
-/

/-! ## A268198.P242495948998747120

`lt[A018798(n), A018801(A018801(2*n+1))]`
-/

namespace A268198.P242495948998747120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018801 (A018801 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268198.P242495948998747120

/-! ## A268198.P13356689662357907113

`lt[A018798(n), A018799(A018838(3*n+1))]`
-/

namespace A268198.P13356689662357907113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018799 (A018838 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268198.P13356689662357907113

/-! ## A268198.P4771436197362314976

`lt[A018798(n), A018851(A018853(n+1))]`
-/

namespace A268198.P4771436197362314976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A018853 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268198.P4771436197362314976

