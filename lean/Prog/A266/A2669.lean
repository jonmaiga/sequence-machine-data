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
import Seq.B000.C017
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
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

/-!
# A266900: Number of OFF (white) cells in the n-th iteration of the "Rule 75" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266900, there is no canonical definition to state claims against.
-/

/-! ## A266900.P7794470207609100743

`Δ[n²]-A266898(n)`
-/

namespace A266900.P7794470207609100743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266898 n

end

end A266900.P7794470207609100743

/-! ## A266900.P6847573149091294080

`n+1-A266898(n%(n+1))+n`
-/

namespace A266900.P6847573149091294080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A266898 (n % (n + 1)) + (n : ℤ)

end

end A266900.P6847573149091294080

/-! ## A266900.P18274266720754945796

`abs(A317439(n+1)-A266898(n))`
-/

namespace A266900.P18274266720754945796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317439 (n + 1) - A266898 n|

end

end A266900.P18274266720754945796

/-! ## A266900.P322578745089663986

`A004526(A016825(n)-2*A266898(n))`
-/

namespace A266900.P322578745089663986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A016825 n - 2 * A266898 n).toNat

end

end A266900.P322578745089663986

/-! ## A266900.P9038842866114122226

`A008619(A016825(n)-2*A266898(n))-1`
-/

namespace A266900.P9038842866114122226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016825 n - 2 * A266898 n).toNat - 1

end

end A266900.P9038842866114122226

/-! ## A266900.P2541958219305064025

`A004526(A016825(n)-A266898(n)-A266898(n))`
-/

namespace A266900.P2541958219305064025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A016825 n - A266898 n - A266898 n).toNat

end

end A266900.P2541958219305064025

/-! ## A266900.P6067404314455121669

`A004736(∑[n]+1)+n-A266898(n)`
-/

namespace A266900.P6067404314455121669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((n : ℤ) - A266898 n)

end

end A266900.P6067404314455121669

/-!
# A266901: Total number of OFF (white) cells after n iterations of the "Rule 75" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266901, there is no canonical definition to state claims against.
-/

/-! ## A266901.P15115873106387869176

`∑[A266900(n)]`
-/

namespace A266901.P15115873106387869176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266901.P15115873106387869176

/-! ## A266901.P1387057118663953878

`(n+1)²-A266899(n)`
-/

namespace A266901.P1387057118663953878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266899 n

end

end A266901.P1387057118663953878

/-! ## A266901.P1059363141600231753

`∑[Δ[n²]-A266898(n)]`
-/

namespace A266901.P1059363141600231753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266901.P1059363141600231753

/-! ## A266901.P4029806786903236925

`A002378(n)+1-A266899(n)+n`
-/

namespace A266901.P4029806786903236925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (1 - A266899 n + (n : ℤ))

end

end A266901.P4029806786903236925

/-! ## A266901.P1161683386937455933

`∑[(A016825(n)-2*A266898(n))/2]`
-/

namespace A266901.P1161683386937455933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 n - 2 * A266898 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266901.P1161683386937455933

/-!
# A266902: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, west or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266902, there is no canonical definition to state claims against.
-/

/-! ## A266902.P14530451076896828711

`A266904(∑[n+2])`
-/

namespace A266902.P14530451076896828711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266904 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266902.P14530451076896828711

/-!
# A266903: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, west or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266903, there is no canonical definition to state claims against.
-/

/-! ## A266903.P13191879605726280416

`A266904(∑[n+3]+1)`
-/

namespace A266903.P13191879605726280416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266904 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266903.P13191879605726280416

/-!
# A266904: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, west or southwest neighbor modulo n and the upper left element equal to 0.

The programs for A266904, there is no canonical definition to state claims against.
-/

/-! ## A266904.P5697254559438208400

`A123492(A266886(n+1))*A267338(n+1)`
-/

namespace A266904.P5697254559438208400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123492 (A266886 (n + 1)).toNat * A267338 (n + 1)

end

end A266904.P5697254559438208400

/-! ## A266904.P16846376038767670187

`floor(A033183(A271075(n+1))^γ)*A267338(n+1)`
-/

namespace A266904.P16846376038767670187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033183 (A271075 (n + 1)).toNat : ℝ) ^ Real.eulerMascheroniConstant⌋ * A267338 (n + 1)

end

end A266904.P16846376038767670187

/-! ## A266904.P6687252898968738851

`(A267392(n+1)-A321312(A102480(n)))*A266632(n+1)`
-/

namespace A266904.P6687252898968738851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267392 (n + 1) - A321312 (A102480 n).toNat) * A266632 (n + 1)

end

end A266904.P6687252898968738851

/-! ## A266904.P10543342840549689733

`A034327(A382735(n))*A266632(n+1)`
-/

namespace A266904.P10543342840549689733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034327 (A382735 n).toNat * A266632 (n + 1)

end

end A266904.P10543342840549689733

/-! ## A266904.P3498537649954962122

`A229210(A064094(n))*A266632(n+1)`
-/

namespace A266904.P3498537649954962122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229210 (A064094 n).toNat * A266632 (n + 1)

end

end A266904.P3498537649954962122

/-!
# A266905: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north, west or southwest neighbor modulo 3 and the upper left element equal to 0.

The programs for A266905, there is no canonical definition to state claims against.
-/

/-! ## A266905.P11336070811248418101

`A267338(∑[n+2]+4)`
-/

namespace A266905.P11336070811248418101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266905.P11336070811248418101

/-! ## A266905.P9591210356648858622

`A267338(A167614(n+1))+char[18]`
-/

namespace A266905.P9591210356648858622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267338 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266905.P9591210356648858622

/-! ## A266905.P10763064583884821023

`or(char[1], A267338(A046691(n)+7))`
-/

namespace A266905.P10763064583884821023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A267338 (A046691 n + 7).toNat)

end

end A266905.P10763064583884821023

/-! ## A266905.P3792668395344684840

`gcd(A151620(n), A267338(A167614(n+1)))`
-/

namespace A266905.P3792668395344684840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151620 n) (A267338 (A167614 (n + 1)).toNat)

end

end A266905.P3792668395344684840

/-! ## A266905.P7462785709002118333

`xor(A178798(n), A267338(A167614(n+1)))`
-/

namespace A266905.P7462785709002118333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178798 n) (A267338 (A167614 (n + 1)).toNat)

end

end A266905.P7462785709002118333

/-!
# A266906: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north, west or southwest neighbor modulo 4 and the upper left element equal to 0.

The programs for A266906, there is no canonical definition to state claims against.
-/

/-! ## A266906.P2452051640181904018

`A266904(∑[n+3]+7)`
-/

namespace A266906.P2452051640181904018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266904 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266906.P2452051640181904018

/-!
# A266907: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north, west or southwest neighbor modulo 5 and the upper left element equal to 0.

The programs for A266907, there is no canonical definition to state claims against.
-/

/-! ## A266907.P10582445223319719156

`A266904(A167499(n+3))`
-/

namespace A266907.P10582445223319719156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266904 (A167499 (n + 3)).toNat

end

end A266907.P10582445223319719156

/-! ## A266907.P16803855618456218024

`A266904(A155212(n)+13)`
-/

namespace A266907.P16803855618456218024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266904 (A155212 n + 13).toNat

end

end A266907.P16803855618456218024

/-! ## A266907.P8969997001415672092

`A266904(A056000(n)+15)`
-/

namespace A266907.P8969997001415672092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266904 (A056000 n + 15).toNat

end

end A266907.P8969997001415672092

/-!
# A266908: G.f. A(x) satisfies: x = Sum_{n>=1} x^n * Product_{k=1..n} A(-k*x).

The programs for A266908, there is no canonical definition to state claims against.
-/

/-! ## A266908.P7035859776413031577

`A008621(A357644(n²))`
-/

namespace A266908.P7035859776413031577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A357644 (n ^ 2)).toNat

end

end A266908.P7035859776413031577

/-! ## A266908.P1136417282667383242

`row(row(A025487(A365182(n))))`
-/

namespace A266908.P1136417282667383242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A025487 (A365182 n).toNat).toNat)

end

end A266908.P1136417282667383242

/-!
# A266909: Table read by rows: for each k < n and coprime to n, the least x>=0 such that x*n+k is prime.

The programs for A266909, there is no canonical definition to state claims against.
-/

/-! ## A266909.P10361694927463156762

`A007814(A214825(n)+A026362(n+1))`
-/

namespace A266909.P10361694927463156762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A214825 n + A026362 (n + 1)).toNat

end

end A266909.P10361694927463156762

/-! ## A266909.P6358219743159940855

`val(A008593(A214825(n)+A026362(n+1)), 2)`
-/

namespace A266909.P6358219743159940855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008593 (A214825 n + A026362 (n + 1)).toNat).toNat 2

end

end A266909.P6358219743159940855

/-! ## A266909.P11395153588068146162

`and(A001222(3*(n+1)), A342926(A102124(n+3)))`
-/

namespace A266909.P11395153588068146162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (3 * (n + 1))) (A342926 (A102124 (n + 3)).toNat)

end

end A266909.P11395153588068146162

/-! ## A266909.P12575589086891729198

`and(∑{e}[n+1, #]+1, A000720(A162975(2*n+3)))`
-/

namespace A266909.P12575589086891729198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ) (A000720 (A162975 (2 * n + 3)).toNat)

end

end A266909.P12575589086891729198

/-! ## A266909.P9402176514091271219

`A268726(∑[A215989(n+9)])`
-/

namespace A266909.P9402176514091271219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215989 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A266909.P9402176514091271219

/-!
# A266910: Number of size 2 subsets of S_n that generate a transitive subgroup of S_n.

The programs for A266910, there is no canonical definition to state claims against.
-/

/-! ## A266910.P125854853876734552

`(A122949(n+2)-(n+1)!)/2`
-/

namespace A266910.P125854853876734552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122949 (n + 2) - (Nat.factorial (n + 1) : ℤ) : ℚ) / 2

end

end A266910.P125854853876734552

/-!
# A266911: GCD of A002443(n) and A002444(n), numerator and denominator in Feinler's formula for the Bernoulli number B_{2n}.

The programs for A266911, the canonical program `A266911.P15439966265522219643` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266911 has offset 0).

The definition of A266911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266911.P10195240616728333598

`A363596(Δ[n²])`
-/

namespace A266911.P10195240616728333598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363596 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A266911.P10195240616728333598

namespace A266911

/-- `A363596(Δ[n²])` -/
def P10195240616728333598.Spec : Prop :=
  ∀ n, P10195240616728333598.a n = A266911 n

end A266911

/-! ## A266911.P14620461118267311526

`A363596(2*n)/(n+1)`
-/

namespace A266911.P14620461118267311526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363596 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A266911.P14620461118267311526

namespace A266911

/-- `A363596(2*n)/(n+1)` -/
def P14620461118267311526.Spec : Prop :=
  ∀ n, P14620461118267311526.a n = (A266911 n : ℚ)

end A266911

/-! ## A266911.P2368398914153439000

`A002444(n)/∑[4*n+1]`
-/

namespace A266911.P2368398914153439000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002444 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A266911.P2368398914153439000

namespace A266911

/-- `A002444(n)/∑[4*n+1]` -/
def P2368398914153439000.Spec : Prop :=
  ∀ n, P2368398914153439000.a n = (A266911 n : ℚ)

end A266911

/-! ## A266911.P1975112729412983135

`∏[A002445(n)/∑[4*n+1]]`
-/

namespace A266911.P1975112729412983135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A266911.P1975112729412983135

namespace A266911

/-- `∏[A002445(n)/∑[4*n+1]]` -/
def P1975112729412983135.Spec : Prop :=
  ∀ n, P1975112729412983135.a n = (A266911 n : ℚ)

end A266911

/-! ## A266911.P10161805307415505170

`floor(A002444(n)/A000217(2*n+1))`
-/

namespace A266911.P10161805307415505170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002444 n : ℚ) / (A000217 (2 * n + 1) : ℚ)⌋

end

end A266911.P10161805307415505170

namespace A266911

/-- `floor(A002444(n)/A000217(2*n+1))` -/
def P10161805307415505170.Spec : Prop :=
  ∀ n, P10161805307415505170.a n = A266911 n

end A266911

/-! ## A266911.P4181010428333247784

`∏[A027642(2*n)/A045896(2*n)]`
-/

namespace A266911.P4181010428333247784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A045896 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A266911.P4181010428333247784

namespace A266911

/-- `∏[A027642(2*n)/A045896(2*n)]` -/
def P4181010428333247784.Spec : Prop :=
  ∀ n, P4181010428333247784.a n = (A266911 n : ℚ)

end A266911

/-! ## A266911.P13583525474239093938

`1/A002445(n+1)*A002444(n+1)`
-/

namespace A266911.P13583525474239093938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A002445 (n + 1) : ℚ) * (A002444 (n + 1) : ℚ)

end

end A266911.P13583525474239093938

namespace A266911

/-- `1/A002445(n+1)*A002444(n+1)` -/
def P13583525474239093938.Spec : Prop :=
  ∀ n, P13583525474239093938.a n = (A266911 n : ℚ)

end A266911

/-! ## A266911.P8534807018228293975

`A165886(2*n)*A363596(2*n+1)`
-/

namespace A266911.P8534807018228293975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165886 (2 * n) * A363596 (2 * n + 1)

end

end A266911.P8534807018228293975

namespace A266911

/-- `A165886(2*n)*A363596(2*n+1)` -/
def P8534807018228293975.Spec : Prop :=
  ∀ n, P8534807018228293975.a n = A266911 n

end A266911

/-! ## A266911.P2657234560449104175

`gcd(A363596(2*n)², A363596(2*n+1))`
-/

namespace A266911.P2657234560449104175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A363596 (2 * n) ^ 2) (A363596 (2 * n + 1))

end

end A266911.P2657234560449104175

namespace A266911

/-- `gcd(A363596(2*n)², A363596(2*n+1))` -/
def P2657234560449104175.Spec : Prop :=
  ∀ n, (P2657234560449104175.a n : ℤ) = A266911 n

end A266911

/-! ## A266911.P9832618701987802147

`∏[A027642(2*n)/A000217(2*n+1)]`
-/

namespace A266911.P9832618701987802147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A000217 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A266911.P9832618701987802147

namespace A266911

/-- `∏[A027642(2*n)/A000217(2*n+1)]` -/
def P9832618701987802147.Spec : Prop :=
  ∀ n, P9832618701987802147.a n = (A266911 n : ℚ)

end A266911

/-! ## A266911.P15439966265522219643

`∏[A141056(2*n)/A000217(2*n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A266911

/-- `∏[A141056(2*n)/A000217(2*n+1)]` -/
def P15439966265522219643.Spec : Prop :=
  ∀ n, P15439966265522219643.a n = (A266911 n : ℚ)

end A266911

/-! ## A266911.P13875066268404087637

`(A069267(n+1)+A069267(n+1))/A002445(n+1)`
-/

namespace A266911.P13875066268404087637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069267 (n + 1) + A069267 (n + 1) : ℚ) / (A002445 (n + 1) : ℚ)

end

end A266911.P13875066268404087637

namespace A266911

/-- `(A069267(n+1)+A069267(n+1))/A002445(n+1)` -/
def P13875066268404087637.Spec : Prop :=
  ∀ n, P13875066268404087637.a n = (A266911 n : ℚ)

end A266911

/-!
# A266912: Numbers n which are anagrams of n+18.

The programs for A266912, the canonical program `A266912.P4126741313902243490` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266912 has offset 1).

The definition of A266912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266912.P1303662668101978742

`ogf((13+11x+11x^2+11x^3+11x^4+11x^5+11x^6+23x^7-2x^8)/(1-x-x^8+x^9))`
-/

namespace A266912.P1303662668101978742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, 11, 11, 11, 11, 11, 11, 23, -2] [1, -1, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A266912.P1303662668101978742

namespace A266912

/-- `ogf((13+11x+11x^2+11x^3+11x^4+11x^5+11x^6+23x^7-2x^8)/(1-x-x^8+x^9))` -/
def P1303662668101978742.Spec : Prop :=
  ∀ n, P1303662668101978742.a n = A266912 (n + 1)

end A266912

/-! ## A266912.P4126741313902243490

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=13, a(1)=24, a(2)=35, a(3)=46, a(4)=57, a(5)=68, a(6)=79, a(7)=102, a(8)=113`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266912

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P4126741313902243490.Spec : Prop :=
  ∀ n, P4126741313902243490.a n = A266912 (n + 1)

theorem P4126741313902243490.correct : P4126741313902243490.Spec := by
  intro n
  simp only [A266912, Nat.add_sub_cancel]

end A266912

/-! ## A266912.P8400371962142414331

`∑[A025058(A185620(n)!)]+2`
-/

namespace A266912.P8400371962142414331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025058 (Nat.factorial (A185620 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A266912.P8400371962142414331

namespace A266912

/-- `∑[A025058(A185620(n)!)]+2` -/
def P8400371962142414331.Spec : Prop :=
  ∀ n, P8400371962142414331.a n = A266912 (n + 1)

end A266912

/-! ## A266912.P6301617730868000006

`∑[A053674(∑[A299272(3*n+1)])]`
-/

namespace A266912.P6301617730868000006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299272 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053674 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266912.P6301617730868000006

namespace A266912

/-- `∑[A053674(∑[A299272(3*n+1)])]` -/
def P6301617730868000006.Spec : Prop :=
  ∀ n, P6301617730868000006.a n = A266912 (n + 1)

end A266912

/-!
# A266913: Denominator of the volume of d dimensional symmetric convex cuboid with constraints |x1 + x2 + ... xd| <= 1 and |x1|, |x2|, ..., |xd| <= 1.

The programs for A266913, there is no canonical definition to state claims against.
-/

/-! ## A266913.P2404910143451446707

`A213941(A131326(n)-A384318(n))`
-/

namespace A266913.P2404910143451446707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213941 (A131326 n - A384318 n).toNat

end

end A266913.P2404910143451446707

/-! ## A266913.P12423098690802425292

`gcd(A000537(A015535(n)), A169636(n))`
-/

namespace A266913.P12423098690802425292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000537 (A015535 n).toNat) (A169636 n)

end

end A266913.P12423098690802425292

/-! ## A266913.P12295871255552626457

`A206496(A078140(n+1))*A349164(n+1)`
-/

namespace A266913.P12295871255552626457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206496 (A078140 (n + 1)).toNat * A349164 (n + 1)

end

end A266913.P12295871255552626457

/-!
# A266916: Multiply and add: distinct numbers a*b + c*d + e*f + g*h + i*j where a..j are permutations of 0..9.

The programs for A266916, there is no canonical definition to state claims against.
-/

/-! ## A266916.P5472678925333063918

`A124389(n)%2+59+n`
-/

namespace A266916.P5472678925333063918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124389 n) 2 + 59 + (n : ℤ)

end

end A266916.P5472678925333063918

/-! ## A266916.P7758648030731382794

`A212157(n+1)²+n+59`
-/

namespace A266916.P7758648030731382794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212157 (n + 1) ^ 2 + (n : ℤ) + 59

end

end A266916.P7758648030731382794

/-! ## A266916.P8019000321318122202

`gcd(60, 120*A031132(n+2))+n`
-/

namespace A266916.P8019000321318122202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 60 (120 * A031132 (n + 2)) + n

end

end A266916.P8019000321318122202

/-! ## A266916.P14986636932141892288

`59%A257118(3*n+4)+n+1`
-/

namespace A266916.P14986636932141892288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 59 (A257118 (3 * n + 4)) + (n + 1 : ℤ)

end

end A266916.P14986636932141892288

/-! ## A266916.P15841732799642519545

`A040870(A126075(n))+n`
-/

namespace A266916.P15841732799642519545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A126075 n).toNat + (n : ℤ)

end

end A266916.P15841732799642519545

/-! ## A266916.P6298772781753676341

`A094681(A094681(n+4))+56`
-/

namespace A266916.P6298772781753676341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094681 (A094681 (n + 4)).toNat + 56

end

end A266916.P6298772781753676341

/-! ## A266916.P375599397371289698

`A040870(A269457(n))+n`
-/

namespace A266916.P375599397371289698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040870 (A269457 n).toNat + (n : ℤ)

end

end A266916.P375599397371289698

/-! ## A266916.P16225677127700344838

`A327374(n+5)`
-/

namespace A266916.P16225677127700344838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327374 (n + 5)

end

end A266916.P16225677127700344838

/-!
# A266918: Perfect power Löschian numbers.

The programs for A266918, there is no canonical definition to state claims against.
-/

/-! ## A266918.P2798334627168257752

`filter[A001597(n+1), A353816(#)]`
-/

namespace A266918.P2798334627168257752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A266918.P2798334627168257752

/-! ## A266918.P7796227297570372871

`∩[A001597(n+1), A243175(n+1)]`
-/

namespace A266918.P7796227297570372871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266918.P7796227297570372871

/-! ## A266918.P16932494661353509479

`∩[A001597(n+1), A003136(n+1)]`
-/

namespace A266918.P16932494661353509479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266918.P16932494661353509479

/-! ## A266918.P5788165289249165599

`∩[A001597(n+1), A270248(n+1)-A270672(n+1)]`
-/

namespace A266918.P5788165289249165599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270248 (n + 1) - A270672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266918.P5788165289249165599

/-! ## A266918.P8485686468150666981

`filter[A003136(n+2), A075802(#)]`
-/

namespace A266918.P8485686468150666981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A266918.P8485686468150666981

/-! ## A266918.P5970137300297071707

`filter[A243175(n+2), A075802(#)]`
-/

namespace A266918.P5970137300297071707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A266918.P5970137300297071707

/-! ## A266918.P11372612767258776070

`eq[A301573(n)+1, A353816(n)]`
-/

namespace A266918.P11372612767258776070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266918.P11372612767258776070

/-! ## A266918.P6758205917756397022

`eq[A001317(A301573(n)), A353816(n)]`
-/

namespace A266918.P6758205917756397022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A301573 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266918.P6758205917756397022

/-! ## A266918.P12559550157606360473

`eq[n*A004016(A004016(n)), A301573(n)]`
-/

namespace A266918.P12559550157606360473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004016 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266918.P12559550157606360473

/-!
# A266919: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, southwest or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A266919, there is no canonical definition to state claims against.
-/

/-! ## A266919.P15908685873721146134

`A266921(∑[2+n])`
-/

namespace A266919.P15908685873721146134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266919.P15908685873721146134

/-! ## A266919.P5915009672072299512

`A266921(A000096(n+1))+A000007(n+3)`
-/

namespace A266919.P5915009672072299512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266921 (A000096 (n + 1)).toNat + A000007 (n + 3)

end

end A266919.P5915009672072299512

/-!
# A266920: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north, southwest or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A266920, there is no canonical definition to state claims against.
-/

/-! ## A266920.P3589987433936267811

`A266921(∑[n+3]+1)`
-/

namespace A266920.P3589987433936267811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266921 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266920.P3589987433936267811

/-!
# A266921: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, southwest or southeast neighbor modulo n and the upper left element equal to 0.

The programs for A266921, there is no canonical definition to state claims against.
-/

/-! ## A266921.P2921334637722185716

`A321391(A212085(n+1))`
-/

namespace A266921.P2921334637722185716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 (A212085 (n + 1)).toNat

end

end A266921.P2921334637722185716

/-! ## A266921.P2657836361857609045

`A000195(4^A098825(n))`
-/

namespace A266921.P2657836361857609045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A098825 n : ℤ))).toNat

end

end A266921.P2657836361857609045

/-! ## A266921.P8139628935117937649

`A276150(A098825(n)^5)`
-/

namespace A266921.P8139628935117937649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A098825 n ^ 5).toNat

end

end A266921.P8139628935117937649

/-! ## A266921.P8422798935216025586

`A305615(2*A098825(n)²)`
-/

namespace A266921.P8422798935216025586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305615 (2 * A098825 n ^ 2).toNat

end

end A266921.P8422798935216025586

/-! ## A266921.P2043737885146288532

`A001222((A098825(n)+1)!)`
-/

namespace A266921.P2043737885146288532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A098825 n + 1).toNat)

end

end A266921.P2043737885146288532

/-!
# A266922: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north, southwest or southeast neighbor modulo 3 and the upper left element equal to 0.

The programs for A266922, there is no canonical definition to state claims against.
-/

/-! ## A266922.P5946408589877235340

`A266921(∑[n+2]+4)`
-/

namespace A266922.P5946408589877235340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266921 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266922.P5946408589877235340

/-! ## A266922.P1161796979266258017

`record[A097806(n)*A266921(n+4)]`
-/

namespace A266922.P1161796979266258017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A266921 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266922.P1161796979266258017

/-! ## A266922.P12999304581709403358

`record[gcd(A266878(n+1), A266921(n+2))]`
-/

namespace A266922.P12999304581709403358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A266878 (n + 1)) (A266921 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266922.P12999304581709403358

/-! ## A266922.P16906706165686298469

`A266921(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A266922.P16906706165686298469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266921 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A266922.P16906706165686298469

/-!
# A266923: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north, southwest or southeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A266923, there is no canonical definition to state claims against.
-/

/-! ## A266923.P1345610679448755935

`A266921(A141214(n)+7)`
-/

namespace A266923.P1345610679448755935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266921 (A141214 n + 7).toNat

end

end A266923.P1345610679448755935

/-! ## A266923.P6035250265360873458

`A266921(A052905(n)+9)`
-/

namespace A266923.P6035250265360873458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266921 (A052905 n + 9).toNat

end

end A266923.P6035250265360873458

/-! ## A266923.P3878811661768776419

`A266921(A055999(n)+10)`
-/

namespace A266923.P3878811661768776419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266921 (A055999 n + 10).toNat

end

end A266923.P3878811661768776419

/-!
# A266924: Number of 5 X n arrays containing n copies of 0..5-1 with no element 1 greater than its north, southwest or southeast neighbor modulo 5 and the upper left element equal to 0.

The programs for A266924, there is no canonical definition to state claims against.
-/

/-! ## A266924.P14620981238087650266

`A266921(A077169(n+5))`
-/

namespace A266924.P14620981238087650266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266921 (A077169 (n + 5)).toNat

end

end A266924.P14620981238087650266

/-! ## A266924.P8590286928167272659

`A266921(A155212(n)+13)`
-/

namespace A266924.P8590286928167272659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266921 (A155212 n + 13).toNat

end

end A266924.P8590286928167272659

/-!
# A266925: Number of unrooted self-avoiding walks of n steps on honeycomb lattice.

The programs for A266925, there is no canonical definition to state claims against.
-/

/-! ## A266925.P7159983254070013157

`A317589(A239882(n+1))`
-/

namespace A266925.P7159983254070013157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (A239882 (n + 1)).toNat

end

end A266925.P7159983254070013157

/-! ## A266925.P16936412184417931993

`A003056(A098511(n))+char[7]`
-/

namespace A266925.P16936412184417931993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A098511 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266925.P16936412184417931993

/-! ## A266925.P4472915858440568516

`A317589(A000094(n+3)+1)`
-/

namespace A266925.P4472915858440568516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (A000094 (n + 3) + 1).toNat

end

end A266925.P4472915858440568516

/-! ## A266925.P8253930179438361960

`A317589(A000041(n+2)-(n+1))`
-/

namespace A266925.P8253930179438361960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (A000041 (n + 2) - (n + 1 : ℤ)).toNat

end

end A266925.P8253930179438361960

/-! ## A266925.P6058835235131815722

`A003056(A275282(n)+A000108(n))`
-/

namespace A266925.P6058835235131815722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A275282 n + A000108 n).toNat

end

end A266925.P6058835235131815722

/-!
# A266926: a(0)=0, a(1)=1, a(2)=10; for n>2, a(n) = concat(a(1), ..., a(n-1)).

The programs for A266926, there is no canonical definition to state claims against.
-/

/-! ## A266926.P13132009633713681692

`A007088(A267348(n+1))`
-/

namespace A266926.P13132009633713681692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267348 (n + 1)).toNat

end

end A266926.P13132009633713681692

/-!
# A266927: Perfect powers of the form x^2 + y^2 where x and y are positive integers.

The programs for A266927, there is no canonical definition to state claims against.
-/

/-! ## A266927.P4195059820916512049

`∩[A001597(n+1), A097268(n+1)]`
-/

namespace A266927.P4195059820916512049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266927.P4195059820916512049

/-! ## A266927.P16115199706844168571

`∩[A097268(n+1), A265731(n+1)]`
-/

namespace A266927.P16115199706844168571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266927.P16115199706844168571

/-! ## A266927.P13199211856694321603

`∩[A000404(n+1), A001597(n+1)]`
-/

namespace A266927.P13199211856694321603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266927.P13199211856694321603

/-! ## A266927.P8141410886570131165

`∩[A001597(n+1), A085989(n+1)]`
-/

namespace A266927.P8141410886570131165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266927.P8141410886570131165

/-! ## A266927.P9621153569748689966

`∩[A000404(n+1), A265731(n+1)]`
-/

namespace A266927.P9621153569748689966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266927.P9621153569748689966

/-! ## A266927.P1906972238324941029

`∩[A085989(n+1), A265731(n+1)]`
-/

namespace A266927.P1906972238324941029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266927.P1906972238324941029

/-! ## A266927.P12360988216326350655

`filter[A000404(n+1), A075802(#)]`
-/

namespace A266927.P12360988216326350655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A266927.P12360988216326350655

/-! ## A266927.P3277550151960653496

`filter[A085989(n+1), A075802(#)]`
-/

namespace A266927.P3277550151960653496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A266927.P3277550151960653496

/-! ## A266927.P17913637707920403521

`filter[A097268(n+1), A075802(#)]`
-/

namespace A266927.P17913637707920403521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A266927.P17913637707920403521

/-! ## A266927.P4484540469483566456

`lt[n*A301573(n), A063725(n)]`
-/

namespace A266927.P4484540469483566456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A301573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266927.P4484540469483566456

/-!
# A266928: Number of steps needed to reach 1 or 2 where a step is x -> 3x+1 if x is odd, or x -> x/2p if x is even, 2p being the smallest semiprime dividing x.

The programs for A266928, there is no canonical definition to state claims against.
-/

/-! ## A266928.P2049509133636321160

`lcm(A244569(n), A322028(A286826(n)))`
-/

namespace A266928.P2049509133636321160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A244569 n) (A322028 (A286826 n).toNat)

end

end A266928.P2049509133636321160

/-! ## A266928.P12818425868962126514

`A244569(n)-A000007(C(n, 2)²)`
-/

namespace A266928.P12818425868962126514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n - A000007 (Nat.choose n 2 ^ 2)

end

end A266928.P12818425868962126514

/-! ## A266928.P16961329893504398062

`A244569(n)%A028260(ceil(2^(n-1)))`
-/

namespace A266928.P16961329893504398062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244569 n) (A028260 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A266928.P16961329893504398062

/-! ## A266928.P4888225089388193516

`A244569(n)-A010054(A011782(n))`
-/

namespace A266928.P4888225089388193516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n - A010054 (A011782 n).toNat

end

end A266928.P4888225089388193516

/-! ## A266928.P10611025071050570677

`A244569(n)-A351114(A018006(n))`
-/

namespace A266928.P10611025071050570677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n - A351114 (A018006 n).toNat

end

end A266928.P10611025071050570677

/-!
# A266929: Number of n X n binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266929, there is no canonical definition to state claims against.
-/

/-! ## A266929.P1675654922302482218

`A266935(∑[4*n]+1)`
-/

namespace A266929.P1675654922302482218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266929.P1675654922302482218

/-! ## A266929.P9173175336142005841

`record[A266935(Δ[A235355(n)])]`
-/

namespace A266929.P9173175336142005841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266929.P9173175336142005841

/-! ## A266929.P12818979340117308388

`record[A003982(n)*A266935(n+1)]`
-/

namespace A266929.P12818979340117308388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A266935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266929.P12818979340117308388

/-! ## A266929.P11734567349712219403

`record[root(A266935(n+1), A143182(n))]`
-/

namespace A266929.P11734567349712219403
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A266935 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266929.P11734567349712219403

/-! ## A266929.P10334538793264802243

`record[gcd(A114327(n), A266935(n+1))]`
-/

namespace A266929.P10334538793264802243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A266935 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266929.P10334538793264802243

/-!
# A266930: Number of n X 3 binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266930, the canonical program `A266930.P16228333176969947868` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266930 has offset 1).

The definition of A266930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266930.P16228333176969947868

`ogf((2-4x+x^2+6x^3-x^5-4x^6+4x^7+3x^8-4x^9+x^10)/(1-4x+4x^2+3x^3-6x^4+6x^7-3x^8-4x^9+4x^10-x^11))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266930

/-- `ogf((2-4x+x^2+6x^3-x^5-4x^6+4x^7+3x^8-4x^9+x^10)/(1-4x+4x^2+3x^3-6x^4+6x^7-3x^8-4x^9+4x^10-x^11))` -/
def P16228333176969947868.Spec : Prop :=
  ∀ n, P16228333176969947868.a n = A266930 (n + 1)

theorem P16228333176969947868.correct : P16228333176969947868.Spec := by
  intro n
  simp only [A266930, Nat.add_sub_cancel]

end A266930

/-! ## A266930.P13545387797302164570

`A266935(∑[n+3]+1)`
-/

namespace A266930.P13545387797302164570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266930.P13545387797302164570

namespace A266930

/-- `A266935(∑[n+3]+1)` -/
def P13545387797302164570.Spec : Prop :=
  ∀ n, P13545387797302164570.a n = A266930 (n + 1)

end A266930

/-! ## A266930.P14986204645049896979

`A266935(A000124(n+3)-3)+char[15]`
-/

namespace A266930.P14986204645049896979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A000124 (n + 3) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266930.P14986204645049896979

namespace A266930

/-- `A266935(A000124(n+3)-3)+char[15]` -/
def P14986204645049896979.Spec : Prop :=
  ∀ n, P14986204645049896979.a n = A266930 (n + 1)

end A266930

/-! ## A266930.P9714211222784686624

`record[A129186(n+1)*A266935(n+1)]`
-/

namespace A266930.P9714211222784686624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (n + 1) * A266935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266930.P9714211222784686624

namespace A266930

/-- `record[A129186(n+1)*A266935(n+1)]` -/
def P9714211222784686624.Spec : Prop :=
  ∀ n, P9714211222784686624.a n = A266930 (n + 1)

end A266930

/-! ## A266930.P11531352008807411659

`record[A010054(n+3)*A266935(n+1)]`
-/

namespace A266930.P11531352008807411659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A266935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266930.P11531352008807411659

namespace A266930

/-- `record[A010054(n+3)*A266935(n+1)]` -/
def P11531352008807411659.Spec : Prop :=
  ∀ n, P11531352008807411659.a n = A266930 (n + 1)

end A266930

/-!
# A266931: Number of n X 4 binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266931, there is no canonical definition to state claims against.
-/

/-! ## A266931.P15791010878642451098

`A266935(A141214(n+1))`
-/

namespace A266931.P15791010878642451098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A141214 (n + 1)).toNat

end

end A266931.P15791010878642451098

/-! ## A266931.P11868350106178831291

`A266935(A027379(n+2))`
-/

namespace A266931.P11868350106178831291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A027379 (n + 2)).toNat

end

end A266931.P11868350106178831291

/-! ## A266931.P8660787450555299085

`A266935(A055998(n+2))`
-/

namespace A266931.P8660787450555299085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A055998 (n + 2)).toNat

end

end A266931.P8660787450555299085

/-! ## A266931.P15783426756390713541

`A266935(A155212(n)+5)`
-/

namespace A266931.P15783426756390713541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A155212 n + 5).toNat

end

end A266931.P15783426756390713541

/-! ## A266931.P3730194400820093615

`A266935(A056000(n)+7)`
-/

namespace A266931.P3730194400820093615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A056000 n + 7).toNat

end

end A266931.P3730194400820093615

/-!
# A266932: Number of nX5 binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266932, there is no canonical definition to state claims against.
-/

/-! ## A266932.P14900904416030994031

`A266935(Δ[A264443(n)])`
-/

namespace A266932.P14900904416030994031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (f1 (n + 1) - f1 n).toNat

end

end A266932.P14900904416030994031

/-! ## A266932.P7045870455893808495

`A266935(A046691(n+3))`
-/

namespace A266932.P7045870455893808495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A046691 (n + 3)).toNat

end

end A266932.P7045870455893808495

/-! ## A266932.P8719675606865530419

`A266935(A056115(n)+11)`
-/

namespace A266932.P8719675606865530419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A056115 n + 11).toNat

end

end A266932.P8719675606865530419

/-! ## A266932.P12509034148140335068

`A266935(eq[2, A092921(n)])`
-/

namespace A266932.P12509034148140335068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266932.P12509034148140335068

/-! ## A266932.P18153502202878243473

`A266935(eq[3, A152157(n)])`
-/

namespace A266932.P18153502202878243473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266932.P18153502202878243473

/-!
# A266933: Number of nX6 binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266933, there is no canonical definition to state claims against.
-/

/-! ## A266933.P138279402156371233

`A266935(A052905(n+3))`
-/

namespace A266933.P138279402156371233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A052905 (n + 3)).toNat

end

end A266933.P138279402156371233

/-! ## A266933.P12578833586654081769

`A266935(A056119(n)+16)`
-/

namespace A266933.P12578833586654081769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A056119 n + 16).toNat

end

end A266933.P12578833586654081769

/-! ## A266933.P4055530994634468387

`A266935(eq[3, A219347(n)])`
-/

namespace A266933.P4055530994634468387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266933.P4055530994634468387

/-! ## A266933.P8558010042174886383

`A266935(eq[5, A152157(n)])`
-/

namespace A266933.P8558010042174886383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266933.P8558010042174886383

/-! ## A266933.P1374593478159983522

`A266935(eq[5, A193592(n)])`
-/

namespace A266933.P1374593478159983522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266933.P1374593478159983522

/-!
# A266934: Number of nX7 binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266934, there is no canonical definition to state claims against.
-/

/-! ## A266934.P16542634466098937927

`A266935(A055999(n+4))`
-/

namespace A266934.P16542634466098937927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A055999 (n + 4)).toNat

end

end A266934.P16542634466098937927

/-! ## A266934.P7132127294891322959

`A266935(A134227(n+5))`
-/

namespace A266934.P7132127294891322959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A134227 (n + 5)).toNat

end

end A266934.P7132127294891322959

/-! ## A266934.P1328541363564628274

`A266935(A056121(n)+22)`
-/

namespace A266934.P1328541363564628274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A056121 n + 22).toNat

end

end A266934.P1328541363564628274

/-! ## A266934.P4939076733330585890

`A266935(eq[4, A219347(n)])`
-/

namespace A266934.P4939076733330585890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266934.P4939076733330585890

/-! ## A266934.P11441266630635098038

`A266935(eq[6, A193592(n)])`
-/

namespace A266934.P11441266630635098038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266934.P11441266630635098038

/-!
# A266935: T(n,k)=Number of nXk binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266935, there is no canonical definition to state claims against.
-/

/-! ## A266935.P6242153223165931694

`A180975(n+1)+A036225(A278855(n+1)²)`
-/

namespace A266935.P6242153223165931694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180975 (n + 1) + A036225 (A278855 (n + 1) ^ 2).toNat

end

end A266935.P6242153223165931694

/-! ## A266935.P10860497227941662816

`A107324(A249252(n))+1`
-/

namespace A266935.P10860497227941662816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A249252 n).toNat + 1

end

end A266935.P10860497227941662816

/-! ## A266935.P11848121286953389329

`A325678(A124848(n)+4)`
-/

namespace A266935.P11848121286953389329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A124848 n + 4).toNat

end

end A266935.P11848121286953389329

/-! ## A266935.P12349836966105213888

`A329362(A008517(n+1))+1`
-/

namespace A266935.P12349836966105213888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A008517 (n + 1)).toNat + 1

end

end A266935.P12349836966105213888

/-! ## A266935.P11357087177240994119

`A109337(A019538(n+1)+2)`
-/

namespace A266935.P11357087177240994119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109337 (A019538 (n + 1) + 2).toNat

end

end A266935.P11357087177240994119

/-!
# A266936: Number of 3 X n binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266936, the canonical program `A266936.P7854726465845534082` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266936 has offset 1).

The definition of A266936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266936.P7854726465845534082

`∑[a(n-2)+(n²-n)%3]` with `a(0)=4, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266936

/-- `∑[a(n-2)+(n²-n)%3]` -/
def P7854726465845534082.Spec : Prop :=
  ∀ n, P7854726465845534082.a n = A266936 (n + 1)

theorem P7854726465845534082.correct : P7854726465845534082.Spec := by
  intro n
  simp only [A266936, Nat.add_sub_cancel]

end A266936

/-! ## A266936.P10929292337901465345

`∑[∑[2-gcd(3, n)]+2]+n%2+3`
-/

namespace A266936.P10929292337901465345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n % 2 + 3 : ℕ) : ℤ)

end

end A266936.P10929292337901465345

namespace A266936

/-- `∑[∑[2-gcd(3, n)]+2]+n%2+3` -/
def P10929292337901465345.Spec : Prop :=
  ∀ n, P10929292337901465345.a n = A266936 (n + 1)

end A266936

/-! ## A266936.P3216395880840541584

`ogf((4+3x-2x^2-4x^3-3x^4+4x^5)/(1-x-x^2+x^4+x^5-x^6))`
-/

namespace A266936.P3216395880840541584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, -2, -4, -3, 4] [1, -1, -1, 0, 1, 1, -1] n

end

end A266936.P3216395880840541584

namespace A266936

/-- `ogf((4+3x-2x^2-4x^3-3x^4+4x^5)/(1-x-x^2+x^4+x^5-x^6))` -/
def P3216395880840541584.Spec : Prop :=
  ∀ n, P3216395880840541584.a n = A266936 (n + 1)

end A266936

/-! ## A266936.P11916971785824578981

`∑[n+2]+4-(ceil((n+1)²/6)+ceil((n+1)²/6))`
-/

namespace A266936.P11916971785824578981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ) - (⌈((n + 1) ^ 2 : ℚ) / 6⌉ + ⌈((n + 1) ^ 2 : ℚ) / 6⌉)

end

end A266936.P11916971785824578981

namespace A266936

/-- `∑[n+2]+4-(ceil((n+1)²/6)+ceil((n+1)²/6))` -/
def P11916971785824578981.Spec : Prop :=
  ∀ n, P11916971785824578981.a n = A266936 (n + 1)

end A266936

/-! ## A266936.P9205467084150651220

`Δ[A014126(n+2)+round((n+3)²/12)]`
-/

namespace A266936.P9205467084150651220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (n + 2) + SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266936.P9205467084150651220

namespace A266936

/-- `Δ[A014126(n+2)+round((n+3)²/12)]` -/
def P9205467084150651220.Spec : Prop :=
  ∀ n, P9205467084150651220.a n = A266936 (n + 1)

end A266936

/-! ## A266936.P15468901968579917992

`A000124(n+6)%A008747(n+6)`
-/

namespace A266936.P15468901968579917992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 (n + 6)) (A008747 (n + 6))

end

end A266936.P15468901968579917992

namespace A266936

/-- `A000124(n+6)%A008747(n+6)` -/
def P15468901968579917992.Spec : Prop :=
  ∀ n, P15468901968579917992.a n = A266936 (n + 1)

end A266936

/-! ## A266936.P2239194577622843073

`Δ[A320592(2*n+9)+floor(n/2)]`
-/

namespace A266936.P2239194577622843073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320592 (2 * n + 9) + ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266936.P2239194577622843073

namespace A266936

/-- `Δ[A320592(2*n+9)+floor(n/2)]` -/
def P2239194577622843073.Spec : Prop :=
  ∀ n, P2239194577622843073.a n = A266936 (n + 1)

end A266936

/-! ## A266936.P16985261132848324722

`Δ[A001400(2*(n+2))+round((n+3)²/12)]`
-/

namespace A266936.P16985261132848324722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (2 * (n + 2)) + SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266936.P16985261132848324722

namespace A266936

/-- `Δ[A001400(2*(n+2))+round((n+3)²/12)]` -/
def P16985261132848324722.Spec : Prop :=
  ∀ n, P16985261132848324722.a n = A266936 (n + 1)

end A266936

/-! ## A266936.P8825628544013894200

`record[A052938(2*(a(n-2)+2*floor(n/3)))]` with `a(0)=4, a(1)=1, a(2)=1`
-/

namespace A266936.P8825628544013894200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 1] fun n f1 =>
  A052938 (2 * (f1 (n - 2) + 2 * ⌊(n : ℚ) / 3⌋)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266936.P8825628544013894200

namespace A266936

/-- `record[A052938(2*(a(n-2)+2*floor(n/3)))]` -/
def P8825628544013894200.Spec : Prop :=
  ∀ n, P8825628544013894200.a n = A266936 (n + 1)

end A266936

/-! ## A266936.P6553842633917609629

`A008612(eq[5, A329116(n)])`
-/

namespace A266936.P6553842633917609629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266936.P6553842633917609629

namespace A266936

/-- `A008612(eq[5, A329116(n)])` -/
def P6553842633917609629.Spec : Prop :=
  ∀ n, P6553842633917609629.a n = A266936 (n + 1)

end A266936

/-!
# A266937: Number of 4 X n binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266937, there is no canonical definition to state claims against.
-/

/-! ## A266937.P14795419223751736039

`A266935(∑[n+3]+7)`
-/

namespace A266937.P14795419223751736039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266937.P14795419223751736039

/-! ## A266937.P14132743909721504629

`A266935(A167614(n+2)+1)+char[16]`
-/

namespace A266937.P14132743909721504629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266937.P14132743909721504629

/-! ## A266937.P650308807672535136

`A036225(n)*A266935(A145018(n+4))`
-/

namespace A266937.P650308807672535136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A266935 (A145018 (n + 4)).toNat

end

end A266937.P650308807672535136

/-! ## A266937.P765768205313475365

`A178489(n+4)*A266935(A145018(n+4))`
-/

namespace A266937.P765768205313475365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (n + 4) * A266935 (A145018 (n + 4)).toNat

end

end A266937.P765768205313475365

/-!
# A266938: Number of 5Xn binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266938, there is no canonical definition to state claims against.
-/

/-! ## A266938.P9184660449506972226

`A266935(A167499(n+3))`
-/

namespace A266938.P9184660449506972226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A167499 (n + 3)).toNat

end

end A266938.P9184660449506972226

/-! ## A266938.P13505472205225975454

`A266935(A155212(n)+13)`
-/

namespace A266938.P13505472205225975454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A155212 n + 13).toNat

end

end A266938.P13505472205225975454

/-! ## A266938.P7330367850311085372

`A266935(A056000(n)+15)`
-/

namespace A266938.P7330367850311085372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A056000 n + 15).toNat

end

end A266938.P7330367850311085372

/-! ## A266938.P10777257920756267751

`A266935(eq[7, A066657(n)])`
-/

namespace A266938.P10777257920756267751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266938.P10777257920756267751

/-!
# A266939: Number of 6 X n binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266939, there is no canonical definition to state claims against.
-/

/-! ## A266939.P17148573895154752579

`A266935(A166136(n+4))`
-/

namespace A266939.P17148573895154752579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A166136 (n + 4)).toNat

end

end A266939.P17148573895154752579

/-! ## A266939.P16874183577760079481

`A266935(A056115(n)+21)`
-/

namespace A266939.P16874183577760079481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A056115 n + 21).toNat

end

end A266939.P16874183577760079481

/-! ## A266939.P550703869953020975

`A266935(A167499(n+4)+1)`
-/

namespace A266939.P550703869953020975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A167499 (n + 4) + 1).toNat

end

end A266939.P550703869953020975

/-! ## A266939.P1702537372768949002

`A266935(A000217(n+5)+6)`
-/

namespace A266939.P1702537372768949002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A000217 (n + 5) + 6).toNat

end

end A266939.P1702537372768949002

/-! ## A266939.P3339620685380315261

`A266935(A141214(n+2)+9)`
-/

namespace A266939.P3339620685380315261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A141214 (n + 2) + 9).toNat

end

end A266939.P3339620685380315261

/-!
# A266940: Number of 7Xn binary arrays with rows lexicographically nondecreasing and columns lexicographically nondecreasing and row sums nondecreasing and column sums nonincreasing.

The programs for A266940, there is no canonical definition to state claims against.
-/

/-! ## A266940.P486205402942242480

`A266935(A056119(n)+28)`
-/

namespace A266940.P486205402942242480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A056119 n + 28).toNat

end

end A266940.P486205402942242480

/-! ## A266940.P6691396540484908283

`A266935(eq[11, A066657(n)])`
-/

namespace A266940.P6691396540484908283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266940.P6691396540484908283

/-! ## A266940.P11830996077343590589

`A266935(A166136(n+5)+1)`
-/

namespace A266940.P11830996077343590589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A166136 (n + 5) + 1).toNat

end

end A266940.P11830996077343590589

/-! ## A266940.P10514309366861823607

`A266935(A167499(n+5)+2)`
-/

namespace A266940.P10514309366861823607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A167499 (n + 5) + 2).toNat

end

end A266940.P10514309366861823607

/-! ## A266940.P1004281541080974254

`A266935(A141214(n+3)+10)`
-/

namespace A266940.P1004281541080974254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A141214 (n + 3) + 10).toNat

end

end A266940.P1004281541080974254

/-!
# A266941: Expansion of Product_{k>=1} 1 / (1 - k*x^k)^k.

The programs for A266941, there is no canonical definition to state claims against.
-/

/-! ## A266941.P2623927041660083532

`A294589(∑[n+2]-1)`
-/

namespace A266941.P2623927041660083532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A266941.P2623927041660083532

/-! ## A266941.P3940467645494130375

`A294589(A034856(n+1))%A188849(n+1)`
-/

namespace A266941.P3940467645494130375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294589 (A034856 (n + 1)).toNat) (A188849 (n + 1))

end

end A266941.P3940467645494130375

/-! ## A266941.P2102525839163826621

`A294582(∑[n+2]-1)`
-/

namespace A266941.P2102525839163826621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A266941.P2102525839163826621

/-! ## A266941.P11018978206288623296

`gcd(A000038(n), A294582(A034856(n+1)))`
-/

namespace A266941.P11018978206288623296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A294582 (A034856 (n + 1)).toNat)

end

end A266941.P11018978206288623296

/-! ## A266941.P1604226201187245086

`or(A025469(n), A294582(A034856(n+1)))`
-/

namespace A266941.P1604226201187245086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A294582 (A034856 (n + 1)).toNat)

end

end A266941.P1604226201187245086

/-!
# A266942: Expansion of Product_{k>=1} ((1 + k*x^k) / (1 - k*x^k))^k.

The programs for A266942, there is no canonical definition to state claims against.
-/

/-! ## A266942.P9421390564955235095

`A265844(n)-A221381(A000085(n))`
-/

namespace A266942.P9421390564955235095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265844 n - A221381 (A000085 n).toNat

end

end A266942.P9421390564955235095

/-! ## A266942.P9385859032641656248

`A206622(n)+A058343(A000045(n+2))`
-/

namespace A266942.P9385859032641656248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206622 n + A058343 (A000045 (n + 2)).toNat

end

end A266942.P9385859032641656248

/-!
# A266943: Expansion of Product_{k>=1} 1 / (1 - 2*x^k)^2.

The programs for A266943, there is no canonical definition to state claims against.
-/

/-! ## A266943.P6620187812616317450

`∑{#}[n, A070933(#)*A070933(n-#)]`
-/

namespace A266943.P6620187812616317450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A070933 k * A070933 (n - k)

end

end A266943.P6620187812616317450

/-! ## A266943.P10478918750109503337

`A161344(A119033(n+1))%A215455(n)`
-/

namespace A266943.P10478918750109503337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161344 (A119033 (n + 1)).toNat) (A215455 n)

end

end A266943.P10478918750109503337

/-!
# A266944: Expansion of Product_{k>=1} 1 / (1 - 3*x^k)^2.

The programs for A266944, there is no canonical definition to state claims against.
-/

/-! ## A266944.P6531429745600582047

`∑{#}[n, A242587(#)*A242587(n-#)]`
-/

namespace A266944.P6531429745600582047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A242587 k * A242587 (n - k)

end

end A266944.P6531429745600582047

/-!
# A266945: Expansion of Product_{k>=1} 1 / (1 - 2*x^k)^3.

The programs for A266945, there is no canonical definition to state claims against.
-/

/-! ## A266945.P8296336634732017854

`A120224(A085350(n))`
-/

namespace A266945.P8296336634732017854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120224 (A085350 n).toNat

end

end A266945.P8296336634732017854

/-!
# A266946: Smallest number of each digital type.

The programs for A266946, there is no canonical definition to state claims against.
-/

/-! ## A266946.P11104724189461122147

`A007089(lt[A023717(n), A060587(n)])`
-/

namespace A266946.P11104724189461122147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A266946.P11104724189461122147

/-! ## A266946.P12177582533805091470

`record[A327689(A077342(n+1))]`
-/

namespace A266946.P12177582533805091470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327689 (A077342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266946.P12177582533805091470

/-! ## A266946.P14830137564794381537

`record[A327689(A327706(n+1))]`
-/

namespace A266946.P14830137564794381537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327689 (A327706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266946.P14830137564794381537

/-! ## A266946.P10469466041730949910

`eq[A016380(n), A235049(n)]`
-/

namespace A266946.P10469466041730949910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266946.P10469466041730949910

/-!
# A266947: Number of permutations p of [2n] such that the up-down signature of 0,p has nonnegative partial sums with a maximal value of n.

The programs for A266947, there is no canonical definition to state claims against.
-/

/-! ## A266947.P6746702976547386677

`A258829(C(2*n+1, 2)+n)`
-/

namespace A266947.P6746702976547386677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (Nat.choose (2 * n + 1) 2 + n)

end

end A266947.P6746702976547386677

/-! ## A266947.P15297893083714809809

`A258829(∑[4*n])`
-/

namespace A266947.P15297893083714809809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258829 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266947.P15297893083714809809

/-! ## A266947.P670736966395763788

`A258829(A046092(n))^A178334(n)`
-/

namespace A266947.P670736966395763788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258829 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A266947.P670736966395763788

/-! ## A266947.P1839426489530596143

`gcd(A000038(n), A258829(A046092(n)))`
-/

namespace A266947.P1839426489530596143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258829 (A046092 n).toNat)

end

end A266947.P1839426489530596143

/-! ## A266947.P8702914687078233091

`or(A151878(n), A258829(A046092(n)))`
-/

namespace A266947.P8702914687078233091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 n) (A258829 (A046092 n).toNat)

end

end A266947.P8702914687078233091

/-!
# A266949: a(n) is defined by Product_{i>=1} (1-a(i)*x^i) = Sum_{i>=0} möbius(i+1)*x^i.

The programs for A266949, there is no canonical definition to state claims against.
-/

/-! ## A266949.P950699270246207559

`A068962(A351870(n)+A228644(n))`
-/

namespace A266949.P950699270246207559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A351870 n + A228644 n).toNat

end

end A266949.P950699270246207559

/-! ## A266949.P9184455045954850784

`A025049(n)-A010060(A184974(n))`
-/

namespace A266949.P9184455045954850784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025049 n - A010060 (A184974 n).toNat

end

end A266949.P9184455045954850784

/-! ## A266949.P4142276588112224098

`A025049(n)-A340999(A046489(n))`
-/

namespace A266949.P4142276588112224098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025049 n - A340999 ((A046489 n).toNat + 204)

end

end A266949.P4142276588112224098

/-! ## A266949.P5684994204897586259

`A025049(n)-A014578(A324088(n+1))`
-/

namespace A266949.P5684994204897586259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025049 n - A014578 (A324088 (n + 1)).toNat

end

end A266949.P5684994204897586259

/-! ## A266949.P13868532675422965066

`A025049(n)-A124761(A240364(n+1))`
-/

namespace A266949.P13868532675422965066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025049 n - A124761 (A240364 (n + 1)).toNat

end

end A266949.P13868532675422965066

/-!
# A266951: Record values in A266948: least prime p such that p-2 and 6n-p are also prime.

The programs for A266951, there is no canonical definition to state claims against.
-/

/-! ## A266951.P9344700404492124237

`record[A266953(floor((n/2)²))]`
-/

namespace A266951.P9344700404492124237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266953 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266951.P9344700404492124237

/-! ## A266951.P6587366523765411474

`A266953(ceil(3*n/2)*∑[∑{d}[n, #%2]])`
-/

namespace A266951.P6587366523765411474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266953 (⌈3 * ((n : ℚ) / 2)⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A266951.P6587366523765411474

/-! ## A266951.P10458736066368278195

`record[A266953(n)/A091156(n)]`
-/

namespace A266951.P10458736066368278195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266953 n : ℚ) / (A091156 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266951.P10458736066368278195

/-!
# A266955: Intersection of A046346 (numbers that are divisible by the sum of their prime factors, counted with multiplicity) and A097889 (numbers that are products of at least two consecutive primes).

The programs for A266955, there is no canonical definition to state claims against.
-/

/-! ## A266955.P8267540455258865375

`∩[A257891(n+1), A380487(n+1)]`
-/

namespace A266955.P8267540455258865375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266955.P8267540455258865375

/-!
# A266956: Numbers m such that 9*m+7 is a square.

The programs for A266956, the canonical program `A266956.P5863885163544571678` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266956 has offset 1).

The definition of A266956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266956.P13002397344040070501

`ogf((1+x+14x^2+x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A266956.P13002397344040070501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 14, 1, 1] [1, -1, -2, 2, 1, -1] n

end

end A266956.P13002397344040070501

namespace A266956

/-- `ogf((1+x+14x^2+x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P13002397344040070501.Spec : Prop :=
  ∀ n, P13002397344040070501.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P5978354630730045583

`(18*n*(n+1)-7*(2*(n+1)-1)*(-1)^(n+1)+1)/8`
-/

namespace A266956.P5978354630730045583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * n * (n + 1) : ℤ) - 7 * ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 1 : ℚ) / 8

end

end A266956.P5978354630730045583

namespace A266956

/-- `(18*n*(n+1)-7*(2*(n+1)-1)*(-1)^(n+1)+1)/8` -/
def P5978354630730045583.Spec : Prop :=
  ∀ n, P5978354630730045583.a n = (A266956 (n + 1) : ℚ)

end A266956

/-! ## A266956.P5863885163544571678

`A218864(n+1)+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A266956

/-- `A218864(n+1)+1` -/
def P5863885163544571678.Spec : Prop :=
  ∀ n, P5863885163544571678.a n = A266956 (n + 1)

theorem P5863885163544571678.correct : P5863885163544571678.Spec := by
  intro n
  simp only [A266956, Nat.add_sub_cancel]

end A266956

/-! ## A266956.P2270263614652902945

`∑[n*gcd(2, n)^3]+1`
-/

namespace A266956.P2270263614652902945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266956.P2270263614652902945

namespace A266956

/-- `∑[n*gcd(2, n)^3]+1` -/
def P2270263614652902945.Spec : Prop :=
  ∀ n, (P2270263614652902945.a n : ℤ) = A266956 (n + 1)

end A266956

/-! ## A266956.P15676373325734265069

`∑[n*gcd(8, n%2)]+1`
-/

namespace A266956.P15676373325734265069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 8 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266956.P15676373325734265069

namespace A266956

/-- `∑[n*gcd(8, n%2)]+1` -/
def P15676373325734265069.Spec : Prop :=
  ∀ n, (P15676373325734265069.a n : ℤ) = A266956 (n + 1)

end A266956

/-! ## A266956.P4391331169549746232

`∑[gcd(8*n, record[(1-n²)²])]`
-/

namespace A266956.P4391331169549746232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n ^ 2 : ℤ)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 * n : ℤ) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266956.P4391331169549746232

namespace A266956

/-- `∑[gcd(8*n, record[(1-n²)²])]` -/
def P4391331169549746232.Spec : Prop :=
  ∀ n, (P4391331169549746232.a n : ℤ) = A266956 (n + 1)

end A266956

/-! ## A266956.P18357796806927546463

`floor((3*n-sqrt(a(n-1)+1))²)` with `a(0)=1`
-/

namespace A266956.P18357796806927546463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((3 * n : ℝ) - Real.sqrt (a (n - 1) + 1 : ℝ)) ^ 2⌋

end

end A266956.P18357796806927546463

namespace A266956

/-- `floor((3*n-sqrt(a(n-1)+1))²)` -/
def P18357796806927546463.Spec : Prop :=
  ∀ n, P18357796806927546463.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P10857626148656437593

`∑[n*∏{d}[3-a(n-1), #]]+1` with `a(0)=4`
-/

namespace A266956.P10857626148656437593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266956.P10857626148656437593

namespace A266956

/-- `∑[n*∏{d}[3-a(n-1), #]]+1` -/
def P10857626148656437593.Spec : Prop :=
  ∀ n, (P10857626148656437593.a n : ℤ) = A266956 (n + 1)

end A266956

/-! ## A266956.P17316162746453710704

`∑[A317316(n)]+1`
-/

namespace A266956.P17316162746453710704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266956.P17316162746453710704

namespace A266956

/-- `∑[A317316(n)]+1` -/
def P17316162746453710704.Spec : Prop :=
  ∀ n, P17316162746453710704.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P8806496482048596721

`∑[n*A021059(n)]+1`
-/

namespace A266956.P8806496482048596721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A021059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266956.P8806496482048596721

namespace A266956

/-- `∑[n*A021059(n)]+1` -/
def P8806496482048596721.Spec : Prop :=
  ∀ n, P8806496482048596721.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P12432023772826597198

`∑[n*A040019(n)]+1`
-/

namespace A266956.P12432023772826597198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266956.P12432023772826597198

namespace A266956

/-- `∑[n*A040019(n)]+1` -/
def P12432023772826597198.Spec : Prop :=
  ∀ n, P12432023772826597198.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P5641538057282132302

`∑[gcd(n²², A022144(n))]`
-/

namespace A266956.P5641538057282132302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2) ^ 2 : ℤ) (A022144 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266956.P5641538057282132302

namespace A266956

/-- `∑[gcd(n²², A022144(n))]` -/
def P5641538057282132302.Spec : Prop :=
  ∀ n, (P5641538057282132302.a n : ℤ) = A266956 (n + 1)

end A266956

/-! ## A266956.P12794337950771174713

`A185039(n+1)+A157142(n)`
-/

namespace A266956.P12794337950771174713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185039 (n + 1) + A157142 n

end

end A266956.P12794337950771174713

namespace A266956

/-- `A185039(n+1)+A157142(n)` -/
def P12794337950771174713.Spec : Prop :=
  ∀ n, P12794337950771174713.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P17029157849588277062

`A014493(n+1)-A317300(n)`
-/

namespace A266956.P17029157849588277062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) - A317300 n

end

end A266956.P17029157849588277062

namespace A266956

/-- `A014493(n+1)-A317300(n)` -/
def P17029157849588277062.Spec : Prop :=
  ∀ n, P17029157849588277062.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P1658505431458671430

`A303299(n)+1-A110660(n)`
-/

namespace A266956.P1658505431458671430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303299 n + (1 - A110660 n)

end

end A266956.P1658505431458671430

namespace A266956

/-- `A303299(n)+1-A110660(n)` -/
def P1658505431458671430.Spec : Prop :=
  ∀ n, P1658505431458671430.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P3621684203895758194

`A060544(n+1)-A394829(n)`
-/

namespace A266956.P3621684203895758194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - A394829 n

end

end A266956.P3621684203895758194

namespace A266956

/-- `A060544(n+1)-A394829(n)` -/
def P3621684203895758194.Spec : Prop :=
  ∀ n, P3621684203895758194.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P4464589129089483211

`A298039(n)-A185039(n+1)`
-/

namespace A266956.P4464589129089483211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 n - A185039 (n + 1)

end

end A266956.P4464589129089483211

namespace A266956

/-- `A298039(n)-A185039(n+1)` -/
def P4464589129089483211.Spec : Prop :=
  ∀ n, P4464589129089483211.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P3314810233918373508

`∑[A257088(n)+A317314(n)-n]`
-/

namespace A266956.P3314810233918373508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n + (A317314 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266956.P3314810233918373508

namespace A266956

/-- `∑[A257088(n)+A317314(n)-n]` -/
def P3314810233918373508.Spec : Prop :=
  ∀ n, P3314810233918373508.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P10469868766012337969

`A296063(n+1)+A057780(n+1)`
-/

namespace A266956.P10469868766012337969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296063 (n + 1) + A057780 (n + 1)

end

end A266956.P10469868766012337969

namespace A266956

/-- `A296063(n+1)+A057780(n+1)` -/
def P10469868766012337969.Spec : Prop :=
  ∀ n, P10469868766012337969.a n = A266956 (n + 1)

end A266956

/-! ## A266956.P12921516929705684478

`A274979(n+1)+A110660(n)+1`
-/

namespace A266956.P12921516929705684478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274979 (n + 1) + (A110660 n + 1)

end

end A266956.P12921516929705684478

namespace A266956

/-- `A274979(n+1)+A110660(n)+1` -/
def P12921516929705684478.Spec : Prop :=
  ∀ n, P12921516929705684478.a n = A266956 (n + 1)

end A266956

/-!
# A266957: Numbers m such that 9*m+10 is a square.

The programs for A266957, the canonical program `A266957.P11777759463096657997` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266957 has offset 1).

The definition of A266957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266957.P8378121554871349435

`ogf((-1+7x+6x^2+7x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A266957.P8378121554871349435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 7, 6, 7, -1] [1, -1, -2, 2, 1, -1] n

end

end A266957.P8378121554871349435

namespace A266957

/-- `ogf((-1+7x+6x^2+7x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P8378121554871349435.Spec : Prop :=
  ∀ n, P8378121554871349435.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P11777759463096657997

`(18*n*(n+1)+5*(2*(n+1)-1)*(-1)^(n+1)-3)/8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266957

/-- `(18*n*(n+1)+5*(2*(n+1)-1)*(-1)^(n+1)-3)/8` -/
def P11777759463096657997.Spec : Prop :=
  ∀ n, P11777759463096657997.a n = (A266957 (n + 1) : ℚ)

end A266957

/-! ## A266957.P8334944207122171830

`∑[n*(10/gcd(2, n)-3)]-1`
-/

namespace A266957.P8334944207122171830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (10 / (Nat.gcd 2 n : ℚ) - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A266957.P8334944207122171830

namespace A266957

/-- `∑[n*(10/gcd(2, n)-3)]-1` -/
def P8334944207122171830.Spec : Prop :=
  ∀ n, P8334944207122171830.a n = (A266957 (n + 1) : ℚ)

end A266957

/-! ## A266957.P14506645665063334167

`∑[lcm(2, 5*n)-floor(3/acot(n))]`
-/

namespace A266957.P14506645665063334167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (5 * n) : ℤ) - ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266957.P14506645665063334167

namespace A266957

/-- `∑[lcm(2, 5*n)-floor(3/acot(n))]` -/
def P14506645665063334167.Spec : Prop :=
  ∀ n, P14506645665063334167.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P7136484817028781255

`∑[n*∑[-a(n-1)]]+∑[n]-1` with `a(0)=1, a(1)=5`
-/

namespace A266957.P7136484817028781255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

end

end A266957.P7136484817028781255

namespace A266957

/-- `∑[n*∑[-a(n-1)]]+∑[n]-1` -/
def P7136484817028781255.Spec : Prop :=
  ∀ n, P7136484817028781255.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P15569453136747662054

`A132355(n+1)-1`
-/

namespace A266957.P15569453136747662054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132355 (n + 1) - 1

end

end A266957.P15569453136747662054

namespace A266957

/-- `A132355(n+1)-1` -/
def P15569453136747662054.Spec : Prop :=
  ∀ n, P15569453136747662054.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P12615792963493651130

`∑[n*A010697(n)]-1`
-/

namespace A266957.P12615792963493651130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A266957.P12615792963493651130

namespace A266957

/-- `∑[n*A010697(n)]-1` -/
def P12615792963493651130.Spec : Prop :=
  ∀ n, P12615792963493651130.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P15540303908360277402

`A219191(n+1)+∑[n]-1`
-/

namespace A266957.P15540303908360277402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219191 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A266957.P15540303908360277402

namespace A266957

/-- `A219191(n+1)+∑[n]-1` -/
def P15540303908360277402.Spec : Prop :=
  ∀ n, P15540303908360277402.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P1347997295212413878

`∑[n*and(7, A280193(n))]-1`
-/

namespace A266957.P1347997295212413878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 7 (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A266957.P1347997295212413878

namespace A266957

/-- `∑[n*and(7, A280193(n))]-1` -/
def P1347997295212413878.Spec : Prop :=
  ∀ n, P1347997295212413878.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P4503419196242808608

`∑[n*A000040(gcd(n+1, n-1)²)]-1`
-/

namespace A266957.P4503419196242808608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A266957.P4503419196242808608

namespace A266957

/-- `∑[n*A000040(gcd(n+1, n-1)²)]-1` -/
def P4503419196242808608.Spec : Prop :=
  ∀ n, P4503419196242808608.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P18202249587709832730

`2*A057570(n+1)+∑[n+1]-(n+2)`
-/

namespace A266957.P18202249587709832730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057570 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 2 : ℤ))

end

end A266957.P18202249587709832730

namespace A266957

/-- `2*A057570(n+1)+∑[n+1]-(n+2)` -/
def P18202249587709832730.Spec : Prop :=
  ∀ n, P18202249587709832730.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P9653387785288105807

`A298027(n)-A195084(n)`
-/

namespace A266957.P9653387785288105807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 n - A195084 n

end

end A266957.P9653387785288105807

namespace A266957

/-- `A298027(n)-A195084(n)` -/
def P9653387785288105807.Spec : Prop :=
  ∀ n, P9653387785288105807.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P18388380594577286985

`A057780(n+1)-A157142(n)`
-/

namespace A266957.P18388380594577286985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057780 (n + 1) - A157142 n

end

end A266957.P18388380594577286985

namespace A266957

/-- `A057780(n+1)-A157142(n)` -/
def P18388380594577286985.Spec : Prop :=
  ∀ n, P18388380594577286985.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P18069535334091404527

`A124080(n)-A181433(n+1)`
-/

namespace A266957.P18069535334091404527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n - A181433 (n + 1)

end

end A266957.P18069535334091404527

namespace A266957

/-- `A124080(n)-A181433(n+1)` -/
def P18069535334091404527.Spec : Prop :=
  ∀ n, P18069535334091404527.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P2725032847757201847

`A033996(n)-A374584(n+1)`
-/

namespace A266957.P2725032847757201847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A374584 (n + 1)

end

end A266957.P2725032847757201847

namespace A266957

/-- `A033996(n)-A374584(n+1)` -/
def P2725032847757201847.Spec : Prop :=
  ∀ n, P2725032847757201847.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P10288239899856161364

`A273365(n)+A317300(n)-1`
-/

namespace A266957.P10288239899856161364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273365 n + (A317300 n - 1)

end

end A266957.P10288239899856161364

namespace A266957

/-- `A273365(n)+A317300(n)-1` -/
def P10288239899856161364.Spec : Prop :=
  ∀ n, P10288239899856161364.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P14237486818090606529

`∪[A013656(n), A147296(n)]-1`
-/

namespace A266957.P14237486818090606529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147296 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A266957.P14237486818090606529

namespace A266957

/-- `∪[A013656(n), A147296(n)]-1` -/
def P14237486818090606529.Spec : Prop :=
  ∀ n, P14237486818090606529.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P5606000813054363368

`A001057(n)²+A014494(n)-1`
-/

namespace A266957.P5606000813054363368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2 + (A014494 n - 1)

end

end A266957.P5606000813054363368

namespace A266957

/-- `A001057(n)²+A014494(n)-1` -/
def P5606000813054363368.Spec : Prop :=
  ∀ n, P5606000813054363368.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P1680131201057493798

`A007494(n)²+A059029(n)-1`
-/

namespace A266957.P1680131201057493798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n ^ 2 + (A059029 n - 1)

end

end A266957.P1680131201057493798

namespace A266957

/-- `A007494(n)²+A059029(n)-1` -/
def P1680131201057493798.Spec : Prop :=
  ∀ n, P1680131201057493798.a n = A266957 (n + 1)

end A266957

/-! ## A266957.P15744818556303812892

`A014494(n)+A110654(n)²-1`
-/

namespace A266957.P15744818556303812892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n + (A110654 n ^ 2 - 1)

end

end A266957.P15744818556303812892

namespace A266957

/-- `A014494(n)+A110654(n)²-1` -/
def P15744818556303812892.Spec : Prop :=
  ∀ n, P15744818556303812892.a n = A266957 (n + 1)

end A266957

/-!
# A266958: Numbers m such that 9*m+13 is a square.

The programs for A266958, the canonical program `A266958.P9807318454458482602` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266958 has offset 1).

The definition of A266958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266958.P2784031467035452524

`ogf((-1+5x+10x^2+5x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A266958.P2784031467035452524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 5, 10, 5, -1] [1, -1, -2, 2, 1, -1] n

end

end A266958.P2784031467035452524

namespace A266958

/-- `ogf((-1+5x+10x^2+5x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P2784031467035452524.Spec : Prop :=
  ∀ n, P2784031467035452524.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P9807318454458482602

`(18*n*(n+1)+(2*(n+1)-1)*(-1)^(n+1)-7)/8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266958

/-- `(18*n*(n+1)+(2*(n+1)-1)*(-1)^(n+1)-7)/8` -/
def P9807318454458482602.Spec : Prop :=
  ∀ n, P9807318454458482602.a n = (A266958 (n + 1) : ℚ)

end A266958

/-! ## A266958.P3929189552000046595

`∑[n*(n%2+4)]-1`
-/

namespace A266958.P3929189552000046595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A266958.P3929189552000046595

namespace A266958

/-- `∑[n*(n%2+4)]-1` -/
def P3929189552000046595.Spec : Prop :=
  ∀ n, P3929189552000046595.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P11951285552213133244

`∑[lcm(2, n)+3*n]-1`
-/

namespace A266958.P11951285552213133244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A266958.P11951285552213133244

namespace A266958

/-- `∑[lcm(2, n)+3*n]-1` -/
def P11951285552213133244.Spec : Prop :=
  ∀ n, P11951285552213133244.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P4160169958342241254

`∑[n*(6-gcd(2, n))]-1`
-/

namespace A266958.P4160169958342241254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (6 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A266958.P4160169958342241254

namespace A266958

/-- `∑[n*(6-gcd(2, n))]-1` -/
def P4160169958342241254.Spec : Prop :=
  ∀ n, P4160169958342241254.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P1607830024677593913

`∑[n*(and(1, n)+4)]-1`
-/

namespace A266958.P1607830024677593913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A266958.P1607830024677593913

namespace A266958

/-- `∑[n*(and(1, n)+4)]-1` -/
def P1607830024677593913.Spec : Prop :=
  ∀ n, P1607830024677593913.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P17814875773115778558

`A185039(n+1)-1`
-/

namespace A266958.P17814875773115778558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185039 (n + 1) - 1

end

end A266958.P17814875773115778558

namespace A266958

/-- `A185039(n+1)-1` -/
def P17814875773115778558.Spec : Prop :=
  ∀ n, P17814875773115778558.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P13285500416713170007

`A140676(n)-A014255(n)`
-/

namespace A266958.P13285500416713170007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140676 n - A014255 n

end

end A266958.P13285500416713170007

namespace A266958

/-- `A140676(n)-A014255(n)` -/
def P13285500416713170007.Spec : Prop :=
  ∀ n, P13285500416713170007.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P14502974882926205702

`A033996(n)-A212965(n)`
-/

namespace A266958.P14502974882926205702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A212965 n

end

end A266958.P14502974882926205702

namespace A266958

/-- `A033996(n)-A212965(n)` -/
def P14502974882926205702.Spec : Prop :=
  ∀ n, P14502974882926205702.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P16955130871020380717

`A024966(n)-A247643(n)`
-/

namespace A266958.P16955130871020380717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n - A247643 n

end

end A266958.P16955130871020380717

namespace A266958

/-- `A024966(n)-A247643(n)` -/
def P16955130871020380717.Spec : Prop :=
  ∀ n, P16955130871020380717.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P2683997217547839348

`A028896(n)-A257083(n)`
-/

namespace A266958.P2683997217547839348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n - A257083 n

end

end A266958.P2683997217547839348

namespace A266958

/-- `A028896(n)-A257083(n)` -/
def P2683997217547839348.Spec : Prop :=
  ∀ n, P2683997217547839348.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P1116022685003308958

`A270710(n)-A032438(n)`
-/

namespace A266958.P1116022685003308958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270710 n - A032438 n

end

end A266958.P1116022685003308958

namespace A266958

/-- `A270710(n)-A032438(n)` -/
def P1116022685003308958.Spec : Prop :=
  ∀ n, P1116022685003308958.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P11705927399833492211

`A213498(n)-A152618(n)`
-/

namespace A266958.P11705927399833492211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213498 n - A152618 n

end

end A266958.P11705927399833492211

namespace A266958

/-- `A213498(n)-A152618(n)` -/
def P11705927399833492211.Spec : Prop :=
  ∀ n, P11705927399833492211.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P6018328912479128968

`A195016(n)-A264754(n)`
-/

namespace A266958.P6018328912479128968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195016 n - A264754 n

end

end A266958.P6018328912479128968

namespace A266958

/-- `A195016(n)-A264754(n)` -/
def P6018328912479128968.Spec : Prop :=
  ∀ n, P6018328912479128968.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P2893770321714834989

`A004538(n)-A001082(n+1)`
-/

namespace A266958.P2893770321714834989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n - A001082 (n + 1)

end

end A266958.P2893770321714834989

namespace A266958

/-- `A004538(n)-A001082(n+1)` -/
def P2893770321714834989.Spec : Prop :=
  ∀ n, P2893770321714834989.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P1949466074042890459

`A036666(n+1)-A110331(n)`
-/

namespace A266958.P1949466074042890459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) - A110331 n

end

end A266958.P1949466074042890459

namespace A266958

/-- `A036666(n+1)-A110331(n)` -/
def P1949466074042890459.Spec : Prop :=
  ∀ n, P1949466074042890459.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P10004466450986094067

`A222964(n+1)-A016754(n)`
-/

namespace A266958.P10004466450986094067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222964 (n + 1) - A016754 n

end

end A266958.P10004466450986094067

namespace A266958

/-- `A222964(n+1)-A016754(n)` -/
def P10004466450986094067.Spec : Prop :=
  ∀ n, P10004466450986094067.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P14856032821528610674

`A003215(n)-A271713(n+1)`
-/

namespace A266958.P14856032821528610674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A271713 (n + 1)

end

end A266958.P14856032821528610674

namespace A266958

/-- `A003215(n)-A271713(n+1)` -/
def P14856032821528610674.Spec : Prop :=
  ∀ n, P14856032821528610674.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P1628866570169764238

`A218864(n+1)-A157142(n)`
-/

namespace A266958.P1628866570169764238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (n + 1) - A157142 n

end

end A266958.P1628866570169764238

namespace A266958

/-- `A218864(n+1)-A157142(n)` -/
def P1628866570169764238.Spec : Prop :=
  ∀ n, P1628866570169764238.a n = A266958 (n + 1)

end A266958

/-! ## A266958.P9725211059542056248

`A057780(n+1)-A296063(n+1)`
-/

namespace A266958.P9725211059542056248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057780 (n + 1) - A296063 (n + 1)

end

end A266958.P9725211059542056248

namespace A266958

/-- `A057780(n+1)-A296063(n+1)` -/
def P9725211059542056248.Spec : Prop :=
  ∀ n, P9725211059542056248.a n = A266958 (n + 1)

end A266958

/-!
# A266959: Smallest n-digit number ending in n.

The programs for A266959, the canonical program `A266959.P18050971258688580066` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266959 has offset 1).

The definition of A266959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266959.P18050971258688580066

`ogf((1-20x^2+10x^3)/(1-12x+21x^2-10x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266959

/-- `ogf((1-20x^2+10x^3)/(1-12x+21x^2-10x^3))` -/
def P18050971258688580066.Spec : Prop :=
  ∀ n, P18050971258688580066.a n = A266959 (n + 1)

theorem P18050971258688580066.correct : P18050971258688580066.Spec := by
  intro n
  simp only [A266959, Nat.add_sub_cancel]

end A266959

/-! ## A266959.P10927831982948970145

`or(1, 10^n)+n`
-/

namespace A266959.P10927831982948970145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 ^ n) + n

end

end A266959.P10927831982948970145

namespace A266959

/-- `or(1, 10^n)+n` -/
def P10927831982948970145.Spec : Prop :=
  ∀ n, (P10927831982948970145.a n : ℤ) = A266959 (n + 1)

end A266959

/-! ## A266959.P9255720096053164396

`and(10^n, -2)+1+n`
-/

namespace A266959.P9255720096053164396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (-2) + 1 + (n : ℤ)

end

end A266959.P9255720096053164396

namespace A266959

/-- `and(10^n, -2)+1+n` -/
def P9255720096053164396.Spec : Prop :=
  ∀ n, P9255720096053164396.a n = A266959 (n + 1)

end A266959

/-! ## A266959.P18420602666279139614

`ceil(sqrt(∑[2*n]))+10^n`
-/

namespace A266959.P18420602666279139614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + (10 ^ n : ℤ)

end

end A266959.P18420602666279139614

namespace A266959

/-- `ceil(sqrt(∑[2*n]))+10^n` -/
def P18420602666279139614.Spec : Prop :=
  ∀ n, P18420602666279139614.a n = A266959 (n + 1)

end A266959

/-! ## A266959.P13552519647731095532

`(10^n+n+1)^ceil(abs(sin(n)))`
-/

namespace A266959.P13552519647731095532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + (n + 1) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A266959.P13552519647731095532

namespace A266959

/-- `(10^n+n+1)^ceil(abs(sin(n)))` -/
def P13552519647731095532.Spec : Prop :=
  ∀ n, P13552519647731095532.a n = (A266959 (n + 1) : ℚ)

end A266959

/-! ## A266959.P8467841844982203470

`abs(floor(acot(n))-(n+1)-10^n)`
-/

namespace A266959.P8467841844982203470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊SequenceMachineLib.acot (n : ℝ)⌋ - (n + 1 : ℤ) - (10 ^ n : ℤ)|

end

end A266959.P8467841844982203470

namespace A266959

/-- `abs(floor(acot(n))-(n+1)-10^n)` -/
def P8467841844982203470.Spec : Prop :=
  ∀ n, P8467841844982203470.a n = A266959 (n + 1)

end A266959

/-! ## A266959.P12444399118949063076

`Δ[∑[n]+10^n/9]^ceil(sin(n)²)`
-/

namespace A266959.P12444399118949063076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) + (10 ^ n : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A266959.P12444399118949063076

namespace A266959

/-- `Δ[∑[n]+10^n/9]^ceil(sin(n)²)` -/
def P12444399118949063076.Spec : Prop :=
  ∀ n, P12444399118949063076.a n = (A266959 (n + 1) : ℚ)

end A266959

/-! ## A266959.P10808982641514679294

`ceil(A081552(n+1)+sin(n)²)`
-/

namespace A266959.P10808982641514679294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081552 (n + 1) : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A266959.P10808982641514679294

namespace A266959

/-- `ceil(A081552(n+1)+sin(n)²)` -/
def P10808982641514679294.Spec : Prop :=
  ∀ n, P10808982641514679294.a n = A266959 (n + 1)

end A266959

/-! ## A266959.P18393887014522921619

`floor(A178500(n)+n-log2(1/2))`
-/

namespace A266959.P18393887014522921619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178500 n : ℝ) + ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))⌋

end

end A266959.P18393887014522921619

namespace A266959

/-- `floor(A178500(n)+n-log2(1/2))` -/
def P18393887014522921619.Spec : Prop :=
  ∀ n, P18393887014522921619.a n = A266959 (n + 1)

end A266959

/-! ## A266959.P11901408323606228340

`abs(A011557(n)+1+n-floor(acot(n)))`
-/

namespace A266959.P11901408323606228340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n + 1 + (n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋|

end

end A266959.P11901408323606228340

namespace A266959

/-- `abs(A011557(n)+1+n-floor(acot(n)))` -/
def P11901408323606228340.Spec : Prop :=
  ∀ n, P11901408323606228340.a n = A266959 (n + 1)

end A266959

/-! ## A266959.P10355557016545342226

`abs(round(A063945(n)+a(n-1))+1)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A266959.P10355557016545342226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A063945 n + a (n - 1) + 1|

end

end A266959.P10355557016545342226

namespace A266959

/-- `abs(round(A063945(n)+a(n-1))+1)` -/
def P10355557016545342226.Spec : Prop :=
  ∀ n, P10355557016545342226.a n = A266959 (n + 1)

end A266959

/-! ## A266959.P3009061433108069495

`floor(A000533(n)+A005843(n)/2)`
-/

namespace A266959.P3009061433108069495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000533 n : ℚ) + (A005843 n : ℚ) / 2⌋

end

end A266959.P3009061433108069495

namespace A266959

/-- `floor(A000533(n)+A005843(n)/2)` -/
def P3009061433108069495.Spec : Prop :=
  ∀ n, P3009061433108069495.a n = A266959 (n + 1)

end A266959

/-!
# A266960: Integer averages of first n Fibonacci numbers (beginning with F(0)).

The programs for A266960, there is no canonical definition to state claims against.
-/

/-! ## A266960.P7383112248544482056

`A000071(A219612(n+1)+1)/A219612(n+1)`
-/

namespace A266960.P7383112248544482056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (A219612 (n + 1) + 1).toNat : ℚ) / (A219612 (n + 1) : ℚ)

end

end A266960.P7383112248544482056

/-! ## A266960.P15964931801771785870

`A136683(a(n-1))+n` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A266960.P15964931801771785870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A136683 (a (n - 1)).toNat + (n : ℤ)

end

end A266960.P15964931801771785870

/-!
# A266964: Expansion of Product_{k>=1} (1 - k*x^k)^k.

The programs for A266964, there is no canonical definition to state claims against.
-/

/-! ## A266964.P11298962376823995155

`A294580(∑[n+2]-1)`
-/

namespace A266964.P11298962376823995155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294580 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A266964.P11298962376823995155

/-! ## A266964.P2316317814690404815

`A294587(∑[n+2]-1)`
-/

namespace A266964.P2316317814690404815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A266964.P2316317814690404815

/-! ## A266964.P13964951371137023909

`A294580(A034856(n+1))+A025439(n)`
-/

namespace A266964.P13964951371137023909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294580 (A034856 (n + 1)).toNat + A025439 n

end

end A266964.P13964951371137023909

/-! ## A266964.P1692552075853213529

`A294580(A034856(n+1))%A006415(n)`
-/

namespace A266964.P1692552075853213529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294580 (A034856 (n + 1)).toNat) (A006415 n)

end

end A266964.P1692552075853213529

/-! ## A266964.P14003320314743866265

`or(A000007(n), A294580(A034856(n+1)))`
-/

namespace A266964.P14003320314743866265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294580 (A034856 (n + 1)).toNat)

end

end A266964.P14003320314743866265

/-! ## A266964.P4035499128524812388

`A294580(A034856(n+1))+and(2, A000290(n))`
-/

namespace A266964.P4035499128524812388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294580 (A034856 (n + 1)).toNat + Int.land 2 (A000290 n)

end

end A266964.P4035499128524812388

/-! ## A266964.P17894355641826788894

`A007318(C(2, n))*A294580(A034856(n+1))`
-/

namespace A266964.P17894355641826788894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A294580 (A034856 (n + 1)).toNat

end

end A266964.P17894355641826788894

/-! ## A266964.P6456558394760281706

`A294587(A034856(n+1))+A000122(A000040(n+1))`
-/

namespace A266964.P6456558394760281706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 (A034856 (n + 1)).toNat + A000122 (A000040 (n + 1)).toNat

end

end A266964.P6456558394760281706

/-! ## A266964.P12288435089480933585

`A294580(A034856(n+1))^A001065(A020639(n+1))`
-/

namespace A266964.P12288435089480933585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294580 (A034856 (n + 1)).toNat : ℚ) ^ (A001065 (A020639 (n + 1)).toNat : ℤ)

end

end A266964.P12288435089480933585

/-!
# A266965: Primes of the form p = a^2 + b^2 where |a^2 - b^2| is composite.

The programs for A266965, there is no canonical definition to state claims against.
-/

/-! ## A266965.P15935993356022198592

`∪[A087937(n+1), A087939(n+1)]`
-/

namespace A266965.P15935993356022198592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266965.P15935993356022198592

/-! ## A266965.P2083861183813732385

`p?[A142150(A082284(A017137(n)))]`
-/

namespace A266965.P2083861183813732385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A082284 (A017137 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266965.P2083861183813732385

/-! ## A266965.P15470231428422738998

`p?[A042948(n*A267704(A245552(n)))]`
-/

namespace A266965.P15470231428422738998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 ((n : ℤ) * A267704 (A245552 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266965.P15470231428422738998

/-! ## A266965.P4564301940141083015

`p?[A010051(A070079(n+1))+A002144(n+1)]`
-/

namespace A266965.P4564301940141083015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A070079 (n + 1)).toNat + A002144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266965.P4564301940141083015

/-! ## A266965.P2964690143168903853

`p?[A002144(n+1)*A005171(A002366(n+1))]`
-/

namespace A266965.P2964690143168903853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A005171 (A002366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266965.P2964690143168903853

/-! ## A266965.P1204311868318546678

`p?[A005171(A046086(n+1))*A020882(n+1)]`
-/

namespace A266965.P1204311868318546678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A046086 (n + 1)).toNat * A020882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266965.P1204311868318546678

/-!
# A266966: Primes of the form x^2 + y^2 where x^2 + x*y + y^2 is also prime with positive x and y.

The programs for A266966, there is no canonical definition to state claims against.
-/

/-! ## A266966.P13407612361750192646

`p?[A123919(or(2, A213172(n)))]`
-/

namespace A266966.P13407612361750192646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (Int.lor 2 (A213172 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266966.P13407612361750192646

/-! ## A266966.P10836189098972591854

`record[p?[A143182(A064403(n+1))]]`
-/

namespace A266966.P10836189098972591854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (A064403 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266966.P10836189098972591854

/-! ## A266966.P12591739777712286221

`∩[A215642(n+1), A389514(n+1)]`
-/

namespace A266966.P12591739777712286221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266966.P12591739777712286221

/-!
# A266968: Number of ordered ways to write n as x^5+y^4+z^3+w*(w+1)/2, where x, y, z and w are nonnegative integers with z > 0 and w > 0.

The programs for A266968, there is no canonical definition to state claims against.
-/

/-! ## A266968.P13895301879955981885

`A124760(A007089(n)*A241619(n+1))`
-/

namespace A266968.P13895301879955981885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A007089 n * A241619 (n + 1)).toNat

end

end A266968.P13895301879955981885

/-!
# A266969: Integers k such that A001006(k) is divisible by k.

The programs for A266969, there is no canonical definition to state claims against.
-/

/-! ## A266969.P11991117778909668328

`A149924(n)!%A191970(2*n+1)`
-/

namespace A266969.P11991117778909668328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A149924 n).toNat : ℤ) (A191970 (2 * n + 1))

end

end A266969.P11991117778909668328

/-!
# A266970: Primes of the form x^3 + x*y + y^3 where x and y are positive integers.

The programs for A266970, there is no canonical definition to state claims against.
-/

/-! ## A266970.P3163675061932277823

`p?[A300381(n+1)]`
-/

namespace A266970.P3163675061932277823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266970.P3163675061932277823

/-! ## A266970.P5173930154472638268

`∩[A015919(n+1), A300381(n+1)]`
-/

namespace A266970.P5173930154472638268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P5173930154472638268

/-! ## A266970.P14267200098728553962

`∩[A216285(n+1), A300381(n+1)]`
-/

namespace A266970.P14267200098728553962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P14267200098728553962

/-! ## A266970.P1919463888845904364

`∩[A000040(n+1), A300381(n+1)]`
-/

namespace A266970.P1919463888845904364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P1919463888845904364

/-! ## A266970.P730439150277338550

`∩[A004139(n+1), A300381(n+1)]`
-/

namespace A266970.P730439150277338550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P730439150277338550

/-! ## A266970.P13718098873503959000

`∩[A006005(n+1), A300381(n+1)]`
-/

namespace A266970.P13718098873503959000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P13718098873503959000

/-! ## A266970.P13104795519164489056

`∩[A008578(n+1), A300381(n+1)]`
-/

namespace A266970.P13104795519164489056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P13104795519164489056

/-! ## A266970.P16391349677847052435

`∩[A033946(n+1), A300381(n+1)]`
-/

namespace A266970.P16391349677847052435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P16391349677847052435

/-! ## A266970.P8921309313245921223

`∩[A045319(n+1), A300381(n+1)]`
-/

namespace A266970.P8921309313245921223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P8921309313245921223

/-! ## A266970.P11409973284723885981

`∩[A046022(n+1), A300381(n+1)]`
-/

namespace A266970.P11409973284723885981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P11409973284723885981

/-! ## A266970.P1630216008740786018

`∩[A051948(n+1), A300381(n+1)]`
-/

namespace A266970.P1630216008740786018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P1630216008740786018

/-! ## A266970.P10689349412901362105

`∩[A065091(n+1), A300381(n+1)]`
-/

namespace A266970.P10689349412901362105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P10689349412901362105

/-! ## A266970.P3963726612977594258

`∩[A065396(n+1), A300381(n+1)]`
-/

namespace A266970.P3963726612977594258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P3963726612977594258

/-! ## A266970.P9169273807955961312

`∩[A067126(n+1), A300381(n+1)]`
-/

namespace A266970.P9169273807955961312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P9169273807955961312

/-! ## A266970.P7711415474975852411

`∩[A053813(n+1), A300381(n+1)]`
-/

namespace A266970.P7711415474975852411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P7711415474975852411

/-! ## A266970.P16433118004299551558

`∩[A062972(n+1), A300381(n+1)]`
-/

namespace A266970.P16433118004299551558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P16433118004299551558

/-! ## A266970.P9322721185428440803

`∩[A064728(n+1), A300381(n+1)]`
-/

namespace A266970.P9322721185428440803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P9322721185428440803

/-! ## A266970.P15037003324261821416

`∩[A066050(n+1), A300381(n+1)]`
-/

namespace A266970.P15037003324261821416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P15037003324261821416

/-! ## A266970.P18199439408737810438

`∩[A066542(n+1), A300381(n+1)]`
-/

namespace A266970.P18199439408737810438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P18199439408737810438

/-! ## A266970.P1524201900313311889

`∩[A067133(n+1), A300381(n+1)]`
-/

namespace A266970.P1524201900313311889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266970.P1524201900313311889

/-!
# A266972: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: row n gives the coefficients of the chromatic polynomial of the (n,2)-Turán graph, highest powers first.

The programs for A266972, there is no canonical definition to state claims against.
-/

/-! ## A266972.P14859170001822060889

`A259875(lt[1, A259879(n+1)])`
-/

namespace A266972.P14859170001822060889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A266972.P14859170001822060889

/-! ## A266972.P9293493436218601255

`A259875(lt[1, A259879(n)]-1)`
-/

namespace A266972.P9293493436218601255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A266972.P9293493436218601255

/-! ## A266972.P13886664635056067267

`A324692(A288321(n))+A110555(n)`
-/

namespace A266972.P13886664635056067267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A288321 n).toNat + A110555 n

end

end A266972.P13886664635056067267

/-! ## A266972.P17761190420496561405

`A110555(n)-A037913(A000625(n))`
-/

namespace A266972.P17761190420496561405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n - A037913 (A000625 n).toNat

end

end A266972.P17761190420496561405

/-! ## A266972.P8112627162282012207

`A110555(n)-A054908(A022166(n))`
-/

namespace A266972.P8112627162282012207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n - A054908 (A022166 n).toNat

end

end A266972.P8112627162282012207

/-!
# A266973: a(n) = 4^n mod 17.

The programs for A266973, the canonical program `A266973.P17740745118930049074` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266973 has offset 0).

The definition of A266973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n)%17` (program `A266973.P17740745118930049074`, by `A266973.P17740745118930049074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A266973.P9962703644792321402

`a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=13`
-/

namespace A266973.P9962703644792321402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16, 13] fun n a =>
  a (n - 4)

end

end A266973.P9962703644792321402

namespace A266973

/-- `a(n-4)` -/
def P9962703644792321402.Spec : Prop :=
  ∀ n, (P9962703644792321402.a n : ℤ) = A266973 n

end A266973

/-! ## A266973.P17740745118930049074

`(4^n)%17`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266973

/-- `(4^n)%17` -/
def P17740745118930049074.Spec : Prop :=
  ∀ n, (P17740745118930049074.a n : ℤ) = A266973 n

theorem P17740745118930049074.correct : P17740745118930049074.Spec := by
  intro n
  simp only [A266973]

end A266973

/-!
# A266974: Triangle read by rows giving successive states of cellular automaton generated by "Rule 78" initiated with a single ON (black) cell.

The programs for A266974, the canonical program `A266974.P14409623839037846258` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266974 has offset 0).

The definition of A266974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266974.P1458458707701243344

`A266843(n*A267621(n))`
-/

namespace A266974.P1458458707701243344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266843 ((n : ℤ) * A267621 n).toNat

end

end A266974.P1458458707701243344

namespace A266974

/-- `A266843(n*A267621(n))` -/
def P1458458707701243344.Spec : Prop :=
  ∀ n, P1458458707701243344.a n = A266974 n

end A266974

/-! ## A266974.P14409623839037846258

`or(A266298(n), A266843(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A266974

/-- `or(A266298(n), A266843(n))` -/
def P14409623839037846258.Spec : Prop :=
  ∀ n, P14409623839037846258.a n = A266974 n

theorem P14409623839037846258.correct : P14409623839037846258.Spec := by
  intro n
  simp only [A266974]

end A266974

/-! ## A266974.P11823184337920150225

`A266843(n-char[A002522(n)])`
-/

namespace A266974.P11823184337920150225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266843 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A266974.P11823184337920150225

namespace A266974

/-- `A266843(n-char[A002522(n)])` -/
def P11823184337920150225.Spec : Prop :=
  ∀ n, P11823184337920150225.a n = A266974 n

end A266974

/-! ## A266974.P1079810198223872258

`or(char[A002522(n)], A266843(n))`
-/

namespace A266974.P1079810198223872258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A266843 n)

end

end A266974.P1079810198223872258

namespace A266974

/-- `or(char[A002522(n)], A266843(n))` -/
def P1079810198223872258.Spec : Prop :=
  ∀ n, P1079810198223872258.a n = A266974 n

end A266974

/-! ## A266974.P15542133058842643647

`A266843(A267621(n)-1+n)`
-/

namespace A266974.P15542133058842643647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266843 (A267621 n - 1 + (n : ℤ)).toNat

end

end A266974.P15542133058842643647

namespace A266974

/-- `A266843(A267621(n)-1+n)` -/
def P15542133058842643647.Spec : Prop :=
  ∀ n, P15542133058842643647.a n = A266974 n

end A266974

/-! ## A266974.P9170640322354223906

`A266843(n-(1-A267621(n)))`
-/

namespace A266974.P9170640322354223906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266843 ((n : ℤ) - (1 - A267621 n)).toNat

end

end A266974.P9170640322354223906

namespace A266974

/-- `A266843(n-(1-A267621(n)))` -/
def P9170640322354223906.Spec : Prop :=
  ∀ n, P9170640322354223906.a n = A266974 n

end A266974

/-! ## A266974.P13639239241227067174

`A266843(n*(1-A266298(n)))`
-/

namespace A266974.P13639239241227067174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266843 ((n : ℤ) * (1 - A266298 n)).toNat

end

end A266974.P13639239241227067174

namespace A266974

/-- `A266843(n*(1-A266298(n)))` -/
def P13639239241227067174.Spec : Prop :=
  ∀ n, P13639239241227067174.a n = A266974 n

end A266974

/-! ## A266974.P4101848612146676910

`A266843(char[A002522(2*n)]+n)`
-/

namespace A266974.P4101848612146676910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266843 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A266974.P4101848612146676910

namespace A266974

/-- `A266843(char[A002522(2*n)]+n)` -/
def P4101848612146676910.Spec : Prop :=
  ∀ n, P4101848612146676910.a n = A266974 n

end A266974

/-!
# A266975: Binary representation of the n-th iteration of the "Rule 78" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266975, there is no canonical definition to state claims against.
-/

/-! ## A266975.P1804388343796999673

`A007088(A283323(n))*A011557(n)`
-/

namespace A266975.P1804388343796999673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283323 n).toNat * A011557 n

end

end A266975.P1804388343796999673

/-! ## A266975.P12387704508059182598

`A007088(A266976(n))`
-/

namespace A266975.P12387704508059182598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266976 n).toNat

end

end A266975.P12387704508059182598

/-! ## A266975.P17644780071051608278

`A007088(2^n*A283323(n))`
-/

namespace A266975.P17644780071051608278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((2 ^ n : ℤ) * A283323 n).toNat

end

end A266975.P17644780071051608278

/-! ## A266975.P16562235165266097450

`A007088(A113946(n)+A109765(n))`
-/

namespace A266975.P16562235165266097450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A113946 n + A109765 n).toNat

end

end A266975.P16562235165266097450

/-!
# A266976: Decimal representation of the n-th iteration of the "Rule 78" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266976, the canonical program `A266976.P13585763739715514676` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266976 has offset 0).

The definition of A266976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266976.P11125906500872250106

`ogf((1+4x-16x^3)/(1-2x-16x^2+32x^3))`
-/

namespace A266976.P11125906500872250106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 0, -16] [1, -2, -16, 32] n

end

end A266976.P11125906500872250106

namespace A266976

/-- `ogf((1+4x-16x^3)/(1-2x-16x^2+32x^3))` -/
def P11125906500872250106.Spec : Prop :=
  ∀ n, P11125906500872250106.a n = A266976 n

end A266976

/-! ## A266976.P13585763739715514676

`2*a(n-1)+16*a(n-2)-32*a(n-3)` with `a(0)=1, a(1)=6, a(2)=28, a(3)=104`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266976

/-- `2*a(n-1)+16*a(n-2)-32*a(n-3)` -/
def P13585763739715514676.Spec : Prop :=
  ∀ n, P13585763739715514676.a n = A266976 n

theorem P13585763739715514676.correct : P13585763739715514676.Spec := by
  intro n
  simp only [A266976]

end A266976

/-! ## A266976.P7771741214487237647

`2^n*A283323(n)`
-/

namespace A266976.P7771741214487237647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A283323 n

end

end A266976.P7771741214487237647

namespace A266976

/-- `2^n*A283323(n)` -/
def P7771741214487237647.Spec : Prop :=
  ∀ n, P7771741214487237647.a n = A266976 n

end A266976

/-! ## A266976.P7686857114699417009

`A113946(n)+A109765(n)`
-/

namespace A266976.P7686857114699417009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113946 n + A109765 n

end

end A266976.P7686857114699417009

namespace A266976

/-- `A113946(n)+A109765(n)` -/
def P7686857114699417009.Spec : Prop :=
  ∀ n, P7686857114699417009.a n = A266976 n

end A266976

/-! ## A266976.P11610232921444268393

`lcm(A000079(n), A283323(n))`
-/

namespace A266976.P11610232921444268393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A283323 n)

end

end A266976.P11610232921444268393

namespace A266976

/-- `lcm(A000079(n), A283323(n))` -/
def P11610232921444268393.Spec : Prop :=
  ∀ n, (P11610232921444268393.a n : ℤ) = A266976 n

end A266976

/-! ## A266976.P5159101596971042967

`record[A034008(n)*A277954(n)]`
-/

namespace A266976.P5159101596971042967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A277954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266976.P5159101596971042967

namespace A266976

/-- `record[A034008(n)*A277954(n)]` -/
def P5159101596971042967.Spec : Prop :=
  ∀ n, P5159101596971042967.a n = A266976 n

end A266976

/-! ## A266976.P14108996689605805008

`or(record[A117902(n)], A266846(n))`
-/

namespace A266976.P14108996689605805008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A266846 n)

end

end A266976.P14108996689605805008

namespace A266976

/-- `or(record[A117902(n)], A266846(n))` -/
def P14108996689605805008.Spec : Prop :=
  ∀ n, P14108996689605805008.a n = A266976 n

end A266976

/-! ## A266976.P14956987893425447436

`or(A011782(2*n), A266846(n))`
-/

namespace A266976.P14956987893425447436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (2 * n)) (A266846 n)

end

end A266976.P14956987893425447436

namespace A266976

/-- `or(A011782(2*n), A266846(n))` -/
def P14956987893425447436.Spec : Prop :=
  ∀ n, P14956987893425447436.a n = A266976 n

end A266976

/-! ## A266976.P13861424970485461895

`record[∑[A134683(n)]*A034008(n)]`
-/

namespace A266976.P13861424970485461895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266976.P13861424970485461895

namespace A266976

/-- `record[∑[A134683(n)]*A034008(n)]` -/
def P13861424970485461895.Spec : Prop :=
  ∀ n, P13861424970485461895.a n = A266976 n

end A266976

/-! ## A266976.P17767784581447764766

`(A131577(n)+A097163(n))*A000079(n)`
-/

namespace A266976.P17767784581447764766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + A097163 n) * A000079 n

end

end A266976.P17767784581447764766

namespace A266976

/-- `(A131577(n)+A097163(n))*A000079(n)` -/
def P17767784581447764766.Spec : Prop :=
  ∀ n, P17767784581447764766.a n = A266976 n

end A266976

/-! ## A266976.P8160622244261085196

`record[A283323(A066628(n+1))]*A000079(n)`
-/

namespace A266976.P8160622244261085196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283323 (A066628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A266976.P8160622244261085196

namespace A266976

/-- `record[A283323(A066628(n+1))]*A000079(n)` -/
def P8160622244261085196.Spec : Prop :=
  ∀ n, P8160622244261085196.a n = A266976 n

end A266976

/-! ## A266976.P9393137761052773232

`A000079(n+1)*A136336(n)-A000079(n)`
-/

namespace A266976.P9393137761052773232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A136336 n - A000079 n

end

end A266976.P9393137761052773232

namespace A266976

/-- `A000079(n+1)*A136336(n)-A000079(n)` -/
def P9393137761052773232.Spec : Prop :=
  ∀ n, P9393137761052773232.a n = A266976 n

end A266976

/-!
# A266977: Number of ON (black) cells in the n-th iteration of the "Rule 78" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266977, the canonical program `A266977.P6846625566273109342` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266977 has offset 0).

The definition of A266977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266977.P4951373596572636592

`ogf((1+x-x^3)/(1-x-x^2+x^3))`
-/

namespace A266977.P4951373596572636592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -1] [1, -1, -1, 1] n

end

end A266977.P4951373596572636592

namespace A266977

/-- `ogf((1+x-x^3)/(1-x-x^2+x^3))` -/
def P4951373596572636592.Spec : Prop :=
  ∀ n, P4951373596572636592.a n = A266977 n

end A266977

/-! ## A266977.P6846625566273109342

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266977

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P6846625566273109342.Spec : Prop :=
  ∀ n, P6846625566273109342.a n = A266977 n

theorem P6846625566273109342.correct : P6846625566273109342.Spec := by
  intro n
  simp only [A266977]

end A266977

/-! ## A266977.P12381384161228949109

`∑[char[gcd(n%2, n)]]`
-/

namespace A266977.P12381384161228949109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n % 2) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P12381384161228949109

namespace A266977

/-- `∑[char[gcd(n%2, n)]]` -/
def P12381384161228949109.Spec : Prop :=
  ∀ n, (P12381384161228949109.a n : ℤ) = A266977 n

end A266977

/-! ## A266977.P13050024507288102614

`round((n-1)/2)+2`
-/

namespace A266977.P13050024507288102614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2

end

end A266977.P13050024507288102614

namespace A266977

/-- `round((n-1)/2)+2` -/
def P13050024507288102614.Spec : Prop :=
  ∀ n, P13050024507288102614.a n = A266977 n

end A266977

/-! ## A266977.P6647443688449521940

`∑[∏{d}[1-n, #%2]]`
-/

namespace A266977.P6647443688449521940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P6647443688449521940

namespace A266977

/-- `∑[∏{d}[1-n, #%2]]` -/
def P6647443688449521940.Spec : Prop :=
  ∀ n, (P6647443688449521940.a n : ℤ) = A266977 n

end A266977

/-! ## A266977.P5155579265162189441

`∑[∏{p}[1-n, #]%2]`
-/

namespace A266977.P5155579265162189441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P5155579265162189441

namespace A266977

/-- `∑[∏{p}[1-n, #]%2]` -/
def P5155579265162189441.Spec : Prop :=
  ∀ n, (P5155579265162189441.a n : ℤ) = A266977 n

end A266977

/-! ## A266977.P15503020721752760768

`∑[and(1, ∏{p}[1-n, #])]`
-/

namespace A266977.P15503020721752760768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P15503020721752760768

namespace A266977

/-- `∑[and(1, ∏{p}[1-n, #])]` -/
def P15503020721752760768.Spec : Prop :=
  ∀ n, (P15503020721752760768.a n : ℤ) = A266977 n

end A266977

/-! ## A266977.P12918877574809614595

`∑[char[1]+char[lcm(2, n)]]`
-/

namespace A266977.P12918877574809614595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P12918877574809614595

namespace A266977

/-- `∑[char[1]+char[lcm(2, n)]]` -/
def P12918877574809614595.Spec : Prop :=
  ∀ n, (P12918877574809614595.a n : ℤ) = A266977 n

end A266977

/-! ## A266977.P4205459508061407681

`∑[char[comp[or(1, n+2)]]]`
-/

namespace A266977.P4205459508061407681
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P4205459508061407681

namespace A266977

/-- `∑[char[comp[or(1, n+2)]]]` -/
def P4205459508061407681.Spec : Prop :=
  ∀ n, (P4205459508061407681.a n : ℤ) = A266977 n

end A266977

/-! ## A266977.P12215543376775212180

`∑[or(char[1], char[2*n])]`
-/

namespace A266977.P12215543376775212180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f2 j = n then 1 else 0) (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P12215543376775212180

namespace A266977

/-- `∑[or(char[1], char[2*n])]` -/
def P12215543376775212180.Spec : Prop :=
  ∀ n, (P12215543376775212180.a n : ℤ) = A266977 n

end A266977

/-! ## A266977.P13435267260160314716

`∑[xor(char[1], char[2*n])]`
-/

namespace A266977.P13435267260160314716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (if ∃ j, f2 j = n then 1 else 0) (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P13435267260160314716

namespace A266977

/-- `∑[xor(char[1], char[2*n])]` -/
def P13435267260160314716.Spec : Prop :=
  ∀ n, (P13435267260160314716.a n : ℤ) = A266977 n

end A266977

/-! ## A266977.P1342128652596236721

`ceil(cot(tan(2/(n+3))))`
-/

namespace A266977.P1342128652596236721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.tan (2 / (n + 3 : ℚ) : ℝ))⌉

end

end A266977.P1342128652596236721

namespace A266977

/-- `ceil(cot(tan(2/(n+3))))` -/
def P1342128652596236721.Spec : Prop :=
  ∀ n, P1342128652596236721.a n = A266977 n

end A266977

/-! ## A266977.P4395367762874054951

`abs(Δ[∑[n]%(n+3)])`
-/

namespace A266977.P4395367762874054951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A266977.P4395367762874054951

namespace A266977

/-- `abs(Δ[∑[n]%(n+3)])` -/
def P4395367762874054951.Spec : Prop :=
  ∀ n, P4395367762874054951.a n = A266977 n

end A266977

/-! ## A266977.P13356931366362000477

`∑[ceil((1-atan(n))^n)]`
-/

namespace A266977.P13356931366362000477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - Real.arctan (n : ℝ)) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P13356931366362000477

namespace A266977

/-- `∑[ceil((1-atan(n))^n)]` -/
def P13356931366362000477.Spec : Prop :=
  ∀ n, P13356931366362000477.a n = A266977 n

end A266977

/-! ## A266977.P17650062661273136527

`ceil(sqrt(sinh(log(∑[n+2]))))`
-/

namespace A266977.P17650062661273136527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sinh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))⌉

end

end A266977.P17650062661273136527

namespace A266977

/-- `ceil(sqrt(sinh(log(∑[n+2]))))` -/
def P17650062661273136527.Spec : Prop :=
  ∀ n, P17650062661273136527.a n = A266977 n

end A266977

/-! ## A266977.P9261429380129036599

`round(sqrt(∑[cosh(log(n+3))]))`
-/

namespace A266977.P9261429380129036599
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.log (n + 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A266977.P9261429380129036599

namespace A266977

/-- `round(sqrt(∑[cosh(log(n+3))]))` -/
def P9261429380129036599.Spec : Prop :=
  ∀ n, P9261429380129036599.a n = A266977 n

end A266977

/-! ## A266977.P11024499926592772964

`ceil(cot(Δ[log((n+2)²)]))`
-/

namespace A266977.P11024499926592772964
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((n + 2) ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (f1 (n + 1) - f1 n)⌉

end

end A266977.P11024499926592772964

namespace A266977

/-- `ceil(cot(Δ[log((n+2)²)]))` -/
def P11024499926592772964.Spec : Prop :=
  ∀ n, P11024499926592772964.a n = A266977 n

end A266977

/-! ## A266977.P2522283406345601694

`∑[ceil(∏[-acot(n-3)])]`
-/

namespace A266977.P2522283406345601694
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -SequenceMachineLib.acot ((n : ℤ) - 3 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P2522283406345601694

namespace A266977

/-- `∑[ceil(∏[-acot(n-3)])]` -/
def P2522283406345601694.Spec : Prop :=
  ∀ n, P2522283406345601694.a n = A266977 n

end A266977

/-! ## A266977.P2814836566003174294

`∑[char[1]+(n+1)%2]`
-/

namespace A266977.P2814836566003174294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P2814836566003174294

namespace A266977

/-- `∑[char[1]+(n+1)%2]` -/
def P2814836566003174294.Spec : Prop :=
  ∀ n, (P2814836566003174294.a n : ℤ) = A266977 n

end A266977

/-! ## A266977.P12636044932388380883

`∑[and(1, char[1]+1+n)]`
-/

namespace A266977.P12636044932388380883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266977.P12636044932388380883

namespace A266977

/-- `∑[and(1, char[1]+1+n)]` -/
def P12636044932388380883.Spec : Prop :=
  ∀ n, (P12636044932388380883.a n : ℤ) = A266977 n

end A266977

/-!
# A266978: Triangle read by rows giving successive states of cellular automaton generated by "Rule 79" initiated with a single ON (black) cell.

The programs for A266978, the canonical program `A266978.P11450421611937941305` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266978 has offset 0).

The definition of A266978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266978.P11450421611937941305

`A376583(A037458(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A266978

/-- `A376583(A037458(n+1))` -/
def P11450421611937941305.Spec : Prop :=
  ∀ n, P11450421611937941305.a n = A266978 n

theorem P11450421611937941305.correct : P11450421611937941305.Spec := by
  intro n
  simp only [A266978]

end A266978

/-! ## A266978.P810479904510488865

`A267053(A020703(n+1)-1)`
-/

namespace A266978.P810479904510488865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 (A020703 (n + 1) - 1).toNat

end

end A266978.P810479904510488865

namespace A266978

/-- `A267053(A020703(n+1)-1)` -/
def P810479904510488865.Spec : Prop :=
  ∀ n, P810479904510488865.a n = A266978 n

end A266978

/-! ## A266978.P15088861909110945083

`A053188(A070027(a(n-1)+1)-Δ[A053188(n)])` with `a(0)=1`
-/

namespace A266978.P15088861909110945083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053188 (A070027 (a (n - 1) + 1).toNat - (f1 (n + 1) - f1 n)).toNat

end

end A266978.P15088861909110945083

namespace A266978

/-- `A053188(A070027(a(n-1)+1)-Δ[A053188(n)])` -/
def P15088861909110945083.Spec : Prop :=
  ∀ n, P15088861909110945083.a n = A266978 n

end A266978

/-! ## A266978.P2781995965872553443

`A053188(A003057(a(n-1)+2)-Δ[A053188(n)])` with `a(0)=1`
-/

namespace A266978.P2781995965872553443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053188 (A003057 (a (n - 1) + 2).toNat - (f1 (n + 1) - f1 n)).toNat

end

end A266978.P2781995965872553443

namespace A266978

/-- `A053188(A003057(a(n-1)+2)-Δ[A053188(n)])` -/
def P2781995965872553443.Spec : Prop :=
  ∀ n, P2781995965872553443.a n = A266978 n

end A266978

/-! ## A266978.P4200273229671169296

`A267053(A020703(n+2))`
-/

namespace A266978.P4200273229671169296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 (A020703 (n + 2)).toNat

end

end A266978.P4200273229671169296

namespace A266978

/-- `A267053(A020703(n+2))` -/
def P4200273229671169296.Spec : Prop :=
  ∀ n, P4200273229671169296.a n = A266978 n

end A266978

/-! ## A266978.P16865545974649467424

`A267053(comp[n²]-A267053(n+1))`
-/

namespace A266978.P16865545974649467424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267053 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A267053 (n + 1)).toNat

end

end A266978.P16865545974649467424

namespace A266978

/-- `A267053(comp[n²]-A267053(n+1))` -/
def P16865545974649467424.Spec : Prop :=
  ∀ n, P16865545974649467424.a n = A266978 n

end A266978

/-! ## A266978.P16503341571274524581

`A000035(A000217(n+1-A053188(n+1)))`
-/

namespace A266978.P16503341571274524581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000217 ((n + 1 : ℤ) - A053188 (n + 1)).toNat).toNat

end

end A266978.P16503341571274524581

namespace A266978

/-- `A000035(A000217(n+1-A053188(n+1)))` -/
def P16503341571274524581.Spec : Prop :=
  ∀ n, P16503341571274524581.a n = A266978 n

end A266978

/-! ## A266978.P4149657138626586442

`A160383(eq[12, A278222(n)])`
-/

namespace A266978.P4149657138626586442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266978.P4149657138626586442

namespace A266978

/-- `A160383(eq[12, A278222(n)])` -/
def P4149657138626586442.Spec : Prop :=
  ∀ n, P4149657138626586442.a n = A266978 n

end A266978

/-! ## A266978.P14375760796532224652

`A160383(eq[12, A286588(n)])`
-/

namespace A266978.P14375760796532224652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266978.P14375760796532224652

namespace A266978

/-- `A160383(eq[12, A286588(n)])` -/
def P14375760796532224652.Spec : Prop :=
  ∀ n, P14375760796532224652.a n = A266978 n

end A266978

/-! ## A266978.P15777897256760528990

`A125924(A264798(n))`
-/

namespace A266978.P15777897256760528990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125924 (A264798 n).toNat

end

end A266978.P15777897256760528990

namespace A266978

/-- `A125924(A264798(n))` -/
def P15777897256760528990.Spec : Prop :=
  ∀ n, P15777897256760528990.a n = A266978 n

end A266978

/-!
# A266979: Binary representation of the n-th iteration of the "Rule 79" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266979, there is no canonical definition to state claims against.
-/

/-! ## A266979.P6885642402329754393

`A100706(A026741(n))-A056830(n)`
-/

namespace A266979.P6885642402329754393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100706 (A026741 n).toNat - A056830 n

end

end A266979.P6885642402329754393

/-! ## A266979.P2009399723096009030

`A007088(A266980(n))`
-/

namespace A266979.P2009399723096009030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266980 n).toNat

end

end A266979.P2009399723096009030

/-! ## A266979.P10157703986172214163

`A007088(A266668(n)+A001045(n))`
-/

namespace A266979.P10157703986172214163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266668 n + A001045 n).toNat

end

end A266979.P10157703986172214163

/-! ## A266979.P7152139525580839884

`A007088(or(A060546(n)², A266284(n)))`
-/

namespace A266979.P7152139525580839884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A060546 n ^ 2) (A266284 n)).toNat

end

end A266979.P7152139525580839884

/-! ## A266979.P7681384974285181722

`A007088(A266668(n)+Δ[A005578(n)])`
-/

namespace A266979.P7681384974285181722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266668 n + (f1 (n + 1) - f1 n)).toNat

end

end A266979.P7681384974285181722

/-!
# A266980: Decimal representation of the n-th iteration of the "Rule 79" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266980, the canonical program `A266980.P14525064463920435922` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266980 has offset 0).

The definition of A266980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266980.P14525064463920435922

`A266668(n)+A001045(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A266980

/-- `A266668(n)+A001045(n)` -/
def P14525064463920435922.Spec : Prop :=
  ∀ n, P14525064463920435922.a n = A266980 n

theorem P14525064463920435922.correct : P14525064463920435922.Spec := by
  intro n
  simp only [A266980]

end A266980

/-! ## A266980.P10616309535544796365

`or(A060546(n)², A266284(n))`
-/

namespace A266980.P10616309535544796365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060546 n ^ 2) (A266284 n)

end

end A266980.P10616309535544796365

namespace A266980

/-- `or(A060546(n)², A266284(n))` -/
def P10616309535544796365.Spec : Prop :=
  ∀ n, P10616309535544796365.a n = A266980 n

end A266980

/-! ## A266980.P2703874262750785223

`A266668(n)+Δ[A005578(n)]`
-/

namespace A266980.P2703874262750785223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266668 n + (f1 (n + 1) - f1 n)

end

end A266980.P2703874262750785223

namespace A266980

/-- `A266668(n)+Δ[A005578(n)]` -/
def P2703874262750785223.Spec : Prop :=
  ∀ n, P2703874262750785223.a n = A266980 n

end A266980

/-! ## A266980.P2430039863110489707

`xor(A096773(n+1), A266668(n))`
-/

namespace A266980.P2430039863110489707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096773 (n + 1)) (A266668 n)

end

end A266980.P2430039863110489707

namespace A266980

/-- `xor(A096773(n+1), A266668(n))` -/
def P2430039863110489707.Spec : Prop :=
  ∀ n, P2430039863110489707.a n = A266980 n

end A266980

/-! ## A266980.P2203244224240179357

`A126646(A109043(n))-A000975(n)`
-/

namespace A266980.P2203244224240179357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A109043 n).toNat - A000975 n

end

end A266980.P2203244224240179357

namespace A266980

/-- `A126646(A109043(n))-A000975(n)` -/
def P2203244224240179357.Spec : Prop :=
  ∀ n, P2203244224240179357.a n = A266980 n

end A266980

/-! ## A266980.P3481066988833995514

`A290234(2*A026741(n))-A000975(n)`
-/

namespace A266980.P3481066988833995514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290234 (2 * A026741 n).toNat - A000975 n

end

end A266980.P3481066988833995514

namespace A266980

/-- `A290234(2*A026741(n))-A000975(n)` -/
def P3481066988833995514.Spec : Prop :=
  ∀ n, P3481066988833995514.a n = A266980 n

end A266980

/-! ## A266980.P7611838545819717895

`ogf((1+6x-16x^2-4x^3-32x^5)/(1-21x^2+84x^4-64x^6))`
-/

namespace A266980.P7611838545819717895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -16, -4, 0, -32] [1, 0, -21, 0, 84, 0, -64] n

end

end A266980.P7611838545819717895

namespace A266980

/-- `ogf((1+6x-16x^2-4x^3-32x^5)/(1-21x^2+84x^4-64x^6))` -/
def P7611838545819717895.Spec : Prop :=
  ∀ n, P7611838545819717895.a n = A266980 n

end A266980

/-!
# A266981: Number of ON (black) cells in the n-th iteration of the "Rule 79" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266981, the canonical program `A266981.P12772952050873159332` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266981 has offset 0).

The definition of A266981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266981.P12772952050873159332

`Δ[ceil(n*or(1, n)/2)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266981

/-- `Δ[ceil(n*or(1, n)/2)]` -/
def P12772952050873159332.Spec : Prop :=
  ∀ n, P12772952050873159332.a n = A266981 n

theorem P12772952050873159332.correct : P12772952050873159332.Spec := by
  intro n
  simp only [A266981]

end A266981

/-! ## A266981.P4525719593042896958

`lcm(2, n)+1-ceil(n/2)`
-/

namespace A266981.P4525719593042896958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n + 1 : ℤ) - ⌈(n : ℚ) / 2⌉

end

end A266981.P4525719593042896958

namespace A266981

/-- `lcm(2, n)+1-ceil(n/2)` -/
def P4525719593042896958.Spec : Prop :=
  ∀ n, P4525719593042896958.a n = A266981 n

end A266981

/-! ## A266981.P3379487041505160228

`ceil(n/2)+n^(n%2)`
-/

namespace A266981.P3379487041505160228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + (n ^ (n % 2) : ℤ)

end

end A266981.P3379487041505160228

namespace A266981

/-- `ceil(n/2)+n^(n%2)` -/
def P3379487041505160228.Spec : Prop :=
  ∀ n, P3379487041505160228.a n = A266981 n

end A266981

/-! ## A266981.P16847954444075030556

`ceil(n/2)+n^and(1, n)`
-/

namespace A266981.P16847954444075030556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + (n ^ Nat.land 1 n : ℤ)

end

end A266981.P16847954444075030556

namespace A266981

/-- `ceil(n/2)+n^and(1, n)` -/
def P16847954444075030556.Spec : Prop :=
  ∀ n, P16847954444075030556.a n = A266981 n

end A266981

/-! ## A266981.P9700586232356410231

`∑[and(1, n)]+gcd(n, or(1, n))`
-/

namespace A266981.P9700586232356410231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd n (Nat.lor 1 n)

end

end A266981.P9700586232356410231

namespace A266981

/-- `∑[and(1, n)]+gcd(n, or(1, n))` -/
def P9700586232356410231.Spec : Prop :=
  ∀ n, (P9700586232356410231.a n : ℤ) = A266981 n

end A266981

/-! ## A266981.P10300912085155345711

`Δ[(n-1)*∑[char[2*n]]]`
-/

namespace A266981.P10300912085155345711
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266981.P10300912085155345711

namespace A266981

/-- `Δ[(n-1)*∑[char[2*n]]]` -/
def P10300912085155345711.Spec : Prop :=
  ∀ n, P10300912085155345711.a n = A266981 n

end A266981

/-! ## A266981.P14553623719649202408

`∑[xor(1, 2-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A266981.P14553623719649202408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.xor 1 (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266981.P14553623719649202408

namespace A266981

/-- `∑[xor(1, 2-a(n-1))]` -/
def P14553623719649202408.Spec : Prop :=
  ∀ n, P14553623719649202408.a n = A266981 n

end A266981

/-! ## A266981.P17651797885788801620

`ogf((1+2x+x^3)/(1-2x^2+x^4))`
-/

namespace A266981.P17651797885788801620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 1] [1, 0, -2, 0, 1] n

end

end A266981.P17651797885788801620

namespace A266981

/-- `ogf((1+2x+x^3)/(1-2x^2+x^4))` -/
def P17651797885788801620.Spec : Prop :=
  ∀ n, P17651797885788801620.a n = A266981 n

end A266981

/-! ## A266981.P11930597769350632417

`ceil((lcm(4, 2*n)-(n-1))/2)`
-/

namespace A266981.P11930597769350632417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lcm 4 (2 * n) : ℤ) - ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A266981.P11930597769350632417

namespace A266981

/-- `ceil((lcm(4, 2*n)-(n-1))/2)` -/
def P11930597769350632417.Spec : Prop :=
  ∀ n, P11930597769350632417.a n = A266981 n

end A266981

/-! ## A266981.P2416948362797728599

`(Δ[(n-1)*or(1, n)]+1)/2`
-/

namespace A266981.P2416948362797728599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.lor 1 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A266981.P2416948362797728599

namespace A266981

/-- `(Δ[(n-1)*or(1, n)]+1)/2` -/
def P2416948362797728599.Spec : Prop :=
  ∀ n, P2416948362797728599.a n = (A266981 n : ℚ)

end A266981

/-! ## A266981.P11957251496138404725

`Δ[(n-1)/gcd(2, n+1)]+n`
-/

namespace A266981.P11957251496138404725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℚ)

end

end A266981.P11957251496138404725

namespace A266981

/-- `Δ[(n-1)/gcd(2, n+1)]+n` -/
def P11957251496138404725.Spec : Prop :=
  ∀ n, P11957251496138404725.a n = (A266981 n : ℚ)

end A266981

/-! ## A266981.P16648785259443125725

`(C(2*n, and(1, n))+n+1)/2`
-/

namespace A266981.P16648785259443125725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) (Nat.land 1 n) + (n + 1) : ℚ) / 2

end

end A266981.P16648785259443125725

namespace A266981

/-- `(C(2*n, and(1, n))+n+1)/2` -/
def P16648785259443125725.Spec : Prop :=
  ∀ n, P16648785259443125725.a n = (A266981 n : ℚ)

end A266981

/-! ## A266981.P14285993833472702904

`and(1, n)+2*n-a(n-1)` with `a(0)=1`
-/

namespace A266981.P14285993833472702904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 1 n + 2 * n : ℤ) - a (n - 1)

end

end A266981.P14285993833472702904

namespace A266981

/-- `and(1, n)+2*n-a(n-1)` -/
def P14285993833472702904.Spec : Prop :=
  ∀ n, P14285993833472702904.a n = A266981 n

end A266981

/-! ## A266981.P2357786398855987867

`floor(a(n-2)-((-1)^n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A266981.P2357786398855987867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - ((-1) ^ n - 2)

end

end A266981.P2357786398855987867

namespace A266981

/-- `floor(a(n-2)-((-1)^n-2))` -/
def P2357786398855987867.Spec : Prop :=
  ∀ n, P2357786398855987867.a n = A266981 n

end A266981

/-! ## A266981.P9005159461971386526

`∑[2-(a(n-1)+(-1)^n)]` with `a(0)=1, a(1)=1`
-/

namespace A266981.P9005159461971386526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 - (f1 (n - 1) + (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266981.P9005159461971386526

namespace A266981

/-- `∑[2-(a(n-1)+(-1)^n)]` -/
def P9005159461971386526.Spec : Prop :=
  ∀ n, P9005159461971386526.a n = A266981 n

end A266981

/-! ## A266981.P11095625848941990703

`∑[2-a(n-1)-(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A266981.P11095625848941990703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 - f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266981.P11095625848941990703

namespace A266981

/-- `∑[2-a(n-1)-(-1)^n]` -/
def P11095625848941990703.Spec : Prop :=
  ∀ n, P11095625848941990703.a n = A266981 n

end A266981

/-! ## A266981.P7796361897004819672

`a(n-2)+(2*n+1)%4` with `a(0)=1, a(1)=2`
-/

namespace A266981.P7796361897004819672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (2 * n + 1) % 4

end

end A266981.P7796361897004819672

namespace A266981

/-- `a(n-2)+(2*n+1)%4` -/
def P7796361897004819672.Spec : Prop :=
  ∀ n, (P7796361897004819672.a n : ℤ) = A266981 n

end A266981

/-! ## A266981.P4750978977309942011

`a(n-2)+gcd(3, (n+1)%2)` with `a(0)=1, a(1)=2`
-/

namespace A266981.P4750978977309942011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Nat.gcd 3 ((n + 1) % 2)

end

end A266981.P4750978977309942011

namespace A266981

/-- `a(n-2)+gcd(3, (n+1)%2)` -/
def P4750978977309942011.Spec : Prop :=
  ∀ n, (P4750978977309942011.a n : ℤ) = A266981 n

end A266981

/-! ## A266981.P2780446454453301233

`Δ[a(n-2)+4]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A266981.P2780446454453301233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 2)

end

end A266981.P2780446454453301233

namespace A266981

/-- `Δ[a(n-2)+4]+a(n-2)` -/
def P2780446454453301233.Spec : Prop :=
  ∀ n, P2780446454453301233.a n = A266981 n

end A266981

/-! ## A266981.P17180704468752959094

`comp[a(n-2)+4]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A266981.P17180704468752959094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)

end

end A266981.P17180704468752959094

namespace A266981

/-- `comp[a(n-2)+4]-a(n-1)` -/
def P17180704468752959094.Spec : Prop :=
  ∀ n, P17180704468752959094.a n = A266981 n

end A266981

/-!
# A266982: Triangle read by rows giving successive states of cellular automaton generated by "Rule 81" initiated with a single ON (black) cell.

The programs for A266982, the canonical program `A266982.P8719041524889349912` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266982 has offset 0).

The definition of A266982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266982.P16460876750325772136

`∑[char[∑[comp[2*(n+2)]]]]%2`
-/

namespace A266982.P16460876750325772136
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A266982.P16460876750325772136

namespace A266982

/-- `∑[char[∑[comp[2*(n+2)]]]]%2` -/
def P16460876750325772136.Spec : Prop :=
  ∀ n, (P16460876750325772136.a n : ℤ) = A266982 n

end A266982

/-! ## A266982.P12422183498878601650

`and(1, ceil(floor(n*sqrt(n+1))/(n+1))-1)`
-/

namespace A266982.P12422183498878601650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (⌈(⌊(n : ℝ) * Real.sqrt (n + 1 : ℝ)⌋ : ℚ) / (n + 1 : ℚ)⌉ - 1)

end

end A266982.P12422183498878601650

namespace A266982

/-- `and(1, ceil(floor(n*sqrt(n+1))/(n+1))-1)` -/
def P12422183498878601650.Spec : Prop :=
  ∀ n, P12422183498878601650.a n = A266982 n

end A266982

/-! ## A266982.P12189171223047954985

`A267272(n-char[2])`
-/

namespace A266982.P12189171223047954985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A266982.P12189171223047954985

namespace A266982

/-- `A267272(n-char[2])` -/
def P12189171223047954985.Spec : Prop :=
  ∀ n, P12189171223047954985.a n = A266982 n

end A266982

/-! ## A266982.P8719041524889349912

`a(a(A083479(n)))` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A266982

/-- `a(a(A083479(n)))` -/
def P8719041524889349912.Spec : Prop :=
  ∀ n, (P8719041524889349912.a n : ℤ) = A266982 n

theorem P8719041524889349912.correct : P8719041524889349912.Spec := by
  intro n
  simp only [A266982]

end A266982

/-! ## A266982.P14533728104637282173

`A266377(A143051(n))`
-/

namespace A266982.P14533728104637282173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266377 (A143051 n).toNat

end

end A266982.P14533728104637282173

namespace A266982

/-- `A266377(A143051(n))` -/
def P14533728104637282173.Spec : Prop :=
  ∀ n, P14533728104637282173.a n = A266982 n

end A266982

/-! ## A266982.P15206549460273973434

`A000035(A263919(n)+n)`
-/

namespace A266982.P15206549460273973434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A263919 n + (n : ℤ)).toNat

end

end A266982.P15206549460273973434

namespace A266982

/-- `A000035(A263919(n)+n)` -/
def P15206549460273973434.Spec : Prop :=
  ∀ n, P15206549460273973434.a n = A266982 n

end A266982

/-! ## A266982.P13299603267597239077

`A267272(n)-A185012(n)`
-/

namespace A266982.P13299603267597239077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 n - A185012 n

end

end A266982.P13299603267597239077

namespace A266982

/-- `A267272(n)-A185012(n)` -/
def P13299603267597239077.Spec : Prop :=
  ∀ n, P13299603267597239077.a n = A266982 n

end A266982

/-! ## A266982.P4799126376276890562

`A179184(n)*A267272(n)`
-/

namespace A266982.P4799126376276890562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n * A267272 n

end

end A266982.P4799126376276890562

namespace A266982

/-- `A179184(n)*A267272(n)` -/
def P4799126376276890562.Spec : Prop :=
  ∀ n, P4799126376276890562.a n = A266982 n

end A266982

/-! ## A266982.P13406313906110815289

`A267272(n)*A267927(n)`
-/

namespace A266982.P13406313906110815289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 n * A267927 n

end

end A266982.P13406313906110815289

namespace A266982

/-- `A267272(n)*A267927(n)` -/
def P13406313906110815289.Spec : Prop :=
  ∀ n, P13406313906110815289.a n = A266982 n

end A266982

/-! ## A266982.P237323661633428207

`A267272(n)*A267936(n)`
-/

namespace A266982.P237323661633428207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267272 n * A267936 n

end

end A266982.P237323661633428207

namespace A266982

/-- `A267272(n)*A267936(n)` -/
def P237323661633428207.Spec : Prop :=
  ∀ n, P237323661633428207.a n = A266982 n

end A266982

/-! ## A266982.P8636995816637420194

`A000035(xor(n, A263919(n)))`
-/

namespace A266982.P8636995816637420194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.xor (n : ℤ) (A263919 n)).toNat

end

end A266982.P8636995816637420194

namespace A266982

/-- `A000035(xor(n, A263919(n)))` -/
def P8636995816637420194.Spec : Prop :=
  ∀ n, P8636995816637420194.a n = A266982 n

end A266982

/-! ## A266982.P1156837772090754772

`A267034(A010052(n)-1+n)`
-/

namespace A266982.P1156837772090754772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (A010052 n - 1 + (n : ℤ)).toNat

end

end A266982.P1156837772090754772

namespace A266982

/-- `A267034(A010052(n)-1+n)` -/
def P1156837772090754772.Spec : Prop :=
  ∀ n, P1156837772090754772.a n = A266982 n

end A266982

/-! ## A266982.P4751511777186544142

`A267034(n-(1-A010052(n)))`
-/

namespace A266982.P4751511777186544142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 ((n : ℤ) - (1 - A010052 n)).toNat

end

end A266982.P4751511777186544142

namespace A266982

/-- `A267034(n-(1-A010052(n)))` -/
def P4751511777186544142.Spec : Prop :=
  ∀ n, P4751511777186544142.a n = A266982 n

end A266982

/-! ## A266982.P2957328663690603963

`A171905(n+1)*A267272(n)`
-/

namespace A266982.P2957328663690603963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1) * A267272 n

end

end A266982.P2957328663690603963

namespace A266982

/-- `A171905(n+1)*A267272(n)` -/
def P2957328663690603963.Spec : Prop :=
  ∀ n, P2957328663690603963.a n = A266982 n

end A266982

/-! ## A266982.P3600513169502108026

`A000035(2-(A263919(n)-n))`
-/

namespace A266982.P3600513169502108026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 - (A263919 n - (n : ℤ))).toNat

end

end A266982.P3600513169502108026

namespace A266982

/-- `A000035(2-(A263919(n)-n))` -/
def P3600513169502108026.Spec : Prop :=
  ∀ n, P3600513169502108026.a n = A266982 n

end A266982

/-! ## A266982.P16682685611164844872

`A267034(A094064(n))`
-/

namespace A266982.P16682685611164844872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (A094064 n).toNat

end

end A266982.P16682685611164844872

namespace A266982

/-- `A267034(A094064(n))` -/
def P16682685611164844872.Spec : Prop :=
  ∀ n, P16682685611164844872.a n = A266982 n

end A266982

/-! ## A266982.P401825438475545546

`A266300(A020703(n+1))`
-/

namespace A266982.P401825438475545546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 (A020703 (n + 1)).toNat

end

end A266982.P401825438475545546

namespace A266982

/-- `A266300(A020703(n+1))` -/
def P401825438475545546.Spec : Prop :=
  ∀ n, P401825438475545546.a n = A266982 n

end A266982

/-! ## A266982.P7354954254821200211

`A266155(A094064(n+1))`
-/

namespace A266982.P7354954254821200211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266155 (A094064 (n + 1)).toNat

end

end A266982.P7354954254821200211

namespace A266982

/-- `A266155(A094064(n+1))` -/
def P7354954254821200211.Spec : Prop :=
  ∀ n, P7354954254821200211.a n = A266982 n

end A266982

/-! ## A266982.P17669524659176405013

`A266434(A020703(n+1)+1)`
-/

namespace A266982.P17669524659176405013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A020703 (n + 1) + 1).toNat

end

end A266982.P17669524659176405013

namespace A266982

/-- `A266434(A020703(n+1)+1)` -/
def P17669524659176405013.Spec : Prop :=
  ∀ n, P17669524659176405013.a n = A266982 n

end A266982

/-! ## A266982.P13743472605740680386

`A204171(A004271(n+1))`
-/

namespace A266982.P13743472605740680386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204171 (A004271 (n + 1)).toNat

end

end A266982.P13743472605740680386

namespace A266982

/-- `A204171(A004271(n+1))` -/
def P13743472605740680386.Spec : Prop :=
  ∀ n, P13743472605740680386.a n = A266982 n

end A266982

/-!
# A266983: Binary representation of the n-th iteration of the "Rule 81" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266983, there is no canonical definition to state claims against.
-/

/-! ## A266983.P12363476420052677152

`A267273(n-char[1])`
-/

namespace A266983.P12363476420052677152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267273 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A266983.P12363476420052677152

/-! ## A266983.P2111691282543560817

`A282003(and(3*n, -2)-n)`
-/

namespace A266983.P2111691282543560817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282003 (Int.land (3 * n : ℤ) (-2) - (n : ℤ)).toNat

end

end A266983.P2111691282543560817

/-! ## A266983.P11337018496237598798

`A287191(A047238(n+1)-n)`
-/

namespace A266983.P11337018496237598798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287191 (A047238 (n + 1) - (n : ℤ)).toNat

end

end A266983.P11337018496237598798

/-! ## A266983.P11792087918374881629

`A282003(2*n-A000035(n))`
-/

namespace A266983.P11792087918374881629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282003 ((2 * n : ℤ) - A000035 n).toNat

end

end A266983.P11792087918374881629

/-! ## A266983.P5999413963698641066

`A287191(2*n-A000035(n))`
-/

namespace A266983.P5999413963698641066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287191 ((2 * n : ℤ) - A000035 n).toNat

end

end A266983.P5999413963698641066

/-! ## A266983.P4941450039071007344

`A267273(n)%(A267293(n)+1)`
-/

namespace A266983.P4941450039071007344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267273 n) (A267293 n + 1)

end

end A266983.P4941450039071007344

/-! ## A266983.P5172485265010854760

`A282003(n-A000035(n)+n)`
-/

namespace A266983.P5172485265010854760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282003 ((n : ℤ) - A000035 n + (n : ℤ)).toNat

end

end A266983.P5172485265010854760

/-! ## A266983.P6831634147837687320

`A287191(n-A000035(n)+n)`
-/

namespace A266983.P6831634147837687320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287191 ((n : ℤ) - A000035 n + (n : ℤ)).toNat

end

end A266983.P6831634147837687320

/-! ## A266983.P4715353457636168938

`A282003(n-(A000035(n)-n))`
-/

namespace A266983.P4715353457636168938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282003 ((n : ℤ) - (A000035 n - (n : ℤ))).toNat

end

end A266983.P4715353457636168938

/-! ## A266983.P13809396583156010402

`A287191(n-(A000035(n)-n))`
-/

namespace A266983.P13809396583156010402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287191 ((n : ℤ) - (A000035 n - (n : ℤ))).toNat

end

end A266983.P13809396583156010402

/-!
# A266984: Decimal representation of the n-th iteration of the "Rule 81" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266984, the canonical program `A266984.P15729615556348767900` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266984 has offset 0).

The definition of A266984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266984.P8341279552192949007

`ogf((1+x+7x^2+14x^3-8x^4)/(1-17x^2+16x^4))`
-/

namespace A266984.P8341279552192949007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 7, 14, -8] [1, 0, -17, 0, 16] n

end

end A266984.P8341279552192949007

namespace A266984

/-- `ogf((1+x+7x^2+14x^3-8x^4)/(1-17x^2+16x^4))` -/
def P8341279552192949007.Spec : Prop :=
  ∀ n, P8341279552192949007.a n = A266984 n

end A266984

/-! ## A266984.P15729615556348767900

`17*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=1, a(2)=24, a(3)=31, a(4)=384`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A266984

/-- `17*a(n-2)-16*a(n-4)` -/
def P15729615556348767900.Spec : Prop :=
  ∀ n, P15729615556348767900.a n = A266984 n

theorem P15729615556348767900.correct : P15729615556348767900.Spec := by
  intro n
  simp only [A266984]

end A266984

/-! ## A266984.P899602836082153700

`A267274(n-char[1])`
-/

namespace A266984.P899602836082153700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267274 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A266984.P899602836082153700

namespace A266984

/-- `A267274(n-char[1])` -/
def P899602836082153700.Spec : Prop :=
  ∀ n, P899602836082153700.a n = A266984 n

end A266984

/-! ## A266984.P18015618337161309553

`A280370(A014601(n))`
-/

namespace A266984.P18015618337161309553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 (A014601 n).toNat

end

end A266984.P18015618337161309553

namespace A266984

/-- `A280370(A014601(n))` -/
def P18015618337161309553.Spec : Prop :=
  ∀ n, P18015618337161309553.a n = A266984 n

end A266984

/-! ## A266984.P6512724469297282384

`A282005(A042948(n))`
-/

namespace A266984.P6512724469297282384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 (A042948 n).toNat

end

end A266984.P6512724469297282384

namespace A266984

/-- `A282005(A042948(n))` -/
def P6512724469297282384.Spec : Prop :=
  ∀ n, P6512724469297282384.a n = A266984 n

end A266984

/-! ## A266984.P9935902984879203751

`and(A260196(n), A267274(n))`
-/

namespace A266984.P9935902984879203751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A267274 n)

end

end A266984.P9935902984879203751

namespace A266984

/-- `and(A260196(n), A267274(n))` -/
def P9935902984879203751.Spec : Prop :=
  ∀ n, P9935902984879203751.a n = A266984 n

end A266984

/-! ## A266984.P13149492383055833304

`and(A267274(n), A267935(n))`
-/

namespace A266984.P13149492383055833304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267274 n) (A267935 n)

end

end A266984.P13149492383055833304

namespace A266984

/-- `and(A267274(n), A267935(n))` -/
def P13149492383055833304.Spec : Prop :=
  ∀ n, P13149492383055833304.a n = A266984 n

end A266984

/-! ## A266984.P16178948504515178811

`and(A267274(n), A267938(n))`
-/

namespace A266984.P16178948504515178811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267274 n) (A267938 n)

end

end A266984.P16178948504515178811

namespace A266984

/-- `and(A267274(n), A267938(n))` -/
def P16178948504515178811.Spec : Prop :=
  ∀ n, P16178948504515178811.a n = A266984 n

end A266984

/-! ## A266984.P12562888921274994606

`A282005(2*n-A000035(n))`
-/

namespace A266984.P12562888921274994606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 ((2 * n : ℤ) - A000035 n).toNat

end

end A266984.P12562888921274994606

namespace A266984

/-- `A282005(2*n-A000035(n))` -/
def P12562888921274994606.Spec : Prop :=
  ∀ n, P12562888921274994606.a n = A266984 n

end A266984

/-! ## A266984.P9186934681789849606

`A282005(n-A000035(n)+n)`
-/

namespace A266984.P9186934681789849606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 ((n : ℤ) - A000035 n + (n : ℤ)).toNat

end

end A266984.P9186934681789849606

namespace A266984

/-- `A282005(n-A000035(n)+n)` -/
def P9186934681789849606.Spec : Prop :=
  ∀ n, P9186934681789849606.a n = A266984 n

end A266984

/-! ## A266984.P14458491180293560809

`A282005(n-(A000035(n)-n))`
-/

namespace A266984.P14458491180293560809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 ((n : ℤ) - (A000035 n - (n : ℤ))).toNat

end

end A266984.P14458491180293560809

namespace A266984

/-- `A282005(n-(A000035(n)-n))` -/
def P14458491180293560809.Spec : Prop :=
  ∀ n, P14458491180293560809.a n = A266984 n

end A266984

/-! ## A266984.P2302082741418759189

`A267274(n)^A178334(A008611(n))`
-/

namespace A266984.P2302082741418759189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267274 n : ℚ) ^ (A178334 (A008611 n).toNat : ℤ)

end

end A266984.P2302082741418759189

namespace A266984

/-- `A267274(n)^A178334(A008611(n))` -/
def P2302082741418759189.Spec : Prop :=
  ∀ n, P2302082741418759189.a n = (A266984 n : ℚ)

end A266984

/-! ## A266984.P3657285670147481172

`A164908(n)%A048578(A042948(n))`
-/

namespace A266984.P3657285670147481172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164908 n) (A048578 (A042948 n).toNat)

end

end A266984.P3657285670147481172

namespace A266984

/-- `A164908(n)%A048578(A042948(n))` -/
def P3657285670147481172.Spec : Prop :=
  ∀ n, P3657285670147481172.a n = A266984 n

end A266984

/-! ## A266984.P12415902522470624357

`A267274(n)/A267274(n-A199969(n+1))`
-/

namespace A266984.P12415902522470624357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267274 n : ℚ) / (A267274 ((n : ℤ) - A199969 (n + 1)).toNat : ℚ)

end

end A266984.P12415902522470624357

namespace A266984

/-- `A267274(n)/A267274(n-A199969(n+1))` -/
def P12415902522470624357.Spec : Prop :=
  ∀ n, P12415902522470624357.a n = (A266984 n : ℚ)

end A266984

/-! ## A266984.P16600335713433215601

`A267274(n)%A127262(n)`
-/

namespace A266984.P16600335713433215601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267274 n) (A127262 n)

end

end A266984.P16600335713433215601

namespace A266984

/-- `A267274(n)%A127262(n)` -/
def P16600335713433215601.Spec : Prop :=
  ∀ n, P16600335713433215601.a n = A266984 n

end A266984

/-!
# A266986: The indices of primes p for which the average of the primitive roots equals p/2.

The programs for A266986, there is no canonical definition to state claims against.
-/

/-! ## A266986.P14440794704699445450

`A000720(A266987(n+1))`
-/

namespace A266986.P14440794704699445450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A266987 (n + 1)).toNat

end

end A266986.P14440794704699445450

/-! ## A266986.P513507724545649258

`A066328(A266987(-xor(n, -1)))`
-/

namespace A266986.P513507724545649258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A266987 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A266986.P513507724545649258

/-! ## A266986.P4806090877616162298

`∑{d}[A266987(1+n), A055396(#)]`
-/

namespace A266986.P4806090877616162298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A266986.P4806090877616162298

/-! ## A266986.P1446389742759895161

`∑{d}[A266987(n+1), A056239(#)]`
-/

namespace A266986.P1446389742759895161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A266986.P1446389742759895161

/-! ## A266986.P1420741855569309862

`∑{d}[A266987(n+1), A230980(#)]`
-/

namespace A266986.P1420741855569309862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230980 d

end

end A266986.P1420741855569309862

/-! ## A266986.P15106038316733628246

`A230980(A266987(n+1)-1)+1`
-/

namespace A266986.P15106038316733628246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A266987 (n + 1) - 1).toNat + 1

end

end A266986.P15106038316733628246

/-! ## A266986.P11408473589748759258

`A067004(or(1, A266987(n+1)-1))`
-/

namespace A266986.P11408473589748759258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (Int.lor 1 (A266987 (n + 1) - 1)).toNat

end

end A266986.P11408473589748759258

/-! ## A266986.P9073577767007784837

`A056239(A266987(n+1))%A016789(n)`
-/

namespace A266986.P9073577767007784837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A266987 (n + 1)).toNat) (A016789 n)

end

end A266986.P9073577767007784837

/-! ## A266986.P5194791386760640853

`A230980(A266987(n+1)%A187710(n))`
-/

namespace A266986.P5194791386760640853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.tmod (A266987 (n + 1)) (A187710 n)).toNat

end

end A266986.P5194791386760640853

/-! ## A266986.P7391747978956224337

`A055396(A266987(n+1))%A065091(n+1)`
-/

namespace A266986.P7391747978956224337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A266987 (n + 1)).toNat) (A065091 (n + 1))

end

end A266986.P7391747978956224337

/-! ## A266986.P16873353722230533925

`A230980(A266987(n+1))%A036689(n+1)`
-/

namespace A266986.P16873353722230533925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230980 (A266987 (n + 1)).toNat) (A036689 (n + 1))

end

end A266986.P16873353722230533925

/-! ## A266986.P48509396367722853

`A055396(or(A252742(n+1), A266987(n+1)))`
-/

namespace A266986.P48509396367722853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor (A252742 (n + 1)) (A266987 (n + 1))).toNat

end

end A266986.P48509396367722853

/-! ## A266986.P8403148003120080654

`A067004(or(A252742(n+1), A266987(n+1)))`
-/

namespace A266986.P8403148003120080654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (Int.lor (A252742 (n + 1)) (A266987 (n + 1))).toNat

end

end A266986.P8403148003120080654

/-! ## A266986.P9293724905692179306

`A056239(2*A266987(n+1)-A266987(n+1))`
-/

namespace A266986.P9293724905692179306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A266987 (n + 1) - A266987 (n + 1)).toNat

end

end A266986.P9293724905692179306

/-! ## A266986.P24223664762510774

`A067004(2*A266987(n+1)-A266987(n+1))`
-/

namespace A266986.P24223664762510774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (2 * A266987 (n + 1) - A266987 (n + 1)).toNat

end

end A266986.P24223664762510774

/-! ## A266986.P11629476986503685889

`A056239(2*A266987(n+1))-1`
-/

namespace A266986.P11629476986503685889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A266987 (n + 1)).toNat - 1

end

end A266986.P11629476986503685889

/-! ## A266986.P3202019857547123128

`A230980(A266987(n+1)^A160338(n+1))`
-/

namespace A266986.P3202019857547123128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.roundAway ((A266987 (n + 1) : ℚ) ^ (A160338 (n + 1) : ℤ))).toNat

end

end A266986.P3202019857547123128

/-!
# A266987: Primes p for which the average of the primitive roots equals p/2.

The programs for A266987, there is no canonical definition to state claims against.
-/

/-! ## A266987.P1604348207790993822

`A000040(A266986(n+1))`
-/

namespace A266987.P1604348207790993822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A266986 (n + 1)).toNat

end

end A266987.P1604348207790993822

/-! ## A266987.P521641388443717135

`∪[A002313(n+1), A267010(n+1)]`
-/

namespace A266987.P521641388443717135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A266987.P521641388443717135

/-! ## A266987.P8984794935253324043

`A020639(A100484(A266986(n+1))/2)`
-/

namespace A266987.P8984794935253324043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A100484 (A266986 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A266987.P8984794935253324043

/-! ## A266987.P14943609884400073153

`A000038(n+1)+A100484(A266986(n+1))/2`
-/

namespace A266987.P14943609884400073153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) + (A100484 (A266986 (n + 1)).toNat : ℚ) / 2

end

end A266987.P14943609884400073153

/-! ## A266987.P3718473275893012241

`and(2, A000041(n)²)+A100484(A266986(n+1))/2`
-/

namespace A266987.P3718473275893012241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A000041 n ^ 2) : ℚ) + (A100484 (A266986 (n + 1)).toNat : ℚ) / 2

end

end A266987.P3718473275893012241

/-! ## A266987.P8161099163272422408

`and(2, A260556(n+1))+A100484(A266986(n+1))/2`
-/

namespace A266987.P8161099163272422408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A260556 (n + 1)) : ℚ) + (A100484 (A266986 (n + 1)).toNat : ℚ) / 2

end

end A266987.P8161099163272422408

/-! ## A266987.P15557678527807073553

`A100484(A266986(n+1))/2*and(1, A141913(n+1))`
-/

namespace A266987.P15557678527807073553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (A266986 (n + 1)).toNat : ℚ) / 2 * (Int.land 1 (A141913 (n + 1)) : ℚ)

end

end A266987.P15557678527807073553

/-! ## A266987.P6248138025351381778

`A100484(A266986(n+1))/2*and(1, A141918(n+1))`
-/

namespace A266987.P6248138025351381778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (A266986 (n + 1)).toNat : ℚ) / 2 * (Int.land 1 (A141918 (n + 1)) : ℚ)

end

end A266987.P6248138025351381778

/-! ## A266987.P16677452605046424184

`A100484(A266986(n+1))/2*and(1, A141922(n+1))`
-/

namespace A266987.P16677452605046424184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (A266986 (n + 1)).toNat : ℚ) / 2 * (Int.land 1 (A141922 (n + 1)) : ℚ)

end

end A266987.P16677452605046424184

/-! ## A266987.P9305532810151628246

`A100484(A266986(n+1))/2*and(1, A141930(n+1))`
-/

namespace A266987.P9305532810151628246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (A266986 (n + 1)).toNat : ℚ) / 2 * (Int.land 1 (A141930 (n + 1)) : ℚ)

end

end A266987.P9305532810151628246

/-! ## A266987.P11623007513963992615

`A100484(A266986(n+1))/2*and(1, A141939(n+1))`
-/

namespace A266987.P11623007513963992615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (A266986 (n + 1)).toNat : ℚ) / 2 * (Int.land 1 (A141939 (n + 1)) : ℚ)

end

end A266987.P11623007513963992615

/-! ## A266987.P7244386491839151311

`and(2, A187715(2*(n+1))²)+A100484(A266986(n+1))/2`
-/

namespace A266987.P7244386491839151311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A187715 (2 * (n + 1)) ^ 2) : ℚ) + (A100484 (A266986 (n + 1)).toNat : ℚ) / 2

end

end A266987.P7244386491839151311

/-!
# A266988: The indices of primes for which the average of the primitive roots is < p/2.

The programs for A266988, there is no canonical definition to state claims against.
-/

/-! ## A266988.P8445611832867625055

`A000720(A266989(n+1))`
-/

namespace A266988.P8445611832867625055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A266989 (n + 1)).toNat

end

end A266988.P8445611832867625055

/-! ## A266988.P6405661478663084818

`A003963(or(1, A266989(n+1)))`
-/

namespace A266988.P6405661478663084818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A266989 (n + 1))).toNat

end

end A266988.P6405661478663084818

/-! ## A266988.P12163473006469760290

`∑{d}[A266989(n+1), A056239(#)]`
-/

namespace A266988.P12163473006469760290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A266988.P12163473006469760290

/-! ## A266988.P17377905609002781128

`A266989(n+1)-A026238(A266989(n+1)+1)`
-/

namespace A266988.P17377905609002781128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266989 (n + 1) - A026238 (A266989 (n + 1) + 1).toNat

end

end A266988.P17377905609002781128

/-! ## A266988.P3652621492074238609

`A266989(n+1)-A026233(A266989(n+1)-1)`
-/

namespace A266988.P3652621492074238609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266989 (n + 1) - A026233 (A266989 (n + 1) - 1).toNat

end

end A266988.P3652621492074238609

/-!
# A266989: Primes for which the average of the primitive roots is < p/2.

The programs for A266989, there is no canonical definition to state claims against.
-/

/-! ## A266989.P16194053318785272391

`A000040(A266988(n+1))`
-/

namespace A266989.P16194053318785272391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A266988 (n + 1)).toNat

end

end A266989.P16194053318785272391

/-! ## A266989.P4257946442332418943

`A008578(A266988(n+1)+1)`
-/

namespace A266989.P4257946442332418943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A266988 (n + 1) + 1).toNat

end

end A266989.P4257946442332418943

/-! ## A266989.P17304793202317044267

`A171525(A266988(n+1)+1)`
-/

namespace A266989.P17304793202317044267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (A266988 (n + 1) + 1).toNat

end

end A266989.P17304793202317044267

/-! ## A266989.P2943171928326879864

`A175787(A266988(n+1)+1)`
-/

namespace A266989.P2943171928326879864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A266988 (n + 1) + 1).toNat

end

end A266989.P2943171928326879864

/-! ## A266989.P4964736630783126136

`A182986(A266988(n+1)+1)`
-/

namespace A266989.P4964736630783126136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A266988 (n + 1) + 1).toNat

end

end A266989.P4964736630783126136

/-! ## A266989.P8516288850469551669

`A045344(A266988(n+1)-1)`
-/

namespace A266989.P8516288850469551669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A266988 (n + 1) - 1).toNat

end

end A266989.P8516288850469551669

/-! ## A266989.P16681952678739907066

`A046022(A266988(n+1)+2)`
-/

namespace A266989.P16681952678739907066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A266988 (n + 1) + 2).toNat

end

end A266989.P16681952678739907066

/-! ## A266989.P11792726215834789178

`A065091(A266988(n+1)-1)`
-/

namespace A266989.P11792726215834789178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A266988 (n + 1) - 1).toNat

end

end A266989.P11792726215834789178

/-! ## A266989.P16491950702858345844

`A162753(2*A266988(n+1))`
-/

namespace A266989.P16491950702858345844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * A266988 (n + 1)).toNat

end

end A266989.P16491950702858345844

/-! ## A266989.P11253657805761222521

`A207790(2*A266988(n+1))`
-/

namespace A266989.P11253657805761222521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A266988 (n + 1)).toNat

end

end A266989.P11253657805761222521

/-!
# A266990: The indices of primes p for which the average of the primitive roots is > p/2.

The programs for A266990, there is no canonical definition to state claims against.
-/

/-! ## A266990.P612082953551918237

`A000720(A267009(n+1))`
-/

namespace A266990.P612082953551918237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A267009 (n + 1)).toNat

end

end A266990.P612082953551918237

/-! ## A266990.P7223159535603215743

`∑{d}[A267009(n+1), A056239(#)]`
-/

namespace A266990.P7223159535603215743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A266990.P7223159535603215743

/-! ## A266990.P6526813874294575485

`A033270(A267009(n+1)+1)+1`
-/

namespace A266990.P6526813874294575485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A267009 (n + 1) + 1).toNat + 1

end

end A266990.P6526813874294575485

/-! ## A266990.P15243125529512059468

`A056239(A267009(n+1)%A145471(n+1))`
-/

namespace A266990.P15243125529512059468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A267009 (n + 1)) (A145471 (n + 1))).toNat

end

end A266990.P15243125529512059468

/-! ## A266990.P9114762562739405864

`A377483(A267009(n+1))%A063846(n+1)`
-/

namespace A266990.P9114762562739405864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377483 (A267009 (n + 1)).toNat) (A063846 (n + 1))

end

end A266990.P9114762562739405864

/-!
# A266991: Smallest representatives of primes of distinct digital types.

The programs for A266991, there is no canonical definition to state claims against.
-/

/-! ## A266991.P5040879785427756627

`p?[A007089(2*n+1)+floor(n/3)!]`
-/

namespace A266991.P5040879785427756627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (2 * n + 1) + (Nat.factorial ⌊(n : ℚ) / 3⌋.toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A266991.P5040879785427756627

/-! ## A266991.P11166282177713161585

`A126762(A258484(n+1))`
-/

namespace A266991.P11166282177713161585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (A258484 (n + 1)).toNat

end

end A266991.P11166282177713161585

/-!
# A266992: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its west, northeast or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266992, there is no canonical definition to state claims against.
-/

/-! ## A266992.P16331936512811364924

`A266994(∑[n+2])`
-/

namespace A266992.P16331936512811364924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266994 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266992.P16331936512811364924

/-! ## A266992.P10327595019814325743

`A266994(A000096(n+1))%A077330(n+2)`
-/

namespace A266992.P10327595019814325743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266994 (A000096 (n + 1)).toNat) (A077330 (n + 2))

end

end A266992.P10327595019814325743

/-!
# A266993: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its west, northeast or northwest neighbor modulo n and the upper left element equal to 0.

The programs for A266993, there is no canonical definition to state claims against.
-/

/-! ## A266993.P4621144182401384358

`A266994(∑[n+3]+1)`
-/

namespace A266993.P4621144182401384358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266994 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266993.P4621144182401384358

/-!
# A266995: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its west, northeast or northwest neighbor modulo 3 and the upper left element equal to 0.

The programs for A266995, there is no canonical definition to state claims against.
-/

/-! ## A266995.P5141487547757114852

`A266494(n+1)+1`
-/

namespace A266995.P5141487547757114852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266494 (n + 1) + 1

end

end A266995.P5141487547757114852

/-! ## A266995.P7424456068705000951

`A267425(∑[n+2]+4)`
-/

namespace A266995.P7424456068705000951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266995.P7424456068705000951

/-! ## A266995.P17708571091505847180

`A267425(A167614(n+1))+A061858(n)`
-/

namespace A266995.P17708571091505847180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A167614 (n + 1)).toNat + A061858 n

end

end A266995.P17708571091505847180

/-! ## A266995.P5323745653753613216

`A267425(A167614(n+1))+A185255(n)`
-/

namespace A266995.P5323745653753613216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A167614 (n + 1)).toNat + A185255 n

end

end A266995.P5323745653753613216

/-! ## A266995.P12444828536535614397

`A267425(A167614(n+1))*A271839(n)`
-/

namespace A266995.P12444828536535614397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (A167614 (n + 1)).toNat * A271839 n

end

end A266995.P12444828536535614397

/-!
# A266996: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its west, northeast or northwest neighbor modulo 4 and the upper left element equal to 0.

The programs for A266996, there is no canonical definition to state claims against.
-/

/-! ## A266996.P9998209548120283128

`A266994(A141214(n)+7)`
-/

namespace A266996.P9998209548120283128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266994 (A141214 n + 7).toNat

end

end A266996.P9998209548120283128

/-! ## A266996.P7531398046281026870

`A266994(A052905(n)+9)`
-/

namespace A266996.P7531398046281026870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266994 (A052905 n + 9).toNat

end

end A266996.P7531398046281026870

/-! ## A266996.P7914207367153156171

`A266994(A055999(n)+10)`
-/

namespace A266996.P7914207367153156171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266994 (A055999 n + 10).toNat

end

end A266996.P7914207367153156171

/-!
# A266997: Number of 5 X n arrays containing n copies of 0..5-1 with no element 1 greater than its west, northeast or northwest neighbor modulo 5 and the upper left element equal to 0.

The programs for A266997, there is no canonical definition to state claims against.
-/

/-! ## A266997.P13361883667176385281

`A266994(A167499(n+3))`
-/

namespace A266997.P13361883667176385281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266994 (A167499 (n + 3)).toNat

end

end A266997.P13361883667176385281

/-! ## A266997.P800928463276897973

`A266994(A155212(n)+13)`
-/

namespace A266997.P800928463276897973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266994 (A155212 n + 13).toNat

end

end A266997.P800928463276897973

