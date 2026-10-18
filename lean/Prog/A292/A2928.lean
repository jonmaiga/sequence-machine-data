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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
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
# A292800: Expansion of 1/(1 - x - x^3/(1 - x^5 - x^7/(1 - x^9 - x^11/(1 - x^13 - x^15/(1 - ...))))), a continued fraction.

The programs for A292800, there is no canonical definition to state claims against.
-/

/-! ## A292800.P15163461135117271883

`A185283(ceil(A052921(n)/4))`
-/

namespace A292800.P15163461135117271883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 ⌈(A052921 n : ℚ) / 4⌉.toNat

end

end A292800.P15163461135117271883

/-! ## A292800.P8768680338099361754

`A055086(round(sqrt(A279558(n))))`
-/

namespace A292800.P8768680338099361754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (SequenceMachineLib.roundAway (Real.sqrt (A279558 n : ℝ))).toNat

end

end A292800.P8768680338099361754

/-! ## A292800.P18407626148194450834

`A110654(A185283(A052921(n)))`
-/

namespace A292800.P18407626148194450834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A185283 (A052921 n).toNat).toNat

end

end A292800.P18407626148194450834

/-! ## A292800.P10668249565061410479

`A227568(A247291(n))`
-/

namespace A292800.P10668249565061410479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A247291 n).toNat

end

end A292800.P10668249565061410479

/-! ## A292800.P1744923250922496286

`A276571(A248890(n+1))`
-/

namespace A292800.P1744923250922496286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A248890 (n + 1)).toNat

end

end A292800.P1744923250922496286

/-!
# A292804: Number A(n,k) of sets of nonempty words with a total of n letters over k-ary alphabet; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A292804, there is no canonical definition to state claims against.
-/

/-! ## A292804.P15396737177246301153

`and(A004525(A005169(n)), A255961(n))`
-/

namespace A292804.P15396737177246301153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004525 (A005169 n).toNat) (A255961 n)

end

end A292804.P15396737177246301153

/-! ## A292804.P7095800248764891842

`and(A004525(A005169(n)), A297328(n))`
-/

namespace A292804.P7095800248764891842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004525 (A005169 n).toNat) (A297328 n)

end

end A292804.P7095800248764891842

/-! ## A292804.P7665125737332563312

`A255517(comp[∑[n]]%A057638(n+1))`
-/

namespace A292804.P7665125737332563312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A057638 (n + 1))).toNat

end

end A292804.P7665125737332563312

/-! ## A292804.P15648840358650071597

`A255517(comp[∑[n]])%A270831(2*n+5)`
-/

namespace A292804.P15648840358650071597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255517 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A270831 (2 * n + 5))

end

end A292804.P15648840358650071597

/-! ## A292804.P14078528127234195876

`and(A297328(n), A357167(A003242(n)))`
-/

namespace A292804.P14078528127234195876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A297328 n) (A357167 (A003242 n).toNat)

end

end A292804.P14078528127234195876

/-!
# A292805: Number of sets of nonempty words with a total of n letters over n-ary alphabet.

The programs for A292805, there is no canonical definition to state claims against.
-/

/-! ## A292805.P11682851537206760385

`A292804(∑[4*n])`
-/

namespace A292805.P11682851537206760385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292805.P11682851537206760385

/-! ## A292805.P4711233076124030866

`A292804(A046092(n))+A185246(n)`
-/

namespace A292805.P4711233076124030866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A046092 n).toNat + A185246 n

end

end A292805.P4711233076124030866

/-! ## A292805.P16071907563274637596

`gcd(A000038(n), A292804(A046092(n)))`
-/

namespace A292805.P16071907563274637596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292804 (A046092 n).toNat)

end

end A292805.P16071907563274637596

/-! ## A292805.P15183630731036780555

`lcm(A033999(n), A292804(A046092(n)))`
-/

namespace A292805.P15183630731036780555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292804 (A046092 n).toNat)

end

end A292805.P15183630731036780555

/-! ## A292805.P8809286717275568451

`or(A000007(n), A292804(A046092(n)))`
-/

namespace A292805.P8809286717275568451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292804 (A046092 n).toNat)

end

end A292805.P8809286717275568451

/-!
# A292809: G.f. A(x) satisfies: A( 2*x - A(x) ) = 2*x - A(x) + x^2.

The programs for A292809, there is no canonical definition to state claims against.
-/

/-! ## A292809.P8283129094485454497

`abs(A138740(n+1))`
-/

namespace A292809.P8283129094485454497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138740 (n + 1)|

end

end A292809.P8283129094485454497

/-! ## A292809.P5832386003244199654

`A276370(A004273(n)+2-n)`
-/

namespace A292809.P5832386003244199654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276370 (A004273 n + (2 - (n : ℤ))).toNat

end

end A292809.P5832386003244199654

/-! ## A292809.P17947014688533913055

`A276370(2-(n-A004273(n)))`
-/

namespace A292809.P17947014688533913055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276370 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A292809.P17947014688533913055

/-! ## A292809.P17976258154272300045

`lcm(A057077(n), A138740(n+1))`
-/

namespace A292809.P17976258154272300045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A138740 (n + 1))

end

end A292809.P17976258154272300045

/-! ## A292809.P618364869616075009

`gcd(and(1, A341590(n)), A138740(n+1))`
-/

namespace A292809.P618364869616075009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.land 1 (A341590 n)) (A138740 (n + 1))

end

end A292809.P618364869616075009

/-!
# A292810: G.f. A(x) satisfies: A( 2*x - A(x) - x^2 ) = 2*x - A(x).

The programs for A292810, there is no canonical definition to state claims against.
-/

/-! ## A292810.P15389020504446364764

`floor(root(A337477(n), π))*ceil(2^(n-1))`
-/

namespace A292810.P15389020504446364764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337477 n : ℝ) ^ (1 / Real.pi)⌋ * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A292810.P15389020504446364764

/-! ## A292810.P3359439113304236893

`A026741(2^n*A172387(n))`
-/

namespace A292810.P3359439113304236893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((2 ^ n : ℤ) * A172387 n).toNat

end

end A292810.P3359439113304236893

/-!
# A292816: b(0) = 1, b(2*n-1) = 1/(1+1^2/(1+1^2/(1+2^2/(1+2^2/(...+(n-1)^2/(1+n^2)))))) and b(2*n) = 1/(1+1^2/(1+1^2/(1+2^2/(1+2^2/(...+n^2/(1+n^2)))))). a(n) is the numerator of b(n).

The programs for A292816, there is no canonical definition to state claims against.
-/

/-! ## A292816.P10833241929095940280

`∏{p}[A302039(A006153(n)), #]`
-/

namespace A292816.P10833241929095940280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A006153 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A292816.P10833241929095940280

/-! ## A292816.P11520229537724422586

`∏{p}[A050055(A038718(n+1))², #]`
-/

namespace A292816.P11520229537724422586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050055 (A038718 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A292816.P11520229537724422586

/-! ## A292816.P14592731584384115737

`A126209(A002577(n))+A000975(n)`
-/

namespace A292816.P14592731584384115737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126209 (A002577 n).toNat + A000975 n

end

end A292816.P14592731584384115737

/-!
# A292830: a(1) = 1, for n>=2, a(n) = B(2*n-1, n), where B(n, x) is the Bernoulli polynomial.

The programs for A292830, there is no canonical definition to state claims against.
-/

/-! ## A292830.P5152085131719869697

`Δ[n²]*A249459(n)`
-/

namespace A292830.P5152085131719869697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A249459 n

end

end A292830.P5152085131719869697

/-! ## A292830.P18087533464212653324

`Δ[n²]*A352981(2*n)`
-/

namespace A292830.P18087533464212653324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A352981 (2 * n)

end

end A292830.P18087533464212653324

/-! ## A292830.P6426785877899982272

`(2*n+1)*A215083(A106232(n+1))`
-/

namespace A292830.P6426785877899982272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A215083 (A106232 (n + 1)).toNat

end

end A292830.P6426785877899982272

/-! ## A292830.P5828457186431130960

`∑{d}[2^n, A001222(#)^(2*n)]*A005408(n)`
-/

namespace A292830.P5828457186431130960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A001222 d ^ (2 * n)) * A005408 n

end

end A292830.P5828457186431130960

/-! ## A292830.P2298334873553513151

`∑{d}[2^n, A001222(#)^(2*n)]*A004442(A005843(n))`
-/

namespace A292830.P2298334873553513151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A001222 d ^ (2 * n)) * A004442 (A005843 n).toNat

end

end A292830.P2298334873553513151

/-!
# A292831: Expansion of 1 - 2*x - 2*x^2/(1 - 3*x - 4*x^2/(1 - 4*x - 6*x^2/(1 - 5*x - 8*x^2/(1 - 6*x - 10*x^2/(...))))), a continued fraction.

The programs for A292831, there is no canonical definition to state claims against.
-/

/-! ## A292831.P15838288635556540341

`2-A246811(A374848(n))`
-/

namespace A292831.P15838288635556540341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A246811 (A374848 n).toNat

end

end A292831.P15838288635556540341

/-! ## A292831.P13015785962352796251

`A008683(A226197(2*n+1))-A226170(n)`
-/

namespace A292831.P13015785962352796251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A226197 (2 * n + 1)).toNat - A226170 n

end

end A292831.P13015785962352796251

/-!
# A292834: Numbers m, not powers of 2, such that the least prime factor of 2^m + 1 is congruent to 1 (mod m).

The programs for A292834, there is no canonical definition to state claims against.
-/

/-! ## A292834.P5741165066907793225

`A335659(A144585(n+1))`
-/

namespace A292834.P5741165066907793225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335659 (A144585 (n + 1)).toNat

end

end A292834.P5741165066907793225

/-!
# A292835: Triangle C(nu,m) read by rows: the number of n-color odd compositions of nu into m parts.

The programs for A292835, there is no canonical definition to state claims against.
-/

/-! ## A292835.P11274873220691715699

`A334202(A016993(A111594(n))²)`
-/

namespace A292835.P11274873220691715699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334202 (A016993 (A111594 n).toNat ^ 2).toNat

end

end A292835.P11274873220691715699

/-! ## A292835.P4021729660608127466

`A007953(A119467(n)*A326474(n))`
-/

namespace A292835.P4021729660608127466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A119467 n * A326474 n).toNat

end

end A292835.P4021729660608127466

/-! ## A292835.P476631324170691481

`A007953(A166353(n)*A326474(n))`
-/

namespace A292835.P476631324170691481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A166353 n * A326474 n).toNat

end

end A292835.P476631324170691481

/-! ## A292835.P16611484546301461837

`A007953(A179898(n)*A326474(n))`
-/

namespace A292835.P16611484546301461837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A179898 n * A326474 n).toNat

end

end A292835.P16611484546301461837

/-! ## A292835.P8995674087336817691

`A117707(A206294(n)%A225750(n))`
-/

namespace A292835.P8995674087336817691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (Int.tmod (A206294 n) (A225750 n)).toNat

end

end A292835.P8995674087336817691

/-!
# A292836: a(n) is the minimum number of steps to a terminal state during the following procedure: start with n piles each containing one stone; any number of stones can be transferred between piles of equal size.

The programs for A292836, there is no canonical definition to state claims against.
-/

/-! ## A292836.P4734489706117502803

`∑[A036581(A154357(n)-2)]`
-/

namespace A292836.P4734489706117502803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (A154357 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292836.P4734489706117502803

/-! ## A292836.P13760624947378362703

`∑[A036581(A195023(n)+A051876(n))]`
-/

namespace A292836.P13760624947378362703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 (A195023 n + A051876 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292836.P13760624947378362703

/-! ## A292836.P17704940925174826674

`A010051(A068911(n))+A004526(A047279(n+1))`
-/

namespace A292836.P17704940925174826674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A068911 n).toNat + A004526 (A047279 (n + 1)).toNat

end

end A292836.P17704940925174826674

/-! ## A292836.P3365809403049002921

`A010051(A182751(n+1))+A004526(A047279(n+1))`
-/

namespace A292836.P3365809403049002921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A182751 (n + 1)).toNat + A004526 (A047279 (n + 1)).toNat

end

end A292836.P3365809403049002921

/-! ## A292836.P2397472434557627432

`n-A305054(A018321(n+1))`
-/

namespace A292836.P2397472434557627432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A305054 (A018321 (n + 1)).toNat

end

end A292836.P2397472434557627432

/-!
# A292837: Euler transform of powers of 10.

The programs for A292837, there is no canonical definition to state claims against.
-/

/-! ## A292837.P4523900620650309687

`A144074(A155212(n+7)-3)`
-/

namespace A292837.P4523900620650309687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A155212 (n + 7) - 3).toNat

end

end A292837.P4523900620650309687

/-! ## A292837.P12245348740104226250

`A144074(A000217(n+11)-11)`
-/

namespace A292837.P12245348740104226250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A000217 (n + 11) - 11).toNat

end

end A292837.P12245348740104226250

/-! ## A292837.P11230359481187368567

`A144074(A055998(n+8)-A001489(n+3))`
-/

namespace A292837.P11230359481187368567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 8) - A001489 (n + 3)).toNat

end

end A292837.P11230359481187368567

/-! ## A292837.P8645773771725519118

`A144074(A167614(n+8)+A004273(n+4))`
-/

namespace A292837.P8645773771725519118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A167614 (n + 8) + A004273 (n + 4)).toNat

end

end A292837.P8645773771725519118

/-! ## A292837.P10531140017155549882

`A144074(A008586(n+7)+A000096(n+6))`
-/

namespace A292837.P10531140017155549882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A008586 (n + 7) + A000096 (n + 6)).toNat

end

end A292837.P10531140017155549882

/-! ## A292837.P9544377535725234739

`A144074(A027379(n+7)+A004273(n+7))`
-/

namespace A292837.P9544377535725234739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A027379 (n + 7) + A004273 (n + 7)).toNat

end

end A292837.P9544377535725234739

/-!
# A292838: Number of sets of nonempty words with a total of n letters over quaternary alphabet.

The programs for A292838, there is no canonical definition to state claims against.
-/

/-! ## A292838.P312777518401272578

`record[A292804(A052905(n))]`
-/

namespace A292838.P312777518401272578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292838.P312777518401272578

/-! ## A292838.P10996217026969824573

`A292804(A052905(n+2))`
-/

namespace A292838.P10996217026969824573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A052905 (n + 2)).toNat

end

end A292838.P10996217026969824573

/-! ## A292838.P1198292740754056179

`A292804(eq[4, A025581(n)])`
-/

namespace A292838.P1198292740754056179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292838.P1198292740754056179

/-! ## A292838.P9931157995788165339

`record[A292804(A055999(n)+1)]`
-/

namespace A292838.P9931157995788165339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292838.P9931157995788165339

/-! ## A292838.P1986569015049082458

`A292804(A046691(n+3)-1)`
-/

namespace A292838.P1986569015049082458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A046691 (n + 3) - 1).toNat

end

end A292838.P1986569015049082458

/-! ## A292838.P10046877245559738358

`record[A292804(abs(A046691(n))-1)]`
-/

namespace A292838.P10046877245559738358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292838.P10046877245559738358

/-! ## A292838.P2731280644434892979

`record[A292804(A027379(n+1)-2)]`
-/

namespace A292838.P2731280644434892979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292838.P2731280644434892979

/-! ## A292838.P13175453405668226187

`record[A292804(A055998(n+1)-2)]`
-/

namespace A292838.P13175453405668226187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292838.P13175453405668226187

/-! ## A292838.P14683353791679593770

`record[A292804(A034856(n+2)-3)]`
-/

namespace A292838.P14683353791679593770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292838.P14683353791679593770

/-!
# A292839: Number of sets of nonempty words with a total of n letters over 5-ary alphabet.

The programs for A292839, there is no canonical definition to state claims against.
-/

/-! ## A292839.P11263256875926001121

`record[A292804(A055999(n))]`
-/

namespace A292839.P11263256875926001121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292839.P11263256875926001121

/-! ## A292839.P9579920210763449517

`A292804(A055999(n+3))`
-/

namespace A292839.P9579920210763449517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A055999 (n + 3)).toNat

end

end A292839.P9579920210763449517

/-! ## A292839.P17333431987814018818

`A292804(A134227(n+4))`
-/

namespace A292839.P17333431987814018818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A134227 (n + 4)).toNat

end

end A292839.P17333431987814018818

/-! ## A292839.P13408826346057546623

`A292804(Δ[A023551(n+1)])`
-/

namespace A292839.P13408826346057546623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (f1 (n + 1) - f1 n).toNat

end

end A292839.P13408826346057546623

/-! ## A292839.P13732134501224094050

`record[A292804(A052905(n)-1)]`
-/

namespace A292839.P13732134501224094050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292839.P13732134501224094050

/-! ## A292839.P9737158719431011017

`record[A292804(A028563(n)/2)]`
-/

namespace A292839.P9737158719431011017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (SequenceMachineLib.roundAway ((A028563 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292839.P9737158719431011017

/-! ## A292839.P17995057992230633387

`record[A292804(A027379(n)+n)]`
-/

namespace A292839.P17995057992230633387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292839.P17995057992230633387

/-! ## A292839.P6348126280327818007

`record[A292804(A055998(n)+n)]`
-/

namespace A292839.P6348126280327818007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292839.P6348126280327818007

/-! ## A292839.P16905510138192959388

`record[A292804(abs(2-A046691(n)))]`
-/

namespace A292839.P16905510138192959388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292839.P16905510138192959388

/-! ## A292839.P8898654260318329075

`record[A292804(A046691(n+1)-2)]`
-/

namespace A292839.P8898654260318329075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A046691 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292839.P8898654260318329075

/-!
# A292840: Number of sets of nonempty words with a total of n letters over 6-ary alphabet.

The programs for A292840, there is no canonical definition to state claims against.
-/

/-! ## A292840.P17466401034286759191

`A292804(eq[6, A025581(n)])`
-/

namespace A292840.P17466401034286759191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292840.P17466401034286759191

/-! ## A292840.P1717260296845272167

`A292804(A000096(n+6)-6)`
-/

namespace A292840.P1717260296845272167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A000096 (n + 6) - 6).toNat

end

end A292840.P1717260296845272167

/-! ## A292840.P2793668056710800006

`A292804(A167499(n+6)-12)`
-/

namespace A292840.P2793668056710800006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A167499 (n + 6) - 12).toNat

end

end A292840.P2793668056710800006

/-! ## A292840.P8785803954788654586

`A292804(eq[7, A004736(n+1)])`
-/

namespace A292840.P8785803954788654586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292840.P8785803954788654586

/-! ## A292840.P10637362982884081249

`record[A292804(abs(A046691(n)+n))]`
-/

namespace A292840.P10637362982884081249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 |A046691 n + (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292840.P10637362982884081249

/-! ## A292840.P10914992653420201979

`A292804(Δ[A023551(n+2)]-1)`
-/

namespace A292840.P10914992653420201979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (f1 (n + 1) - f1 n - 1).toNat

end

end A292840.P10914992653420201979

/-! ## A292840.P2429360271308085569

`record[A292804(A055999(n+1)-1)]`
-/

namespace A292840.P2429360271308085569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A055999 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292840.P2429360271308085569

/-! ## A292840.P12633609602014672012

`record[A292804(A134227(n+1)-1)]`
-/

namespace A292840.P12633609602014672012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A134227 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292840.P12633609602014672012

/-! ## A292840.P1711186923691409232

`record[A292804(A052905(n+1)-2)]`
-/

namespace A292840.P1711186923691409232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A052905 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292840.P1711186923691409232

/-! ## A292840.P3688335713392692319

`record[A292804(A027379(n+2)-4)]`
-/

namespace A292840.P3688335713392692319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A027379 (n + 2) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292840.P3688335713392692319

/-!
# A292841: Number of sets of nonempty words with a total of n letters over 7-ary alphabet.

The programs for A292841, there is no canonical definition to state claims against.
-/

/-! ## A292841.P12112148889242754583

`A292804(A155212(n+4))`
-/

namespace A292841.P12112148889242754583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A155212 (n + 4)).toNat

end

end A292841.P12112148889242754583

/-! ## A292841.P1177409970294230849

`A292804(eq[7, A025581(n)])`
-/

namespace A292841.P1177409970294230849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292841.P1177409970294230849

/-! ## A292841.P16946018795788279936

`A292804(A000096(n+7)-7)`
-/

namespace A292841.P16946018795788279936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A000096 (n + 7) - 7).toNat

end

end A292841.P16946018795788279936

/-! ## A292841.P17354965018051602701

`A292804(A000217(n+8)-8)`
-/

namespace A292841.P17354965018051602701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A000217 (n + 8) - 8).toNat

end

end A292841.P17354965018051602701

/-! ## A292841.P8671721461823046156

`A292804(eq[8, A004736(n+1)])`
-/

namespace A292841.P8671721461823046156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292841.P8671721461823046156

/-!
# A292842: Number of sets of nonempty words with a total of n letters over 8-ary alphabet.

The programs for A292842, there is no canonical definition to state claims against.
-/

/-! ## A292842.P1504253263823322248

`A292804(A055999(n+6)-3)`
-/

namespace A292842.P1504253263823322248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A055999 (n + 6) - 3).toNat

end

end A292842.P1504253263823322248

/-! ## A292842.P15998940718439146185

`A292804(A000096(n+8)-8)`
-/

namespace A292842.P15998940718439146185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A000096 (n + 8) - 8).toNat

end

end A292842.P15998940718439146185

/-! ## A292842.P4908434151059855848

`A292804(A000217(n+9)-9)`
-/

namespace A292842.P4908434151059855848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A000217 (n + 9) - 9).toNat

end

end A292842.P4908434151059855848

/-! ## A292842.P17273663283000433318

`A292804(A016969(n+4)+A000124(n+3))`
-/

namespace A292842.P17273663283000433318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A016969 (n + 4) + A000124 (n + 3)).toNat

end

end A292842.P17273663283000433318

/-! ## A292842.P13210672760029443106

`A292804(A005408(n+4)+A000096(n+6))`
-/

namespace A292842.P13210672760029443106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A005408 (n + 4) + A000096 (n + 6)).toNat

end

end A292842.P13210672760029443106

/-! ## A292842.P7495025041137571053

`A292804(A008574(n+5)+A000124(n+5))`
-/

namespace A292842.P7495025041137571053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A008574 (n + 5) + A000124 (n + 5)).toNat

end

end A292842.P7495025041137571053

/-!
# A292843: Number of sets of nonempty words with a total of n letters over 9-ary alphabet.

The programs for A292843, there is no canonical definition to state claims against.
-/

/-! ## A292843.P7379836536877151290

`A292804(A052905(n+7)-5)`
-/

namespace A292843.P7379836536877151290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A052905 (n + 7) - 5).toNat

end

end A292843.P7379836536877151290

/-! ## A292843.P14586459459679116184

`A292804(A000217(n+10)-10)`
-/

namespace A292843.P14586459459679116184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A000217 (n + 10) - 10).toNat

end

end A292843.P14586459459679116184

/-! ## A292843.P3398368796903792548

`A292804(A161680(n+11)-10)`
-/

namespace A292843.P3398368796903792548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A161680 (n + 11) - 10).toNat

end

end A292843.P3398368796903792548

/-! ## A292843.P5654826477510935786

`A292804(A000124(n+9)+n-1)`
-/

namespace A292843.P5654826477510935786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A000124 (n + 9) + ((n : ℤ) - 1)).toNat

end

end A292843.P5654826477510935786

/-! ## A292843.P3586318700004485465

`A292804(A005408(n)+A000096(n+7)+9)`
-/

namespace A292843.P3586318700004485465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A005408 n + (A000096 (n + 7) + 9)).toNat

end

end A292843.P3586318700004485465

/-!
# A292844: Number of sets of nonempty words with a total of n letters over 10-ary alphabet.

The programs for A292844, there is no canonical definition to state claims against.
-/

/-! ## A292844.P9831248196367664970

`A292804(eq[10, A025581(n)])`
-/

namespace A292844.P9831248196367664970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292844.P9831248196367664970

/-! ## A292844.P17678620726770899141

`A292804(A052905(n+8)-6)`
-/

namespace A292844.P17678620726770899141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A052905 (n + 8) - 6).toNat

end

end A292844.P17678620726770899141

/-! ## A292844.P2202749713172400333

`A292804(A000217(n+11)-11)`
-/

namespace A292844.P2202749713172400333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A000217 (n + 11) - 11).toNat

end

end A292844.P2202749713172400333

/-! ## A292844.P14523984294690397341

`A292804(eq[11, A004736(n+1)])`
-/

namespace A292844.P14523984294690397341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A292844.P14523984294690397341

/-! ## A292844.P12278243735154665087

`A292804(A005408(n+5)+A000096(n+8))`
-/

namespace A292844.P12278243735154665087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A005408 (n + 5) + A000096 (n + 8)).toNat

end

end A292844.P12278243735154665087

/-!
# A292845: Total number of words beginning with the first letter of an n-ary alphabet in all sets of nonempty words with a total of n letters.

The programs for A292845, there is no canonical definition to state claims against.
-/

/-! ## A292845.P9722257388823371878

`C(round(sqrt(A361003((n+2)^n))), 2)`
-/

namespace A292845.P9722257388823371878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A361003 ((n + 2) ^ n) : ℝ))).toNat 2

end

end A292845.P9722257388823371878

/-!
# A292848: a(n) is the smallest prime of form (1/2)*((1 + sqrt(2*n))^k + (1 - sqrt(2*n))^k).

The programs for A292848, there is no canonical definition to state claims against.
-/

/-! ## A292848.P16402607101184246661

`A288212(n+1)%A133263(A158661(n))`
-/

namespace A292848.P16402607101184246661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288212 (n + 1)) (A133263 (A158661 n).toNat)

end

end A292848.P16402607101184246661

/-!
# A292849: a(n) is the least positive k such that the Hamming weight of k equals the Hamming weight of k*n.

The programs for A292849, there is no canonical definition to state claims against.
-/

/-! ## A292849.P862542326049673992

`A115873(n+1)%A180012(A069489(2*n+3))`
-/

namespace A292849.P862542326049673992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115873 (n + 1)) (A180012 (A069489 (2 * n + 3)).toNat)

end

end A292849.P862542326049673992

/-! ## A292849.P11991209833607059575

`A115873(n+1)%A022145(A039811(n+1))`
-/

namespace A292849.P11991209833607059575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115873 (n + 1)) (A022145 (A039811 (n + 1)).toNat)

end

end A292849.P11991209833607059575

/-!
# A292851: Fibonacci numbers that are also generalized octagonal numbers.

The programs for A292851, there is no canonical definition to state claims against.
-/

/-! ## A292851.P6500353454706517647

`A247309(∑[∏{e}[n+1, (-C(2, #))^#]²])`
-/

namespace A292851.P6500353454706517647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.choose 2 (Nat.factorization (f2 n) p) : ℤ)) ^ Nat.factorization (f2 n) p) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292851.P6500353454706517647

/-!
# A292852: Spherical congruence-uniform lattices on n unlabeled nodes.

The programs for A292852, there is no canonical definition to state claims against.
-/

/-! ## A292852.P8584260288537429482

`A324845(A000602(n))-A000673(n)`
-/

namespace A292852.P8584260288537429482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324845 (A000602 n).toNat - A000673 n

end

end A292852.P8584260288537429482

/-! ## A292852.P4986811390165289876

`A008615(A257844(n)+A013588(n+1))`
-/

namespace A292852.P4986811390165289876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A257844 n + A013588 (n + 1)).toNat

end

end A292852.P4986811390165289876

/-! ## A292852.P9403929447052442811

`A112689(A268411(n)+A051236(n+1))`
-/

namespace A292852.P9403929447052442811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A268411 n + A051236 (n + 1)).toNat

end

end A292852.P9403929447052442811

/-! ## A292852.P15329494675601810397

`A141088(n+1)%A143182(A014137(n))`
-/

namespace A292852.P15329494675601810397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141088 (n + 1)) (A143182 (A014137 n).toNat)

end

end A292852.P15329494675601810397

/-! ## A292852.P10285029631278673534

`and(A053251(A376776(n+1)), A090338(n))`
-/

namespace A292852.P10285029631278673534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053251 (A376776 (n + 1)).toNat) (A090338 n)

end

end A292852.P10285029631278673534

/-!
# A292853: Congruence-uniform lattices whose alternate order is a lattice.

The programs for A292853, there is no canonical definition to state claims against.
-/

/-! ## A292853.P9212260898391696238

`A003056(A010551(n))-A181586(n)`
-/

namespace A292853.P9212260898391696238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A010551 n).toNat - A181586 n

end

end A292853.P9212260898391696238

/-! ## A292853.P10554498756701779798

`A335235(sqrt(A001256(n)))-A000677(n)`
-/

namespace A292853.P10554498756701779798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (SequenceMachineLib.roundAway (Real.sqrt (A001256 n : ℝ))).toNat - A000677 n

end

end A292853.P10554498756701779798

/-! ## A292853.P11624911239770489303

`A003002(A304976(n+1)+A303940(n))`
-/

namespace A292853.P11624911239770489303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A304976 (n + 1) + A303940 n).toNat

end

end A292853.P11624911239770489303

/-!
# A292854: Expansion of 1/(1 + x + x/(1 + x^2 + x^2/(1 + x^3 + x^3/(1 + x^4 + x^4/(1 + ...))))), a continued fraction.

The programs for A292854, there is no canonical definition to state claims against.
-/

/-! ## A292854.P12835086355316110231

`ceil(cosh(sin(n)))*A083365(n)`
-/

namespace A292854.P12835086355316110231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A083365 n

end

end A292854.P12835086355316110231

/-! ## A292854.P12776841994429695872

`record[A112171(n)]/(-1)^n`
-/

namespace A292854.P12776841994429695872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / ((-1) ^ n : ℚ)

end

end A292854.P12776841994429695872

/-! ## A292854.P2382173568198845984

`A001935(n)*A280560(n)`
-/

namespace A292854.P2382173568198845984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n * A280560 n

end

end A292854.P2382173568198845984

/-! ## A292854.P15377884296187939271

`abs(A083365(n))*A280560(n)`
-/

namespace A292854.P15377884296187939271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 n| * A280560 n

end

end A292854.P15377884296187939271

/-! ## A292854.P10717698976306352045

`A000122(n²)*A083365(n)`
-/

namespace A292854.P10717698976306352045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A083365 n

end

end A292854.P10717698976306352045

/-! ## A292854.P17198501933588887048

`A036452(n+1)*A083365(n)`
-/

namespace A292854.P17198501933588887048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A083365 n

end

end A292854.P17198501933588887048

/-! ## A292854.P5638578398048997285

`A036453(n+1)*A083365(n)`
-/

namespace A292854.P5638578398048997285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A083365 n

end

end A292854.P5638578398048997285

/-! ## A292854.P1175843374468110245

`(1-A057428(n))*A083365(n)`
-/

namespace A292854.P1175843374468110245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A083365 n

end

end A292854.P1175843374468110245

/-! ## A292854.P951102498493483085

`(2-A000007(n))*A083365(n)`
-/

namespace A292854.P951102498493483085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A083365 n

end

end A292854.P951102498493483085

/-!
# A292855: Expansion of 1/(1 - x - 2*x^2/(1 - 3*x^3 - 4*x^4/(1 - 5*x^5 - 6*x^6/(1 - 7*x^7 - 8*x^8/(1 - ...))))), a continued fraction.

The programs for A292855, there is no canonical definition to state claims against.
-/

/-! ## A292855.P14822238926772506147

`A087836(A149624(n))`
-/

namespace A292855.P14822238926772506147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (A149624 n).toNat

end

end A292855.P14822238926772506147

/-! ## A292855.P14990870233248929804

`A265166(A032160(n+2))`
-/

namespace A292855.P14990870233248929804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265166 (A032160 (n + 2)).toNat

end

end A292855.P14990870233248929804

/-! ## A292855.P7122666018340757617

`A324761(A032143(n+2))`
-/

namespace A292855.P7122666018340757617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (A032143 (n + 2)).toNat

end

end A292855.P7122666018340757617

/-! ## A292855.P7055849236944441405

`or(1, A046155(A047006(n)))`
-/

namespace A292855.P7055849236944441405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046155 (A047006 n).toNat)

end

end A292855.P7055849236944441405

/-!
# A292860: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of e.g.f. exp(k*(exp(x) - 1)).

The programs for A292860, there is no canonical definition to state claims against.
-/

/-! ## A292860.P10466348049712580038

`A189233(A061579(n))`
-/

namespace A292860.P10466348049712580038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A061579 n).toNat

end

end A292860.P10466348049712580038

/-! ## A292860.P4147593156076828788

`A189233(A114327(n)+n)`
-/

namespace A292860.P4147593156076828788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A114327 n + (n : ℤ)).toNat

end

end A292860.P4147593156076828788

/-! ## A292860.P12815214562986564973

`A189233(∑[A198954(n)-1])`
-/

namespace A292860.P12815214562986564973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292860.P12815214562986564973

/-! ## A292860.P17025266670753161702

`A189233(A038722(n+1)-1)`
-/

namespace A292860.P17025266670753161702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A038722 (n + 1) - 1).toNat

end

end A292860.P17025266670753161702

/-! ## A292860.P5083412710638740493

`A189233(A093995(n+1)-(n+1))`
-/

namespace A292860.P5083412710638740493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A292860.P5083412710638740493

/-!
# A292861: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(k*(1 - exp(x))).

The programs for A292861, there is no canonical definition to state claims against.
-/

/-! ## A292861.P8913094260469362039

`A307968(n)-A124762(A351790(n))`
-/

namespace A292861.P8913094260469362039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 n - A124762 (A351790 n).toNat

end

end A292861.P8913094260469362039

/-! ## A292861.P3781712661623265707

`A307968(n)/A030599(A026713(n))`
-/

namespace A292861.P3781712661623265707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307968 n : ℚ) / (A030599 (A026713 n).toNat : ℚ)

end

end A292861.P3781712661623265707

/-! ## A292861.P9754855089716597266

`A307968(n)-A278341(A195644(n+1))`
-/

namespace A292861.P9754855089716597266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 n - A278341 (A195644 (n + 1)).toNat

end

end A292861.P9754855089716597266

/-! ## A292861.P1657797993247817274

`A351776(n)/A055642(A316622(n))`
-/

namespace A292861.P1657797993247817274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351776 n : ℚ) / (A055642 (A316622 n).toNat : ℚ)

end

end A292861.P1657797993247817274

/-! ## A292861.P17863181230523369163

`A292133(n)^A003418(A094544(n))`
-/

namespace A292861.P17863181230523369163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292133 n : ℚ) ^ (A003418 (A094544 n).toNat : ℤ)

end

end A292861.P17863181230523369163

/-!
# A292866: a(n) = n! * [x^n] exp(n*(1 - exp(x))).

The programs for A292866, there is no canonical definition to state claims against.
-/

/-! ## A292866.P9367822275403051090

`A292861(∑[4*n])`
-/

namespace A292866.P9367822275403051090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292866.P9367822275403051090

/-! ## A292866.P4317878336728151427

`A292861(2*(n²+n))+A000007(n+1)`
-/

namespace A292866.P4317878336728151427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (2 * (n ^ 2 + n)) + A000007 (n + 1)

end

end A292866.P4317878336728151427

/-! ## A292866.P3620717714735082760

`A292861(2*(n²+n))%A034995(n+1)`
-/

namespace A292866.P3620717714735082760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292861 (2 * (n ^ 2 + n))) (A034995 (n + 1))

end

end A292866.P3620717714735082760

/-! ## A292866.P13324030283550062953

`A292861(A046092(n))^A178334(n)`
-/

namespace A292866.P13324030283550062953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292861 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A292866.P13324030283550062953

/-! ## A292866.P5140518398494687309

`A178334(n+3)*A292861(A046092(n))`
-/

namespace A292866.P5140518398494687309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 3) * A292861 (A046092 n).toNat

end

end A292866.P5140518398494687309

/-!
# A292867: Indices of records in A243823.

The programs for A292867, there is no canonical definition to state claims against.
-/

/-! ## A292867.P12382621219868835688

`lt[A255869(n), A170975(A103606(2*(n+2)))]`
-/

namespace A292867.P12382621219868835688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 (A103606 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292867.P12382621219868835688

/-! ## A292867.P3333161157102734849

`A186306(comp[A193450(2*n)])`
-/

namespace A292867.P3333161157102734849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193450 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186306 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A292867.P3333161157102734849

/-! ## A292867.P14723233510942297987

`eq[A195842(n+3)², A195835(n+1)]`
-/

namespace A292867.P14723233510942297987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292867.P14723233510942297987

/-! ## A292867.P11409187762042044948

`eq[A195843(n+4)², A195835(n+1)]`
-/

namespace A292867.P11409187762042044948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292867.P11409187762042044948

/-! ## A292867.P3186690534947469530

`A340854(lt[A005290(n), A011865(n)])`
-/

namespace A292867.P3186690534947469530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292867.P3186690534947469530

/-!
# A292868: Records in A243823.

The programs for A292868, there is no canonical definition to state claims against.
-/

/-! ## A292868.P17222285318580830477

`record[A243823(n+1)]`
-/

namespace A292868.P17222285318580830477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292868.P17222285318580830477

/-! ## A292868.P14518399313618575904

`A243823(A292867(n+1))`
-/

namespace A292868.P14518399313618575904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A292867 (n + 1)).toNat

end

end A292868.P14518399313618575904

/-! ## A292868.P11287978413228983006

`record[A300858(n+1)+A243822(n+1)]`
-/

namespace A292868.P11287978413228983006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1) + A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292868.P11287978413228983006

/-! ## A292868.P3303552966775902538

`record[A360543(n+1)+A360480(n+1)]`
-/

namespace A292868.P3303552966775902538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360543 (n + 1) + A360480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292868.P3303552966775902538

/-! ## A292868.P14923617506264112520

`record[A045763(n+1)-A243822(n+1)]`
-/

namespace A292868.P14923617506264112520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292868.P14923617506264112520

/-! ## A292868.P12867535110267985092

`record[A010847(n+1)+1-A000010(n+1)]`
-/

namespace A292868.P12867535110267985092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) + (1 - A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292868.P12867535110267985092

/-!
# A292869: Expansion of 1/(1 + x + x^2 + x^3/(1 + x^4 + x^5 + x^6/(1 + x^7 + x^8 + x^9/(1 + ...)))), a continued fraction.

The programs for A292869, there is no canonical definition to state claims against.
-/

/-! ## A292869.P18403187890437412761

`Δ[A305389(record[A277326(n)])]`
-/

namespace A292869.P18403187890437412761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292869.P18403187890437412761

/-! ## A292869.P2073887708163724877

`Δ[A322796(A012257(n*((2*n)²-3)))]`
-/

namespace A292869.P2073887708163724877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 (A012257 ((n : ℤ) * (((2 * n) ^ 2 : ℤ) - 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292869.P2073887708163724877

/-! ## A292869.P12262175460968588300

`A325494(n+3)-A325494(A385787(n+1))`
-/

namespace A292869.P12262175460968588300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325494 (n + 3) - A325494 (A385787 (n + 1)).toNat

end

end A292869.P12262175460968588300

/-!
# A292870: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of k-th power of continued fraction 1/(1 - x - x^2/(1 - 2*x - 2*x^2/(1 - 3*x - 3*x^2/(1 - 4*x - 4*x^2/(1 - ...))))).

The programs for A292870, there is no canonical definition to state claims against.
-/

/-! ## A292870.P3716865607288136824

`A205574(A061579(n))`
-/

namespace A292870.P3716865607288136824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (A061579 n).toNat

end

end A292870.P3716865607288136824

/-! ## A292870.P5821027971643612009

`A205574(A114327(n)+n)`
-/

namespace A292870.P5821027971643612009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (A114327 n + (n : ℤ)).toNat

end

end A292870.P5821027971643612009

/-! ## A292870.P17921919240046381373

`A205574(A038722(n+1)-1)`
-/

namespace A292870.P17921919240046381373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (A038722 (n + 1) - 1).toNat

end

end A292870.P17921919240046381373

/-! ## A292870.P4647080492224116882

`A205574(A023443(A038722(n+1)))`
-/

namespace A292870.P4647080492224116882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A292870.P4647080492224116882

/-! ## A292870.P11123070429672852996

`A205574(A057944(n)+A025581(n))`
-/

namespace A292870.P11123070429672852996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (A057944 n + A025581 n).toNat

end

end A292870.P11123070429672852996

/-! ## A292870.P12969108822764268754

`A205574(A002378(n)%A014132(n+1))`
-/

namespace A292870.P12969108822764268754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A292870.P12969108822764268754

/-!
# A292871: a(n) = [x^n] (1/(1 - x - x^2/(1 - 2*x - 2*x^2/(1 - 3*x - 3*x^2/(1 - 4*x - 4*x^2/(1 - ...))))))^n.

The programs for A292871, there is no canonical definition to state claims against.
-/

/-! ## A292871.P1321612019271698911

`A205574(∑[4*n])`
-/

namespace A292871.P1321612019271698911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292871.P1321612019271698911

/-! ## A292871.P14605672535381543457

`A292870(∑[4*n])`
-/

namespace A292871.P14605672535381543457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292871.P14605672535381543457

/-! ## A292871.P1913473073279974628

`gcd(A000038(n), A292870(A046092(n)))`
-/

namespace A292871.P1913473073279974628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292870 (A046092 n).toNat)

end

end A292871.P1913473073279974628

/-! ## A292871.P18357050643179758956

`or(A000007(n), A292870(A046092(n)))`
-/

namespace A292871.P18357050643179758956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292870 (A046092 n).toNat)

end

end A292871.P18357050643179758956

/-! ## A292871.P3930473055304784074

`lcm(A057077(n), A292870(A106232(n+1)))`
-/

namespace A292871.P3930473055304784074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A292870 (A106232 (n + 1)).toNat)

end

end A292871.P3930473055304784074

/-!
# A292872: Perfect n-th powers y^n (n >= 3) of the form x^2 + 2^a * 11^b (x >= 1, a, b >= 0, gcd(x, y) = 1).

The programs for A292872, there is no canonical definition to state claims against.
-/

/-! ## A292872.P5525915632513483162

`A357126(A111307(n))`
-/

namespace A292872.P5525915632513483162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357126 (A111307 n).toNat

end

end A292872.P5525915632513483162

/-!
# A292873: Total number of words beginning with the first letter of an n-ary alphabet in all multisets of nonempty words with a total of n letters.

The programs for A292873, there is no canonical definition to state claims against.
-/

/-! ## A292873.P13169801059197859612

`A367221(record[C(n, 3)-n]-n)`
-/

namespace A292873.P13169801059197859612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A292873.P13169801059197859612

/-!
# A292877: G.f. A(x) satisfies: [x^(n-1)] 1/A(x)^(n^2) = 0 for n>2.

The programs for A292877, there is no canonical definition to state claims against.
-/

/-! ## A292877.P3783368096698649617

`A215698(n+1)+gcd(xor(1, -n), ∑[n])²`
-/

namespace A292877.P3783368096698649617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215698 (n + 1) + (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ^ 2 : ℤ)

end

end A292877.P3783368096698649617

/-! ## A292877.P10216014723058764174

`A215698(n+1)+A002033(n)²`
-/

namespace A292877.P10216014723058764174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215698 (n + 1) + A002033 n ^ 2

end

end A292877.P10216014723058764174

/-!
# A292878: Number of ascending ballistic random walks of length n in 3-dimensions.

The programs for A292878, the canonical program `A292878.P13896681912651731978` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292878 has offset 0).

The definition of A292878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292878.P13896681912651731978

`4*a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=21`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A292878

/-- `4*a(n-1)-a(n-2)+2*a(n-3)` -/
def P13896681912651731978.Spec : Prop :=
  ∀ n, P13896681912651731978.a n = A292878 n

theorem P13896681912651731978.correct : P13896681912651731978.Spec := by
  intro n
  simp only [A292878]

end A292878

/-!
# A292879: Triangle read by rows: T(n,k) (n>=1, 4<=k<=n+3) is the number of k-sequences of balls colored with at most n colors such that exactly three balls are of a color seen previously in the sequence.

The programs for A292879, there is no canonical definition to state claims against.
-/

/-! ## A292879.P6382387768831617041

`A001297(A002260(n+1))*A068424(n+1)`
-/

namespace A292879.P6382387768831617041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001297 (A002260 (n + 1)).toNat * A068424 (n + 1)

end

end A292879.P6382387768831617041

/-!
# A292880: Number of sequences of balls colored with at most n colors such that exactly three balls are of a color seen earlier in the sequence.

The programs for A292880, there is no canonical definition to state claims against.
-/

/-! ## A292880.P7827954738899712452

`A394825(A055999(n+2)+2)`
-/

namespace A292880.P7827954738899712452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394825 (A055999 (n + 2) + 2).toNat

end

end A292880.P7827954738899712452

/-!
# A292884: Number of ways to shuffle together a multiset of compositions to form a composition of n.

The programs for A292884, there is no canonical definition to state claims against.
-/

/-! ## A292884.P9931481455255420058

`A210713(n)+A008679(A052373(n+3))`
-/

namespace A292884.P9931481455255420058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 n + A008679 (A052373 (n + 3)).toNat

end

end A292884.P9931481455255420058

/-! ## A292884.P12442306305427901369

`A376635(A134418(n))`
-/

namespace A292884.P12442306305427901369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376635 (A134418 n).toNat

end

end A292884.P12442306305427901369

/-!
# A292886: Number of knapsack factorizations of n.

The programs for A292886, there is no canonical definition to state claims against.
-/

/-! ## A292886.P1065844209114788931

`A000007(A335452(n+1))+A001055(n+1)-A333487(n+1)`
-/

namespace A292886.P1065844209114788931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A335452 (n + 1)).toNat + (A001055 (n + 1) - A333487 (n + 1))

end

end A292886.P1065844209114788931

/-! ## A292886.P1131957648775506632

`A335434(n+1)+A000007(A335452(n+1))`
-/

namespace A292886.P1131957648775506632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335434 (n + 1) + A000007 (A335452 (n + 1)).toNat

end

end A292886.P1131957648775506632

/-! ## A292886.P6892009998617135597

`A335434(n+1)+A151878(A335452(n+1)²)`
-/

namespace A292886.P6892009998617135597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335434 (n + 1) + A151878 (A335452 (n + 1) ^ 2).toNat

end

end A292886.P6892009998617135597

/-! ## A292886.P15964314551626147755

`A335434(n+1)+A186741(A335452(n+1)²)`
-/

namespace A292886.P15964314551626147755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335434 (n + 1) + A186741 (A335452 (n + 1) ^ 2).toNat

end

end A292886.P15964314551626147755

/-! ## A292886.P7943408966254645066

`∑{d}[A045966(n+1), A050372(#)]`
-/

namespace A292886.P7943408966254645066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050372 d

end

end A292886.P7943408966254645066

/-! ## A292886.P2466426853436807435

`∑{d}[n+1, A050372(A178442(#))]`
-/

namespace A292886.P2466426853436807435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050372 (A178442 d).toNat

end

end A292886.P2466426853436807435

/-! ## A292886.P4534287011343706565

`∑{d}[A003961(n+1), A050372(A003961(#))]`
-/

namespace A292886.P4534287011343706565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050372 (A003961 d).toNat

end

end A292886.P4534287011343706565

/-! ## A292886.P6549150069658186808

`∑{d}[A045965(A045965(n+1)), A050372(#)]`
-/

namespace A292886.P6549150069658186808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A045965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050372 d

end

end A292886.P6549150069658186808

/-! ## A292886.P6041352550181986882

`∑{d}[A064988(n+1), A050372(A064988(#))]`
-/

namespace A292886.P6041352550181986882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050372 (A064988 d).toNat

end

end A292886.P6041352550181986882

/-!
# A292889: Expansion of e.g.f. exp(x^3 * exp(x)).

The programs for A292889, there is no canonical definition to state claims against.
-/

/-! ## A292889.P13134608971855988899

`A292978(∑[n+3]+n+3)`
-/

namespace A292889.P13134608971855988899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A292889.P13134608971855988899

/-! ## A292889.P9616433722129885861

`A366546(n)+A010054((12*n)²)`
-/

namespace A292889.P9616433722129885861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366546 n + A010054 ((12 * n) ^ 2)

end

end A292889.P9616433722129885861

/-! ## A292889.P14287781942540804212

`A366546(n)+A121373(A045618(n))`
-/

namespace A292889.P14287781942540804212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366546 n + A121373 (A045618 n).toNat

end

end A292889.P14287781942540804212

/-! ## A292889.P5042051001218116096

`A366546(n)+A339012(A038205(n))`
-/

namespace A292889.P5042051001218116096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366546 n + A339012 (A038205 n).toNat

end

end A292889.P5042051001218116096

/-! ## A292889.P12775112643968796121

`A366546(n)+A036987(A059958(n+1))`
-/

namespace A292889.P12775112643968796121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366546 n + A036987 (A059958 (n + 1)).toNat

end

end A292889.P12775112643968796121

/-!
# A292890: Primes of the form 2^r * 17^s - 1.

The programs for A292890, there is no canonical definition to state claims against.
-/

/-! ## A292890.P2397235627157029059

`p?[lt[A068067(n+1), val(n+1, 17)+1]]`
-/

namespace A292890.P2397235627157029059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068067 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 17 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A292890.P2397235627157029059

/-! ## A292890.P9854807016535021125

`eq[A003415(n), A262785(A007947(n+1))]`
-/

namespace A292890.P9854807016535021125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262785 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292890.P9854807016535021125

/-! ## A292890.P2587664826425220507

`p?[eq[A113766(n+1), A293434(n+1)]]`
-/

namespace A292890.P2587664826425220507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113766 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293434 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A292890.P2587664826425220507

/-!
# A292891: Expansion of e.g.f. exp(x^3 * (exp(x) - 1)).

The programs for A292891, there is no canonical definition to state claims against.
-/

/-! ## A292891.P8606161473824175959

`A292892(∑[n+3]+n+3)`
-/

namespace A292891.P8606161473824175959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292892 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A292891.P8606161473824175959

/-! ## A292891.P3599293891296972

`A366751(n)+A204843(A277212(n))`
-/

namespace A292891.P3599293891296972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366751 n + A204843 (A277212 n).toNat

end

end A292891.P3599293891296972

/-! ## A292891.P3609790637063307050

`A366751(n)+A000007(A007633(n+1))`
-/

namespace A292891.P3609790637063307050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366751 n + A000007 (A007633 (n + 1)).toNat

end

end A292891.P3609790637063307050

/-! ## A292891.P17617867588720597383

`A366751(n)+A049320(A117781(n+1))`
-/

namespace A292891.P17617867588720597383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366751 n + A049320 (A117781 (n + 1)).toNat

end

end A292891.P17617867588720597383

/-! ## A292891.P4086659254267958628

`A366751(n)+A204843(A115004(2*n+1))`
-/

namespace A292891.P4086659254267958628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366751 n + A204843 (A115004 (2 * n + 1)).toNat

end

end A292891.P4086659254267958628

/-!
# A292892: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(x^k * (exp(x) - 1)).

The programs for A292892, there is no canonical definition to state claims against.
-/

/-! ## A292892.P7250523658650689008

`A040001(A208183(n))*A355650(n)`
-/

namespace A292892.P7250523658650689008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A208183 n).toNat * A355650 n

end

end A292892.P7250523658650689008

/-! ## A292892.P10326055868736113126

`A086617(A135302(n))*A355650(n)`
-/

namespace A292892.P10326055868736113126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 (A135302 n).toNat * A355650 n

end

end A292892.P10326055868736113126

/-! ## A292892.P7441805453702844461

`A266871(A266878(n+1))*A355650(n)`
-/

namespace A292892.P7441805453702844461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266871 (A266878 (n + 1)).toNat * A355650 n

end

end A292892.P7441805453702844461

/-! ## A292892.P4523035291788957235

`A355650(n)%A276643(2*n+1)`
-/

namespace A292892.P4523035291788957235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355650 n) (A276643 (2 * n + 1))

end

end A292892.P4523035291788957235

/-! ## A292892.P10519760286978417698

`A355650(n)+A000038(A007662(n))`
-/

namespace A292892.P10519760286978417698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355650 n + A000038 (A007662 n).toNat

end

end A292892.P10519760286978417698

/-!
# A292893: Expansion of e.g.f. exp(x * (1 - exp(x))).

The programs for A292893, there is no canonical definition to state claims against.
-/

/-! ## A292893.P1038038686371431537

`A292894(∑[n+2]-1)`
-/

namespace A292893.P1038038686371431537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292894 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A292893.P1038038686371431537

/-! ## A292893.P5341343064055228464

`xor(1, xor(1, A292894(A034856(n+1))))`
-/

namespace A292893.P5341343064055228464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A292894 (A034856 (n + 1)).toNat))

end

end A292893.P5341343064055228464

/-! ## A292893.P15858226994861041739

`A292894(A034856(n+1))^A178334(n)`
-/

namespace A292893.P15858226994861041739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292894 (A034856 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A292893.P15858226994861041739

/-! ## A292893.P6550504399624507202

`or(A000007(n), A292894(A034856(n+1)))`
-/

namespace A292893.P6550504399624507202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292894 (A034856 (n + 1)).toNat)

end

end A292893.P6550504399624507202

/-! ## A292893.P9479632950925956056

`or(A151878(n), A292894(A034856(n+1)))`
-/

namespace A292893.P9479632950925956056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 n) (A292894 (A034856 (n + 1)).toNat)

end

end A292893.P9479632950925956056

/-! ## A292893.P2914548213813198836

`A292894(A034856(n+1))%A001348(n+1)`
-/

namespace A292893.P2914548213813198836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292894 (A034856 (n + 1)).toNat) (A001348 (n + 1))

end

end A292893.P2914548213813198836

/-!
# A292894: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(x^k * (1 - exp(x))).

The programs for A292894, there is no canonical definition to state claims against.
-/

/-! ## A292894.P10866868088921427954

`A185679(A118180(n))*A293051(n)`
-/

namespace A292894.P10866868088921427954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A118180 n).toNat * A293051 n

end

end A292894.P10866868088921427954

/-! ## A292894.P2866871409073129839

`A110591(A022167(n))*A293051(n)`
-/

namespace A292894.P2866871409073129839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A022167 n).toNat * A293051 n

end

end A292894.P2866871409073129839

/-! ## A292894.P13409178973964002352

`A000120(A116694(n+1))*A293051(n)`
-/

namespace A292894.P13409178973964002352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A116694 (n + 1)).toNat * A293051 n

end

end A292894.P13409178973964002352

/-! ## A292894.P6325472669932568624

`A043562(A008958(n))*A293051(n)`
-/

namespace A292894.P6325472669932568624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A008958 n).toNat * A293051 n

end

end A292894.P6325472669932568624

/-!
# A292895: a(n) is the least positive k such that the Hamming weight of k equals the Hamming weight of k + n.

The programs for A292895, there is no canonical definition to state claims against.
-/

/-! ## A292895.P9134808090746457684

`gcd((n²+2)/3*∑[n], A301491(A326083(n)))`
-/

namespace A292895.P9134808090746457684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n ^ 2 + 2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))) (A301491 (A326083 n).toNat)

end

end A292895.P9134808090746457684

/-!
# A292896: Numbers m such that there are precisely 13 groups of order m.

The programs for A292896, there is no canonical definition to state claims against.
-/

/-! ## A292896.P8791866275014681262

`eq[13, A000001(n)]`
-/

namespace A292896.P8791866275014681262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292896.P8791866275014681262

/-! ## A292896.P16107315936776643510

`eq[13, sqrt(A297420(n))]`
-/

namespace A292896.P16107315936776643510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A292896.P16107315936776643510

/-!
# A292897: a(n) = -Sum_{k=1..3}(-1)^(n-k)*hypergeom([k, k-n-3], [], 1).

The programs for A292897, there is no canonical definition to state claims against.
-/

/-! ## A292897.P3026833717003394743

`A090012(n+1)-A105927(n+1)`
-/

namespace A292897.P3026833717003394743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090012 (n + 1) - A105927 (n + 1)

end

end A292897.P3026833717003394743

/-! ## A292897.P8915394776290056158

`A090012(n+1)-∑[n]*A055790(n)`
-/

namespace A292897.P8915394776290056158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090012 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A055790 n

end

end A292897.P8915394776290056158

/-! ## A292897.P6442288128029009870

`A000255(n+1)+A105927(n)+A055790(n+1)`
-/

namespace A292897.P6442288128029009870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (n + 1) + (A105927 n + A055790 (n + 1))

end

end A292897.P6442288128029009870

/-! ## A292897.P16989766211760823313

`A090012(n+1)+A105927(n+1)/A134824(n+2)`
-/

namespace A292897.P16989766211760823313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090012 (n + 1) : ℚ) + (A105927 (n + 1) : ℚ) / (A134824 (n + 2) : ℚ)

end

end A292897.P16989766211760823313

/-!
# A292899: a(n) = B(n,1)*(n+1)# where B(n,x) are the Bernoulli polynomials and n# are the primorial numbers A034386.

The programs for A292899, there is no canonical definition to state claims against.
-/

/-! ## A292899.P12169285338967224182

`A362991(∑[n])/A045948(n+1)`
-/

namespace A292899.P12169285338967224182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362991 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A045948 (n + 1) : ℚ)

end

end A292899.P12169285338967224182

/-! ## A292899.P16360260095641582847

`A034386(n+1)/A027642(n)*A164555(n)`
-/

namespace A292899.P16360260095641582847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A027642 n : ℚ) * (A164555 n : ℚ)

end

end A292899.P16360260095641582847

/-! ## A292899.P13668305046957837481

`A003418(n+1)/A027642(n)*A164555(n)/A045948(n+1)`
-/

namespace A292899.P13668305046957837481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A027642 n : ℚ) * (A164555 n : ℚ) / (A045948 (n + 1) : ℚ)

end

end A292899.P13668305046957837481

/-! ## A292899.P11874617494768296766

`A362994(n)/A045948(n+1)`
-/

namespace A292899.P11874617494768296766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362994 n : ℚ) / (A045948 (n + 1) : ℚ)

end

end A292899.P11874617494768296766

/-! ## A292899.P13224290397661896565

`A027641(char[1]+n)*A362989(n)/A045948(n+1)`
-/

namespace A292899.P13224290397661896565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 ((if ∃ j, f1 j = n then 1 else 0) + n) * A362989 n : ℚ) / (A045948 (n + 1) : ℚ)

end

end A292899.P13224290397661896565

