import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A087301: a(n) = n!*Sum_{i=1..n-1} (-1)^(i+1)/i.

The programs for A087301, there is no canonical definition to state claims against.
-/

/-! ## A087301.P10194179738757876694

`A073480(∑[n+1]+2)`
-/

namespace A087301.P10194179738757876694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073480 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A087301.P10194179738757876694

/-! ## A087301.P3899348219336977673

`(n+2)*A024167(n+1)`
-/

namespace A087301.P3899348219336977673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A024167 (n + 1)

end

end A087301.P3899348219336977673

/-! ## A087301.P4076836687549629320

`A142983(n+1)+A024168(n+2)`
-/

namespace A087301.P4076836687549629320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142983 (n + 1) + A024168 (n + 2)

end

end A087301.P4076836687549629320

/-! ## A087301.P9302286326517201448

`(n+2)*A054651(A034856(n+1))`
-/

namespace A087301.P9302286326517201448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A054651 (A034856 (n + 1)).toNat

end

end A087301.P9302286326517201448

/-! ## A087301.P8343571363823939057

`(n+2)*A190782(A000124(n+1))`
-/

namespace A087301.P8343571363823939057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A190782 (A000124 (n + 1)).toNat

end

end A087301.P8343571363823939057

/-! ## A087301.P2687265568456906248

`(n+2)*A025527(n+1)*A025530(n+1)`
-/

namespace A087301.P2687265568456906248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A025527 (n + 1) * A025530 (n + 1))

end

end A087301.P2687265568456906248

/-!
# A087302: Smallest nontrivial multiple of n whose digit sum is a multiple of digit sum of n. By nontrivial one means a(n) is not equal to n or (10^k)*n or a concatenation of n with itself.

The programs for A087302, there is no canonical definition to state claims against.
-/

/-! ## A087302.P5908287044065491884

`lcm(2*(n+1), ∏{e}[(2*n+1)!, #])`
-/

namespace A087302.P5908287044065491884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * (n + 1)) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A087302.P5908287044065491884

/-!
# A087305: Smallest n-digit non-palindromic number such that it and its digit reversal have the same prime signature.

The programs for A087305, there is no canonical definition to state claims against.
-/

/-! ## A087305.P10577952807127313565

`A078397(n+1)+A078378(A128597(n))`
-/

namespace A087305.P10577952807127313565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078397 (n + 1) + A078378 (A128597 n).toNat

end

end A087305.P10577952807127313565

/-!
# A087306: a(n) is the start of the first arithmetic progression with common difference n of n numbers with the same prime signature.

The programs for A087306, there is no canonical definition to state claims against.
-/

/-! ## A087306.P16099462099558962282

`A087307(∑[n]+1)`
-/

namespace A087306.P16099462099558962282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087307 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A087306.P16099462099558962282

/-! ## A087306.P6690903227923964162

`or(1, A087307(A000124(n)))`
-/

namespace A087306.P6690903227923964162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A087307 (A000124 n).toNat)

end

end A087306.P6690903227923964162

/-!
# A087307: Triangle read by rows: n-th row is the first arithmetic progression with common difference n of n numbers with the same prime signature.

The programs for A087307, there is no canonical definition to state claims against.
-/

/-! ## A087307.P15141596438292540444

`eq[A000032(A319410(n)), A051173(n+1)]`
-/

namespace A087307.P15141596438292540444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A319410 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087307.P15141596438292540444

/-! ## A087307.P7143377321607605298

`eq[A000032(A319410(n)), A127446(n+1)]`
-/

namespace A087307.P7143377321607605298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A319410 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087307.P7143377321607605298

/-!
# A087308: Initial terms associated with the arithmetic progressions in A086786.

The programs for A087308, there is no canonical definition to state claims against.
-/

/-! ## A087308.P4955421442823741884

`A086786(A130489(n)+1)`
-/

namespace A087308.P4955421442823741884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086786 (A130489 n + 1).toNat

end

end A087308.P4955421442823741884

/-! ## A087308.P1934325353069404318

`A086786(∑[n]+1)`
-/

namespace A087308.P1934325353069404318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086786 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A087308.P1934325353069404318

/-! ## A087308.P13446743386196412108

`∏{p}[A086786(A000124(n)), #]`
-/

namespace A087308.P13446743386196412108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086786 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A087308.P13446743386196412108

/-! ## A087308.P7416679556493755683

`A000027(A086786(C(n+2, 2)-n))`
-/

namespace A087308.P7416679556493755683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A086786 (Nat.choose (n + 2) 2 - n)).toNat

end

end A087308.P7416679556493755683

/-! ## A087308.P1819843424958477128

`A086786(A000124(n))+A064458(n)`
-/

namespace A087308.P1819843424958477128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086786 (A000124 n).toNat + A064458 n

end

end A087308.P1819843424958477128

/-!
# A087309: Least number that ends an arithmetic progression of n numbers with the same prime signature.

The programs for A087309, there is no canonical definition to state claims against.
-/

/-! ## A087309.P12702331711298069142

`A086786(∑[n+1])`
-/

namespace A087309.P12702331711298069142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086786 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087309.P12702331711298069142

/-! ## A087309.P11008294468771371337

`record[A086786(A133825(n))]`
-/

namespace A087309.P11008294468771371337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086786 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087309.P11008294468771371337

/-! ## A087309.P9339497213848700573

`or(1, A086786(A025747(n)))`
-/

namespace A087309.P9339497213848700573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A086786 (A025747 n).toNat)

end

end A087309.P9339497213848700573

/-! ## A087309.P10904118659556904114

`record[A086786(abs(A122432(n)))]`
-/

namespace A087309.P10904118659556904114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086786 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087309.P10904118659556904114

/-! ## A087309.P2027064365695345246

`record[A086786(A038722(n+1))]`
-/

namespace A087309.P2027064365695345246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086786 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087309.P2027064365695345246

/-!
# A087310: Common differences of arithmetic progressions in A086786.

The programs for A087310, there is no canonical definition to state claims against.
-/

/-! ## A087310.P9676962476714591392

`A090549(n+2)%Δ[A090559(3*n+4)]`
-/

namespace A087310.P9676962476714591392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090559 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090549 (n + 2)) (f1 (n + 1) - f1 n)

end

end A087310.P9676962476714591392

/-! ## A087310.P4122137027239313792

`A376115(A087309(n+2))`
-/

namespace A087310.P4122137027239313792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A087309 (n + 2)).toNat

end

end A087310.P4122137027239313792

/-!
# A087311: a(1) = 2; for n>1, a(n) = smallest number == 1 (mod a(n-1)) with a prime signature of n.

The programs for A087311, there is no canonical definition to state claims against.
-/

/-! ## A087311.P14459357078033261876

`A114811(A114803(n)²)+A114789(n+1)`
-/

namespace A087311.P14459357078033261876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114811 (A114803 n ^ 2).toNat + A114789 (n + 1)

end

end A087311.P14459357078033261876

/-! ## A087311.P15708784874881525945

`A114789(n+1)+A014328(A090992(n+1))`
-/

namespace A087311.P15708784874881525945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114789 (n + 1) + A014328 (A090992 (n + 1)).toNat

end

end A087311.P15708784874881525945

/-! ## A087311.P5270679598043260635

`A114789(n+1)+A136572(A113884(n))*A136572(n)`
-/

namespace A087311.P5270679598043260635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114789 (n + 1) + A136572 (A113884 n).toNat * A136572 n

end

end A087311.P5270679598043260635

/-! ## A087311.P8900364685557084524

`A114789(n+1)+A063524(3^n-n)`
-/

namespace A087311.P8900364685557084524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114789 (n + 1) + A063524 (3 ^ n - n)

end

end A087311.P8900364685557084524

/-! ## A087311.P9896340030309910397

`A136572(A113884(n+1))+A114789(n+1)`
-/

namespace A087311.P9896340030309910397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 (A113884 (n + 1)).toNat + A114789 (n + 1)

end

end A087311.P9896340030309910397

/-!
# A087312: a(1) = 1; for n > 1, a(n) is the smallest number == -1 (mod a(n-1)), greater than n, with the same prime signature as n.

The programs for A087312, there is no canonical definition to state claims against.
-/

/-! ## A087312.P17828075446379330069

`a(n-1)*A327536(a(n-1))-1` with `a(0)=1, a(1)=3`
-/

namespace A087312.P17828075446379330069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) * A327536 (a (n - 1)).toNat - 1

end

end A087312.P17828075446379330069

/-! ## A087312.P3668297464587105694

`A356935(A065653(n)+1)`
-/

namespace A087312.P3668297464587105694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356935 (A065653 n + 1).toNat

end

end A087312.P3668297464587105694

/-! ## A087312.P13810164039863985191

`A324701(A112425(n+1)+A001149(n+1))`
-/

namespace A087312.P13810164039863985191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A112425 (n + 1) + A001149 (n + 1)).toNat

end

end A087312.P13810164039863985191

/-!
# A087315: a(n) = Product_{k=1..n} prime(k)^prime(n-k+1).

The programs for A087315, there is no canonical definition to state claims against.
-/

/-! ## A087315.P999473868211355521

`A131690(n+2)/A008578(n+2)`
-/

namespace A087315.P999473868211355521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131690 (n + 2) : ℚ) / (A008578 (n + 2) : ℚ)

end

end A087315.P999473868211355521

/-! ## A087315.P15050929878966829912

`A131690(n+2)/p?[A131717(n+1)]`
-/

namespace A087315.P15050929878966829912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131690 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A087315.P15050929878966829912

/-!
# A087318: Smallest number of the form n^k +1 with the prime signature of n, or 0 if no such number exists.

The programs for A087318, there is no canonical definition to state claims against.
-/

/-! ## A087318.P13365701128348400143

`C(A087319(n+2), A008834(n+1)!)`
-/

namespace A087318.P13365701128348400143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087319 (n + 2)).toNat (Nat.factorial (A008834 (n + 1)).toNat)

end

end A087318.P13365701128348400143

/-! ## A087318.P12758324975672255892

`C(A087319(n+2), A343937(2^val(n+1, 2)))`
-/

namespace A087318.P12758324975672255892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087319 (n + 2)).toNat (A343937 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat

end

end A087318.P12758324975672255892

/-! ## A087318.P11310860455640356345

`A087319(n+2)*A359379(A007531(n))`
-/

namespace A087318.P11310860455640356345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087319 (n + 2) * A359379 (A007531 n).toNat

end

end A087318.P11310860455640356345

/-! ## A087318.P7402617171207902427

`C(A087319(n+2), A100548(A001511(n+1)))`
-/

namespace A087318.P7402617171207902427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087319 (n + 2)).toNat (A100548 (A001511 (n + 1)).toNat).toNat

end

end A087318.P7402617171207902427

/-! ## A087318.P12548508717243017267

`A087319(n+2)%A028879(A056555(n+1))`
-/

namespace A087318.P12548508717243017267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087319 (n + 2)) (A028879 (A056555 (n + 1)).toNat)

end

end A087318.P12548508717243017267

/-!
# A087320: Smallest perfect power (at least a square) that is a multiple of n.

The programs for A087320, there is no canonical definition to state claims against.
-/

/-! ## A087320.P11224315953674776343

`(n+1)*A160400(n+1)`
-/

namespace A087320.P11224315953674776343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A160400 (n + 1)

end

end A087320.P11224315953674776343

/-! ## A087320.P7186382786451582027

`A197863(n+1)*A257024(A309397(n+2))`
-/

namespace A087320.P7186382786451582027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197863 (n + 1) * A257024 (A309397 (n + 2)).toNat

end

end A087320.P7186382786451582027

/-! ## A087320.P16699184545383690583

`A197863((n+1)*A304328(A197863(n+1)))`
-/

namespace A087320.P16699184545383690583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197863 ((n + 1 : ℤ) * A304328 (A197863 (n + 1)).toNat).toNat

end

end A087320.P16699184545383690583

/-!
# A087321: Smallest multiple of n which is a perfect power (at least a square) of a squarefree number.

The programs for A087321, the canonical program `A087321.P1047644682119853361` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087321 has offset 1).

The definition of A087321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087321.P5700704739728648501

`A066638(n+1)*A385212(n+1)`
-/

namespace A087321.P5700704739728648501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 (n + 1) * A385212 (n + 1)

end

end A087321.P5700704739728648501

namespace A087321

/-- `A066638(n+1)*A385212(n+1)` -/
def P5700704739728648501.Spec : Prop :=
  ∀ n, P5700704739728648501.a n = A087321 (n + 1)

end A087321

/-! ## A087321.P1047644682119853361

`lcm(A048798(n+1), A066638(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087321

/-- `lcm(A048798(n+1), A066638(n+1))` -/
def P1047644682119853361.Spec : Prop :=
  ∀ n, (P1047644682119853361.a n : ℤ) = A087321 (n + 1)

theorem P1047644682119853361.correct : P1047644682119853361.Spec := by
  intro n
  simp only [A087321, Nat.add_sub_cancel]

end A087321

/-! ## A087321.P2378832688244847226

`A066638(n+1)^A028920(A050377(n+1))`
-/

namespace A087321.P2378832688244847226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) ^ (A028920 (A050377 (n + 1)).toNat : ℤ)

end

end A087321.P2378832688244847226

namespace A087321

/-- `A066638(n+1)^A028920(A050377(n+1))` -/
def P2378832688244847226.Spec : Prop :=
  ∀ n, P2378832688244847226.a n = (A087321 (n + 1) : ℚ)

end A087321

/-! ## A087321.P3696236860814936249

`A007947(n+1)^(A051903(n+1)+A008966(n+1))`
-/

namespace A087321.P3696236860814936249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A051903 (n + 1) + A008966 (n + 1) : ℤ)

end

end A087321.P3696236860814936249

namespace A087321

/-- `A007947(n+1)^(A051903(n+1)+A008966(n+1))` -/
def P3696236860814936249.Spec : Prop :=
  ∀ n, P3696236860814936249.a n = (A087321 (n + 1) : ℚ)

end A087321

/-! ## A087321.P7062082602833983579

`A066638(n+1)^A014963(A005843(A324910(n+1)))`
-/

namespace A087321.P7062082602833983579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) ^ (A014963 (A005843 (A324910 (n + 1)).toNat).toNat : ℤ)

end

end A087321.P7062082602833983579

namespace A087321

/-- `A066638(n+1)^A014963(A005843(A324910(n+1)))` -/
def P7062082602833983579.Spec : Prop :=
  ∀ n, P7062082602833983579.a n = (A087321 (n + 1) : ℚ)

end A087321

/-! ## A087321.P35984572584671975

`∏{p}[n+1, #]^A051903(lcm(n+1, ∏{p}[n+1, #²]))`
-/

namespace A087321.P35984572584671975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A051903 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)) : ℤ)

end

end A087321.P35984572584671975

namespace A087321

/-- `∏{p}[n+1, #]^A051903(lcm(n+1, ∏{p}[n+1, #²]))` -/
def P35984572584671975.Spec : Prop :=
  ∀ n, P35984572584671975.a n = (A087321 (n + 1) : ℚ)

end A087321

/-! ## A087321.P10731642838182151239

`A064549(A007947(n+1)^A190867(n+1))`
-/

namespace A087321.P10731642838182151239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A190867 (n + 1) : ℤ))).toNat

end

end A087321.P10731642838182151239

namespace A087321

/-- `A064549(A007947(n+1)^A190867(n+1))` -/
def P10731642838182151239.Spec : Prop :=
  ∀ n, P10731642838182151239.a n = A087321 (n + 1)

end A087321

/-! ## A087321.P14430332004710136868

`A064549(A007947(n+1)^A005361(A003557(n+1)))`
-/

namespace A087321.P14430332004710136868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A005361 (A003557 (n + 1)).toNat : ℤ))).toNat

end

end A087321.P14430332004710136868

namespace A087321

/-- `A064549(A007947(n+1)^A005361(A003557(n+1)))` -/
def P14430332004710136868.Spec : Prop :=
  ∀ n, P14430332004710136868.a n = A087321 (n + 1)

end A087321

/-! ## A087321.P13822861740985884376

`A066638(A197863(n+1))`
-/

namespace A087321.P13822861740985884376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 (A197863 (n + 1)).toNat

end

end A087321.P13822861740985884376

namespace A087321

/-- `A066638(A197863(n+1))` -/
def P13822861740985884376.Spec : Prop :=
  ∀ n, P13822861740985884376.a n = A087321 (n + 1)

end A087321

/-! ## A087321.P9864121014911413792

`A066638((n+1)*A055231(n+1))`
-/

namespace A087321.P9864121014911413792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A087321.P9864121014911413792

namespace A087321

/-- `A066638((n+1)*A055231(n+1))` -/
def P9864121014911413792.Spec : Prop :=
  ∀ n, P9864121014911413792.a n = A087321 (n + 1)

end A087321

/-! ## A087321.P12069138279759778633

`A066638((n+1)*A329376((n+1)²))`
-/

namespace A087321.P12069138279759778633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 ((n + 1 : ℤ) * A329376 ((n + 1) ^ 2)).toNat

end

end A087321.P12069138279759778633

namespace A087321

/-- `A066638((n+1)*A329376((n+1)²))` -/
def P12069138279759778633.Spec : Prop :=
  ∀ n, P12069138279759778633.a n = A087321 (n + 1)

end A087321

/-! ## A087321.P12342633838774714369

`A066638((n+1)*A360539(A356191(n+1)))`
-/

namespace A087321.P12342633838774714369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 ((n + 1 : ℤ) * A360539 (A356191 (n + 1)).toNat).toNat

end

end A087321.P12342633838774714369

namespace A087321

/-- `A066638((n+1)*A360539(A356191(n+1)))` -/
def P12342633838774714369.Spec : Prop :=
  ∀ n, P12342633838774714369.a n = A087321 (n + 1)

end A087321

/-! ## A087321.P13251667344782500023

`A066638((n+1)*A360539(A372329(n+1)))`
-/

namespace A087321.P13251667344782500023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066638 ((n + 1 : ℤ) * A360539 (A372329 (n + 1)).toNat).toNat

end

end A087321.P13251667344782500023

namespace A087321

/-- `A066638((n+1)*A360539(A372329(n+1)))` -/
def P13251667344782500023.Spec : Prop :=
  ∀ n, P13251667344782500023.a n = A087321 (n + 1)

end A087321

/-!
# A087322: Triangle T read by rows: T(n, 1) = 2*n + 1. For 1 < k <= n, T(n, k) = 2*T(n,k-1) + 1.

The programs for A087322, the canonical program `A087322.P5940467379138009822` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087322 has offset 1).

The definition of A087322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087322.P5940467379138009822

`A003057(n+2)*2*A059268(n)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087322

/-- `A003057(n+2)*2*A059268(n)-1` -/
def P5940467379138009822.Spec : Prop :=
  ∀ n, P5940467379138009822.a n = A087322 (n + 1)

theorem P5940467379138009822.correct : P5940467379138009822.Spec := by
  intro n
  simp only [A087322, Nat.add_sub_cancel]

end A087322

/-! ## A087322.P11176278923496440398

`A153893(A002262(n))+A118413(n+1)`
-/

namespace A087322.P11176278923496440398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (A002262 n).toNat + A118413 (n + 1)

end

end A087322.P11176278923496440398

namespace A087322

/-- `A153893(A002262(n))+A118413(n+1)` -/
def P11176278923496440398.Spec : Prop :=
  ∀ n, P11176278923496440398.a n = A087322 (n + 1)

end A087322

/-! ## A087322.P12263627331449148707

`floor(A087323(A002024(n+1))/A130321(n))`
-/

namespace A087322.P12263627331449148707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087323 (A002024 (n + 1)).toNat : ℚ) / (A130321 n : ℚ)⌋

end

end A087322.P12263627331449148707

namespace A087322

/-- `floor(A087323(A002024(n+1))/A130321(n))` -/
def P12263627331449148707.Spec : Prop :=
  ∀ n, P12263627331449148707.a n = A087322 (n + 1)

end A087322

/-! ## A087322.P16029441343846369116

`A118413(n+1)+A055010(A002260(n+1))`
-/

namespace A087322.P16029441343846369116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118413 (n + 1) + A055010 (A002260 (n + 1)).toNat

end

end A087322.P16029441343846369116

namespace A087322

/-- `A118413(n+1)+A055010(A002260(n+1))` -/
def P16029441343846369116.Spec : Prop :=
  ∀ n, P16029441343846369116.a n = A087322 (n + 1)

end A087322

/-! ## A087322.P7888740675206488711

`A003057(n+2)*A060546(A158405(n+1))-1`
-/

namespace A087322.P7888740675206488711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A060546 (A158405 (n + 1)).toNat - 1

end

end A087322.P7888740675206488711

namespace A087322

/-- `A003057(n+2)*A060546(A158405(n+1))-1` -/
def P7888740675206488711.Spec : Prop :=
  ∀ n, P7888740675206488711.a n = A087322 (n + 1)

end A087322

/-! ## A087322.P4904971507958996001

`A003057(n+2)*A005843(A059268(n))-1`
-/

namespace A087322.P4904971507958996001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A005843 (A059268 n).toNat - 1

end

end A087322.P4904971507958996001

namespace A087322

/-- `A003057(n+2)*A005843(A059268(n))-1` -/
def P4904971507958996001.Spec : Prop :=
  ∀ n, P4904971507958996001.a n = A087322 (n + 1)

end A087322

/-! ## A087322.P2061824334313990879

`A000005(A140513(n))*A005843(A059268(n))-1`
-/

namespace A087322.P2061824334313990879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A140513 n).toNat * A005843 (A059268 n).toNat - 1

end

end A087322.P2061824334313990879

namespace A087322

/-- `A000005(A140513(n))*A005843(A059268(n))-1` -/
def P2061824334313990879.Spec : Prop :=
  ∀ n, P2061824334313990879.a n = A087322 (n + 1)

end A087322

/-! ## A087322.P4178183659456343127

`A004273((comp[∑[n]]-n)*A059268(n))`
-/

namespace A087322.P4178183659456343127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A059268 n).toNat

end

end A087322.P4178183659456343127

namespace A087322

/-- `A004273((comp[∑[n]]-n)*A059268(n))` -/
def P4178183659456343127.Spec : Prop :=
  ∀ n, P4178183659456343127.a n = A087322 (n + 1)

end A087322

/-! ## A087322.P16254108458807386271

`A004273(A059268(n)*A080513(A131507(n)))`
-/

namespace A087322.P16254108458807386271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A059268 n * A080513 (A131507 n).toNat).toNat

end

end A087322.P16254108458807386271

namespace A087322

/-- `A004273(A059268(n)*A080513(A131507(n)))` -/
def P16254108458807386271.Spec : Prop :=
  ∀ n, P16254108458807386271.a n = A087322 (n + 1)

end A087322

/-!
# A087323: a(n) = (n+1) * 2^n - 1.

The programs for A087323, the canonical program `A087323.P14968093904984587548` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087323 has offset 0).

The definition of A087323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^n-1` (program `A087323.P14968093904984587548`, by `A087323.P14968093904984587548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A087323.P14968093904984587548

`(n+1)*2^n-1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087323

/-- `(n+1)*2^n-1` -/
def P14968093904984587548.Spec : Prop :=
  ∀ n, P14968093904984587548.a n = A087323 n

theorem P14968093904984587548.correct : P14968093904984587548.Spec := by
  intro n
  simp only [A087323]

end A087323

/-! ## A087323.P16886499923963303363

`∑[(n+2)*Δ[2*a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A087323.P16886499923963303363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087323.P16886499923963303363

namespace A087323

/-- `∑[(n+2)*Δ[2*a(n-1)]]` -/
def P16886499923963303363.Spec : Prop :=
  ∀ n, P16886499923963303363.a n = A087323 n

end A087323

/-! ## A087323.P5226149558654861087

`∑[(2/(n+1)+2)*a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A087323.P5226149558654861087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  (2 / (n + 1 : ℚ) + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087323.P5226149558654861087

namespace A087323

/-- `∑[(2/(n+1)+2)*a(n-1)]` -/
def P5226149558654861087.Spec : Prop :=
  ∀ n, P5226149558654861087.a n = (A087323 n : ℚ)

end A087323

/-! ## A087323.P15649025169925202647

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=0, a(1)=3, a(2)=8`
-/

namespace A087323.P15649025169925202647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 8] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087323.P15649025169925202647

namespace A087323

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P15649025169925202647.Spec : Prop :=
  ∀ n, P15649025169925202647.a n = A087323 n

end A087323

/-! ## A087323.P10762401580209773901

`4*(a(n-1)-(a(n-2)+1/4))` with `a(0)=0, a(1)=3`
-/

namespace A087323.P10762401580209773901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  4 * (a (n - 1) - (a (n - 2) + (1 : ℚ) / 4))

end

end A087323.P10762401580209773901

namespace A087323

/-- `4*(a(n-1)-(a(n-2)+1/4))` -/
def P10762401580209773901.Spec : Prop :=
  ∀ n, P10762401580209773901.a n = (A087323 n : ℚ)

end A087323

/-! ## A087323.P16636717236064941291

`4*(a(n-1)-a(n-2)-1/4)` with `a(0)=0, a(1)=3`
-/

namespace A087323.P16636717236064941291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  4 * (a (n - 1) - a (n - 2) - (1 : ℚ) / 4)

end

end A087323.P16636717236064941291

namespace A087323

/-- `4*(a(n-1)-a(n-2)-1/4)` -/
def P16636717236064941291.Spec : Prop :=
  ∀ n, P16636717236064941291.a n = (A087323 n : ℚ)

end A087323

/-! ## A087323.P7399700418776236403

`∑[A132750(n)-1]`
-/

namespace A087323.P7399700418776236403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132750 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087323.P7399700418776236403

namespace A087323

/-- `∑[A132750(n)-1]` -/
def P7399700418776236403.Spec : Prop :=
  ∀ n, P7399700418776236403.a n = A087323 n

end A087323

/-! ## A087323.P9094556942508891777

`record[A097067(n)-1]`
-/

namespace A087323.P9094556942508891777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087323.P9094556942508891777

namespace A087323

/-- `record[A097067(n)-1]` -/
def P9094556942508891777.Spec : Prop :=
  ∀ n, P9094556942508891777.a n = A087323 n

end A087323

/-! ## A087323.P8940505495951139861

`xor(1, A058966(n+3))`
-/

namespace A087323.P8940505495951139861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A058966 (n + 3))

end

end A087323.P8940505495951139861

namespace A087323

/-- `xor(1, A058966(n+3))` -/
def P8940505495951139861.Spec : Prop :=
  ∀ n, P8940505495951139861.a n = A087323 n

end A087323

/-! ## A087323.P5569856385123842663

`record[A329033(n+2)-1]`
-/

namespace A087323.P5569856385123842663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329033 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087323.P5569856385123842663

namespace A087323

/-- `record[A329033(n+2)-1]` -/
def P5569856385123842663.Spec : Prop :=
  ∀ n, P5569856385123842663.a n = A087323 n

end A087323

/-! ## A087323.P14303964430667423273

`∑[(n+2)*A131577(n)]`
-/

namespace A087323.P14303964430667423273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087323.P14303964430667423273

namespace A087323

/-- `∑[(n+2)*A131577(n)]` -/
def P14303964430667423273.Spec : Prop :=
  ∀ n, P14303964430667423273.a n = A087323 n

end A087323

/-! ## A087323.P8090238231722071048

`abs((n+1)*A000079(n)-1)`
-/

namespace A087323.P8090238231722071048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A000079 n - 1|

end

end A087323.P8090238231722071048

namespace A087323

/-- `abs((n+1)*A000079(n)-1)` -/
def P8090238231722071048.Spec : Prop :=
  ∀ n, P8090238231722071048.a n = A087323 n

end A087323

/-! ## A087323.P1196080192066556057

`∑[(n+2)*A034008(n+1)]`
-/

namespace A087323.P1196080192066556057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A034008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087323.P1196080192066556057

namespace A087323

/-- `∑[(n+2)*A034008(n+1)]` -/
def P1196080192066556057.Spec : Prop :=
  ∀ n, P1196080192066556057.a n = A087323 n

end A087323

/-! ## A087323.P5611872410626053785

`∑[(n+2)*A158780(2*n)]`
-/

namespace A087323.P5611872410626053785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A158780 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087323.P5611872410626053785

namespace A087323

/-- `∑[(n+2)*A158780(2*n)]` -/
def P5611872410626053785.Spec : Prop :=
  ∀ n, P5611872410626053785.a n = A087323 n

end A087323

/-! ## A087323.P10267288606906187814

`xor(A000225(n), A036289(n))`
-/

namespace A087323.P10267288606906187814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A036289 n)

end

end A087323.P10267288606906187814

namespace A087323

/-- `xor(A000225(n), A036289(n))` -/
def P10267288606906187814.Spec : Prop :=
  ∀ n, P10267288606906187814.a n = A087323 n

end A087323

/-! ## A087323.P13950408433210400628

`xor(A000295(n), A069229(n))`
-/

namespace A087323.P13950408433210400628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000295 n) (A069229 n)

end

end A087323.P13950408433210400628

namespace A087323

/-- `xor(A000295(n), A069229(n))` -/
def P13950408433210400628.Spec : Prop :=
  ∀ n, P13950408433210400628.a n = A087323 n

end A087323

/-! ## A087323.P12448620560731595388

`xor(A134401(n), A255047(n))`
-/

namespace A087323.P12448620560731595388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A134401 n) (A255047 n)

end

end A087323.P12448620560731595388

namespace A087323

/-- `xor(A134401(n), A255047(n))` -/
def P12448620560731595388.Spec : Prop :=
  ∀ n, P12448620560731595388.a n = A087323 n

end A087323

/-! ## A087323.P7644744317682983988

`record[A001787(A028242(n))-1]`
-/

namespace A087323.P7644744317682983988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A028242 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087323.P7644744317682983988

namespace A087323

/-- `record[A001787(A028242(n))-1]` -/
def P7644744317682983988.Spec : Prop :=
  ∀ n, P7644744317682983988.a n = A087323 n

end A087323

/-!
# A087324: Numbers n such that n and its 9's complement both have the same prime signature.

The programs for A087324, there is no canonical definition to state claims against.
-/

/-! ## A087324.P10706639013244207972

`eq[A104725(A061601(n)), A104725(n)]`
-/

namespace A087324.P10706639013244207972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087324.P10706639013244207972

/-! ## A087324.P4550384712010463071

`eq[A211437(A061601(n)), A211437(n)]`
-/

namespace A087324.P4550384712010463071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211437 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087324.P4550384712010463071

/-!
# A087325: Numbers k such that k and its 10's complement both have the same prime signature.

The programs for A087325, the canonical program `A087325.P922682676817335169` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087325 has offset 1).

The definition of A087325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087325.P14251649929721310777

`eq[A002033(A061601(n)), A074206(n)]`
-/

namespace A087325.P14251649929721310777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A061601 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087325.P14251649929721310777

namespace A087325

/-- `eq[A002033(A061601(n)), A074206(n)]` -/
def P14251649929721310777.Spec : Prop :=
  ∀ n, (P14251649929721310777.a n : ℤ) = A087325 (n + 1)

end A087325

/-! ## A087325.P18405170506224671236

`eq[A074206(A061601(n)+1), A074206(n)]`
-/

namespace A087325.P18405170506224671236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A061601 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087325.P18405170506224671236

namespace A087325

/-- `eq[A074206(A061601(n)+1), A074206(n)]` -/
def P18405170506224671236.Spec : Prop :=
  ∀ n, (P18405170506224671236.a n : ℤ) = A087325 (n + 1)

end A087325

/-! ## A087325.P8015027878490909355

`eq[A104725(A061601(n)+1), A104725(n)]`
-/

namespace A087325.P8015027878490909355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A061601 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087325.P8015027878490909355

namespace A087325

/-- `eq[A104725(A061601(n)+1), A104725(n)]` -/
def P8015027878490909355.Spec : Prop :=
  ∀ n, (P8015027878490909355.a n : ℤ) = A087325 (n + 1)

end A087325

/-! ## A087325.P3683120287308778221

`eq[A002033(A061601(n+1)), A002033(n)]+1`
-/

namespace A087325.P3683120287308778221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A061601 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087325.P3683120287308778221

namespace A087325

/-- `eq[A002033(A061601(n+1)), A002033(n)]+1` -/
def P3683120287308778221.Spec : Prop :=
  ∀ n, (P3683120287308778221.a n : ℤ) = A087325 (n + 1)

end A087325

/-! ## A087325.P5441634123151142221

`eq[A046523(A061601(n+1)+1), A046523(n+1)]+1`
-/

namespace A087325.P5441634123151142221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A061601 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087325.P5441634123151142221

namespace A087325

/-- `eq[A046523(A061601(n+1)+1), A046523(n+1)]+1` -/
def P5441634123151142221.Spec : Prop :=
  ∀ n, (P5441634123151142221.a n : ℤ) = A087325 (n + 1)

end A087325

/-! ## A087325.P922682676817335169

`eq[A097272(A061601(n+1)+1), A097272(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A087325

/-- `eq[A097272(A061601(n+1)+1), A097272(n+1)]+1` -/
def P922682676817335169.Spec : Prop :=
  ∀ n, (P922682676817335169.a n : ℤ) = A087325 (n + 1)

theorem P922682676817335169.correct : P922682676817335169.Spec := by
  intro n
  simp only [A087325, Nat.add_sub_cancel]

end A087325

/-!
# A087327: Independence numbers for KT_2 knight on triangular board.

The programs for A087327, the canonical program `A087327.P5731388795706403858` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087327 has offset 1).

The definition of A087327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087327.P5731388795706403858

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=8, a(4)=13, a(5)=18, a(6)=25`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087327

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P5731388795706403858.Spec : Prop :=
  ∀ n, P5731388795706403858.a n = A087327 (n + 1)

theorem P5731388795706403858.correct : P5731388795706403858.Spec := by
  intro n
  simp only [A087327, Nat.add_sub_cancel]

end A087327

/-! ## A087327.P12708413604562288631

`char[2]+∑[or(1, n)]`
-/

namespace A087327.P12708413604562288631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A087327.P12708413604562288631

namespace A087327

/-- `char[2]+∑[or(1, n)]` -/
def P12708413604562288631.Spec : Prop :=
  ∀ n, (P12708413604562288631.a n : ℤ) = A087327 (n + 1)

end A087327

/-! ## A087327.P5612108366733583673

`ceil(char[2]+(n+1)²/2)`
-/

namespace A087327.P5612108366733583673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + ((n + 1) ^ 2 : ℚ) / 2⌉

end

end A087327.P5612108366733583673

namespace A087327

/-- `ceil(char[2]+(n+1)²/2)` -/
def P5612108366733583673.Spec : Prop :=
  ∀ n, P5612108366733583673.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P1137956347873074046

`∑[or(1, n)]+C(2, n)%(n+1)`
-/

namespace A087327.P1137956347873074046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 n % (n + 1)

end

end A087327.P1137956347873074046

namespace A087327

/-- `∑[or(1, n)]+C(2, n)%(n+1)` -/
def P1137956347873074046.Spec : Prop :=
  ∀ n, (P1137956347873074046.a n : ℤ) = A087327 (n + 1)

end A087327

/-! ## A087327.P5620799566230328462

`∑[a(n-2)+2]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2, a(4)=5, a(5)=5`
-/

namespace A087327.P5620799566230328462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 2, 5, 5] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087327.P5620799566230328462

namespace A087327

/-- `∑[a(n-2)+2]` -/
def P5620799566230328462.Spec : Prop :=
  ∀ n, (P5620799566230328462.a n : ℤ) = A087327 (n + 1)

end A087327

/-! ## A087327.P12498329154075946941

`floor((n+1)/(2/n-1/a(n-1)))` with `a(0)=1`
-/

namespace A087327.P12498329154075946941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) / (2 / (n : ℚ) - 1 / (a (n - 1) : ℚ))⌋

end

end A087327.P12498329154075946941

namespace A087327

/-- `floor((n+1)/(2/n-1/a(n-1)))` -/
def P12498329154075946941.Spec : Prop :=
  ∀ n, P12498329154075946941.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P5115139896663831412

`char[2]+∑[A109613(n)]`
-/

namespace A087327.P5115139896663831412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A087327.P5115139896663831412

namespace A087327

/-- `char[2]+∑[A109613(n)]` -/
def P5115139896663831412.Spec : Prop :=
  ∀ n, P5115139896663831412.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P16929597484529243438

`char[2]+A099392(n+1)+n`
-/

namespace A087327.P16929597484529243438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A099392 (n + 1) + (n : ℤ))

end

end A087327.P16929597484529243438

namespace A087327

/-- `char[2]+A099392(n+1)+n` -/
def P16929597484529243438.Spec : Prop :=
  ∀ n, P16929597484529243438.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P8623956144389868814

`A342939(n+1)+A004526(n)`
-/

namespace A087327.P8623956144389868814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342939 (n + 1) + A004526 n

end

end A087327.P8623956144389868814

namespace A087327

/-- `A342939(n+1)+A004526(n)` -/
def P8623956144389868814.Spec : Prop :=
  ∀ n, P8623956144389868814.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P3567960194480873374

`char[2]+A004526(n)+A000124(n)`
-/

namespace A087327.P3567960194480873374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A004526 n + A000124 n)

end

end A087327.P3567960194480873374

namespace A087327

/-- `char[2]+A004526(n)+A000124(n)` -/
def P3567960194480873374.Spec : Prop :=
  ∀ n, P3567960194480873374.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P16212152425468866094

`char[2]+A008619(n)+A000217(n)`
-/

namespace A087327.P16212152425468866094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A008619 n + A000217 n)

end

end A087327.P16212152425468866094

namespace A087327

/-- `char[2]+A008619(n)+A000217(n)` -/
def P16212152425468866094.Spec : Prop :=
  ∀ n, P16212152425468866094.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P15539829876181861045

`∑[n]+A329684(n)+A004526(n)`
-/

namespace A087327.P15539829876181861045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A329684 n + A004526 n)

end

end A087327.P15539829876181861045

namespace A087327

/-- `∑[n]+A329684(n)+A004526(n)` -/
def P15539829876181861045.Spec : Prop :=
  ∀ n, P15539829876181861045.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P4311154176000064943

`A000982(n+1)+char[2]`
-/

namespace A087327.P4311154176000064943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A087327.P4311154176000064943

namespace A087327

/-- `A000982(n+1)+char[2]` -/
def P4311154176000064943.Spec : Prop :=
  ∀ n, P4311154176000064943.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P2830205808225416712

`A008818(2*n)+char[2]`
-/

namespace A087327.P2830205808225416712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (2 * n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A087327.P2830205808225416712

namespace A087327

/-- `A008818(2*n)+char[2]` -/
def P2830205808225416712.Spec : Prop :=
  ∀ n, P2830205808225416712.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P5812376395213163356

`A001971(2*(n+1))+char[2]`
-/

namespace A087327.P5812376395213163356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A087327.P5812376395213163356

namespace A087327

/-- `A001971(2*(n+1))+char[2]` -/
def P5812376395213163356.Spec : Prop :=
  ∀ n, P5812376395213163356.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P1172075939380704589

`A166515(2*n+1)+char[2]`
-/

namespace A087327.P1172075939380704589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A087327.P1172075939380704589

namespace A087327

/-- `A166515(2*n+1)+char[2]` -/
def P1172075939380704589.Spec : Prop :=
  ∀ n, P1172075939380704589.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P11662820944882170058

`char[2]+∑[A004525(2*n+1)]`
-/

namespace A087327.P11662820944882170058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A087327.P11662820944882170058

namespace A087327

/-- `char[2]+∑[A004525(2*n+1)]` -/
def P11662820944882170058.Spec : Prop :=
  ∀ n, P11662820944882170058.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P6609893602321435532

`A185015(2*n+1)+A000982(n+1)`
-/

namespace A087327.P6609893602321435532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 (2 * n + 1) + A000982 (n + 1)

end

end A087327.P6609893602321435532

namespace A087327

/-- `A185015(2*n+1)+A000982(n+1)` -/
def P6609893602321435532.Spec : Prop :=
  ∀ n, P6609893602321435532.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P14114339135850817653

`A223134(∑[A004526(n)])+n`
-/

namespace A087327.P14114339135850817653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A087327.P14114339135850817653

namespace A087327

/-- `A223134(∑[A004526(n)])+n` -/
def P14114339135850817653.Spec : Prop :=
  ∀ n, P14114339135850817653.a n = A087327 (n + 1)

end A087327

/-! ## A087327.P12010078727550109906

`A183301(A342939(n+1))`
-/

namespace A087327.P12010078727550109906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (A342939 (n + 1)).toNat

end

end A087327.P12010078727550109906

namespace A087327

/-- `A183301(A342939(n+1))` -/
def P12010078727550109906.Spec : Prop :=
  ∀ n, P12010078727550109906.a n = A087327 (n + 1)

end A087327

/-!
# A087330: Sum of all digits of all integers less than or equal to 555...55 (with n 5's) in base 10.

The programs for A087330, there is no canonical definition to state claims against.
-/

/-! ## A087330.P9718722307490061764

`A089906(n)+n*10^n/2`
-/

namespace A087330.P9718722307490061764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089906 n : ℚ) + (n : ℚ) * ((10 ^ n : ℚ) / 2)

end

end A087330.P9718722307490061764

/-! ## A087330.P16557993039525986748

`A089905(n)+A089909(n)/4`
-/

namespace A087330.P16557993039525986748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089905 n : ℚ) + (A089909 n : ℚ) / 4

end

end A087330.P16557993039525986748

/-! ## A087330.P3479687449769463854

`5*(A089905(n)-A089904(n))`
-/

namespace A087330.P3479687449769463854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A089905 n - A089904 n)

end

end A087330.P3479687449769463854

/-! ## A087330.P5776001408866481451

`A089909(n)/4+A089903(n)+A089906(n)/2`
-/

namespace A087330.P5776001408866481451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089909 n : ℚ) / 4 + ((A089903 n : ℚ) + (A089906 n : ℚ) / 2)

end

end A087330.P5776001408866481451

/-! ## A087330.P4141430495230183856

`5*(A089903(n)+A089906(n)/2-A089904(n))`
-/

namespace A087330.P4141430495230183856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A089903 n : ℚ) + (A089906 n : ℚ) / 2 - (A089904 n : ℚ))

end

end A087330.P4141430495230183856

/-! ## A087330.P6001091225696307993

`5*(A089905(n)-(A089903(n)+A089905(n)/3))`
-/

namespace A087330.P6001091225696307993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A089905 n : ℚ) - ((A089903 n : ℚ) + (A089905 n : ℚ) / 3))

end

end A087330.P6001091225696307993

/-! ## A087330.P16350044723901840623

`5*(A089907(n)-A034967(n)/3-A089904(n))`
-/

namespace A087330.P16350044723901840623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A089907 n : ℚ) - (A034967 n : ℚ) / 3 - (A089904 n : ℚ))

end

end A087330.P16350044723901840623

/-! ## A087330.P1526346820489005852

`5*(A089903(n)+A089906(n)/2-(A089906(n)-A089907(n)/3))`
-/

namespace A087330.P1526346820489005852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A089903 n : ℚ) + (A089906 n : ℚ) / 2 - ((A089906 n : ℚ) - (A089907 n : ℚ) / 3))

end

end A087330.P1526346820489005852

/-! ## A087330.P4576355300808421087

`5*(A089907(n)-A034967(n)/3-(A089906(n)-A089907(n)/3))`
-/

namespace A087330.P4576355300808421087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A089907 n : ℚ) - (A034967 n : ℚ) / 3 - ((A089906 n : ℚ) - (A089907 n : ℚ) / 3))

end

end A087330.P4576355300808421087

/-!
# A087331: Smallest number with all identical digits having n distinct prime divisors.

The programs for A087331, there is no canonical definition to state claims against.
-/

/-! ## A087331.P14215902222320411063

`∏{p}[∏[A336400(n)], #]`
-/

namespace A087331.P14215902222320411063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A087331.P14215902222320411063

/-!
# A087335: Squares pertaining to A087334: a(n) = n-th partial product of A087334 + 1.

The programs for A087335, there is no canonical definition to state claims against.
-/

/-! ## A087335.P8322141557747077162

`A068859(n+1)+1`
-/

namespace A087335.P8322141557747077162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068859 (n + 1) + 1

end

end A087335.P8322141557747077162

/-! ## A087335.P468391335788766734

`∏[A087334(n+1)]+1`
-/

namespace A087335.P468391335788766734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087335.P468391335788766734

/-!
# A087337: Cubes pertaining to A087336. a(n) = n-th partial product of A087336 + 1.

The programs for A087337, there is no canonical definition to state claims against.
-/

/-! ## A087337.P5800789896493819801

`∏[A087336(n+1)]+1`
-/

namespace A087337.P5800789896493819801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087337.P5800789896493819801

/-!
# A087339: Numbers k such that both the sum of the digits of k and 1 plus the product of its digits are primes.

The programs for A087339, there is no canonical definition to state claims against.
-/

/-! ## A087339.P11546889233708059197

`∩[A028834(n+1), A081988(n+1)]`
-/

namespace A087339.P11546889233708059197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087339.P11546889233708059197

/-! ## A087339.P3083042994410719205

`A210767(n%A151728(2*(a(n-1)+n%2)-1))` with `a(0)=2`
-/

namespace A087339.P3083042994410719205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A210767 (Int.tmod (n : ℤ) (A151728 (2 * (a (n - 1) + ((n % 2 : ℕ) : ℤ)) - 1).toNat)).toNat

end

end A087339.P3083042994410719205

/-!
# A087340: Primes p such that the sum of the digits of p as well as 1 plus the product of its digits are also primes.

The programs for A087340, the canonical program `A087340.P6235532930102355137` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087340 has offset 1).

The definition of A087340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087340.P6235532930102355137

`∩[A046704(n+1), A066725(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A087340

/-- `∩[A046704(n+1), A066725(n+1)]` -/
def P6235532930102355137.Spec : Prop :=
  ∀ n, (P6235532930102355137.a n : ℤ) = A087340 (n + 1)

theorem P6235532930102355137.correct : P6235532930102355137.Spec := by
  intro n
  simp only [A087340, Nat.add_sub_cancel]

end A087340

/-! ## A087340.P17745694707195578587

`∩[A046704(n+1), A081988(n+1)]`
-/

namespace A087340.P17745694707195578587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087340.P17745694707195578587

namespace A087340

/-- `∩[A046704(n+1), A081988(n+1)]` -/
def P17745694707195578587.Spec : Prop :=
  ∀ n, (P17745694707195578587.a n : ℤ) = A087340 (n + 1)

end A087340

/-! ## A087340.P816628977472879357

`∩[A028834(n+1), A066725(n+1)]`
-/

namespace A087340.P816628977472879357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087340.P816628977472879357

namespace A087340

/-- `∩[A028834(n+1), A066725(n+1)]` -/
def P816628977472879357.Spec : Prop :=
  ∀ n, (P816628977472879357.a n : ℤ) = A087340 (n + 1)

end A087340

/-! ## A087340.P13586574294210127191

`p?[A087339(n+1)]`
-/

namespace A087340.P13586574294210127191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087340.P13586574294210127191

namespace A087340

/-- `p?[A087339(n+1)]` -/
def P13586574294210127191.Spec : Prop :=
  ∀ n, P13586574294210127191.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P13630993578810077303

`filter[A087339(n+1), A010051(#)]`
-/

namespace A087340.P13630993578810077303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A087340.P13630993578810077303

namespace A087340

/-- `filter[A087339(n+1), A010051(#)]` -/
def P13630993578810077303.Spec : Prop :=
  ∀ n, P13630993578810077303.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P79615714644980716

`filter[A087339(n+1), A080339(#)]`
-/

namespace A087340.P79615714644980716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A087340.P79615714644980716

namespace A087340

/-- `filter[A087339(n+1), A080339(#)]` -/
def P79615714644980716.Spec : Prop :=
  ∀ n, P79615714644980716.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P10332811746102181613

`filter[A087339(n+1), A323152(#)]`
-/

namespace A087340.P10332811746102181613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A087340.P10332811746102181613

namespace A087340

/-- `filter[A087339(n+1), A323152(#)]` -/
def P10332811746102181613.Spec : Prop :=
  ∀ n, P10332811746102181613.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P15207434639226927126

`filter[A087339(n+1), A323153(#)]`
-/

namespace A087340.P15207434639226927126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A087340.P15207434639226927126

namespace A087340

/-- `filter[A087339(n+1), A323153(#)]` -/
def P15207434639226927126.Spec : Prop :=
  ∀ n, P15207434639226927126.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P5924483112598036916

`record[A020639(A087339(ceil((n+1)/2)))]`
-/

namespace A087340.P5924483112598036916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A087339 ⌈(n + 1 : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087340.P5924483112598036916

namespace A087340

/-- `record[A020639(A087339(ceil((n+1)/2)))]` -/
def P5924483112598036916.Spec : Prop :=
  ∀ n, P5924483112598036916.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P3067478828341456969

`∩[A038618(n+1), A087339(n+1)]`
-/

namespace A087340.P3067478828341456969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087340.P3067478828341456969

namespace A087340

/-- `∩[A038618(n+1), A087339(n+1)]` -/
def P3067478828341456969.Spec : Prop :=
  ∀ n, (P3067478828341456969.a n : ℤ) = A087340 (n + 1)

end A087340

/-! ## A087340.P8150003154079905453

`∩[A046704(n+1), A087339(n+1)]`
-/

namespace A087340.P8150003154079905453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087340.P8150003154079905453

namespace A087340

/-- `∩[A046704(n+1), A087339(n+1)]` -/
def P8150003154079905453.Spec : Prop :=
  ∀ n, (P8150003154079905453.a n : ℤ) = A087340 (n + 1)

end A087340

/-! ## A087340.P10743924819048917771

`∩[A066725(n+1), A087339(n+1)]`
-/

namespace A087340.P10743924819048917771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087340.P10743924819048917771

namespace A087340

/-- `∩[A066725(n+1), A087339(n+1)]` -/
def P10743924819048917771.Spec : Prop :=
  ∀ n, (P10743924819048917771.a n : ℤ) = A087340 (n + 1)

end A087340

/-! ## A087340.P3391975017298639738

`∩[A084354(n+1), A087339(n+1)]`
-/

namespace A087340.P3391975017298639738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087340.P3391975017298639738

namespace A087340

/-- `∩[A084354(n+1), A087339(n+1)]` -/
def P3391975017298639738.Spec : Prop :=
  ∀ n, (P3391975017298639738.a n : ℤ) = A087340 (n + 1)

end A087340

/-! ## A087340.P10959065821455494045

`record[A014963(A087339(A008619(n)))]`
-/

namespace A087340.P10959065821455494045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A087339 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087340.P10959065821455494045

namespace A087340

/-- `record[A014963(A087339(A008619(n)))]` -/
def P10959065821455494045.Spec : Prop :=
  ∀ n, P10959065821455494045.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P11699379195231523813

`record[A014963(A087339(A020915(n)))]`
-/

namespace A087340.P11699379195231523813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A087339 (A020915 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087340.P11699379195231523813

namespace A087340

/-- `record[A014963(A087339(A020915(n)))]` -/
def P11699379195231523813.Spec : Prop :=
  ∀ n, P11699379195231523813.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P12373046343393017508

`record[A014963(A087339(A034888(n)))]`
-/

namespace A087340.P12373046343393017508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A087339 (A034888 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087340.P12373046343393017508

namespace A087340

/-- `record[A014963(A087339(A034888(n)))]` -/
def P12373046343393017508.Spec : Prop :=
  ∀ n, P12373046343393017508.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P2529079040986199967

`record[A014963(A087339(A052938(n)))]`
-/

namespace A087340.P2529079040986199967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A087339 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087340.P2529079040986199967

namespace A087340

/-- `record[A014963(A087339(A052938(n)))]` -/
def P2529079040986199967.Spec : Prop :=
  ∀ n, P2529079040986199967.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P1343474322759696653

`record[A014963(A087339(A133310(n)))]`
-/

namespace A087340.P1343474322759696653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A087339 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087340.P1343474322759696653

namespace A087340

/-- `record[A014963(A087339(A133310(n)))]` -/
def P1343474322759696653.Spec : Prop :=
  ∀ n, P1343474322759696653.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P6797316766424691731

`record[A014963(A087339(A331300(n)))]`
-/

namespace A087340.P6797316766424691731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A087339 (A331300 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087340.P6797316766424691731

namespace A087340

/-- `record[A014963(A087339(A331300(n)))]` -/
def P6797316766424691731.Spec : Prop :=
  ∀ n, P6797316766424691731.a n = A087340 (n + 1)

end A087340

/-! ## A087340.P12343597411470372368

`A014963(record[A014963(A087339(n+1))])`
-/

namespace A087340.P12343597411470372368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A087339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087340.P12343597411470372368

namespace A087340

/-- `A014963(record[A014963(A087339(n+1))])` -/
def P12343597411470372368.Spec : Prop :=
  ∀ n, P12343597411470372368.a n = A087340 (n + 1)

end A087340

/-!
# A087342: 

The programs for A087342, there is no canonical definition to state claims against.
-/

/-! ## A087342.P11599217003356514553

`A083469(n+1)*A291769(n)`
-/

namespace A087342.P11599217003356514553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083469 (n + 1) * A291769 n

end

end A087342.P11599217003356514553

/-! ## A087342.P8703195230624310574

`A083469(n+1)*A348553(n)`
-/

namespace A087342.P8703195230624310574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083469 (n + 1) * A348553 n

end

end A087342.P8703195230624310574

/-!
# A087346: a(n) = A088116(100+n).

The programs for A087346, there is no canonical definition to state claims against.
-/

/-! ## A087346.P169828205113225878

`A088116(Δ[n²]+(20/2)²-n)`
-/

namespace A087346.P169828205113225878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088116 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + (((20 : ℚ) / 2) ^ 2 - (n : ℚ)))).toNat

end

end A087346.P169828205113225878

/-! ## A087346.P4118036626684765226

`A088117(Δ[n²]+(20/2)²-n)`
-/

namespace A087346.P4118036626684765226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088117 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + (((20 : ℚ) / 2) ^ 2 - (n : ℚ)))).toNat

end

end A087346.P4118036626684765226

/-!
# A087347: Numbers k that divide Sum_{j=1..k} Fibonacci(j*k).

The programs for A087347, there is no canonical definition to state claims against.
-/

/-! ## A087347.P15584197172975126566

`A048262(∩[A048264(n+1), A189796(n+1)])`
-/

namespace A087347.P15584197172975126566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189796 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048262 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A087347.P15584197172975126566

/-!
# A087348: a(n) = 10*n^2 - 6*n + 1.

The programs for A087348, the canonical program `A087348.P7576084630070184417` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087348 has offset 1).

The definition of A087348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087348.P7576084630070184417

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=5, a(1)=29, a(2)=73`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087348

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7576084630070184417.Spec : Prop :=
  ∀ n, P7576084630070184417.a n = A087348 (n + 1)

theorem P7576084630070184417.correct : P7576084630070184417.Spec := by
  intro n
  simp only [A087348, Nat.add_sub_cancel]

end A087348

/-! ## A087348.P7012270927165427201

`∑[20*n+4]+1`
-/

namespace A087348.P7012270927165427201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A087348.P7012270927165427201

namespace A087348

/-- `∑[20*n+4]+1` -/
def P7012270927165427201.Spec : Prop :=
  ∀ n, (P7012270927165427201.a n : ℤ) = A087348 (n + 1)

end A087348

/-! ## A087348.P9706211303109530676

`∑[a(n-1)+20]` with `a(0)=5, a(1)=24`
-/

namespace A087348.P9706211303109530676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 24] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087348.P9706211303109530676

namespace A087348

/-- `∑[a(n-1)+20]` -/
def P9706211303109530676.Spec : Prop :=
  ∀ n, (P9706211303109530676.a n : ℤ) = A087348 (n + 1)

end A087348

/-! ## A087348.P4250997756241754062

`or(1, (10*n+4)*(n+1))`
-/

namespace A087348.P4250997756241754062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((10 * n + 4) * (n + 1))

end

end A087348.P4250997756241754062

namespace A087348

/-- `or(1, (10*n+4)*(n+1))` -/
def P4250997756241754062.Spec : Prop :=
  ∀ n, (P4250997756241754062.a n : ℤ) = A087348 (n + 1)

end A087348

/-! ## A087348.P12129319154581990377

`∑[A063143(n+1)]`
-/

namespace A087348.P12129319154581990377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087348.P12129319154581990377

namespace A087348

/-- `∑[A063143(n+1)]` -/
def P12129319154581990377.Spec : Prop :=
  ∀ n, P12129319154581990377.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P5399180498001566348

`∑[A063144(n+1)-3]`
-/

namespace A087348.P5399180498001566348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063144 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087348.P5399180498001566348

namespace A087348

/-- `∑[A063144(n+1)-3]` -/
def P5399180498001566348.Spec : Prop :=
  ∀ n, P5399180498001566348.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P16974393936074306493

`∑[A063155(n+1)-4]`
-/

namespace A087348.P16974393936074306493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063155 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087348.P16974393936074306493

namespace A087348

/-- `∑[A063155(n+1)-4]` -/
def P16974393936074306493.Spec : Prop :=
  ∀ n, P16974393936074306493.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P3462256541268682672

`abs((n+1)*A017329(n)-n)`
-/

namespace A087348.P3462256541268682672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A017329 n - (n : ℤ)|

end

end A087348.P3462256541268682672

namespace A087348

/-- `abs((n+1)*A017329(n)-n)` -/
def P3462256541268682672.Spec : Prop :=
  ∀ n, P3462256541268682672.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P14611890150664023487

`xor(1, 2*(n+1)*A016873(n))`
-/

namespace A087348.P14611890150664023487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((2 * (n + 1) : ℤ) * A016873 n)

end

end A087348.P14611890150664023487

namespace A087348

/-- `xor(1, 2*(n+1)*A016873(n))` -/
def P14611890150664023487.Spec : Prop :=
  ∀ n, P14611890150664023487.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P8080154873785431222

`abs(∑[4*(n-A016921(n))]-1)`
-/

namespace A087348.P8080154873785431222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - A016921 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A087348.P8080154873785431222

namespace A087348

/-- `abs(∑[4*(n-A016921(n))]-1)` -/
def P8080154873785431222.Spec : Prop :=
  ∀ n, P8080154873785431222.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P16492610795762590210

`A146301(n)%A304506(n)`
-/

namespace A087348.P16492610795762590210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146301 n) (A304506 n)

end

end A087348.P16492610795762590210

namespace A087348

/-- `A146301(n)%A304506(n)` -/
def P16492610795762590210.Spec : Prop :=
  ∀ n, P16492610795762590210.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P11838249289138145147

`A291582(n+1)%A158551(n+1)`
-/

namespace A087348.P11838249289138145147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291582 (n + 1)) (A158551 (n + 1))

end

end A087348.P11838249289138145147

namespace A087348

/-- `A291582(n+1)%A158551(n+1)` -/
def P11838249289138145147.Spec : Prop :=
  ∀ n, P11838249289138145147.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P12243048841257167581

`Δ[∑[A153784(n)]+n]`
-/

namespace A087348.P12243048841257167581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087348.P12243048841257167581

namespace A087348

/-- `Δ[∑[A153784(n)]+n]` -/
def P12243048841257167581.Spec : Prop :=
  ∀ n, P12243048841257167581.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P597742346039338833

`A104099(n+1)/(n+1)`
-/

namespace A087348.P597742346039338833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104099 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A087348.P597742346039338833

namespace A087348

/-- `A104099(n+1)/(n+1)` -/
def P597742346039338833.Spec : Prop :=
  ∀ n, P597742346039338833.a n = (A087348 (n + 1) : ℚ)

end A087348

/-! ## A087348.P15416977962599489658

`record[A153784(abs(1-n))+1]`
-/

namespace A087348.P15416977962599489658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 |1 - (n : ℤ)|.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087348.P15416977962599489658

namespace A087348

/-- `record[A153784(abs(1-n))+1]` -/
def P15416977962599489658.Spec : Prop :=
  ∀ n, P15416977962599489658.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P3391057317107674195

`A220082(2*(n+1))`
-/

namespace A087348.P3391057317107674195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (2 * (n + 1))

end

end A087348.P3391057317107674195

namespace A087348

/-- `A220082(2*(n+1))` -/
def P3391057317107674195.Spec : Prop :=
  ∀ n, P3391057317107674195.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P16645579394470379625

`∑[A063232(comp[2*n])]`
-/

namespace A087348.P16645579394470379625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063232 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087348.P16645579394470379625

namespace A087348

/-- `∑[A063232(comp[2*n])]` -/
def P16645579394470379625.Spec : Prop :=
  ∀ n, P16645579394470379625.a n = A087348 (n + 1)

end A087348

/-! ## A087348.P8013511323472481275

`A079273(2*(n+1))/2`
-/

namespace A087348.P8013511323472481275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079273 (2 * (n + 1)) : ℚ) / 2

end

end A087348.P8013511323472481275

namespace A087348

/-- `A079273(2*(n+1))/2` -/
def P8013511323472481275.Spec : Prop :=
  ∀ n, P8013511323472481275.a n = (A087348 (n + 1) : ℚ)

end A087348

/-! ## A087348.P16484518654463182229

`(A135705(2*n+1)+1)/2`
-/

namespace A087348.P16484518654463182229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135705 (2 * n + 1) + 1 : ℚ) / 2

end

end A087348.P16484518654463182229

namespace A087348

/-- `(A135705(2*n+1)+1)/2` -/
def P16484518654463182229.Spec : Prop :=
  ∀ n, P16484518654463182229.a n = (A087348 (n + 1) : ℚ)

end A087348

/-!
# A087349: a(n) = n + (smallest prime-factor of n+1).

The programs for A087349, there is no canonical definition to state claims against.
-/

/-! ## A087349.P15107742474444681163

`A061228(n+2)-1`
-/

namespace A087349.P15107742474444681163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 2) - 1

end

end A087349.P15107742474444681163

/-! ## A087349.P12623842523016761828

`A020639(n+2)+1+n`
-/

namespace A087349.P12623842523016761828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1 + (n : ℤ)

end

end A087349.P12623842523016761828

/-! ## A087349.P17398283463870617243

`A057237(n+2)+2+n`
-/

namespace A087349.P17398283463870617243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 2) + 2 + (n : ℤ)

end

end A087349.P17398283463870617243

/-! ## A087349.P10016895658087536592

`2*n+3-A046666(n+2)`
-/

namespace A087349.P10016895658087536592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A046666 (n + 2)

end

end A087349.P10016895658087536592

/-! ## A087349.P16850127977816244818

`2*n-(n-1-A020639(2*n-(n-2)))`
-/

namespace A087349.P16850127977816244818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - A020639 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat)

end

end A087349.P16850127977816244818

/-! ## A087349.P13508169220681340758

`A000113(A020639(n+2))+n`
-/

namespace A087349.P13508169220681340758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (A020639 (n + 2)).toNat + (n : ℤ)

end

end A087349.P13508169220681340758

/-! ## A087349.P335070832846597805

`A000203(n+2)-(A326146(n+2)+1)`
-/

namespace A087349.P335070832846597805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - (A326146 (n + 2) + 1)

end

end A087349.P335070832846597805

/-! ## A087349.P6341824333999369566

`A159475(n+2)-1`
-/

namespace A087349.P6341824333999369566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (n + 2) - 1

end

end A087349.P6341824333999369566

/-! ## A087349.P906858413010863571

`sqrt(A088377(n+2))+n+1`
-/

namespace A087349.P906858413010863571
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 2) : ℝ) + (n + 1 : ℝ)

end

end A087349.P906858413010863571

/-! ## A087349.P15694319954264135690

`Δ[A046669(n+1)]+1+n`
-/

namespace A087349.P15694319954264135690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A087349.P15694319954264135690

/-! ## A087349.P9955271867048754007

`Δ[A088821(n+1)]+1+n`
-/

namespace A087349.P9955271867048754007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A087349.P9955271867048754007

/-! ## A087349.P15922075223122694455

`(n+2)/A032742(n+2)+1+n`
-/

namespace A087349.P15922075223122694455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A032742 (n + 2) : ℚ) + 1 + (n : ℚ)

end

end A087349.P15922075223122694455

/-! ## A087349.P4339359665901927276

`A325962(A061228(n+2))`
-/

namespace A087349.P4339359665901927276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325962 (A061228 (n + 2)).toNat

end

end A087349.P4339359665901927276

/-! ## A087349.P6284921677049506283

`A325962(A159475(n+2))`
-/

namespace A087349.P6284921677049506283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325962 (A159475 (n + 2)).toNat

end

end A087349.P6284921677049506283

/-! ## A087349.P13761160645025552649

`A008864(A055396(n+2))+n`
-/

namespace A087349.P13761160645025552649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A055396 (n + 2)).toNat + (n : ℤ)

end

end A087349.P13761160645025552649

/-! ## A087349.P15938249607420433664

`A048250(A028233(n+2))+n`
-/

namespace A087349.P15938249607420433664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A028233 (n + 2)).toNat + (n : ℤ)

end

end A087349.P15938249607420433664

/-!
# A087350: a(n) = Sum_{k=0..n} (3*n)!/(3*k)!.

The programs for A087350, there is no canonical definition to state claims against.
-/

/-! ## A087350.P11003383189841403781

`A330044(3*n)`
-/

namespace A087350.P11003383189841403781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330044 (3 * n)

end

end A087350.P11003383189841403781

/-! ## A087350.P14659589958645077958

`A352659(3*n)`
-/

namespace A087350.P14659589958645077958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352659 (3 * n)

end

end A087350.P14659589958645077958

/-! ## A087350.P15814910210027288451

`a(n-1)*A054776(n)+1` with `a(0)=1`
-/

namespace A087350.P15814910210027288451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A054776 n + 1

end

end A087350.P15814910210027288451

/-! ## A087350.P1117146087499103709

`or(1, A352659(A008486(n)))`
-/

namespace A087350.P1117146087499103709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A352659 (A008486 n).toNat)

end

end A087350.P1117146087499103709

/-! ## A087350.P1294362725185816041

`record[gcd(A330044(n), A352659(n))]`
-/

namespace A087350.P1294362725185816041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330044 n) (A352659 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087350.P1294362725185816041

/-!
# A087352: a(n+1) is the smallest square > a(n) such that every concatenation (n > 1) is a prime.

The programs for A087352, there is no canonical definition to state claims against.
-/

/-! ## A087352.P7504470477147823405

`record[A023136(A294130(n+1))²]`
-/

namespace A087352.P7504470477147823405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023136 (A294130 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087352.P7504470477147823405

/-! ## A087352.P3847358674417522419

`∏{e}[10^n, A056652(#)]`
-/

namespace A087352.P3847358674417522419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056652 (Nat.factorization (f1 n) p)

end

end A087352.P3847358674417522419

/-!
# A087354: Smallest square which is the concatenation of n nonzero squares.

The programs for A087354, there is no canonical definition to state claims against.
-/

/-! ## A087354.P10580242459441041980

`A006716(comp[∑[n]]^ceil((13*n-6)/47))`
-/

namespace A087354.P10580242459441041980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006716 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (⌈((13 * n : ℤ) - 6 : ℚ) / 47⌉ : ℤ))).toNat

end

end A087354.P10580242459441041980

/-!
# A087355: n^10 mod 10^n.

The programs for A087355, the canonical program `A087355.P8726566517715082254` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087355 has offset 1).

The definition of A087355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087355.P8726566517715082254

`((n+1)^10)%(10^(n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A087355

/-- `((n+1)^10)%(10^(n+1))` -/
def P8726566517715082254.Spec : Prop :=
  ∀ n, (P8726566517715082254.a n : ℤ) = A087355 (n + 1)

theorem P8726566517715082254.correct : P8726566517715082254.Spec := by
  intro n
  simp only [A087355, Nat.add_sub_cancel]

end A087355

/-!
# A087356: Beginning with 2, smallest primes such that a(k)-a(k-1) is a distinct power of 2.

The programs for A087356, there is no canonical definition to state claims against.
-/

/-! ## A087356.P11008572687379654757

`record[p?[A179821(A294205(n+1))]]`
-/

namespace A087356.P11008572687379654757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 (A294205 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087356.P11008572687379654757

/-! ## A087356.P7325691919447426987

`A172183(a(n-1))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A087356.P7325691919447426987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A172183 (a (n - 1)).toNat

end

end A087356.P7325691919447426987

/-!
# A087357: Index of powers of 2 arising as the difference of a pair of successive terms of A087356.

The programs for A087357, there is no canonical definition to state claims against.
-/

/-! ## A087357.P7308800384978877283

`log2(Δ[A087356(n+1)])`
-/

namespace A087357.P7308800384978877283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087356 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A087357.P7308800384978877283

/-! ## A087357.P5243666199263796956

`val(Δ[A087356(n+1)], 2%A074526(n))`
-/

namespace A087357.P5243666199263796956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (Int.tmod 2 (A074526 n)).toNat

end

end A087357.P5243666199263796956

/-! ## A087357.P10248095155632128575

`val(Δ[A087356(n+1)], A158372(n+1)%3)`
-/

namespace A087357.P10248095155632128575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (Int.tmod (A158372 (n + 1)) 3).toNat

end

end A087357.P10248095155632128575

/-! ## A087357.P3560272106405364612

`val(Δ[A087356(n+1)], A158395(n+1)%3)`
-/

namespace A087357.P3560272106405364612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (Int.tmod (A158395 (n + 1)) 3).toNat

end

end A087357.P3560272106405364612

/-!
# A087358: a(n+1) is the smallest prime > a(n) such that a(n+1) - a(n) == 0 (mod n^n).

The programs for A087358, there is no canonical definition to state claims against.
-/

/-! ## A087358.P6140370230491059607

`p?[∑[lcm(2-char[1], (-n)^n)]]`
-/

namespace A087358.P6140370230491059607
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)) ((-(n : ℤ)) ^ n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A087358.P6140370230491059607

/-!
# A087359: For n > 2, a(n) is the smallest triangular number > a(n-1) and congruent to a(n-1) (mod a(n-2)).

The programs for A087359, there is no canonical definition to state claims against.
-/

/-! ## A087359.P854717005397676420

`C(A087360(n+1)+1, 2)`
-/

namespace A087359.P854717005397676420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087360 (n + 1) + 1).toNat 2

end

end A087359.P854717005397676420

/-! ## A087359.P8121754781474456825

`A000217(A087360(n+1))`
-/

namespace A087359.P8121754781474456825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A087360 (n + 1)).toNat

end

end A087359.P8121754781474456825

/-! ## A087359.P14880099852280469706

`A161680(A087360(n+1)+1)`
-/

namespace A087359.P14880099852280469706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A087360 (n + 1) + 1).toNat

end

end A087359.P14880099852280469706

/-! ## A087359.P11661325150781665907

`A000096(A087360(n+1)-1)+1`
-/

namespace A087359.P11661325150781665907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A087360 (n + 1) - 1).toNat + 1

end

end A087359.P11661325150781665907

/-! ## A087359.P13911034524781506070

`A321804(n)+A000124(A087360(n+1))`
-/

namespace A087359.P13911034524781506070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + A000124 (A087360 (n + 1)).toNat

end

end A087359.P13911034524781506070

/-!
# A087360: Indices of triangular numbers in A087359.

The programs for A087360, there is no canonical definition to state claims against.
-/

/-! ## A087360.P4234026853454834032

`floor(sqrt(2*A087359(n+1)))`
-/

namespace A087360.P4234026853454834032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A087359 (n + 1))

end

end A087360.P4234026853454834032

/-! ## A087360.P3032692497009699291

`A002024(A087359(n+1))`
-/

namespace A087360.P3032692497009699291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A087359 (n + 1)).toNat

end

end A087360.P3032692497009699291

/-! ## A087360.P4565139991562508432

`A003056(A087359(n+1)+1)`
-/

namespace A087360.P4565139991562508432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A087359 (n + 1) + 1).toNat

end

end A087360.P4565139991562508432

/-! ## A087360.P6176240739459645106

`A007318(A087359(n+1)+1)`
-/

namespace A087360.P6176240739459645106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A087359 (n + 1) + 1).toNat

end

end A087360.P6176240739459645106

/-! ## A087360.P1119025760786892544

`A077028(A087359(n+1)+1)`
-/

namespace A087360.P1119025760786892544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A087359 (n + 1) + 1).toNat

end

end A087360.P1119025760786892544

/-!
# A087361: For n > 2, a(n) = smallest square > a(n-1) and congruent to a(n-1) (mod a(n-2)).

The programs for A087361, there is no canonical definition to state claims against.
-/

/-! ## A087361.P2945561143984714288

`A087362(n+1)²`
-/

namespace A087361.P2945561143984714288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087362 (n + 1) ^ 2

end

end A087361.P2945561143984714288

/-! ## A087361.P8627776188618597157

`A087362(A272215(n+1))^2`
-/

namespace A087361.P8627776188618597157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087362 (A272215 (n + 1)).toNat ^ 2

end

end A087361.P8627776188618597157

/-! ## A087361.P16575749472169678163

`A087362(n+1)^(A358692(3*n+1)+1)`
-/

namespace A087361.P16575749472169678163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087362 (n + 1) : ℚ) ^ (A358692 (3 * n + 1) + 1 : ℤ)

end

end A087361.P16575749472169678163

/-! ## A087361.P12727397651023774054

`A087362(n+1)^A000005(A087379(n))`
-/

namespace A087361.P12727397651023774054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087362 (n + 1) : ℚ) ^ (A000005 (A087379 n).toNat : ℤ)

end

end A087361.P12727397651023774054

/-! ## A087361.P11521086987614721522

`A087362(n+1)*A087362(A272215(n+1))`
-/

namespace A087361.P11521086987614721522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087362 (n + 1) * A087362 (A272215 (n + 1)).toNat

end

end A087361.P11521086987614721522

/-!
# A087362: a(n) = A087361(n)^(1/2).

The programs for A087362, there is no canonical definition to state claims against.
-/

/-! ## A087362.P16280608952264957703

`A087361(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087362.P16280608952264957703
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A087361 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A087362.P16280608952264957703

/-! ## A087362.P7436786546795601997

`sqrt(A087361(n+1))`
-/

namespace A087362.P7436786546795601997
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087361 (n + 1) : ℝ)

end

end A087362.P7436786546795601997

/-! ## A087362.P16055655897417540957

`root(A087361(n+1), A000034(Δ[n²]))`
-/

namespace A087362.P16055655897417540957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A087361 (n + 1) : ℝ) ^ (1 / (A000034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ))

end

end A087362.P16055655897417540957

/-! ## A087362.P1117534008545541446

`root(A087361(n+1), A133265(2*(n+2)))`
-/

namespace A087362.P1117534008545541446
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A087361 (n + 1) : ℝ) ^ (1 / (A133265 (2 * (n + 2)) : ℝ))

end

end A087362.P1117534008545541446

/-! ## A087362.P13600924418326253710

`root(A087361(n+1), ∏{e}[A236481(n+1), #+1])`
-/

namespace A087362.P13600924418326253710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236481 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A087361 (n + 1) : ℝ) ^ (1 / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℝ))

end

end A087362.P13600924418326253710

/-!
# A087363: Primes having only {3, 5, 7} as digits.

The programs for A087363, there is no canonical definition to state claims against.
-/

/-! ## A087363.P3014494225403411863

`∩[A386062(n+1), A386181(n+1)]`
-/

namespace A087363.P3014494225403411863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P3014494225403411863

/-! ## A087363.P11126945653070620481

`∩[A386062(n+1), A386178(n+1)]`
-/

namespace A087363.P11126945653070620481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P11126945653070620481

/-! ## A087363.P5437554969490019468

`∩[A386178(n+1), A386181(n+1)]`
-/

namespace A087363.P5437554969490019468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P5437554969490019468

/-! ## A087363.P5591470859469001381

`∩[A386062(n+1), A386170(n+1)]`
-/

namespace A087363.P5591470859469001381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P5591470859469001381

/-! ## A087363.P8250451054887309458

`∩[A386170(n+1), A386178(n+1)]`
-/

namespace A087363.P8250451054887309458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P8250451054887309458

/-! ## A087363.P16737110488759372712

`∩[A386170(n+1), A386181(n+1)]`
-/

namespace A087363.P16737110488759372712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P16737110488759372712

/-! ## A087363.P4951660786173835889

`∩[A386062(n+1), A386182(n+1)]`
-/

namespace A087363.P4951660786173835889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P4951660786173835889

/-! ## A087363.P3007255360651165298

`∩[A386170(n+1), A386182(n+1)]`
-/

namespace A087363.P3007255360651165298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P3007255360651165298

/-! ## A087363.P17995026932815009783

`∩[A019546(n+1), A386062(n+1)]`
-/

namespace A087363.P17995026932815009783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P17995026932815009783

/-! ## A087363.P12207979111665312802

`∩[A019546(n+1), A386111(n+1)]`
-/

namespace A087363.P12207979111665312802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P12207979111665312802

/-! ## A087363.P412720704014720486

`∩[A019546(n+1), A386170(n+1)]`
-/

namespace A087363.P412720704014720486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P412720704014720486

/-! ## A087363.P10375946512533008758

`∩[A019546(n+1), A386178(n+1)]`
-/

namespace A087363.P10375946512533008758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P10375946512533008758

/-! ## A087363.P4154167712876590980

`∩[A019546(n+1), A386181(n+1)]`
-/

namespace A087363.P4154167712876590980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P4154167712876590980

/-! ## A087363.P13103740115445439333

`∩[A019546(n+1), A386182(n+1)]`
-/

namespace A087363.P13103740115445439333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P13103740115445439333

/-! ## A087363.P9942723703048038126

`∩[A386062(n+1), A386111(n+1)]`
-/

namespace A087363.P9942723703048038126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P9942723703048038126

/-! ## A087363.P5412807789787217839

`∩[A386111(n+1), A386170(n+1)]`
-/

namespace A087363.P5412807789787217839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P5412807789787217839

/-! ## A087363.P1280737555179301039

`∩[A386111(n+1), A386178(n+1)]`
-/

namespace A087363.P1280737555179301039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P1280737555179301039

/-! ## A087363.P16465075997649310728

`∩[A386111(n+1), A386181(n+1)]`
-/

namespace A087363.P16465075997649310728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P16465075997649310728

/-! ## A087363.P9402792088037490444

`∩[A386111(n+1), A386182(n+1)]`
-/

namespace A087363.P9402792088037490444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P9402792088037490444

/-! ## A087363.P11547813714589095871

`∩[A019546(n+1), A030096(n+1)]`
-/

namespace A087363.P11547813714589095871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087363.P11547813714589095871

/-!
# A087364: Smallest palindromic prime built using the palindromes with odd number of digits as central digits.

The programs for A087364, there is no canonical definition to state claims against.
-/

/-! ## A087364.P5663325971250590491

`A256048(A056525(n+1)%A128945(n+1))`
-/

namespace A087364.P5663325971250590491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256048 (Int.tmod (A056525 (n + 1)) (A128945 (n + 1))).toNat

end

end A087364.P5663325971250590491

/-! ## A087364.P17733708436268708987

`A256048(A056525(n+1)%A303500(n))`
-/

namespace A087364.P17733708436268708987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256048 (Int.tmod (A056525 (n + 1)) (A303500 n)).toNat

end

end A087364.P17733708436268708987

/-! ## A087364.P509883347218322745

`A256048(A056525(n+1)^Δ[A269396(n+1)])`
-/

namespace A087364.P509883347218322745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256048 (SequenceMachineLib.roundAway ((A056525 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A087364.P509883347218322745

/-! ## A087364.P4394036788521876281

`A001222(A186522(n+2))*A256048(A056525(n+1))`
-/

namespace A087364.P4394036788521876281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A186522 (n + 2)).toNat * A256048 (A056525 (n + 1)).toNat

end

end A087364.P4394036788521876281

/-! ## A087364.P1953943388592127509

`A256048(A056525(n+1)^A340365(n+1))`
-/

namespace A087364.P1953943388592127509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256048 (SequenceMachineLib.roundAway ((A056525 (n + 1) : ℚ) ^ (A340365 (n + 1) : ℤ))).toNat

end

end A087364.P1953943388592127509

/-!
# A087365: Smallest palindrome divisible by n^n, or 0 if none exists.

The programs for A087365, there is no canonical definition to state claims against.
-/

/-! ## A087365.P7801261491261896912

`record[A236961(n)]*A087366(n+1)`
-/

namespace A087365.P7801261491261896912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A087366 (n + 1)

end

end A087365.P7801261491261896912

/-! ## A087365.P14458010592195123305

`A087366(n+1)*A236961(∑[n+1])`
-/

namespace A087365.P14458010592195123305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087366 (n + 1) * A236961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087365.P14458010592195123305

/-! ## A087365.P5865414802427858732

`record[A057075(n+1)]*A087366(n+1)`
-/

namespace A087365.P5865414802427858732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A087366 (n + 1)

end

end A087365.P5865414802427858732

/-! ## A087365.P9827579846353586192

`record[A247026(n)]*A087366(n+1)`
-/

namespace A087365.P9827579846353586192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A087366 (n + 1)

end

end A087365.P9827579846353586192

/-! ## A087365.P1057457799808765257

`record[A344658(n)]*A087366(n+1)`
-/

namespace A087365.P1057457799808765257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A087366 (n + 1)

end

end A087365.P1057457799808765257

/-!
# A087366: Smallest k such that k*n^n is a palindrome, or 0 if none exists.

The programs for A087366, there is no canonical definition to state claims against.
-/

/-! ## A087366.P10465668836734812774

`A087365(n+1)/record[A236961(n)]`
-/

namespace A087366.P10465668836734812774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087365 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A087366.P10465668836734812774

/-! ## A087366.P12968757356012767029

`A087365(n+1)/record[A057075(n+1)]`
-/

namespace A087366.P12968757356012767029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087365 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A087366.P12968757356012767029

/-! ## A087366.P3929254683059116363

`A087365(n+1)/A236961(A000217(n+1))`
-/

namespace A087366.P3929254683059116363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087365 (n + 1) : ℚ) / (A236961 (A000217 (n + 1)).toNat : ℚ)

end

end A087366.P3929254683059116363

/-! ## A087366.P7274103860684795879

`A087365(n+1)/record[A247026(n)]`
-/

namespace A087366.P7274103860684795879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087365 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A087366.P7274103860684795879

/-! ## A087366.P13314788422884332053

`A087365(n+1)/record[A344658(n)]`
-/

namespace A087366.P13314788422884332053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344658 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087365 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A087366.P13314788422884332053

/-!
# A087367: Twin primes whose digits are primes.

The programs for A087367, there is no canonical definition to state claims against.
-/

/-! ## A087367.P13059153947738171073

`p?[A019546(n+1)+2]-2`
-/

namespace A087367.P13059153947738171073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A087367.P13059153947738171073

/-! ## A087367.P13563193522465225863

`∩[A001359(n+1), A019546(n+1)]`
-/

namespace A087367.P13563193522465225863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087367.P13563193522465225863

/-! ## A087367.P14601457817562112644

`∩[A001838(n+1), A019546(n+1)]`
-/

namespace A087367.P14601457817562112644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087367.P14601457817562112644

/-! ## A087367.P4406478251442884957

`∩[A001359(n+1), A046034(n+1)]`
-/

namespace A087367.P4406478251442884957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087367.P4406478251442884957

/-! ## A087367.P11600760373121794401

`∩[A001359(n+1), A062087(n+1)]`
-/

namespace A087367.P11600760373121794401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087367.P11600760373121794401

/-!
# A087368: Prime-indexed primes (PIPs) whose digits are all primes.

The programs for A087368, there is no canonical definition to state claims against.
-/

/-! ## A087368.P16316869001603910509

`∩[A006450(n+1), A019546(n+1)]`
-/

namespace A087368.P16316869001603910509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087368.P16316869001603910509

/-! ## A087368.P3172824409520118318

`∩[A006450(n+1), A046034(n+1)]`
-/

namespace A087368.P3172824409520118318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087368.P3172824409520118318

/-! ## A087368.P142134803849929609

`∩[A006450(n+1), A062087(n+1)]`
-/

namespace A087368.P142134803849929609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087368.P142134803849929609

/-! ## A087368.P6973498511281540192

`∩[A019546(n+1), A302596(n+1)]`
-/

namespace A087368.P6973498511281540192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087368.P6973498511281540192

/-! ## A087368.P3602280997582871903

`∩[A062087(n+1), A302596(n+1)]`
-/

namespace A087368.P3602280997582871903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087368.P3602280997582871903

/-!
# A087369: Smallest palindromic square multiple of the n-th palindrome.

The programs for A087369, there is no canonical definition to state claims against.
-/

/-! ## A087369.P13313424072613814691

`A111443(A195686(n))`
-/

namespace A087369.P13313424072613814691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111443 (A195686 n).toNat

end

end A087369.P13313424072613814691

/-!
# A087370: Numbers n such that 3n - 1 is a prime.

The programs for A087370, the canonical program `A087370.P13081478273326354661` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087370 has offset 1).

The definition of A087370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024893, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087370.P13081478273326354661

`A024893(n+1)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087370

/-- `A024893(n+1)+1` -/
def P13081478273326354661.Spec : Prop :=
  ∀ n, P13081478273326354661.a n = A087370 (n + 1)

theorem P13081478273326354661.correct : P13081478273326354661.Spec := by
  intro n
  simp only [A087370, Nat.add_sub_cancel]

end A087370

/-! ## A087370.P847855552149614519

`A088879(n+1)+2`
-/

namespace A087370.P847855552149614519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088879 (n + 1) + 2

end

end A087370.P847855552149614519

namespace A087370

/-- `A088879(n+1)+2` -/
def P847855552149614519.Spec : Prop :=
  ∀ n, P847855552149614519.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P228920344288005238

`(p?[3*n-1]+1)/3`
-/

namespace A087370.P228920344288005238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 3

end

end A087370.P228920344288005238

namespace A087370

/-- `(p?[3*n-1]+1)/3` -/
def P228920344288005238.Spec : Prop :=
  ∀ n, P228920344288005238.a n = (A087370 (n + 1) : ℚ)

end A087370

/-! ## A087370.P4707475095595133297

`A228121(n+1)-1`
-/

namespace A087370.P4707475095595133297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 1

end

end A087370.P4707475095595133297

namespace A087370

/-- `A228121(n+1)-1` -/
def P4707475095595133297.Spec : Prop :=
  ∀ n, P4707475095595133297.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P11228474387234494211

`ceil(A034934(n+1)/2)`
-/

namespace A087370.P11228474387234494211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034934 (n + 1) : ℚ) / 2⌉

end

end A087370.P11228474387234494211

namespace A087370

/-- `ceil(A034934(n+1)/2)` -/
def P11228474387234494211.Spec : Prop :=
  ∀ n, P11228474387234494211.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P5184864869075386417

`ceil(A003627(n+1)/3)`
-/

namespace A087370.P5184864869075386417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003627 (n + 1) : ℚ) / 3⌉

end

end A087370.P5184864869075386417

namespace A087370

/-- `ceil(A003627(n+1)/3)` -/
def P5184864869075386417.Spec : Prop :=
  ∀ n, P5184864869075386417.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P8074665177732704787

`ceil(A112774(n+1)/6)`
-/

namespace A087370.P8074665177732704787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112774 (n + 1) : ℚ) / 6⌉

end

end A087370.P8074665177732704787

namespace A087370

/-- `ceil(A112774(n+1)/6)` -/
def P8074665177732704787.Spec : Prop :=
  ∀ n, P8074665177732704787.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P3572913464157451721

`A003627(n+1)-A034934(n+1)`
-/

namespace A087370.P3572913464157451721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) - A034934 (n + 1)

end

end A087370.P3572913464157451721

namespace A087370

/-- `A003627(n+1)-A034934(n+1)` -/
def P3572913464157451721.Spec : Prop :=
  ∀ n, P3572913464157451721.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P13445580786235359614

`record[A228121(A133310(n))-1]`
-/

namespace A087370.P13445580786235359614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087370.P13445580786235359614

namespace A087370

/-- `record[A228121(A133310(n))-1]` -/
def P13445580786235359614.Spec : Prop :=
  ∀ n, P13445580786235359614.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P5121711707903791441

`A283419(A091177(n+1))`
-/

namespace A087370.P5121711707903791441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283419 (A091177 (n + 1)).toNat

end

end A087370.P5121711707903791441

namespace A087370

/-- `A283419(A091177(n+1))` -/
def P5121711707903791441.Spec : Prop :=
  ∀ n, P5121711707903791441.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P6791699740090623999

`record[(A000040(n+1)+1)/A023585(n+1)]`
-/

namespace A087370.P6791699740090623999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + 1 : ℚ) / (A023585 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087370.P6791699740090623999

namespace A087370

/-- `record[(A000040(n+1)+1)/A023585(n+1)]` -/
def P6791699740090623999.Spec : Prop :=
  ∀ n, P6791699740090623999.a n = (A087370 (n + 1) : ℚ)

end A087370

/-! ## A087370.P10562459090852380182

`A000040(A091177(n+1))-A034934(n+1)`
-/

namespace A087370.P10562459090852380182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091177 (n + 1)).toNat - A034934 (n + 1)

end

end A087370.P10562459090852380182

namespace A087370

/-- `A000040(A091177(n+1))-A034934(n+1)` -/
def P10562459090852380182.Spec : Prop :=
  ∀ n, P10562459090852380182.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P8401705045833618258

`eq[1, A001222(3*n+2)]+1`
-/

namespace A087370.P8401705045833618258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087370.P8401705045833618258

namespace A087370

/-- `eq[1, A001222(3*n+2)]+1` -/
def P8401705045833618258.Spec : Prop :=
  ∀ n, (P8401705045833618258.a n : ℤ) = A087370 (n + 1)

end A087370

/-! ## A087370.P18172169843012146411

`eq[2, A000005(3*n+2)]+1`
-/

namespace A087370.P18172169843012146411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087370.P18172169843012146411

namespace A087370

/-- `eq[2, A000005(3*n+2)]+1` -/
def P18172169843012146411.Spec : Prop :=
  ∀ n, (P18172169843012146411.a n : ℤ) = A087370 (n + 1)

end A087370

/-! ## A087370.P7711675717825811658

`lt[n, A020639(3*n+2)]+1`
-/

namespace A087370.P7711675717825811658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A087370.P7711675717825811658

namespace A087370

/-- `lt[n, A020639(3*n+2)]+1` -/
def P7711675717825811658.Spec : Prop :=
  ∀ n, (P7711675717825811658.a n : ℤ) = A087370 (n + 1)

end A087370

/-! ## A087370.P3530243467388451371

`record[A000010(3*n+2)-2*n]`
-/

namespace A087370.P3530243467388451371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087370.P3530243467388451371

namespace A087370

/-- `record[A000010(3*n+2)-2*n]` -/
def P3530243467388451371.Spec : Prop :=
  ∀ n, P3530243467388451371.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P2056110488144056262

`lt[2*n, A006530(3*n+2)]+1`
-/

namespace A087370.P2056110488144056262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A087370.P2056110488144056262

namespace A087370

/-- `lt[2*n, A006530(3*n+2)]+1` -/
def P2056110488144056262.Spec : Prop :=
  ∀ n, (P2056110488144056262.a n : ℤ) = A087370 (n + 1)

end A087370

/-! ## A087370.P3548497281839310123

`eq[1, A337135(3*n+2)]+1`
-/

namespace A087370.P3548497281839310123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087370.P3548497281839310123

namespace A087370

/-- `eq[1, A337135(3*n+2)]+1` -/
def P3548497281839310123.Spec : Prop :=
  ∀ n, (P3548497281839310123.a n : ℤ) = A087370 (n + 1)

end A087370

/-! ## A087370.P769892177649009890

`A033686(eq[n+1, A033686(n)])`
-/

namespace A087370.P769892177649009890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087370.P769892177649009890

namespace A087370

/-- `A033686(eq[n+1, A033686(n)])` -/
def P769892177649009890.Spec : Prop :=
  ∀ n, P769892177649009890.a n = A087370 (n + 1)

end A087370

/-! ## A087370.P15802442713307356549

`A033686(eq[1, A033686(n)-n])`
-/

namespace A087370.P15802442713307356549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033686 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087370.P15802442713307356549

namespace A087370

/-- `A033686(eq[1, A033686(n)-n])` -/
def P15802442713307356549.Spec : Prop :=
  ∀ n, P15802442713307356549.a n = A087370 (n + 1)

end A087370

/-!
# A087371: Smallest k such that 10^k + 2n-1 is a prime >10, or 0 if no such k exists. Index of the smallest power of 10 which when increased by the n-th odd number yields a prime.

The programs for A087371, there is no canonical definition to state claims against.
-/

/-! ## A087371.P8675172592984803511

`A121373(A252157(n+1))+A088534(2*n+1)`
-/

namespace A087371.P8675172592984803511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A252157 (n + 1)).toNat + A088534 (2 * n + 1)

end

end A087371.P8675172592984803511

/-! ## A087371.P2509570248625511464

`val(A342192(n+1), A318512(A352873(3*n+5)))`
-/

namespace A087371.P2509570248625511464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A342192 (n + 1)).toNat (A318512 (A352873 (3 * n + 5)).toNat).toNat

end

end A087371.P2509570248625511464

/-! ## A087371.P1362380853764756710

`and(A009194(A000045(n+1)), A239397(n+1))`
-/

namespace A087371.P1362380853764756710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009194 (A000045 (n + 1)).toNat) (A239397 (n + 1))

end

end A087371.P1362380853764756710

/-! ## A087371.P15986698603430764785

`and(A099555(3*(n+1)), A370645(A289778(n)))`
-/

namespace A087371.P15986698603430764785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099555 (3 * (n + 1))) (A370645 (A289778 n).toNat)

end

end A087371.P15986698603430764785

/-! ## A087371.P402578724799857445

`A244990(n+1)%A329028(A236024(2*n+5))`
-/

namespace A087371.P402578724799857445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244990 (n + 1)) (A329028 (A236024 (2 * n + 5)).toNat)

end

end A087371.P402578724799857445

/-!
# A087372: Smallest k such that 3^k + 2n is a prime, or 0 if no such k exists. Index of the smallest power of 3 which when increased by the n-th even number yields a prime.

The programs for A087372, there is no canonical definition to state claims against.
-/

/-! ## A087372.P18063860364663649847

`floor(A113604(2*n+5)/A113646(n+4))`
-/

namespace A087372.P18063860364663649847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113604 (2 * n + 5) : ℚ) / (A113646 (n + 4) : ℚ)⌋

end

end A087372.P18063860364663649847

/-! ## A087372.P213676496759510001

`A087508(A052126(2*n+5)%A077797(2*n+1))`
-/

namespace A087372.P213676496759510001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (Int.tmod (A052126 (2 * n + 5)) (A077797 (2 * n + 1))).toNat

end

end A087372.P213676496759510001

/-! ## A087372.P5686448122977343324

`A037234(A138066(n+2))`
-/

namespace A087372.P5686448122977343324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (A138066 (n + 2)).toNat

end

end A087372.P5686448122977343324

/-! ## A087372.P8094522814572025402

`A014081(3^A330690(2*n+5))`
-/

namespace A087372.P8094522814572025402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A330690 (2 * n + 5) : ℤ))).toNat

end

end A087372.P8094522814572025402

/-!
# A087373: Twin-prime-indexed primes (TWIPS): members of a pair of twin primes whose prime index is also a member of a pair of twin primes.

The programs for A087373, there is no canonical definition to state claims against.
-/

/-! ## A087373.P18097978843251042798

`A000040(∩[A001097(n+1), A334142(n+1)])`
-/

namespace A087373.P18097978843251042798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A087373.P18097978843251042798

/-! ## A087373.P724420550807481486

`A006005(∩[A001097(n+1), A334142(n+1)])`
-/

namespace A087373.P724420550807481486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A087373.P724420550807481486

/-! ## A087373.P3334081213712050387

`A000040(∩[A334142(n+1), A171821(n+2)])`
-/

namespace A087373.P3334081213712050387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A087373.P3334081213712050387

/-! ## A087373.P9798228336722444931

`A000040(A087382(n+3))`
-/

namespace A087373.P9798228336722444931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A087382 (n + 3)).toNat

end

end A087373.P9798228336722444931

/-!
# A087374: Smallest square >= n!.

The programs for A087374, there is no canonical definition to state claims against.
-/

/-! ## A087374.P2600792743509252899

`ceil(sqrt((n+1)!))²`
-/

namespace A087374.P2600792743509252899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.factorial (n + 1) : ℝ)⌉ ^ 2

end

end A087374.P2600792743509252899

/-! ## A087374.P17191180410937677015

`ceil(∏[sqrt(n+1)])²`
-/

namespace A087374.P17191180410937677015
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2

end

end A087374.P17191180410937677015

/-! ## A087374.P9151063468836813266

`ceil(sqrt((n+1)!))^2`
-/

namespace A087374.P9151063468836813266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.factorial (n + 1) : ℝ)⌉ ^ 2

end

end A087374.P9151063468836813266

/-! ## A087374.P7983313493892936115

`∏[ratio[A055228(n)]²]`
-/

namespace A087374.P7983313493892936115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087374.P7983313493892936115

/-! ## A087374.P6381657610239018598

`A055228(n+1)^2`
-/

namespace A087374.P6381657610239018598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 (n + 1) ^ 2

end

end A087374.P6381657610239018598

/-! ## A087374.P9703465661941837954

`A068869(n+1)+A000142(n+1)`
-/

namespace A087374.P9703465661941837954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068869 (n + 1) + A000142 (n + 1)

end

end A087374.P9703465661941837954

/-!
# A087375: Smallest n-th power > n!.

The programs for A087375, there is no canonical definition to state claims against.
-/

/-! ## A087375.P1507574961237352252

`(floor(exp(∑[log(n+1)]/(n+1)))+1)^(n+1)`
-/

namespace A087375.P1507574961237352252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊Real.exp ((∑ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℝ))⌋ + 1) ^ (n + 1)

end

end A087375.P1507574961237352252

/-! ## A087375.P1663325143888539212

`A000007(n)+A214046(n+1)^(n+1)`
-/

namespace A087375.P1663325143888539212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A214046 (n + 1) ^ (n + 1)

end

end A087375.P1663325143888539212

/-! ## A087375.P15945842024386341847

`A000007(n)+(A061375(n+1)+A057427(n))^(n+1)`
-/

namespace A087375.P15945842024386341847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A061375 (n + 1) + A057427 n) ^ (n + 1)

end

end A087375.P15945842024386341847

/-! ## A087375.P1145685484947001728

`A000007(n)+(A061375(n+1)-A057428(n))^(n+1)`
-/

namespace A087375.P1145685484947001728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A061375 (n + 1) - A057428 n) ^ (n + 1)

end

end A087375.P1145685484947001728

/-!
# A087376: Leading diagonal of A087377.

The programs for A087376, there is no canonical definition to state claims against.
-/

/-! ## A087376.P1873672165946089383

`(A077317(n+1)-1)/(n+1)`
-/

namespace A087376.P1873672165946089383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077317 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A087376.P1873672165946089383

/-! ## A087376.P16921089445804825168

`floor(A077317(n+1)/A254667(n+1))`
-/

namespace A087376.P16921089445804825168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077317 (n + 1) : ℚ) / (A254667 (n + 1) : ℚ)⌋

end

end A087376.P16921089445804825168

/-! ## A087376.P2947326975702876723

`(A077316(A000096(n)+1)-1)/(n+1)`
-/

namespace A087376.P2947326975702876723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077316 (A000096 n + 1).toNat - 1 : ℚ) / (n + 1 : ℚ)

end

end A087376.P2947326975702876723

/-! ## A087376.P12218001036576870483

`A087377(∑[n+1])`
-/

namespace A087376.P12218001036576870483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087377 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087376.P12218001036576870483

/-! ## A087376.P10473292622990761381

`A000010(A077317(n+1))/(n+1)`
-/

namespace A087376.P10473292622990761381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A077317 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A087376.P10473292622990761381

/-! ## A087376.P15481861045038694900

`A000010(A077316(∑[n+1]))/(n+1)`
-/

namespace A087376.P15481861045038694900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A077316 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) / (n + 1 : ℚ)

end

end A087376.P15481861045038694900

/-!
# A087377: Triangle read by rows: n-th row contains n smallest numbers k (say) such that nk+1 is a prime.

The programs for A087377, there is no canonical definition to state claims against.
-/

/-! ## A087377.P5113911388442540063

`(A077316(n+1)-1)/A002024(n+1)`
-/

namespace A087377.P5113911388442540063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077316 (n + 1) - 1 : ℚ) / (A002024 (n + 1) : ℚ)

end

end A087377.P5113911388442540063

/-! ## A087377.P8051683377291390484

`A000010(A077316(n+1))/∑[A010054(n)]`
-/

namespace A087377.P8051683377291390484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A077316 (n + 1)).toNat : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A087377.P8051683377291390484

/-! ## A087377.P18350419177916327439

`A000010(A077316(n+1))/A002024(n+1)`
-/

namespace A087377.P18350419177916327439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A077316 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ)

end

end A087377.P18350419177916327439

/-! ## A087377.P6467568584726657643

`A000010(A077316(n+1))/(A003056(n)+1)`
-/

namespace A087377.P6467568584726657643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A077316 (n + 1)).toNat : ℚ) / (A003056 n + 1 : ℚ)

end

end A087377.P6467568584726657643

/-! ## A087377.P6848417602014119093

`A000010(A077316(n+1))/sqrt(A093995(n+1))`
-/

namespace A087377.P6848417602014119093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (A077316 (n + 1)).toNat : ℝ) / Real.sqrt (A093995 (n + 1) : ℝ)

end

end A087377.P6848417602014119093

/-! ## A087377.P8606180335684894788

`A063994(A077316(n+1))/A002024(A000027(n+1))`
-/

namespace A087377.P8606180335684894788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (A077316 (n + 1)).toNat : ℚ) / (A002024 (A000027 (n + 1)).toNat : ℚ)

end

end A087377.P8606180335684894788

/-! ## A087377.P16986392868680215892

`A000010(A077316(n+1))/A000005(A137688(n))`
-/

namespace A087377.P16986392868680215892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A077316 (n + 1)).toNat : ℚ) / (A000005 (A137688 n).toNat : ℚ)

end

end A087377.P16986392868680215892

/-! ## A087377.P11261568305584345691

`A344006(A002024(n+1)*A077316(n+1))`
-/

namespace A087377.P11261568305584345691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (A002024 (n + 1) * A077316 (n + 1)).toNat

end

end A087377.P11261568305584345691

/-! ## A087377.P17313268251922484565

`A344006(lcm(A002024(n+1), A077316(n+1)))`
-/

namespace A087377.P17313268251922484565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (Int.lcm (A002024 (n + 1)) (A077316 (n + 1)))

end

end A087377.P17313268251922484565

/-!
# A087378: Smallest k such that both k-n and k+n are primes and there are no primes between them.

The programs for A087378, there is no canonical definition to state claims against.
-/

/-! ## A087378.P13214480257881772922

`A000230(n)+n`
-/

namespace A087378.P13214480257881772922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n + (n : ℤ)

end

end A087378.P13214480257881772922

/-! ## A087378.P8231287175187871474

`A045881(n)+n+1-a(floor(1/(n+1)))` with `a(0)=2`
-/

namespace A087378.P8231287175187871474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A045881 n + (n + 1 : ℤ) - a ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A087378.P8231287175187871474

/-! ## A087378.P3184568734196390761

`n-(A000035(2*n)-A000230(n))`
-/

namespace A087378.P3184568734196390761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A000035 (2 * n) - A000230 n)

end

end A087378.P3184568734196390761

/-! ## A087378.P3601642275980795967

`n-(A008683(Δ[(2*n)²])-A000230(n))`
-/

namespace A087378.P3601642275980795967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A000230 n)

end

end A087378.P3601642275980795967

/-! ## A087378.P12069817568543495499

`A045881(A028310(n))-C(2, C(2, n²))+n`
-/

namespace A087378.P12069817568543495499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (A028310 n).toNat - (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℤ) + (n : ℤ)

end

end A087378.P12069817568543495499

/-! ## A087378.P1635869202805315070

`A008619(A005408(n))-(1-A000230(n))`
-/

namespace A087378.P1635869202805315070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005408 n).toNat - (1 - A000230 n)

end

end A087378.P1635869202805315070

/-! ## A087378.P18084868273291964806

`A045881(A028310(n))+n-A054977(n)`
-/

namespace A087378.P18084868273291964806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (A028310 n).toNat + ((n : ℤ) - A054977 n)

end

end A087378.P18084868273291964806

/-! ## A087378.P6628013735124513554

`A151800(n)-(A013632(n)-A000230(n))`
-/

namespace A087378.P6628013735124513554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - (A013632 n - A000230 n)

end

end A087378.P6628013735124513554

/-! ## A087378.P14791582724252985597

`A174350(A179865(n+1))+n-A000007(n)`
-/

namespace A087378.P14791582724252985597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A179865 (n + 1)).toNat + ((n : ℤ) - A000007 n)

end

end A087378.P14791582724252985597

/-!
# A087379: Beginning with 2, primes such that the difference between two successive terms is a distinct composite number.

The programs for A087379, there is no canonical definition to state claims against.
-/

/-! ## A087379.P7559581642042787537

`∑[A068632(n)]`
-/

namespace A087379.P7559581642042787537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087379.P7559581642042787537

/-! ## A087379.P9587680387814603954

`A006530(A068632(n)+a(n-1))` with `a(0)=2`
-/

namespace A087379.P9587680387814603954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (A068632 n + a (n - 1)).toNat

end

end A087379.P9587680387814603954

/-! ## A087379.P7301648122501591859

`A026741(A068632(n)+a(n-1))` with `a(0)=2`
-/

namespace A087379.P7301648122501591859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A026741 (A068632 n + a (n - 1)).toNat

end

end A087379.P7301648122501591859

/-! ## A087379.P9551174578642233539

`A129527(A068632(n)+a(n-1))` with `a(0)=2`
-/

namespace A087379.P9551174578642233539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A129527 (A068632 n + a (n - 1)).toNat

end

end A087379.P9551174578642233539

/-! ## A087379.P1990134591661688969

`A157488(a(n-1))+A068632(n)` with `a(0)=2`
-/

namespace A087379.P1990134591661688969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A157488 (a (n - 1)).toNat + A068632 n

end

end A087379.P1990134591661688969

/-! ## A087379.P12371700408715318224

`A183091(a(n-1))+A068632(n)` with `a(0)=2`
-/

namespace A087379.P12371700408715318224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A183091 (a (n - 1)).toNat + A068632 n

end

end A087379.P12371700408715318224

/-! ## A087379.P12853551155787892550

`A250245(a(n-1))+A068632(n)` with `a(0)=2`
-/

namespace A087379.P12853551155787892550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A250245 (a (n - 1)).toNat + A068632 n

end

end A087379.P12853551155787892550

/-! ## A087379.P14612319229239250426

`A000010(a(n-1))+A068632(n)+1` with `a(0)=2`
-/

namespace A087379.P14612319229239250426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000010 (a (n - 1)).toNat + (A068632 n + 1)

end

end A087379.P14612319229239250426

/-! ## A087379.P17952905587564054818

`a(n-1)+A068632(n)+A008683(8*n+4)` with `a(0)=2`
-/

namespace A087379.P17952905587564054818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A068632 n + A008683 (8 * n + 4))

end

end A087379.P17952905587564054818

/-! ## A087379.P7151838460182119408

`A068632(n)+a(A123108(A004275(n)))` with `a(0)=2`
-/

namespace A087379.P7151838460182119408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A068632 n + a (A123108 (A004275 n).toNat).toNat

end

end A087379.P7151838460182119408

/-!
# A087380: Let Pricom(n) be defined as the number obtained by replacing each prime digit (2,3,5,7) of n with a '0' and a composite digit (0,4,6,8,9) with a '1' . A 1 remains the same. a(n) = Pricom(n).

The programs for A087380, there is no canonical definition to state claims against.
-/

/-! ## A087380.P18325298219216162144

`A103181(A167678(n+1))`
-/

namespace A087380.P18325298219216162144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A167678 (n + 1)).toNat

end

end A087380.P18325298219216162144

/-! ## A087380.P8659069667944978859

`A106747(A167677(n+1))`
-/

namespace A087380.P8659069667944978859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A167677 (n + 1)).toNat

end

end A087380.P8659069667944978859

/-! ## A087380.P7240276821102018645

`A087381(2*A167678(n+1))`
-/

namespace A087380.P7240276821102018645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087381 (2 * A167678 (n + 1)).toNat

end

end A087380.P7240276821102018645

/-! ## A087380.P16629085207063339728

`A167677(A167677(n+1)+24)-11`
-/

namespace A087380.P16629085207063339728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167677 (A167677 (n + 1) + 24).toNat - 11

end

end A087380.P16629085207063339728

/-! ## A087380.P8621021603838619494

`A136400(A167677(n+1)-A136400(n))`
-/

namespace A087380.P8621021603838619494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A167677 (n + 1) - A136400 n).toNat

end

end A087380.P8621021603838619494

/-! ## A087380.P2168090009275180301

`A065031(2*A065031(n+1))-A167678(n+1)`
-/

namespace A087380.P2168090009275180301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (2 * A065031 (n + 1)).toNat - A167678 (n + 1)

end

end A087380.P2168090009275180301

/-!
# A087381: Let Compri(n) be the number obtained by replacing each prime digit (2,3,5,7) of n with a '1' and a composite digit( 0,4,6,8,9) with a '0'. A 1 remains the same. a(n) = Compri(n).

The programs for A087381, there is no canonical definition to state claims against.
-/

/-! ## A087381.P10311754381729229741

`A103181(A222233(n+1))`
-/

namespace A087381.P10311754381729229741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A222233 (n + 1)).toNat

end

end A087381.P10311754381729229741

/-! ## A087381.P16056152620181114118

`A167678(A216556(n))-A136400(n)`
-/

namespace A087381.P16056152620181114118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167678 (A216556 n).toNat - A136400 n

end

end A087381.P16056152620181114118

/-! ## A087381.P3290250638180661450

`A167678(A216556(n))+A235049(n)-n`
-/

namespace A087381.P3290250638180661450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167678 (A216556 n).toNat + (A235049 n - (n : ℤ))

end

end A087381.P3290250638180661450

/-! ## A087381.P8639287072999440759

`A063543(n+1)+A000035(A066313(n+1))`
-/

namespace A087381.P8639287072999440759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063543 (n + 1) + A000035 (A066313 (n + 1)).toNat

end

end A087381.P8639287072999440759

/-!
# A087382: Twin prime indices of primes forming a twin prime member.

The programs for A087382, there is no canonical definition to state claims against.
-/

/-! ## A087382.P15559020049270510603

`A000720(A087373(n+1))`
-/

namespace A087382.P15559020049270510603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A087373 (n + 1)).toNat

end

end A087382.P15559020049270510603

/-! ## A087382.P1704870150469778581

`A061395(p?[A087373(n+1)])`
-/

namespace A087382.P1704870150469778581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A087382.P1704870150469778581

/-! ## A087382.P1774987966279505404

`A066328(p?[A087373(n+1)])`
-/

namespace A087382.P1774987966279505404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A087382.P1774987966279505404

/-! ## A087382.P2130194530777439713

`A061395(2*A087373(n+1))`
-/

namespace A087382.P2130194530777439713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A087373 (n + 1)).toNat

end

end A087382.P2130194530777439713

/-! ## A087382.P550844295921213083

`A061395(lcm(2, A087373(n+1)))`
-/

namespace A087382.P550844295921213083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A087373 (n + 1)))

end

end A087382.P550844295921213083

/-! ## A087382.P492203980162110003

`A061395(or(1, A087373(n+1)))`
-/

namespace A087382.P492203980162110003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A087373 (n + 1))).toNat

end

end A087382.P492203980162110003

/-! ## A087382.P7188406290012649481

`filter[A334142(n+1), A164292(#)]`
-/

namespace A087382.P7188406290012649481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A087382.P7188406290012649481

/-! ## A087382.P7389082514083289096

`∑{d}[A087373(n+1), A061395(#)]`
-/

namespace A087382.P7389082514083289096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A087382.P7389082514083289096

/-! ## A087382.P7627113340136515436

`A066328(2*A087373(n+1))-1`
-/

namespace A087382.P7627113340136515436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A087373 (n + 1)).toNat - 1

end

end A087382.P7627113340136515436

/-! ## A087382.P14544232088826685932

`∩[A001097(n+1), A334142(n+1)]`
-/

namespace A087382.P14544232088826685932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087382.P14544232088826685932

/-!
# A087383: Primes p such that p is a twin prime and prime(prime(p)) is also a twin prime.

The programs for A087383, there is no canonical definition to state claims against.
-/

/-! ## A087383.P9159079216503457562

`A000720(A000720(A087394(n+3)))`
-/

namespace A087383.P9159079216503457562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000720 (A087394 (n + 3)).toNat).toNat

end

end A087383.P9159079216503457562

/-! ## A087383.P10821364132270105567

`A061395(A061395(p?[A087394(n+3)]))`
-/

namespace A087383.P10821364132270105567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087394 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A087383.P10821364132270105567

/-! ## A087383.P15195279067602195844

`A003963(∑{d}[A087394(n+3), A061395(#)])`
-/

namespace A087383.P15195279067602195844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087394 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A087383.P15195279067602195844

/-! ## A087383.P9295952479792035861

`A061395(∑{d}[A087394(n+3), A061395(#)])`
-/

namespace A087383.P9295952479792035861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087394 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A087383.P9295952479792035861

/-! ## A087383.P12805747746814519196

`A003963(∑{p}[A087394(n+3), A061395(#)])`
-/

namespace A087383.P12805747746814519196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087394 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p).toNat

end

end A087383.P12805747746814519196

/-!
# A087384: a(n) is the smallest prime == 1 (mod F(n)) where F(n) is the n-th Fibonacci number.

The programs for A087384, there is no canonical definition to state claims against.
-/

/-! ## A087384.P6945588614014390450

`A034694(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A087384.P6945588614014390450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (n + 1) - f1 n).toNat

end

end A087384.P6945588614014390450

/-! ## A087384.P500484745628697780

`A034694(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A087384.P500484745628697780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (n + 1) - f1 n).toNat

end

end A087384.P500484745628697780

/-! ## A087384.P7611997568390865786

`A034694(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A087384.P7611997568390865786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087384.P7611997568390865786

/-! ## A087384.P844953331332537349

`A034694(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A087384.P844953331332537349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087384.P844953331332537349

/-! ## A087384.P6575977226639526478

`A034694(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A087384.P6575977226639526478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087384.P6575977226639526478

/-!
# A087385: a(n) = smallest prime == 1 (mod T(n)) where T(n) is the n-th triangular number (A000217).

The programs for A087385, there is no canonical definition to state claims against.
-/

/-! ## A087385.P1509008670571717855

`A034694(∑[n+1])`
-/

namespace A087385.P1509008670571717855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087385.P1509008670571717855

/-! ## A087385.P14724816246991053467

`∏{p}[A034694(C(n+2, 2)), #]`
-/

namespace A087385.P14724816246991053467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A087385.P14724816246991053467

/-! ## A087385.P552631336319411065

`p?[A034694(∑[n-log2(1/2)])]`
-/

namespace A087385.P552631336319411065
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087385.P552631336319411065

/-! ## A087385.P9293885423046084693

`C(n+2, 2)*A034693(C(n+2, 2))+1`
-/

namespace A087385.P9293885423046084693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A034693 (Nat.choose (n + 2) 2) + 1

end

end A087385.P9293885423046084693

/-! ## A087385.P12608386730436363756

`A086507(A066043(∑[n+1]))`
-/

namespace A087385.P12608386730436363756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (A066043 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A087385.P12608386730436363756

/-!
# A087386: a(n) = smallest prime == 1 (mod P(n)) where P(n) is the n-th Palindrome.

The programs for A087386, there is no canonical definition to state claims against.
-/

/-! ## A087386.P5650199308368507589

`A034694(A110751(n+1))`
-/

namespace A087386.P5650199308368507589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A110751 (n + 1)).toNat

end

end A087386.P5650199308368507589

/-! ## A087386.P11703753652984974965

`A034694(A002113(n+2))`
-/

namespace A087386.P11703753652984974965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A002113 (n + 2)).toNat

end

end A087386.P11703753652984974965

/-! ## A087386.P11747704790871307643

`A034694(∑[A086862(n+1)])`
-/

namespace A087386.P11747704790871307643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A087386.P11747704790871307643

/-! ## A087386.P11313722015008731756

`A034694(record[A047813(n+1)])`
-/

namespace A087386.P11313722015008731756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087386.P11313722015008731756

/-!
# A087387: Palindromes in A087386.

The programs for A087387, there is no canonical definition to state claims against.
-/

/-! ## A087387.P16247073789923772023

`p?[A055483(A087386(n+1))]`
-/

namespace A087387.P16247073789923772023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A087386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087387.P16247073789923772023

/-! ## A087387.P15496698185212391171

`filter[A087386(n+1), A136522(#)]`
-/

namespace A087387.P15496698185212391171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A087387.P15496698185212391171

/-! ## A087387.P2585382092685769837

`A034694(∑[A000383(n)!])`
-/

namespace A087387.P2585382092685769837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087387.P2585382092685769837

/-!
# A087389: a(1) = 3; a(n+1) is the least prime formed by adding one or more digits to the digit reversal of a(n).

The programs for A087389, there is no canonical definition to state claims against.
-/

/-! ## A087389.P10543214108008247864

`A030665(A004086(a(n-1)))` with `a(0)=3`
-/

namespace A087389.P10543214108008247864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A030665 (A004086 (a (n - 1)).toNat).toNat

end

end A087389.P10543214108008247864

/-!
# A087390: a(1) = 7; a(n+1) is the least prime formed by adding one or more digits to the digit reversal of a(n).

The programs for A087390, there is no canonical definition to state claims against.
-/

/-! ## A087390.P5075042944595127723

`A030665(A004086(a(n-1)))` with `a(0)=7`
-/

namespace A087390.P5075042944595127723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A030665 (A004086 (a (n - 1)).toNat).toNat

end

end A087390.P5075042944595127723

/-!
# A087392: a(1) = 1, a(n) = smallest multiple of n beginning with the digit reversal of a(n-1).

The programs for A087392, there is no canonical definition to state claims against.
-/

/-! ## A087392.P10576576356025678694

`A064770(A230726(n+1)+A230708(n+1))`
-/

namespace A087392.P10576576356025678694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A230726 (n + 1) + A230708 (n + 1)).toNat

end

end A087392.P10576576356025678694

/-!
# A087393: a(1) = 1, a(n) = smallest number beginning with a(n-1) == 0 (mod n!).

The programs for A087393, there is no canonical definition to state claims against.
-/

/-! ## A087393.P16954491533839338265

`A336401(∑{e}[A144005(2*n+1)+n, #]+1)`
-/

namespace A087393.P16954491533839338265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144005 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336401 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A087393.P16954491533839338265

/-!
# A087394: Prime(prime(n)) when prime(prime(n)) and n are twin primes.

The programs for A087394, there is no canonical definition to state claims against.
-/

/-! ## A087394.P6706914182048070555

`A006450(A087383(n+1))`
-/

namespace A087394.P6706914182048070555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A087383 (n + 1)).toNat

end

end A087394.P6706914182048070555

/-! ## A087394.P1441315391926850770

`∩[A001097(n+1), A006450(A001097(n+1))]`
-/

namespace A087394.P1441315391926850770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A001097 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087394.P1441315391926850770

/-!
# A087396: Smallest nontrivial multiple of n with each digit occurring with the same frequency >1. By nontrivial we mean a(n) is not a concatenation of n with itself.

The programs for A087396, there is no canonical definition to state claims against.
-/

/-! ## A087396.P3947904841438492240

`A216556(eq[n, A321804(A109613(n))])`
-/

namespace A087396.P3947904841438492240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087396.P3947904841438492240

/-!
# A087397: Smallest triangular number > 1 and == 1 (mod prime(n)).

The programs for A087397, the canonical program `A087397.P9932235160857220381` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087397 has offset 1).

The definition of A087397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087397.P4446401010670239055

`A000217(A000040(n+1)-A107393(2*n))`
-/

namespace A087397.P4446401010670239055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1) - A107393 (2 * n)).toNat

end

end A087397.P4446401010670239055

namespace A087397

/-- `A000217(A000040(n+1)-A107393(2*n))` -/
def P4446401010670239055.Spec : Prop :=
  ∀ n, P4446401010670239055.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P9932235160857220381

`A000217(A008864(n+1)-3%A000040(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087397

/-- `A000217(A008864(n+1)-3%A000040(n+1))` -/
def P9932235160857220381.Spec : Prop :=
  ∀ n, P9932235160857220381.a n = A087397 (n + 1)

theorem P9932235160857220381.correct : P9932235160857220381.Spec := by
  intro n
  simp only [A087397, Nat.add_sub_cancel]

end A087397

/-! ## A087397.P7220717331782522938

`A076987(A000040(n+1))`
-/

namespace A087397.P7220717331782522938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076987 (A000040 (n + 1)).toNat

end

end A087397.P7220717331782522938

namespace A087397

/-- `A076987(A000040(n+1))` -/
def P7220717331782522938.Spec : Prop :=
  ∀ n, P7220717331782522938.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P4386664047923416180

`A076987(A006005(n+1))`
-/

namespace A087397.P4386664047923416180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076987 (A006005 (n + 1)).toNat

end

end A087397.P4386664047923416180

namespace A087397

/-- `A076987(A006005(n+1))` -/
def P4386664047923416180.Spec : Prop :=
  ∀ n, P4386664047923416180.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P6797412863655625378

`A076987(A008578(n+2))`
-/

namespace A087397.P6797412863655625378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076987 (A008578 (n + 2)).toNat

end

end A087397.P6797412863655625378

namespace A087397

/-- `A076987(A008578(n+2))` -/
def P6797412863655625378.Spec : Prop :=
  ∀ n, P6797412863655625378.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P15622257043667554148

`A076987(A075643(n+2))`
-/

namespace A087397.P15622257043667554148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076987 (A075643 (n + 2)).toNat

end

end A087397.P15622257043667554148

namespace A087397

/-- `A076987(A075643(n+2))` -/
def P15622257043667554148.Spec : Prop :=
  ∀ n, P15622257043667554148.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P17269692369782283341

`A076987(A182986(n+2))`
-/

namespace A087397.P17269692369782283341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076987 (A182986 (n + 2)).toNat

end

end A087397.P17269692369782283341

namespace A087397

/-- `A076987(A182986(n+2))` -/
def P17269692369782283341.Spec : Prop :=
  ∀ n, P17269692369782283341.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P8432663224447570749

`A161680(xor(1, char[1]+A000040(n+1)))`
-/

namespace A087397.P8432663224447570749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (Int.xor 1 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000040 (n + 1))).toNat

end

end A087397.P8432663224447570749

namespace A087397

/-- `A161680(xor(1, char[1]+A000040(n+1)))` -/
def P8432663224447570749.Spec : Prop :=
  ∀ n, P8432663224447570749.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P13509716177083540637

`A253145(A002016(p?[A072774(n+1)]))`
-/

namespace A087397.P13509716177083540637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A002016 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A087397.P13509716177083540637

namespace A087397

/-- `A253145(A002016(p?[A072774(n+1)]))` -/
def P13509716177083540637.Spec : Prop :=
  ∀ n, P13509716177083540637.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P10165862593215773187

`A253145(A006093(n+1)-A107393(2*n))`
-/

namespace A087397.P10165862593215773187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A006093 (n + 1) - A107393 (2 * n)).toNat

end

end A087397.P10165862593215773187

namespace A087397

/-- `A253145(A006093(n+1)-A107393(2*n))` -/
def P10165862593215773187.Spec : Prop :=
  ∀ n, P10165862593215773187.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P8447421785672906164

`A008795(A074845(n+2)-3)`
-/

namespace A087397.P8447421785672906164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A074845 (n + 2) - 3).toNat

end

end A087397.P8447421785672906164

namespace A087397

/-- `A008795(A074845(n+2)-3)` -/
def P8447421785672906164.Spec : Prop :=
  ∀ n, P8447421785672906164.a n = A087397 (n + 1)

end A087397

/-! ## A087397.P18095702194460043295

`A000217(A008864(n+1))-A326937(A001748(n+1))`
-/

namespace A087397.P18095702194460043295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008864 (n + 1)).toNat - A326937 (A001748 (n + 1)).toNat

end

end A087397.P18095702194460043295

namespace A087397

/-- `A000217(A008864(n+1))-A326937(A001748(n+1))` -/
def P18095702194460043295.Spec : Prop :=
  ∀ n, P18095702194460043295.a n = A087397 (n + 1)

end A087397

/-!
# A087398: Primes of the form primorial(P(k))/2-2.

The programs for A087398, there is no canonical definition to state claims against.
-/

/-! ## A087398.P11081667623219862378

`A067024(A067026(n+1)-1)`
-/

namespace A087398.P11081667623219862378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067024 (A067026 (n + 1) - 1).toNat

end

end A087398.P11081667623219862378

/-! ## A087398.P355567889871699856

`∩[A070826(n+1), A136353(n+1)]-2`
-/

namespace A087398.P355567889871699856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136353 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A087398.P355567889871699856

/-! ## A087398.P14095939820514763104

`A098027(A067026(n+1)-1)`
-/

namespace A087398.P14095939820514763104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098027 (A067026 (n + 1) - 1).toNat

end

end A087398.P14095939820514763104

/-! ## A087398.P3349533384904557404

`A098027(A269303(n+1)+2)`
-/

namespace A087398.P3349533384904557404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098027 (A269303 (n + 1) + 2).toNat

end

end A087398.P3349533384904557404

/-! ## A087398.P4194042726267719861

`A103513(A269303(n+1)+2)`
-/

namespace A087398.P4194042726267719861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103513 (A269303 (n + 1) + 2).toNat

end

end A087398.P4194042726267719861

