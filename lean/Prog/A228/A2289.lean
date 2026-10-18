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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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

/-!
# A228900: Triangle defined by g.f. A(x,y) = exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, (n-k)*k) * y^k ), as read by rows.

The programs for A228900, there is no canonical definition to state claims against.
-/

/-! ## A228900.P13583815226633447112

`A003529(A091378(n))`
-/

namespace A228900.P13583815226633447112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003529 (A091378 n).toNat

end

end A228900.P13583815226633447112

/-! ## A228900.P8280429022221908370

`A097687(A008300(n))`
-/

namespace A228900.P8280429022221908370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097687 (A008300 n).toNat

end

end A228900.P8280429022221908370

/-! ## A228900.P16331777182064800594

`A097687(A009963(n))`
-/

namespace A228900.P16331777182064800594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097687 (A009963 n).toNat

end

end A228900.P16331777182064800594

/-! ## A228900.P3980947424251897816

`A171593(A103997(n))`
-/

namespace A228900.P3980947424251897816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171593 (A103997 n).toNat

end

end A228900.P3980947424251897816

/-! ## A228900.P14246074181445658784

`A125975(A172339(n))`
-/

namespace A228900.P14246074181445658784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125975 (A172339 n).toNat

end

end A228900.P14246074181445658784

/-!
# A228901: Column 1 of triangle A228900.

The programs for A228901, there is no canonical definition to state claims against.
-/

/-! ## A228901.P463565839577197666

`∑[C((n+1)², n)/(n+1)]`
-/

namespace A228901.P463565839577197666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228901.P463565839577197666

/-! ## A228901.P5933527956242051959

`∑[1/(n+1)*C(∑[2*n+1], n)]`
-/

namespace A228901.P5933527956242051959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228901.P5933527956242051959

/-! ## A228901.P12993948696626867632

`a(n-1)+C((n+1)², n)/(n+1)` with `a(0)=1`
-/

namespace A228901.P12993948696626867632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose ((n + 1) ^ 2) n : ℚ) / (n + 1 : ℚ)

end

end A228901.P12993948696626867632

/-! ## A228901.P12064830712736386373

`∑[A091144(n+1)]`
-/

namespace A228901.P12064830712736386373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228901.P12064830712736386373

/-! ## A228901.P18045934025647591719

`∑[(n+1)*A143669(n)]`
-/

namespace A228901.P18045934025647591719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228901.P18045934025647591719

/-!
# A228902: Triangle defined by g.f. A(x,y) = exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, k^2) * y^k ), as read by rows.

The programs for A228902, there is no canonical definition to state claims against.
-/

/-! ## A228902.P7835536347696298250

`A113648(A155955(n))`
-/

namespace A228902.P7835536347696298250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113648 (A155955 n).toNat

end

end A228902.P7835536347696298250

/-! ## A228902.P586943070648834

`A174210(A354979(n))`
-/

namespace A228902.P586943070648834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174210 (A354979 n).toNat

end

end A228902.P586943070648834

/-! ## A228902.P14214097734195989564

`A186333(A348595(n))`
-/

namespace A228902.P14214097734195989564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186333 (A348595 n).toNat

end

end A228902.P14214097734195989564

/-! ## A228902.P6151949708046663825

`A226166(A234006(n+1))`
-/

namespace A228902.P6151949708046663825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226166 (A234006 (n + 1)).toNat

end

end A228902.P6151949708046663825

/-! ## A228902.P7312556126986645769

`A359279(A183109(n+1))`
-/

namespace A228902.P7312556126986645769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359279 (A183109 (n + 1)).toNat

end

end A228902.P7312556126986645769

/-!
# A228903: Second diagonal of triangle A228902.

The programs for A228903, there is no canonical definition to state claims against.
-/

/-! ## A228903.P17708910549952725530

`∑[C((n+1)², n²)/(n+1)]`
-/

namespace A228903.P17708910549952725530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) (n ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228903.P17708910549952725530

/-! ## A228903.P7375394816517792595

`∑[1/(n+1)*C(∑[2*n+1], 2*n+1)]`
-/

namespace A228903.P7375394816517792595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228903.P7375394816517792595

/-! ## A228903.P17335055278227758104

`a(n-1)+C((n+1)², 2*n+1)/(n+1)` with `a(0)=1`
-/

namespace A228903.P17335055278227758104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose ((n + 1) ^ 2) (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A228903.P17335055278227758104

/-! ## A228903.P12240663238776166026

`∑[A070781(n)/(n+1)]`
-/

namespace A228903.P12240663238776166026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070781 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228903.P12240663238776166026

/-!
# A228905: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n*k, k^2) * x^k ).

The programs for A228905, there is no canonical definition to state claims against.
-/

/-! ## A228905.P5430235503505781331

`A193921(A200377(n+1))`
-/

namespace A228905.P5430235503505781331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 (A200377 (n + 1)).toNat

end

end A228905.P5430235503505781331

/-! ## A228905.P118391393156346763

`A332111(ceil(sqrt(A079854(n+1))))`
-/

namespace A228905.P118391393156346763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332111 ⌈Real.sqrt (A079854 (n + 1) : ℝ)⌉.toNat

end

end A228905.P118391393156346763

/-! ## A228905.P10967258863093485350

`A193921(ceil(sqrt(A179070(3*n+2))))`
-/

namespace A228905.P10967258863093485350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 ⌈Real.sqrt (A179070 (3 * n + 2) : ℝ)⌉.toNat

end

end A228905.P10967258863093485350

/-! ## A228905.P12933344296613811654

`A008617(A209326(n)+A020707(n))`
-/

namespace A228905.P12933344296613811654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A209326 n + A020707 n).toNat

end

end A228905.P12933344296613811654

/-!
# A228906: A diagonal of triangle A228904.

The programs for A228906, there is no canonical definition to state claims against.
-/

/-! ## A228906.P1394706296035028794

`∑[C(∑[2*n], n)/(n+1)]`
-/

namespace A228906.P1394706296035028794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228906.P1394706296035028794

/-! ## A228906.P16303225227573713345

`a(n-1)+C(∑[2*n]-1, n-1)` with `a(0)=1`
-/

namespace A228906.P16303225227573713345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1).toNat ((n : ℤ) - 1).toNat

end

end A228906.P16303225227573713345

/-! ## A228906.P11331311292758726299

`∑[A135861(n)]`
-/

namespace A228906.P11331311292758726299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228906.P11331311292758726299

/-! ## A228906.P7447348387944553542

`∑[A060543(2*n²)]`
-/

namespace A228906.P7447348387944553542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060543 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228906.P7447348387944553542

/-! ## A228906.P11888295939277018517

`∑[A135860(n)/(n+1)]`
-/

namespace A228906.P11888295939277018517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135860 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228906.P11888295939277018517

/-!
# A228907: G.f. satisfies: A(x) = 1 + Sum_{n>=0} x^n * (1 - A(x)^(2*n))/(1 - A(x)).

The programs for A228907, there is no canonical definition to state claims against.
-/

/-! ## A228907.P17115339135661988768

`∑[A093848(A326521(n))]`
-/

namespace A228907.P17115339135661988768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093848 (A326521 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228907.P17115339135661988768

/-! ## A228907.P8994580524797053788

`A008624(or(4, A083879(n)))`
-/

namespace A228907.P8994580524797053788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 4 (A083879 n)).toNat

end

end A228907.P8994580524797053788

/-!
# A228908: Primes of the form T(n) + S(n) + C(n) + 1 where T(n), S(n) and C(n) are the n-th triangular, square and cube numbers.

The programs for A228908, there is no canonical definition to state claims against.
-/

/-! ## A228908.P7349611042716580059

`p?[∑[3*n²]+1]`
-/

namespace A228908.P7349611042716580059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228908.P7349611042716580059

/-! ## A228908.P13208140558765874501

`∏{p}[p?[(2*n+1)*∑[n]+1], #]`
-/

namespace A228908.P13208140558765874501
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A228908.P13208140558765874501

/-! ## A228908.P8713174818824685699

`or(1, p?[A059270(n)+1])`
-/

namespace A228908.P8713174818824685699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A228908.P8713174818824685699

/-! ## A228908.P11875255268949750556

`xor(1, p?[(-1)^n*A011890(n)+1]-1)`
-/

namespace A228908.P11875255268949750556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011890 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A228908.P11875255268949750556

/-! ## A228908.P5920810079115712815

`A007318(∑[n])*p?[A059270(n)+1]`
-/

namespace A228908.P5920810079115712815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A228908.P5920810079115712815

/-!
# A228909: a(n) = 7^n - 6*6^n + 15*5^n - 20*4^n + 15*3^n - 6*2^n + 1.

The programs for A228909, there is no canonical definition to state claims against.
-/

/-! ## A228909.P4846630581525328142

`A052799(n)*A098073(A218629(n))`
-/

namespace A228909.P4846630581525328142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052799 n * A098073 (A218629 n).toNat

end

end A228909.P4846630581525328142

/-! ## A228909.P7389465656940583613

`A053625(xor(A002188(n), A032555(n+1)))`
-/

namespace A228909.P7389465656940583613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053625 (Int.xor (A002188 n) (A032555 (n + 1))).toNat

end

end A228909.P7389465656940583613

/-! ## A228909.P9924712873160761405

`A053625(eq[A152489(n+1), A326527(n)])`
-/

namespace A228909.P9924712873160761405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053625 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A228909.P9924712873160761405

/-! ## A228909.P6817048749370211869

`A052799(n)*A269845(2*A124107(n+1))`
-/

namespace A228909.P6817048749370211869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052799 n * A269845 (2 * A124107 (n + 1)).toNat

end

end A228909.P6817048749370211869

/-! ## A228909.P11119967984339976534

`A053625(lt[A328208(n+1), A130334(n+1)])`
-/

namespace A228909.P11119967984339976534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053625 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228909.P11119967984339976534

/-!
# A228910: a(n) = 8^n - 7*7^n + 21*6^n - 35*5^n + 35*4^n - 21*3^n + 7*2^n - 1.

The programs for A228910, there is no canonical definition to state claims against.
-/

/-! ## A228910.P11015078668093304625

`8^n-A158198(A000096(n+5)+8)`
-/

namespace A228910.P11015078668093304625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - A158198 (A000096 (n + 5) + 8).toNat

end

end A228910.P11015078668093304625

/-! ## A228910.P170242677451542245

`A348070(A030782(n+1))`
-/

namespace A228910.P170242677451542245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348070 (A030782 (n + 1)).toNat

end

end A228910.P170242677451542245

/-! ## A228910.P14208308883314842212

`A348070(A075646(n+2))`
-/

namespace A228910.P14208308883314842212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348070 (A075646 (n + 2)).toNat

end

end A228910.P14208308883314842212

/-! ## A228910.P14587522909201097299

`A348070(A282029(n²)+2)`
-/

namespace A228910.P14587522909201097299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348070 (A282029 (n ^ 2) + 2).toNat

end

end A228910.P14587522909201097299

/-! ## A228910.P8292498940348277366

`A348070(∑[∑[A040081(3*n+2)]])`
-/

namespace A228910.P8292498940348277366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348070 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228910.P8292498940348277366

/-!
# A228911: a(n) = 9^n - 8*8^n + 28*7^n - 56*6^n + 70*5^n - 56*4^n + 28*3^n - 8*2^n + 1.

The programs for A228911, there is no canonical definition to state claims against.
-/

/-! ## A228911.P709904887196614981

`A142071(∑[A103128(A167499(n))])`
-/

namespace A228911.P709904887196614981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228911.P709904887196614981

/-! ## A228911.P6293963022611351487

`A114796(A002998(n))-n!`
-/

namespace A228911.P6293963022611351487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114796 (A002998 n).toNat - (Nat.factorial n : ℤ)

end

end A228911.P6293963022611351487

/-! ## A228911.P11615848928710616303

`A114796(A046469(n))-n!`
-/

namespace A228911.P11615848928710616303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114796 (A046469 n).toNat - (Nat.factorial n : ℤ)

end

end A228911.P11615848928710616303

/-! ## A228911.P52980420244130596

`A000027(n!)*A165877(n)`
-/

namespace A228911.P52980420244130596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.factorial n) * A165877 n

end

end A228911.P52980420244130596

/-! ## A228911.P17037086409130404386

`n!*A165877(A051885(n))`
-/

namespace A228911.P17037086409130404386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A165877 (A051885 n).toNat

end

end A228911.P17037086409130404386

/-!
# A228912: a(n) = 10^n - 9*9^n + 36*8^n - 84*7^n + 126*6^n - 126*5^n + 84*4^n - 36*3^n + 9*2^n - 1.

The programs for A228912, there is no canonical definition to state claims against.
-/

/-! ## A228912.P15579759074228783631

`A217110(n+1)/9`
-/

namespace A228912.P15579759074228783631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217110 (n + 1) : ℚ) / 9

end

end A228912.P15579759074228783631

/-! ## A228912.P740089694860975831

`Δ[A217111(A028310(n))/9]`
-/

namespace A228912.P740089694860975831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217111 (A028310 n).toNat : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228912.P740089694860975831

/-! ## A228912.P4766080250976148437

`Δ[A217111(A065033(2*n))/9]`
-/

namespace A228912.P4766080250976148437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217111 (A065033 (2 * n)).toNat : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228912.P4766080250976148437

/-! ## A228912.P10351620279860869136

`Δ[A217111(A000007(n)+n)/9]`
-/

namespace A228912.P10351620279860869136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217111 (A000007 n + (n : ℤ)).toNat : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228912.P10351620279860869136

/-! ## A228912.P14724525501038048184

`(A217111(n+1)-A217111(A028310(n)))/9`
-/

namespace A228912.P14724525501038048184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217111 (n + 1) - A217111 (A028310 n).toNat : ℚ) / 9

end

end A228912.P14724525501038048184

/-! ## A228912.P4135492047379078068

`(A217111(n+1)-A217111(A000007(n)+n))/9`
-/

namespace A228912.P4135492047379078068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217111 (n + 1) - A217111 (A000007 n + (n : ℤ)).toNat : ℚ) / 9

end

end A228912.P4135492047379078068

/-!
# A228913: a(n) = 11^n-10*10^n+45*9^n-120*8^n+210*7^n-252*6^n+210*5^n-120*4^n+45*3^n-10*2^n+1.

The programs for A228913, there is no canonical definition to state claims against.
-/

/-! ## A228913.P16457207346845403955

`A049872(n)!*A011855(n)`
-/

namespace A228913.P16457207346845403955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A049872 n).toNat : ℤ) * A011855 n

end

end A228913.P16457207346845403955

/-! ## A228913.P16293819637515566484

`n!*A174847(A035041(n))`
-/

namespace A228913.P16293819637515566484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A174847 (A035041 n).toNat

end

end A228913.P16293819637515566484

/-! ## A228913.P16121249463462256154

`n!*A025480(A309864(n))`
-/

namespace A228913.P16121249463462256154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025480 (A309864 n).toNat

end

end A228913.P16121249463462256154

/-! ## A228913.P8273502475488205446

`n!*A341025(A028421(n))`
-/

namespace A228913.P8273502475488205446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A341025 ((A028421 n).toNat + 120)

end

end A228913.P8273502475488205446

/-! ## A228913.P13800430224987627475

`n!*A245092(A185293(n))`
-/

namespace A228913.P13800430224987627475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A245092 (A185293 n).toNat

end

end A228913.P13800430224987627475

/-!
# A228915: Next larger integer with same digital sum (that is, sum of digits in base 10) as n.

The programs for A228915, there is no canonical definition to state claims against.
-/

/-! ## A228915.P2282943827334011345

`n*10^A324435(n)+10`
-/

namespace A228915.P2282943827334011345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (10 : ℚ) ^ (A324435 n : ℤ) + 10

end

end A228915.P2282943827334011345

/-! ## A228915.P12312055815724081426

`n*(A092596(n+1)-n)+10`
-/

namespace A228915.P12312055815724081426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092596 (n + 1) - (n : ℤ)) + 10

end

end A228915.P12312055815724081426

/-! ## A228915.P18406040019810475384

`∑[A089397(a(n-1)+a(n-8))]` with `a(0)=10, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A228915.P18406040019810475384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 1, 1, 1, 1, 1, 1, 1, 1] fun n f1 =>
  A089397 (f1 (n - 1) + f1 (n - 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228915.P18406040019810475384

/-! ## A228915.P17953231623656554699

`A318699(A381225(n))`
-/

namespace A228915.P17953231623656554699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318699 (A381225 n).toNat

end

end A228915.P17953231623656554699

/-! ## A228915.P8505710944413674715

`A318699(A066492(n+1))`
-/

namespace A228915.P8505710944413674715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318699 (A066492 (n + 1)).toNat

end

end A228915.P8505710944413674715

/-!
# A228916: Indices of primes in sequence A108300.

The programs for A228916, there is no canonical definition to state claims against.
-/

/-! ## A228916.P13505792758697387493

`A330097(∑[A058250(n)])`
-/

namespace A228916.P13505792758697387493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228916.P13505792758697387493

/-! ## A228916.P7492189550535187939

`A256388(∑[A317111(n)])`
-/

namespace A228916.P7492189550535187939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256388 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228916.P7492189550535187939

/-!
# A228917: Number of undirected circular permutations i_0, i_1, ..., i_n of 0, 1, ..., n such that i_0+i_1, i_1+i_2, ...,i_{n-1}+i_n, i_n+i_0 are among those k with 6*k-1 and 6*k+1 twin primes.

The programs for A228917, there is no canonical definition to state claims against.
-/

/-! ## A228917.P6485405703428609047

`A271775(A130310(n+3)%A003724(n+1))`
-/

namespace A228917.P6485405703428609047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271775 (Int.tmod (A130310 (n + 3)) (A003724 (n + 1))).toNat

end

end A228917.P6485405703428609047

/-!
# A228919: Numbers n such that 1^(n+1) + 2^(n+1) + ... + n^(n+1) == 0 (mod n).

The programs for A228919, there is no canonical definition to state claims against.
-/

/-! ## A228919.P9823763176745322859

`record[gcd(n+1, A228926(n+1))]`
-/

namespace A228919.P9823763176745322859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A228926 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228919.P9823763176745322859

/-! ## A228919.P12187299237049409145

`lt[A040030(A192587(n+1)), A366719(n)]`
-/

namespace A228919.P12187299237049409145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040030 (A192587 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366719 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228919.P12187299237049409145

/-! ## A228919.P11768816228546043555

`lt[A366670(A039949(2*(n+1))), A366719(n)]`
-/

namespace A228919.P11768816228546043555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366670 (A039949 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366719 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228919.P11768816228546043555

/-! ## A228919.P7069821595250724883

`lt[A027641(n), A007814(A008000(2*n+3))]`
-/

namespace A228919.P7069821595250724883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A008000 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228919.P7069821595250724883

/-! ## A228919.P14839619920141689485

`∩[A048266(n+1), A191276(n+1)]`
-/

namespace A228919.P14839619920141689485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228919.P14839619920141689485

/-!
# A228920: Number of solutions to Sum_{i=1..n} x_i^2 == 0 (mod 4) with x_i in 0..3.

The programs for A228920, the canonical program `A228920.P7829172958353520928` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228920 has offset 1).

The definition of A228920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228920.P707419452597824071

`A330619(4*(n+1))`
-/

namespace A228920.P707419452597824071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330619 (4 * (n + 1))

end

end A228920.P707419452597824071

namespace A228920

/-- `A330619(4*(n+1))` -/
def P707419452597824071.Spec : Prop :=
  ∀ n, P707419452597824071.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P14270558091930708016

`∏[2*ratio[A038503(n)]]`
-/

namespace A228920.P14270558091930708016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228920.P14270558091930708016

namespace A228920

/-- `∏[2*ratio[A038503(n)]]` -/
def P14270558091930708016.Spec : Prop :=
  ∀ n, P14270558091930708016.a n = (A228920 (n + 1) : ℚ)

end A228920

/-! ## A228920.P7829172958353520928

`2^(n+1)*A038503(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228920

/-- `2^(n+1)*A038503(n+1)` -/
def P7829172958353520928.Spec : Prop :=
  ∀ n, P7829172958353520928.a n = A228920 (n + 1)

theorem P7829172958353520928.correct : P7829172958353520928.Spec := by
  intro n
  simp only [A228920, Nat.add_sub_cancel]

end A228920

/-! ## A228920.P8636564452262230517

`A108520(3*n)+A000079(n)²`
-/

namespace A228920.P8636564452262230517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (3 * n) + A000079 n ^ 2

end

end A228920.P8636564452262230517

namespace A228920

/-- `A108520(3*n)+A000079(n)²` -/
def P8636564452262230517.Spec : Prop :=
  ∀ n, P8636564452262230517.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P3693582208081846165

`A108520(3*n)+A122803(n)²`
-/

namespace A228920.P3693582208081846165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (3 * n) + A122803 n ^ 2

end

end A228920.P3693582208081846165

namespace A228920

/-- `A108520(3*n)+A122803(n)²` -/
def P3693582208081846165.Spec : Prop :=
  ∀ n, P3693582208081846165.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P12113715575094908632

`A038503(n+1)*A131577(n+2)`
-/

namespace A228920.P12113715575094908632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) * A131577 (n + 2)

end

end A228920.P12113715575094908632

namespace A228920

/-- `A038503(n+1)*A131577(n+2)` -/
def P12113715575094908632.Spec : Prop :=
  ∀ n, P12113715575094908632.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P15318022649152942849

`A108520(3*n)+A000079(2*n)`
-/

namespace A228920.P15318022649152942849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (3 * n) + A000079 (2 * n)

end

end A228920.P15318022649152942849

namespace A228920

/-- `A108520(3*n)+A000079(2*n)` -/
def P15318022649152942849.Spec : Prop :=
  ∀ n, P15318022649152942849.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P17846192842759521032

`A122803(2*n)+A108520(3*n)`
-/

namespace A228920.P17846192842759521032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (2 * n) + A108520 (3 * n)

end

end A228920.P17846192842759521032

namespace A228920

/-- `A122803(2*n)+A108520(3*n)` -/
def P17846192842759521032.Spec : Prop :=
  ∀ n, P17846192842759521032.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P15974011613788216692

`A108520(3*n)+A016116(4*n)`
-/

namespace A228920.P15974011613788216692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (3 * n) + A016116 (4 * n)

end

end A228920.P15974011613788216692

namespace A228920

/-- `A108520(3*n)+A016116(4*n)` -/
def P15974011613788216692.Spec : Prop :=
  ∀ n, P15974011613788216692.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P4995821668082878237

`A108520(3*n)+A108520(2*n)²`
-/

namespace A228920.P4995821668082878237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (3 * n) + A108520 (2 * n) ^ 2

end

end A228920.P4995821668082878237

namespace A228920

/-- `A108520(3*n)+A108520(2*n)²` -/
def P4995821668082878237.Spec : Prop :=
  ∀ n, P4995821668082878237.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P16990762803464642236

`2*(A068774(n+1)+A068620(n+1))`
-/

namespace A228920.P16990762803464642236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A068774 (n + 1) + A068620 (n + 1))

end

end A228920.P16990762803464642236

namespace A228920

/-- `2*(A068774(n+1)+A068620(n+1))` -/
def P16990762803464642236.Spec : Prop :=
  ∀ n, P16990762803464642236.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P6896352042211259099

`2*A011782(n+1)*A038503(n+1)`
-/

namespace A228920.P6896352042211259099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (n + 1) * A038503 (n + 1))

end

end A228920.P6896352042211259099

namespace A228920

/-- `2*A011782(n+1)*A038503(n+1)` -/
def P6896352042211259099.Spec : Prop :=
  ∀ n, P6896352042211259099.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P17441419184345247367

`A000225(2*n)+A108520(3*n)+1`
-/

namespace A228920.P17441419184345247367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n) + (A108520 (3 * n) + 1)

end

end A228920.P17441419184345247367

namespace A228920

/-- `A000225(2*n)+A108520(3*n)+1` -/
def P17441419184345247367.Spec : Prop :=
  ∀ n, P17441419184345247367.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P2523346811477970086

`2*A016116(2*n)*A038503(n+1)`
-/

namespace A228920.P2523346811477970086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016116 (2 * n) * A038503 (n + 1))

end

end A228920.P2523346811477970086

namespace A228920

/-- `2*A016116(2*n)*A038503(n+1)` -/
def P2523346811477970086.Spec : Prop :=
  ∀ n, P2523346811477970086.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P1555658105360782445

`(A000079(n)-A038505(n+1))*A000079(n+1)`
-/

namespace A228920.P1555658105360782445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A038505 (n + 1)) * A000079 (n + 1)

end

end A228920.P1555658105360782445

namespace A228920

/-- `(A000079(n)-A038505(n+1))*A000079(n+1)` -/
def P1555658105360782445.Spec : Prop :=
  ∀ n, P1555658105360782445.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P7140296535381644552

`(A146559(n+1)+A011782(n+1))*A011782(n+1)`
-/

namespace A228920.P7140296535381644552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146559 (n + 1) + A011782 (n + 1)) * A011782 (n + 1)

end

end A228920.P7140296535381644552

namespace A228920

/-- `(A146559(n+1)+A011782(n+1))*A011782(n+1)` -/
def P7140296535381644552.Spec : Prop :=
  ∀ n, P7140296535381644552.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P1167357388104361257

`(A146559(n+1)+A131577(n+1))*A131577(n+1)`
-/

namespace A228920.P1167357388104361257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146559 (n + 1) + A131577 (n + 1)) * A131577 (n + 1)

end

end A228920.P1167357388104361257

namespace A228920

/-- `(A146559(n+1)+A131577(n+1))*A131577(n+1)` -/
def P1167357388104361257.Spec : Prop :=
  ∀ n, P1167357388104361257.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P5662190001660139770

`(A138232(2*n)+A011782(n+1))*A011782(n+1)`
-/

namespace A228920.P5662190001660139770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138232 (2 * n) + A011782 (n + 1)) * A011782 (n + 1)

end

end A228920.P5662190001660139770

namespace A228920

/-- `(A138232(2*n)+A011782(n+1))*A011782(n+1)` -/
def P5662190001660139770.Spec : Prop :=
  ∀ n, P5662190001660139770.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P14944549507664526048

`(A138232(2*n)+A131577(n+1))*A131577(n+1)`
-/

namespace A228920.P14944549507664526048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138232 (2 * n) + A131577 (n + 1)) * A131577 (n + 1)

end

end A228920.P14944549507664526048

namespace A228920

/-- `(A138232(2*n)+A131577(n+1))*A131577(n+1)` -/
def P14944549507664526048.Spec : Prop :=
  ∀ n, P14944549507664526048.a n = A228920 (n + 1)

end A228920

/-! ## A228920.P6148392070108827037

`(A077966(2*n)-A009116(n+1))*A077966(2*n)`
-/

namespace A228920.P6148392070108827037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077966 (2 * n) - A009116 (n + 1)) * A077966 (2 * n)

end

end A228920.P6148392070108827037

namespace A228920

/-- `(A077966(2*n)-A009116(n+1))*A077966(2*n)` -/
def P6148392070108827037.Spec : Prop :=
  ∀ n, P6148392070108827037.a n = A228920 (n + 1)

end A228920

/-!
# A228921: Number of solutions to Sum_{i=1..n} x_i^2 == 0 (mod 8) with x_i in 0..7.

The programs for A228921, there is no canonical definition to state claims against.
-/

/-! ## A228921.P15630964778027144054

`A239628(A022800(n+1))`
-/

namespace A228921.P15630964778027144054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239628 (A022800 (n + 1)).toNat

end

end A228921.P15630964778027144054

/-! ## A228921.P2785805382414519330

`record[A377672(record[A049310(n)])]`
-/

namespace A228921.P2785805382414519330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377672 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228921.P2785805382414519330

/-!
# A228922: Numbers n such that (19^n + 2^n)/21 is prime.

The programs for A228922, there is no canonical definition to state claims against.
-/

/-! ## A228922.P17022978483460267950

`p?[A317304(A262935(n+1))+1]`
-/

namespace A228922.P17022978483460267950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317304 (A262935 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228922.P17022978483460267950

/-! ## A228922.P13053228355573914801

`record[A290250(n+1)%A200838(n+1)]`
-/

namespace A228922.P13053228355573914801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290250 (n + 1)) (A200838 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228922.P13053228355573914801

/-!
# A228923: G.f. satisfies: A(x) = -1/(1+x) + A(x)^2 + 1/A(x)^2.

The programs for A228923, there is no canonical definition to state claims against.
-/

/-! ## A228923.P13034293703422566264

`A181546(n)+A035490(A035482(n))`
-/

namespace A228923.P13034293703422566264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181546 n + A035490 (A035482 n).toNat

end

end A228923.P13034293703422566264

/-! ## A228923.P17972669602376707528

`A247505(A000108(n))+A247480(n)`
-/

namespace A228923.P17972669602376707528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (A000108 n).toNat + A247480 n

end

end A228923.P17972669602376707528

/-!
# A228924: Irregular triangular array read by rows: T(n,k) is the number of derangement permutations of [n] that have exactly k inversions; n>=2, 1<=k<=binomial(n,2) for even n, 1<=k<=binomial(n,2)-1 for odd n.

The programs for A228924, there is no canonical definition to state claims against.
-/

/-! ## A228924.P4629274928122251550

`A106277(A120211(n+1))^A069010(n)`
-/

namespace A228924.P4629274928122251550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106277 (A120211 (n + 1)).toNat : ℚ) ^ (A069010 n : ℤ)

end

end A228924.P4629274928122251550

/-! ## A228924.P83021377144232892

`and(A176895(A049601(n)), A188376(n+1))`
-/

namespace A228924.P83021377144232892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176895 (A049601 n).toNat) (A188376 (n + 1))

end

end A228924.P83021377144232892

/-! ## A228924.P13440502389767909756

`A106277(A120211(n+1))^A329313(2*n)`
-/

namespace A228924.P13440502389767909756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106277 (A120211 (n + 1)).toNat : ℚ) ^ (A329313 (2 * n) : ℤ)

end

end A228924.P13440502389767909756

/-! ## A228924.P8904031296399448322

`and(A007947(n+1), A102627(A090642(n+2)))`
-/

namespace A228924.P8904031296399448322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007947 (n + 1)) (A102627 (A090642 (n + 2)).toNat)

end

end A228924.P8904031296399448322

/-! ## A228924.P4876833837797890956

`and(A138121(A359041(n)), A325486(2*(n+1)))`
-/

namespace A228924.P4876833837797890956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138121 (A359041 n).toNat) (A325486 (2 * (n + 1)))

end

end A228924.P4876833837797890956

/-!
# A228925: Stern's triatomic sequence.

The programs for A228925, there is no canonical definition to state claims against.
-/

/-! ## A228925.P16592022563183132542

`or(1, A099475(A000217(A067014(n+1))))`
-/

namespace A228925.P16592022563183132542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A099475 (A000217 (A067014 (n + 1)).toNat).toNat)

end

end A228925.P16592022563183132542

/-! ## A228925.P14371221855945056189

`gcd(A059959(A236924(n)), A081710(n+1))`
-/

namespace A228925.P14371221855945056189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059959 (A236924 n).toNat) (A081710 (n + 1))

end

end A228925.P14371221855945056189

/-! ## A228925.P731978176392148214

`A032741(Δ[A077472(A054519(n))])`
-/

namespace A228925.P731978176392148214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077472 (A054519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (f1 (n + 1) - f1 n).toNat

end

end A228925.P731978176392148214

/-! ## A228925.P12233904116855187357

`or(A306671(A000213(n)), A316400(n+1))`
-/

namespace A228925.P12233904116855187357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A306671 (A000213 n).toNat) (A316400 (n + 1))

end

end A228925.P12233904116855187357

/-! ## A228925.P19112124169278590

`gcd(A000010(A175046(n+1)), A332378(3*n+2))`
-/

namespace A228925.P19112124169278590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A175046 (n + 1)).toNat) (A332378 (3 * n + 2))

end

end A228925.P19112124169278590

/-!
# A228926: Sum(m^(n+1), m=1...n-1) modulo n.

The programs for A228926, there is no canonical definition to state claims against.
-/

/-! ## A228926.P10832869347587496351

`A121706(n+2)%(n+1)`
-/

namespace A228926.P10832869347587496351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121706 (n + 2)) (n + 1 : ℤ)

end

end A228926.P10832869347587496351

/-! ## A228926.P7412732221095916195

`A060681(n+1)%A213721(A213704(n))`
-/

namespace A228926.P7412732221095916195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060681 (n + 1)) (A213721 (A213704 n).toNat)

end

end A228926.P7412732221095916195

/-! ## A228926.P2161587782567441899

`and(A204187(n+1), A323072(A267539(n)))`
-/

namespace A228926.P2161587782567441899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204187 (n + 1)) (A323072 (A267539 n).toNat)

end

end A228926.P2161587782567441899

/-!
# A228927: G.f. A(x) satisfies: A(x)^16 = A(x^2)^8 + 16*x.

The programs for A228927, there is no canonical definition to state claims against.
-/

/-! ## A228927.P4455816325606204578

`A289310(A154126(∑[(11^n+9)/10]))`
-/

namespace A228927.P4455816325606204578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 ^ n + 9 : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289310 (A154126 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A228927.P4455816325606204578

/-!
# A228929: Optimal ascending continued fraction expansion of Pi - 3.

The programs for A228929, there is no canonical definition to state claims against.
-/

/-! ## A228929.P3645407158777577831

`A015884(n+1)*A033999(A038723(n)+1)`
-/

namespace A228929.P3645407158777577831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015884 (n + 1) * A033999 (A038723 n + 1).toNat

end

end A228929.P3645407158777577831

/-!
# A228930: Optimal ascending continued fraction expansion of e - 2.

The programs for A228930, there is no canonical definition to state claims against.
-/

/-! ## A228930.P8542851348884838267

`A033862(A018654(n+1))-A019431(n)`
-/

namespace A228930.P8542851348884838267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A018654 (n + 1)).toNat - A019431 n

end

end A228930.P8542851348884838267

/-!
# A228931: Optimal ascending continued fraction expansion of sqrt(2)-1.

The programs for A228931, the canonical program `A228931.P14418110872771741478` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228931 has offset 1).

The definition of A228931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228931.P14418110872771741478

`a(n-1)²-2` with `a(0)=2, a(1)=-6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228931

/-- `a(n-1)²-2` -/
def P14418110872771741478.Spec : Prop :=
  ∀ n, P14418110872771741478.a n = A228931 (n + 1)

theorem P14418110872771741478.correct : P14418110872771741478.Spec := by
  intro n
  simp only [A228931, Nat.add_sub_cancel]

end A228931

/-! ## A228931.P9058045179874344403

`a(n-1)/(1/a(n-1)-floor(1/n))-2` with `a(0)=2`
-/

namespace A228931.P9058045179874344403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / (1 / a (n - 1) - (⌊1 / (n : ℚ)⌋ : ℚ)) - 2

end

end A228931.P9058045179874344403

namespace A228931

/-- `a(n-1)/(1/a(n-1)-floor(1/n))-2` -/
def P9058045179874344403.Spec : Prop :=
  ∀ n, P9058045179874344403.a n = (A228931 (n + 1) : ℚ)

end A228931

/-! ## A228931.P17512226533403536586

`(2%a(n-1)-1)*a(n-1)*a(n-1)-2` with `a(0)=2`
-/

namespace A228931.P17512226533403536586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.tmod 2 (a (n - 1)) - 1) * (a (n - 1) * a (n - 1)) - 2

end

end A228931.P17512226533403536586

namespace A228931

/-- `(2%a(n-1)-1)*a(n-1)*a(n-1)-2` -/
def P17512226533403536586.Spec : Prop :=
  ∀ n, P17512226533403536586.a n = A228931 (n + 1)

end A228931

/-!
# A228932: Optimal ascending continued fraction expansion of sqrt(43) - 6.

The programs for A228932, there is no canonical definition to state claims against.
-/

/-! ## A228932.P13659631069372990769

`∑[A194984(record[and(-7, 2^n)])]+1`
-/

namespace A228932.P13659631069372990769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194984 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A228932.P13659631069372990769

/-!
# A228933: Optimal ascending continued fraction expansion of phi-1 = 1/phi = (sqrt(5)-1)/2.

The programs for A228933, the canonical program `A228933.P14403247064730789251` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228933 has offset 1).

The definition of A228933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228933.P14403247064730789251

`a(n-1)²-2` with `a(0)=2, a(1)=4, a(2)=-18`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228933

/-- `a(n-1)²-2` -/
def P14403247064730789251.Spec : Prop :=
  ∀ n, P14403247064730789251.a n = A228933 (n + 1)

theorem P14403247064730789251.correct : P14403247064730789251.Spec := by
  intro n
  simp only [A228933, Nat.add_sub_cancel]

end A228933

/-!
# A228935: a(n) = (3 - 6*n)*(-1)^n.

The programs for A228935, the canonical program `A228935.P13528103206614118310` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228935 has offset 0).

The definition of A228935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228935.P11462064143547286284

`Δ[3*(-1)^n*floor(n²*acot(n))]`
-/

namespace A228935.P11462064143547286284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ n * ⌊(n ^ 2 : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228935.P11462064143547286284

namespace A228935

/-- `Δ[3*(-1)^n*floor(n²*acot(n))]` -/
def P11462064143547286284.Spec : Prop :=
  ∀ n, P11462064143547286284.a n = A228935 n

end A228935

/-! ## A228935.P13528103206614118310

`3*xor(-2*n, a(n-1)%2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228935

/-- `3*xor(-2*n, a(n-1)%2)` -/
def P13528103206614118310.Spec : Prop :=
  ∀ n, P13528103206614118310.a n = A228935 n

theorem P13528103206614118310.correct : P13528103206614118310.Spec := by
  intro n
  simp only [A228935]

end A228935

/-! ## A228935.P12461134148933855414

`a(n-1)/(3/2-n)-a(n-1)` with `a(0)=0, a(1)=3`
-/

namespace A228935.P12461134148933855414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) / ((3 : ℚ) / 2 - (n : ℚ)) - a (n - 1)

end

end A228935.P12461134148933855414

namespace A228935

/-- `a(n-1)/(3/2-n)-a(n-1)` -/
def P12461134148933855414.Spec : Prop :=
  ∀ n, P12461134148933855414.a n = (A228935 n : ℚ)

end A228935

/-! ## A228935.P337466917574444799

`Δ[(a(n-1)+a(n-2))*(1-n)]` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A228935.P337466917574444799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n f1 =>
  (f1 (n - 1) + f1 (n - 2)) * (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228935.P337466917574444799

namespace A228935

/-- `Δ[(a(n-1)+a(n-2))*(1-n)]` -/
def P337466917574444799.Spec : Prop :=
  ∀ n, P337466917574444799.a n = A228935 n

end A228935

/-! ## A228935.P14519869897163515465

`3*A004273(n)*A165326(n)`
-/

namespace A228935.P14519869897163515465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004273 n * A165326 n

end

end A228935.P14519869897163515465

namespace A228935

/-- `3*A004273(n)*A165326(n)` -/
def P14519869897163515465.Spec : Prop :=
  ∀ n, P14519869897163515465.a n = A228935 n

end A228935

/-! ## A228935.P3460227617984872360

`(A165754(n+1)-A065190(n+2))*A014681(2*n)`
-/

namespace A228935.P3460227617984872360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A165754 (n + 1) - A065190 (n + 2)) * A014681 (2 * n)

end

end A228935.P3460227617984872360

namespace A228935

/-- `(A165754(n+1)-A065190(n+2))*A014681(2*n)` -/
def P3460227617984872360.Spec : Prop :=
  ∀ n, P3460227617984872360.a n = A228935 n

end A228935

/-! ## A228935.P665308326762031354

`(A065168(n+2)-A065190(n+2))*A014681(2*n)`
-/

namespace A228935.P665308326762031354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065168 (n + 2) - A065190 (n + 2)) * A014681 (2 * n)

end

end A228935.P665308326762031354

namespace A228935

/-- `(A065168(n+2)-A065190(n+2))*A014681(2*n)` -/
def P665308326762031354.Spec : Prop :=
  ∀ n, P665308326762031354.a n = A228935 n

end A228935

/-! ## A228935.P13154458133066548638

`(2-A004280(n+2))*A112030(2*n)`
-/

namespace A228935.P13154458133066548638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004280 (n + 2)) * A112030 (2 * n)

end

end A228935.P13154458133066548638

namespace A228935

/-- `(2-A004280(n+2))*A112030(2*n)` -/
def P13154458133066548638.Spec : Prop :=
  ∀ n, P13154458133066548638.a n = A228935 n

end A228935

/-! ## A228935.P16488911977768425855

`(A033627(2*n+1)-1)*A033999(n+1)`
-/

namespace A228935.P16488911977768425855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033627 (2 * n + 1) - 1) * A033999 (n + 1)

end

end A228935.P16488911977768425855

namespace A228935

/-- `(A033627(2*n+1)-1)*A033999(n+1)` -/
def P16488911977768425855.Spec : Prop :=
  ∀ n, P16488911977768425855.a n = A228935 n

end A228935

/-! ## A228935.P17411602781881878745

`(1-A033627(2*n+1))*A087960(2*n)`
-/

namespace A228935.P17411602781881878745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A033627 (2 * n + 1)) * A087960 (2 * n)

end

end A228935.P17411602781881878745

namespace A228935

/-- `(1-A033627(2*n+1))*A087960(2*n)` -/
def P17411602781881878745.Spec : Prop :=
  ∀ n, P17411602781881878745.a n = A228935 n

end A228935

/-! ## A228935.P12109931411167972189

`A008594(n)-A072065(A153285(n+1))`
-/

namespace A228935.P12109931411167972189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n - A072065 (A153285 (n + 1)).toNat

end

end A228935.P12109931411167972189

namespace A228935

/-- `A008594(n)-A072065(A153285(n+1))` -/
def P12109931411167972189.Spec : Prop :=
  ∀ n, P12109931411167972189.a n = A228935 n

end A228935

/-!
# A228936: Expansion of (1 + 3*x - 3*x^3 - x^4)/(1 + 2*x^2 + x^4).

The programs for A228936, the canonical program `A228936.P6406300158484346142` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228936 has offset 0).

The definition of A228936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228936.P15397621504734152640

`A020639(∏{p}[3*n, #])*A009001(n)`
-/

namespace A228936.P15397621504734152640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) * A009001 n

end

end A228936.P15397621504734152640

namespace A228936

/-- `A020639(∏{p}[3*n, #])*A009001(n)` -/
def P15397621504734152640.Spec : Prop :=
  ∀ n, P15397621504734152640.a n = A228936 n

end A228936

/-! ## A228936.P2469217084506062925

`A020639(A008486(n))*A009001(n)`
-/

namespace A228936.P2469217084506062925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008486 n).toNat * A009001 n

end

end A228936.P2469217084506062925

namespace A228936

/-- `A020639(A008486(n))*A009001(n)` -/
def P2469217084506062925.Spec : Prop :=
  ∀ n, P2469217084506062925.a n = A228936 n

end A228936

/-! ## A228936.P6406300158484346142

`A006530(A071044(n))*A009001(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A228936

/-- `A006530(A071044(n))*A009001(n)` -/
def P6406300158484346142.Spec : Prop :=
  ∀ n, P6406300158484346142.a n = A228936 n

theorem P6406300158484346142.correct : P6406300158484346142.Spec := by
  intro n
  simp only [A228936]

end A228936

/-! ## A228936.P16817872363917061179

`A009001(n)*A020639(A179805(n))`
-/

namespace A228936.P16817872363917061179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A020639 (A179805 n).toNat

end

end A228936.P16817872363917061179

namespace A228936

/-- `A009001(n)*A020639(A179805(n))` -/
def P16817872363917061179.Spec : Prop :=
  ∀ n, P16817872363917061179.a n = A228936 n

end A228936

/-! ## A228936.P11161102309056116303

`A009001(n)*A020639(A298028(n))`
-/

namespace A228936.P11161102309056116303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A020639 (A298028 n).toNat

end

end A228936.P11161102309056116303

namespace A228936

/-- `A009001(n)*A020639(A298028(n))` -/
def P11161102309056116303.Spec : Prop :=
  ∀ n, P11161102309056116303.a n = A228936 n

end A228936

/-! ## A228936.P16204871405673092111

`A020639(∑{d}[A020639(n+1), #])*A009001(n)`
-/

namespace A228936.P16204871405673092111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) * A009001 n

end

end A228936.P16204871405673092111

namespace A228936

/-- `A020639(∑{d}[A020639(n+1), #])*A009001(n)` -/
def P16204871405673092111.Spec : Prop :=
  ∀ n, P16204871405673092111.a n = A228936 n

end A228936

/-! ## A228936.P2440542784267122465

`A100052(A007494(n))`
-/

namespace A228936.P2440542784267122465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100052 (A007494 n).toNat

end

end A228936.P2440542784267122465

namespace A228936

/-- `A100052(A007494(n))` -/
def P2440542784267122465.Spec : Prop :=
  ∀ n, P2440542784267122465.a n = A228936 n

end A228936

/-! ## A228936.P8753756093741819816

`A100052(A026430(n))`
-/

namespace A228936.P8753756093741819816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100052 (A026430 n).toNat

end

end A228936.P8753756093741819816

namespace A228936

/-- `A100052(A026430(n))` -/
def P8753756093741819816.Spec : Prop :=
  ∀ n, P8753756093741819816.a n = A228936 n

end A228936

/-! ## A228936.P12137650113028681389

`A100052(A032766(n))`
-/

namespace A228936.P12137650113028681389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100052 (A032766 n).toNat

end

end A228936.P12137650113028681389

namespace A228936

/-- `A100052(A032766(n))` -/
def P12137650113028681389.Spec : Prop :=
  ∀ n, P12137650113028681389.a n = A228936 n

end A228936

/-! ## A228936.P3039051609581437407

`A100052(A047229(n+1))`
-/

namespace A228936.P3039051609581437407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100052 (A047229 (n + 1)).toNat

end

end A228936.P3039051609581437407

namespace A228936

/-- `A100052(A047229(n+1))` -/
def P3039051609581437407.Spec : Prop :=
  ∀ n, P3039051609581437407.a n = A228936 n

end A228936

/-! ## A228936.P8534393044234343193

`A100052(A047273(n+1))`
-/

namespace A228936.P8534393044234343193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100052 (A047273 (n + 1)).toNat

end

end A228936.P8534393044234343193

namespace A228936

/-- `A100052(A047273(n+1))` -/
def P8534393044234343193.Spec : Prop :=
  ∀ n, P8534393044234343193.a n = A228936 n

end A228936

/-! ## A228936.P4065806846845618087

`A009001(n)*A174296(3*n)`
-/

namespace A228936.P4065806846845618087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A174296 (3 * n)

end

end A228936.P4065806846845618087

namespace A228936

/-- `A009001(n)*A174296(3*n)` -/
def P4065806846845618087.Spec : Prop :=
  ∀ n, P4065806846845618087.a n = A228936 n

end A228936

/-! ## A228936.P11360225961900363852

`∑[record[A060789(n+1)]*A057077(n)]`
-/

namespace A228936.P11360225961900363852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228936.P11360225961900363852

namespace A228936

/-- `∑[record[A060789(n+1)]*A057077(n)]` -/
def P11360225961900363852.Spec : Prop :=
  ∀ n, P11360225961900363852.a n = A228936 n

end A228936

/-! ## A228936.P4214214758404753082

`A100052(lt[A100052(2*n), 3])`
-/

namespace A228936.P4214214758404753082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100052 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100052 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A228936.P4214214758404753082

namespace A228936

/-- `A100052(lt[A100052(2*n), 3])` -/
def P4214214758404753082.Spec : Prop :=
  ∀ n, P4214214758404753082.a n = A228936 n

end A228936

/-!
# A228938: E.g.f.: (2 + exp(3*x)) / (4 - exp(3*x)).

The programs for A228938, there is no canonical definition to state claims against.
-/

/-! ## A228938.P16640831557291744671

`A059268(A000124(n))*A255927(n)`
-/

namespace A228938.P16640831557291744671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A000124 n).toNat * A255927 n

end

end A228938.P16640831557291744671

/-! ## A228938.P17007695568184392120

`A014963(A062383(n))*A255927(n)`
-/

namespace A228938.P17007695568184392120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062383 n).toNat * A255927 n

end

end A228938.P17007695568184392120

/-! ## A228938.P7631714820845629902

`A000034(∑[A053644(n)])*A255927(n)`
-/

namespace A228938.P7631714820845629902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A255927 n

end

end A228938.P7631714820845629902

/-! ## A228938.P5825666989330988439

`round(A201355(n)/2)`
-/

namespace A228938.P5825666989330988439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A201355 n : ℚ) / 2)

end

end A228938.P5825666989330988439

/-! ## A228938.P11183791232458893566

`A201355(n)/A020639(A005574(n+1))`
-/

namespace A228938.P11183791232458893566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201355 n : ℚ) / (A020639 (A005574 (n + 1)).toNat : ℚ)

end

end A228938.P11183791232458893566

/-! ## A228938.P7691479621860751806

`A201355(n)/A000005(A129759(n+1))`
-/

namespace A228938.P7691479621860751806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201355 n : ℚ) / (A000005 (A129759 (n + 1)).toNat : ℚ)

end

end A228938.P7691479621860751806

/-! ## A228938.P14205819241685513737

`A201355(n)/A020639(A191113(n+1))`
-/

namespace A228938.P14205819241685513737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201355 n : ℚ) / (A020639 (A191113 (n + 1)).toNat : ℚ)

end

end A228938.P14205819241685513737

/-!
# A228939: Nodes of tree generated as follows: (1,2) is an edge, and if (x,y) is an edge, then (y,x*y) and (y,x^2 + y^2) are edges.

The programs for A228939, there is no canonical definition to state claims against.
-/

/-! ## A228939.P17506273465862261045

`eq[A104239(n+1), A196935(n+5)]`
-/

namespace A228939.P17506273465862261045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196935 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228939.P17506273465862261045

/-! ## A228939.P18079211374086847021

`A158911(n+1)+A135010(A000108(n))`
-/

namespace A228939.P18079211374086847021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1) + A135010 (A000108 n).toNat

end

end A228939.P18079211374086847021

/-! ## A228939.P13377997660306528930

`or(A003592(n+1), A094518(A038559(n)))`
-/

namespace A228939.P13377997660306528930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003592 (n + 1)) (A094518 (A038559 n).toNat)

end

end A228939.P13377997660306528930

/-! ## A228939.P1602894406082238759

`or(A003592(n+1), A246962(A204867(n+1)))`
-/

namespace A228939.P1602894406082238759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003592 (n + 1)) (A246962 (A204867 (n + 1)).toNat)

end

end A228939.P1602894406082238759

/-! ## A228939.P4944256128430999301

`lt[A093914(n+1), A093914(A090579(n+1))]`
-/

namespace A228939.P4944256128430999301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093914 (A090579 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A228939.P4944256128430999301

/-!
# A228940: Nodes of tree generated as follows: (1,2) is an edge, and if (x,y) is an edge, then (y, y^2 - x^2) and (y, y^2 + x^2) are edges.

The programs for A228940, there is no canonical definition to state claims against.
-/

/-! ## A228940.P4191608477146051733

`∑[A000045(A039996((2*n+1)*(n*(1-n)²+1)))]`
-/

namespace A228940.P4191608477146051733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A039996 ((2 * n + 1 : ℤ) * ((n : ℤ) * (1 - (n : ℤ)) ^ 2 + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228940.P4191608477146051733

/-! ## A228940.P11324730204090960379

`record[A169778(A112060(n+1)%A072864(n+1))]`
-/

namespace A228940.P11324730204090960379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169778 (Int.tmod (A112060 (n + 1)) (A072864 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228940.P11324730204090960379

/-!
# A228941: The n-th convergent of CF(e) is the a(n)-th convergent of DCF(e), the delayed continued fraction of e.

The programs for A228941, the canonical program `A228941.P7529658243420090462` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228941 has offset 1).

The definition of A228941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228941.P7529658243420090462

`ceil(n/3)²+1+n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228941

/-- `ceil(n/3)²+1+n` -/
def P7529658243420090462.Spec : Prop :=
  ∀ n, P7529658243420090462.a n = A228941 (n + 1)

theorem P7529658243420090462.correct : P7529658243420090462.Spec := by
  intro n
  simp only [A228941, Nat.add_sub_cancel]

end A228941

/-! ## A228941.P16951509645005608496

`∑[∑[n²]%Δ[n²]+1]`
-/

namespace A228941.P16951509645005608496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228941.P16951509645005608496

namespace A228941

/-- `∑[∑[n²]%Δ[n²]+1]` -/
def P16951509645005608496.Spec : Prop :=
  ∀ n, P16951509645005608496.a n = A228941 (n + 1)

end A228941

/-! ## A228941.P5396184822271123569

`∑[gcd(1-n%3, 2*ceil(n/3))]`
-/

namespace A228941.P5396184822271123569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((n % 3 : ℕ) : ℤ)) (2 * ⌈(n : ℚ) / 3⌉)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228941.P5396184822271123569

namespace A228941

/-- `∑[gcd(1-n%3, 2*ceil(n/3))]` -/
def P5396184822271123569.Spec : Prop :=
  ∀ n, (P5396184822271123569.a n : ℤ) = A228941 (n + 1)

end A228941

/-! ## A228941.P12397014023646082415

`floor(∑[a(n-3)²]²+n+1)` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A228941.P12397014023646082415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1)

end

end A228941.P12397014023646082415

namespace A228941

/-- `floor(∑[a(n-3)²]²+n+1)` -/
def P12397014023646082415.Spec : Prop :=
  ∀ n, (P12397014023646082415.a n : ℤ) = A228941 (n + 1)

end A228941

/-! ## A228941.P15014690116397011548

`∑[n+1-floor(n/gcd(n+2, n-1))]`
-/

namespace A228941.P15014690116397011548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊(n : ℚ) / (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228941.P15014690116397011548

namespace A228941

/-- `∑[n+1-floor(n/gcd(n+2, n-1))]` -/
def P15014690116397011548.Spec : Prop :=
  ∀ n, P15014690116397011548.a n = A228941 (n + 1)

end A228941

/-! ## A228941.P17116474031306726440

`∑[A003417(n+1)]`
-/

namespace A228941.P17116474031306726440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228941.P17116474031306726440

namespace A228941

/-- `∑[A003417(n+1)]` -/
def P17116474031306726440.Spec : Prop :=
  ∀ n, P17116474031306726440.a n = A228941 (n + 1)

end A228941

/-! ## A228941.P5128532333313428794

`∑[gcd(A166711(n+1), A184538(n+2))]`
-/

namespace A228941.P5128532333313428794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166711 (n + 1)) (A184538 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228941.P5128532333313428794

namespace A228941

/-- `∑[gcd(A166711(n+1), A184538(n+2))]` -/
def P5128532333313428794.Spec : Prop :=
  ∀ n, (P5128532333313428794.a n : ℤ) = A228941 (n + 1)

end A228941

/-! ## A228941.P11592098801998658055

`∑[A005131(n+3)]`
-/

namespace A228941.P11592098801998658055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228941.P11592098801998658055

namespace A228941

/-- `∑[A005131(n+3)]` -/
def P11592098801998658055.Spec : Prop :=
  ∀ n, P11592098801998658055.a n = A228941 (n + 1)

end A228941

/-! ## A228941.P12461105366039230940

`record[A008619(n)+A008615(n)²]`
-/

namespace A228941.P12461105366039230940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + A008615 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228941.P12461105366039230940

namespace A228941

/-- `record[A008619(n)+A008615(n)²]` -/
def P12461105366039230940.Spec : Prop :=
  ∀ n, P12461105366039230940.a n = A228941 (n + 1)

end A228941

/-! ## A228941.P17512976731613560230

`∑[A175676(2*n+1)+1]`
-/

namespace A228941.P17512976731613560230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228941.P17512976731613560230

namespace A228941

/-- `∑[A175676(2*n+1)+1]` -/
def P17512976731613560230.Spec : Prop :=
  ∀ n, P17512976731613560230.a n = A228941 (n + 1)

end A228941

/-! ## A228941.P693256004120146640

`∑[A008620(A088439(2*n+1))]`
-/

namespace A228941.P693256004120146640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A088439 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228941.P693256004120146640

namespace A228941

/-- `∑[A008620(A088439(2*n+1))]` -/
def P693256004120146640.Spec : Prop :=
  ∀ n, P693256004120146640.a n = A228941 (n + 1)

end A228941

/-! ## A228941.P14212637223120023402

`A078358(A050271(n+1))`
-/

namespace A228941.P14212637223120023402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (A050271 (n + 1)).toNat

end

end A228941.P14212637223120023402

namespace A228941

/-- `A078358(A050271(n+1))` -/
def P14212637223120023402.Spec : Prop :=
  ∀ n, P14212637223120023402.a n = A228941 (n + 1)

end A228941

/-! ## A228941.P16702810641091958213

`A023444(A339267(n+2))`
-/

namespace A228941.P16702810641091958213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A339267 (n + 2)).toNat

end

end A228941.P16702810641091958213

namespace A228941

/-- `A023444(A339267(n+2))` -/
def P16702810641091958213.Spec : Prop :=
  ∀ n, P16702810641091958213.a n = A228941 (n + 1)

end A228941

/-! ## A228941.P17621440882604630769

`eq[A104156(n+1), A123108(n)]`
-/

namespace A228941.P17621440882604630769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228941.P17621440882604630769

namespace A228941

/-- `eq[A104156(n+1), A123108(n)]` -/
def P17621440882604630769.Spec : Prop :=
  ∀ n, (P17621440882604630769.a n : ℤ) = A228941 (n + 1)

end A228941

/-!
# A228943: Number of decompositions of highly composite numbers (A002182) into unordered sums of two primes.

The programs for A228943, there is no canonical definition to state claims against.
-/

/-! ## A228943.P15300680662702379927

`A068307(A135372(n+1)+1)`
-/

namespace A228943.P15300680662702379927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A135372 (n + 1) + 1).toNat

end

end A228943.P15300680662702379927

/-! ## A228943.P9443926434406430169

`A068307(A002182(n+1)+2)`
-/

namespace A228943.P9443926434406430169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A002182 (n + 1) + 2).toNat

end

end A228943.P9443926434406430169

/-! ## A228943.P16213716943299544476

`A068307(sqrt(A046952(n+1))+2)`
-/

namespace A228943.P16213716943299544476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (SequenceMachineLib.roundAway (Real.sqrt (A046952 (n + 1) : ℝ) + 2)).toNat

end

end A228943.P16213716943299544476

/-!
# A228945: Number of ways to write highly composite numbers (A002182(n)) as the difference of two primes, both <= 2*A002182(n).

The programs for A228945, there is no canonical definition to state claims against.
-/

/-! ## A228945.P15197630069377760560

`A202472(ceil(A002182(n+1)/2))`
-/

namespace A228945.P15197630069377760560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 ⌈(A002182 (n + 1) : ℚ) / 2⌉.toNat

end

end A228945.P15197630069377760560

/-! ## A228945.P15660711627253391091

`A202472(round(A002182(n+1)/2))`
-/

namespace A228945.P15660711627253391091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 (SequenceMachineLib.roundAway ((A002182 (n + 1) : ℚ) / 2)).toNat

end

end A228945.P15660711627253391091

/-! ## A228945.P10741656604684342958

`A202472(floor((A002182(n+1)+1)/2))`
-/

namespace A228945.P10741656604684342958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 ⌊(A002182 (n + 1) + 1 : ℚ) / 2⌋.toNat

end

end A228945.P10741656604684342958

/-!
# A228946: Numbers m such that m^3 - k^3 is a square for some k < m, k > 0.

The programs for A228946, there is no canonical definition to state claims against.
-/

/-! ## A228946.P2932034438563509623

`A066648(n+1)^(1/3)`
-/

namespace A228946.P2932034438563509623
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066648 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A228946.P2932034438563509623

/-! ## A228946.P16087983728188112076

`root(A066648(n+1), 3)`
-/

namespace A228946.P16087983728188112076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066648 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A228946.P16087983728188112076

/-! ## A228946.P7872520480433143072

`filter[A094906(n+1), A049240(#)]`
-/

namespace A228946.P7872520480433143072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A228946.P7872520480433143072

/-! ## A228946.P13267919042904561628

`filter[A094906(n+1), A267594(#)]`
-/

namespace A228946.P13267919042904561628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A228946.P13267919042904561628

/-! ## A228946.P10060992793379222160

`filter[A094906(n+1), A267635(#)]`
-/

namespace A228946.P10060992793379222160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A228946.P10060992793379222160

/-! ## A228946.P11456877037986562597

`∩[A092206(n+1), A094906(n+1)]`
-/

namespace A228946.P11456877037986562597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228946.P11456877037986562597

/-! ## A228946.P17350791460146906036

`∩[A094906(n+1), A000037(A348553(n))]`
-/

namespace A228946.P17350791460146906036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A348553 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228946.P17350791460146906036

/-! ## A228946.P13982398494835082269

`∩[A000037(n+1), A094906(n+1)]`
-/

namespace A228946.P13982398494835082269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228946.P13982398494835082269

/-!
# A228947: a(n) = sigma(n) - phi(n) - n.

The programs for A228947, the canonical program `A228947.P4335442310424960471` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228947 has offset 1).

The definition of A228947 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228947.P4335442310424960471

`A051612(n+1)-(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A228947

/-- `A051612(n+1)-(n+1)` -/
def P4335442310424960471.Spec : Prop :=
  ∀ n, P4335442310424960471.a n = A228947 (n + 1)

theorem P4335442310424960471.correct : P4335442310424960471.Spec := by
  intro n
  simp only [A228947, Nat.add_sub_cancel]

end A228947

/-! ## A228947.P1027786129053480284

`A000203(n+1)-A000010(n+1)-(n+1)`
-/

namespace A228947.P1027786129053480284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000010 (n + 1) - (n + 1 : ℤ)

end

end A228947.P1027786129053480284

namespace A228947

/-- `A000203(n+1)-A000010(n+1)-(n+1)` -/
def P1027786129053480284.Spec : Prop :=
  ∀ n, P1027786129053480284.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P11231476756561344799

`∑{d}[n+1, #]-(n+1)-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A228947.P11231476756561344799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A228947.P11231476756561344799

namespace A228947

/-- `∑{d}[n+1, #]-(n+1)-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P11231476756561344799.Spec : Prop :=
  ∀ n, P11231476756561344799.a n = (A228947 (n + 1) : ℚ)

end A228947

/-! ## A228947.P8738651054806520761

`A051953(n+1)-(2*n+2-∑{d}[n+1, #])`
-/

namespace A228947.P8738651054806520761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - ((2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)))

end

end A228947.P8738651054806520761

namespace A228947

/-- `A051953(n+1)-(2*n+2-∑{d}[n+1, #])` -/
def P8738651054806520761.Spec : Prop :=
  ∀ n, P8738651054806520761.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P6417924888195785072

`A001065(n+1)-Δ[A002088(n)]`
-/

namespace A228947.P6417924888195785072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (f1 (n + 1) - f1 n)

end

end A228947.P6417924888195785072

namespace A228947

/-- `A001065(n+1)-Δ[A002088(n)]` -/
def P6417924888195785072.Spec : Prop :=
  ∀ n, P6417924888195785072.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P9422665141197798632

`A001065(n+1)-Δ[A005728(n)]`
-/

namespace A228947.P9422665141197798632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (f1 (n + 1) - f1 n)

end

end A228947.P9422665141197798632

namespace A228947

/-- `A001065(n+1)-Δ[A005728(n)]` -/
def P9422665141197798632.Spec : Prop :=
  ∀ n, P9422665141197798632.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P5803750206814926341

`A051953(n+1)+A033880(n+1)`
-/

namespace A228947.P5803750206814926341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A033880 (n + 1)

end

end A228947.P5803750206814926341

namespace A228947

/-- `A051953(n+1)+A033880(n+1)` -/
def P5803750206814926341.Spec : Prop :=
  ∀ n, P5803750206814926341.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P12616217249182114631

`A237588(n+1)+A219428(n+1)`
-/

namespace A228947.P12616217249182114631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A219428 (n + 1)

end

end A228947.P12616217249182114631

namespace A228947

/-- `A237588(n+1)+A219428(n+1)` -/
def P12616217249182114631.Spec : Prop :=
  ∀ n, P12616217249182114631.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P13104668893115889005

`A001065(n+1)-A000010(n+1)`
-/

namespace A228947.P13104668893115889005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A000010 (n + 1)

end

end A228947.P13104668893115889005

namespace A228947

/-- `A001065(n+1)-A000010(n+1)` -/
def P13104668893115889005.Spec : Prop :=
  ∀ n, P13104668893115889005.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P13300962441881710569

`A051953(n+1)-A033879(n+1)`
-/

namespace A228947.P13300962441881710569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A033879 (n + 1)

end

end A228947.P13300962441881710569

namespace A228947

/-- `A051953(n+1)-A033879(n+1)` -/
def P13300962441881710569.Spec : Prop :=
  ∀ n, P13300962441881710569.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P13759492892702121671

`A053158(n+1)-A033885(n+1)`
-/

namespace A228947.P13759492892702121671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A033885 (n + 1)

end

end A228947.P13759492892702121671

namespace A228947

/-- `A053158(n+1)-A033885(n+1)` -/
def P13759492892702121671.Spec : Prop :=
  ∀ n, P13759492892702121671.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P14857970108319238263

`A046520(n+1)-A049820(n+1)`
-/

namespace A228947.P14857970108319238263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) - A049820 (n + 1)

end

end A228947.P14857970108319238263

namespace A228947

/-- `A046520(n+1)-A049820(n+1)` -/
def P14857970108319238263.Spec : Prop :=
  ∀ n, P14857970108319238263.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P17879473704763510296

`A000203(n+1)-A121048(n+1)`
-/

namespace A228947.P17879473704763510296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A121048 (n + 1)

end

end A228947.P17879473704763510296

namespace A228947

/-- `A000203(n+1)-A121048(n+1)` -/
def P17879473704763510296.Spec : Prop :=
  ∀ n, P17879473704763510296.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P3498466058086306534

`A051709(n+1)-A083254(n+1)`
-/

namespace A228947.P3498466058086306534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) - A083254 (n + 1)

end

end A228947.P3498466058086306534

namespace A228947

/-- `A051709(n+1)-A083254(n+1)` -/
def P3498466058086306534.Spec : Prop :=
  ∀ n, P3498466058086306534.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P2737990660326826711

`A079528(n+1)-A079530(n+1)`
-/

namespace A228947.P2737990660326826711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (n + 1) - A079530 (n + 1)

end

end A228947.P2737990660326826711

namespace A228947

/-- `A079528(n+1)-A079530(n+1)` -/
def P2737990660326826711.Spec : Prop :=
  ∀ n, P2737990660326826711.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P3725949905683824387

`A001065(n+1)+1-A039649(n+1)`
-/

namespace A228947.P3725949905683824387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (1 - A039649 (n + 1))

end

end A228947.P3725949905683824387

namespace A228947

/-- `A001065(n+1)+1-A039649(n+1)` -/
def P3725949905683824387.Spec : Prop :=
  ∀ n, P3725949905683824387.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P2563959688163139266

`A001065(n+1)-(A109606(n+1)+1)`
-/

namespace A228947.P2563959688163139266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - (A109606 (n + 1) + 1)

end

end A228947.P2563959688163139266

namespace A228947

/-- `A001065(n+1)-(A109606(n+1)+1)` -/
def P2563959688163139266.Spec : Prop :=
  ∀ n, P2563959688163139266.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P10835784199150989503

`A209187(n+1)-2*A000010(n+1)`
-/

namespace A228947.P10835784199150989503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) - 2 * A000010 (n + 1)

end

end A228947.P10835784199150989503

namespace A228947

/-- `A209187(n+1)-2*A000010(n+1)` -/
def P10835784199150989503.Spec : Prop :=
  ∀ n, P10835784199150989503.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P13162896453175996334

`A000203(n+1)-(A039649(n+1)+n)`
-/

namespace A228947.P13162896453175996334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A039649 (n + 1) + (n : ℤ))

end

end A228947.P13162896453175996334

namespace A228947

/-- `A000203(n+1)-(A039649(n+1)+n)` -/
def P13162896453175996334.Spec : Prop :=
  ∀ n, P13162896453175996334.a n = A228947 (n + 1)

end A228947

/-! ## A228947.P1536508572796812213

`A001065(n+1)+A219428(n+1)-n`
-/

namespace A228947.P1536508572796812213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A219428 (n + 1) - (n : ℤ))

end

end A228947.P1536508572796812213

namespace A228947

/-- `A001065(n+1)+A219428(n+1)-n` -/
def P1536508572796812213.Spec : Prop :=
  ∀ n, P1536508572796812213.a n = A228947 (n + 1)

end A228947

/-!
# A228948: Numbers n such that n^3 + k^2 = m^3 for some k>0, m>0.

The programs for A228948, there is no canonical definition to state claims against.
-/

/-! ## A228948.P11187073464930919152

`root(A179419(n+1), 3)`
-/

namespace A228948.P11187073464930919152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179419 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A228948.P11187073464930919152

/-! ## A228948.P13163051273794265160

`comp[∪[A356713(n+1), n²]]`
-/

namespace A228948.P13163051273794265160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A228948.P13163051273794265160

/-! ## A228948.P2582469820141491487

`comp[∪[A001105(n), A356713(n+1)]]`
-/

namespace A228948.P2582469820141491487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A228948.P2582469820141491487

/-! ## A228948.P8196640877020109293

`comp[∪[A033430(n), A356713(n+1)]]`
-/

namespace A228948.P8196640877020109293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A228948.P8196640877020109293

/-! ## A228948.P4873522696563175311

`comp[∪[A001014(2*n), A356713(n+1)]]`
-/

namespace A228948.P4873522696563175311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A228948.P4873522696563175311

/-!
# A228949: Coins left when packing boomerangs into n X n coins.

The programs for A228949, the canonical program `A228949.P2059324567448071187` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228949 has offset 2).

The definition of A228949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228949.P2059324567448071187

`a(n-3)+dr(3*n)` with `a(0)=4, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228949

/-- `a(n-3)+dr(3*n)` -/
def P2059324567448071187.Spec : Prop :=
  ∀ n, (P2059324567448071187.a n : ℤ) = A228949 (n + 2)

theorem P2059324567448071187.correct : P2059324567448071187.Spec := by
  intro n
  simp only [A228949, Nat.add_sub_cancel]

end A228949

/-! ## A228949.P6058393063579358959

`(n+1)*((n+2)%3+1)+1`
-/

namespace A228949.P6058393063579358959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 2) % 3 + 1) + 1

end

end A228949.P6058393063579358959

namespace A228949

/-- `(n+1)*((n+2)%3+1)+1` -/
def P6058393063579358959.Spec : Prop :=
  ∀ n, (P6058393063579358959.a n : ℤ) = A228949 (n + 2)

end A228949

/-! ## A228949.P1486467635467354237

`A162397(n+1)+2*n+3`
-/

namespace A228949.P1486467635467354237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162397 (n + 1) + (2 * n + 3 : ℤ)

end

end A228949.P1486467635467354237

namespace A228949

/-- `A162397(n+1)+2*n+3` -/
def P1486467635467354237.Spec : Prop :=
  ∀ n, P1486467635467354237.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P12783684606294896584

`(n+1)*A010882(n+2)+1`
-/

namespace A228949.P12783684606294896584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010882 (n + 2) + 1

end

end A228949.P12783684606294896584

namespace A228949

/-- `(n+1)*A010882(n+2)+1` -/
def P12783684606294896584.Spec : Prop :=
  ∀ n, P12783684606294896584.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P17783987835506052847

`(A010872(n+2)+1)*(n+1)+1`
-/

namespace A228949.P17783987835506052847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010872 (n + 2) + 1) * (n + 1 : ℤ) + 1

end

end A228949.P17783987835506052847

namespace A228949

/-- `(A010872(n+2)+1)*(n+1)+1` -/
def P17783987835506052847.Spec : Prop :=
  ∀ n, P17783987835506052847.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P10648467488309625665

`A007494(A092092(2*n+1))+n+2`
-/

namespace A228949.P10648467488309625665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A092092 (2 * n + 1)).toNat + (n + 2 : ℤ)

end

end A228949.P10648467488309625665

namespace A228949

/-- `A007494(A092092(2*n+1))+n+2` -/
def P10648467488309625665.Spec : Prop :=
  ∀ n, P10648467488309625665.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P9430091126321511095

`A145051(2*(n+1))+A010892(2*n+1)*A145051(2*n+1)`
-/

namespace A228949.P9430091126321511095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (2 * (n + 1)) + A010892 (2 * n + 1) * A145051 (2 * n + 1)

end

end A228949.P9430091126321511095

namespace A228949

/-- `A145051(2*(n+1))+A010892(2*n+1)*A145051(2*n+1)` -/
def P9430091126321511095.Spec : Prop :=
  ∀ n, P9430091126321511095.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P14314069108598575484

`A092200((n+1)*A010882(n+2))`
-/

namespace A228949.P14314069108598575484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 ((n + 1 : ℤ) * A010882 (n + 2)).toNat

end

end A228949.P14314069108598575484

namespace A228949

/-- `A092200((n+1)*A010882(n+2))` -/
def P14314069108598575484.Spec : Prop :=
  ∀ n, P14314069108598575484.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P17535242265186843811

`A092200((n+1)*A130784(2*n+1))`
-/

namespace A228949.P17535242265186843811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 ((n + 1 : ℤ) * A130784 (2 * n + 1)).toNat

end

end A228949.P17535242265186843811

namespace A228949

/-- `A092200((n+1)*A130784(2*n+1))` -/
def P17535242265186843811.Spec : Prop :=
  ∀ n, P17535242265186843811.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P6755139636168035061

`2*n+3+A010892(4*n)*(n+1)`
-/

namespace A228949.P6755139636168035061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) + A010892 (4 * n) * (n + 1 : ℤ)

end

end A228949.P6755139636168035061

namespace A228949

/-- `2*n+3+A010892(4*n)*(n+1)` -/
def P6755139636168035061.Spec : Prop :=
  ∀ n, P6755139636168035061.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P11407876849351625200

`A373750(A347838(n+2))`
-/

namespace A228949.P11407876849351625200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373750 (A347838 (n + 2)).toNat

end

end A228949.P11407876849351625200

namespace A228949

/-- `A373750(A347838(n+2))` -/
def P11407876849351625200.Spec : Prop :=
  ∀ n, P11407876849351625200.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P10864892647579155724

`A008619(Δ[A000982(A047259(n+1))])`
-/

namespace A228949.P10864892647579155724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A047259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A228949.P10864892647579155724

namespace A228949

/-- `A008619(Δ[A000982(A047259(n+1))])` -/
def P10864892647579155724.Spec : Prop :=
  ∀ n, P10864892647579155724.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P13480982957172295685

`A008621(Δ[A047259(n+1)²])`
-/

namespace A228949.P13480982957172295685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A228949.P13480982957172295685

namespace A228949

/-- `A008621(Δ[A047259(n+1)²])` -/
def P13480982957172295685.Spec : Prop :=
  ∀ n, P13480982957172295685.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P5330011208591872734

`A008621(Δ[(A047231(n+1)+1)²])`
-/

namespace A228949.P5330011208591872734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047231 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A228949.P5330011208591872734

namespace A228949

/-- `A008621(Δ[(A047231(n+1)+1)²])` -/
def P5330011208591872734.Spec : Prop :=
  ∀ n, P5330011208591872734.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P5996221255935607128

`A008621(Δ[A000290(A047259(n+1))])`
-/

namespace A228949.P5996221255935607128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A047259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A228949.P5996221255935607128

namespace A228949

/-- `A008621(Δ[A000290(A047259(n+1))])` -/
def P5996221255935607128.Spec : Prop :=
  ∀ n, P5996221255935607128.a n = A228949 (n + 2)

end A228949

/-! ## A228949.P157292131546462290

`A008621(Δ[A005563(A047231(n+1))])`
-/

namespace A228949.P157292131546462290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A047231 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A228949.P157292131546462290

namespace A228949

/-- `A008621(Δ[A005563(A047231(n+1))])` -/
def P157292131546462290.Spec : Prop :=
  ∀ n, P157292131546462290.a n = A228949 (n + 2)

end A228949

/-!
# A228950: The index of Simon's piecewise testability congruence, for words of length n over a 2-letter alphabet.

The programs for A228950, there is no canonical definition to state claims against.
-/

/-! ## A228950.P3225678419012456111

`A065033(A125784(n))+A053154(n)`
-/

namespace A228950.P3225678419012456111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A125784 n).toNat + A053154 n

end

end A228950.P3225678419012456111

/-! ## A228950.P13680192382438468238

`A090223(A099949(n+4)+A078805(n+1))`
-/

namespace A228950.P13680192382438468238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A099949 (n + 4) + A078805 (n + 1)).toNat

end

end A228950.P13680192382438468238

/-!
# A228952: A010062(2^n-1).

The programs for A228952, the canonical program `A228952.P2460723275869032099` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228952 has offset 0).

The definition of A228952 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010062, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228952.P2460723275869032099

`A010062(2^n-1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A228952

/-- `A010062(2^n-1)` -/
def P2460723275869032099.Spec : Prop :=
  ∀ n, P2460723275869032099.a n = A228952 n

theorem P2460723275869032099.correct : P2460723275869032099.Spec := by
  intro n
  simp only [A228952]

end A228952

/-! ## A228952.P8957476415328476447

`record[A010062(A173787(n))]`
-/

namespace A228952.P8957476415328476447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010062 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228952.P8957476415328476447

namespace A228952

/-- `record[A010062(A173787(n))]` -/
def P8957476415328476447.Spec : Prop :=
  ∀ n, P8957476415328476447.a n = A228952 n

end A228952

/-! ## A228952.P3950935719120092323

`record[A010062(A233276(n))]`
-/

namespace A228952.P3950935719120092323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010062 (A233276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228952.P3950935719120092323

namespace A228952

/-- `record[A010062(A233276(n))]` -/
def P3950935719120092323.Spec : Prop :=
  ∀ n, P3950935719120092323.a n = A228952 n

end A228952

/-! ## A228952.P10101675306743175068

`record[A010062(A255565(n))]`
-/

namespace A228952.P10101675306743175068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010062 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228952.P10101675306743175068

namespace A228952

/-- `record[A010062(A255565(n))]` -/
def P10101675306743175068.Spec : Prop :=
  ∀ n, P10101675306743175068.a n = A228952 n

end A228952

/-! ## A228952.P7603430062587133202

`record[A010062(A303763(n))]`
-/

namespace A228952.P7603430062587133202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010062 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228952.P7603430062587133202

namespace A228952

/-- `record[A010062(A303763(n))]` -/
def P7603430062587133202.Spec : Prop :=
  ∀ n, P7603430062587133202.a n = A228952 n

end A228952

/-!
# A228953: The largest possible element size for each perfect squared square order, otherwise 0 if perfect squared squares do not exist in that order.

The programs for A228953, there is no canonical definition to state claims against.
-/

/-! ## A228953.P10240979903434465037

`A000720(A111835(∑[A034424(n+1)]))`
-/

namespace A228953.P10240979903434465037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A111835 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A228953.P10240979903434465037

/-! ## A228953.P15786264511956318385

`A000196(A000041(n)*A217155(n+4))`
-/

namespace A228953.P15786264511956318385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000041 n * A217155 (n + 4)).toNat

end

end A228953.P15786264511956318385

/-! ## A228953.P14278111317940045303

`∑[A151933(A312119(n))]%A176986(n+1)`
-/

namespace A228953.P14278111317940045303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A312119 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A176986 (n + 1))

end

end A228953.P14278111317940045303

/-!
# A228954: Bisection of A195240(n).

The programs for A228954, there is no canonical definition to state claims against.
-/

/-! ## A228954.P482934445508788662

`A195240(2*n+1)`
-/

namespace A228954.P482934445508788662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195240 (2 * n + 1)

end

end A228954.P482934445508788662

/-! ## A228954.P9796095515451845973

`or(1, A195240(A005408(n)))`
-/

namespace A228954.P9796095515451845973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A195240 (A005408 n).toNat)

end

end A228954.P9796095515451845973

/-! ## A228954.P6258817555261621024

`A195240(A005408(n))+floor(A280710(n+1)/5)`
-/

namespace A228954.P6258817555261621024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195240 (A005408 n).toNat + ⌊(A280710 (n + 1) : ℚ) / 5⌋

end

end A228954.P6258817555261621024

/-! ## A228954.P16363978645606593052

`A195240(A005408(n))%A353411(n)`
-/

namespace A228954.P16363978645606593052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195240 (A005408 n).toNat) (A353411 n)

end

end A228954.P16363978645606593052

/-!
# A228955: Table: T(n,k) = n!*binomial(n+1,2*k).

The programs for A228955, there is no canonical definition to state claims against.
-/

/-! ## A228955.P941261131920088452

`A219570(∑[A275437(n)])`
-/

namespace A228955.P941261131920088452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228955.P941261131920088452

/-! ## A228955.P10200672614091917453

`A219570(eq[0, A242086(n)])`
-/

namespace A228955.P10200672614091917453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228955.P10200672614091917453

/-! ## A228955.P3384614346421930785

`A219570(lt[A066667(n), 2]+1)`
-/

namespace A228955.P3384614346421930785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219570 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A228955.P3384614346421930785

/-! ## A228955.P11176116720822665056

`A219570(lt[1, n*A066667(n)])`
-/

namespace A228955.P11176116720822665056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A228955.P11176116720822665056

/-! ## A228955.P2627558266094813978

`A219570(∑[A040001(∏{e}[n+1, #+1])])`
-/

namespace A228955.P2627558266094813978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219570 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228955.P2627558266094813978

/-!
# A228957: Numbers n such that n/rad(n) is greater than the greatest prime dividing n.

The programs for A228957, the canonical program `A228957.P5188532976308301560` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228957 has offset 1).

The definition of A228957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228957.P7710411318479955697

`lt[A007947(n+1), A052126(n+1)]+1`
-/

namespace A228957.P7710411318479955697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A228957.P7710411318479955697

namespace A228957

/-- `lt[A007947(n+1), A052126(n+1)]+1` -/
def P7710411318479955697.Spec : Prop :=
  ∀ n, (P7710411318479955697.a n : ℤ) = A228957 (n + 1)

end A228957

/-! ## A228957.P7206485658044622637

`lt[A076618(n+1), A052126(n+1)]+1`
-/

namespace A228957.P7206485658044622637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A228957.P7206485658044622637

namespace A228957

/-- `lt[A076618(n+1), A052126(n+1)]+1` -/
def P7206485658044622637.Spec : Prop :=
  ∀ n, (P7206485658044622637.a n : ℤ) = A228957 (n + 1)

end A228957

/-! ## A228957.P5188532976308301560

`lt[A006530(n+1)², A217434(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A228957

/-- `lt[A006530(n+1)², A217434(n+1)]+1` -/
def P5188532976308301560.Spec : Prop :=
  ∀ n, (P5188532976308301560.a n : ℤ) = A228957 (n + 1)

theorem P5188532976308301560.correct : P5188532976308301560.Spec := by
  intro n
  simp only [A228957, Nat.add_sub_cancel]

end A228957

/-! ## A228957.P2325753768840440775

`A020725(lt[A007947(n+1), A052126(n+1)])`
-/

namespace A228957.P2325753768840440775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228957.P2325753768840440775

namespace A228957

/-- `A020725(lt[A007947(n+1), A052126(n+1)])` -/
def P2325753768840440775.Spec : Prop :=
  ∀ n, P2325753768840440775.a n = A228957 (n + 1)

end A228957

/-! ## A228957.P16097430001679437108

`A020725(lt[A076618(n+1), A052126(n+1)])`
-/

namespace A228957.P16097430001679437108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228957.P16097430001679437108

namespace A228957

/-- `A020725(lt[A076618(n+1), A052126(n+1)])` -/
def P16097430001679437108.Spec : Prop :=
  ∀ n, P16097430001679437108.a n = A228957 (n + 1)

end A228957

/-! ## A228957.P366267724893184858

`A020725(lt[A073353(n+1), A052126(n+1)+n])`
-/

namespace A228957.P366267724893184858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228957.P366267724893184858

namespace A228957

/-- `A020725(lt[A073353(n+1), A052126(n+1)+n])` -/
def P366267724893184858.Spec : Prop :=
  ∀ n, P366267724893184858.a n = A228957 (n + 1)

end A228957

/-! ## A228957.P630794051324175714

`A020725(lt[A078310(n+1), n*A052126(n+1)])`
-/

namespace A228957.P630794051324175714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228957.P630794051324175714

namespace A228957

/-- `A020725(lt[A078310(n+1), n*A052126(n+1)])` -/
def P630794051324175714.Spec : Prop :=
  ∀ n, P630794051324175714.a n = A228957 (n + 1)

end A228957

/-! ## A228957.P4846501408703851057

`A020725(lt[A078310(n+1)/A052126(n+1), n])`
-/

namespace A228957.P4846501408703851057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078310 (n + 1) : ℚ) / (A052126 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A228957.P4846501408703851057

namespace A228957

/-- `A020725(lt[A078310(n+1)/A052126(n+1), n])` -/
def P4846501408703851057.Spec : Prop :=
  ∀ n, P4846501408703851057.a n = A228957 (n + 1)

end A228957

/-! ## A228957.P217627187758348739

`A020725(lt[(n+1)/A003557(n+1), A052126(n+1)])`
-/

namespace A228957.P217627187758348739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A228957.P217627187758348739

namespace A228957

/-- `A020725(lt[(n+1)/A003557(n+1), A052126(n+1)])` -/
def P217627187758348739.Spec : Prop :=
  ∀ n, P217627187758348739.a n = A228957 (n + 1)

end A228957

/-!
# A228958: a(n) = 1*2 + 3*4 + 5*6 + 7*8 + 9*10 + 11*12 + 13*14 + ... + (up to n).

The programs for A228958, the canonical program `A228958.P4266075833310147019` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228958 has offset 1).

The definition of A228958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228958.P14446183815392402811

`∑[or(1, n^gcd(2, n+1))]`
-/

namespace A228958.P14446183815392402811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ Nat.gcd 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P14446183815392402811

namespace A228958

/-- `∑[or(1, n^gcd(2, n+1))]` -/
def P14446183815392402811.Spec : Prop :=
  ∀ n, (P14446183815392402811.a n : ℤ) = A228958 (n + 1)

end A228958

/-! ## A228958.P7355468793769540971

`∑[n^(n%2)*or(1, n)]`
-/

namespace A228958.P7355468793769540971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2) * Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P7355468793769540971

namespace A228958

/-- `∑[n^(n%2)*or(1, n)]` -/
def P7355468793769540971.Spec : Prop :=
  ∀ n, (P7355468793769540971.a n : ℤ) = A228958 (n + 1)

end A228958

/-! ## A228958.P14250078758778282935

`∑[or(1, n)^(2-char[2*n])]`
-/

namespace A228958.P14250078758778282935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) ^ (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P14250078758778282935

namespace A228958

/-- `∑[or(1, n)^(2-char[2*n])]` -/
def P14250078758778282935.Spec : Prop :=
  ∀ n, P14250078758778282935.a n = (A228958 (n + 1) : ℚ)

end A228958

/-! ## A228958.P4266075833310147019

`∑[A392334(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228958

/-- `∑[A392334(n)]` -/
def P4266075833310147019.Spec : Prop :=
  ∀ n, P4266075833310147019.a n = A228958 (n + 1)

theorem P4266075833310147019.correct : P4266075833310147019.Spec := by
  intro n
  simp only [A228958, Nat.add_sub_cancel]

end A228958

/-! ## A228958.P8339934145532074571

`∑[or(1, A065599(n))]`
-/

namespace A228958.P8339934145532074571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065599 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P8339934145532074571

namespace A228958

/-- `∑[or(1, A065599(n))]` -/
def P8339934145532074571.Spec : Prop :=
  ∀ n, P8339934145532074571.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P1107486986289464023

`∑[A103832(n)-n]`
-/

namespace A228958.P1107486986289464023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103832 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P1107486986289464023

namespace A228958

/-- `∑[A103832(n)-n]` -/
def P1107486986289464023.Spec : Prop :=
  ∀ n, P1107486986289464023.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P7256319139387664045

`∑[or(1, n*A093178(n))]`
-/

namespace A228958.P7256319139387664045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * A093178 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P7256319139387664045

namespace A228958

/-- `∑[or(1, n*A093178(n))]` -/
def P7256319139387664045.Spec : Prop :=
  ∀ n, P7256319139387664045.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P15555494398188347940

`∑[(n+1)²-A103831(n)]`
-/

namespace A228958.P15555494398188347940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A103831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P15555494398188347940

namespace A228958

/-- `∑[(n+1)²-A103831(n)]` -/
def P15555494398188347940.Spec : Prop :=
  ∀ n, P15555494398188347940.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P6307374661672879136

`A319866(n+1)-char[2*n]`
-/

namespace A228958.P6307374661672879136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319866 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A228958.P6307374661672879136

namespace A228958

/-- `A319866(n+1)-char[2*n]` -/
def P6307374661672879136.Spec : Prop :=
  ∀ n, P6307374661672879136.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P313387089116556649

`∑[A109613(n)^gcd(2, n+1)]`
-/

namespace A228958.P313387089116556649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n ^ Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P313387089116556649

namespace A228958

/-- `∑[A109613(n)^gcd(2, n+1)]` -/
def P313387089116556649.Spec : Prop :=
  ∀ n, P313387089116556649.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P6762371113321281952

`∑[A109613(n)^A000034(n)]`
-/

namespace A228958.P6762371113321281952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 n : ℚ) ^ (A000034 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P6762371113321281952

namespace A228958

/-- `∑[A109613(n)^A000034(n)]` -/
def P6762371113321281952.Spec : Prop :=
  ∀ n, P6762371113321281952.a n = (A228958 (n + 1) : ℚ)

end A228958

/-! ## A228958.P12946322962029565170

`A008619(n)+∑[n*A093178(n)]`
-/

namespace A228958.P12946322962029565170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P12946322962029565170

namespace A228958

/-- `A008619(n)+∑[n*A093178(n)]` -/
def P12946322962029565170.Spec : Prop :=
  ∀ n, P12946322962029565170.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P12798910827637215452

`∑[A093178(n)*A114752(n+1)-n]`
-/

namespace A228958.P12798910827637215452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A114752 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P12798910827637215452

namespace A228958

/-- `∑[A093178(n)*A114752(n+1)-n]` -/
def P12798910827637215452.Spec : Prop :=
  ∀ n, P12798910827637215452.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P13207522461314883431

`∑[A065599(n)]+∑[A000007(a(n-1))]` with `a(0)=1`
-/

namespace A228958.P13207522461314883431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065599 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000007 (f2 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A228958.P13207522461314883431

namespace A228958

/-- `∑[A065599(n)]+∑[A000007(a(n-1))]` -/
def P13207522461314883431.Spec : Prop :=
  ∀ n, P13207522461314883431.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P3983643804184272000

`∑[A009001(n)*A009001(A109613(n))]`
-/

namespace A228958.P3983643804184272000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A009001 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P3983643804184272000

namespace A228958

/-- `∑[A009001(n)*A009001(A109613(n))]` -/
def P3983643804184272000.Spec : Prop :=
  ∀ n, P3983643804184272000.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P6056066517530442563

`∑[A109613(n)*A109613(A124625(n))]`
-/

namespace A228958.P6056066517530442563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n * A109613 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P6056066517530442563

namespace A228958

/-- `∑[A109613(n)*A109613(A124625(n))]` -/
def P6056066517530442563.Spec : Prop :=
  ∀ n, P6056066517530442563.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P16326847023607961305

`∑[A093178(n)²*A093178(A004442(n))]`
-/

namespace A228958.P16326847023607961305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n ^ 2 * A093178 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P16326847023607961305

namespace A228958

/-- `∑[A093178(n)²*A093178(A004442(n))]` -/
def P16326847023607961305.Spec : Prop :=
  ∀ n, P16326847023607961305.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P15480490078831899325

`∑[A093178(n)²*A093178(A184985(n+1))]`
-/

namespace A228958.P15480490078831899325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n ^ 2 * A093178 (A184985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P15480490078831899325

namespace A228958

/-- `∑[A093178(n)²*A093178(A184985(n+1))]` -/
def P15480490078831899325.Spec : Prop :=
  ∀ n, P15480490078831899325.a n = A228958 (n + 1)

end A228958

/-! ## A228958.P2658831512423605590

`∑[A109613(n)²/A109613(A193356(n+1))]`
-/

namespace A228958.P2658831512423605590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 n ^ 2 : ℚ) / (A109613 (A193356 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P2658831512423605590

namespace A228958

/-- `∑[A109613(n)²/A109613(A193356(n+1))]` -/
def P2658831512423605590.Spec : Prop :=
  ∀ n, P2658831512423605590.a n = (A228958 (n + 1) : ℚ)

end A228958

/-! ## A228958.P16896883019394036582

`∑[(A296063(n+1)-A237420(n))*A296063(n+1)]`
-/

namespace A228958.P16896883019394036582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A296063 (n + 1) - A237420 n) * A296063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228958.P16896883019394036582

namespace A228958

/-- `∑[(A296063(n+1)-A237420(n))*A296063(n+1)]` -/
def P16896883019394036582.Spec : Prop :=
  ∀ n, P16896883019394036582.a n = A228958 (n + 1)

end A228958

/-!
# A228959: Total sum of squared lengths of ascending runs in all permutations of [n].

The programs for A228959, the canonical program `A228959.P17141325734688985624` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228959 has offset 0).

The definition of A228959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228959.P17141325734688985624

`(2*n+1)*a(n-1)-(n-1)*((n+2)*a(n-2)-(n-2)*a(n-3))` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228959

/-- `(2*n+1)*a(n-1)-(n-1)*((n+2)*a(n-2)-(n-2)*a(n-3))` -/
def P17141325734688985624.Spec : Prop :=
  ∀ n, P17141325734688985624.a n = A228959 n

theorem P17141325734688985624.correct : P17141325734688985624.Spec := by
  intro n
  simp only [A228959]

end A228959

/-! ## A228959.P12105119583182263222

`A229001(∑[n+3])`
-/

namespace A228959.P12105119583182263222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228959.P12105119583182263222

namespace A228959

/-- `A229001(∑[n+3])` -/
def P12105119583182263222.Spec : Prop :=
  ∀ n, P12105119583182263222.a n = A228959 n

end A228959

/-! ## A228959.P8669394463959394188

`A296943(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A228959.P8669394463959394188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A296943 n + (n : ℤ) * a (n - 1)

end

end A228959.P8669394463959394188

namespace A228959

/-- `A296943(n)+n*a(n-1)` -/
def P8669394463959394188.Spec : Prop :=
  ∀ n, P8669394463959394188.a n = A228959 n

end A228959

/-! ## A228959.P7075843767330009060

`record[A229001(A055998(A057979(n)))]`
-/

namespace A228959.P7075843767330009060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A055998 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228959.P7075843767330009060

namespace A228959

/-- `record[A229001(A055998(A057979(n)))]` -/
def P7075843767330009060.Spec : Prop :=
  ∀ n, P7075843767330009060.a n = A228959 n

end A228959

/-! ## A228959.P10717553118645217534

`record[A229001(A055998(A242411(n+1)))]`
-/

namespace A228959.P10717553118645217534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A055998 (A242411 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228959.P10717553118645217534

namespace A228959

/-- `record[A229001(A055998(A242411(n+1)))]` -/
def P10717553118645217534.Spec : Prop :=
  ∀ n, P10717553118645217534.a n = A228959 n

end A228959

/-! ## A228959.P16596276151557260859

`record[A229001(A055998(A322024(n+1)))]`
-/

namespace A228959.P16596276151557260859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A055998 (A322024 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228959.P16596276151557260859

namespace A228959

/-- `record[A229001(A055998(A322024(n+1)))]` -/
def P16596276151557260859.Spec : Prop :=
  ∀ n, P16596276151557260859.a n = A228959 n

end A228959

/-! ## A228959.P7166942306693516512

`record[A229001(A055998(A326192(n+1)))]`
-/

namespace A228959.P7166942306693516512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A055998 (A326192 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228959.P7166942306693516512

namespace A228959

/-- `record[A229001(A055998(A326192(n+1)))]` -/
def P7166942306693516512.Spec : Prop :=
  ∀ n, P7166942306693516512.a n = A228959 n

end A228959

/-! ## A228959.P7460504179427488624

`A056542(n+1)+A114870(n)-A002627(n)`
-/

namespace A228959.P7460504179427488624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056542 (n + 1) + (A114870 n - A002627 n)

end

end A228959.P7460504179427488624

namespace A228959

/-- `A056542(n+1)+A114870(n)-A002627(n)` -/
def P7460504179427488624.Spec : Prop :=
  ∀ n, P7460504179427488624.a n = A228959 n

end A228959

/-! ## A228959.P18072089262520153366

`A296943(n+1)-(A002627(n)+A000522(n))`
-/

namespace A228959.P18072089262520153366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296943 (n + 1) - (A002627 n + A000522 n)

end

end A228959.P18072089262520153366

namespace A228959

/-- `A296943(n+1)-(A002627(n)+A000522(n))` -/
def P18072089262520153366.Spec : Prop :=
  ∀ n, P18072089262520153366.a n = A228959 n

end A228959

/-! ## A228959.P8463492240796022227

`A306495(n)-(A001563(n)+A000142(n+1))`
-/

namespace A228959.P8463492240796022227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306495 n - (A001563 n + A000142 (n + 1))

end

end A228959.P8463492240796022227

namespace A228959

/-- `A306495(n)-(A001563(n)+A000142(n+1))` -/
def P8463492240796022227.Spec : Prop :=
  ∀ n, P8463492240796022227.a n = A228959 n

end A228959

/-!
# A228960: a(n) = [x^n] (1 + x + x^3 + x^4)^n.

The programs for A228960, there is no canonical definition to state claims against.
-/

/-! ## A228960.P2510391491399881502

`A047163(2*(n+1))+1`
-/

namespace A228960.P2510391491399881502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047163 (2 * (n + 1)) + 1

end

end A228960.P2510391491399881502

/-! ## A228960.P11926449043413309387

`A047164(2*(n+1))+1`
-/

namespace A228960.P11926449043413309387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047164 (2 * (n + 1)) + 1

end

end A228960.P11926449043413309387

/-!
# A228962: Smallest sets of 5 consecutive abundant numbers in arithmetic progression. The initial abundant number is listed.

The programs for A228962, there is no canonical definition to state claims against.
-/

/-! ## A228962.P14936995122318277551

`A228961(∩[A029968(n+1), A095047(n+1)])`
-/

namespace A228962.P14936995122318277551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095047 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228961 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A228962.P14936995122318277551

/-!
# A228964: Smallest sets of 7 consecutive abundant numbers in arithmetic progression. The initial abundant number is listed.

The programs for A228964, there is no canonical definition to state claims against.
-/

/-! ## A228964.P16738882979231565121

`∩[A228962(n+1)-12, A228962(n+1)]`
-/

namespace A228964.P16738882979231565121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228962 (n + 1) - 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228964.P16738882979231565121

/-!
# A228966: G.f. A(x) satisfies A(x) = (1 + x*A(x))^2 * (1 + A(x)) / 2.

The programs for A228966, there is no canonical definition to state claims against.
-/

/-! ## A228966.P12628898935275108927

`A220080(∑[A066443(n)])`
-/

namespace A228966.P12628898935275108927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220080 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228966.P12628898935275108927

/-!
# A228967: Table read by rows; T(n,k) = 2*n for k = 1, T(n,k) = 9*n for k = 2.

The programs for A228967, the canonical program `A228967.P8378338733767857714` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228967 has offset 1).

The definition of A228967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228967.P8378338733767857714

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=9, a(2)=4, a(3)=18`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228967

/-- `2*a(n-2)-a(n-4)` -/
def P8378338733767857714.Spec : Prop :=
  ∀ n, P8378338733767857714.a n = A228967 (n + 1)

theorem P8378338733767857714.correct : P8378338733767857714.Spec := by
  intro n
  simp only [A228967, Nat.add_sub_cancel]

end A228967

/-! ## A228967.P4571846570669644346

`a(n-2)+a(n%2)` with `a(0)=2, a(1)=9`
-/

namespace A228967.P4571846570669644346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 2) + a (n % 2)

end

end A228967.P4571846570669644346

namespace A228967

/-- `a(n-2)+a(n%2)` -/
def P4571846570669644346.Spec : Prop :=
  ∀ n, (P4571846570669644346.a n : ℤ) = A228967 (n + 1)

end A228967

/-! ## A228967.P802498995834756055

`∑[7*(n+1)]%(7*n+5)`
-/

namespace A228967.P802498995834756055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (7 * n + 5)

end

end A228967.P802498995834756055

namespace A228967

/-- `∑[7*(n+1)]%(7*n+5)` -/
def P802498995834756055.Spec : Prop :=
  ∀ n, (P802498995834756055.a n : ℤ) = A228967 (n + 1)

end A228967

/-! ## A228967.P18068061256316838426

`∑[11-a(n-1)]-a(n-1)` with `a(0)=2`
-/

namespace A228967.P18068061256316838426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A228967.P18068061256316838426

namespace A228967

/-- `∑[11-a(n-1)]-a(n-1)` -/
def P18068061256316838426.Spec : Prop :=
  ∀ n, P18068061256316838426.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P17519430187645791662

`(8^and(1, n)+1)*∑[char[2*n]]`
-/

namespace A228967.P17519430187645791662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 ^ Nat.land 1 n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228967.P17519430187645791662

namespace A228967

/-- `(8^and(1, n)+1)*∑[char[2*n]]` -/
def P17519430187645791662.Spec : Prop :=
  ∀ n, (P17519430187645791662.a n : ℤ) = A228967 (n + 1)

end A228967

/-! ## A228967.P12137824904158761294

`(gcd(8, 1-n²)+1)*∑[char[2*n]]`
-/

namespace A228967.P12137824904158761294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 8 (1 - (n ^ 2 : ℤ)) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228967.P12137824904158761294

namespace A228967

/-- `(gcd(8, 1-n²)+1)*∑[char[2*n]]` -/
def P12137824904158761294.Spec : Prop :=
  ∀ n, (P12137824904158761294.a n : ℤ) = A228967 (n + 1)

end A228967

/-! ## A228967.P15114090625738091132

`a(n-2)+a(n-2)/floor(n/2)` with `a(0)=2, a(1)=9`
-/

namespace A228967.P15114090625738091132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 2) + a (n - 2) / (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A228967.P15114090625738091132

namespace A228967

/-- `a(n-2)+a(n-2)/floor(n/2)` -/
def P15114090625738091132.Spec : Prop :=
  ∀ n, P15114090625738091132.a n = (A228967 (n + 1) : ℚ)

end A228967

/-! ## A228967.P14704293594651384220

`A010699(n)+a(n-2)` with `a(0)=2, a(1)=9`
-/

namespace A228967.P14704293594651384220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  A010699 n + a (n - 2)

end

end A228967.P14704293594651384220

namespace A228967

/-- `A010699(n)+a(n-2)` -/
def P14704293594651384220.Spec : Prop :=
  ∀ n, P14704293594651384220.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P10904466424285735652

`A008619(n)*A010699(n)`
-/

namespace A228967.P10904466424285735652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A010699 n

end

end A228967.P10904466424285735652

namespace A228967

/-- `A008619(n)*A010699(n)` -/
def P10904466424285735652.Spec : Prop :=
  ∀ n, P10904466424285735652.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P49630390851256151

`A381055(n)+A168199(n+1)`
-/

namespace A228967.P49630390851256151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381055 n + A168199 (n + 1)

end

end A228967.P49630390851256151

namespace A228967

/-- `A381055(n)+A168199(n+1)` -/
def P49630390851256151.Spec : Prop :=
  ∀ n, P49630390851256151.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P14305206285741793954

`A010693(n)*A064455(n+1)`
-/

namespace A228967.P14305206285741793954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n * A064455 (n + 1)

end

end A228967.P14305206285741793954

namespace A228967

/-- `A010693(n)*A064455(n+1)` -/
def P14305206285741793954.Spec : Prop :=
  ∀ n, P14305206285741793954.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P6398589843391151538

`A010684(n)*A195013(n+1)`
-/

namespace A228967.P6398589843391151538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A195013 (n + 1)

end

end A228967.P6398589843391151538

namespace A228967

/-- `A010684(n)*A195013(n+1)` -/
def P6398589843391151538.Spec : Prop :=
  ∀ n, P6398589843391151538.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P5550042202896138518

`(A010673(n)+1)*A195013(n+1)`
-/

namespace A228967.P5550042202896138518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010673 n + 1) * A195013 (n + 1)

end

end A228967.P5550042202896138518

namespace A228967

/-- `(A010673(n)+1)*A195013(n+1)` -/
def P5550042202896138518.Spec : Prop :=
  ∀ n, P5550042202896138518.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P5748203668858036634

`A195312(n+1)+∑[A009001(2*n)]`
-/

namespace A228967.P5748203668858036634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228967.P5748203668858036634

namespace A228967

/-- `A195312(n+1)+∑[A009001(2*n)]` -/
def P5748203668858036634.Spec : Prop :=
  ∀ n, P5748203668858036634.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P7747281395599447537

`(A014682(n)+1)*A141310(A141310(n))`
-/

namespace A228967.P7747281395599447537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014682 n + 1) * A141310 (A141310 n).toNat

end

end A228967.P7747281395599447537

namespace A228967

/-- `(A014682(n)+1)*A141310(A141310(n))` -/
def P7747281395599447537.Spec : Prop :=
  ∀ n, P7747281395599447537.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P13458562207197715596

`(A109613(n+1)-A052928(n))*A195013(n+1)`
-/

namespace A228967.P13458562207197715596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 (n + 1) - A052928 n) * A195013 (n + 1)

end

end A228967.P13458562207197715596

namespace A228967

/-- `(A109613(n+1)-A052928(n))*A195013(n+1)` -/
def P13458562207197715596.Spec : Prop :=
  ∀ n, P13458562207197715596.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P7423795471654988952

`2*n+1+A195159(n+1)-A281098(2*n)`
-/

namespace A228967.P7423795471654988952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A195159 (n + 1) - A281098 (2 * n))

end

end A228967.P7423795471654988952

namespace A228967

/-- `2*n+1+A195159(n+1)-A281098(2*n)` -/
def P7423795471654988952.Spec : Prop :=
  ∀ n, P7423795471654988952.a n = A228967 (n + 1)

end A228967

/-! ## A228967.P1947045692826512796

`A195013(A165998(n))`
-/

namespace A228967.P1947045692826512796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (A165998 n).toNat

end

end A228967.P1947045692826512796

namespace A228967

/-- `A195013(A165998(n))` -/
def P1947045692826512796.Spec : Prop :=
  ∀ n, P1947045692826512796.a n = A228967 (n + 1)

end A228967

/-!
# A228968: Prime p such that p and p+2 are twin primes and p^2+p-1 p^2+p+1 are also twin primes.

The programs for A228968, there is no canonical definition to state claims against.
-/

/-! ## A228968.P13606389747392180678

`∩[A001359(n+1), A286319(n+1)]`
-/

namespace A228968.P13606389747392180678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P13606389747392180678

/-! ## A228968.P10556048187235982200

`∩[A001359(n+1), A088483(n+1)]`
-/

namespace A228968.P10556048187235982200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P10556048187235982200

/-! ## A228968.P7575494272739299055

`∩[A054799(n+1), A088483(n+1)]`
-/

namespace A228968.P7575494272739299055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P7575494272739299055

/-! ## A228968.P6813331737565487135

`∩[A063693(n+1), A088483(n+1)]`
-/

namespace A228968.P6813331737565487135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P6813331737565487135

/-! ## A228968.P17386347622456908140

`∩[A063700(n+1), A088483(n+1)]`
-/

namespace A228968.P17386347622456908140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P17386347622456908140

/-! ## A228968.P14104306109440338353

`∩[A064076(n+1), A088483(n+1)]`
-/

namespace A228968.P14104306109440338353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P14104306109440338353

/-! ## A228968.P11384738365415434347

`∩[A088483(n+1), A181747(n+1)]`
-/

namespace A228968.P11384738365415434347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P11384738365415434347

/-! ## A228968.P1132674303157656198

`∩[A054799(n+1), A286319(n+1)]`
-/

namespace A228968.P1132674303157656198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P1132674303157656198

/-! ## A228968.P7792892932326358208

`∩[A063693(n+1), A286319(n+1)]`
-/

namespace A228968.P7792892932326358208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P7792892932326358208

/-! ## A228968.P6755212569477560886

`∩[A063700(n+1), A286319(n+1)]`
-/

namespace A228968.P6755212569477560886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P6755212569477560886

/-! ## A228968.P8461089833801763289

`∩[A088483(n+1), A280255(n+1)]`
-/

namespace A228968.P8461089833801763289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P8461089833801763289

/-! ## A228968.P14975417909004943961

`∩[A181747(n+1), A286319(n+1)]`
-/

namespace A228968.P14975417909004943961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P14975417909004943961

/-! ## A228968.P444356160386592732

`∩[A280255(n+1), A286319(n+1)]`
-/

namespace A228968.P444356160386592732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P444356160386592732

/-! ## A228968.P3629093125627092422

`∩[A088483(n+1), A280590(n+1)]`
-/

namespace A228968.P3629093125627092422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P3629093125627092422

/-! ## A228968.P9390264341111884450

`∩[A280590(n+1), A286319(n+1)]`
-/

namespace A228968.P9390264341111884450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228968.P9390264341111884450

/-!
# A228971: Number of n X n 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X(n+1) 0..2 array.

The programs for A228971, there is no canonical definition to state claims against.
-/

/-! ## A228971.P4009574909226123316

`A228977((n+1)²+n²)`
-/

namespace A228971.P4009574909226123316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 ((n + 1) ^ 2 + n ^ 2)

end

end A228971.P4009574909226123316

/-! ## A228971.P107813589964321086

`lcm(3, A228977(A001844(n)))`
-/

namespace A228971.P107813589964321086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A228977 (A001844 n).toNat)

end

end A228971.P107813589964321086

/-! ## A228971.P11693762111408350749

`C(A228977(A001844(n)), A054977(n))`
-/

namespace A228971.P11693762111408350749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228977 (A001844 n).toNat).toNat (A054977 n).toNat

end

end A228971.P11693762111408350749

/-!
# A228972: Number of n X 2 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 3 0..2 array.

The programs for A228972, there is no canonical definition to state claims against.
-/

/-! ## A228972.P7757765609274280040

`A228977(∑[n+1]+2)`
-/

namespace A228972.P7757765609274280040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A228972.P7757765609274280040

/-! ## A228972.P8214513889575484369

`or(1, A228977(A000096(n)+3))`
-/

namespace A228972.P8214513889575484369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A228977 (A000096 n + 3).toNat)

end

end A228972.P8214513889575484369

/-! ## A228972.P3457333181654014210

`record[gcd(A228977(n+2), A243202(n))]`
-/

namespace A228972.P3457333181654014210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228977 (n + 2)) (A243202 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228972.P3457333181654014210

/-! ## A228972.P15426521847926911830

`record[A228977(Δ[A003453(n+5)])]`
-/

namespace A228972.P15426521847926911830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228972.P15426521847926911830

/-! ## A228972.P8805661965897464426

`A228977(A000096(n+1))+A084928(n+4)`
-/

namespace A228972.P8805661965897464426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A000096 (n + 1)).toNat + A084928 (n + 4)

end

end A228972.P8805661965897464426

/-!
# A228973: Number of n X 3 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 4 0..2 array.

The programs for A228973, there is no canonical definition to state claims against.
-/

/-! ## A228973.P10879702480335618257

`A228977(∑[n+2]+4)`
-/

namespace A228973.P10879702480335618257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228973.P10879702480335618257

/-! ## A228973.P8397085801471625687

`lcm(3, A228977(A167614(n+1)))`
-/

namespace A228973.P8397085801471625687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A228977 (A167614 (n + 1)).toNat)

end

end A228973.P8397085801471625687

/-! ## A228973.P7895457026460513370

`or(A025461(n), A228977(A167614(n+1)))`
-/

namespace A228973.P7895457026460513370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025461 n) (A228977 (A167614 (n + 1)).toNat)

end

end A228973.P7895457026460513370

/-! ## A228973.P14531688525284461774

`or(A037800(n), A228977(A167614(n+1)))`
-/

namespace A228973.P14531688525284461774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037800 n) (A228977 (A167614 (n + 1)).toNat)

end

end A228973.P14531688525284461774

/-! ## A228973.P14005814537965628777

`or(A103451(n), A228977(A167614(n+1)))`
-/

namespace A228973.P14005814537965628777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103451 n) (A228977 (A167614 (n + 1)).toNat)

end

end A228973.P14005814537965628777

/-!
# A228974: Number of nX4 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X5 0..2 array.

The programs for A228974, there is no canonical definition to state claims against.
-/

/-! ## A228974.P2800862994626099776

`A228977(A052905(n)+9)`
-/

namespace A228974.P2800862994626099776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A052905 n + 9).toNat

end

end A228974.P2800862994626099776

/-! ## A228974.P18329304830767788240

`A228977(A055999(n)+10)`
-/

namespace A228974.P18329304830767788240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A055999 n + 10).toNat

end

end A228974.P18329304830767788240

/-! ## A228974.P17626982736038791962

`A228977(A167614(n+2)+1)`
-/

namespace A228974.P17626982736038791962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A167614 (n + 2) + 1).toNat

end

end A228974.P17626982736038791962

/-! ## A228974.P9002633232236834621

`A228977(Δ[A023545(n+1)-n²])`
-/

namespace A228974.P9002633232236834621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (f1 (n + 1) - f1 n).toNat

end

end A228974.P9002633232236834621

/-! ## A228974.P17674121721528533506

`A228977(A141214(n+1))`
-/

namespace A228974.P17674121721528533506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A141214 (n + 1)).toNat

end

end A228974.P17674121721528533506

/-!
# A228975: Number of nX5 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X6 0..2 array.

The programs for A228975, there is no canonical definition to state claims against.
-/

/-! ## A228975.P12656807545952865718

`A228977(A056000(n)+15)`
-/

namespace A228975.P12656807545952865718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A056000 n + 15).toNat

end

end A228975.P12656807545952865718

/-! ## A228975.P11446155766717045734

`A228977(eq[6, A131818(n+1)])`
-/

namespace A228975.P11446155766717045734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228975.P11446155766717045734

/-! ## A228975.P14429046258912323462

`A228977(A374005(n+1))`
-/

namespace A228975.P14429046258912323462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A374005 (n + 1)).toNat

end

end A228975.P14429046258912323462

/-! ## A228975.P10264789066424705125

`A228977(A056115(n)+11)`
-/

namespace A228975.P10264789066424705125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A056115 n + 11).toNat

end

end A228975.P10264789066424705125

/-! ## A228975.P10515349136376706371

`A228977(eq[4, A193592(n)])`
-/

namespace A228975.P10515349136376706371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228975.P10515349136376706371

/-!
# A228976: Number of nX6 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X7 0..2 array.

The programs for A228976, there is no canonical definition to state claims against.
-/

/-! ## A228976.P15375389586512617891

`A228977(A374007(n+1))`
-/

namespace A228976.P15375389586512617891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A374007 (n + 1)).toNat

end

end A228976.P15375389586512617891

/-! ## A228976.P3003052308962477494

`A228977(A052905(n+3))`
-/

namespace A228976.P3003052308962477494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (A052905 (n + 3)).toNat

end

end A228976.P3003052308962477494

/-! ## A228976.P15363569550785505036

`A228977(Δ[A023545(n+2)]-1)`
-/

namespace A228976.P15363569550785505036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228977 (f1 (n + 1) - f1 n - 1).toNat

end

end A228976.P15363569550785505036

/-!
# A228979: Number of n X n 0..1 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X(n+1) 0..1 array.

The programs for A228979, there is no canonical definition to state claims against.
-/

/-! ## A228979.P15117266522216320312

`A228986(∑[4*n]+1)`
-/

namespace A228979.P15117266522216320312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228979.P15117266522216320312

/-! ## A228979.P10073321588385673696

`lcm(2, A228986(A001844(n)))`
-/

namespace A228979.P10073321588385673696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A228986 (A001844 n).toNat)

end

end A228979.P10073321588385673696

/-! ## A228979.P8672139187163146796

`record[gcd(A114327(n), A228986(n+1))]`
-/

namespace A228979.P8672139187163146796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A228986 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228979.P8672139187163146796

/-! ## A228979.P9526586801561625937

`A055642(n)*A228986(A001844(n))`
-/

namespace A228979.P9526586801561625937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A228986 (A001844 n).toNat

end

end A228979.P9526586801561625937

/-! ## A228979.P3539521054482624354

`A112348(n)*A228986(A001844(n))`
-/

namespace A228979.P3539521054482624354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 n * A228986 (A001844 n).toNat

end

end A228979.P3539521054482624354

/-!
# A228980: Number of n X 2 0..1 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 3 0..1 array.

The programs for A228980, the canonical program `A228980.P17897904658437676094` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228980 has offset 1).

The definition of A228980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228980.P17897904658437676094

`6*a(n-1)-7*a(n-2)-6*a(n-3)+6*a(n-4)` with `a(0)=4, a(1)=16, a(2)=64, a(3)=252`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A228980

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)+6*a(n-4)` -/
def P17897904658437676094.Spec : Prop :=
  ∀ n, P17897904658437676094.a n = A228980 (n + 1)

theorem P17897904658437676094.correct : P17897904658437676094.Spec := by
  intro n
  simp only [A228980, Nat.add_sub_cancel]

end A228980

/-! ## A228980.P2595104563951904533

`A228986(∑[n+1]+2)`
-/

namespace A228980.P2595104563951904533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A228980.P2595104563951904533

namespace A228980

/-- `A228986(∑[n+1]+2)` -/
def P2595104563951904533.Spec : Prop :=
  ∀ n, P2595104563951904533.a n = A228980 (n + 1)

end A228980

/-! ## A228980.P16846160901820384309

`lcm(2, A228986(A000096(n)+3))`
-/

namespace A228980.P16846160901820384309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A228986 (A000096 n + 3).toNat)

end

end A228980.P16846160901820384309

namespace A228980

/-- `lcm(2, A228986(A000096(n)+3))` -/
def P16846160901820384309.Spec : Prop :=
  ∀ n, (P16846160901820384309.a n : ℤ) = A228980 (n + 1)

end A228980

/-! ## A228980.P4448253115705018341

`record[gcd(A228986(n+2), A229001(n))]`
-/

namespace A228980.P4448253115705018341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228986 (n + 2)) (A229001 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228980.P4448253115705018341

namespace A228980

/-- `record[gcd(A228986(n+2), A229001(n))]` -/
def P4448253115705018341.Spec : Prop :=
  ∀ n, (P4448253115705018341.a n : ℤ) = A228980 (n + 1)

end A228980

/-! ## A228980.P3634841220421594954

`and(A057428(n+1), A228986(A000096(n)+3))`
-/

namespace A228980.P3634841220421594954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A228986 (A000096 n + 3).toNat)

end

end A228980.P3634841220421594954

namespace A228980

/-- `and(A057428(n+1), A228986(A000096(n)+3))` -/
def P3634841220421594954.Spec : Prop :=
  ∀ n, P3634841220421594954.a n = A228980 (n + 1)

end A228980

/-!
# A228981: Number of nX3 0..1 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X4 0..1 array.

The programs for A228981, there is no canonical definition to state claims against.
-/

/-! ## A228981.P12123425070816401397

`A228986(∑[n+2]+4)`
-/

namespace A228981.P12123425070816401397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228981.P12123425070816401397

/-! ## A228981.P5916794038615644871

`lcm(2, A228986(A167614(n+1)))`
-/

namespace A228981.P5916794038615644871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A228986 (A167614 (n + 1)).toNat)

end

end A228981.P5916794038615644871

/-! ## A228981.P11530558906790118746

`A228986(A167614(n+1))+A034473(n+1)`
-/

namespace A228981.P11530558906790118746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A167614 (n + 1)).toNat + A034473 (n + 1)

end

end A228981.P11530558906790118746

/-! ## A228981.P9099705759528894498

`A228986(A167614(n+1))+A228953(n+1)`
-/

namespace A228981.P9099705759528894498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A167614 (n + 1)).toNat + A228953 (n + 1)

end

end A228981.P9099705759528894498

/-! ## A228981.P11472115210015564072

`A228986(A167614(n+1))%A200552(n+1)`
-/

namespace A228981.P11472115210015564072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228986 (A167614 (n + 1)).toNat) (A200552 (n + 1))

end

end A228981.P11472115210015564072

/-!
# A228982: Number of n X 4 0..1 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 5 0..1 array.

The programs for A228982, there is no canonical definition to state claims against.
-/

/-! ## A228982.P144389987327602383

`A228986(A374004(n+1))`
-/

namespace A228982.P144389987327602383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A374004 (n + 1)).toNat

end

end A228982.P144389987327602383

/-! ## A228982.P9175695637432754497

`A228986(A052905(n)+9)`
-/

namespace A228982.P9175695637432754497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A052905 n + 9).toNat

end

end A228982.P9175695637432754497

/-! ## A228982.P555378588062445604

`A228986(A055999(n)+10)`
-/

namespace A228982.P555378588062445604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A055999 n + 10).toNat

end

end A228982.P555378588062445604

/-! ## A228982.P3423736612753589399

`A228986(A167614(n+2)+1)`
-/

namespace A228982.P3423736612753589399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A167614 (n + 2) + 1).toNat

end

end A228982.P3423736612753589399

/-! ## A228982.P10548125412682052603

`A228986(Δ[A264443(n)-n²])`
-/

namespace A228982.P10548125412682052603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (f1 (n + 1) - f1 n).toNat

end

end A228982.P10548125412682052603

/-!
# A228983: Number of nX5 0..1 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X6 0..1 array.

The programs for A228983, there is no canonical definition to state claims against.
-/

/-! ## A228983.P7325438331781466899

`A228986(A374005(n+1))`
-/

namespace A228983.P7325438331781466899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A374005 (n + 1)).toNat

end

end A228983.P7325438331781466899

/-! ## A228983.P12194733966855499601

`A228986(A167499(n+3))`
-/

namespace A228983.P12194733966855499601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A167499 (n + 3)).toNat

end

end A228983.P12194733966855499601

/-! ## A228983.P963549236800045206

`A228986(A056000(n)+15)`
-/

namespace A228983.P963549236800045206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A056000 n + 15).toNat

end

end A228983.P963549236800045206

/-! ## A228983.P3665524461329718522

`A228986(Δ[A264443(n)])`
-/

namespace A228983.P3665524461329718522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (f1 (n + 1) - f1 n).toNat

end

end A228983.P3665524461329718522

/-! ## A228983.P9205658845404693858

`A228986(eq[4, A193592(n)])`
-/

namespace A228983.P9205658845404693858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228983.P9205658845404693858

/-!
# A228984: Number of nX6 0..1 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X7 0..1 array.

The programs for A228984, there is no canonical definition to state claims against.
-/

/-! ## A228984.P14314947408830650754

`A228986(A374007(n+1))`
-/

namespace A228984.P14314947408830650754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A374007 (n + 1)).toNat

end

end A228984.P14314947408830650754

/-! ## A228984.P13889018652638828717

`A228986(eq[7, A131818(n+1)])`
-/

namespace A228984.P13889018652638828717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228984.P13889018652638828717

/-! ## A228984.P4364183333009139174

`A228986(A052905(n+3))`
-/

namespace A228984.P4364183333009139174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A052905 (n + 3)).toNat

end

end A228984.P4364183333009139174

/-! ## A228984.P1951605805026851659

`A228986(eq[3, A219347(n)])`
-/

namespace A228984.P1951605805026851659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228984.P1951605805026851659

/-! ## A228984.P11198441355456426107

`A228986(eq[5, A193592(n)])`
-/

namespace A228984.P11198441355456426107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228984.P11198441355456426107

/-!
# A228985: Number of nX7 0..1 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X8 0..1 array.

The programs for A228985, there is no canonical definition to state claims against.
-/

/-! ## A228985.P6287100924631151868

`A228986(A374008(n+1))`
-/

namespace A228985.P6287100924631151868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (A374008 (n + 1)).toNat

end

end A228985.P6287100924631151868

/-! ## A228985.P11129865213146048115

`A228986(eq[8, A131818(n+1)])`
-/

namespace A228985.P11129865213146048115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228985.P11129865213146048115

/-! ## A228985.P2607504823555362002

`A228986(eq[4, A219347(n)])`
-/

namespace A228985.P2607504823555362002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228985.P2607504823555362002

/-! ## A228985.P4138868697233910101

`A228986(eq[6, A193592(n)])`
-/

namespace A228985.P4138868697233910101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228985.P4138868697233910101

/-! ## A228985.P3677277449158007483

`A228986(eq[7, A200370(n+1)])`
-/

namespace A228985.P3677277449158007483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228985.P3677277449158007483

/-!
# A228986: T(n,k) = number of nXk 0..1 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X(k+1) 0..1 array.

The programs for A228986, there is no canonical definition to state claims against.
-/

/-! ## A228986.P5699986769922473876

`or(n, A218372(n+1)-A147220(n+1)%4+1)+1`
-/

namespace A228986.P5699986769922473876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A218372 (n + 1) - Int.tmod (A147220 (n + 1)) 4 + 1) + 1

end

end A228986.P5699986769922473876

/-! ## A228986.P3193963229210204665

`A218196(A044915(n+1))+A143069(n+1)`
-/

namespace A228986.P3193963229210204665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218196 (A044915 (n + 1)).toNat + A143069 (n + 1)

end

end A228986.P3193963229210204665

/-! ## A228986.P6602254321108200136

`A188910(n+1)-A184955(A007092(n))`
-/

namespace A228986.P6602254321108200136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (n + 1) - A184955 (A007092 n).toNat

end

end A228986.P6602254321108200136

/-! ## A228986.P5094112458188809770

`A189111(n+1)-A184955(A007092(n))`
-/

namespace A228986.P5094112458188809770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (n + 1) - A184955 (A007092 n).toNat

end

end A228986.P5094112458188809770

/-! ## A228986.P11853755258312400366

`A223569(n+1)-A184955(A007092(n))`
-/

namespace A228986.P11853755258312400366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223569 (n + 1) - A184955 (A007092 n).toNat

end

end A228986.P11853755258312400366

/-!
# A228987: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^3*A(x)^8.

The programs for A228987, there is no canonical definition to state claims against.
-/

/-! ## A228987.P2347870180521642680

`A243283(A084096(n))`
-/

namespace A228987.P2347870180521642680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A084096 n).toNat

end

end A228987.P2347870180521642680

/-! ## A228987.P3281973445806343818

`A097471(A328281(n+1))`
-/

namespace A228987.P3281973445806343818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097471 (A328281 (n + 1)).toNat

end

end A228987.P3281973445806343818

/-!
# A228988: Smallest missing number in first 10^n digits after the decimal point in the expansion of Pi.

The programs for A228988, there is no canonical definition to state claims against.
-/

/-! ## A228988.P6662859960351054110

`xor(10^n, C(A006530(2*10^n)-n, 2))`
-/

namespace A228988.P6662859960351054110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (10 ^ n) (Nat.choose (A006530 (2 * 10 ^ n) - (n : ℤ)).toNat 2)

end

end A228988.P6662859960351054110

/-!
# A228990: Smallest missing number in first 10^n digits after the decimal point in expansion of golden ratio phi = (1+sqrt(5))/2.

The programs for A228990, there is no canonical definition to state claims against.
-/

/-! ## A228990.P13634662821340471071

`A327169(10^n)+10^n`
-/

namespace A228990.P13634662821340471071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327169 (10 ^ n) + (10 ^ n : ℤ)

end

end A228990.P13634662821340471071

/-!
# A228991: Primes p such that the p-th squarefree number is prime.

The programs for A228991, there is no canonical definition to state claims against.
-/

/-! ## A228991.P11723890221240754199

`p?[A071403(n+1)]`
-/

namespace A228991.P11723890221240754199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228991.P11723890221240754199

/-! ## A228991.P1785148195330952304

`p?[A112929(n+1)+1]`
-/

namespace A228991.P1785148195330952304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228991.P1785148195330952304

/-! ## A228991.P12915589468510535428

`p?[A112930(n+1)-1]`
-/

namespace A228991.P12915589468510535428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112930 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228991.P12915589468510535428

/-! ## A228991.P16894510115020481025

`filter[A130008(n), A378901(#)]`
-/

namespace A228991.P16894510115020481025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378901 (f1 j).toNat = 1) n)

end

end A228991.P16894510115020481025

/-! ## A228991.P7807311765806874450

`p?[A100112(A000040(n+1))]`
-/

namespace A228991.P7807311765806874450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228991.P7807311765806874450

/-! ## A228991.P5882039521401662899

`p?[A023443(A112930(n+1))]`
-/

namespace A228991.P5882039521401662899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A112930 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228991.P5882039521401662899

/-! ## A228991.P9129738783323348271

`p?[A107079(A045319(n+1))]`
-/

namespace A228991.P9129738783323348271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A045319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228991.P9129738783323348271

/-! ## A228991.P1433505967025882975

`record[A006530(A071403(n+3))]`
-/

namespace A228991.P1433505967025882975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071403 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228991.P1433505967025882975

/-! ## A228991.P4972877939217495777

`record[A020639(A071403(n+4))]`
-/

namespace A228991.P4972877939217495777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A071403 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228991.P4972877939217495777

/-! ## A228991.P3274244455656784981

`filter[A071403(n+1), A010051(#)]`
-/

namespace A228991.P3274244455656784981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A228991.P3274244455656784981

/-!
# A228992: Denominators of continued fraction transform of Pi.

The programs for A228992, there is no canonical definition to state claims against.
-/

/-! ## A228992.P2722430088088796889

`A256502(A228493(n+1))/2`
-/

namespace A228992.P2722430088088796889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256502 (A228493 (n + 1)).toNat : ℚ) / 2

end

end A228992.P2722430088088796889

/-! ## A228992.P5435597737089548428

`A358577(A000108(n))+A002517(n)`
-/

namespace A228992.P5435597737089548428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358577 (A000108 n).toNat + A002517 n

end

end A228992.P5435597737089548428

/-!
# A228994: Total sum of the 4th powers of lengths of ascending runs in all permutations of [n].

The programs for A228994, there is no canonical definition to state claims against.
-/

/-! ## A228994.P18282257698012865554

`A229001(n+6+∑[n+4])`
-/

namespace A228994.P18282257698012865554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (n + 6 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228994.P18282257698012865554

/-! ## A228994.P14208994999634309088

`A229001(A052905(n+2))*A304042(n)`
-/

namespace A228994.P14208994999634309088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A052905 (n + 2)).toNat * A304042 n

end

end A228994.P14208994999634309088

/-! ## A228994.P11765789737947700923

`A229001(A052905(n+2))/A054977(n)`
-/

namespace A228994.P11765789737947700923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229001 (A052905 (n + 2)).toNat : ℚ) / (A054977 n : ℚ)

end

end A228994.P11765789737947700923

/-! ## A228994.P14022532888570519479

`1-(A075439((3-n)²)-A229001(A052905(n+2)))`
-/

namespace A228994.P14022532888570519479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A075439 ((3 - (n : ℤ)) ^ 2).toNat - A229001 (A052905 (n + 2)).toNat)

end

end A228994.P14022532888570519479

/-! ## A228994.P13793236770149508421

`A229001(A052905(n+2))+A033909(A137397(n))`
-/

namespace A228994.P13793236770149508421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A052905 (n + 2)).toNat + A033909 (A137397 n).toNat

end

end A228994.P13793236770149508421

/-! ## A228994.P15011459963810908794

`A001222(A001097(n+1))*A229001(A052905(n+2))`
-/

namespace A228994.P15011459963810908794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001097 (n + 1)).toNat * A229001 (A052905 (n + 2)).toNat

end

end A228994.P15011459963810908794

/-! ## A228994.P7128782723893789763

`1-(A001222(A002145(n+1))-A229001(A052905(n+2)))`
-/

namespace A228994.P7128782723893789763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001222 (A002145 (n + 1)).toNat - A229001 (A052905 (n + 2)).toNat)

end

end A228994.P7128782723893789763

/-!
# A228995: Total sum of the 5th powers of lengths of ascending runs in all permutations of [n].

The programs for A228995, there is no canonical definition to state claims against.
-/

/-! ## A228995.P1796591586069499953

`A229001(A055999(n+3))`
-/

namespace A228995.P1796591586069499953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A055999 (n + 3)).toNat

end

end A228995.P1796591586069499953

/-! ## A228995.P13174709876855294037

`A229001(eq[5, A025581(n)])`
-/

namespace A228995.P13174709876855294037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228995.P13174709876855294037

/-! ## A228995.P2809394912298640160

`A229001(eq[6, A193739(n)])`
-/

namespace A228995.P2809394912298640160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228995.P2809394912298640160

/-! ## A228995.P7322791385095315163

`A229001(eq[11, A099375(n)])`
-/

namespace A228995.P7322791385095315163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228995.P7322791385095315163

/-! ## A228995.P8535787714976228610

`A229001(Δ[A026054(n+3)])`
-/

namespace A228995.P8535787714976228610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (f1 (n + 1) - f1 n).toNat

end

end A228995.P8535787714976228610

/-! ## A228995.P10104803973940102575

`A229001(eq[6, A004736(n+1)])`
-/

namespace A228995.P10104803973940102575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228995.P10104803973940102575

/-!
# A228996: Total sum of the 6th powers of lengths of ascending runs in all permutations of [n].

The programs for A228996, there is no canonical definition to state claims against.
-/

/-! ## A228996.P2289635210437121564

`A229001(eq[6, A025581(n)])`
-/

namespace A228996.P2289635210437121564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228996.P2289635210437121564

/-! ## A228996.P834607538821804183

`A229001(eq[7, A193739(n)])`
-/

namespace A228996.P834607538821804183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228996.P834607538821804183

/-! ## A228996.P12330285476604861960

`A229001(eq[13, A099375(n)])`
-/

namespace A228996.P12330285476604861960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228996.P12330285476604861960

/-! ## A228996.P2439116738075971051

`A229001(eq[64, A130321(n)])`
-/

namespace A228996.P2439116738075971051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228996.P2439116738075971051

/-! ## A228996.P9272775901420116885

`A229001(eq[7, A004736(n+1)])`
-/

namespace A228996.P9272775901420116885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228996.P9272775901420116885

/-! ## A228996.P15770872082264889393

`A229001(Δ[A026054(n+4)]-1)`
-/

namespace A228996.P15770872082264889393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (f1 (n + 1) - f1 n - 1).toNat

end

end A228996.P15770872082264889393

/-!
# A228997: Total sum of the 7th powers of lengths of ascending runs in all permutations of [n].

The programs for A228997, there is no canonical definition to state claims against.
-/

/-! ## A228997.P199750046272955304

`A229001(eq[7, A025581(n)])`
-/

namespace A228997.P199750046272955304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228997.P199750046272955304

/-! ## A228997.P2556517594499407434

`A229001(eq[8, A193739(n)])`
-/

namespace A228997.P2556517594499407434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228997.P2556517594499407434

/-! ## A228997.P10310764159385871095

`A229001(eq[15, A099375(n)])`
-/

namespace A228997.P10310764159385871095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228997.P10310764159385871095

/-! ## A228997.P6012546554926588655

`A229001(eq[5, A243070(n+1)])`
-/

namespace A228997.P6012546554926588655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228997.P6012546554926588655

/-! ## A228997.P9859027700956630242

`A229001(eq[8, A004736(n+1)])`
-/

namespace A228997.P9859027700956630242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228997.P9859027700956630242

/-!
# A228998: Total sum of the 8th powers of lengths of ascending runs in all permutations of [n].

The programs for A228998, there is no canonical definition to state claims against.
-/

/-! ## A228998.P16257694796555888335

`A229001(eq[3, A104975(n)])`
-/

namespace A228998.P16257694796555888335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228998.P16257694796555888335

/-! ## A228998.P15666724139716933819

`A229001(eq[8, A025581(n)])`
-/

namespace A228998.P15666724139716933819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228998.P15666724139716933819

/-! ## A228998.P1205691894267706020

`A229001(eq[17, A099375(n)])`
-/

namespace A228998.P1205691894267706020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228998.P1205691894267706020

/-! ## A228998.P13307142151727317403

`A229001(eq[9, A004736(n+1)])`
-/

namespace A228998.P13307142151727317403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228998.P13307142151727317403

/-! ## A228998.P14088642300647012942

`A229001(eq[9, A243070(n+1)])`
-/

namespace A228998.P14088642300647012942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228998.P14088642300647012942

/-!
# A228999: Total sum of the 9th powers of lengths of ascending runs in all permutations of [n].

The programs for A228999, there is no canonical definition to state claims against.
-/

/-! ## A228999.P17565306439875943282

`A229001(eq[8, A116598(n)])`
-/

namespace A228999.P17565306439875943282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228999.P17565306439875943282

/-! ## A228999.P10378846585331631677

`A229001(eq[9, A025581(n)])`
-/

namespace A228999.P10378846585331631677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228999.P10378846585331631677

/-! ## A228999.P17888803027155822957

`A229001(eq[10, A193739(n)])`
-/

namespace A228999.P17888803027155822957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228999.P17888803027155822957

/-! ## A228999.P14019412968050442272

`A229001(A000217(n+10)-10)`
-/

namespace A228999.P14019412968050442272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A000217 (n + 10) - 10).toNat

end

end A228999.P14019412968050442272

/-! ## A228999.P17764858529606875710

`A229001(eq[10, A004736(n+1)])`
-/

namespace A228999.P17764858529606875710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228999.P17764858529606875710

