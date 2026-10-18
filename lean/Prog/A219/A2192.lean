import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A219200: Number of partitions of n into 6 distinct primes.

The programs for A219200, there is no canonical definition to state claims against.
-/

/-! ## A219200.P16872916845994524695

`A341978(n)-A326291(A311176(n))`
-/

namespace A219200.P16872916845994524695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341978 (n + 42) - A326291 (A311176 n).toNat

end

end A219200.P16872916845994524695

/-! ## A219200.P11313003774600107383

`A071662(A341978(n)%A049344(n+5))`
-/

namespace A219200.P11313003774600107383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 (Int.tmod (A341978 (n + 42)) (A049344 (n + 5))).toNat

end

end A219200.P11313003774600107383

/-! ## A219200.P16852492468081317363

`A341978(n)-A381763(A324695(3*(n+1)))`
-/

namespace A219200.P16852492468081317363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341978 (n + 42) - A381763 (A324695 (3 * (n + 1))).toNat

end

end A219200.P16852492468081317363

/-! ## A219200.P16540326804428871253

`A341978(n)-A151755(A000212(n))`
-/

namespace A219200.P16540326804428871253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341978 (n + 42) - A151755 (A000212 n).toNat

end

end A219200.P16540326804428871253

/-! ## A219200.P1386378681450200834

`A341978(n)-A341995(A063509(n+1))`
-/

namespace A219200.P1386378681450200834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341978 (n + 42) - A341995 (A063509 (n + 1)).toNat

end

end A219200.P1386378681450200834

/-!
# A219201: Number of partitions of n into 7 distinct primes.

The programs for A219201, there is no canonical definition to state claims against.
-/

/-! ## A219201.P5993049295725621185

`A145569(A341979(n))-A025469(A157278(n))`
-/

namespace A219201.P5993049295725621185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A341979 (n + 59)).toNat - A025469 (A157278 n).toNat

end

end A219201.P5993049295725621185

/-! ## A219201.P6834765920999934218

`A341979(n)-A156776(A331927(n+2))`
-/

namespace A219201.P6834765920999934218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341979 (n + 59) - A156776 (A331927 (n + 2)).toNat

end

end A219201.P6834765920999934218

/-! ## A219201.P1083361429349268994

`A145569(A341979(n))%A059614(n+6)`
-/

namespace A219201.P1083361429349268994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145569 (A341979 (n + 59)).toNat) (A059614 (n + 6))

end

end A219201.P1083361429349268994

/-! ## A219201.P716888094809025047

`A145569(A341979(n))%A034895(A124572(n))`
-/

namespace A219201.P716888094809025047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145569 (A341979 (n + 59)).toNat) (A034895 (A124572 n).toNat)

end

end A219201.P716888094809025047

/-! ## A219201.P12734736025216751682

`A341979(n)-A025466(A107862(n))`
-/

namespace A219201.P12734736025216751682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341979 (n + 59) - A025466 (A107862 n).toNat

end

end A219201.P12734736025216751682

/-!
# A219202: Number of partitions of n into 8 distinct primes.

The programs for A219202, there is no canonical definition to state claims against.
-/

/-! ## A219202.P2337524589220635063

`A341980(n)-A341995(A031125(n))`
-/

namespace A219202.P2337524589220635063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341980 (n + 78) - A341995 (A031125 n).toNat

end

end A219202.P2337524589220635063

/-! ## A219202.P1429577786786393759

`A341980(n)-A341995(A001296(n))`
-/

namespace A219202.P1429577786786393759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341980 (n + 78) - A341995 (A001296 n).toNat

end

end A219202.P1429577786786393759

/-! ## A219202.P11633911753266637891

`A341980(n)-A267142(A270613(n+1))`
-/

namespace A219202.P11633911753266637891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341980 (n + 78) - A267142 (A270613 (n + 1)).toNat

end

end A219202.P11633911753266637891

/-! ## A219202.P15833052421412725970

`A258198(A341980(n)^4)`
-/

namespace A219202.P15833052421412725970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A341980 (n + 78) ^ 4).toNat

end

end A219202.P15833052421412725970

/-! ## A219202.P7815127046092649401

`A341980(n)-A341995(A167262(3*(n+1)))`
-/

namespace A219202.P7815127046092649401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341980 (n + 78) - A341995 (A167262 (3 * (n + 1))).toNat

end

end A219202.P7815127046092649401

/-!
# A219203: Number of partitions of n into 9 distinct primes.

The programs for A219203, there is no canonical definition to state claims against.
-/

/-! ## A219203.P1696588577745173506

`A341981(n)-A080339(A252278(n+1))`
-/

namespace A219203.P1696588577745173506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341981 (n + 101) - A080339 (A252278 (n + 1)).toNat

end

end A219203.P1696588577745173506

/-! ## A219203.P13250025955373105469

`A341981(gcd(29*n, ∑[2*n]))`
-/

namespace A219203.P13250025955373105469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341981 (Nat.gcd (29 * n) (∑ j ∈ Finset.range (n + 1), f1 j) + 101)

end

end A219203.P13250025955373105469

/-! ## A219203.P1997797207936933509

`A341981(n)%A108301(n)`
-/

namespace A219203.P1997797207936933509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341981 (n + 101)) (A108301 n)

end

end A219203.P1997797207936933509

/-! ## A219203.P12838864571117340549

`A341981(A256974(n)²+n)`
-/

namespace A219203.P12838864571117340549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341981 ((A256974 n ^ 2 + (n : ℤ)).toNat + 101)

end

end A219203.P12838864571117340549

/-! ## A219203.P3002298372860288859

`A341981(n)^A256974(n)!`
-/

namespace A219203.P3002298372860288859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341981 (n + 101) ^ Nat.factorial (A256974 n).toNat

end

end A219203.P3002298372860288859

/-!
# A219204: Number of partitions of n into 10 distinct primes.

The programs for A219204, there is no canonical definition to state claims against.
-/

/-! ## A219204.P1613632126633330192

`and(A037393(n+1), A386585(A337603(n)))`
-/

namespace A219204.P1613632126633330192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037393 (n + 1)) (A386585 (A337603 n).toNat)

end

end A219204.P1613632126633330192

/-! ## A219204.P16676228656951579563

`A355836(A355798(n+1))%A034444(3*n+4)`
-/

namespace A219204.P16676228656951579563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355836 (A355798 (n + 1)).toNat) (A034444 (3 * n + 4))

end

end A219204.P16676228656951579563

/-! ## A219204.P3510742141842065961

`val(A050360(A184284(n+1)), A067824(n+5))`
-/

namespace A219204.P3510742141842065961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050360 (A184284 (n + 1)).toNat).toNat (A067824 (n + 5)).toNat

end

end A219204.P3510742141842065961

/-! ## A219204.P2991965184649217666

`A276572(3*n+4)%A179773(A061200(3*n+5))`
-/

namespace A219204.P2991965184649217666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276572 (3 * n + 4)) (A179773 (A061200 (3 * n + 5)).toNat)

end

end A219204.P2991965184649217666

/-! ## A219204.P16567268086886872362

`A359893(A261223(n+2))`
-/

namespace A219204.P16567268086886872362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (A261223 (n + 2)).toNat

end

end A219204.P16567268086886872362

/-!
# A219205: a(n) = 3^(n-1)*(3^n - 1), n >= 0.

The programs for A219205, the canonical program `A219205.P207959306587260918` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219205 has offset 0).

The definition of A219205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219205.P4294908918251166056

`3^(n-1)*(3^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219205.P4294908918251166056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 ^ n : ℤ) - 1 : ℚ)

end

end A219205.P4294908918251166056

namespace A219205

/-- `3^(n-1)*(3^n-1)` -/
def P4294908918251166056.Spec : Prop :=
  ∀ n, P4294908918251166056.a n = (A219205 n : ℚ)

end A219205

/-! ## A219205.P207959306587260918

`12*a(n-1)-27*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A219205

/-- `12*a(n-1)-27*a(n-2)` -/
def P207959306587260918.Spec : Prop :=
  ∀ n, P207959306587260918.a n = A219205 n

theorem P207959306587260918.correct : P207959306587260918.Spec := by
  intro n
  simp only [A219205]

end A219205

/-! ## A219205.P8191045697024097903

`lcm(3^n-1, floor(3^(n-1)))`
-/

namespace A219205.P8191045697024097903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((3 ^ n : ℤ) - 1) ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A219205.P8191045697024097903

namespace A219205

/-- `lcm(3^n-1, floor(3^(n-1)))` -/
def P8191045697024097903.Spec : Prop :=
  ∀ n, (P8191045697024097903.a n : ℤ) = A219205 n

end A219205

/-! ## A219205.P2799749264359836485

`abs(record[-(-3)^n])-ceil(3^(n-1))`
-/

namespace A219205.P2799749264359836485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-3) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)| - ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A219205.P2799749264359836485

namespace A219205

/-- `abs(record[-(-3)^n])-ceil(3^(n-1))` -/
def P2799749264359836485.Spec : Prop :=
  ∀ n, P2799749264359836485.a n = A219205 n

end A219205

/-! ## A219205.P4987656583985701095

`sqrt(3)^record[lcm(2, n)]-ceil(3^(n-1))`
-/

namespace A219205.P4987656583985701095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ)

end

end A219205.P4987656583985701095

namespace A219205

/-- `sqrt(3)^record[lcm(2, n)]-ceil(3^(n-1))` -/
def P4987656583985701095.Spec : Prop :=
  ∀ n, P4987656583985701095.a n = (A219205 n : ℝ)

end A219205

/-! ## A219205.P14091081670006397150

`A122006(Δ[n²])`
-/

namespace A219205.P14091081670006397150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A219205.P14091081670006397150

namespace A219205

/-- `A122006(Δ[n²])` -/
def P14091081670006397150.Spec : Prop :=
  ∀ n, P14091081670006397150.a n = A219205 n

end A219205

/-! ## A219205.P15175669842111065649

`A122007(Δ[n²])`
-/

namespace A219205.P15175669842111065649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122007 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A219205.P15175669842111065649

namespace A219205

/-- `A122007(Δ[n²])` -/
def P15175669842111065649.Spec : Prop :=
  ∀ n, P15175669842111065649.a n = A219205 n

end A219205

/-! ## A219205.P10206229253183981752

`xor(1, A122007(2*n+1)+1)`
-/

namespace A219205.P10206229253183981752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A122007 (2 * n + 1) + 1)

end

end A219205.P10206229253183981752

namespace A219205

/-- `xor(1, A122007(2*n+1)+1)` -/
def P10206229253183981752.Spec : Prop :=
  ∀ n, P10206229253183981752.a n = A219205 n

end A219205

/-! ## A219205.P18039940767658438938

`A094388(2*n)-A094388(n)`
-/

namespace A219205.P18039940767658438938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (2 * n) - A094388 n

end

end A219205.P18039940767658438938

namespace A219205

/-- `A094388(2*n)-A094388(n)` -/
def P18039940767658438938.Spec : Prop :=
  ∀ n, P18039940767658438938.a n = A219205 n

end A219205

/-! ## A219205.P380464985400867183

`A133494(2*n)-A133494(n)`
-/

namespace A219205.P380464985400867183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (2 * n) - A133494 n

end

end A219205.P380464985400867183

namespace A219205

/-- `A133494(2*n)-A133494(n)` -/
def P380464985400867183.Spec : Prop :=
  ∀ n, P380464985400867183.a n = A219205 n

end A219205

/-! ## A219205.P9162193301400277920

`A140429(2*n)-A140429(n)`
-/

namespace A219205.P9162193301400277920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (2 * n) - A140429 n

end

end A219205.P9162193301400277920

namespace A219205

/-- `A140429(2*n)-A140429(n)` -/
def P9162193301400277920.Spec : Prop :=
  ∀ n, P9162193301400277920.a n = A219205 n

end A219205

/-! ## A219205.P1405472613293422675

`A155734(2*n)-A155734(n)`
-/

namespace A219205.P1405472613293422675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 (2 * n) - A155734 n

end

end A219205.P1405472613293422675

namespace A219205

/-- `A155734(2*n)-A155734(n)` -/
def P1405472613293422675.Spec : Prop :=
  ∀ n, P1405472613293422675.a n = A219205 n

end A219205

/-! ## A219205.P16782352699185455043

`A122008(2*n+1)-A000244(n)`
-/

namespace A219205.P16782352699185455043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122008 (2 * n + 1) - A000244 n

end

end A219205.P16782352699185455043

namespace A219205

/-- `A122008(2*n+1)-A000244(n)` -/
def P16782352699185455043.Spec : Prop :=
  ∀ n, P16782352699185455043.a n = A219205 n

end A219205

/-! ## A219205.P639395575484776089

`A167993(2*n)+A167993(2*n)`
-/

namespace A219205.P639395575484776089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (2 * n) + A167993 (2 * n)

end

end A219205.P639395575484776089

namespace A219205

/-- `A167993(2*n)+A167993(2*n)` -/
def P639395575484776089.Spec : Prop :=
  ∀ n, P639395575484776089.a n = A219205 n

end A219205

/-! ## A219205.P13358989632622912004

`A122008(2*n+1)-A038754(2*n)`
-/

namespace A219205.P13358989632622912004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122008 (2 * n + 1) - A038754 (2 * n)

end

end A219205.P13358989632622912004

namespace A219205

/-- `A122008(2*n+1)-A038754(2*n)` -/
def P13358989632622912004.Spec : Prop :=
  ∀ n, P13358989632622912004.a n = A219205 n

end A219205

/-! ## A219205.P13310515678783203239

`A122008(2*n+1)-A254006(2*n)`
-/

namespace A219205.P13310515678783203239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122008 (2 * n + 1) - A254006 (2 * n)

end

end A219205.P13310515678783203239

namespace A219205

/-- `A122008(2*n+1)-A254006(2*n)` -/
def P13310515678783203239.Spec : Prop :=
  ∀ n, P13310515678783203239.a n = A219205 n

end A219205

/-! ## A219205.P7690420477848665180

`A254006(2*n+1)+A122007(2*n+1)`
-/

namespace A219205.P7690420477848665180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (2 * n + 1) + A122007 (2 * n + 1)

end

end A219205.P7690420477848665180

namespace A219205

/-- `A254006(2*n+1)+A122007(2*n+1)` -/
def P7690420477848665180.Spec : Prop :=
  ∀ n, P7690420477848665180.a n = A219205 n

end A219205

/-! ## A219205.P2861748324710486914

`A122008(2*n+1)-A182522(2*n+1)`
-/

namespace A219205.P2861748324710486914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122008 (2 * n + 1) - A182522 (2 * n + 1)

end

end A219205.P2861748324710486914

namespace A219205

/-- `A122008(2*n+1)-A182522(2*n+1)` -/
def P2861748324710486914.Spec : Prop :=
  ∀ n, P2861748324710486914.a n = A219205 n

end A219205

/-! ## A219205.P4345772519576581539

`A102518(n)-(A094556(n)+A094554(n))`
-/

namespace A219205.P4345772519576581539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 n - (A094556 n + A094554 n)

end

end A219205.P4345772519576581539

namespace A219205

/-- `A102518(n)-(A094556(n)+A094554(n))` -/
def P4345772519576581539.Spec : Prop :=
  ∀ n, P4345772519576581539.a n = A219205 n

end A219205

/-! ## A219205.P13530909229973329990

`A003462(n)*A052919(n)-A003462(n)`
-/

namespace A219205.P13530909229973329990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A052919 n - A003462 n

end

end A219205.P13530909229973329990

namespace A219205

/-- `A003462(n)*A052919(n)-A003462(n)` -/
def P13530909229973329990.Spec : Prop :=
  ∀ n, P13530909229973329990.a n = A219205 n

end A219205

/-!
# A219206: Triangle, read by rows, where T(n,k) = binomial(n,k)^k for n>=0, k=0..n.

The programs for A219206, the canonical program `A219206.P10901169306540035016` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219206 has offset 0).

The definition of A219206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219206.P10901169306540035016

`A007318(n)*A102480(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A219206

/-- `A007318(n)*A102480(n)` -/
def P10901169306540035016.Spec : Prop :=
  ∀ n, P10901169306540035016.a n = A219206 n

theorem P10901169306540035016.correct : P10901169306540035016.Spec := by
  intro n
  simp only [A219206]

end A219206

/-! ## A219206.P9369159291926362693

`A007318(n)^A002262(n)`
-/

namespace A219206.P9369159291926362693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A002262 n : ℤ)

end

end A219206.P9369159291926362693

namespace A219206

/-- `A007318(n)^A002262(n)` -/
def P9369159291926362693.Spec : Prop :=
  ∀ n, P9369159291926362693.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P14761110655007860271

`A007318(n)^A191532(n)`
-/

namespace A219206.P14761110655007860271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A191532 n : ℤ)

end

end A219206.P14761110655007860271

namespace A219206

/-- `A007318(n)^A191532(n)` -/
def P14761110655007860271.Spec : Prop :=
  ∀ n, P14761110655007860271.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P7987912508800153612

`abs(A102480(n)*A108086(n))`
-/

namespace A219206.P7987912508800153612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102480 n * A108086 n|

end

end A219206.P7987912508800153612

namespace A219206

/-- `abs(A102480(n)*A108086(n))` -/
def P7987912508800153612.Spec : Prop :=
  ∀ n, P7987912508800153612.a n = A219206 n

end A219206

/-! ## A219206.P11263152437276714821

`abs(A102480(n)*A130595(n))`
-/

namespace A219206.P11263152437276714821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102480 n * A130595 n|

end

end A219206.P11263152437276714821

namespace A219206

/-- `abs(A102480(n)*A130595(n))` -/
def P11263152437276714821.Spec : Prop :=
  ∀ n, P11263152437276714821.a n = A219206 n

end A219206

/-! ## A219206.P13403376026579239765

`abs(A091917(n)^A002262(n))`
-/

namespace A219206.P13403376026579239765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A091917 n : ℚ) ^ (A002262 n : ℤ)|

end

end A219206.P13403376026579239765

namespace A219206

/-- `abs(A091917(n)^A002262(n))` -/
def P13403376026579239765.Spec : Prop :=
  ∀ n, P13403376026579239765.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P4645911580701349646

`sqrt(A008459(n))^A002262(n)`
-/

namespace A219206.P4645911580701349646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) ^ (A002262 n : ℤ)

end

end A219206.P4645911580701349646

namespace A219206

/-- `sqrt(A008459(n))^A002262(n)` -/
def P4645911580701349646.Spec : Prop :=
  ∀ n, P4645911580701349646.a n = (A219206 n : ℝ)

end A219206

/-! ## A219206.P4306863062169237302

`A007318(n)^A144328(n+1)`
-/

namespace A219206.P4306863062169237302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A144328 (n + 1) : ℤ)

end

end A219206.P4306863062169237302

namespace A219206

/-- `A007318(n)^A144328(n+1)` -/
def P4306863062169237302.Spec : Prop :=
  ∀ n, P4306863062169237302.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P9647197340127607119

`(A134060(n)/3)^A002262(n)`
-/

namespace A219206.P9647197340127607119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A134060 n : ℚ) / 3) ^ (A002262 n : ℤ)

end

end A219206.P9647197340127607119

namespace A219206

/-- `(A134060(n)/3)^A002262(n)` -/
def P9647197340127607119.Spec : Prop :=
  ∀ n, P9647197340127607119.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P14967233227270431251

`(A135089(n)/5)^A002262(n)`
-/

namespace A219206.P14967233227270431251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A135089 n : ℚ) / 5) ^ (A002262 n : ℤ)

end

end A219206.P14967233227270431251

namespace A219206

/-- `(A135089(n)/5)^A002262(n)` -/
def P14967233227270431251.Spec : Prop :=
  ∀ n, P14967233227270431251.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P7476250361161537945

`A007318(n)^(n-A057944(n))`
-/

namespace A219206.P7476250361161537945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ ((n : ℤ) - A057944 n : ℤ)

end

end A219206.P7476250361161537945

namespace A219206

/-- `A007318(n)^(n-A057944(n))` -/
def P7476250361161537945.Spec : Prop :=
  ∀ n, P7476250361161537945.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P18226431029685324266

`ceil(A135087(n)/4)^A002262(n)`
-/

namespace A219206.P18226431029685324266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A135087 n : ℚ) / 4⌉ : ℚ) ^ (A002262 n : ℤ)

end

end A219206.P18226431029685324266

namespace A219206

/-- `ceil(A135087(n)/4)^A002262(n)` -/
def P18226431029685324266.Spec : Prop :=
  ∀ n, P18226431029685324266.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P9912010418763102301

`A007318(n)^(A002260(n+1)-1)`
-/

namespace A219206.P9912010418763102301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A219206.P9912010418763102301

namespace A219206

/-- `A007318(n)^(A002260(n+1)-1)` -/
def P9912010418763102301.Spec : Prop :=
  ∀ n, P9912010418763102301.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P8013599634388971970

`A007318(n)^A057554(2*n+1)`
-/

namespace A219206.P8013599634388971970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A057554 (2 * n + 1) : ℤ)

end

end A219206.P8013599634388971970

namespace A219206

/-- `A007318(n)^A057554(2*n+1)` -/
def P8013599634388971970.Spec : Prop :=
  ∀ n, P8013599634388971970.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P116596868053812282

`A007318(n)^A002260(A028310(n))`
-/

namespace A219206.P116596868053812282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A002260 (A028310 n).toNat : ℤ)

end

end A219206.P116596868053812282

namespace A219206

/-- `A007318(n)^A002260(A028310(n))` -/
def P116596868053812282.Spec : Prop :=
  ∀ n, P116596868053812282.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P8683533471116866441

`(A134059(A028310(n))/3)^A002262(n)`
-/

namespace A219206.P8683533471116866441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A134059 (A028310 n).toNat : ℚ) / 3) ^ (A002262 n : ℤ)

end

end A219206.P8683533471116866441

namespace A219206

/-- `(A134059(A028310(n))/3)^A002262(n)` -/
def P8683533471116866441.Spec : Prop :=
  ∀ n, P8683533471116866441.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P12778076927978417093

`C(A003056(n), A004736(n+1)-1)^A002262(n)`
-/

namespace A219206.P12778076927978417093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A219206.P12778076927978417093

namespace A219206

/-- `C(A003056(n), A004736(n+1)-1)^A002262(n)` -/
def P12778076927978417093.Spec : Prop :=
  ∀ n, P12778076927978417093.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P15785582653438133926

`A219207(n)/A007318(n)`
-/

namespace A219206.P15785582653438133926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219207 n : ℚ) / (A007318 n : ℚ)

end

end A219206.P15785582653438133926

namespace A219206

/-- `A219207(n)/A007318(n)` -/
def P15785582653438133926.Spec : Prop :=
  ∀ n, P15785582653438133926.a n = (A219206 n : ℚ)

end A219206

/-! ## A219206.P13956358131926039564

`2/A028326(n)*A219207(n)`
-/

namespace A219206.P13956358131926039564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A219207 n : ℚ)

end

end A219206.P13956358131926039564

namespace A219206

/-- `2/A028326(n)*A219207(n)` -/
def P13956358131926039564.Spec : Prop :=
  ∀ n, P13956358131926039564.a n = (A219206 n : ℚ)

end A219206

/-!
# A219207: Triangle, read by rows, where T(n,k) = binomial(n,k)^(k+1) for n>=0, k=0..n.

The programs for A219207, the canonical program `A219207.P12490393207679744017` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219207 has offset 0).

The definition of A219207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219207.P12490393207679744017

`A008459(n)*A102480(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A219207

/-- `A008459(n)*A102480(n)` -/
def P12490393207679744017.Spec : Prop :=
  ∀ n, P12490393207679744017.a n = A219207 n

theorem P12490393207679744017.correct : P12490393207679744017.Spec := by
  intro n
  simp only [A219207]

end A219207

/-! ## A219207.P5206171407310489641

`A007318(n)*A219206(n)`
-/

namespace A219207.P5206171407310489641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A219206 n

end

end A219207.P5206171407310489641

namespace A219207

/-- `A007318(n)*A219206(n)` -/
def P5206171407310489641.Spec : Prop :=
  ∀ n, P5206171407310489641.a n = A219207 n

end A219207

/-! ## A219207.P10966727029946990141

`A007318(n)^A128227(n)`
-/

namespace A219207.P10966727029946990141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A128227 n : ℤ)

end

end A219207.P10966727029946990141

namespace A219207

/-- `A007318(n)^A128227(n)` -/
def P10966727029946990141.Spec : Prop :=
  ∀ n, P10966727029946990141.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P10846361416752949614

`A007318(n)²*A102480(n)`
-/

namespace A219207.P10846361416752949614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A102480 n

end

end A219207.P10846361416752949614

namespace A219207

/-- `A007318(n)²*A102480(n)` -/
def P10846361416752949614.Spec : Prop :=
  ∀ n, P10846361416752949614.a n = A219207 n

end A219207

/-! ## A219207.P15508360226586125181

`A108086(n)²*A102480(n)`
-/

namespace A219207.P15508360226586125181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n ^ 2 * A102480 n

end

end A219207.P15508360226586125181

namespace A219207

/-- `A108086(n)²*A102480(n)` -/
def P15508360226586125181.Spec : Prop :=
  ∀ n, P15508360226586125181.a n = A219207 n

end A219207

/-! ## A219207.P13986002649555457475

`A130595(n)²*A102480(n)`
-/

namespace A219207.P13986002649555457475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 * A102480 n

end

end A219207.P13986002649555457475

namespace A219207

/-- `A130595(n)²*A102480(n)` -/
def P13986002649555457475.Spec : Prop :=
  ∀ n, P13986002649555457475.a n = A219207 n

end A219207

/-! ## A219207.P17533274066244586624

`A007318(n)^A002260(n+1)`
-/

namespace A219207.P17533274066244586624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A219207.P17533274066244586624

namespace A219207

/-- `A007318(n)^A002260(n+1)` -/
def P17533274066244586624.Spec : Prop :=
  ∀ n, P17533274066244586624.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P14981548392245369130

`A007318(n)^A002262(n+1)`
-/

namespace A219207.P14981548392245369130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A002262 (n + 1) : ℤ)

end

end A219207.P14981548392245369130

namespace A219207

/-- `A007318(n)^A002262(n+1)` -/
def P14981548392245369130.Spec : Prop :=
  ∀ n, P14981548392245369130.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P17062304378687883247

`A007318(n)^A144328(n+2)`
-/

namespace A219207.P17062304378687883247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A144328 (n + 2) : ℤ)

end

end A219207.P17062304378687883247

namespace A219207

/-- `A007318(n)^A144328(n+2)` -/
def P17062304378687883247.Spec : Prop :=
  ∀ n, P17062304378687883247.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P11576973063665262736

`A007318(n)^A057555(2*n+1)`
-/

namespace A219207.P11576973063665262736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A057555 (2 * n + 1) : ℤ)

end

end A219207.P11576973063665262736

namespace A219207

/-- `A007318(n)^A057555(2*n+1)` -/
def P11576973063665262736.Spec : Prop :=
  ∀ n, P11576973063665262736.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P12526827133268163140

`(A134059(n)/3)^A002262(n+1)`
-/

namespace A219207.P12526827133268163140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A134059 n : ℚ) / 3) ^ (A002262 (n + 1) : ℤ)

end

end A219207.P12526827133268163140

namespace A219207

/-- `(A134059(n)/3)^A002262(n+1)` -/
def P12526827133268163140.Spec : Prop :=
  ∀ n, P12526827133268163140.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P496613041499163111

`A193554(comp[∑[n]])^A002260(n+1)`
-/

namespace A219207.P496613041499163111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A219207.P496613041499163111

namespace A219207

/-- `A193554(comp[∑[n]])^A002260(n+1)` -/
def P496613041499163111.Spec : Prop :=
  ∀ n, P496613041499163111.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P10993695772118003029

`ceil(A134059(n)/3)^A002260(n+1)`
-/

namespace A219207.P10993695772118003029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A134059 n : ℚ) / 3⌉ : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A219207.P10993695772118003029

namespace A219207

/-- `ceil(A134059(n)/3)^A002260(n+1)` -/
def P10993695772118003029.Spec : Prop :=
  ∀ n, P10993695772118003029.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P8220293227028553383

`ceil(A134060(n)/3)^A002260(n+1)`
-/

namespace A219207.P8220293227028553383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A134060 n : ℚ) / 3⌉ : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A219207.P8220293227028553383

namespace A219207

/-- `ceil(A134060(n)/3)^A002260(n+1)` -/
def P8220293227028553383.Spec : Prop :=
  ∀ n, P8220293227028553383.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P6399484760964901849

`ceil(A134060(n)/3)^A002262(n+1)`
-/

namespace A219207.P6399484760964901849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A134060 n : ℚ) / 3⌉ : ℚ) ^ (A002262 (n + 1) : ℤ)

end

end A219207.P6399484760964901849

namespace A219207

/-- `ceil(A134060(n)/3)^A002262(n+1)` -/
def P6399484760964901849.Spec : Prop :=
  ∀ n, P6399484760964901849.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P15538867387311692890

`ceil(A135087(n)/4)^A002260(n+1)`
-/

namespace A219207.P15538867387311692890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A135087 n : ℚ) / 4⌉ : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A219207.P15538867387311692890

namespace A219207

/-- `ceil(A135087(n)/4)^A002260(n+1)` -/
def P15538867387311692890.Spec : Prop :=
  ∀ n, P15538867387311692890.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P14932505143009010557

`ceil(A135089(n)/5)^A002260(n+1)`
-/

namespace A219207.P14932505143009010557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A135089 n : ℚ) / 5⌉ : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A219207.P14932505143009010557

namespace A219207

/-- `ceil(A135089(n)/5)^A002260(n+1)` -/
def P14932505143009010557.Spec : Prop :=
  ∀ n, P14932505143009010557.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P785652795718176511

`A102480(n)/(A007318(n)/A008459(n))²`
-/

namespace A219207.P785652795718176511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102480 n : ℚ) / ((A007318 n : ℚ) / (A008459 n : ℚ)) ^ 2

end

end A219207.P785652795718176511

namespace A219207

/-- `A102480(n)/(A007318(n)/A008459(n))²` -/
def P785652795718176511.Spec : Prop :=
  ∀ n, P785652795718176511.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P8358226321221935085

`(A134059(A028310(n))/3)^A002260(n+1)`
-/

namespace A219207.P8358226321221935085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A134059 (A028310 n).toNat : ℚ) / 3) ^ (A002260 (n + 1) : ℤ)

end

end A219207.P8358226321221935085

namespace A219207

/-- `(A134059(A028310(n))/3)^A002260(n+1)` -/
def P8358226321221935085.Spec : Prop :=
  ∀ n, P8358226321221935085.a n = (A219207 n : ℚ)

end A219207

/-! ## A219207.P14261197277567943307

`C(A003056(n), A004736(n+1)-1)^A002260(n+1)`
-/

namespace A219207.P14261197277567943307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A219207.P14261197277567943307

namespace A219207

/-- `C(A003056(n), A004736(n+1)-1)^A002260(n+1)` -/
def P14261197277567943307.Spec : Prop :=
  ∀ n, P14261197277567943307.a n = (A219207 n : ℚ)

end A219207

/-!
# A219208: Number of distinct products of all parts of all partitions of n into distinct divisors of n.

The programs for A219208, there is no canonical definition to state claims against.
-/

/-! ## A219208.P8616198583594758129

`A033630(n%A157405(n))`
-/

namespace A219208.P8616198583594758129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (Int.tmod (n : ℤ) (A157405 n)).toNat

end

end A219208.P8616198583594758129

/-! ## A219208.P2330709108912555483

`gcd(A033630(n), A334887(n))`
-/

namespace A219208.P2330709108912555483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033630 n) (A334887 n)

end

end A219208.P2330709108912555483

/-! ## A219208.P2603379627960667022

`C(A033630(n), A348248(3*(n+1)/2^val(n+1, 2)))`
-/

namespace A219208.P2603379627960667022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033630 n).toNat (A348248 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat).toNat

end

end A219208.P2603379627960667022

/-! ## A219208.P11175765397069947928

`A033630(n)-A302047(A293569(n))`
-/

namespace A219208.P11175765397069947928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n - A302047 (A293569 n).toNat

end

end A219208.P11175765397069947928

/-! ## A219208.P4121553516554652674

`A331958(A033630(n)^A331958(n))`
-/

namespace A219208.P4121553516554652674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331958 (SequenceMachineLib.roundAway ((A033630 n : ℚ) ^ (A331958 n : ℤ))).toNat

end

end A219208.P4121553516554652674

/-!
# A219209: Maximal product of all parts of a partition of n into distinct divisors of n.

The programs for A219209, there is no canonical definition to state claims against.
-/

/-! ## A219209.P12715057890461710550

`n*A323719(a(n-1)+1)²` with `a(0)=1`
-/

namespace A219209.P12715057890461710550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A323719 (a (n - 1) + 1).toNat ^ 2

end

end A219209.P12715057890461710550

/-! ## A219209.P15047533602148142078

`n*A146879(a(n-1))²` with `a(0)=1`
-/

namespace A219209.P15047533602148142078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A146879 (a (n - 1)).toNat ^ 2

end

end A219209.P15047533602148142078

/-! ## A219209.P12671792971417196490

`n*A147080(a(n-1))²` with `a(0)=1`
-/

namespace A219209.P12671792971417196490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A147080 (a (n - 1)).toNat ^ 2

end

end A219209.P12671792971417196490

/-! ## A219209.P11062444695657133440

`n*A147457(a(n-1))²` with `a(0)=1`
-/

namespace A219209.P11062444695657133440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A147457 (a (n - 1)).toNat ^ 2

end

end A219209.P11062444695657133440

/-! ## A219209.P13518173759459499708

`n*A194673(a(n-1))²` with `a(0)=1`
-/

namespace A219209.P13518173759459499708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A194673 (a (n - 1)).toNat ^ 2

end

end A219209.P13518173759459499708

/-!
# A219210: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X n array.

The programs for A219210, there is no canonical definition to state claims against.
-/

/-! ## A219210.P17529041037593057979

`A219217(∑[4*n]+1)`
-/

namespace A219210.P17529041037593057979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219210.P17529041037593057979

/-! ## A219210.P5535873015616588592

`and(-1, A219217(A001844(n)))`
-/

namespace A219210.P5535873015616588592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219217 (A001844 n).toNat)

end

end A219210.P5535873015616588592

/-! ## A219210.P17535424073556267270

`A282289(n)+A219217(A001844(n))`
-/

namespace A219210.P17535424073556267270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282289 n + A219217 (A001844 n).toNat

end

end A219210.P17535424073556267270

/-! ## A219210.P11817556189850483101

`A316869(n)+A219217(A001844(n))`
-/

namespace A219210.P11817556189850483101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n + A219217 (A001844 n).toNat

end

end A219210.P11817556189850483101

/-!
# A219211: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X 2 array.

The programs for A219211, the canonical program `A219211.P9765662742609415063` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219211 has offset 1).

The definition of A219211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219211.P9765662742609415063

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=3, a(2)=7, a(3)=12, a(4)=21, a(5)=35, a(6)=57, a(7)=91`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A219211

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9765662742609415063.Spec : Prop :=
  ∀ n, P9765662742609415063.a n = A219211 (n + 1)

theorem P9765662742609415063.correct : P9765662742609415063.Spec := by
  intro n
  simp only [A219211, Nat.add_sub_cancel]

end A219211

/-! ## A219211.P8163358485097371546

`A219217(∑[n+1]+2)`
-/

namespace A219211.P8163358485097371546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219211.P8163358485097371546

namespace A219211

/-- `A219217(∑[n+1]+2)` -/
def P8163358485097371546.Spec : Prop :=
  ∀ n, P8163358485097371546.a n = A219211 (n + 1)

end A219211

/-! ## A219211.P2551041313094342465

`lcm(A219208(n), A219217(A133263(n+1)))`
-/

namespace A219211.P2551041313094342465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219208 n) (A219217 (A133263 (n + 1)).toNat)

end

end A219211.P2551041313094342465

namespace A219211

/-- `lcm(A219208(n), A219217(A133263(n+1)))` -/
def P2551041313094342465.Spec : Prop :=
  ∀ n, (P2551041313094342465.a n : ℤ) = A219211 (n + 1)

end A219211

/-! ## A219211.P17875453563920054377

`A064284(n+1)*A219217(A133263(n+1))`
-/

namespace A219211.P17875453563920054377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 (n + 1) * A219217 (A133263 (n + 1)).toNat

end

end A219211.P17875453563920054377

namespace A219211

/-- `A064284(n+1)*A219217(A133263(n+1))` -/
def P17875453563920054377.Spec : Prop :=
  ∀ n, P17875453563920054377.a n = A219211 (n + 1)

end A219211

/-! ## A219211.P4661038447462942124

`A219217(A000096(n)+3)%A034256(n+1)`
-/

namespace A219211.P4661038447462942124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219217 (A000096 n + 3).toNat) (A034256 (n + 1))

end

end A219211.P4661038447462942124

namespace A219211

/-- `A219217(A000096(n)+3)%A034256(n+1)` -/
def P4661038447462942124.Spec : Prop :=
  ∀ n, P4661038447462942124.a n = A219211 (n + 1)

end A219211

/-!
# A219212: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X 3 array.

The programs for A219212, there is no canonical definition to state claims against.
-/

/-! ## A219212.P15469712821727077383

`A219217(∑[n+2]+4)`
-/

namespace A219212.P15469712821727077383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219212.P15469712821727077383

/-! ## A219212.P3623260746798343553

`record[A219217(n+4)/A060923(n)]`
-/

namespace A219212.P3623260746798343553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219217 (n + 4) : ℚ) / (A060923 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219212.P3623260746798343553

/-! ## A219212.P9391456133655354587

`record[A133566(n+1)*A219217(n+4)]`
-/

namespace A219212.P9391456133655354587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133566 (n + 1) * A219217 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219212.P9391456133655354587

/-! ## A219212.P11818206655036891388

`A219217(A167614(n+1))+A025439(n)`
-/

namespace A219212.P11818206655036891388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A167614 (n + 1)).toNat + A025439 n

end

end A219212.P11818206655036891388

/-! ## A219212.P800732603813213854

`A219217(A167614(n+1))+A025444(n)`
-/

namespace A219212.P800732603813213854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A167614 (n + 1)).toNat + A025444 n

end

end A219212.P800732603813213854

/-!
# A219213: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX4 array.

The programs for A219213, there is no canonical definition to state claims against.
-/

/-! ## A219213.P9139816762757539529

`A219217(∑[n+3]+7)`
-/

namespace A219213.P9139816762757539529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219213.P9139816762757539529

/-!
# A219214: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX5 array.

The programs for A219214, there is no canonical definition to state claims against.
-/

/-! ## A219214.P16681083935363046626

`A219217(∑[round(1/acot(n))+4]+10)`
-/

namespace A219214.P16681083935363046626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A219214.P16681083935363046626

/-! ## A219214.P2898086983659863249

`A219217(A167499(n+3))`
-/

namespace A219214.P2898086983659863249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A167499 (n + 3)).toNat

end

end A219214.P2898086983659863249

/-! ## A219214.P14294828213541727475

`A219217(A155212(n)+13)`
-/

namespace A219214.P14294828213541727475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A155212 n + 13).toNat

end

end A219214.P14294828213541727475

/-! ## A219214.P7025586362325781496

`A219217(A056000(n)+15)`
-/

namespace A219214.P7025586362325781496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A056000 n + 15).toNat

end

end A219214.P7025586362325781496

/-! ## A219214.P9257453656597764391

`A219217(eq[7, A066657(n)])`
-/

namespace A219214.P9257453656597764391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219214.P9257453656597764391

/-!
# A219215: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX6 array.

The programs for A219215, there is no canonical definition to state claims against.
-/

/-! ## A219215.P1210518064643793161

`A219217(A166136(n+4))`
-/

namespace A219215.P1210518064643793161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A166136 (n + 4)).toNat

end

end A219215.P1210518064643793161

/-! ## A219215.P5505698293572320380

`A219217(A056115(n)+21)`
-/

namespace A219215.P5505698293572320380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A056115 n + 21).toNat

end

end A219215.P5505698293572320380

/-! ## A219215.P2965076357895044939

`A219217(A167499(n+4)+1)`
-/

namespace A219215.P2965076357895044939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A167499 (n + 4) + 1).toNat

end

end A219215.P2965076357895044939

/-! ## A219215.P12717262389745752227

`A219217(A167614(n+4)+3)`
-/

namespace A219215.P12717262389745752227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A167614 (n + 4) + 3).toNat

end

end A219215.P12717262389745752227

/-! ## A219215.P10069283105679157041

`A219217(A133263(n+5)+4)`
-/

namespace A219215.P10069283105679157041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (A133263 (n + 5) + 4).toNat

end

end A219215.P10069283105679157041

/-!
# A219216: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical, diagonal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX7 array.

The programs for A219216, there is no canonical definition to state claims against.
-/

/-! ## A219216.P11264517554647088905

`A219217(∑[n+7]+21-n)`
-/

namespace A219216.P11264517554647088905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219217 (∑ j ∈ Finset.range (n + 1), f1 j + 21 - n)

end

end A219216.P11264517554647088905

/-!
# A219219: Numbers k such that 2^k (mod k^2) is prime.

The programs for A219219, there is no canonical definition to state claims against.
-/

/-! ## A219219.P14636911235665280129

`eq[1, A074206(A066606(n+1))]+1`
-/

namespace A219219.P14636911235665280129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A066606 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219219.P14636911235665280129

/-!
# A219220: O.g.f. satisfies: A(x) = Sum_{n>=0} (n+1)^(n-1) * (n*x)^n * A(n*x)^(2*n)/n! * exp(-(n+1)*n*x*A(n*x)^2).

The programs for A219220, there is no canonical definition to state claims against.
-/

/-! ## A219220.P15530202859322786958

`A287004(A124432(n))-1`
-/

namespace A219220.P15530202859322786958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287004 (A124432 n).toNat - 1

end

end A219220.P15530202859322786958

/-!
# A219222: Numbers that can be expressed as the sum of 2 positive squares but not as the sum of 3 positive squares.

The programs for A219222, there is no canonical definition to state claims against.
-/

/-! ## A219222.P17924841561154400217

`∩[A000404(n+1), A004214(n+1)]`
-/

namespace A219222.P17924841561154400217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219222.P17924841561154400217

/-! ## A219222.P12269643334519847202

`∩[A004214(n+1), A214329(n+1)]`
-/

namespace A219222.P12269643334519847202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219222.P12269643334519847202

/-! ## A219222.P17814235557225776582

`lt[A037215(n), A037214(n)]`
-/

namespace A219222.P17814235557225776582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219222.P17814235557225776582

/-! ## A219222.P1625436550057518978

`lt[A063691(n), A025426(n)]`
-/

namespace A219222.P1625436550057518978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219222.P1625436550057518978

/-! ## A219222.P13312103733752947115

`lt[A063691(n), A063725(n)]`
-/

namespace A219222.P13312103733752947115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219222.P13312103733752947115

/-!
# A219224: G.f.: exp( Sum_{n>=1} A005063(n)*x^n/n ), where A005063(n) = sum of squares of primes dividing n.

The programs for A219224, there is no canonical definition to state claims against.
-/

/-! ## A219224.P3172500350971582300

`A088370(A000110(n))+A010892(2*(n+1))`
-/

namespace A219224.P3172500350971582300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088370 (A000110 n).toNat + A010892 (2 * (n + 1))

end

end A219224.P3172500350971582300

/-!
# A219226: Number of rooted unlabeled ordered (plane) trees with 2n leaves such that i) every internal node has an even number of children and ii) every path from the root to a leaf is the same length.

The programs for A219226, there is no canonical definition to state claims against.
-/

/-! ## A219226.P9092424429245442709

`A000267(C(round(ϕ*a(n-1)), 2))` with `a(0)=0`
-/

namespace A219226.P9092424429245442709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000267 (Nat.choose (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat 2)

end

end A219226.P9092424429245442709

/-! ## A219226.P13737314823122381290

`∑{e}[A167747(n), A167750(#-1)]`
-/

namespace A219226.P13737314823122381290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A167750 (Nat.factorization (f1 n).natAbs p - 1)

end

end A219226.P13737314823122381290

/-! ## A219226.P7677789063113223195

`Δ[A055679(Δ[A005207(n+1)])]`
-/

namespace A219226.P7677789063113223195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219226.P7677789063113223195

/-! ## A219226.P10759329946527864769

`A184414(a(n-1))-A250484(n)` with `a(0)=0, a(1)=1`
-/

namespace A219226.P10759329946527864769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A184414 (a (n - 1)).toNat - A250484 n

end

end A219226.P10759329946527864769

/-! ## A219226.P9740353146219090383

`A008619(A304969(n))%A051236(n+2)`
-/

namespace A219226.P9740353146219090383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A304969 n).toNat) (A051236 (n + 2))

end

end A219226.P9740353146219090383

/-!
# A219227: a(n) is the sum of n addends nested as follows: floor(f(floor(f(...(n)...)))) where f(x) = x^(1/3).

The programs for A219227, there is no canonical definition to state claims against.
-/

/-! ## A219227.P11161238037229660937

`floor(root(n+1, 3)+n)`
-/

namespace A219227.P11161238037229660937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (3 : ℝ)) + (n : ℝ)⌋

end

end A219227.P11161238037229660937

/-! ## A219227.P1649670269829647780

`comp[xor(1, (n+1)^3+n)]`
-/

namespace A219227.P1649670269829647780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) ^ 3 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A219227.P1649670269829647780

/-! ## A219227.P14745510095727620772

`∑[∏{e}[n+1, val(#, 3)]]+n`
-/

namespace A219227.P14745510095727620772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (Nat.factorization (f2 n) p) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A219227.P14745510095727620772

/-! ## A219227.P15562841573475487712

`comp[Δ[C(n, 2)²]-2+n]`
-/

namespace A219227.P15562841573475487712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219227.P15562841573475487712

/-! ## A219227.P3021838540194532275

`comp[xor(n+1, n*n²)-3]`
-/

namespace A219227.P3021838540194532275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n + 1) (n * n ^ 2) : ℤ) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219227.P3021838540194532275

/-! ## A219227.P8463446544073724479

`∑[char[Δ[C(n, 2)²]-1]]+n`
-/

namespace A219227.P8463446544073724479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A219227.P8463446544073724479

/-! ## A219227.P10748291391883288900

`comp[record[abs((1-n)^3)-1]+n]`
-/

namespace A219227.P10748291391883288900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 3| - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219227.P10748291391883288900

/-! ## A219227.P17261222807151741415

`comp[n*(or(2, (n+1)²)+n)+n]`
-/

namespace A219227.P17261222807151741415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.lor 2 ((n + 1) ^ 2) + n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A219227.P17261222807151741415

/-! ## A219227.P611711752976764890

`comp[n*record[n*(n-3)+3]+n]`
-/

namespace A219227.P611711752976764890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 3) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219227.P611711752976764890

/-! ## A219227.P12093143259701967076

`comp[2*∑{digits}[n, #]*∑[char[1]+1+n]]`
-/

namespace A219227.P12093143259701967076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum * (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A219227.P12093143259701967076

/-!
# A219229: G.f.: exp( Sum_{n>=1} x^n/n * Product_{k>=1} (1 + x^(n*k)*(1 + x^n)^k) ).

The programs for A219229, there is no canonical definition to state claims against.
-/

/-! ## A219229.P4852994209199768506

`A115060(A052962(n))-A300252(n+1)`
-/

namespace A219229.P4852994209199768506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A052962 n).toNat - A300252 (n + 1)

end

end A219229.P4852994209199768506

/-!
# A219230: G.f.: exp( Sum_{n>=1} x^n/n * Product_{k>=1} 1/(1 - x^(n*k)*(1 + x^n)^k) ).

The programs for A219230, there is no canonical definition to state claims against.
-/

/-! ## A219230.P8600063789306988446

`A026819(A149614(n))`
-/

namespace A219230.P8600063789306988446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A149614 n).toNat

end

end A219230.P8600063789306988446

/-! ## A219230.P6714316922223259371

`A243283(A385975(n))`
-/

namespace A219230.P6714316922223259371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A385975 n).toNat

end

end A219230.P6714316922223259371

/-! ## A219230.P823846554640318560

`A046155(A149614(n)+1)`
-/

namespace A219230.P823846554640318560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A149614 n + 1).toNat

end

end A219230.P823846554640318560

/-! ## A219230.P14138765470182982937

`A046155(or(1, A149614(n)))`
-/

namespace A219230.P14138765470182982937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.lor 1 (A149614 n)).toNat

end

end A219230.P14138765470182982937

/-!
# A219231: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Product_{k>=1} 1/(1 - x^(n*k)*A(x^n)^k) ).

The programs for A219231, there is no canonical definition to state claims against.
-/

/-! ## A219231.P10270990745128504406

`A022290(A097147(n+1))-A069787(2*n)`
-/

namespace A219231.P10270990745128504406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A097147 (n + 1)).toNat - A069787 (2 * n)

end

end A219231.P10270990745128504406

/-! ## A219231.P18303652882711512873

`A087836(A005700(n))`
-/

namespace A219231.P18303652882711512873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A005700 n).toNat

end

end A219231.P18303652882711512873

/-! ## A219231.P8718391628790504893

`A135646(A049162(n))`
-/

namespace A219231.P8718391628790504893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (A049162 n).toNat

end

end A219231.P8718391628790504893

/-!
# A219232: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Product_{k>=1} (1 + x^(n*k)*A(x^n)^k) ).

The programs for A219232, there is no canonical definition to state claims against.
-/

/-! ## A219232.P11930256262637504025

`A023193(A149319(n))`
-/

namespace A219232.P11930256262637504025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149319 n).toNat

end

end A219232.P11930256262637504025

/-! ## A219232.P1389956679269814077

`A226190(A115254(n)+1)`
-/

namespace A219232.P1389956679269814077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A115254 n + 1).toNat

end

end A219232.P1389956679269814077

/-! ## A219232.P10635831320663861427

`A226190(or(1, A115254(n)))`
-/

namespace A219232.P10635831320663861427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (Int.lor 1 (A115254 n)).toNat

end

end A219232.P10635831320663861427

/-! ## A219232.P7523668244332823502

`A092184(A130520(n))+A023193(A149878(n)-n)`
-/

namespace A219232.P7523668244332823502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 (A130520 n).toNat + A023193 (A149878 n - (n : ℤ)).toNat

end

end A219232.P7523668244332823502

/-!
# A219233: Alternating row sums of Riordan triangle A110162.

The programs for A219233, the canonical program `A219233.P4417271251867941425` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219233 has offset 0).

The definition of A219233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219233.P2300097377215623333

`round((-ϕ²)^n)`
-/

namespace A219233.P2300097377215623333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((-(Real.goldenRatio ^ 2)) ^ n)

end

end A219233.P2300097377215623333

namespace A219233

/-- `round((-ϕ²)^n)` -/
def P2300097377215623333.Spec : Prop :=
  ∀ n, P2300097377215623333.a n = A219233 n

end A219233

/-! ## A219233.P7939076587805273033

`ogf((1-x^2)/(1+3x+x^2))`
-/

namespace A219233.P7939076587805273033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, 3, 1] n

end

end A219233.P7939076587805273033

namespace A219233

/-- `ogf((1-x^2)/(1+3x+x^2))` -/
def P7939076587805273033.Spec : Prop :=
  ∀ n, P7939076587805273033.a n = A219233 n

end A219233

/-! ## A219233.P9710007152520063521

`ceil((ϕ^n)²)*A033999(n)`
-/

namespace A219233.P9710007152520063521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ n) ^ 2⌉ * A033999 n

end

end A219233.P9710007152520063521

namespace A219233

/-- `ceil((ϕ^n)²)*A033999(n)` -/
def P9710007152520063521.Spec : Prop :=
  ∀ n, P9710007152520063521.a n = A219233 n

end A219233

/-! ## A219233.P13707349836967480966

`(-1)^n*A000032(comp[2*(n+1)]+1)`
-/

namespace A219233.P13707349836967480966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A219233.P13707349836967480966

namespace A219233

/-- `(-1)^n*A000032(comp[2*(n+1)]+1)` -/
def P13707349836967480966.Spec : Prop :=
  ∀ n, P13707349836967480966.a n = A219233 n

end A219233

/-! ## A219233.P13218442385058103780

`A128052(n)*A281727(n)`
-/

namespace A219233.P13218442385058103780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128052 n * A281727 n

end

end A219233.P13218442385058103780

namespace A219233

/-- `A128052(n)*A281727(n)` -/
def P13218442385058103780.Spec : Prop :=
  ∀ n, P13218442385058103780.a n = A219233 n

end A219233

/-! ## A219233.P7906269420644127997

`A000032(A004277(n))/(-1)^n`
-/

namespace A219233.P7906269420644127997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A004277 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A219233.P7906269420644127997

namespace A219233

/-- `A000032(A004277(n))/(-1)^n` -/
def P7906269420644127997.Spec : Prop :=
  ∀ n, P7906269420644127997.a n = (A219233 n : ℚ)

end A219233

/-! ## A219233.P9488896733890539041

`A000032(A028310(2*n))/(-1)^n`
-/

namespace A219233.P9488896733890539041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A028310 (2 * n)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A219233.P9488896733890539041

namespace A219233

/-- `A000032(A028310(2*n))/(-1)^n` -/
def P9488896733890539041.Spec : Prop :=
  ∀ n, P9488896733890539041.a n = (A219233 n : ℚ)

end A219233

/-! ## A219233.P2421974532003811611

`A000032(A028310(n)+n)/(-1)^n`
-/

namespace A219233.P2421974532003811611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A028310 n + (n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A219233.P2421974532003811611

namespace A219233

/-- `A000032(A028310(n)+n)/(-1)^n` -/
def P2421974532003811611.Spec : Prop :=
  ∀ n, P2421974532003811611.a n = (A219233 n : ℚ)

end A219233

/-! ## A219233.P4214520360388606707

`A000032(2*n)/2*A176742(2*n)`
-/

namespace A219233.P4214520360388606707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / 2 * (A176742 (2 * n) : ℚ)

end

end A219233.P4214520360388606707

namespace A219233

/-- `A000032(2*n)/2*A176742(2*n)` -/
def P4214520360388606707.Spec : Prop :=
  ∀ n, P4214520360388606707.a n = (A219233 n : ℚ)

end A219233

/-! ## A219233.P257152630124624575

`A000032(2*n)/2*A100051(3*n)`
-/

namespace A219233.P257152630124624575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / 2 * (A100051 (3 * n) : ℚ)

end

end A219233.P257152630124624575

namespace A219233

/-- `A000032(2*n)/2*A100051(3*n)` -/
def P257152630124624575.Spec : Prop :=
  ∀ n, P257152630124624575.a n = (A219233 n : ℚ)

end A219233

/-! ## A219233.P16821359693856122848

`A075150(n)-A020639(A008864(n+1))`
-/

namespace A219233.P16821359693856122848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n - A020639 (A008864 (n + 1)).toNat

end

end A219233.P16821359693856122848

namespace A219233

/-- `A075150(n)-A020639(A008864(n+1))` -/
def P16821359693856122848.Spec : Prop :=
  ∀ n, P16821359693856122848.a n = A219233 n

end A219233

/-! ## A219233.P7466570153064255149

`A075150(n)-A020639(A031166(n+1))`
-/

namespace A219233.P7466570153064255149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n - A020639 (A031166 (n + 1)).toNat

end

end A219233.P7466570153064255149

namespace A219233

/-- `A075150(n)-A020639(A031166(n+1))` -/
def P7466570153064255149.Spec : Prop :=
  ∀ n, P7466570153064255149.a n = A219233 n

end A219233

/-! ## A219233.P15355954258500227395

`(A000035(n+1)-A000035(n))*A169985(2*n)`
-/

namespace A219233.P15355954258500227395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A169985 (2 * n)

end

end A219233.P15355954258500227395

namespace A219233

/-- `(A000035(n+1)-A000035(n))*A169985(2*n)` -/
def P15355954258500227395.Spec : Prop :=
  ∀ n, P15355954258500227395.a n = A219233 n

end A219233

/-! ## A219233.P4417271251867941425

`(A000035(n+1)-A000035(n))*A169986(2*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A219233

/-- `(A000035(n+1)-A000035(n))*A169986(2*n)` -/
def P4417271251867941425.Spec : Prop :=
  ∀ n, P4417271251867941425.a n = A219233 n

theorem P4417271251867941425.correct : P4417271251867941425.Spec := by
  intro n
  simp only [A219233]

end A219233

/-! ## A219233.P11797495262359830836

`(A163805(2*n)-A000032(2*n))*A163805(2*n+1)`
-/

namespace A219233.P11797495262359830836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163805 (2 * n) - A000032 (2 * n)) * A163805 (2 * n + 1)

end

end A219233.P11797495262359830836

namespace A219233

/-- `(A163805(2*n)-A000032(2*n))*A163805(2*n+1)` -/
def P11797495262359830836.Spec : Prop :=
  ∀ n, P11797495262359830836.a n = A219233 n

end A219233

/-! ## A219233.P11650283859188924463

`A110168(∑[n])`
-/

namespace A219233.P11650283859188924463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110168 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219233.P11650283859188924463

namespace A219233

/-- `A110168(∑[n])` -/
def P11650283859188924463.Spec : Prop :=
  ∀ n, P11650283859188924463.a n = A219233 n

end A219233

/-! ## A219233.P1818107966130872213

`A075150(n)-A178815(n+1)`
-/

namespace A219233.P1818107966130872213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n - A178815 (n + 1)

end

end A219233.P1818107966130872213

namespace A219233

/-- `A075150(n)-A178815(n+1)` -/
def P1818107966130872213.Spec : Prop :=
  ∀ n, P1818107966130872213.a n = A219233 n

end A219233

/-!
# A219238: Coefficient table for the first differences of table A047971: Coefficients of the difference of Gauss polynomials [n+3,3]_q - [n+2,3]_q.

The programs for A219238, the canonical program `A219238.P3363625506201266281` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219238 has offset 0).

The definition of A219238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219238.P3363625506201266281

`ceil(A178952(3*(n+1))/6)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A219238

/-- `ceil(A178952(3*(n+1))/6)` -/
def P3363625506201266281.Spec : Prop :=
  ∀ n, P3363625506201266281.a n = A219238 n

theorem P3363625506201266281.correct : P3363625506201266281.Spec := by
  intro n
  simp only [A219238]

end A219238

/-! ## A219238.P11812853824684968044

`A203905(record[A211343(2*n+1)])`
-/

namespace A219238.P11812853824684968044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211343 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203905 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219238.P11812853824684968044

namespace A219238

/-- `A203905(record[A211343(2*n+1)])` -/
def P11812853824684968044.Spec : Prop :=
  ∀ n, P11812853824684968044.a n = A219238 n

end A219238

/-! ## A219238.P12360432067267830081

`A203905(∪[A096997(2*n+1), A007606(n+1)])`
-/

namespace A219238.P12360432067267830081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096997 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203905 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A219238.P12360432067267830081

namespace A219238

/-- `A203905(∪[A096997(2*n+1), A007606(n+1)])` -/
def P12360432067267830081.Spec : Prop :=
  ∀ n, P12360432067267830081.a n = A219238 n

end A219238

/-! ## A219238.P5130192498809295463

`A198293(A301739(2*(n+4))+6*n)%A019303(A025147(n))`
-/

namespace A219238.P5130192498809295463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198293 (A301739 (2 * (n + 4)) + (6 * n : ℤ)).toNat) (A019303 (A025147 n).toNat)

end

end A219238.P5130192498809295463

namespace A219238

/-- `A198293(A301739(2*(n+4))+6*n)%A019303(A025147(n))` -/
def P5130192498809295463.Spec : Prop :=
  ∀ n, P5130192498809295463.a n = A219238 n

end A219238

/-! ## A219238.P15358238833421043406

`A327103(A144385(n))`
-/

namespace A219238.P15358238833421043406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A144385 n).toNat

end

end A219238.P15358238833421043406

namespace A219238

/-- `A327103(A144385(n))` -/
def P15358238833421043406.Spec : Prop :=
  ∀ n, P15358238833421043406.a n = A219238 n

end A219238

/-!
# A219239: Double magic numbers (in physics).

The programs for A219239, there is no canonical definition to state claims against.
-/

/-! ## A219239.P2658667178459958107

`A097603(n+1)-A000122(A319766(n))`
-/

namespace A219239.P2658667178459958107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097603 (n + 1) - A000122 (A319766 n).toNat

end

end A219239.P2658667178459958107

/-! ## A219239.P12046427584363334197

`A000966(n+1)-A113407(A052501(n))`
-/

namespace A219239.P12046427584363334197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 1) - A113407 (A052501 n).toNat

end

end A219239.P12046427584363334197

/-! ## A219239.P11217312827776013965

`eq[A000005(n+1), A304465(A101240(n+1))]`
-/

namespace A219239.P11217312827776013965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A101240 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219239.P11217312827776013965

/-! ## A219239.P15299213002797541690

`∩[A366530(A001651(n+1)), A141468(n+1)]`
-/

namespace A219239.P15299213002797541690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366530 (A001651 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219239.P15299213002797541690

/-! ## A219239.P3341938271957215976

`A366530(A286355(n+1))%A074631(2*(n+1))`
-/

namespace A219239.P3341938271957215976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366530 (A286355 (n + 1)).toNat) (A074631 (2 * (n + 1)))

end

end A219239.P3341938271957215976

/-!
# A219240: Coefficient array for the cube of Chebyshev's S polynomials.

The programs for A219240, there is no canonical definition to state claims against.
-/

/-! ## A219240.P8927829219406204821

`Δ[A005811(A208910(n+1)%A208941(n+1))]`
-/

namespace A219240.P8927829219406204821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.tmod (A208910 (n + 1)) (A208941 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219240.P8927829219406204821

/-!
# A219243: Number of permutations of order n at the largest transposition distance (= A065603(n)) from the identity permutation.

The programs for A219243, there is no canonical definition to state claims against.
-/

/-! ## A219243.P16124670393124012300

`A164366(∑[floor((n+1)^(acot(n)+1)/2)+1])`
-/

namespace A219243.P16124670393124012300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ) + 1) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164366 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219243.P16124670393124012300

/-! ## A219243.P3747036920217004424

`A164366(∑[A065603(n+1)+1])`
-/

namespace A219243.P3747036920217004424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065603 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164366 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219243.P3747036920217004424

/-!
# A219244: Differences of two consecutive primes which both equal 1 modulo 3, divided by 6.

The programs for A219244, the canonical program `A219244.P3664238137770529904` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219244 has offset 1).

The definition of A219244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219244.P12455361367701666405

`(A217659(n+1)-A185934(n+1))/6`
-/

namespace A219244.P12455361367701666405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217659 (n + 1) - A185934 (n + 1) : ℚ) / 6

end

end A219244.P12455361367701666405

namespace A219244

/-- `(A217659(n+1)-A185934(n+1))/6` -/
def P12455361367701666405.Spec : Prop :=
  ∀ n, P12455361367701666405.a n = (A219244 (n + 1) : ℚ)

end A219244

/-! ## A219244.P7740634844287953547

`A001223(A000720(A185934(n+1)))/6`
-/

namespace A219244.P7740634844287953547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (A000720 (A185934 (n + 1)).toNat).toNat : ℚ) / 6

end

end A219244.P7740634844287953547

namespace A219244

/-- `A001223(A000720(A185934(n+1)))/6` -/
def P7740634844287953547.Spec : Prop :=
  ∀ n, P7740634844287953547.a n = (A219244 (n + 1) : ℚ)

end A219244

/-! ## A219244.P3664238137770529904

`A152467(A217659(n+1)-A185934(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A219244

/-- `A152467(A217659(n+1)-A185934(n+1))` -/
def P3664238137770529904.Spec : Prop :=
  ∀ n, P3664238137770529904.a n = A219244 (n + 1)

theorem P3664238137770529904.correct : P3664238137770529904.Spec := by
  intro n
  simp only [A219244, Nat.add_sub_cancel]

end A219244

/-! ## A219244.P11810382157846323497

`A152467(A217659(n+1)%A185934(n+1))`
-/

namespace A219244.P11810382157846323497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (Int.tmod (A217659 (n + 1)) (A185934 (n + 1))).toNat

end

end A219244.P11810382157846323497

namespace A219244

/-- `A152467(A217659(n+1)%A185934(n+1))` -/
def P11810382157846323497.Spec : Prop :=
  ∀ n, P11810382157846323497.a n = A219244 (n + 1)

end A219244

/-! ## A219244.P3489942032043527342

`A151898(A072918(A185934(n+1)))`
-/

namespace A219244.P3489942032043527342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (A072918 (A185934 (n + 1)).toNat).toNat

end

end A219244.P3489942032043527342

namespace A219244

/-- `A151898(A072918(A185934(n+1)))` -/
def P3489942032043527342.Spec : Prop :=
  ∀ n, P3489942032043527342.a n = A219244 (n + 1)

end A219244

/-!
# A219247: Denominators of poly-Cauchy numbers of the second kind hat c_n^(2).

The programs for A219247, there is no canonical definition to state claims against.
-/

/-! ## A219247.P6079153373522715233

`A224096(n)/A000027(A109935(n+1))`
-/

namespace A219247.P6079153373522715233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224096 n : ℚ) / (A000027 (A109935 (n + 1)).toNat : ℚ)

end

end A219247.P6079153373522715233

/-! ## A219247.P13024090926402581321

`sqrt(A224096(n)*A290318(∑[n]))`
-/

namespace A219247.P13024090926402581321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224096 n * A290318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A219247.P13024090926402581321

/-! ## A219247.P13504513900858305088

`A003418(n+1)*A290318(∑[n])`
-/

namespace A219247.P13504513900858305088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) * A290318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219247.P13504513900858305088

/-! ## A219247.P1505385983543461994

`A109935(n+1)*A290318(∑[n])`
-/

namespace A219247.P1505385983543461994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109935 (n + 1) * A290318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219247.P1505385983543461994

/-! ## A219247.P17923899492586886813

`A003418(n+1)*A006233(A004905(n+1))`
-/

namespace A219247.P17923899492586886813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) * A006233 (A004905 (n + 1)).toNat

end

end A219247.P17923899492586886813

/-!
# A219248: Numbers such that the absolute difference of any two adjacent (decimal) digits is prime.

The programs for A219248, there is no canonical definition to state claims against.
-/

/-! ## A219248.P2855735597183870605

`A000196(comp[A219251(n+1)]²)`
-/

namespace A219248.P2855735597183870605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219251 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A219248.P2855735597183870605

/-! ## A219248.P12364479854960572890

`eq[∑{digits}[n, 10^#]%9, A326843(A151950(n))]`
-/

namespace A219248.P12364479854960572890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum % 9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A219248.P12364479854960572890

/-! ## A219248.P16453943774261892852

`comp[A219251(n+1)]*A051903(A232880(n+1))`
-/

namespace A219248.P16453943774261892852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219251 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A051903 (A232880 (n + 1)).toNat

end

end A219248.P16453943774261892852

/-! ## A219248.P18098753362754156149

`comp[A219251(n+1)]%A154493(n+1)`
-/

namespace A219248.P18098753362754156149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219251 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A154493 (n + 1))

end

end A219248.P18098753362754156149

/-! ## A219248.P6095021680638491351

`comp[A219251(n+1)]%A329919(n)`
-/

namespace A219248.P6095021680638491351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219251 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A329919 n)

end

end A219248.P6095021680638491351

/-!
# A219251: Numbers such that the absolute difference of a pair of adjacent decimal digits is not prime.

The programs for A219251, there is no canonical definition to state claims against.
-/

/-! ## A219251.P13318096294617793683

`comp[A219248(n+1)]`
-/

namespace A219251.P13318096294617793683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219251.P13318096294617793683

/-! ## A219251.P10563414707335181896

`comp[A219250(n+1)]`
-/

namespace A219251.P10563414707335181896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219251.P10563414707335181896

/-! ## A219251.P17312639747208278433

`comp[A219249(n+1)-1]+1`
-/

namespace A219251.P17312639747208278433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219249 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A219251.P17312639747208278433

/-! ## A219251.P9895591377546222044

`eq[char[A219248(n+1)], A000038(n)]`
-/

namespace A219251.P9895591377546222044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219248 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A219251.P9895591377546222044

/-! ## A219251.P18296614815519477221

`eq[char[A219248(n+2)], A000007(n)]`
-/

namespace A219251.P18296614815519477221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219248 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A219251.P18296614815519477221

/-!
# A219253: Numbers k such that k = n-th triangular number and last digits of k match n.

The programs for A219253, there is no canonical definition to state claims against.
-/

/-! ## A219253.P12998280888325956069

`C(A067270(n+2)+1, 2)`
-/

namespace A219253.P12998280888325956069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067270 (n + 2) + 1).toNat 2

end

end A219253.P12998280888325956069

/-!
# A219254: Number of ways to express 2n+1 as p+4q with p, q primes.

The programs for A219254, there is no canonical definition to state claims against.
-/

/-! ## A219254.P7732013131395050689

`A307598(A155082(n+1)%A000110(n))`
-/

namespace A219254.P7732013131395050689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (Int.tmod (A155082 (n + 1)) (A000110 n)).toNat

end

end A219254.P7732013131395050689

/-! ## A219254.P3542304993371282435

`∑{e}[A232394(A351008(n)), #]`
-/

namespace A219254.P3542304993371282435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232394 (A351008 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A219254.P3542304993371282435

/-! ## A219254.P6599206144661337447

`A355480(A026632(n))-A079872(n+1)`
-/

namespace A219254.P6599206144661337447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355480 (A026632 n).toNat - A079872 (n + 1)

end

end A219254.P6599206144661337447

/-! ## A219254.P3249638869286962682

`A128695(A008062(n+1))%A057475(n+1)`
-/

namespace A219254.P3249638869286962682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128695 (A008062 (n + 1)).toNat) (A057475 (n + 1))

end

end A219254.P3249638869286962682

/-!
# A219256: Numbers whose base 64 representation does not contain any of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 16, 17, 18, 24, 25, 32, 34, 36, 40, 44, 48, 50.

The programs for A219256, there is no canonical definition to state claims against.
-/

/-! ## A219256.P14549864873690553544

`lt[Δ[A378885(n+1)], A194443(2*(n+1))]`
-/

namespace A219256.P14549864873690553544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378885 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A219256.P14549864873690553544

/-! ## A219256.P10468084053647569460

`lt[A043281(A141214(n)), A330956(n)]`
-/

namespace A219256.P10468084053647569460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A141214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219256.P10468084053647569460

/-! ## A219256.P12325739244587447914

`lt[A069608(A251072(n)), A324343(n)]`
-/

namespace A219256.P12325739244587447914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069608 (A251072 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219256.P12325739244587447914

/-!
# A219257: Numbers k such that 11*k+1 is a square.

The programs for A219257, the canonical program `A219257.P16144981537862826751` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219257 has offset 1).

The definition of A219257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219257.P16144981537862826751

`1/176*(22*(n+1)+7*(-1)^(n+1)-15)*(22*(n+1)+7*(-1)^(n+1)-7)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A219257

/-- `1/176*(22*(n+1)+7*(-1)^(n+1)-15)*(22*(n+1)+7*(-1)^(n+1)-7)` -/
def P16144981537862826751.Spec : Prop :=
  ∀ n, P16144981537862826751.a n = (A219257 (n + 1) : ℚ)

end A219257

/-! ## A219257.P2874590511507961602

`∑[n*(7*n%2+2)]`
-/

namespace A219257.P2874590511507961602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (7 * (n % 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P2874590511507961602

namespace A219257

/-- `∑[n*(7*n%2+2)]` -/
def P2874590511507961602.Spec : Prop :=
  ∀ n, (P2874590511507961602.a n : ℤ) = A219257 (n + 1)

end A219257

/-! ## A219257.P9188088025164863117

`∑[n*(gcd(2, n+1)^3+1)]`
-/

namespace A219257.P9188088025164863117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 2 (n + 1) ^ 3 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P9188088025164863117

namespace A219257

/-- `∑[n*(gcd(2, n+1)^3+1)]` -/
def P9188088025164863117.Spec : Prop :=
  ∀ n, (P9188088025164863117.a n : ℤ) = A219257 (n + 1)

end A219257

/-! ## A219257.P15557651531362369186

`∑[n*(and(1, n)+1)^3+n]`
-/

namespace A219257.P15557651531362369186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 1) ^ 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P15557651531362369186

namespace A219257

/-- `∑[n*(and(1, n)+1)^3+n]` -/
def P15557651531362369186.Spec : Prop :=
  ∀ n, (P15557651531362369186.a n : ℤ) = A219257 (n + 1)

end A219257

/-! ## A219257.P449046070251684981

`∑[7*n*and(1, n)+2*n]`
-/

namespace A219257.P449046070251684981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n * Nat.land 1 n + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P449046070251684981

namespace A219257

/-- `∑[7*n*and(1, n)+2*n]` -/
def P449046070251684981.Spec : Prop :=
  ∀ n, (P449046070251684981.a n : ℤ) = A219257 (n + 1)

end A219257

/-! ## A219257.P17524741481298303538

`A394829(n)+∑[n]`
-/

namespace A219257.P17524741481298303538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394829 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A219257.P17524741481298303538

namespace A219257

/-- `A394829(n)+∑[n]` -/
def P17524741481298303538.Spec : Prop :=
  ∀ n, P17524741481298303538.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P15257934098666648120

`∑[n*A010699(n)]`
-/

namespace A219257.P15257934098666648120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P15257934098666648120

namespace A219257

/-- `∑[n*A010699(n)]` -/
def P15257934098666648120.Spec : Prop :=
  ∀ n, P15257934098666648120.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P16294863599615157135

`floor(A179338(n+1)/10)`
-/

namespace A219257.P16294863599615157135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179338 (n + 1) : ℚ) / 10⌋

end

end A219257.P16294863599615157135

namespace A219257

/-- `floor(A179338(n+1)/10)` -/
def P16294863599615157135.Spec : Prop :=
  ∀ n, P16294863599615157135.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P8942554262798557708

`∑[n*(A010689(n)+1)]`
-/

namespace A219257.P8942554262798557708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010689 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P8942554262798557708

namespace A219257

/-- `∑[n*(A010689(n)+1)]` -/
def P8942554262798557708.Spec : Prop :=
  ∀ n, P8942554262798557708.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P11964546510414199113

`∑[n*(A010678(n)+2)]`
-/

namespace A219257.P11964546510414199113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010678 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P11964546510414199113

namespace A219257

/-- `∑[n*(A010678(n)+2)]` -/
def P11964546510414199113.Spec : Prop :=
  ∀ n, P11964546510414199113.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P6324553818862639265

`∑[n*(A010708(n)-1)]`
-/

namespace A219257.P6324553818862639265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010708 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P6324553818862639265

namespace A219257

/-- `∑[n*(A010708(n)-1)]` -/
def P6324553818862639265.Spec : Prop :=
  ∀ n, P6324553818862639265.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P11078141240541299389

`∑[n]+A219395(n+1)/2`
-/

namespace A219257.P11078141240541299389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A219395 (n + 1) : ℚ) / 2

end

end A219257.P11078141240541299389

namespace A219257

/-- `∑[n]+A219395(n+1)/2` -/
def P11078141240541299389.Spec : Prop :=
  ∀ n, P11078141240541299389.a n = (A219257 (n + 1) : ℚ)

end A219257

/-! ## A219257.P17164551874395620315

`A298037(n)-A212965(n)`
-/

namespace A219257.P17164551874395620315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 n - A212965 n

end

end A219257.P17164551874395620315

namespace A219257

/-- `A298037(n)-A212965(n)` -/
def P17164551874395620315.Spec : Prop :=
  ∀ n, P17164551874395620315.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P2775226944546825949

`A132356(n)+A001057(n)²`
-/

namespace A219257.P2775226944546825949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n + A001057 n ^ 2

end

end A219257.P2775226944546825949

namespace A219257

/-- `A132356(n)+A001057(n)²` -/
def P2775226944546825949.Spec : Prop :=
  ∀ n, P2775226944546825949.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P13346477492038941109

`A219191(n+1)+A074378(n)`
-/

namespace A219257.P13346477492038941109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219191 (n + 1) + A074378 n

end

end A219257.P13346477492038941109

namespace A219257

/-- `A219191(n+1)+A074378(n)` -/
def P13346477492038941109.Spec : Prop :=
  ∀ n, P13346477492038941109.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P15916028359758364989

`A154260(n+1)+A152749(n)`
-/

namespace A219257.P15916028359758364989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154260 (n + 1) + A152749 n

end

end A219257.P15916028359758364989

namespace A219257

/-- `A154260(n+1)+A152749(n)` -/
def P15916028359758364989.Spec : Prop :=
  ∀ n, P15916028359758364989.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P16072496376234929211

`A124080(n)-A218864(n+1)`
-/

namespace A219257.P16072496376234929211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n - A218864 (n + 1)

end

end A219257.P16072496376234929211

namespace A219257

/-- `A124080(n)-A218864(n+1)` -/
def P16072496376234929211.Spec : Prop :=
  ∀ n, P16072496376234929211.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P302663348600641887

`A274757(n+1)-A110660(n)`
-/

namespace A219257.P302663348600641887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274757 (n + 1) - A110660 n

end

end A219257.P302663348600641887

namespace A219257

/-- `A274757(n+1)-A110660(n)` -/
def P302663348600641887.Spec : Prop :=
  ∀ n, P302663348600641887.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P17034829967288394087

`∑[A008593(n)-2*A195312(n)]`
-/

namespace A219257.P17034829967288394087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n - 2 * A195312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P17034829967288394087

namespace A219257

/-- `∑[A008593(n)-2*A195312(n)]` -/
def P17034829967288394087.Spec : Prop :=
  ∀ n, P17034829967288394087.a n = A219257 (n + 1)

end A219257

/-! ## A219257.P3065535193959566964

`∑[A347365(n)+lcm(2, A347365(n))]`
-/

namespace A219257.P3065535193959566964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 n + (Int.lcm 2 (A347365 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219257.P3065535193959566964

namespace A219257

/-- `∑[A347365(n)+lcm(2, A347365(n))]` -/
def P3065535193959566964.Spec : Prop :=
  ∀ n, P3065535193959566964.a n = A219257 (n + 1)

end A219257

/-!
# A219258: Numbers k such that 27*k+1 is a square.

The programs for A219258, the canonical program `A219258.P734660565961111728` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219258 has offset 1).

The definition of A219258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219258.P734660565961111728

`∑[23*n*n%2+2*n]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A219258

/-- `∑[23*n*n%2+2*n]` -/
def P734660565961111728.Spec : Prop :=
  ∀ n, (P734660565961111728.a n : ℤ) = A219258 (n + 1)

theorem P734660565961111728.correct : P734660565961111728.Spec := by
  intro n
  simp only [A219258, Nat.add_sub_cancel]

end A219258

/-! ## A219258.P17791914496530538374

`∑[n*(A010685(n)!+1)]`
-/

namespace A219258.P17791914496530538374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.factorial (A010685 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219258.P17791914496530538374

namespace A219258

/-- `∑[n*(A010685(n)!+1)]` -/
def P17791914496530538374.Spec : Prop :=
  ∀ n, (P17791914496530538374.a n : ℤ) = A219258 (n + 1)

end A219258

/-! ## A219258.P13317567719134849935

`23*A008794(n+1)+n²+n`
-/

namespace A219258.P13317567719134849935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A008794 (n + 1) + (n ^ 2 + n : ℤ)

end

end A219258.P13317567719134849935

namespace A219258

/-- `23*A008794(n+1)+n²+n` -/
def P13317567719134849935.Spec : Prop :=
  ∀ n, P13317567719134849935.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P6719330686038960723

`∑[n*(A040156(n)-A040155(n))]`
-/

namespace A219258.P6719330686038960723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A040156 n - A040155 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219258.P6719330686038960723

namespace A219258

/-- `∑[n*(A040156(n)-A040155(n))]` -/
def P6719330686038960723.Spec : Prop :=
  ∀ n, P6719330686038960723.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P579194598581389221

`∑[n*(A040651(n)-A040649(n))]`
-/

namespace A219258.P579194598581389221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A040651 n - A040649 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219258.P579194598581389221

namespace A219258

/-- `∑[n*(A040651(n)-A040649(n))]` -/
def P579194598581389221.Spec : Prop :=
  ∀ n, P579194598581389221.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P15181382803737867411

`∑[n*xor(A040139(n), A040156(n))]`
-/

namespace A219258.P15181382803737867411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor (A040139 n) (A040156 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219258.P15181382803737867411

namespace A219258

/-- `∑[n*xor(A040139(n), A040156(n))]` -/
def P15181382803737867411.Spec : Prop :=
  ∀ n, P15181382803737867411.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P6671509702050463697

`2*A219394(n+1)-A132354(n)`
-/

namespace A219258.P6671509702050463697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219394 (n + 1) - A132354 n

end

end A219258.P6671509702050463697

namespace A219258

/-- `2*A219394(n+1)-A132354(n)` -/
def P6671509702050463697.Spec : Prop :=
  ∀ n, P6671509702050463697.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P14178820390829300417

`2*A219259(n+1)-A219393(n+1)`
-/

namespace A219258.P14178820390829300417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219259 (n + 1) - A219393 (n + 1)

end

end A219258.P14178820390829300417

namespace A219258

/-- `2*A219259(n+1)-A219393(n+1)` -/
def P14178820390829300417.Spec : Prop :=
  ∀ n, P14178820390829300417.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P15659877374528256327

`2*A219396(n+1)-A219257(n+1)`
-/

namespace A219258.P15659877374528256327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219396 (n + 1) - A219257 (n + 1)

end

end A219258.P15659877374528256327

namespace A219258

/-- `2*A219396(n+1)-A219257(n+1)` -/
def P15659877374528256327.Spec : Prop :=
  ∀ n, P15659877374528256327.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P11122173028960252220

`2*A219392(n+1)-A219394(n+1)`
-/

namespace A219258.P11122173028960252220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219392 (n + 1) - A219394 (n + 1)

end

end A219258.P11122173028960252220

namespace A219258

/-- `2*A219392(n+1)-A219394(n+1)` -/
def P11122173028960252220.Spec : Prop :=
  ∀ n, P11122173028960252220.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P8304665564452240987

`2*A219393(n+1)-A219396(n+1)`
-/

namespace A219258.P8304665564452240987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219393 (n + 1) - A219396 (n + 1)

end

end A219258.P8304665564452240987

namespace A219258

/-- `2*A219393(n+1)-A219396(n+1)` -/
def P8304665564452240987.Spec : Prop :=
  ∀ n, P8304665564452240987.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P12114044625013673095

`A113801(n+1)²-A175886(n+1)²`
-/

namespace A219258.P12114044625013673095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1) ^ 2 - A175886 (n + 1) ^ 2

end

end A219258.P12114044625013673095

namespace A219258

/-- `A113801(n+1)²-A175886(n+1)²` -/
def P12114044625013673095.Spec : Prop :=
  ∀ n, P12114044625013673095.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P16144371229911422649

`∑[n*A114205(A020639(3*(n+1))+2)]`
-/

namespace A219258.P16144371229911422649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A114205 (A020639 (3 * (n + 1)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219258.P16144371229911422649

namespace A219258

/-- `∑[n*A114205(A020639(3*(n+1))+2)]` -/
def P16144371229911422649.Spec : Prop :=
  ∀ n, P16144371229911422649.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P14012016738529684007

`A219392(n+1)+A394829(n)-A074378(n)`
-/

namespace A219258.P14012016738529684007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219392 (n + 1) + (A394829 n - A074378 n)

end

end A219258.P14012016738529684007

namespace A219258

/-- `A219392(n+1)+A394829(n)-A074378(n)` -/
def P14012016738529684007.Spec : Prop :=
  ∀ n, P14012016738529684007.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P5749959075740247130

`A219389(n+1)+A219395(n+1)-A002378(n)`
-/

namespace A219258.P5749959075740247130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219389 (n + 1) + (A219395 (n + 1) - A002378 n)

end

end A219258.P5749959075740247130

namespace A219258

/-- `A219389(n+1)+A219395(n+1)-A002378(n)` -/
def P5749959075740247130.Spec : Prop :=
  ∀ n, P5749959075740247130.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P5101201902753525240

`A217441(n+1)+A219257(n+1)-A132356(n)`
-/

namespace A219258.P5101201902753525240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217441 (n + 1) + (A219257 (n + 1) - A132356 n)

end

end A219258.P5101201902753525240

namespace A219258

/-- `A217441(n+1)+A219257(n+1)-A132356(n)` -/
def P5101201902753525240.Spec : Prop :=
  ∀ n, P5101201902753525240.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P13739693203937055696

`A219390(n+1)+A219393(n+1)-A132356(n)`
-/

namespace A219258.P13739693203937055696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219390 (n + 1) + (A219393 (n + 1) - A132356 n)

end

end A219258.P13739693203937055696

namespace A219258

/-- `A219390(n+1)+A219393(n+1)-A132356(n)` -/
def P13739693203937055696.Spec : Prop :=
  ∀ n, P13739693203937055696.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P10952280994139565787

`A219395(n+1)+A219396(n+1)-A132356(n)`
-/

namespace A219258.P10952280994139565787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219395 (n + 1) + (A219396 (n + 1) - A132356 n)

end

end A219258.P10952280994139565787

namespace A219258

/-- `A219395(n+1)+A219396(n+1)-A132356(n)` -/
def P10952280994139565787.Spec : Prop :=
  ∀ n, P10952280994139565787.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P5949697288302748270

`A219393(n+1)+A394829(n)-A219190(n+1)`
-/

namespace A219258.P5949697288302748270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219393 (n + 1) + (A394829 n - A219190 (n + 1))

end

end A219258.P5949697288302748270

namespace A219258

/-- `A219393(n+1)+A394829(n)-A219190(n+1)` -/
def P5949697288302748270.Spec : Prop :=
  ∀ n, P5949697288302748270.a n = A219258 (n + 1)

end A219258

/-! ## A219258.P8662424712631310802

`A219257(n+1)+A219396(n+1)-A001082(n+1)`
-/

namespace A219258.P8662424712631310802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219396 (n + 1) - A001082 (n + 1))

end

end A219258.P8662424712631310802

namespace A219258

/-- `A219257(n+1)+A219396(n+1)-A001082(n+1)` -/
def P8662424712631310802.Spec : Prop :=
  ∀ n, P8662424712631310802.a n = A219258 (n + 1)

end A219258

/-!
# A219259: Numbers k such that 25*k+1 is a square.

The programs for A219259, the canonical program `A219259.P9659759675578563573` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219259 has offset 1).

The definition of A219259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219259.P9659759675578563573

`∑[3*n*A010689(n)-n]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A219259

/-- `∑[3*n*A010689(n)-n]` -/
def P9659759675578563573.Spec : Prop :=
  ∀ n, P9659759675578563573.a n = A219259 (n + 1)

theorem P9659759675578563573.correct : P9659759675578563573.Spec := by
  intro n
  simp only [A219259, Nat.add_sub_cancel]

end A219259

/-! ## A219259.P7199192750432461022

`∑[n*A237813(Δ[or(1, n)]+1)]`
-/

namespace A219259.P7199192750432461022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A237813 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219259.P7199192750432461022

namespace A219259

/-- `∑[n*A237813(Δ[or(1, n)]+1)]` -/
def P7199192750432461022.Spec : Prop :=
  ∀ n, P7199192750432461022.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P12739719635504832852

`A394829(n)+A157716(n+1)`
-/

namespace A219259.P12739719635504832852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394829 n + A157716 (n + 1)

end

end A219259.P12739719635504832852

namespace A219259

/-- `A394829(n)+A157716(n+1)` -/
def P12739719635504832852.Spec : Prop :=
  ∀ n, P12739719635504832852.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P2332498780494012703

`∑[n*(A040156(n)-A040139(n))]`
-/

namespace A219259.P2332498780494012703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A040156 n - A040139 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219259.P2332498780494012703

namespace A219259

/-- `∑[n*(A040156(n)-A040139(n))]` -/
def P2332498780494012703.Spec : Prop :=
  ∀ n, P2332498780494012703.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P5458889643121966331

`∑[n*A020639(A020639(n+1)+21)]`
-/

namespace A219259.P5458889643121966331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020639 (A020639 (n + 1) + 21).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219259.P5458889643121966331

namespace A219259

/-- `∑[n*A020639(A020639(n+1)+21)]` -/
def P5458889643121966331.Spec : Prop :=
  ∀ n, P5458889643121966331.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P16195597185523652733

`∑[n*A226490(gcd(n+1, A002522(n)))]`
-/

namespace A219259.P16195597185523652733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A226490 (Int.gcd (n + 1 : ℤ) (A002522 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219259.P16195597185523652733

namespace A219259

/-- `∑[n*A226490(gcd(n+1, A002522(n)))]` -/
def P16195597185523652733.Spec : Prop :=
  ∀ n, P16195597185523652733.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P3245103986371138087

`2*A219390(n+1)-A001082(n+1)`
-/

namespace A219259.P3245103986371138087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219390 (n + 1) - A001082 (n + 1)

end

end A219259.P3245103986371138087

namespace A219259

/-- `2*A219390(n+1)-A001082(n+1)` -/
def P3245103986371138087.Spec : Prop :=
  ∀ n, P3245103986371138087.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P3454070012123941345

`2*A217441(n+1)-A219258(n+1)`
-/

namespace A219259.P3454070012123941345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217441 (n + 1) - A219258 (n + 1)

end

end A219259.P3454070012123941345

namespace A219259

/-- `2*A217441(n+1)-A219258(n+1)` -/
def P3454070012123941345.Spec : Prop :=
  ∀ n, P3454070012123941345.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P13525189667276413757

`2*A219395(n+1)-A219257(n+1)`
-/

namespace A219259.P13525189667276413757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219395 (n + 1) - A219257 (n + 1)

end

end A219259.P13525189667276413757

namespace A219259

/-- `2*A219395(n+1)-A219257(n+1)` -/
def P13525189667276413757.Spec : Prop :=
  ∀ n, P13525189667276413757.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P10855472182857348975

`(A219393(n+1)+A219258(n+1))/2`
-/

namespace A219259.P10855472182857348975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219393 (n + 1) + A219258 (n + 1) : ℚ) / 2

end

end A219259.P10855472182857348975

namespace A219259

/-- `(A219393(n+1)+A219258(n+1))/2` -/
def P10855472182857348975.Spec : Prop :=
  ∀ n, P10855472182857348975.a n = (A219259 (n + 1) : ℚ)

end A219259

/-! ## A219259.P7682331488598350137

`2*A219392(n+1)-A219396(n+1)`
-/

namespace A219259.P7682331488598350137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219392 (n + 1) - A219396 (n + 1)

end

end A219259.P7682331488598350137

namespace A219259

/-- `2*A219392(n+1)-A219396(n+1)` -/
def P7682331488598350137.Spec : Prop :=
  ∀ n, P7682331488598350137.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P1881518009807094278

`2*A219396(n+1)-A219389(n+1)`
-/

namespace A219259.P1881518009807094278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219396 (n + 1) - A219389 (n + 1)

end

end A219259.P1881518009807094278

namespace A219259

/-- `2*A219396(n+1)-A219389(n+1)` -/
def P1881518009807094278.Spec : Prop :=
  ∀ n, P1881518009807094278.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P7562993673909115846

`A175886(n+1)²-A091998(n+1)²`
-/

namespace A219259.P7562993673909115846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (n + 1) ^ 2 - A091998 (n + 1) ^ 2

end

end A219259.P7562993673909115846

namespace A219259

/-- `A175886(n+1)²-A091998(n+1)²` -/
def P7562993673909115846.Spec : Prop :=
  ∀ n, P7562993673909115846.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P9121514461511812171

`A219396(n+1)+A132356(n)-A002378(n)`
-/

namespace A219259.P9121514461511812171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219396 (n + 1) + (A132356 n - A002378 n)

end

end A219259.P9121514461511812171

namespace A219259

/-- `A219396(n+1)+A132356(n)-A002378(n)` -/
def P9121514461511812171.Spec : Prop :=
  ∀ n, P9121514461511812171.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P18185821754339512523

`A157716(n+1)+A219257(n+1)-A000217(n)`
-/

namespace A219259.P18185821754339512523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157716 (n + 1) + (A219257 (n + 1) - A000217 n)

end

end A219259.P18185821754339512523

namespace A219259

/-- `A157716(n+1)+A219257(n+1)-A000217(n)` -/
def P18185821754339512523.Spec : Prop :=
  ∀ n, P18185821754339512523.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P942478161438441534

`A219257(n+1)+A219395(n+1)-A002378(n)`
-/

namespace A219259.P942478161438441534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) + (A219395 (n + 1) - A002378 n)

end

end A219259.P942478161438441534

namespace A219259

/-- `A219257(n+1)+A219395(n+1)-A002378(n)` -/
def P942478161438441534.Spec : Prop :=
  ∀ n, P942478161438441534.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P11996080833124331303

`A217441(n+1)+A132356(n)-A219257(n+1)`
-/

namespace A219259.P11996080833124331303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217441 (n + 1) + (A132356 n - A219257 (n + 1))

end

end A219259.P11996080833124331303

namespace A219259

/-- `A217441(n+1)+A132356(n)-A219257(n+1)` -/
def P11996080833124331303.Spec : Prop :=
  ∀ n, P11996080833124331303.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P12214490384655521204

`A219389(n+1)+A219392(n+1)-A132356(n)`
-/

namespace A219259.P12214490384655521204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219389 (n + 1) + (A219392 (n + 1) - A132356 n)

end

end A219259.P12214490384655521204

namespace A219259

/-- `A219389(n+1)+A219392(n+1)-A132356(n)` -/
def P12214490384655521204.Spec : Prop :=
  ∀ n, P12214490384655521204.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P850717012360015842

`A219394(n+1)+A219395(n+1)-A132356(n)`
-/

namespace A219259.P850717012360015842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219394 (n + 1) + (A219395 (n + 1) - A132356 n)

end

end A219259.P850717012360015842

namespace A219259

/-- `A219394(n+1)+A219395(n+1)-A132356(n)` -/
def P850717012360015842.Spec : Prop :=
  ∀ n, P850717012360015842.a n = A219259 (n + 1)

end A219259

/-! ## A219259.P71108352508565107

`A036666(n+1)+A219393(n+1)-A001082(n+1)`
-/

namespace A219259.P71108352508565107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) + (A219393 (n + 1) - A001082 (n + 1))

end

end A219259.P71108352508565107

namespace A219259

/-- `A036666(n+1)+A219393(n+1)-A001082(n+1)` -/
def P71108352508565107.Spec : Prop :=
  ∀ n, P71108352508565107.a n = A219259 (n + 1)

end A219259

/-!
# A219260: G.f. satisfies: A(x) = exp(Sum_{n>=1} x^n*A(x)^n/n * Product_{k>=1} (1 + x^(n*k)*A(x^k)^n)).

The programs for A219260, there is no canonical definition to state claims against.
-/

/-! ## A219260.P11975507286518852615

`A004525(A347589(n)+A150119(n))`
-/

namespace A219260.P11975507286518852615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A347589 n + A150119 n).toNat

end

end A219260.P11975507286518852615

/-! ## A219260.P17697151038433940243

`floor(A127384(2*n)^γ)`
-/

namespace A219260.P17697151038433940243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127384 (2 * n) : ℝ) ^ Real.eulerMascheroniConstant⌋

end

end A219260.P17697151038433940243

/-! ## A219260.P185487473168392674

`A138999(A150102(n+1))`
-/

namespace A219260.P185487473168392674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A150102 (n + 1)).toNat

end

end A219260.P185487473168392674

/-!
# A219261: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n*A(x^n)/n * Product_{k>=1} (1 + x^(n*k)*A(x^n)^k) ).

The programs for A219261, there is no canonical definition to state claims against.
-/

/-! ## A219261.P7164345003397564310

`A127757(A027109(n)+1)`
-/

namespace A219261.P7164345003397564310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A027109 n + 1).toNat

end

end A219261.P7164345003397564310

/-! ## A219261.P12345604101397169691

`A157481(A199296(n+1))+1`
-/

namespace A219261.P12345604101397169691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157481 (A199296 (n + 1)).toNat + 1

end

end A219261.P12345604101397169691

/-! ## A219261.P1959418555585573783

`A246261((2*∑{e}[n+1, #])^A004125(n+1))`
-/

namespace A219261.P1959418555585573783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (SequenceMachineLib.roundAway (((2 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℕ) : ℚ) ^ (A004125 (n + 1) : ℤ))).toNat

end

end A219261.P1959418555585573783

/-!
# A219262: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n*A(x)^n/n / Product_{k>=1} (1 - x^(n*k)*A(x^k)^n) ).

The programs for A219262, there is no canonical definition to state claims against.
-/

/-! ## A219262.P15008377938438053662

`A014681(A063895(2*(n+1)))-1`
-/

namespace A219262.P15008377938438053662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A063895 (2 * (n + 1))).toNat - 1

end

end A219262.P15008377938438053662

/-! ## A219262.P18111380528454498977

`A195174(A082307(n)+A076876(n))`
-/

namespace A219262.P18111380528454498977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A082307 n + A076876 n).toNat

end

end A219262.P18111380528454498977

/-! ## A219262.P8078057571319043298

`A266193(A007226(n)-A003415(n))`
-/

namespace A219262.P8078057571319043298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A007226 n - A003415 n).toNat

end

end A219262.P8078057571319043298

/-!
# A219263: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n*A(x^n)/n / Product_{k>=1} (1 - x^(n*k)*A(x^n)^k) ).

The programs for A219263, there is no canonical definition to state claims against.
-/

/-! ## A219263.P16976154712577096377

`A008621(ceil(4^n/2)+n!)`
-/

namespace A219263.P16976154712577096377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (⌈(4 ^ n : ℚ) / 2⌉ + (Nat.factorial n : ℤ)).toNat

end

end A219263.P16976154712577096377

/-! ## A219263.P12408712022908256766

`A008621(or(n!, ceil(4^n/2)))`
-/

namespace A219263.P12408712022908256766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor (Nat.factorial n : ℤ) ⌈(4 ^ n : ℚ) / 2⌉).toNat

end

end A219263.P12408712022908256766

/-! ## A219263.P2542175749326637524

`A085182(A150634(n))`
-/

namespace A219263.P2542175749326637524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085182 (A150634 n).toNat

end

end A219263.P2542175749326637524

/-!
# A219264: O.g.f. satisfies: A(x) = Sum_{n>=0} A(n*x)^n * (n^2*x)^n/n! * exp(-n^2*x*A(n*x)).

The programs for A219264, there is no canonical definition to state claims against.
-/

/-! ## A219264.P17749302416044171931

`A366806(A000182(n+1)-1)`
-/

namespace A219264.P17749302416044171931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366806 (A000182 (n + 1) - 1).toNat

end

end A219264.P17749302416044171931

/-!
# A219265: O.g.f. satisfies: A(x) = Sum_{n>=0} A(n^2*x)^n * (n^2*x)^n/n! * exp(-n^2*x*A(n^2*x)).

The programs for A219265, there is no canonical definition to state claims against.
-/

/-! ## A219265.P10250635771289172010

`A164707(A063170(n)-n)`
-/

namespace A219265.P10250635771289172010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (A063170 n - (n : ℤ)).toNat

end

end A219265.P10250635771289172010

/-!
# A219268: Logarithmic derivative of A001142, where A001142(n) = product{k=1..n} k^k/k!.

The programs for A219268, there is no canonical definition to state claims against.
-/

/-! ## A219268.P12384840760521574425

`A214700((2-char[1])^n)+Δ[A240936(n)]`
-/

namespace A219268.P12384840760521574425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240936 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214700 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ n).toNat + (f2 (n + 1) - f2 n)

end

end A219268.P12384840760521574425

/-!
# A219269: G.f. satisfies: A(x) = Sum_{n>=0} x^n/A(x)^n * Product_{k=0..n} k!.

The programs for A219269, there is no canonical definition to state claims against.
-/

/-! ## A219269.P15112987213854032472

`A102551(C(n, 2)!+1)`
-/

namespace A219269.P15112987213854032472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102551 (Nat.factorial (Nat.choose n 2) + 1)

end

end A219269.P15112987213854032472

/-!
# A219270: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^n * Product_{k=0..n} k!.

The programs for A219270, there is no canonical definition to state claims against.
-/

/-! ## A219270.P15593314371202138881

`A228323(∏[n!])`
-/

namespace A219270.P15593314371202138881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228323 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A219270.P15593314371202138881

/-!
# A219273: Number of standard Young tableaux for all partitions of nonnegative integers into distinct parts with largest part <= n.

The programs for A219273, there is no canonical definition to state claims against.
-/

/-! ## A219273.P17386640341174679684

`∑[A219275(n)]`
-/

namespace A219273.P17386640341174679684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219273.P17386640341174679684

/-! ## A219273.P15074474298073976582

`a(n-1)+A219275(A000038(n)+n)` with `a(0)=1`
-/

namespace A219273.P15074474298073976582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A219275 (A000038 n + (n : ℤ)).toNat

end

end A219273.P15074474298073976582

/-! ## A219273.P10654604273073826764

`a(n-1)+A219275(n)+A122180(n+1)` with `a(0)=1`
-/

namespace A219273.P10654604273073826764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A219275 n + A122180 (n + 1))

end

end A219273.P10654604273073826764

/-! ## A219273.P18290744783664902558

`a(n-1)+gcd(2, A016813(n))*A219275(n)` with `a(0)=1`
-/

namespace A219273.P18290744783664902558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Int.gcd 2 (A016813 n) : ℤ) * A219275 n

end

end A219273.P18290744783664902558

/-! ## A219273.P3583777307133547491

`a(n-1)+A219275(n)^A146193(n+1)` with `a(0)=1`
-/

namespace A219273.P3583777307133547491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A219275 n : ℚ) ^ (A146193 (n + 1) : ℤ)

end

end A219273.P3583777307133547491

/-!
# A219275: Number of standard Young tableaux for partitions of nonnegative integers into distinct parts with largest part n.

The programs for A219275, there is no canonical definition to state claims against.
-/

/-! ## A219275.P1731126992099531695

`A065458(A332745(n²))`
-/

namespace A219275.P1731126992099531695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065458 (A332745 (n ^ 2)).toNat

end

end A219275.P1731126992099531695

/-!
# A219276: Numbers n such that T_4(n) is prime, where T_4(x) = 8x^4 - 8x^2 + 1 is the fourth Chebyshev polynomial (of the first kind).

The programs for A219276, there is no canonical definition to state claims against.
-/

/-! ## A219276.P15261404158293146145

`eq[2, A230362(A058331(n))]`
-/

namespace A219276.P15261404158293146145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (A058331 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219276.P15261404158293146145

/-! ## A219276.P16399858631049602664

`A128227(∩[A066049(n+1), A056220(n)])`
-/

namespace A219276.P16399858631049602664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A219276.P16399858631049602664

/-! ## A219276.P2263790734019475335

`∑[A248141(A249751(n+1))]`
-/

namespace A219276.P2263790734019475335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248141 (A249751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219276.P2263790734019475335

/-! ## A219276.P16569831024508999029

`A328212(n+1)+A088601(A087431(n)/A088601(n+1))`
-/

namespace A219276.P16569831024508999029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328212 (n + 1) + A088601 (SequenceMachineLib.roundAway ((A087431 n : ℚ) / (A088601 (n + 1) : ℚ))).toNat

end

end A219276.P16569831024508999029

/-! ## A219276.P12977721754324128180

`A332292(A238874(2*n))+A332276(n+1)`
-/

namespace A219276.P12977721754324128180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332292 (A238874 (2 * n)).toNat + A332276 (n + 1)

end

end A219276.P12977721754324128180

/-!
# A219281: Smallest number k such that ChebyshevT[2^n, k] is prime.

The programs for A219281, there is no canonical definition to state claims against.
-/

/-! ## A219281.P5695223413196326747

`A191546(a(n-1)+1)+1` with `a(0)=2, a(1)=2, a(2)=2, a(3)=3, a(4)=2`
-/

namespace A219281.P5695223413196326747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 3, 2] fun n a =>
  A191546 (a (n - 1) + 1).toNat + 1

end

end A219281.P5695223413196326747

/-! ## A219281.P10202531106092027323

`A240850(A109222(n))+1`
-/

namespace A219281.P10202531106092027323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240850 (A109222 n).toNat + 1

end

end A219281.P10202531106092027323

/-! ## A219281.P4234018663432898673

`A237591(A218374(n)+2)`
-/

namespace A219281.P4234018663432898673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (A218374 n + 2).toNat

end

end A219281.P4234018663432898673

/-!
# A219282: Number of superdiagonal bargraphs with area n.

The programs for A219282, there is no canonical definition to state claims against.
-/

/-! ## A219282.P11715861355935466769

`abs(Δ[A063978(abs(1-n))])`
-/

namespace A219282.P11715861355935466769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063978 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A219282.P11715861355935466769

/-! ## A219282.P7936990185925012998

`∑[A238874(C(n, n²)+n-1)]`
-/

namespace A219282.P7936990185925012998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238874 ((Nat.choose n (n ^ 2) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219282.P7936990185925012998

/-! ## A219282.P7694832306765659540

`A238874(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A219282.P7694832306765659540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A238874 (n - 1) + a (n - 1)

end

end A219282.P7694832306765659540

/-! ## A219282.P851269397897824813

`∑[A238874(n)]-A238874(A028310(n))`
-/

namespace A219282.P851269397897824813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A238874 (A028310 n).toNat

end

end A219282.P851269397897824813

/-! ## A219282.P1543280231315936929

`Δ[A063978(n)]-A238874(A028310(n))`
-/

namespace A219282.P1543280231315936929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A238874 (A028310 n).toNat

end

end A219282.P1543280231315936929

/-! ## A219282.P3821477578173639605

`∑[A238874(n)]-A238874(n)%A238859(n)`
-/

namespace A219282.P3821477578173639605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A238874 n) (A238859 n)

end

end A219282.P3821477578173639605

/-! ## A219282.P1631963727375207463

`A352521(∑[n])`
-/

namespace A219282.P1631963727375207463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352521 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219282.P1631963727375207463

/-!
# A219285: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X n array.

The programs for A219285, there is no canonical definition to state claims against.
-/

/-! ## A219285.P18186790354024218148

`A219291(∑[4*n]+1)`
-/

namespace A219285.P18186790354024218148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219285.P18186790354024218148

/-! ## A219285.P156665356120363240

`∑{digits}[n, A219291(A001844(#))]`
-/

namespace A219285.P156665356120363240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219291 (A001844 x).toNat).sum

end

end A219285.P156665356120363240

/-! ## A219285.P14733161774585388025

`record[A219291(Δ[A235355(n)])]`
-/

namespace A219285.P14733161774585388025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219285.P14733161774585388025

/-! ## A219285.P15975518794258814840

`A219291(A001844(n))+char[10]`
-/

namespace A219285.P15975518794258814840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219285.P15975518794258814840

/-! ## A219285.P7471430852690843866

`record[A219291(A240134(n+1)+1)]`
-/

namespace A219285.P7471430852690843866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A240134 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219285.P7471430852690843866

/-!
# A219286: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 3 array.

The programs for A219286, the canonical program `A219286.P16691458441736972043` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219286 has offset 1).

The definition of A219286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219286.P16691458441736972043

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=6, a(2)=19, a(3)=42, a(4)=79, a(5)=136, a(6)=220`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A219286

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16691458441736972043.Spec : Prop :=
  ∀ n, P16691458441736972043.a n = A219286 (n + 1)

theorem P16691458441736972043.correct : P16691458441736972043.Spec := by
  intro n
  simp only [A219286, Nat.add_sub_cancel]

end A219286

/-! ## A219286.P16986131909876953463

`A051744(n+1)-A102762(n)`
-/

namespace A219286.P16986131909876953463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) - A102762 n

end

end A219286.P16986131909876953463

namespace A219286

/-- `A051744(n+1)-A102762(n)` -/
def P16986131909876953463.Spec : Prop :=
  ∀ n, P16986131909876953463.a n = A219286 (n + 1)

end A219286

/-! ## A219286.P10442137604787813431

`A005582(n)+(n+1)*(n+2)-A102762(n)`
-/

namespace A219286.P10442137604787813431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n + ((n + 1) * (n + 2) : ℤ) - A102762 n

end

end A219286.P10442137604787813431

namespace A219286

/-- `A005582(n)+(n+1)*(n+2)-A102762(n)` -/
def P10442137604787813431.Spec : Prop :=
  ∀ n, P10442137604787813431.a n = A219286 (n + 1)

end A219286

/-! ## A219286.P10381143125908155170

`A005286(n)+A145126(n)-A102762(n)`
-/

namespace A219286.P10381143125908155170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n + (A145126 n - A102762 n)

end

end A219286.P10381143125908155170

namespace A219286

/-- `A005286(n)+A145126(n)-A102762(n)` -/
def P10381143125908155170.Spec : Prop :=
  ∀ n, P10381143125908155170.a n = A219286 (n + 1)

end A219286

/-! ## A219286.P16367136100070119094

`A051744(n+1)-(A305559(2-A060576(n)+n)-A113679(n+1))`
-/

namespace A219286.P16367136100070119094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) - (A305559 (2 - A060576 n + (n : ℤ)).toNat - A113679 (n + 1))

end

end A219286.P16367136100070119094

namespace A219286

/-- `A051744(n+1)-(A305559(2-A060576(n)+n)-A113679(n+1))` -/
def P16367136100070119094.Spec : Prop :=
  ∀ n, P16367136100070119094.a n = A219286 (n + 1)

end A219286

/-! ## A219286.P12985166019885033207

`A051744(n+1)+record[A195159(n)]-A014209(n)`
-/

namespace A219286.P12985166019885033207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A014209 n)

end

end A219286.P12985166019885033207

namespace A219286

/-- `A051744(n+1)+record[A195159(n)]-A014209(n)` -/
def P12985166019885033207.Spec : Prop :=
  ∀ n, P12985166019885033207.a n = A219286 (n + 1)

end A219286

/-! ## A219286.P10861608286853617392

`A051744(n+1)+A113127(A004273(n))-A028347(n+2)`
-/

namespace A219286.P10861608286853617392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) + (A113127 (A004273 n).toNat - A028347 (n + 2))

end

end A219286.P10861608286853617392

namespace A219286

/-- `A051744(n+1)+A113127(A004273(n))-A028347(n+2)` -/
def P10861608286853617392.Spec : Prop :=
  ∀ n, P10861608286853617392.a n = A219286 (n + 1)

end A219286

/-! ## A219286.P10550547394341200097

`A051744(n+1)-or(2, A265410(n²+1)-1)`
-/

namespace A219286.P10550547394341200097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) - Int.lor 2 (A265410 (n ^ 2 + 1) - 1)

end

end A219286.P10550547394341200097

namespace A219286

/-- `A051744(n+1)-or(2, A265410(n²+1)-1)` -/
def P10550547394341200097.Spec : Prop :=
  ∀ n, P10550547394341200097.a n = A219286 (n + 1)

end A219286

/-! ## A219286.P3281181651153858905

`A051744(n+1)-or(2, A083479(A083479(n²))-1)`
-/

namespace A219286.P3281181651153858905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) - Int.lor 2 (A083479 (A083479 (n ^ 2)).toNat - 1)

end

end A219286.P3281181651153858905

namespace A219286

/-- `A051744(n+1)-or(2, A083479(A083479(n²))-1)` -/
def P3281181651153858905.Spec : Prop :=
  ∀ n, P3281181651153858905.a n = A219286 (n + 1)

end A219286

/-!
# A219287: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 4 array.

The programs for A219287, there is no canonical definition to state claims against.
-/

/-! ## A219287.P11633628843931704514

`A219291(A374004(n+1))`
-/

namespace A219287.P11633628843931704514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A374004 (n + 1)).toNat

end

end A219287.P11633628843931704514

/-! ## A219287.P655616819107093188

`A219291(A141214(n)+7)`
-/

namespace A219287.P655616819107093188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A141214 n + 7).toNat

end

end A219287.P655616819107093188

/-! ## A219287.P4379622985167970726

`A219291(A052905(n)+9)`
-/

namespace A219287.P4379622985167970726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A052905 n + 9).toNat

end

end A219287.P4379622985167970726

/-! ## A219287.P7959016314987760075

`A219291(A055999(n)+10)`
-/

namespace A219287.P7959016314987760075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A055999 n + 10).toNat

end

end A219287.P7959016314987760075

/-! ## A219287.P12802267891269577822

`A219291(Δ[A005586(n)]+5)`
-/

namespace A219287.P12802267891269577822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (f1 (n + 1) - f1 n + 5).toNat

end

end A219287.P12802267891269577822

/-!
# A219288: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX5 array.

The programs for A219288, there is no canonical definition to state claims against.
-/

/-! ## A219288.P15801096376247725313

`A219291(A374005(n+1))`
-/

namespace A219288.P15801096376247725313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A374005 (n + 1)).toNat

end

end A219288.P15801096376247725313

/-! ## A219288.P10363273043231409553

`A219291(A167499(n+3))`
-/

namespace A219288.P10363273043231409553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A167499 (n + 3)).toNat

end

end A219288.P10363273043231409553

/-! ## A219288.P4292794909907269308

`A219291(A077169(n+5))`
-/

namespace A219288.P4292794909907269308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A077169 (n + 5)).toNat

end

end A219288.P4292794909907269308

/-! ## A219288.P11787603853637253875

`A219291(A155212(n)+13)`
-/

namespace A219288.P11787603853637253875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A155212 n + 13).toNat

end

end A219288.P11787603853637253875

/-! ## A219288.P12314982220882740833

`A219291(A056000(n)+15)`
-/

namespace A219288.P12314982220882740833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A056000 n + 15).toNat

end

end A219288.P12314982220882740833

/-!
# A219289: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX6 array.

The programs for A219289, there is no canonical definition to state claims against.
-/

/-! ## A219289.P6946635169532537468

`A219291(A374007(n+1))`
-/

namespace A219289.P6946635169532537468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A374007 (n + 1)).toNat

end

end A219289.P6946635169532537468

/-! ## A219289.P15248429433532858991

`A219291(A112355(n+3)+6)`
-/

namespace A219289.P15248429433532858991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A112355 (n + 3) + 6).toNat

end

end A219289.P15248429433532858991

/-! ## A219289.P12899627194255626571

`A219291(A000096(n+4)+7)`
-/

namespace A219289.P12899627194255626571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A000096 (n + 4) + 7).toNat

end

end A219289.P12899627194255626571

/-! ## A219289.P501116439096684011

`A219291(A000217(n+5)+6)`
-/

namespace A219289.P501116439096684011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A000217 (n + 5) + 6).toNat

end

end A219289.P501116439096684011

/-! ## A219289.P17624931398616898457

`A219291(A052905(n+2)+11)`
-/

namespace A219289.P17624931398616898457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A052905 (n + 2) + 11).toNat

end

end A219289.P17624931398616898457

/-!
# A219290: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nX7 array.

The programs for A219290, there is no canonical definition to state claims against.
-/

/-! ## A219290.P4583579771866540873

`A219291(A374008(n+1))`
-/

namespace A219290.P4583579771866540873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A374008 (n + 1)).toNat

end

end A219290.P4583579771866540873

/-! ## A219290.P16622412622854315923

`A219291(eq[11, A066657(n)])`
-/

namespace A219290.P16622412622854315923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219290.P16622412622854315923

/-! ## A219290.P3623368754092890690

`A219291(A052905(n+3)+12)`
-/

namespace A219290.P3623368754092890690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (A052905 (n + 3) + 12).toNat

end

end A219290.P3623368754092890690

/-! ## A219290.P13215299408607878886

`A219291(eq[6, A002262(n)]+1)`
-/

namespace A219290.P13215299408607878886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A219290.P13215299408607878886

/-! ## A219290.P332906389512568591

`A219291(eq[8, A131818(n+1)])`
-/

namespace A219290.P332906389512568591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219290.P332906389512568591

/-!
# A219291: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 nXk array.

The programs for A219291, there is no canonical definition to state claims against.
-/

/-! ## A219291.P17926057639652197086

`A117707(A229428(n+1))-A059841(A007318(n))`
-/

namespace A219291.P17926057639652197086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A229428 (n + 1)).toNat - A059841 (A007318 n).toNat

end

end A219291.P17926057639652197086

/-! ## A219291.P5561465926954300615

`A117707(A229428(n+1))-A059841(A132823(n))`
-/

namespace A219291.P5561465926954300615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A229428 (n + 1)).toNat - A059841 (A132823 n).toNat

end

end A219291.P5561465926954300615

/-! ## A219291.P9502835432655788658

`A117707(A229428(n+1))-A059841(A323324(n))`
-/

namespace A219291.P9502835432655788658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A229428 (n + 1)).toNat - A059841 (A323324 n).toNat

end

end A219291.P9502835432655788658

/-! ## A219291.P13056473917938807662

`A117707(A229428(n+1))-A001222(A003989(n+1))`
-/

namespace A219291.P13056473917938807662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A229428 (n + 1)).toNat - A001222 (A003989 (n + 1)).toNat

end

end A219291.P13056473917938807662

/-!
# A219292: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X n array.

The programs for A219292, there is no canonical definition to state claims against.
-/

/-! ## A219292.P7473862796667325995

`A219299(∑[4*n]+1)`
-/

namespace A219292.P7473862796667325995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219292.P7473862796667325995

/-! ## A219292.P16881269025685708530

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A219299(n+1))]`
-/

namespace A219292.P16881269025685708530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A219299 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219292.P16881269025685708530

/-! ## A219292.P10031897117422740330

`record[A219299(Δ[A235355(n)])]`
-/

namespace A219292.P10031897117422740330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219292.P10031897117422740330

/-! ## A219292.P604893849891240466

`and(-1, A219299(A001844(n)))`
-/

namespace A219292.P604893849891240466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219299 (A001844 n).toNat)

end

end A219292.P604893849891240466

/-!
# A219293: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X 2 array.

The programs for A219293, the canonical program `A219293.P6489781556245026246` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219293 has offset 1).

The definition of A219293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219293.P6489781556245026246

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=7, a(2)=17, a(3)=35, a(4)=62, a(5)=103, a(6)=165`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A219293

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6489781556245026246.Spec : Prop :=
  ∀ n, P6489781556245026246.a n = A219293 (n + 1)

theorem P6489781556245026246.correct : P6489781556245026246.Spec := by
  intro n
  simp only [A219293, Nat.add_sub_cancel]

end A219293

/-! ## A219293.P15623158826411751660

`A219299(∑[n+1]+2)`
-/

namespace A219293.P15623158826411751660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219293.P15623158826411751660

namespace A219293

/-- `A219299(∑[n+1]+2)` -/
def P15623158826411751660.Spec : Prop :=
  ∀ n, P15623158826411751660.a n = A219293 (n + 1)

end A219293

/-! ## A219293.P575821162526238971

`A219299(A000096(n)+3)+char[16]`
-/

namespace A219293.P575821162526238971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219293.P575821162526238971

namespace A219293

/-- `A219299(A000096(n)+3)+char[16]` -/
def P575821162526238971.Spec : Prop :=
  ∀ n, P575821162526238971.a n = A219293 (n + 1)

end A219293

/-! ## A219293.P4998746107881703100

`A243832(n)+A219299(A133263(n+1))`
-/

namespace A219293.P4998746107881703100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243832 n + A219299 (A133263 (n + 1)).toNat

end

end A219293.P4998746107881703100

namespace A219293

/-- `A243832(n)+A219299(A133263(n+1))` -/
def P4998746107881703100.Spec : Prop :=
  ∀ n, P4998746107881703100.a n = A219293 (n + 1)

end A219293

/-! ## A219293.P16263224476624131151

`A219299(A133263(n+1))%A008891(n)`
-/

namespace A219293.P16263224476624131151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219299 (A133263 (n + 1)).toNat) (A008891 n)

end

end A219293.P16263224476624131151

namespace A219293

/-- `A219299(A133263(n+1))%A008891(n)` -/
def P16263224476624131151.Spec : Prop :=
  ∀ n, P16263224476624131151.a n = A219293 (n + 1)

end A219293

/-!
# A219294: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX3 array.

The programs for A219294, there is no canonical definition to state claims against.
-/

/-! ## A219294.P10897947227263549077

`A219299(∑[n+2]+4)`
-/

namespace A219294.P10897947227263549077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219294.P10897947227263549077

/-! ## A219294.P1733422407630579851

`A219299(A167614(n+1))+A185238(n)`
-/

namespace A219294.P1733422407630579851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A167614 (n + 1)).toNat + A185238 n

end

end A219294.P1733422407630579851

/-! ## A219294.P1080022066625337866

`A326681(n)+A219299(A167614(n+1))`
-/

namespace A219294.P1080022066625337866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A219299 (A167614 (n + 1)).toNat

end

end A219294.P1080022066625337866

/-! ## A219294.P5697309656461778820

`A015748(n)*A219299(A167614(n+1))`
-/

namespace A219294.P5697309656461778820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 n * A219299 (A167614 (n + 1)).toNat

end

end A219294.P5697309656461778820

/-! ## A219294.P5160410570151811432

`A219299(A167614(n+1))%A041154(n)`
-/

namespace A219294.P5160410570151811432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219299 (A167614 (n + 1)).toNat) (A041154 n)

end

end A219294.P5160410570151811432

/-!
# A219295: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX4 array.

The programs for A219295, there is no canonical definition to state claims against.
-/

/-! ## A219295.P17986753415296446276

`A219299(∑[ceil(acot(n))+n+2]+6)`
-/

namespace A219295.P17986753415296446276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A219295.P17986753415296446276

/-! ## A219295.P14033148176362137715

`A219299(A145018(n+4))`
-/

namespace A219295.P14033148176362137715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A145018 (n + 4)).toNat

end

end A219295.P14033148176362137715

/-! ## A219295.P5681058835666732963

`A219299(A141214(n)+7)`
-/

namespace A219295.P5681058835666732963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A141214 n + 7).toNat

end

end A219295.P5681058835666732963

/-! ## A219295.P14408271682832850010

`A219299(A052905(n)+9)`
-/

namespace A219295.P14408271682832850010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A052905 n + 9).toNat

end

end A219295.P14408271682832850010

/-! ## A219295.P6627964817060891850

`A219299(A055999(n)+10)`
-/

namespace A219295.P6627964817060891850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A055999 n + 10).toNat

end

end A219295.P6627964817060891850

/-!
# A219296: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX5 array.

The programs for A219296, there is no canonical definition to state claims against.
-/

/-! ## A219296.P100651354484438660

`A219299(C(2*(n+3)-n, 2)-n)`
-/

namespace A219296.P100651354484438660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (Nat.choose ((2 * (n + 3) : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A219296.P100651354484438660

/-! ## A219296.P1038599207675212053

`A219299(A167499(n+3))`
-/

namespace A219296.P1038599207675212053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A167499 (n + 3)).toNat

end

end A219296.P1038599207675212053

/-! ## A219296.P321161057609624918

`A219299(A155212(n)+13)`
-/

namespace A219296.P321161057609624918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A155212 n + 13).toNat

end

end A219296.P321161057609624918

/-! ## A219296.P17789665513767190246

`A219299(A056000(n)+15)`
-/

namespace A219296.P17789665513767190246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A056000 n + 15).toNat

end

end A219296.P17789665513767190246

/-! ## A219296.P10131635052664906899

`A219299(eq[7, A066657(n)])`
-/

namespace A219296.P10131635052664906899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219296.P10131635052664906899

/-!
# A219297: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX6 array.

The programs for A219297, there is no canonical definition to state claims against.
-/

/-! ## A219297.P4964018710628331526

`A219299(A056115(n)+21)`
-/

namespace A219297.P4964018710628331526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A056115 n + 21).toNat

end

end A219297.P4964018710628331526

/-! ## A219297.P5254851950760660061

`A219299(A000217(n+5)+6)`
-/

namespace A219297.P5254851950760660061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A000217 (n + 5) + 6).toNat

end

end A219297.P5254851950760660061

/-! ## A219297.P16686582921522588784

`A219299(eq[7, A131818(n+1)])`
-/

namespace A219297.P16686582921522588784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219297.P16686582921522588784

/-! ## A219297.P11098192741798570503

`A219299(A167499(n+3)+n+6)`
-/

namespace A219297.P11098192741798570503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A167499 (n + 3) + (n + 6 : ℤ)).toNat

end

end A219297.P11098192741798570503

/-! ## A219297.P13261334414761849978

`A219299(A052905(n+4)-2-2*n)`
-/

namespace A219297.P13261334414761849978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A052905 (n + 4) - 2 - (2 * n : ℤ)).toNat

end

end A219297.P13261334414761849978

/-!
# A219298: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX7 array.

The programs for A219298, there is no canonical definition to state claims against.
-/

/-! ## A219298.P7975313893531986836

`A219299(A167487(n+5))`
-/

namespace A219298.P7975313893531986836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A167487 (n + 5)).toNat

end

end A219298.P7975313893531986836

/-! ## A219298.P11091802098956774211

`A219299(A056119(n)+28)`
-/

namespace A219298.P11091802098956774211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A056119 n + 28).toNat

end

end A219298.P11091802098956774211

/-! ## A219298.P3907876109340962158

`A219299(eq[11, A066657(n)])`
-/

namespace A219298.P3907876109340962158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219298.P3907876109340962158

/-! ## A219298.P3999086317037346693

`A219299(A253145(n+5)+7)`
-/

namespace A219298.P3999086317037346693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A253145 (n + 5) + 7).toNat

end

end A219298.P3999086317037346693

/-! ## A219298.P351174039409254776

`A219299(A000217(n+6)+7)`
-/

namespace A219298.P351174039409254776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219299 (A000217 (n + 6) + 7).toNat

end

end A219298.P351174039409254776

