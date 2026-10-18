import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A275400: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275400, there is no canonical definition to state claims against.
-/

/-! ## A275400.P692731625052183389

`A275401(A055999(n+4))`
-/

namespace A275400.P692731625052183389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A055999 (n + 4)).toNat

end

end A275400.P692731625052183389

/-! ## A275400.P10458218385323803458

`A275401(eq[4, A219347(n)])`
-/

namespace A275400.P10458218385323803458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275400.P10458218385323803458

/-! ## A275400.P16046851450838970117

`A275401(eq[6, A193592(n)])`
-/

namespace A275400.P16046851450838970117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275400.P16046851450838970117

/-! ## A275400.P2105363725720189789

`A275401(A000217(n+7)-6)`
-/

namespace A275400.P2105363725720189789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000217 (n + 7) - 6).toNat

end

end A275400.P2105363725720189789

/-! ## A275400.P16769774765053588558

`A275401(eq[10, A185782(n+1)])`
-/

namespace A275400.P16769774765053588558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275400.P16769774765053588558

/-!
# A275401: T(n,k)=Number of nXk 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275401, there is no canonical definition to state claims against.
-/

/-! ## A275401.P1636866206748514562

`or(A275504(n+1), A281116(A229188(n)))`
-/

namespace A275401.P1636866206748514562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275504 (n + 1)) (A281116 (A229188 n).toNat)

end

end A275401.P1636866206748514562

/-! ## A275401.P18210385418426752950

`A275504(n+1)+A004531(A225809(n+1))`
-/

namespace A275401.P18210385418426752950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (n + 1) + A004531 (A225809 (n + 1)).toNat

end

end A275401.P18210385418426752950

/-! ## A275401.P17637116760011194851

`A275504(n+1)+A205295(A191670(n+1))`
-/

namespace A275401.P17637116760011194851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (n + 1) + A205295 (A191670 (n + 1)).toNat

end

end A275401.P17637116760011194851

/-! ## A275401.P11959144872529895288

`or(A033718(A112527(n+1)), A275504(n+1))`
-/

namespace A275401.P11959144872529895288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033718 (A112527 (n + 1)).toNat) (A275504 (n + 1))

end

end A275401.P11959144872529895288

/-! ## A275401.P5530796541624573419

`A275504(n+1)+A200505(A200505(3*n+1))`
-/

namespace A275401.P5530796541624573419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (n + 1) + A200505 (A200505 (3 * n + 1)).toNat

end

end A275401.P5530796541624573419

/-!
# A275402: Number of 3 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275402, the canonical program `A275402.P12122360925570497905` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275402 has offset 1).

The definition of A275402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275402.P18399131429619721171

`ogf((3+4x+2x^2)/(1-4x-6x^2-4x^3))`
-/

namespace A275402.P18399131429619721171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 2] [1, -4, -6, -4] n

end

end A275402.P18399131429619721171

namespace A275402

/-- `ogf((3+4x+2x^2)/(1-4x-6x^2-4x^3))` -/
def P18399131429619721171.Spec : Prop :=
  ∀ n, P18399131429619721171.a n = A275402 (n + 1)

end A275402

/-! ## A275402.P12122360925570497905

`4*a(n-1)+6*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=16, a(2)=84`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A275402

/-- `4*a(n-1)+6*a(n-2)+4*a(n-3)` -/
def P12122360925570497905.Spec : Prop :=
  ∀ n, (P12122360925570497905.a n : ℤ) = A275402 (n + 1)

theorem P12122360925570497905.correct : P12122360925570497905.Spec := by
  intro n
  simp only [A275402, Nat.add_sub_cancel]

end A275402

/-! ## A275402.P7200633129059397545

`A275401(∑[n+2]+4)`
-/

namespace A275402.P7200633129059397545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A275402.P7200633129059397545

namespace A275402

/-- `A275401(∑[n+2]+4)` -/
def P7200633129059397545.Spec : Prop :=
  ∀ n, P7200633129059397545.a n = A275402 (n + 1)

end A275402

/-! ## A275402.P1351461705691454833

`A275401(A167614(n+1))+A025443(n)`
-/

namespace A275402.P1351461705691454833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A167614 (n + 1)).toNat + A025443 n

end

end A275402.P1351461705691454833

namespace A275402

/-- `A275401(A167614(n+1))+A025443(n)` -/
def P1351461705691454833.Spec : Prop :=
  ∀ n, P1351461705691454833.a n = A275402 (n + 1)

end A275402

/-! ## A275402.P8415650583101732096

`A275401(A167614(n+1))+A025469(n)`
-/

namespace A275402.P8415650583101732096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A167614 (n + 1)).toNat + A025469 n

end

end A275402.P8415650583101732096

namespace A275402

/-- `A275401(A167614(n+1))+A025469(n)` -/
def P8415650583101732096.Spec : Prop :=
  ∀ n, P8415650583101732096.a n = A275402 (n + 1)

end A275402

/-!
# A275403: Number of 4_X_n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275403, there is no canonical definition to state claims against.
-/

/-! ## A275403.P13287707102408174522

`A275401(A141214(n)+7)`
-/

namespace A275403.P13287707102408174522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A141214 n + 7).toNat

end

end A275403.P13287707102408174522

/-! ## A275403.P1423818049328285288

`A275401(A052905(n)+9)`
-/

namespace A275403.P1423818049328285288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A052905 n + 9).toNat

end

end A275403.P1423818049328285288

/-! ## A275403.P4195459987761602673

`A275401(A055999(n)+10)`
-/

namespace A275403.P4195459987761602673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A055999 n + 10).toNat

end

end A275403.P4195459987761602673

/-! ## A275403.P15237555840789606878

`A275401(A167614(n+2)+1)`
-/

namespace A275403.P15237555840789606878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A167614 (n + 2) + 1).toNat

end

end A275403.P15237555840789606878

/-! ## A275403.P14605533031746423011

`A275401(Δ[A023545(n+1)-n²])`
-/

namespace A275403.P14605533031746423011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (f1 (n + 1) - f1 n).toNat

end

end A275403.P14605533031746423011

/-!
# A275404: Number of 5 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275404, there is no canonical definition to state claims against.
-/

/-! ## A275404.P5525822327331932143

`A275401(A167499(n+3))`
-/

namespace A275404.P5525822327331932143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A167499 (n + 3)).toNat

end

end A275404.P5525822327331932143

/-! ## A275404.P9990321091962520924

`A275401(A056000(n)+15)`
-/

namespace A275404.P9990321091962520924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A056000 n + 15).toNat

end

end A275404.P9990321091962520924

/-! ## A275404.P4120582436316836819

`A275401(∑[A020705(n)]+11)`
-/

namespace A275404.P4120582436316836819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A275404.P4120582436316836819

/-! ## A275404.P11444378008135856445

`A275401(A000217(n+4)+5)`
-/

namespace A275404.P11444378008135856445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000217 (n + 4) + 5).toNat

end

end A275404.P11444378008135856445

/-! ## A275404.P8597898564403188918

`A275401(A141214(n+1)+8)`
-/

namespace A275404.P8597898564403188918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A141214 (n + 1) + 8).toNat

end

end A275404.P8597898564403188918

/-!
# A275405: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275405, there is no canonical definition to state claims against.
-/

/-! ## A275405.P6770211720435216571

`A275401(∑[A020710(n)]+16)`
-/

namespace A275405.P6770211720435216571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A275405.P6770211720435216571

/-! ## A275405.P15727134136863174496

`A275401(A167499(n+4)+1)`
-/

namespace A275405.P15727134136863174496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A167499 (n + 4) + 1).toNat

end

end A275405.P15727134136863174496

/-! ## A275405.P7078882116736006244

`A275401(A000217(n+5)+6)`
-/

namespace A275405.P7078882116736006244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000217 (n + 5) + 6).toNat

end

end A275405.P7078882116736006244

/-! ## A275405.P12954820804290345075

`A275401(A141214(n+2)+9)`
-/

namespace A275405.P12954820804290345075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A141214 (n + 2) + 9).toNat

end

end A275405.P12954820804290345075

/-! ## A275405.P8411535759246750322

`A275401(A063660(A167499(n+4)))`
-/

namespace A275405.P8411535759246750322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A063660 (A167499 (n + 4)).toNat).toNat

end

end A275405.P8411535759246750322

/-!
# A275406: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,1) and new values introduced in order 0..2.

The programs for A275406, there is no canonical definition to state claims against.
-/

/-! ## A275406.P13640678500328242211

`A275401(C(n+8, 2)-n)`
-/

namespace A275406.P13640678500328242211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (Nat.choose (n + 8) 2 - n)

end

end A275406.P13640678500328242211

/-! ## A275406.P12122730095934225365

`A275401(A167499(n+5)+2)`
-/

namespace A275406.P12122730095934225365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A167499 (n + 5) + 2).toNat

end

end A275406.P12122730095934225365

/-! ## A275406.P8087772692224563324

`A275401(A167614(n+5)+4)`
-/

namespace A275406.P8087772692224563324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A167614 (n + 5) + 4).toNat

end

end A275406.P8087772692224563324

/-! ## A275406.P890625107336670787

`A275401(A000217(n+6)+7)`
-/

namespace A275406.P890625107336670787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000217 (n + 6) + 7).toNat

end

end A275406.P890625107336670787

/-! ## A275406.P6118502118469399171

`A275401(A000124(n+7)-(n+1))`
-/

namespace A275406.P6118502118469399171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275401 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A275406.P6118502118469399171

/-!
# A275407: Let e_n(k)>=0 denote the exponent of prime(k) in the prime power representation of n. The sequence lists 1 followed by numbers n for which e_n(2*i-1)=e_n(2*i), for all i>=1.

The programs for A275407, there is no canonical definition to state claims against.
-/

/-! ## A275407.P13968241396842084328

`record[gcd(n+1, A061898(n+1))]`
-/

namespace A275407.P13968241396842084328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A061898 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275407.P13968241396842084328

/-! ## A275407.P549527593602585257

`eq[A000027(n+1), A061898(n+1)]+1`
-/

namespace A275407.P549527593602585257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275407.P549527593602585257

/-! ## A275407.P15690037505711554420

`eq[n+1, A061898(n+1)]+A001222(A002313(n+1))`
-/

namespace A275407.P15690037505711554420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A001222 (A002313 (n + 1)).toNat

end

end A275407.P15690037505711554420

/-! ## A275407.P5848057608243895618

`eq[n, A061898(A028310(n))]`
-/

namespace A275407.P5848057608243895618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275407.P5848057608243895618

/-! ## A275407.P790768894272181727

`record[gcd(A061898(n+1), A131738(n))]`
-/

namespace A275407.P790768894272181727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061898 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275407.P790768894272181727

/-!
# A275410: Numbers k such that (493*10^k - 7)/9 is prime.

The programs for A275410, there is no canonical definition to state claims against.
-/

/-! ## A275410.P8915834549570685943

`A282429(∑[A007318(n+2)])`
-/

namespace A275410.P8915834549570685943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282429 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275410.P8915834549570685943

/-! ## A275410.P9938640820267261362

`A282429(eq[A002326(n), A060681(2*n+1)])`
-/

namespace A275410.P9938640820267261362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282429 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A275410.P9938640820267261362

/-! ## A275410.P11928044815491005776

`A282429(lt[A328311(2*n+1), A328311(2*(n+1))])`
-/

namespace A275410.P11928044815491005776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282429 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A275410.P11928044815491005776

/-!
# A275413: a(0)=0 and a(n) is the smallest available integer not yet present in the sequence that starts with the last digit of a(n-1) augmented by 1.

The programs for A275413, there is no canonical definition to state claims against.
-/

/-! ## A275413.P5939404721688931576

`A261370(n+1)-A001221(A000043(n+1))`
-/

namespace A275413.P5939404721688931576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261370 (n + 1) - A001221 (A000043 (n + 1)).toNat

end

end A275413.P5939404721688931576

/-! ## A275413.P12336035221931152780

`A261370(n+1)-A353362(A024770(2*n+1))`
-/

namespace A275413.P12336035221931152780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261370 (n + 1) - A353362 (A024770 (2 * n + 1)).toNat

end

end A275413.P12336035221931152780

/-! ## A275413.P5807740010912458509

`A261370(n+1)-A353362(A062353(2*n+1))`
-/

namespace A275413.P5807740010912458509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261370 (n + 1) - A353362 (A062353 (2 * n + 1)).toNat

end

end A275413.P5807740010912458509

/-! ## A275413.P6276794199023546340

`A261370(n+1)*A292589(A109981(3*n+4))-1`
-/

namespace A275413.P6276794199023546340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261370 (n + 1) * A292589 (A109981 (3 * n + 4)).toNat - 1

end

end A275413.P6276794199023546340

/-! ## A275413.P15371736368537395317

`A261370(n+1)-A317934(A306968(n+1))`
-/

namespace A275413.P15371736368537395317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261370 (n + 1) - A317934 (A306968 (n + 1)).toNat

end

end A275413.P15371736368537395317

/-!
# A275416: Triangle read by rows: T(n,k) is the number of multisets of k odd numbers with a cap of the total sum set to n.

The programs for A275416, there is no canonical definition to state claims against.
-/

/-! ## A275416.P12027815033924793303

`A306210(n+1)-A037800(A189111(n+1))`
-/

namespace A275416.P12027815033924793303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306210 (n + 1) - A037800 (A189111 (n + 1)).toNat

end

end A275416.P12027815033924793303

/-! ## A275416.P11041507655887321508

`A360677(4*A089353(n+1))`
-/

namespace A275416.P11041507655887321508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360677 (4 * A089353 (n + 1)).toNat

end

end A275416.P11041507655887321508

/-! ## A275416.P1973146283670843522

`A306210(n+1)+A016389(A022166(n))`
-/

namespace A275416.P1973146283670843522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306210 (n + 1) + A016389 (A022166 n).toNat

end

end A275416.P1973146283670843522

/-! ## A275416.P15268772239725462991

`A306210(n+1)-A007814(A157156(n))`
-/

namespace A275416.P15268772239725462991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306210 (n + 1) - A007814 (A157156 n).toNat

end

end A275416.P15268772239725462991

/-! ## A275416.P3242418524389173519

`A306210(n+1)-A304572(A022169(n))`
-/

namespace A275416.P3242418524389173519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306210 (n + 1) - A304572 (A022169 n).toNat

end

end A275416.P3242418524389173519

/-!
# A275417: a(n) = (A259756(n)-1)/8.

The programs for A275417, there is no canonical definition to state claims against.
-/

/-! ## A275417.P5375821281650774577

`(A259756(n+1)-1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275417.P5375821281650774577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259756 (n + 1) - 1 : ℚ) / 8

end

end A275417.P5375821281650774577

/-! ## A275417.P13498242662348745051

`floor(A259756(n+1)/8)`
-/

namespace A275417.P13498242662348745051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259756 (n + 1) : ℚ) / 8⌋

end

end A275417.P13498242662348745051

/-! ## A275417.P14992248799623859821

`A007318(∑[n])*round(A259756(n+1)/8)`
-/

namespace A275417.P14992248799623859821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A259756 (n + 1) : ℚ) / 8)

end

end A275417.P14992248799623859821

/-! ## A275417.P11112513642564726445

`A000041(C(n, 36))*round(A259756(n+1)/8)`
-/

namespace A275417.P11112513642564726445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 36) * SequenceMachineLib.roundAway ((A259756 (n + 1) : ℚ) / 8)

end

end A275417.P11112513642564726445

/-! ## A275417.P8270616153860311183

`round(A259756(n+1)/8)%A000041(n+50)`
-/

namespace A275417.P8270616153860311183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A259756 (n + 1) : ℚ) / 8)) (A000041 (n + 50))

end

end A275417.P8270616153860311183

/-!
# A275418: Numbers n such that n - 1 has exactly as many odd divisors as n + 1.

The programs for A275418, the canonical program `A275418.P17647390156546014803` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275418 has offset 1).

The definition of A275418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275418.P17647390156546014803

`eq[A054844(n+3), A054844(n+1)]+2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A275418

/-- `eq[A054844(n+3), A054844(n+1)]+2` -/
def P17647390156546014803.Spec : Prop :=
  ∀ n, (P17647390156546014803.a n : ℤ) = A275418 (n + 1)

theorem P17647390156546014803.correct : P17647390156546014803.Spec := by
  intro n
  simp only [A275418, Nat.add_sub_cancel]

end A275418

/-! ## A275418.P17708467909278068602

`eq[A129574(n+2), A129574(n+1)]+1`
-/

namespace A275418.P17708467909278068602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129574 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275418.P17708467909278068602

namespace A275418

/-- `eq[A129574(n+2), A129574(n+1)]+1` -/
def P17708467909278068602.Spec : Prop :=
  ∀ n, (P17708467909278068602.a n : ℤ) = A275418 (n + 1)

end A275418

/-! ## A275418.P6200869567214394638

`eq[A001227(n+1), A001227(n+3)]+2`
-/

namespace A275418.P6200869567214394638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A275418.P6200869567214394638

namespace A275418

/-- `eq[A001227(n+1), A001227(n+3)]+2` -/
def P6200869567214394638.Spec : Prop :=
  ∀ n, (P6200869567214394638.a n : ℤ) = A275418 (n + 1)

end A275418

/-! ## A275418.P2223033455217789271

`eq[A069283(n+1), A069283(n+3)]+2`
-/

namespace A275418.P2223033455217789271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A275418.P2223033455217789271

namespace A275418

/-- `eq[A069283(n+1), A069283(n+3)]+2` -/
def P2223033455217789271.Spec : Prop :=
  ∀ n, (P2223033455217789271.a n : ℤ) = A275418 (n + 1)

end A275418

/-! ## A275418.P17569391068839602226

`eq[A299480(2*n+1), A299480(2*n+5)]+2`
-/

namespace A275418.P17569391068839602226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A275418.P17569391068839602226

namespace A275418

/-- `eq[A299480(2*n+1), A299480(2*n+5)]+2` -/
def P17569391068839602226.Spec : Prop :=
  ∀ n, (P17569391068839602226.a n : ℤ) = A275418 (n + 1)

end A275418

/-! ## A275418.P5363942937306696857

`eq[A001227(n+1), A091954(A092535(n))]`
-/

namespace A275418.P5363942937306696857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A092535 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275418.P5363942937306696857

namespace A275418

/-- `eq[A001227(n+1), A091954(A092535(n))]` -/
def P5363942937306696857.Spec : Prop :=
  ∀ n, (P5363942937306696857.a n : ℤ) = A275418 (n + 1)

end A275418

/-! ## A275418.P5901959512427129965

`eq[A069283(n+1)+1, A091954(A092535(n))]`
-/

namespace A275418.P5901959512427129965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A092535 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275418.P5901959512427129965

namespace A275418

/-- `eq[A069283(n+1)+1, A091954(A092535(n))]` -/
def P5901959512427129965.Spec : Prop :=
  ∀ n, (P5901959512427129965.a n : ℤ) = A275418 (n + 1)

end A275418

/-! ## A275418.P17649672391559229879

`eq[A091954(2*(n+1)), A091954(A092535(n))]`
-/

namespace A275418.P17649672391559229879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A092535 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275418.P17649672391559229879

namespace A275418

/-- `eq[A091954(2*(n+1)), A091954(A092535(n))]` -/
def P17649672391559229879.Spec : Prop :=
  ∀ n, (P17649672391559229879.a n : ℤ) = A275418 (n + 1)

end A275418

/-!
# A275420: Triangle read by rows: T(n,k) = number of graphs with n nodes and k connected regular components.

The programs for A275420, there is no canonical definition to state claims against.
-/

/-! ## A275420.P6142920376804527122

`A096198(A112705(n+1)+1)`
-/

namespace A275420.P6142920376804527122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096198 (A112705 (n + 1) + 1).toNat

end

end A275420.P6142920376804527122

/-! ## A275420.P9141440191321300197

`A353865(A291117(n)+A288426(n+1))`
-/

namespace A275420.P9141440191321300197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353865 (A291117 n + A288426 (n + 1)).toNat

end

end A275420.P9141440191321300197

/-! ## A275420.P16549066336649643907

`A358333(A117396(n+1))`
-/

namespace A275420.P16549066336649643907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358333 (A117396 (n + 1)).toNat

end

end A275420.P16549066336649643907

/-! ## A275420.P12194034638321556957

`A108461(A033185(n+1)²)`
-/

namespace A275420.P12194034638321556957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108461 (A033185 (n + 1) ^ 2).toNat

end

end A275420.P12194034638321556957

/-! ## A275420.P1338078390713454413

`A108461(A217781(n+1)²)`
-/

namespace A275420.P1338078390713454413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108461 (A217781 (n + 1) ^ 2).toNat

end

end A275420.P1338078390713454413

/-!
# A275421: Triangle read by rows: T(n,k) = number of graphs with n edges and k connected components.

The programs for A275421, there is no canonical definition to state claims against.
-/

/-! ## A275421.P15360320691925233589

`A120677(A144351(n+1))`
-/

namespace A275421.P15360320691925233589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120677 (A144351 (n + 1)).toNat

end

end A275421.P15360320691925233589

/-! ## A275421.P9854637332550690489

`A357714(A350772(n+1))`
-/

namespace A275421.P9854637332550690489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357714 (A350772 (n + 1)).toNat

end

end A275421.P9854637332550690489

/-! ## A275421.P12956642139091998883

`A004737(or(4, A226780(n)))`
-/

namespace A275421.P12956642139091998883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (Int.lor 4 (A226780 n)).toNat

end

end A275421.P12956642139091998883

/-!
# A275422: Number A(n,k) of set partitions of [n] such that k is a multiple of each block size; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A275422, there is no canonical definition to state claims against.
-/

/-! ## A275422.P13447360885894817537

`gcd(A050315(A001590(n)), A240608(n))`
-/

namespace A275422.P13447360885894817537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050315 (A001590 n).toNat) (A240608 n)

end

end A275422.P13447360885894817537

/-! ## A275422.P14903550361516287230

`gcd(A057567(A028304(n)), A292085(n+1))`
-/

namespace A275422.P14903550361516287230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057567 (A028304 n).toNat) (A292085 (n + 1))

end

end A275422.P14903550361516287230

/-! ## A275422.P11556072110720806384

`A102705(gcd(A110855(n), A188181(n+1)))`
-/

namespace A275422.P11556072110720806384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (Int.gcd (A110855 n) (A188181 (n + 1)))

end

end A275422.P11556072110720806384

/-!
# A275423: Number of set partitions of [n] such that five is a multiple of each block size.

The programs for A275423, there is no canonical definition to state claims against.
-/

/-! ## A275423.P15051624507612005595

`A275422(A055999(n+3))`
-/

namespace A275423.P15051624507612005595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A055999 (n + 3)).toNat

end

end A275423.P15051624507612005595

/-! ## A275423.P10453880209429596306

`A275422(Δ[A023545(n+2)]-2)`
-/

namespace A275423.P10453880209429596306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (f1 (n + 1) - f1 n - 2).toNat

end

end A275423.P10453880209429596306

/-! ## A275423.P13112484961780236619

`A275422(Δ[A055831(n+5)]-1)`
-/

namespace A275423.P13112484961780236619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (f1 (n + 1) - f1 n - 1).toNat

end

end A275423.P13112484961780236619

/-! ## A275423.P5130217656609734274

`A275422(A046691(n+3)+n+4)`
-/

namespace A275423.P5130217656609734274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A046691 (n + 3) + (n + 4 : ℤ)).toNat

end

end A275423.P5130217656609734274

/-! ## A275423.P16166353095965364184

`A275422(A007401(Δ[A023545(n+1)]))`
-/

namespace A275423.P16166353095965364184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A007401 (f1 (n + 1) - f1 n).toNat).toNat

end

end A275423.P16166353095965364184

/-! ## A275423.P14151925362604819362

`A275422(A166136(n+3)+A004273(n))`
-/

namespace A275423.P14151925362604819362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A166136 (n + 3) + A004273 n).toNat

end

end A275423.P14151925362604819362

/-! ## A275423.P6472500663900797356

`A275422(A167614(n+3)+A005843(n+1))`
-/

namespace A275423.P6472500663900797356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A167614 (n + 3) + A005843 (n + 1)).toNat

end

end A275423.P6472500663900797356

/-! ## A275423.P2987378398097263990

`A275422(A253886(2*n+5)+A000124(n))`
-/

namespace A275423.P2987378398097263990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A253886 (2 * n + 5) + A000124 n).toNat

end

end A275423.P2987378398097263990

/-!
# A275424: Number of set partitions of [n] such that six is a multiple of each block size.

The programs for A275424, there is no canonical definition to state claims against.
-/

/-! ## A275424.P12749543434400142193

`A275422(eq[6, A025581(n)])`
-/

namespace A275424.P12749543434400142193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275424.P12749543434400142193

/-! ## A275424.P16032267810948871276

`A275422(A000217(n+7)-7)`
-/

namespace A275424.P16032267810948871276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A000217 (n + 7) - 7).toNat

end

end A275424.P16032267810948871276

/-! ## A275424.P9235847231545249403

`A275422(eq[7, A004736(n+1)])`
-/

namespace A275424.P9235847231545249403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275424.P9235847231545249403

/-! ## A275424.P15509405561013226049

`A275422(A166136(n+4)+A005843(n))`
-/

namespace A275424.P15509405561013226049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A166136 (n + 4) + A005843 n).toNat

end

end A275424.P15509405561013226049

/-! ## A275424.P16327741964064957132

`A275422(A133263(n+1)+A008588(n+3))`
-/

namespace A275424.P16327741964064957132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A133263 (n + 1) + A008588 (n + 3)).toNat

end

end A275424.P16327741964064957132

/-! ## A275424.P15146330563903518636

`A275422(A167614(n+2)+A008586(n+3))`
-/

namespace A275424.P15146330563903518636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A167614 (n + 2) + A008586 (n + 3)).toNat

end

end A275424.P15146330563903518636

/-! ## A275424.P16029944475875797857

`A275422(A008586(n+4)+A000096(n+2))`
-/

namespace A275424.P16029944475875797857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A008586 (n + 4) + A000096 (n + 2)).toNat

end

end A275424.P16029944475875797857

/-!
# A275425: Number of set partitions of [n] such that seven is a multiple of each block size.

The programs for A275425, there is no canonical definition to state claims against.
-/

/-! ## A275425.P11283007622158565644

`A275422(eq[7, A025581(n)])`
-/

namespace A275425.P11283007622158565644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275425.P11283007622158565644

/-! ## A275425.P14823941853874428340

`A275422(A000217(n+8)-8)`
-/

namespace A275425.P14823941853874428340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A000217 (n + 8) - 8).toNat

end

end A275425.P14823941853874428340

/-! ## A275425.P12492851233230964437

`A275422(2*n+A167499(n+5)+2)`
-/

namespace A275425.P12492851233230964437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 ((2 * n : ℤ) + (A167499 (n + 5) + 2)).toNat

end

end A275425.P12492851233230964437

/-! ## A275425.P12001677011202921064

`A275422(A000124(n+8)-8-A262681(n))`
-/

namespace A275425.P12001677011202921064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A000124 (n + 8) - 8 - A262681 n).toNat

end

end A275425.P12001677011202921064

/-! ## A275425.P9032996846284464060

`A145457(n)%A145514(n)+1`
-/

namespace A275425.P9032996846284464060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145457 n) (A145514 n) + 1

end

end A275425.P9032996846284464060

/-!
# A275426: Number of set partitions of [n] such that eight is a multiple of each block size.

The programs for A275426, there is no canonical definition to state claims against.
-/

/-! ## A275426.P4132634981375985049

`A275422(eq[7, A116598(n)])`
-/

namespace A275426.P4132634981375985049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275426.P4132634981375985049

/-! ## A275426.P11210134897959713994

`A275422(eq[8, A025581(n)])`
-/

namespace A275426.P11210134897959713994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275426.P11210134897959713994

/-! ## A275426.P6660363298575756052

`A275422(A155212(n+5)-1)`
-/

namespace A275426.P6660363298575756052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A155212 (n + 5) - 1).toNat

end

end A275426.P6660363298575756052

/-! ## A275426.P11935466598623623750

`A275422(A052905(n+6)-4)`
-/

namespace A275426.P11935466598623623750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A052905 (n + 6) - 4).toNat

end

end A275426.P11935466598623623750

/-! ## A275426.P18085212726867185594

`A275422(A046691(n+7)-5)`
-/

namespace A275426.P18085212726867185594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A046691 (n + 7) - 5).toNat

end

end A275426.P18085212726867185594

/-! ## A275426.P9067468198401865775

`A275422(A000096(n+8)-8)`
-/

namespace A275426.P9067468198401865775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A000096 (n + 8) - 8).toNat

end

end A275426.P9067468198401865775

/-! ## A275426.P9198661856624978057

`A275422(A000217(n+9)-9)`
-/

namespace A275426.P9198661856624978057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A000217 (n + 9) - 9).toNat

end

end A275426.P9198661856624978057

/-! ## A275426.P7962483344920819550

`A275422(A000124(n+8)+n-1)`
-/

namespace A275426.P7962483344920819550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A275426.P7962483344920819550

/-!
# A275427: Number of set partitions of [n] such that nine is a multiple of each block size.

The programs for A275427, there is no canonical definition to state claims against.
-/

/-! ## A275427.P11961071779185620271

`A275422(A055999(n+7)-4)`
-/

namespace A275427.P11961071779185620271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A055999 (n + 7) - 4).toNat

end

end A275427.P11961071779185620271

/-! ## A275427.P15044110853527655728

`A275422(A000217(n+10)-10)`
-/

namespace A275427.P15044110853527655728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A000217 (n + 10) - 10).toNat

end

end A275427.P15044110853527655728

/-! ## A275427.P4565509205739490626

`A275422(A161680(n+11)-10)`
-/

namespace A275427.P4565509205739490626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A161680 (n + 11) - 10).toNat

end

end A275427.P4565509205739490626

/-! ## A275427.P14575537554898357583

`A275422(A000124(n+9)+n-1)`
-/

namespace A275427.P14575537554898357583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A000124 (n + 9) + ((n : ℤ) - 1)).toNat

end

end A275427.P14575537554898357583

/-! ## A275427.P13141189605785480955

`A275422(A166136(n+7)+A004273(n+2))`
-/

namespace A275427.P13141189605785480955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A166136 (n + 7) + A004273 (n + 2)).toNat

end

end A275427.P13141189605785480955

/-!
# A275428: Number of set partitions of [n] such that ten is a multiple of each block size.

The programs for A275428, there is no canonical definition to state claims against.
-/

/-! ## A275428.P7371608316592245612

`A039708(A148333(n))`
-/

namespace A275428.P7371608316592245612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A148333 n).toNat

end

end A275428.P7371608316592245612

/-! ## A275428.P15338242974518486005

`A001462(A094520(n!))`
-/

namespace A275428.P15338242974518486005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A094520 (Nat.factorial n)).toNat

end

end A275428.P15338242974518486005

/-! ## A275428.P15122610144245381326

`A001462(A286924(n!))`
-/

namespace A275428.P15122610144245381326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A286924 (Nat.factorial n)).toNat

end

end A275428.P15122610144245381326

/-!
# A275429: Number of set partitions of [n] such that n is a multiple of each block size.

The programs for A275429, there is no canonical definition to state claims against.
-/

/-! ## A275429.P3611822045757343791

`A275422(∑[4*n])`
-/

namespace A275429.P3611822045757343791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275429.P3611822045757343791

/-! ## A275429.P13698789095517463382

`A275422(A046092(n))^C(2, C(2, n²))`
-/

namespace A275429.P13698789095517463382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A046092 n).toNat ^ Nat.choose 2 (Nat.choose 2 (n ^ 2))

end

end A275429.P13698789095517463382

/-! ## A275429.P2072767426816603240

`A275422(A046092(n))/A007318(∑[n+1])`
-/

namespace A275429.P2072767426816603240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275422 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A275429.P2072767426816603240

/-! ## A275429.P5125076397486903639

`A275422(A046092(n))+A008683(4*(n+1))`
-/

namespace A275429.P5125076397486903639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A275429.P5125076397486903639

/-! ## A275429.P8173335530421270016

`A275422(A046092(n))^A000041(C(2, n+1))`
-/

namespace A275429.P8173335530421270016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275422 (A046092 n).toNat : ℚ) ^ (A000041 (Nat.choose 2 (n + 1)) : ℤ)

end

end A275429.P8173335530421270016

/-!
# A275431: Triangle read by rows: T(n,k) = number of ways to insert n pairs of parentheses in k words.

The programs for A275431, there is no canonical definition to state claims against.
-/

/-! ## A275431.P12420445304361032958

`A060775((A060839(n+2)+1)*A134146(n+1))`
-/

namespace A275431.P12420445304361032958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 ((A060839 (n + 2) + 1) * A134146 (n + 1)).toNat

end

end A275431.P12420445304361032958

/-! ## A275431.P14054912778928978762

`A193804(A008299(n+2))+A047848(n)`
-/

namespace A275431.P14054912778928978762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193804 (A008299 (n + 2)).toNat + A047848 n

end

end A275431.P14054912778928978762

/-! ## A275431.P13804987808015562152

`ceil(A094275(A188416(n+1))/A193588(n))`
-/

namespace A275431.P13804987808015562152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094275 (A188416 (n + 1)).toNat : ℚ) / (A193588 n : ℚ)⌉

end

end A275431.P13804987808015562152

/-! ## A275431.P13612573022855060176

`A131818(C(A134146(n+1), A304972(n+1)))`
-/

namespace A275431.P13612573022855060176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (Nat.choose (A134146 (n + 1)).toNat (A304972 (n + 1)).toNat)

end

end A275431.P13612573022855060176

/-!
# A275434: Sum of the degrees of asymmetry of all compositions of n.

The programs for A275434, the canonical program `A275434.P2846741041430882677` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275434 has offset 0).

The definition of A275434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275434.P7105859837822252036

`ogf((2x^3-2x^4)/(1-3x+4x^3))`
-/

namespace A275434.P7105859837822252036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2, -2] [1, -3, 0, 4] n

end

end A275434.P7105859837822252036

namespace A275434

/-- `ogf((2x^3-2x^4)/(1-3x+4x^3))` -/
def P7105859837822252036.Spec : Prop :=
  ∀ n, P7105859837822252036.a n = A275434 n

end A275434

/-! ## A275434.P2846741041430882677

`3*a(n-1)-4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A275434

/-- `3*a(n-1)-4*a(n-3)` -/
def P2846741041430882677.Spec : Prop :=
  ∀ n, P2846741041430882677.a n = A275434 n

theorem P2846741041430882677.correct : P2846741041430882677.Spec := by
  intro n
  simp only [A275434]

end A275434

/-! ## A275434.P10072027348546736636

`abs(floor((n+2)*2^(n-2))%∑[ceil((n+3)*(-2)^(n-2))])`
-/

namespace A275434.P10072027348546736636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ⌊(n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A275434.P10072027348546736636

namespace A275434

/-- `abs(floor((n+2)*2^(n-2))%∑[ceil((n+3)*(-2)^(n-2))])` -/
def P10072027348546736636.Spec : Prop :=
  ∀ n, P10072027348546736636.a n = A275434 n

end A275434

/-! ## A275434.P13942695722354225096

`abs(ceil((n+2)*(-2)^(n-2)))-abs(∑[ceil((n+3)*(-2)^(n-2))])`
-/

namespace A275434.P13942695722354225096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n + 2 : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉| - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A275434.P13942695722354225096

namespace A275434

/-- `abs(ceil((n+2)*(-2)^(n-2)))-abs(∑[ceil((n+3)*(-2)^(n-2))])` -/
def P13942695722354225096.Spec : Prop :=
  ∀ n, P13942695722354225096.a n = A275434 n

end A275434

/-! ## A275434.P8117614759754109464

`A087447(n)%A084219(n)`
-/

namespace A275434.P8117614759754109464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087447 n) (A084219 n)

end

end A275434.P8117614759754109464

namespace A275434

/-- `A087447(n)%A084219(n)` -/
def P8117614759754109464.Spec : Prop :=
  ∀ n, P8117614759754109464.a n = A275434 n

end A275434

/-! ## A275434.P13788491172849515961

`A129953(n)%A084219(n)`
-/

namespace A275434.P13788491172849515961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129953 n) (A084219 n)

end

end A275434.P13788491172849515961

namespace A275434

/-- `A129953(n)%A084219(n)` -/
def P13788491172849515961.Spec : Prop :=
  ∀ n, P13788491172849515961.a n = A275434 n

end A275434

/-! ## A275434.P1495057231532248887

`Δ[ceil(n*2^(n-2))]%∑[ceil((n+3)*(-2)^(n-2))]`
-/

namespace A275434.P1495057231532248887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A275434.P1495057231532248887

namespace A275434

/-- `Δ[ceil(n*2^(n-2))]%∑[ceil((n+3)*(-2)^(n-2))]` -/
def P1495057231532248887.Spec : Prop :=
  ∀ n, P1495057231532248887.a n = A275434 n

end A275434

/-!
# A275435: Triangle read by rows: T(n,k) is the number of 00-avoiding binary words of length n having degree of asymmetry equal to k (n>=0; 0<=k<=floor(n/2)).

The programs for A275435, there is no canonical definition to state claims against.
-/

/-! ## A275435.P3082964767583854194

`∑{e}[A326849(A046368(n+1)), #]`
-/

namespace A275435.P3082964767583854194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326849 (A046368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275435.P3082964767583854194

/-! ## A275435.P739507695049291221

`A316841(n+1)+A039999(2^n)`
-/

namespace A275435.P739507695049291221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316841 (n + 1) + A039999 (2 ^ n)

end

end A275435.P739507695049291221

/-! ## A275435.P18326275073386755068

`A308622(A308584(∑[n+1]²-n))`
-/

namespace A275435.P18326275073386755068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308622 (A308584 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)).toNat

end

end A275435.P18326275073386755068

/-! ## A275435.P18234513082583082097

`A327657(or(2, A002605(n)))`
-/

namespace A275435.P18234513082583082097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (Int.lor 2 (A002605 n)).toNat

end

end A275435.P18234513082583082097

/-! ## A275435.P2817765302396039195

`A250068(A032020(n)*A187710(n))`
-/

namespace A275435.P2817765302396039195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A032020 n * A187710 n).toNat

end

end A275435.P2817765302396039195

/-!
# A275436: Sum of the asymmetry degrees of all 00-avoiding binary words of length n.

The programs for A275436, there is no canonical definition to state claims against.
-/

/-! ## A275436.P6629921783893729281

`A317912(n)-A287769(A238846(n))`
-/

namespace A275436.P6629921783893729281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317912 n - A287769 (A238846 n).toNat

end

end A275436.P6629921783893729281

/-! ## A275436.P6170742845649277943

`A052928(A317912(n))%A308853(n+1)`
-/

namespace A275436.P6170742845649277943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052928 (A317912 n).toNat) (A308853 (n + 1))

end

end A275436.P6170742845649277943

/-!
# A275437: Triangle read by rows: T(n,k) is the number of 01-avoiding binary words of length n having degree of asymmetry equal to k (n >= 0; 0 <= k <= floor(n/2)).

The programs for A275437, the canonical program `A275437.P1610729705273858639` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275437 has offset 0).

The definition of A275437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275437.P1610729705273858639

`2-Δ[floor(sqrt(n))]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A275437

/-- `2-Δ[floor(sqrt(n))]` -/
def P1610729705273858639.Spec : Prop :=
  ∀ n, P1610729705273858639.a n = A275437 n

theorem P1610729705273858639.correct : P1610729705273858639.Spec := by
  intro n
  simp only [A275437]

end A275437

/-! ## A275437.P1018193525511600498

`gcd(2, Δ[floor(sqrt(n))])`
-/

namespace A275437.P1018193525511600498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A275437.P1018193525511600498

namespace A275437

/-- `gcd(2, Δ[floor(sqrt(n))])` -/
def P1018193525511600498.Spec : Prop :=
  ∀ n, (P1018193525511600498.a n : ℤ) = A275437 n

end A275437

/-! ## A275437.P16041582576555589264

`ceil(acot(Δ[floor(sqrt(n))]))`
-/

namespace A275437.P16041582576555589264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉

end

end A275437.P16041582576555589264

namespace A275437

/-- `ceil(acot(Δ[floor(sqrt(n))]))` -/
def P16041582576555589264.Spec : Prop :=
  ∀ n, P16041582576555589264.a n = A275437 n

end A275437

/-! ## A275437.P18409657748293395117

`round(acot(Δ[floor(sqrt(n))]))`
-/

namespace A275437.P18409657748293395117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))

end

end A275437.P18409657748293395117

namespace A275437

/-- `round(acot(Δ[floor(sqrt(n))]))` -/
def P18409657748293395117.Spec : Prop :=
  ∀ n, P18409657748293395117.a n = A275437 n

end A275437

/-! ## A275437.P18172368388462798799

`(2-char[n²-1])%3`
-/

namespace A275437.P18172368388462798799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 3

end

end A275437.P18172368388462798799

namespace A275437

/-- `(2-char[n²-1])%3` -/
def P18172368388462798799.Spec : Prop :=
  ∀ n, P18172368388462798799.a n = A275437 n

end A275437

/-! ## A275437.P14277871637786716060

`C(2, 1-char[n²-1])`
-/

namespace A275437.P14277871637786716060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A275437.P14277871637786716060

namespace A275437

/-- `C(2, 1-char[n²-1])` -/
def P14277871637786716060.Spec : Prop :=
  ∀ n, (P14277871637786716060.a n : ℤ) = A275437 n

end A275437

/-! ## A275437.P16552677902196390981

`and(3, ∪[2*(2*n+1), (2*n+1)²])`
-/

namespace A275437.P16552677902196390981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A275437.P16552677902196390981

namespace A275437

/-- `and(3, ∪[2*(2*n+1), (2*n+1)²])` -/
def P16552677902196390981.Spec : Prop :=
  ∀ n, (P16552677902196390981.a n : ℤ) = A275437 n

end A275437

/-! ## A275437.P283190847005886278

`A169695(n+1)`
-/

namespace A275437.P283190847005886278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (n + 1)

end

end A275437.P283190847005886278

namespace A275437

/-- `A169695(n+1)` -/
def P283190847005886278.Spec : Prop :=
  ∀ n, P283190847005886278.a n = A275437 n

end A275437

/-! ## A275437.P7680921253969877051

`2/Δ[A028392(n)]`
-/

namespace A275437.P7680921253969877051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f1 (n + 1) - f1 n : ℚ)

end

end A275437.P7680921253969877051

namespace A275437

/-- `2/Δ[A028392(n)]` -/
def P7680921253969877051.Spec : Prop :=
  ∀ n, P7680921253969877051.a n = (A275437 n : ℚ)

end A275437

/-! ## A275437.P3594907655866711761

`A000032(Δ[floor(sqrt(n))])`
-/

namespace A275437.P3594907655866711761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A275437.P3594907655866711761

namespace A275437

/-- `A000032(Δ[floor(sqrt(n))])` -/
def P3594907655866711761.Spec : Prop :=
  ∀ n, P3594907655866711761.a n = A275437 n

end A275437

/-! ## A275437.P17613069695885852677

`round(atan(A152204(n))²)`
-/

namespace A275437.P17613069695885852677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A152204 n : ℝ) ^ 2)

end

end A275437.P17613069695885852677

namespace A275437

/-- `round(atan(A152204(n))²)` -/
def P17613069695885852677.Spec : Prop :=
  ∀ n, P17613069695885852677.a n = A275437 n

end A275437

/-! ## A275437.P885916053386813346

`A067694(4*(n+1))`
-/

namespace A275437.P885916053386813346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (4 * (n + 1))

end

end A275437.P885916053386813346

namespace A275437

/-- `A067694(4*(n+1))` -/
def P885916053386813346.Spec : Prop :=
  ∀ n, P885916053386813346.a n = A275437 n

end A275437

/-! ## A275437.P12029082932223389117

`ceil(sqrt(A002828(n+1)))`
-/

namespace A275437.P12029082932223389117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002828 (n + 1) : ℝ)⌉

end

end A275437.P12029082932223389117

namespace A275437

/-- `ceil(sqrt(A002828(n+1)))` -/
def P12029082932223389117.Spec : Prop :=
  ∀ n, P12029082932223389117.a n = A275437 n

end A275437

/-! ## A275437.P15314914285098902906

`ceil(sqrt(A171369(n+1)))`
-/

namespace A275437.P15314914285098902906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A171369 (n + 1) : ℝ)⌉

end

end A275437.P15314914285098902906

namespace A275437

/-- `ceil(sqrt(A171369(n+1)))` -/
def P15314914285098902906.Spec : Prop :=
  ∀ n, P15314914285098902906.a n = A275437 n

end A275437

/-! ## A275437.P5434725525964050824

`ceil(sqrt(A227782(n+1)))`
-/

namespace A275437.P5434725525964050824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A227782 (n + 1) : ℝ)⌉

end

end A275437.P5434725525964050824

namespace A275437

/-- `ceil(sqrt(A227782(n+1)))` -/
def P5434725525964050824.Spec : Prop :=
  ∀ n, P5434725525964050824.a n = A275437 n

end A275437

/-! ## A275437.P12923324707870372141

`ceil(sqrt(A263765(n+1)))`
-/

namespace A275437.P12923324707870372141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A263765 (n + 1) : ℝ)⌉

end

end A275437.P12923324707870372141

namespace A275437

/-- `ceil(sqrt(A263765(n+1)))` -/
def P12923324707870372141.Spec : Prop :=
  ∀ n, P12923324707870372141.a n = A275437 n

end A275437

/-! ## A275437.P10397765438180831576

`ceil(sqrt(A360530(n+1)))`
-/

namespace A275437.P10397765438180831576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A360530 (n + 1) : ℝ)⌉

end

end A275437.P10397765438180831576

namespace A275437

/-- `ceil(sqrt(A360530(n+1)))` -/
def P10397765438180831576.Spec : Prop :=
  ∀ n, P10397765438180831576.a n = A275437 n

end A275437

/-! ## A275437.P3572704751114711321

`ceil(sqrt(A362068(n+1)))`
-/

namespace A275437.P3572704751114711321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A362068 (n + 1) : ℝ)⌉

end

end A275437.P3572704751114711321

namespace A275437

/-- `ceil(sqrt(A362068(n+1)))` -/
def P3572704751114711321.Spec : Prop :=
  ∀ n, P3572704751114711321.a n = A275437 n

end A275437

/-! ## A275437.P9136575864520864170

`∏{p}[A055076(n+1), #]`
-/

namespace A275437.P9136575864520864170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A275437.P9136575864520864170

namespace A275437

/-- `∏{p}[A055076(n+1), #]` -/
def P9136575864520864170.Spec : Prop :=
  ∀ n, (P9136575864520864170.a n : ℤ) = A275437 n

end A275437

/-! ## A275437.P638970380732192746

`A000032(Δ[ceil(sqrt(n+1))])!`
-/

namespace A275437.P638970380732192746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000032 (f1 (n + 1) - f1 n).toNat).toNat

end

end A275437.P638970380732192746

namespace A275437

/-- `A000032(Δ[ceil(sqrt(n+1))])!` -/
def P638970380732192746.Spec : Prop :=
  ∀ n, (P638970380732192746.a n : ℤ) = A275437 n

end A275437

/-!
# A275438: Triangle read by rows: T(n,k) is the number of compositions of n with parts in {1,2} having asymmetry degree equal to k (n>=0; 0<=k<=floor(n/3)).

The programs for A275438, there is no canonical definition to state claims against.
-/

/-! ## A275438.P8782489244029883129

`A105068(A037943(n+1))+A008615(n)`
-/

namespace A275438.P8782489244029883129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105068 (A037943 (n + 1)).toNat + A008615 n

end

end A275438.P8782489244029883129

/-!
# A275439: Sum of the asymmetry degrees of all compositions of n with parts in {1,2}.

The programs for A275439, the canonical program `A275439.P11410885110955459842` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275439 has offset 0).

The definition of A275439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275439.P11410885110955459842

`A094686(n)-A240847(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A275439

/-- `A094686(n)-A240847(n+2)` -/
def P11410885110955459842.Spec : Prop :=
  ∀ n, P11410885110955459842.a n = A275439 n

theorem P11410885110955459842.correct : P11410885110955459842.Spec := by
  intro n
  simp only [A275439]

end A275439

/-! ## A275439.P1028134086722586396

`A010049(n)-Δ[A173173(n+2)]`
-/

namespace A275439.P1028134086722586396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n - (f1 (n + 1) - f1 n)

end

end A275439.P1028134086722586396

namespace A275439

/-- `A010049(n)-Δ[A173173(n+2)]` -/
def P1028134086722586396.Spec : Prop :=
  ∀ n, P1028134086722586396.a n = A275439 n

end A275439

/-! ## A275439.P17777197194112967448

`A094686(n)+A240847(n+2)*A260196(n+2)`
-/

namespace A275439.P17777197194112967448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n + A240847 (n + 2) * A260196 (n + 2)

end

end A275439.P17777197194112967448

namespace A275439

/-- `A094686(n)+A240847(n+2)*A260196(n+2)` -/
def P17777197194112967448.Spec : Prop :=
  ∀ n, P17777197194112967448.a n = A275439 n

end A275439

/-! ## A275439.P8157019441141659489

`Δ[A001629(n)-A173173(n+2)]`
-/

namespace A275439.P8157019441141659489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n - A173173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275439.P8157019441141659489

namespace A275439

/-- `Δ[A001629(n)-A173173(n+2)]` -/
def P8157019441141659489.Spec : Prop :=
  ∀ n, P8157019441141659489.a n = A275439 n

end A275439

/-! ## A275439.P5987232682530303426

`Δ[A029907(n)-A000045(n)-A173173(n+2)]`
-/

namespace A275439.P5987232682530303426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n - A000045 n - A173173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275439.P5987232682530303426

namespace A275439

/-- `Δ[A029907(n)-A000045(n)-A173173(n+2)]` -/
def P5987232682530303426.Spec : Prop :=
  ∀ n, P5987232682530303426.a n = A275439 n

end A275439

/-!
# A275440: Triangle read by rows: T(n,k) is the number of compositions of n into odd parts, having asymmetry degree equal to k (n>=0; 0<=k<=floor(n/4)).

The programs for A275440, there is no canonical definition to state claims against.
-/

/-! ## A275440.P1889007515716278852

`A001222(A324011(n)+A185725(n+2))`
-/

namespace A275440.P1889007515716278852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324011 n + A185725 (n + 2)).toNat

end

end A275440.P1889007515716278852

/-!
# A275443: Sum of the asymmetry degrees of all compositions of n without 2's.

The programs for A275443, there is no canonical definition to state claims against.
-/

/-! ## A275443.P18283705597243305005

`A116939(A000108(n)-A196545(n+1))`
-/

namespace A275443.P18283705597243305005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A000108 n - A196545 (n + 1)).toNat

end

end A275443.P18283705597243305005

/-! ## A275443.P2344152956616147848

`2*(ceil(A293606(n)/4)-1)`
-/

namespace A275443.P2344152956616147848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌈(A293606 n : ℚ) / 4⌉ - 1)

end

end A275443.P2344152956616147848

/-! ## A275443.P11922728660193363591

`∑[A139800(n)%∏{e}[n!, n*#+1]]`
-/

namespace A275443.P11922728660193363591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139800 n) ((∏ p ∈ Nat.primeFactors (f2 n), (n * Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275443.P11922728660193363591

/-! ## A275443.P2120847377161752412

`A065286(A000602(n))`
-/

namespace A275443.P2120847377161752412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065286 (A000602 n).toNat

end

end A275443.P2120847377161752412

/-! ## A275443.P17685564754109549712

`A231238(A068030(n))`
-/

namespace A275443.P17685564754109549712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231238 (A068030 n).toNat

end

end A275443.P17685564754109549712

/-!
# A275445: Sum of the asymmetry degrees of all compositions of n with parts in {1,2,3}.

The programs for A275445, there is no canonical definition to state claims against.
-/

/-! ## A275445.P15587777468413256991

`A349055(n)-A101296(A193472(2*n))`
-/

namespace A275445.P15587777468413256991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349055 n - A101296 (A193472 (2 * n)).toNat

end

end A275445.P15587777468413256991

/-! ## A275445.P14488554819972087456

`A320312(A026646(n))`
-/

namespace A275445.P14488554819972087456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (A026646 n).toNat

end

end A275445.P14488554819972087456

/-! ## A275445.P17822253133026994309

`A244579(A036590(n))-1`
-/

namespace A275445.P17822253133026994309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (A036590 n).toNat - 1

end

end A275445.P17822253133026994309

/-! ## A275445.P8252943503605688808

`2*A335469(A032305(n+1))`
-/

namespace A275445.P8252943503605688808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A335469 (A032305 (n + 1)).toNat

end

end A275445.P8252943503605688808

/-! ## A275445.P8507749146041344158

`2*A135661(A362635(n+2))`
-/

namespace A275445.P8507749146041344158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135661 (A362635 (n + 2)).toNat

end

end A275445.P8507749146041344158

/-!
# A275447: Sum of the asymmetry degrees of all compositions of n with parts in {2,1,3,5,7,9,...}.

The programs for A275447, there is no canonical definition to state claims against.
-/

/-! ## A275447.P15128883657343475118

`2*A238098(A240523(n))`
-/

namespace A275447.P15128883657343475118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238098 (A240523 n).toNat

end

end A275447.P15128883657343475118

/-! ## A275447.P9770487028342593577

`A308771(A090905(n+2))`
-/

namespace A275447.P9770487028342593577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308771 (A090905 (n + 2)).toNat

end

end A275447.P9770487028342593577

/-! ## A275447.P663396081667743631

`A316355(A184177(n))-1`
-/

namespace A275447.P663396081667743631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A184177 n).toNat - 1

end

end A275447.P663396081667743631

/-! ## A275447.P5295552209587575662

`A018851(Δ[A265725(n)]²)`
-/

namespace A275447.P5295552209587575662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A275447.P5295552209587575662

/-! ## A275447.P8412875493797088191

`Δ[A265725(A227549(n+1))]`
-/

namespace A275447.P8412875493797088191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265725 (A227549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275447.P8412875493797088191

/-!
# A275448: The number of weakly alternating bargraphs of semiperimeter n. A bargraph is said to be weakly alternating if its ascents and descents alternate. An ascent (descent) is a maximal sequence of consecutive U (D) steps.

The programs for A275448, there is no canonical definition to state claims against.
-/

/-! ## A275448.P8883104142254157981

`∑[A132016(A038503(n))]`
-/

namespace A275448.P8883104142254157981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A038503 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275448.P8883104142254157981

/-!
# A275450: Numbers n such that primorial(n) contains n as a string of digits.

The programs for A275450, there is no canonical definition to state claims against.
-/

/-! ## A275450.P8301507008338885732

`lt[0, A275451(n+1)]+1`
-/

namespace A275450.P8301507008338885732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A275450.P8301507008338885732

/-! ## A275450.P1735527317090141778

`lt[0, A275451(A028310(n))]`
-/

namespace A275450.P1735527317090141778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275450.P1735527317090141778

/-! ## A275450.P14780460669722842203

`A020725(lt[0, A275451(n+1)])`
-/

namespace A275450.P14780460669722842203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A275450.P14780460669722842203

/-!
# A275451: Number of occurrences of the string n in primorial(n).

The programs for A275451, there is no canonical definition to state claims against.
-/

/-! ## A275451.P8345707412975878724

`val(A320134(A320144(3*n+8)), 7)`
-/

namespace A275451.P8345707412975878724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A320134 (A320144 (3 * n + 8)).toNat).toNat 7

end

end A275451.P8345707412975878724

/-! ## A275451.P1854707279246721890

`A283318(A030118(n)^A227186(n))`
-/

namespace A275451.P1854707279246721890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283318 (SequenceMachineLib.roundAway ((A030118 n : ℚ) ^ (A227186 n : ℤ))).toNat

end

end A275451.P1854707279246721890

/-! ## A275451.P17680716273148052367

`val(A322527(n), A000096(A131031(n)))`
-/

namespace A275451.P17680716273148052367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322527 n).toNat (A000096 (A131031 n).toNat).toNat

end

end A275451.P17680716273148052367

/-! ## A275451.P15991557605260800423

`A106665(A371594(n+1)^A227186(n))`
-/

namespace A275451.P15991557605260800423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 (SequenceMachineLib.roundAway ((A371594 (n + 1) : ℚ) ^ (A227186 n : ℤ))).toNat

end

end A275451.P15991557605260800423

/-! ## A275451.P8720762876477431957

`A010060(A193231(n)^A227189(n)-1)`
-/

namespace A275451.P8720762876477431957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.roundAway ((A193231 n : ℚ) ^ (A227189 n : ℤ) - 1)).toNat

end

end A275451.P8720762876477431957

/-!
# A275452: G.f.: 3F2([1/9, 4/9, 7/9], [1/3, 1], 729 x).

The programs for A275452, there is no canonical definition to state claims against.
-/

/-! ## A275452.P8782047772488042824

`A275051(n)/A275455(n)*A275456(n)`
-/

namespace A275452.P8782047772488042824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275051 n : ℚ) / (A275455 n : ℚ) * (A275456 n : ℚ)

end

end A275452.P8782047772488042824

/-! ## A275452.P2530053198012581536

`A275051(n)/A275457(n)*A275460(n)`
-/

namespace A275452.P2530053198012581536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275051 n : ℚ) / (A275457 n : ℚ) * (A275460 n : ℚ)

end

end A275452.P2530053198012581536

/-!
# A275453: G.f.: 3F2([1/9, 4/9, 7/9], [2/3, 1], 729 x).

The programs for A275453, there is no canonical definition to state claims against.
-/

/-! ## A275453.P14890343257549130280

`A275454(n)/A275459(n)*A275458(n)`
-/

namespace A275453.P14890343257549130280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275454 n : ℚ) / (A275459 n : ℚ) * (A275458 n : ℚ)

end

end A275453.P14890343257549130280

/-!
# A275454: G.f.: 3F2([1/9, 4/9, 8/9], [2/3, 1], 729 x).

The programs for A275454, there is no canonical definition to state claims against.
-/

/-! ## A275454.P2991577463798121726

`A275054(n)/A275461(n)*A275458(n)`
-/

namespace A275454.P2991577463798121726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275054 n : ℚ) / (A275461 n : ℚ) * (A275458 n : ℚ)

end

end A275454.P2991577463798121726

/-! ## A275454.P4246937888457320269

`A275453(n)/A275458(n)*A275459(n)`
-/

namespace A275454.P4246937888457320269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275453 n : ℚ) / (A275458 n : ℚ) * (A275459 n : ℚ)

end

end A275454.P4246937888457320269

/-!
# A275455: G.f.: 3F2([1/9, 5/9, 8/9], [1/3, 1], 729 x).

The programs for A275455, there is no canonical definition to state claims against.
-/

/-! ## A275455.P6414535376351159483

`A275051(n)/A275452(n)*A275456(n)`
-/

namespace A275455.P6414535376351159483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275051 n : ℚ) / (A275452 n : ℚ) * (A275456 n : ℚ)

end

end A275455.P6414535376351159483

/-! ## A275455.P2958703529601454392

`A275456(n)/A275460(n)*A275457(n)`
-/

namespace A275455.P2958703529601454392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275456 n : ℚ) / (A275460 n : ℚ) * (A275457 n : ℚ)

end

end A275455.P2958703529601454392

/-!
# A275456: G.f.: 3F2([1/9, 7/9, 8/9], [1/3, 1], 729 x).

The programs for A275456, there is no canonical definition to state claims against.
-/

/-! ## A275456.P10843339115729913709

`A275452(n)/A275051(n)*A275455(n)`
-/

namespace A275456.P10843339115729913709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275452 n : ℚ) / (A275051 n : ℚ) * (A275455 n : ℚ)

end

end A275456.P10843339115729913709

/-! ## A275456.P5185896608776795224

`A275455(n)/A275457(n)*A275460(n)`
-/

namespace A275456.P5185896608776795224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275455 n : ℚ) / (A275457 n : ℚ) * (A275460 n : ℚ)

end

end A275456.P5185896608776795224

/-!
# A275457: G.f.: 3F2([2/9, 4/9, 5/9], [1/3, 1], 729 x).

The programs for A275457, there is no canonical definition to state claims against.
-/

/-! ## A275457.P18015172099184325210

`A275051(n)/A275452(n)*A275460(n)`
-/

namespace A275457.P18015172099184325210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275051 n : ℚ) / (A275452 n : ℚ) * (A275460 n : ℚ)

end

end A275457.P18015172099184325210

/-! ## A275457.P4791798815326112559

`A275455(n)/A275456(n)*A275460(n)`
-/

namespace A275457.P4791798815326112559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275455 n : ℚ) / (A275456 n : ℚ) * (A275460 n : ℚ)

end

end A275457.P4791798815326112559

/-!
# A275458: Expansion of g.f. hypergeom([4/9, 5/9, 7/9], [2/3, 1], 729 x).

The programs for A275458, there is no canonical definition to state claims against.
-/

/-! ## A275458.P13816945999217593414

`A275454(n)/A275054(n)*A275461(n)`
-/

namespace A275458.P13816945999217593414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275454 n : ℚ) / (A275054 n : ℚ) * (A275461 n : ℚ)

end

end A275458.P13816945999217593414

/-! ## A275458.P15749267120448252583

`A275453(n)/A275454(n)*A275459(n)`
-/

namespace A275458.P15749267120448252583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275453 n : ℚ) / (A275454 n : ℚ) * (A275459 n : ℚ)

end

end A275458.P15749267120448252583

/-!
# A275459: G.f.: 3F2([4/9, 5/9, 8/9], [2/3, 1], 729 x).

The programs for A275459, there is no canonical definition to state claims against.
-/

/-! ## A275459.P17399387323060994786

`A275454(n)/A275453(n)*A275458(n)`
-/

namespace A275459.P17399387323060994786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275454 n : ℚ) / (A275453 n : ℚ) * (A275458 n : ℚ)

end

end A275459.P17399387323060994786

/-!
# A275460: G.f.: 3F2([2/9, 4/9, 7/9], [1/3, 1], 729 x).

The programs for A275460, there is no canonical definition to state claims against.
-/

/-! ## A275460.P13987176000737683094

`A275456(n)/A275455(n)*A275457(n)`
-/

namespace A275460.P13987176000737683094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275456 n : ℚ) / (A275455 n : ℚ) * (A275457 n : ℚ)

end

end A275460.P13987176000737683094

/-!
# A275461: G.f.: 3F2([2/9, 5/9, 7/9], [2/3, 1], 729 x).

The programs for A275461, there is no canonical definition to state claims against.
-/

/-! ## A275461.P3623256630714419688

`A275054(n)/A275454(n)*A275458(n)`
-/

namespace A275461.P3623256630714419688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275054 n : ℚ) / (A275454 n : ℚ) * (A275458 n : ℚ)

end

end A275461.P3623256630714419688

/-!
# A275462: Number of leaves in all simple labeled connected graphs on n nodes.

The programs for A275462, there is no canonical definition to state claims against.
-/

/-! ## A275462.P7872557449842994348

`n*A053549((2*n)%(n+1))`
-/

namespace A275462.P7872557449842994348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053549 (2 * n % (n + 1))

end

end A275462.P7872557449842994348

/-! ## A275462.P11130970826629945343

`n*A053549(A119369(n²+1))`
-/

namespace A275462.P11130970826629945343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053549 (A119369 (n ^ 2 + 1)).toNat

end

end A275462.P11130970826629945343

/-! ## A275462.P12824579198918945669

`n*A053549(A000007(n)-1+n)`
-/

namespace A275462.P12824579198918945669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053549 (A000007 n - 1 + (n : ℤ)).toNat

end

end A275462.P12824579198918945669

/-! ## A275462.P16626543835406312839

`2*A001187(A171950(n+1))*A161680(n)`
-/

namespace A275462.P16626543835406312839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001187 (A171950 (n + 1)).toNat * A161680 n)

end

end A275462.P16626543835406312839

/-! ## A275462.P8736819631591246451

`A001187(A171950(n+1))*A005843(A161680(n))`
-/

namespace A275462.P8736819631591246451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (A171950 (n + 1)).toNat * A005843 (A161680 n).toNat

end

end A275462.P8736819631591246451

/-!
# A275463: Least k such that n divides d(k*n) (d = A000005).

The programs for A275463, there is no canonical definition to state claims against.
-/

/-! ## A275463.P1327468003515021113

`A272348(n+1)/(n+1)`
-/

namespace A275463.P1327468003515021113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272348 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A275463.P1327468003515021113

/-!
# A275464: a(n) = n - A038802(n).

The programs for A275464, there is no canonical definition to state claims against.
-/

/-! ## A275464.P8314376171400138253

`n+1-A038802(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275464.P8314376171400138253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A038802 (n + 1)

end

end A275464.P8314376171400138253

/-! ## A275464.P14475461691054190296

`1-A099802(A195508(n+1))+n`
-/

namespace A275464.P14475461691054190296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A099802 (A195508 (n + 1)).toNat + (n : ℤ)

end

end A275464.P14475461691054190296

/-! ## A275464.P16076093423049159585

`1-A000720(A117368(n+2))+n`
-/

namespace A275464.P16076093423049159585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000720 (A117368 (n + 2)).toNat + (n : ℤ)

end

end A275464.P16076093423049159585

/-! ## A275464.P3621700357036981545

`n+2-A000720(A020639(2*n+3))`
-/

namespace A275464.P3621700357036981545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000720 (A020639 (2 * n + 3)).toNat

end

end A275464.P3621700357036981545

/-! ## A275464.P7454257488585992054

`n+2-A000720(A090368(n+2))`
-/

namespace A275464.P7454257488585992054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000720 (A090368 (n + 2)).toNat

end

end A275464.P7454257488585992054

/-! ## A275464.P1488501349131589289

`1-A055396(A064216(n+2))+n`
-/

namespace A275464.P1488501349131589289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055396 (A064216 (n + 2)).toNat + (n : ℤ)

end

end A275464.P1488501349131589289

/-! ## A275464.P12366664913456550591

`A372437(2*n+3)+n+1`
-/

namespace A275464.P12366664913456550591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372437 (2 * n + 3) + (n + 1 : ℤ)

end

end A275464.P12366664913456550591

/-! ## A275464.P12221932247840580070

`n+2-A055396(2*n+3)`
-/

namespace A275464.P12221932247840580070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A055396 (2 * n + 3)

end

end A275464.P12221932247840580070

/-! ## A275464.P1813379265409955986

`n+2-A338101(2*n+3)`
-/

namespace A275464.P1813379265409955986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A338101 (2 * n + 3)

end

end A275464.P1813379265409955986

/-! ## A275464.P6807025843746276930

`n+1-A289623(A245448(n+2))`
-/

namespace A275464.P6807025843746276930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A289623 (A245448 (n + 2)).toNat

end

end A275464.P6807025843746276930

/-!
# A275465: a(n) = f^(n/f), where f is the smallest prime factor of n.

The programs for A275465, there is no canonical definition to state claims against.
-/

/-! ## A275465.P4720152275945950320

`A020639(n+2)^A032742(n+2)`
-/

namespace A275465.P4720152275945950320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) ^ (A032742 (n + 2) : ℤ)

end

end A275465.P4720152275945950320

/-! ## A275465.P4264457743929750124

`A014673(2*(n+2))^A032742(n+2)`
-/

namespace A275465.P4264457743929750124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014673 (2 * (n + 2)) : ℚ) ^ (A032742 (n + 2) : ℤ)

end

end A275465.P4264457743929750124

/-! ## A275465.P16575464713536432726

`Δ[A046669(n+1)]^Δ[A280050(n+1)]`
-/

namespace A275465.P16575464713536432726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280050 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A275465.P16575464713536432726

/-! ## A275465.P7441813735981560193

`A020639(n+2)^A014673(n+2)^A054576(n+2)`
-/

namespace A275465.P7441813735981560193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A020639 (n + 2) : ℚ) ^ (A014673 (n + 2) : ℤ)) ^ (A054576 (n + 2) : ℤ)

end

end A275465.P7441813735981560193

/-! ## A275465.P206162298447336539

`A393396(A006218(n+1)+2)`
-/

namespace A275465.P206162298447336539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393396 (A006218 (n + 1) + 2).toNat

end

end A275465.P206162298447336539

/-! ## A275465.P7399610554738047904

`A393397(A077597(n+1))`
-/

namespace A275465.P7399610554738047904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393397 (A077597 (n + 1)).toNat

end

end A275465.P7399610554738047904

/-! ## A275465.P18067913038543292150

`A393397(A006218(n+2)-1)`
-/

namespace A275465.P18067913038543292150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393397 (A006218 (n + 2) - 1).toNat

end

end A275465.P18067913038543292150

/-!
# A275467: Array read by rows with four columns T(n,k) in which row n lists the primes > 10 ending in 1, 3, 7, 9 respectively and not yet present in the sequence.

The programs for A275467, there is no canonical definition to state claims against.
-/

/-! ## A275467.P18422593790254030286

`p?[A262029(n+1)+10]`
-/

namespace A275467.P18422593790254030286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262029 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275467.P18422593790254030286

/-! ## A275467.P7759425856899429992

`p?[A333324(n+8)]%A333324(8*n+14)`
-/

namespace A275467.P7759425856899429992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333324 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A333324 (8 * n + 14))

end

end A275467.P7759425856899429992

/-!
# A275468: Least k such that d(k*n^2) = d(n*k^2) where d = A000005.

The programs for A275468, there is no canonical definition to state claims against.
-/

/-! ## A275468.P11497942156242000535

`A046523(or(n+1, A336107(2*n+1)))`
-/

namespace A275468.P11497942156242000535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.lor (n + 1 : ℤ) (A336107 (2 * n + 1))).toNat

end

end A275468.P11497942156242000535

/-! ## A275468.P15510725395949008713

`A046523(A335446(2*n+1)+A046523(n+1))`
-/

namespace A275468.P15510725395949008713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A335446 (2 * n + 1) + A046523 (n + 1)).toNat

end

end A275468.P15510725395949008713

/-! ## A275468.P84939816306313111

`A046523(n+1)%(A264349(n+1)-1)`
-/

namespace A275468.P84939816306313111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (n + 1)) (A264349 (n + 1) - 1)

end

end A275468.P84939816306313111

/-! ## A275468.P3120703563835715550

`A046523(n+1)%A022840(A122111(n+1))`
-/

namespace A275468.P3120703563835715550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046523 (n + 1)) (A022840 (A122111 (n + 1)).toNat)

end

end A275468.P3120703563835715550

/-! ## A275468.P17555522981294998505

`A046523(C(n, A213841(n+5))+1+n)`
-/

namespace A275468.P17555522981294998505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Nat.choose n (A213841 (n + 5)).toNat + 1 + n)

end

end A275468.P17555522981294998505

/-!
# A275469: Difference between the larger and smaller terms of the n-th amicable pair (x,y) given in A259933.

The programs for A275469, there is no canonical definition to state claims against.
-/

/-! ## A275469.P12316064854955359351

`A260087(n+1)-A260086(n+1)`
-/

namespace A275469.P12316064854955359351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260087 (n + 1) - A260086 (n + 1)

end

end A275469.P12316064854955359351

/-! ## A275469.P12440196908012348460

`2*A275470(n+1)`
-/

namespace A275469.P12440196908012348460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275470 (n + 1)

end

end A275469.P12440196908012348460

/-! ## A275469.P390820469161114998

`4*A275470(Δ[n²]-n)/2`
-/

namespace A275469.P390820469161114998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A275470 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A275469.P390820469161114998

/-! ## A275469.P12587599745787877890

`A275470(C(n+1, n))+A275470(n+1)`
-/

namespace A275469.P12587599745787877890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275470 (Nat.choose (n + 1) n) + A275470 (n + 1)

end

end A275469.P12587599745787877890

/-! ## A275469.P498161070488443853

`A275470(n+1)+A275470(Δ[n²]-n)`
-/

namespace A275469.P498161070488443853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275470 (n + 1) + A275470 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A275469.P498161070488443853

/-! ## A275469.P3897678469899636287

`A275470(n+1)/2^A008683(A006450(n+1))`
-/

namespace A275469.P3897678469899636287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275470 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)

end

end A275469.P3897678469899636287

/-! ## A275469.P3218148782855899783

`A275470(n+1)+A275470(n+1)/A077028(∑[n])`
-/

namespace A275469.P3218148782855899783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275470 (n + 1) : ℚ) + (A275470 (n + 1) : ℚ) / (A077028 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A275469.P3218148782855899783

/-! ## A275469.P2825552458434095486

`A275470(n+1)+A275470(n+1)%A002025(n+1)`
-/

namespace A275469.P2825552458434095486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275470 (n + 1) + Int.tmod (A275470 (n + 1)) (A002025 (n + 1))

end

end A275469.P2825552458434095486

/-! ## A275469.P290710199640647536

`A275470(n+1)+A275470(n+1)/A115716(A115716(n))`
-/

namespace A275469.P290710199640647536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275470 (n + 1) : ℚ) + (A275470 (n + 1) : ℚ) / (A115716 (A115716 n).toNat : ℚ)

end

end A275469.P290710199640647536

/-! ## A275469.P4876797412029644842

`A275470(n+1)+A275470(n+1)/A014963(A062513(n+1))`
-/

namespace A275469.P4876797412029644842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275470 (n + 1) : ℚ) + (A275470 (n + 1) : ℚ) / (A014963 (A062513 (n + 1)).toNat : ℚ)

end

end A275469.P4876797412029644842

/-!
# A275470: Half the difference between the larger and smaller terms of the n-th amicable pair (x,y) given in A259933.

The programs for A275470, there is no canonical definition to state claims against.
-/

/-! ## A275470.P12141482546631445803

`A275469(n+1)/2`
-/

namespace A275470.P12141482546631445803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275469 (n + 1) : ℚ) / 2

end

end A275470.P12141482546631445803

/-! ## A275470.P15613514924306251162

`(A260087(n+1)-A260086(n+1))/2`
-/

namespace A275470.P15613514924306251162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260087 (n + 1) - A260086 (n + 1) : ℚ) / 2

end

end A275470.P15613514924306251162

/-! ## A275470.P13142139277523847992

`A260087(n+1)-A275316(n+1)`
-/

namespace A275470.P13142139277523847992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260087 (n + 1) - A275316 (n + 1)

end

end A275470.P13142139277523847992

/-! ## A275470.P964822020343675281

`A275316(n+1)-A260086(n+1)`
-/

namespace A275470.P964822020343675281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275316 (n + 1) - A260086 (n + 1)

end

end A275470.P964822020343675281

/-! ## A275470.P15141202043504989203

`A260087(A000027(n+1))%A275316(n+1)`
-/

namespace A275470.P15141202043504989203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260087 (A000027 (n + 1)).toNat) (A275316 (n + 1))

end

end A275470.P15141202043504989203

/-!
# A275471: Number of ordered ways to write n as 4^k*(1+x^2+y^2)+z^2, where k,x,y,z are nonnegative integers with x <= y and x == y (mod 2).

The programs for A275471, there is no canonical definition to state claims against.
-/

/-! ## A275471.P9783800835201238842

`or(A051731(A038224(n)), A275656(n+1))`
-/

namespace A275471.P9783800835201238842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051731 (A038224 n).toNat) (A275656 (n + 1))

end

end A275471.P9783800835201238842

/-! ## A275471.P13466777875357914637

`or(A196389(A010049(n)), A275656(n+1))`
-/

namespace A275471.P13466777875357914637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196389 (A010049 n).toNat) (A275656 (n + 1))

end

end A275471.P13466777875357914637

/-! ## A275471.P17332624664195273974

`or(A079944(n), A328966(A310311(n)+2-n%2))`
-/

namespace A275471.P17332624664195273974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079944 n) (A328966 (A310311 n + (2 - ((n % 2 : ℕ) : ℤ))).toNat)

end

end A275471.P17332624664195273974

/-! ## A275471.P16946216365692286956

`or(A181923((6*n+2)²), A275656(n+1))`
-/

namespace A275471.P16946216365692286956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181923 ((6 * n + 2) ^ 2)) (A275656 (n + 1))

end

end A275471.P16946216365692286956

/-! ## A275471.P8031012055062469013

`∑{p}[A330687(n+1), val(A065937(n+1)+1, #)]+1`
-/

namespace A275471.P8031012055062469013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A065937 (n + 1) + 1).toNat p + 1

end

end A275471.P8031012055062469013

/-!
# A275472: First differences of A275316.

The programs for A275472, there is no canonical definition to state claims against.
-/

/-! ## A275472.P17846272832299292854

`A275316(n+2)-A275316(n+1)`
-/

namespace A275472.P17846272832299292854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275316 (n + 2) - A275316 (n + 1)

end

end A275472.P17846272832299292854

/-! ## A275472.P6467717144891132375

`Δ[A275316(n+1)]`
-/

namespace A275472.P6467717144891132375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275472.P6467717144891132375

/-! ## A275472.P14622956284303755164

`Δ[A260087(n+1)-A275470(n+1)]`
-/

namespace A275472.P14622956284303755164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260087 (n + 1) - A275470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275472.P14622956284303755164

/-! ## A275472.P673825794724191301

`Δ[A260087(n+1)-A275469(n+1)/2]`
-/

namespace A275472.P673825794724191301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260087 (n + 1) : ℚ) - (A275469 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275472.P673825794724191301

/-! ## A275472.P5968195233940875755

`Δ[A259953(n+1)/2]`
-/

namespace A275472.P5968195233940875755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259953 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275472.P5968195233940875755

/-!
# A275473: Least k such that d(k*n) = k, or 0 if no such k exists (d = A000005).

The programs for A275473, there is no canonical definition to state claims against.
-/

/-! ## A275473.P9647878103286962746

`A036764(n+1)/(n+1)`
-/

namespace A275473.P9647878103286962746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036764 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A275473.P9647878103286962746

/-! ## A275473.P14542880993147150764

`∑{d}[A036764(n+1), A054977(#)]`
-/

namespace A275473.P14542880993147150764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A275473.P14542880993147150764

/-! ## A275473.P6591442743523680210

`∑{d}[A036764(n+1), A057427(#)]`
-/

namespace A275473.P6591442743523680210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A275473.P6591442743523680210

/-! ## A275473.P17791428524928584979

`∑{d}[A036764(n+1), A158388(#)]`
-/

namespace A275473.P17791428524928584979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A158388 d

end

end A275473.P17791428524928584979

/-! ## A275473.P2400747101473986040

`∑{d}[A036764(n+1), abs(A033999(#))]`
-/

namespace A275473.P2400747101473986040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, |A033999 d|

end

end A275473.P2400747101473986040

/-! ## A275473.P11786218128774122203

`∑{d}[A036764(n+1), A000034(2*#)]`
-/

namespace A275473.P11786218128774122203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000034 (2 * d)

end

end A275473.P11786218128774122203

/-! ## A275473.P6812998231830969178

`∑{d}[A036764(n+1), gcd(#, A128825(n+1))]`
-/

namespace A275473.P6812998231830969178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A128825 (n + 1))

end

end A275473.P6812998231830969178

/-! ## A275473.P5335455833735072082

`∑{d}[A036764(n+1), A000035(A000265(#))]`
-/

namespace A275473.P5335455833735072082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (A000265 d).toNat

end

end A275473.P5335455833735072082

/-! ## A275473.P7298675373156974906

`∑{d}[A036764(n+1), A033273(A020639(#))]`
-/

namespace A275473.P7298675373156974906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033273 (A020639 d).toNat

end

end A275473.P7298675373156974906

/-! ## A275473.P5035139228891158659

`∑{d}[A036764(n+1), A090387(A033950(#))]`
-/

namespace A275473.P5035139228891158659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A090387 (A033950 d).toNat

end

end A275473.P5035139228891158659

/-!
# A275474: Numbers n for which e_n(2*i)=e_n(2*i+1), for all i>=1, where e_n(k)>=0 denote the exponent of prime(k) in the prime power representation of n.

The programs for A275474, there is no canonical definition to state claims against.
-/

/-! ## A275474.P2129214263569599858

`A108548(A354192(n+1))%A055162(n+1)`
-/

namespace A275474.P2129214263569599858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108548 (A354192 (n + 1)).toNat) (A055162 (n + 1))

end

end A275474.P2129214263569599858

/-! ## A275474.P7872899078854173954

`A329303(A354192(n+1)^A329291(n+1))`
-/

namespace A275474.P7872899078854173954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329303 (SequenceMachineLib.roundAway ((A354192 (n + 1) : ℚ) ^ (A329291 (n + 1) : ℤ))).toNat

end

end A275474.P7872899078854173954

/-! ## A275474.P13031756167198166367

`A108548(A354192(n+1)²)/A108548(A354192(n+1))`
-/

namespace A275474.P13031756167198166367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108548 (A354192 (n + 1) ^ 2).toNat : ℚ) / (A108548 (A354192 (n + 1)).toNat : ℚ)

end

end A275474.P13031756167198166367

/-! ## A275474.P14164752470929430743

`eq[1, A286159(A064989((n+1)²)+1)]+1`
-/

namespace A275474.P14164752470929430743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286159 (A064989 ((n + 1) ^ 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275474.P14164752470929430743

/-! ## A275474.P11259450641992725901

`eq[A004736(A016725(n)), A124769(n)]`
-/

namespace A275474.P11259450641992725901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A016725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275474.P11259450641992725901

/-!
# A275478: Least k such that d(n) divides d(n+2^k) (d = A000005).

The programs for A275478, there is no canonical definition to state claims against.
-/

/-! ## A275478.P4120332547790446380

`A007088(A282450(n+3))%A294731(n+3)`
-/

namespace A275478.P4120332547790446380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (A282450 (n + 3)).toNat) (A294731 (n + 3))

end

end A275478.P4120332547790446380

/-! ## A275478.P12713533108649464188

`and(A101287(n), A131108(A135287(n)))`
-/

namespace A275478.P12713533108649464188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101287 n) (A131108 (A135287 n).toNat)

end

end A275478.P12713533108649464188

/-! ## A275478.P8566074520596263239

`and(A202714(A327859(n)), A340075(n+1))`
-/

namespace A275478.P8566074520596263239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A202714 (A327859 n).toNat) (A340075 (n + 1))

end

end A275478.P8566074520596263239

/-! ## A275478.P16401323859683536399

`A245300(A082266(n+1))%A195989(n+1)`
-/

namespace A275478.P16401323859683536399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245300 (A082266 (n + 1)).toNat) (A195989 (n + 1))

end

end A275478.P16401323859683536399

/-! ## A275478.P8442275919914191954

`A352938(A285116(2*(n+1))+A075175(n+1))`
-/

namespace A275478.P8442275919914191954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352938 (A285116 (2 * (n + 1)) + A075175 (n + 1)).toNat

end

end A275478.P8442275919914191954

/-!
# A275479: Least positive k such that d(n) divides d(n+k) (d = A000005).

The programs for A275479, there is no canonical definition to state claims against.
-/

/-! ## A275479.P17439424548497456486

`A069805(n+1)-(n+1)`
-/

namespace A275479.P17439424548497456486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069805 (n + 1) - (n + 1 : ℤ)

end

end A275479.P17439424548497456486

/-! ## A275479.P2359308183122040068

`A069805(Δ[n²]-n)-1-n`
-/

namespace A275479.P2359308183122040068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069805 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 - (n : ℤ)

end

end A275479.P2359308183122040068

/-! ## A275479.P16933799650676749081

`abs(A069805(n+1)+A001478(n+1))`
-/

namespace A275479.P16933799650676749081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069805 (n + 1) + A001478 (n + 1)|

end

end A275479.P16933799650676749081

/-! ## A275479.P16668950120356534874

`A023443(A069805(n+1)-n)`
-/

namespace A275479.P16668950120356534874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A069805 (n + 1) - (n : ℤ)).toNat

end

end A275479.P16668950120356534874

/-! ## A275479.P6847961335158521594

`A110315(2*n+1)+A069805(n+1)`
-/

namespace A275479.P6847961335158521594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + A069805 (n + 1)

end

end A275479.P6847961335158521594

/-! ## A275479.P10083540833309681400

`A110326(2*n+1)+A069805(n+1)`
-/

namespace A275479.P10083540833309681400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110326 (2 * n + 1) + A069805 (n + 1)

end

end A275479.P10083540833309681400

/-!
# A275481: Integers that appear uniquely in the Catalan triangle, A009766.

The programs for A275481, there is no canonical definition to state claims against.
-/

/-! ## A275481.P17528890352569590208

`comp[Δ[C(floor(1/Δ[sqrt(n)]), n%floor(sqrt(n+1))+1)]]`
-/

namespace A275481.P17528890352569590208
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊1 / (f3 (n + 1) - f3 n)⌋.toNat (n % Nat.sqrt (n + 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275481.P17528890352569590208

/-! ## A275481.P4524023881341266359

`comp[Δ[A257241(n+1)]]`
-/

namespace A275481.P4524023881341266359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257241 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275481.P4524023881341266359

/-! ## A275481.P6803794457927790931

`eq[0, char[Δ[A014430(n)]]]`
-/

namespace A275481.P6803794457927790931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275481.P6803794457927790931

/-! ## A275481.P17208020046593716589

`comp[Δ[A209518(comp[∑[n]])]]`
-/

namespace A275481.P17208020046593716589
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275481.P17208020046593716589

/-! ## A275481.P5317257228697534312

`eq[0, char[Δ[A014410(n+2)]]]`
-/

namespace A275481.P5317257228697534312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275481.P5317257228697534312

/-! ## A275481.P13932397563050718119

`comp[floor(acot(n)²)-A131085(n)]`
-/

namespace A275481.P13932397563050718119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - A131085 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275481.P13932397563050718119

/-! ## A275481.P13945428254488005282

`comp[Δ[A104712(n+2)]-2]+2`
-/

namespace A275481.P13945428254488005282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A275481.P13945428254488005282

/-! ## A275481.P16628023313560880777

`comp[Δ[A007318(floor(1/4*(floor(sqrt(4*n+1))-1)²)+1+n)]]`
-/

namespace A275481.P16628023313560880777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (⌊(1 : ℚ) / 4 * (((Nat.sqrt (4 * n + 1) : ℤ) - 1) ^ 2 : ℚ)⌋ + 1 + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275481.P16628023313560880777

/-! ## A275481.P15707373323183472925

`comp[A080233(A080036(n))]`
-/

namespace A275481.P15707373323183472925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A080036 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275481.P15707373323183472925

/-!
# A275488: Number of labeled forests of (free) trees such that exactly one tree is a path.

The programs for A275488, there is no canonical definition to state claims against.
-/

/-! ## A275488.P12114308237898852649

`(n+1)*A187041(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A275488.P12114308237898852649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 1 : ℤ) * A187041 (a (n - 1)).toNat

end

end A275488.P12114308237898852649

/-! ## A275488.P8442080713734586217

`A090695(A161006(n))`
-/

namespace A275488.P8442080713734586217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090695 (A161006 n).toNat

end

end A275488.P8442080713734586217

/-!
# A275489: Most consecutive numbers that can be covered with arithmetic progressions of differences 2i+1, 1<=i<=n.

The programs for A275489, there is no canonical definition to state claims against.
-/

/-! ## A275489.P18345103505609742221

`A175427(A334821(n)+1)`
-/

namespace A275489.P18345103505609742221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A334821 n + 1).toNat

end

end A275489.P18345103505609742221

/-! ## A275489.P12650447969868896322

`A322007(A035298(n)+1)+n`
-/

namespace A275489.P12650447969868896322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322007 (A035298 n + 1).toNat + (n : ℤ)

end

end A275489.P12650447969868896322

/-! ## A275489.P2474513198552384932

`∑[A000120(Δ[A024423(n+1)])]`
-/

namespace A275489.P2474513198552384932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024423 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275489.P2474513198552384932

/-! ## A275489.P13311669115578817130

`A156261(∑[(A240864(n+3)+1)²])`
-/

namespace A275489.P13311669115578817130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A240864 (n + 3) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275489.P13311669115578817130

/-! ## A275489.P4456250927989290085

`A260794(n+3)-A006530(A306320(n))`
-/

namespace A275489.P4456250927989290085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260794 (n + 3) - A006530 (A306320 n).toNat

end

end A275489.P4456250927989290085

/-!
# A275490: Square array of 5D pyramidal numbers, read by antidiagonals.

The programs for A275490, there is no canonical definition to state claims against.
-/

/-! ## A275490.P14272246609938598395

`or(A025466(A018000(n)), A261721(n+1))`
-/

namespace A275490.P14272246609938598395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 (A018000 n).toNat) (A261721 (n + 1))

end

end A275490.P14272246609938598395

/-! ## A275490.P6344861312354969371

`or(A124764(A135313(n)), A261721(n+1))`
-/

namespace A275490.P6344861312354969371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124764 (A135313 n).toNat) (A261721 (n + 1))

end

end A275490.P6344861312354969371

/-! ## A275490.P1898227768704023319

`A062264(n)/A055642(A022183(n))`
-/

namespace A275490.P1898227768704023319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062264 n : ℚ) / (A055642 (A022183 n).toNat : ℚ)

end

end A275490.P1898227768704023319

/-! ## A275490.P11688503625720052650

`A007318(eq[A113126(n), A185245(n)])`
-/

namespace A275490.P11688503625720052650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A275490.P11688503625720052650

/-! ## A275490.P15201149573560537189

`A007318(eq[A185245(n), A235706(n)])`
-/

namespace A275490.P15201149573560537189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A275490.P15201149573560537189

/-!
# A275491: Number of primitive weird numbers (A002975) below 10^n.

The programs for A275491, there is no canonical definition to state claims against.
-/

/-! ## A275491.P15946164261870215654

`∑[A275492(n)]-A275492(n)`
-/

namespace A275491.P15946164261870215654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A275492 n

end

end A275491.P15946164261870215654

/-! ## A275491.P16223815245251323637

`xor(A000005(A001710(n)), A142886(n))`
-/

namespace A275491.P16223815245251323637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (A001710 n).toNat) (A142886 n)

end

end A275491.P16223815245251323637

/-!
# A275492: Number of primitive weird numbers (A002975) between 10^n and 10^(n+1).

The programs for A275492, there is no canonical definition to state claims against.
-/

/-! ## A275492.P18154660192332281607

`Δ[A275491(n)]`
-/

namespace A275492.P18154660192332281607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275492.P18154660192332281607

/-! ## A275492.P18441728954475761325

`A275491(n+1)-A275491(n)`
-/

namespace A275492.P18441728954475761325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275491 (n + 1) - A275491 n

end

end A275492.P18441728954475761325

/-!
# A275493: Number of primitive weird numbers (A002975) below 2^n.

The programs for A275493, there is no canonical definition to state claims against.
-/

/-! ## A275493.P14367479505818876301

`∑[A275494(abs(1-n))]`
-/

namespace A275493.P14367479505818876301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275494 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275493.P14367479505818876301

/-! ## A275493.P12715101070833335395

`A275494(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A275493.P12715101070833335395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A275494 (n - 1) + a (n - 1)

end

end A275493.P12715101070833335395

/-! ## A275493.P3934725706763335600

`∑[A275494(n)]-A275494(n)`
-/

namespace A275493.P3934725706763335600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A275494 n

end

end A275493.P3934725706763335600

/-!
# A275494: Number of primitive weird numbers (A002975) between 2^n and 2^(n+1).

The programs for A275494, there is no canonical definition to state claims against.
-/

/-! ## A275494.P18429108073114232509

`A275493(n+1)-A275493(n)`
-/

namespace A275494.P18429108073114232509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275493 (n + 1) - A275493 n

end

end A275494.P18429108073114232509

/-! ## A275494.P667106742545599710

`Δ[A275493(n)]`
-/

namespace A275494.P667106742545599710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275494.P667106742545599710

/-! ## A275494.P8397621484753863553

`A025459(A049856(n)+A000122(n))`
-/

namespace A275494.P8397621484753863553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A049856 n + A000122 n).toNat

end

end A275494.P8397621484753863553

/-! ## A275494.P1231511215299623627

`A025459(A049856(n)+A011686(n+2))`
-/

namespace A275494.P1231511215299623627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A049856 n + A011686 (n + 2)).toNat

end

end A275494.P1231511215299623627

/-! ## A275494.P17601799835342980621

`A025459(A294890(n+2)+A049856(n))`
-/

namespace A275494.P17601799835342980621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A294890 (n + 2) + A049856 n).toNat

end

end A275494.P17601799835342980621

/-!
# A275495: a(n) = Sum_{k=2..n} floor(n/k) - 2*floor(n/(2*k)).

The programs for A275495, the canonical program `A275495.P8871957792591783515` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275495 has offset 1).

The definition of A275495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275495.P1287996416931999659

`∑[A325937(n+1)]`
-/

namespace A275495.P1287996416931999659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275495.P1287996416931999659

namespace A275495

/-- `∑[A325937(n+1)]` -/
def P1287996416931999659.Spec : Prop :=
  ∀ n, P1287996416931999659.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P6714550797112103574

`∑[A335021(n+1)]+n`
-/

namespace A275495.P6714550797112103574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A275495.P6714550797112103574

namespace A275495

/-- `∑[A335021(n+1)]+n` -/
def P6714550797112103574.Spec : Prop :=
  ∀ n, P6714550797112103574.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P18396979476970269230

`∑[A048272(n+1)-(-1)^n]`
-/

namespace A275495.P18396979476970269230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275495.P18396979476970269230

namespace A275495

/-- `∑[A048272(n+1)-(-1)^n]` -/
def P18396979476970269230.Spec : Prop :=
  ∀ n, P18396979476970269230.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P5497626985758483793

`A059851(n+1)-A059841(n)`
-/

namespace A275495.P5497626985758483793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - A059841 n

end

end A275495.P5497626985758483793

namespace A275495

/-- `A059851(n+1)-A059841(n)` -/
def P5497626985758483793.Spec : Prop :=
  ∀ n, P5497626985758483793.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P7167676971567788692

`A059851(n+1)-A056594(n)²`
-/

namespace A275495.P7167676971567788692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - A056594 n ^ 2

end

end A275495.P7167676971567788692

namespace A275495

/-- `A059851(n+1)-A056594(n)²` -/
def P7167676971567788692.Spec : Prop :=
  ∀ n, P7167676971567788692.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P16815651792101450368

`A059851(n+1)-∑[A033999(n)]`
-/

namespace A275495.P16815651792101450368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275495.P16815651792101450368

namespace A275495

/-- `A059851(n+1)-∑[A033999(n)]` -/
def P16815651792101450368.Spec : Prop :=
  ∀ n, P16815651792101450368.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P6189272679035425989

`∑[A048272(n+1)]-A059841(n)`
-/

namespace A275495.P6189272679035425989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A059841 n

end

end A275495.P6189272679035425989

namespace A275495

/-- `∑[A048272(n+1)]-A059841(n)` -/
def P6189272679035425989.Spec : Prop :=
  ∀ n, P6189272679035425989.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P15025979275745175005

`A059851(n+1)-Δ[A110654(n)]`
-/

namespace A275495.P15025979275745175005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - (f1 (n + 1) - f1 n)

end

end A275495.P15025979275745175005

namespace A275495

/-- `A059851(n+1)-Δ[A110654(n)]` -/
def P15025979275745175005.Spec : Prop :=
  ∀ n, P15025979275745175005.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P12129965904557749733

`A059851(n+1)-char[A005843(n)]`
-/

namespace A275495.P12129965904557749733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A275495.P12129965904557749733

namespace A275495

/-- `A059851(n+1)-char[A005843(n)]` -/
def P12129965904557749733.Spec : Prop :=
  ∀ n, P12129965904557749733.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P8871957792591783515

`A177235(n+1)+A091954(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A275495

/-- `A177235(n+1)+A091954(n+1)` -/
def P8871957792591783515.Spec : Prop :=
  ∀ n, P8871957792591783515.a n = A275495 (n + 1)

theorem P8871957792591783515.correct : P8871957792591783515.Spec := by
  intro n
  simp only [A275495, Nat.add_sub_cancel]

end A275495

/-! ## A275495.P11444859320516508088

`∑[A048272(n+1)]+A000035(n)-1`
-/

namespace A275495.P11444859320516508088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000035 n - 1)

end

end A275495.P11444859320516508088

namespace A275495

/-- `∑[A048272(n+1)]+A000035(n)-1` -/
def P11444859320516508088.Spec : Prop :=
  ∀ n, P11444859320516508088.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P4431558863679726499

`∑[2*A000035(n)-A325939(n+1)]`
-/

namespace A275495.P4431558863679726499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000035 n - A325939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275495.P4431558863679726499

namespace A275495

/-- `∑[2*A000035(n)-A325939(n+1)]` -/
def P4431558863679726499.Spec : Prop :=
  ∀ n, P4431558863679726499.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P1223495146889030301

`A325937(A028310(n)+1)+a(n-1)` with `a(0)=0`
-/

namespace A275495.P1223495146889030301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A325937 (A028310 n + 1).toNat + a (n - 1)

end

end A275495.P1223495146889030301

namespace A275495

/-- `A325937(A028310(n)+1)+a(n-1)` -/
def P1223495146889030301.Spec : Prop :=
  ∀ n, P1223495146889030301.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P8342395335813919926

`A002541(n+1)-2*A002541(A065033(n))`
-/

namespace A275495.P8342395335813919926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) - 2 * A002541 (A065033 n).toNat

end

end A275495.P8342395335813919926

namespace A275495

/-- `A002541(n+1)-2*A002541(A065033(n))` -/
def P8342395335813919926.Spec : Prop :=
  ∀ n, P8342395335813919926.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P4391452085320437119

`A059851(n+1)+A059851(n)-A332682(n+1)`
-/

namespace A275495.P4391452085320437119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) + (A059851 n - A332682 (n + 1))

end

end A275495.P4391452085320437119

namespace A275495

/-- `A059851(n+1)+A059851(n)-A332682(n+1)` -/
def P4391452085320437119.Spec : Prop :=
  ∀ n, P4391452085320437119.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P8748214341078310347

`A332682(n+2)-1`
-/

namespace A275495.P8748214341078310347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332682 (n + 2) - 1

end

end A275495.P8748214341078310347

namespace A275495

/-- `A332682(n+2)-1` -/
def P8748214341078310347.Spec : Prop :=
  ∀ n, P8748214341078310347.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P10450778307972875768

`A059851(n+1)-A000035(n+1)`
-/

namespace A275495.P10450778307972875768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) - A000035 (n + 1)

end

end A275495.P10450778307972875768

namespace A275495

/-- `A059851(n+1)-A000035(n+1)` -/
def P10450778307972875768.Spec : Prop :=
  ∀ n, P10450778307972875768.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P16970269666005226835

`A109613(n+1)-(A075997(n+1)+1)`
-/

namespace A275495.P16970269666005226835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1) - (A075997 (n + 1) + 1)

end

end A275495.P16970269666005226835

namespace A275495

/-- `A109613(n+1)-(A075997(n+1)+1)` -/
def P16970269666005226835.Spec : Prop :=
  ∀ n, P16970269666005226835.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P13533899292628018636

`A004526(n+1)+A004526(A271860(n+1))`
-/

namespace A275495.P13533899292628018636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A004526 (A271860 (n + 1)).toNat

end

end A275495.P13533899292628018636

namespace A275495

/-- `A004526(n+1)+A004526(A271860(n+1))` -/
def P13533899292628018636.Spec : Prop :=
  ∀ n, P13533899292628018636.a n = A275495 (n + 1)

end A275495

/-! ## A275495.P8274197591407572727

`A059851(n+1)+1-A328580(A328580(n))`
-/

namespace A275495.P8274197591407572727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (n + 1) + (1 - A328580 (A328580 n).toNat)

end

end A275495.P8274197591407572727

namespace A275495

/-- `A059851(n+1)+1-A328580(A328580(n))` -/
def P8274197591407572727.Spec : Prop :=
  ∀ n, P8274197591407572727.a n = A275495 (n + 1)

end A275495

/-!
# A275496: a(n) = n^2*(2*n^2 + (-1)^n).

The programs for A275496, the canonical program `A275496.P1064932271457429877` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275496 has offset 0).

The definition of A275496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(2*n²+(-1)^n)` (program `A275496.P1064932271457429877`, by `A275496.P1064932271457429877.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275496.P1064932271457429877

`n²*(2*n²+(-1)^n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A275496

/-- `n²*(2*n²+(-1)^n)` -/
def P1064932271457429877.Spec : Prop :=
  ∀ n, P1064932271457429877.a n = A275496 n

theorem P1064932271457429877.correct : P1064932271457429877.Spec := by
  intro n
  simp only [A275496]

end A275496

/-! ## A275496.P11764964615308695152

`A000217(A077221(n))`
-/

namespace A275496.P11764964615308695152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A077221 n).toNat

end

end A275496.P11764964615308695152

namespace A275496

/-- `A000217(A077221(n))` -/
def P11764964615308695152.Spec : Prop :=
  ∀ n, P11764964615308695152.a n = A275496 n

end A275496

/-! ## A275496.P336849916667628310

`C(char[2*n]+2*n², 2)`
-/

namespace A275496.P336849916667628310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 2 * n ^ 2) 2

end

end A275496.P336849916667628310

namespace A275496

/-- `C(char[2*n]+2*n², 2)` -/
def P336849916667628310.Spec : Prop :=
  ∀ n, (P336849916667628310.a n : ℤ) = A275496 n

end A275496

/-! ## A275496.P12100830294898173458

`lcm(n², A275543(n))`
-/

namespace A275496.P12100830294898173458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 : ℤ) (A275543 n)

end

end A275496.P12100830294898173458

namespace A275496

/-- `lcm(n², A275543(n))` -/
def P12100830294898173458.Spec : Prop :=
  ∀ n, (P12100830294898173458.a n : ℤ) = A275496 n

end A275496

/-! ## A275496.P10628435540690246443

`n²+A005843(n)²*A007590(n)`
-/

namespace A275496.P10628435540690246443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A005843 n ^ 2 * A007590 n

end

end A275496.P10628435540690246443

namespace A275496

/-- `n²+A005843(n)²*A007590(n)` -/
def P10628435540690246443.Spec : Prop :=
  ∀ n, P10628435540690246443.a n = A275496 n

end A275496

/-! ## A275496.P12559983753209484007

`A000217(abs(n%2-(2*(n²-1)+2)))`
-/

namespace A275496.P12559983753209484007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 |((n % 2 : ℕ) : ℤ) - (2 * ((n ^ 2 : ℤ) - 1) + 2)|.toNat

end

end A275496.P12559983753209484007

namespace A275496

/-- `A000217(abs(n%2-(2*(n²-1)+2)))` -/
def P12559983753209484007.Spec : Prop :=
  ∀ n, P12559983753209484007.a n = A275496 n

end A275496

/-! ## A275496.P4852607118220691724

`A000217(A187093(2*n))`
-/

namespace A275496.P4852607118220691724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A187093 (2 * n)).toNat

end

end A275496.P4852607118220691724

namespace A275496

/-- `A000217(A187093(2*n))` -/
def P4852607118220691724.Spec : Prop :=
  ∀ n, P4852607118220691724.a n = A275496 n

end A275496

/-! ## A275496.P9120047271345842983

`A000217(A139592(n)-n)`
-/

namespace A275496.P9120047271345842983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A139592 n - (n : ℤ)).toNat

end

end A275496.P9120047271345842983

namespace A275496

/-- `A000217(A139592(n)-n)` -/
def P9120047271345842983.Spec : Prop :=
  ∀ n, P9120047271345842983.a n = A275496 n

end A275496

/-! ## A275496.P939411380923252501

`A000217(A317298(n)-(n+1))`
-/

namespace A275496.P939411380923252501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A317298 n - (n + 1 : ℤ)).toNat

end

end A275496.P939411380923252501

namespace A275496

/-- `A000217(A317298(n)-(n+1))` -/
def P939411380923252501.Spec : Prop :=
  ∀ n, P939411380923252501.a n = A275496 n

end A275496

/-! ## A275496.P16727737463268920346

`A000217(A317298(n)-1-n)`
-/

namespace A275496.P16727737463268920346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A317298 n - 1 - (n : ℤ)).toNat

end

end A275496.P16727737463268920346

namespace A275496

/-- `A000217(A317298(n)-1-n)` -/
def P16727737463268920346.Spec : Prop :=
  ∀ n, P16727737463268920346.a n = A275496 n

end A275496

/-! ## A275496.P772064394688355659

`A000217(2*A035608(n)-n)`
-/

namespace A275496.P772064394688355659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A035608 n - (n : ℤ)).toNat

end

end A275496.P772064394688355659

namespace A275496

/-- `A000217(2*A035608(n)-n)` -/
def P772064394688355659.Spec : Prop :=
  ∀ n, P772064394688355659.a n = A275496 n

end A275496

/-! ## A275496.P6772187708974510807

`A000217(A215098(2*n)-n)`
-/

namespace A275496.P6772187708974510807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A215098 (2 * n) - (n : ℤ)).toNat

end

end A275496.P6772187708974510807

namespace A275496

/-- `A000217(A215098(2*n)-n)` -/
def P6772187708974510807.Spec : Prop :=
  ∀ n, P6772187708974510807.a n = A275496 n

end A275496

/-! ## A275496.P16475509221624844082

`A000217(A137932(n+1)+n²)`
-/

namespace A275496.P16475509221624844082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A137932 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A275496.P16475509221624844082

namespace A275496

/-- `A000217(A137932(n+1)+n²)` -/
def P16475509221624844082.Spec : Prop :=
  ∀ n, P16475509221624844082.a n = A275496 n

end A275496

/-! ## A275496.P17436673655648734632

`A000217(n²+2*A007590(n))`
-/

namespace A275496.P17436673655648734632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n ^ 2 : ℤ) + 2 * A007590 n).toNat

end

end A275496.P17436673655648734632

namespace A275496

/-- `A000217(n²+2*A007590(n))` -/
def P17436673655648734632.Spec : Prop :=
  ∀ n, P17436673655648734632.a n = A275496 n

end A275496

/-! ## A275496.P5297901957541349566

`A000217(2*n²-A000035(n))`
-/

namespace A275496.P5297901957541349566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((2 * n ^ 2 : ℤ) - A000035 n).toNat

end

end A275496.P5297901957541349566

namespace A275496

/-- `A000217(2*n²-A000035(n))` -/
def P5297901957541349566.Spec : Prop :=
  ∀ n, P5297901957541349566.a n = A275496 n

end A275496

/-! ## A275496.P7532272327862212643

`A000217(A255840(n+1)-(2*n+1))`
-/

namespace A275496.P7532272327862212643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A255840 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A275496.P7532272327862212643

namespace A275496

/-- `A000217(A255840(n+1)-(2*n+1))` -/
def P7532272327862212643.Spec : Prop :=
  ∀ n, P7532272327862212643.a n = A275496 n

end A275496

/-! ## A275496.P11378967924707425039

`A000217(A058331(n)-A000034(n))`
-/

namespace A275496.P11378967924707425039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A058331 n - A000034 n).toNat

end

end A275496.P11378967924707425039

namespace A275496

/-- `A000217(A058331(n)-A000034(n))` -/
def P11378967924707425039.Spec : Prop :=
  ∀ n, P11378967924707425039.a n = A275496 n

end A275496

/-! ## A275496.P16423622121947520727

`A000217(A033954(n)-A139596(n))`
-/

namespace A275496.P16423622121947520727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A033954 n - A139596 n).toNat

end

end A275496.P16423622121947520727

namespace A275496

/-- `A000217(A033954(n)-A139596(n))` -/
def P16423622121947520727.Spec : Prop :=
  ∀ n, P16423622121947520727.a n = A275496 n

end A275496

/-! ## A275496.P13884803653333587662

`A000217(A194274(A008486(n)-(n+1)))`
-/

namespace A275496.P13884803653333587662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A194274 (A008486 n - (n + 1 : ℤ)).toNat).toNat

end

end A275496.P13884803653333587662

namespace A275496

/-- `A000217(A194274(A008486(n)-(n+1)))` -/
def P13884803653333587662.Spec : Prop :=
  ∀ n, P13884803653333587662.a n = A275496 n

end A275496

/-! ## A275496.P10879558510623234165

`A276914(n²)`
-/

namespace A275496.P10879558510623234165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276914 (n ^ 2)

end

end A275496.P10879558510623234165

namespace A275496

/-- `A276914(n²)` -/
def P10879558510623234165.Spec : Prop :=
  ∀ n, P10879558510623234165.a n = A275496 n

end A275496

/-!
# A275497: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,-1), (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275497, there is no canonical definition to state claims against.
-/

/-! ## A275497.P14006823434654864566

`A275504(∑[4*n]+1)`
-/

namespace A275497.P14006823434654864566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275497.P14006823434654864566

/-! ## A275497.P2510154022127754761

`record[A003982(n)*A275504(n+1)]`
-/

namespace A275497.P2510154022127754761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A275504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275497.P2510154022127754761

/-! ## A275497.P8733807739898344459

`record[gcd(A112467(n), A275504(n+1))]`
-/

namespace A275497.P8733807739898344459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A275504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275497.P8733807739898344459

/-! ## A275497.P7561962232496244138

`record[A077606(n+1)*A275504(n+1)]`
-/

namespace A275497.P7561962232496244138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A275504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275497.P7561962232496244138

/-! ## A275497.P6398603663365629261

`record[A010052(2*n+1)*A275504(n+1)]`
-/

namespace A275497.P6398603663365629261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A275504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275497.P6398603663365629261

/-!
# A275498: Number of n X 2 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275498, the canonical program `A275498.P2392976845234229061` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275498 has offset 1).

The definition of A275498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275498.P2392976845234229061

`a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=9, a(2)=16, a(3)=28, a(4)=56, a(5)=104`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A275498

/-- `a(n-1)+2*a(n-2)-a(n-4)` -/
def P2392976845234229061.Spec : Prop :=
  ∀ n, P2392976845234229061.a n = A275498 (n + 1)

theorem P2392976845234229061.correct : P2392976845234229061.Spec := by
  intro n
  simp only [A275498, Nat.add_sub_cancel]

end A275498

/-! ## A275498.P17575467465980674738

`A275504(∑[n+2])`
-/

namespace A275498.P17575467465980674738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275498.P17575467465980674738

namespace A275498

/-- `A275504(∑[n+2])` -/
def P17575467465980674738.Spec : Prop :=
  ∀ n, P17575467465980674738.a n = A275498 (n + 1)

end A275498

/-! ## A275498.P10202317719030847607

`record[A275504(A000096(A126759(n)))]`
-/

namespace A275498.P10202317719030847607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275498.P10202317719030847607

namespace A275498

/-- `record[A275504(A000096(A126759(n)))]` -/
def P10202317719030847607.Spec : Prop :=
  ∀ n, P10202317719030847607.a n = A275498 (n + 1)

end A275498

/-! ## A275498.P3441623369963839413

`record[A275504(A000096(A152271(n)))]`
-/

namespace A275498.P3441623369963839413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A000096 (A152271 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275498.P3441623369963839413

namespace A275498

/-- `record[A275504(A000096(A152271(n)))]` -/
def P3441623369963839413.Spec : Prop :=
  ∀ n, P3441623369963839413.a n = A275498 (n + 1)

end A275498

/-! ## A275498.P8328426946418747720

`record[A275504(A000096(A328396(n)))]`
-/

namespace A275498.P8328426946418747720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A000096 (A328396 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275498.P8328426946418747720

namespace A275498

/-- `record[A275504(A000096(A328396(n)))]` -/
def P8328426946418747720.Spec : Prop :=
  ∀ n, P8328426946418747720.a n = A275498 (n + 1)

end A275498

/-!
# A275499: Number of n X 3 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,0) or (-1,-1) and new values introduced in order 0..2.

The programs for A275499, there is no canonical definition to state claims against.
-/

/-! ## A275499.P8824441146822882204

`A275504(∑[n+3]+1)`
-/

namespace A275499.P8824441146822882204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275499.P8824441146822882204

/-! ## A275499.P17878944958788435642

`or(A000007(n), A275504(A034856(n+2)))`
-/

namespace A275499.P17878944958788435642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275504 (A034856 (n + 2)).toNat)

end

end A275499.P17878944958788435642

/-! ## A275499.P10903411873763740696

`A275504(A034856(n+2))+A083912(2*n+1)`
-/

namespace A275499.P10903411873763740696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (A034856 (n + 2)).toNat + A083912 (2 * n + 1)

end

end A275499.P10903411873763740696

