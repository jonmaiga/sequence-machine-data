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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A156511: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 49.

The programs for A156511, there is no canonical definition to state claims against.
-/

/-! ## A156511.P14796001540957730429

`A157654(A166216(n))`
-/

namespace A156511.P14796001540957730429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157654 (A166216 n).toNat

end

end A156511.P14796001540957730429

/-!
# A156519: Number of n X n arrays of squares of integers, symmetric about main diagonal, with all rows summing to 64.

The programs for A156519, there is no canonical definition to state claims against.
-/

/-! ## A156519.P3593561762790750847

`A208805(A001147(n))+A003101(n)`
-/

namespace A156519.P3593561762790750847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A001147 n).toNat + A003101 n

end

end A156519.P3593561762790750847

/-!
# A156521: Number of n X n arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to 64.

The programs for A156521, there is no canonical definition to state claims against.
-/

/-! ## A156521.P722060297103213201

`A246023(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A156521.P722060297103213201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A246023 (a (n - 1)).toNat

end

end A156521.P722060297103213201

/-! ## A156521.P15224051396264168799

`A110734(a(n-1)+n)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A156521.P15224051396264168799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A110734 (a (n - 1) + (n : ℤ)).toNat

end

end A156521.P15224051396264168799

/-!
# A156526: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 81.

The programs for A156526, there is no canonical definition to state claims against.
-/

/-! ## A156526.P3427331880300605222

`A154443(A084600(n)*A088500(n))`
-/

namespace A156526.P3427331880300605222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A084600 n * A088500 n).toNat

end

end A156526.P3427331880300605222

/-!
# A156529: Triangle, T(n, k) = A008517(n+1, k+1)*A008517(n+1, n-k+1), read by rows.

The programs for A156529, there is no canonical definition to state claims against.
-/

/-! ## A156529.P8330468126568100328

`A008517(n+1)*A112007(n)`
-/

namespace A156529.P8330468126568100328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (n + 1) * A112007 n

end

end A156529.P8330468126568100328

/-! ## A156529.P4766477568044086562

`A008517(n+1)*A288874(comp[∑[n]])`
-/

namespace A156529.P4766477568044086562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (n + 1) * A288874 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A156529.P4766477568044086562

/-! ## A156529.P9998554084380346583

`A112007(A061579(n))*A112007(n)`
-/

namespace A156529.P9998554084380346583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (A061579 n).toNat * A112007 n

end

end A156529.P9998554084380346583

/-! ## A156529.P3567632017994684229

`A112007(n)*A201637(A007401(n+1))`
-/

namespace A156529.P3567632017994684229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 n * A201637 (A007401 (n + 1)).toNat

end

end A156529.P3567632017994684229

/-! ## A156529.P15519077836277464120

`A008517(n+1)*A008517(A038722(n+1))`
-/

namespace A156529.P15519077836277464120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (n + 1) * A008517 (A038722 (n + 1)).toNat

end

end A156529.P15519077836277464120

/-! ## A156529.P17963899821558861484

`A008517(n+1)*A008517(A061579(n)+1)`
-/

namespace A156529.P17963899821558861484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (n + 1) * A008517 (A061579 n + 1).toNat

end

end A156529.P17963899821558861484

/-! ## A156529.P11889028993353774156

`A008517(n+1)*A163936(A014132(n+1))`
-/

namespace A156529.P11889028993353774156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (n + 1) * A163936 (A014132 (n + 1)).toNat

end

end A156529.P11889028993353774156

/-!
# A156531: Denominator of Euler(n, 1/17).

The programs for A156531, there is no canonical definition to state claims against.
-/

/-! ## A156531.P16986198077742548004

`2^val(n+1, 2)*17^n`
-/

namespace A156531.P16986198077742548004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 17 ^ n

end

end A156531.P16986198077742548004

/-! ## A156531.P7614437415739949125

`17^n*A006519(n+1)`
-/

namespace A156531.P7614437415739949125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 ^ n : ℤ) * A006519 (n + 1)

end

end A156531.P7614437415739949125

/-! ## A156531.P4435228068488493602

`(and(n, -(n+2))+1)*A001026(n)`
-/

namespace A156531.P4435228068488493602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n + 2 : ℤ)) + 1) * A001026 n

end

end A156531.P4435228068488493602

/-! ## A156531.P4315843174858563142

`lcm(Δ[A003188(n)], A001026(n))`
-/

namespace A156531.P4315843174858563142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A001026 n)

end

end A156531.P4315843174858563142

/-! ## A156531.P14679504142191930902

`A006519(n+1)*A001026(n)`
-/

namespace A156531.P14679504142191930902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A001026 n

end

end A156531.P14679504142191930902

/-! ## A156531.P6326078803802250772

`A001026(n)*A003188(A038712(n+1))`
-/

namespace A156531.P6326078803802250772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 n * A003188 (A038712 (n + 1)).toNat

end

end A156531.P6326078803802250772

/-! ## A156531.P14444283207427899815

`gcd(A000079(n), A005126(n))*A001026(n)`
-/

namespace A156531.P14444283207427899815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000079 n) (A005126 n) : ℤ) * A001026 n

end

end A156531.P14444283207427899815

/-! ## A156531.P13619125977680914416

`(n+1)*17^n/A000265(n+1)`
-/

namespace A156531.P13619125977680914416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 17 ^ n : ℚ) / (A000265 (n + 1) : ℚ)

end

end A156531.P13619125977680914416

/-!
# A156534: A triangular recursion sequence: A(n,k,m)= (m* n - m*k + 1)*A(n - 1, k - 1, m) + (m*k - (m - 1))*A(n - 1, k, m); t(n,k)=2*A(n, k, 1)*A(n + 1, k + 1, 0)/(n - k + 1) - A(n, k, 0)*A(n, k, 1).

The programs for A156534, there is no canonical definition to state claims against.
-/

/-! ## A156534.P11575746513447674700

`2*A155467(n)-A141686(n+1)`
-/

namespace A156534.P11575746513447674700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155467 n - A141686 (n + 1)

end

end A156534.P11575746513447674700

/-! ## A156534.P16845862382502220209

`A004277(A155467(n))-A141686(n+1)`
-/

namespace A156534.P16845862382502220209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A155467 n).toNat - A141686 (n + 1)

end

end A156534.P16845862382502220209

/-! ## A156534.P1819149406715395754

`A111610(A008292(n+1))`
-/

namespace A156534.P1819149406715395754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111610 (A008292 (n + 1)).toNat

end

end A156534.P1819149406715395754

/-! ## A156534.P6348165929666487060

`A289234(A157221(n))%97`
-/

namespace A156534.P6348165929666487060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289234 (A157221 n).toNat) 97

end

end A156534.P6348165929666487060

/-! ## A156534.P9210831417319907829

`A309892(A000040(n+1)*A285357(n+1))`
-/

namespace A156534.P9210831417319907829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (A000040 (n + 1) * A285357 (n + 1)).toNat

end

end A156534.P9210831417319907829

/-!
# A156536: Period 12: repeat 7,5,-1,1,-5,-7,-7,-5,1,-1,5,7.

The programs for A156536, the canonical program `A156536.P2061659556384448435` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156536 has offset 0).

The definition of A156536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156536.P2061659556384448435

`-a(n-6)` with `a(0)=7, a(1)=5, a(2)=-1, a(3)=1, a(4)=-5, a(5)=-7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156536

/-- `-a(n-6)` -/
def P2061659556384448435.Spec : Prop :=
  ∀ n, P2061659556384448435.a n = A156536 n

theorem P2061659556384448435.correct : P2061659556384448435.Spec := by
  intro n
  simp only [A156536]

end A156536

/-!
# A156537: a(n), a(n+1), a(n+2), for n=2,5,8,11,... are respectively the numbers of representations of the integers 2^k-2, 2^k, 2^k+2, where k=(n+4)/3, by unordered sums of two numbers of A156284.

The programs for A156537, there is no canonical definition to state claims against.
-/

/-! ## A156537.P9461183715213909643

`A003056(A053994(n)%A028310(n))`
-/

namespace A156537.P9461183715213909643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A053994 n) (A028310 n)).toNat

end

end A156537.P9461183715213909643

/-! ## A156537.P5418981490666241496

`A193759(A193765(2*(n+3))%A193718(n))`
-/

namespace A156537.P5418981490666241496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193759 (Int.tmod (A193765 (2 * (n + 3))) (A193718 n)).toNat

end

end A156537.P5418981490666241496

/-! ## A156537.P3565493262838604907

`lcm(A001221(A055019(2*n+1)), A010892(n+1))`
-/

namespace A156537.P3565493262838604907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A055019 (2 * n + 1)).toNat) (A010892 (n + 1))

end

end A156537.P3565493262838604907

/-! ## A156537.P3963046209684413717

`lcm(A001222(A318287(2*n+1)), A318291(2*n+1))`
-/

namespace A156537.P3963046209684413717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A318287 (2 * n + 1)).toNat) (A318291 (2 * n + 1))

end

end A156537.P3963046209684413717

/-! ## A156537.P13596686529149191412

`A000035(A024495(n))*A119704(A105114(n))`
-/

namespace A156537.P13596686529149191412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A024495 n).toNat * A119704 (A105114 n).toNat

end

end A156537.P13596686529149191412

/-!
# A156539: Triangle T(n, k, q) = e(n, k, q), where e(n, k, q) = ((1 - (-q)^(n+k-1))/(1 + q))*e(n-1, k, q) + (-q)^(n+k-2)*e(n-1, k-1, q), e(n, 0, q) = e(n, n, q) = 1, and q = 2, read by rows.

The programs for A156539, there is no canonical definition to state claims against.
-/

/-! ## A156539.P13362874110111351066

`A053714(A228902(n)²)`
-/

namespace A156539.P13362874110111351066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053714 (A228902 n ^ 2).toNat

end

end A156539.P13362874110111351066

/-! ## A156539.P12016455052853710977

`A000034(A000984(n))-A008423(n)`
-/

namespace A156539.P12016455052853710977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000984 n).toNat - A008423 n

end

end A156539.P12016455052853710977

/-! ## A156539.P10001791247205626947

`A000629(A008436(n))-A008423(n)`
-/

namespace A156539.P10001791247205626947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (A008436 n).toNat - A008423 n

end

end A156539.P10001791247205626947

/-! ## A156539.P10062779834887419733

`A000629(A353882(n))-A008423(n)`
-/

namespace A156539.P10062779834887419733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (A353882 n).toNat - A008423 n

end

end A156539.P10062779834887419733

/-!
# A156540: Array A(n, k) = Product_{j=1..n} ( (k+1)^j - 1 ) with A(n, 0) = n!, read by antidiagonals.

The programs for A156540, there is no canonical definition to state claims against.
-/

/-! ## A156540.P16822444857846228945

`A069777(A099375(n)+1+n)`
-/

namespace A156540.P16822444857846228945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A099375 n + 1 + (n : ℤ)).toNat

end

end A156540.P16822444857846228945

/-! ## A156540.P9964952243130736995

`A069777(A114327(n)+A080036(n))`
-/

namespace A156540.P9964952243130736995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A114327 n + A080036 n).toNat

end

end A156540.P9964952243130736995

/-! ## A156540.P5426218902125144301

`A069777(A326178(A099375(n)+n))`
-/

namespace A156540.P5426218902125144301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A326178 (A099375 n + (n : ℤ)).toNat).toNat

end

end A156540.P5426218902125144301

/-! ## A156540.P6724515600988655586

`A069777(A114327(n)+∑[A035214(n)])`
-/

namespace A156540.P6724515600988655586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A114327 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156540.P6724515600988655586

/-! ## A156540.P5854832670543179509

`A069777(A114327(n)+A014132(n+1))`
-/

namespace A156540.P5854832670543179509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A114327 n + A014132 (n + 1)).toNat

end

end A156540.P5854832670543179509

/-! ## A156540.P7659475758320838332

`A069777(A123578(n)+A038722(n+1))`
-/

namespace A156540.P7659475758320838332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A123578 n + A038722 (n + 1)).toNat

end

end A156540.P7659475758320838332

/-! ## A156540.P17902092726989934884

`A069777(A061579(n)+A003057(n+2))`
-/

namespace A156540.P17902092726989934884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A061579 n + A003057 (n + 2)).toNat

end

end A156540.P17902092726989934884

/-! ## A156540.P15464046661803221600

`A069777(A140978(n+1)-A080036(n))`
-/

namespace A156540.P15464046661803221600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A140978 (n + 1) - A080036 n).toNat

end

end A156540.P15464046661803221600

/-! ## A156540.P13019314954844061172

`A069777(A038722(n+1)+A002024(n+1))`
-/

namespace A156540.P13019314954844061172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A156540.P13019314954844061172

/-! ## A156540.P4235067121450217807

`A069777(A140978(n+1)-A014132(n+1))`
-/

namespace A156540.P4235067121450217807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069777 (A140978 (n + 1) - A014132 (n + 1)).toNat

end

end A156540.P4235067121450217807

/-!
# A156541: Multiplicative closure of Sophie Germain primes (A005384).

The programs for A156541, the canonical program `A156541.P16873240760664581881` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156541 has offset 1).

The definition of A156541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156541.P16873240760664581881

`eq[1, ∏{p}[n+1, A101264(#)]]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156541

/-- `eq[1, ∏{p}[n+1, A101264(#)]]+1` -/
def P16873240760664581881.Spec : Prop :=
  ∀ n, (P16873240760664581881.a n : ℤ) = A156541 (n + 1)

theorem P16873240760664581881.correct : P16873240760664581881.Spec := by
  intro n
  simp only [A156541, Nat.add_sub_cancel]

end A156541

/-! ## A156541.P150151590129161993

`eq[1, ∏{p}[n+1, A306440(#)]]+1`
-/

namespace A156541.P150151590129161993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A306440 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A156541.P150151590129161993

namespace A156541

/-- `eq[1, ∏{p}[n+1, A306440(#)]]+1` -/
def P150151590129161993.Spec : Prop :=
  ∀ n, (P150151590129161993.a n : ℤ) = A156541 (n + 1)

end A156541

/-! ## A156541.P6671251607417230597

`eq[A001221(n+1), A156542(n+1)]+1`
-/

namespace A156541.P6671251607417230597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A156541.P6671251607417230597

namespace A156541

/-- `eq[A001221(n+1), A156542(n+1)]+1` -/
def P6671251607417230597.Spec : Prop :=
  ∀ n, (P6671251607417230597.a n : ℤ) = A156541 (n + 1)

end A156541

/-! ## A156541.P9744476296020001108

`eq[log2(A034444(n+1)), A156542(n+1)]+1`
-/

namespace A156541.P9744476296020001108
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034444 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A156541.P9744476296020001108

namespace A156541

/-- `eq[log2(A034444(n+1)), A156542(n+1)]+1` -/
def P9744476296020001108.Spec : Prop :=
  ∀ n, (P9744476296020001108.a n : ℤ) = A156541 (n + 1)

end A156541

/-! ## A156541.P12556974515038773006

`eq[A099812(n+1), A156542(2*(n+1))]+1`
-/

namespace A156541.P12556974515038773006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A156541.P12556974515038773006

namespace A156541

/-- `eq[A099812(n+1), A156542(2*(n+1))]+1` -/
def P12556974515038773006.Spec : Prop :=
  ∀ n, (P12556974515038773006.a n : ℤ) = A156541 (n + 1)

end A156541

/-! ## A156541.P3642607483156528011

`A000463(eq[A099812(n+1), A156542(n+1)])`
-/

namespace A156541.P3642607483156528011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A156541.P3642607483156528011

namespace A156541

/-- `A000463(eq[A099812(n+1), A156542(n+1)])` -/
def P3642607483156528011.Spec : Prop :=
  ∀ n, P3642607483156528011.a n = A156541 (n + 1)

end A156541

/-! ## A156541.P1211582203495253385

`A008619(eq[A099812(n+1), A156542(n+1)])`
-/

namespace A156541.P1211582203495253385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A156541.P1211582203495253385

namespace A156541

/-- `A008619(eq[A099812(n+1), A156542(n+1)])` -/
def P1211582203495253385.Spec : Prop :=
  ∀ n, P1211582203495253385.a n = A156541 (n + 1)

end A156541

/-!
# A156542: Number of distinct Sophie Germain prime factors of n.

The programs for A156542, the canonical program `A156542.P6738080021665822657` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156542 has offset 1).

The definition of A156542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156542.P16312776648621045420

`∑{d}[n+1, A156660(#)]`
-/

namespace A156542.P16312776648621045420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A156660 d

end

end A156542.P16312776648621045420

namespace A156542

/-- `∑{d}[n+1, A156660(#)]` -/
def P16312776648621045420.Spec : Prop :=
  ∀ n, P16312776648621045420.a n = A156542 (n + 1)

end A156542

/-! ## A156542.P6738080021665822657

`∑{p}[n+1, A101264(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156542

/-- `∑{p}[n+1, A101264(#)]` -/
def P6738080021665822657.Spec : Prop :=
  ∀ n, P6738080021665822657.a n = A156542 (n + 1)

theorem P6738080021665822657.correct : P6738080021665822657.Spec := by
  intro n
  simp only [A156542, Nat.add_sub_cancel]

end A156542

/-! ## A156542.P1425299907978179083

`∑{p}[n+1, A101808(#)]`
-/

namespace A156542.P1425299907978179083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A101808 p

end

end A156542.P1425299907978179083

namespace A156542

/-- `∑{p}[n+1, A101808(#)]` -/
def P1425299907978179083.Spec : Prop :=
  ∀ n, P1425299907978179083.a n = A156542 (n + 1)

end A156542

/-! ## A156542.P9293970940340480530

`∑{p}[n+1, A306440(#)]`
-/

namespace A156542.P9293970940340480530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A306440 p

end

end A156542.P9293970940340480530

namespace A156542

/-- `∑{p}[n+1, A306440(#)]` -/
def P9293970940340480530.Spec : Prop :=
  ∀ n, P9293970940340480530.a n = A156542 (n + 1)

end A156542

/-! ## A156542.P15497061680695779646

`∑{p}[n+1, A112448(#)²]`
-/

namespace A156542.P15497061680695779646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A112448 p ^ 2

end

end A156542.P15497061680695779646

namespace A156542

/-- `∑{p}[n+1, A112448(#)²]` -/
def P15497061680695779646.Spec : Prop :=
  ∀ n, P15497061680695779646.a n = A156542 (n + 1)

end A156542

/-! ## A156542.P1180712950863507673

`∑{p}[n+1, A156707(#)²]`
-/

namespace A156542.P1180712950863507673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A156707 p ^ 2

end

end A156542.P1180712950863507673

namespace A156542

/-- `∑{p}[n+1, A156707(#)²]` -/
def P1180712950863507673.Spec : Prop :=
  ∀ n, P1180712950863507673.a n = A156542 (n + 1)

end A156542

/-! ## A156542.P4255542317387610977

`∑{p}[n+1, A010051(2*#+1)]`
-/

namespace A156542.P4255542317387610977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010051 (2 * p + 1)

end

end A156542.P4255542317387610977

namespace A156542

/-- `∑{p}[n+1, A010051(2*#+1)]` -/
def P4255542317387610977.Spec : Prop :=
  ∀ n, P4255542317387610977.a n = A156542 (n + 1)

end A156542

/-!
# A156543: Multiplicative closure of primes that are not Sophie Germain primes (A053176).

The programs for A156543, the canonical program `A156543.P5898804048182279516` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156543 has offset 1).

The definition of A156543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1777 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156543.P5898804048182279516

`eq[0, A156542(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156543

/-- `eq[0, A156542(n+1)]+1` -/
def P5898804048182279516.Spec : Prop :=
  ∀ n, (P5898804048182279516.a n : ℤ) = A156543 (n + 1)

theorem P5898804048182279516.correct : P5898804048182279516.Spec := by
  intro n
  simp only [A156543, Nat.add_sub_cancel]

end A156543

/-! ## A156543.P4275436147770689786

`eq[3, 3*a(A156542(n))]` with `a(0)=1`
-/

namespace A156543.P4275436147770689786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  3 * f2 (A156542 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156543.P4275436147770689786

namespace A156543

/-- `eq[3, 3*a(A156542(n))]` -/
def P4275436147770689786.Spec : Prop :=
  ∀ n, (P4275436147770689786.a n : ℤ) = A156543 (n + 1)

end A156543

/-! ## A156543.P14356143295984818147

`record[n+1-A156542(n+1)*A301269(n)]`
-/

namespace A156543.P14356143295984818147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A156542 (n + 1) * A301269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156543.P14356143295984818147

namespace A156543

/-- `record[n+1-A156542(n+1)*A301269(n)]` -/
def P14356143295984818147.Spec : Prop :=
  ∀ n, P14356143295984818147.a n = A156543 (n + 1)

end A156543

/-! ## A156543.P7634187886217103433

`record[n+1-A081543(n+1)*A156542(n+1)]`
-/

namespace A156543.P7634187886217103433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A081543 (n + 1) * A156542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156543.P7634187886217103433

namespace A156543

/-- `record[n+1-A081543(n+1)*A156542(n+1)]` -/
def P7634187886217103433.Spec : Prop :=
  ∀ n, P7634187886217103433.a n = A156543 (n + 1)

end A156543

/-! ## A156543.P3324860775578521912

`record[n+1-A156542(n+1)*A166631(n+1)]`
-/

namespace A156543.P3324860775578521912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A156542 (n + 1) * A166631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156543.P3324860775578521912

namespace A156543

/-- `record[n+1-A156542(n+1)*A166631(n+1)]` -/
def P3324860775578521912.Spec : Prop :=
  ∀ n, P3324860775578521912.a n = A156543 (n + 1)

end A156543

/-! ## A156543.P16080927510441230128

`record[n+1-A156542(n+1)*A228056(n+1)]`
-/

namespace A156543.P16080927510441230128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A156542 (n + 1) * A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156543.P16080927510441230128

namespace A156543

/-- `record[n+1-A156542(n+1)*A228056(n+1)]` -/
def P16080927510441230128.Spec : Prop :=
  ∀ n, P16080927510441230128.a n = A156543 (n + 1)

end A156543

/-! ## A156543.P1047211747800208204

`record[n+1-A156542(n+1)*A183011(n)]`
-/

namespace A156543.P1047211747800208204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A156542 (n + 1) * A183011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156543.P1047211747800208204

namespace A156543

/-- `record[n+1-A156542(n+1)*A183011(n)]` -/
def P1047211747800208204.Spec : Prop :=
  ∀ n, P1047211747800208204.a n = A156543 (n + 1)

end A156543

/-! ## A156543.P463589480077328226

`∪[A045979(n+1), A350704(n+1)]`
-/

namespace A156543.P463589480077328226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156543.P463589480077328226

namespace A156543

/-- `∪[A045979(n+1), A350704(n+1)]` -/
def P463589480077328226.Spec : Prop :=
  ∀ n, (P463589480077328226.a n : ℤ) = A156543 (n + 1)

end A156543

/-! ## A156543.P3259596724648203983

`record[(n+1)/A301269(n*A156542(n+1))]`
-/

namespace A156543.P3259596724648203983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A301269 ((n : ℤ) * A156542 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156543.P3259596724648203983

namespace A156543

/-- `record[(n+1)/A301269(n*A156542(n+1))]` -/
def P3259596724648203983.Spec : Prop :=
  ∀ n, P3259596724648203983.a n = (A156543 (n + 1) : ℚ)

end A156543

/-!
# A156549: Race between primes having an odd/even number of zeros in their binary representation.

The programs for A156549, the canonical program `A156549.P5463997211392600684` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156549 has offset 1).

The definition of A156549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156549.P5463997211392600684

`∑[and(2, A002522(A035103(n+1)))-1]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156549

/-- `∑[and(2, A002522(A035103(n+1)))-1]` -/
def P5463997211392600684.Spec : Prop :=
  ∀ n, P5463997211392600684.a n = A156549 (n + 1)

theorem P5463997211392600684.correct : P5463997211392600684.Spec := by
  intro n
  simp only [A156549, Nat.add_sub_cancel]

end A156549

/-! ## A156549.P895617359499028377

`∑[A242179(A000040(n+1)-2)]`
-/

namespace A156549.P895617359499028377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 (A000040 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156549.P895617359499028377

namespace A156549

/-- `∑[A242179(A000040(n+1)-2)]` -/
def P895617359499028377.Spec : Prop :=
  ∀ n, P895617359499028377.a n = A156549 (n + 1)

end A156549

/-! ## A156549.P4836077807154065526

`∑[A242179(record[n/A001222(n+2)])]`
-/

namespace A156549.P4836077807154065526
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A001222 (n + 2) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156549.P4836077807154065526

namespace A156549

/-- `∑[A242179(record[n/A001222(n+2)])]` -/
def P4836077807154065526.Spec : Prop :=
  ∀ n, P4836077807154065526.a n = A156549 (n + 1)

end A156549

/-! ## A156549.P16256021993234776062

`∑[-A242179(2*A000040(n+1))]`
-/

namespace A156549.P16256021993234776062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A242179 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156549.P16256021993234776062

namespace A156549

/-- `∑[-A242179(2*A000040(n+1))]` -/
def P16256021993234776062.Spec : Prop :=
  ∀ n, P16256021993234776062.a n = A156549 (n + 1)

end A156549

/-! ## A156549.P7556067295895287294

`∑[A242179(4*A000040(n+1))]`
-/

namespace A156549.P7556067295895287294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 (4 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156549.P7556067295895287294

namespace A156549

/-- `∑[A242179(4*A000040(n+1))]` -/
def P7556067295895287294.Spec : Prop :=
  ∀ n, P7556067295895287294.a n = A156549 (n + 1)

end A156549

/-!
# A156550: a(n) = 5*(-1)^n*A078008(n).

The programs for A156550, the canonical program `A156550.P8922869852312838463` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156550 has offset 0).

The definition of A156550 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(-1)^n*A078008(n)` (program `A156550.P8922869852312838463`, by `A156550.P8922869852312838463.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156550.P3745795620616551379

`5*(2+(-2)^n)/3`
-/

namespace A156550.P3745795620616551379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (2 + (-2) ^ n) : ℚ) / 3

end

end A156550.P3745795620616551379

namespace A156550

/-- `5*(2+(-2)^n)/3` -/
def P3745795620616551379.Spec : Prop :=
  ∀ n, P3745795620616551379.a n = (A156550 n : ℚ)

end A156550

/-! ## A156550.P8922869852312838463

`5*(-1)^n*A078008(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156550

/-- `5*(-1)^n*A078008(n)` -/
def P8922869852312838463.Spec : Prop :=
  ∀ n, P8922869852312838463.a n = A156550 n

theorem P8922869852312838463.correct : P8922869852312838463.Spec := by
  intro n
  simp only [A156550]

end A156550

/-! ## A156550.P12269697505292561012

`A140966(n)+A140966(n+2)`
-/

namespace A156550.P12269697505292561012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n + A140966 (n + 2)

end

end A156550.P12269697505292561012

namespace A156550

/-- `A140966(n)+A140966(n+2)` -/
def P12269697505292561012.Spec : Prop :=
  ∀ n, P12269697505292561012.a n = A156550 n

end A156550

/-! ## A156550.P8114017537625669575

`∑[ogf((5+5x)/(1+2x))]`
-/

namespace A156550.P8114017537625669575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5] [1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156550.P8114017537625669575

namespace A156550

/-- `∑[ogf((5+5x)/(1+2x))]` -/
def P8114017537625669575.Spec : Prop :=
  ∀ n, P8114017537625669575.a n = A156550 n

end A156550

/-! ## A156550.P5248210036488144078

`ogf((5+5x)/(1+x-2x^2))`
-/

namespace A156550.P5248210036488144078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5] [1, 1, -2] n

end

end A156550.P5248210036488144078

namespace A156550

/-- `ogf((5+5x)/(1+x-2x^2))` -/
def P5248210036488144078.Spec : Prop :=
  ∀ n, P5248210036488144078.a n = A156550 n

end A156550

/-! ## A156550.P8563768284546595415

`2*(5-a(n-1))` with `a(0)=5`
-/

namespace A156550.P8563768284546595415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  2 * (5 - a (n - 1))

end

end A156550.P8563768284546595415

namespace A156550

/-- `2*(5-a(n-1))` -/
def P8563768284546595415.Spec : Prop :=
  ∀ n, P8563768284546595415.a n = A156550 n

end A156550

/-! ## A156550.P16247952146995744359

`10-(a(n-1)+a(n-1))` with `a(0)=5`
-/

namespace A156550.P16247952146995744359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  10 - (a (n - 1) + a (n - 1))

end

end A156550.P16247952146995744359

namespace A156550

/-- `10-(a(n-1)+a(n-1))` -/
def P16247952146995744359.Spec : Prop :=
  ∀ n, P16247952146995744359.a n = A156550 n

end A156550

/-! ## A156550.P11219562418614352935

`10-a(n-1)-a(n-1)` with `a(0)=5`
-/

namespace A156550.P11219562418614352935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  10 - a (n - 1) - a (n - 1)

end

end A156550.P11219562418614352935

namespace A156550

/-- `10-a(n-1)-a(n-1)` -/
def P11219562418614352935.Spec : Prop :=
  ∀ n, P11219562418614352935.a n = A156550 n

end A156550

/-! ## A156550.P14307811605406819136

`6-A083581(n)`
-/

namespace A156550.P14307811605406819136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A083581 n

end

end A156550.P14307811605406819136

namespace A156550

/-- `6-A083581(n)` -/
def P14307811605406819136.Spec : Prop :=
  ∀ n, P14307811605406819136.a n = A156550 n

end A156550

/-! ## A156550.P9981046197953716474

`5*A151575(n)`
-/

namespace A156550.P9981046197953716474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A151575 n

end

end A156550.P9981046197953716474

namespace A156550

/-- `5*A151575(n)` -/
def P9981046197953716474.Spec : Prop :=
  ∀ n, P9981046197953716474.a n = A156550 n

theorem P9981046197953716474.correct : P9981046197953716474.Spec := by
  intro n
  simp only [A156550, Nat.add_sub_cancel, A156550.P9981046197953716474.a, A156550.P8922869852312838463.a, A078008, A078008.P1209086084566211837.a, A151575, A151575.P12730425805375642226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156550

/-! ## A156550.P13163402980669335350

`5-A140360(n+1)`
-/

namespace A156550.P13163402980669335350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A140360 (n + 1)

end

end A156550.P13163402980669335350

namespace A156550

/-- `5-A140360(n+1)` -/
def P13163402980669335350.Spec : Prop :=
  ∀ n, P13163402980669335350.a n = A156550 n

end A156550

/-! ## A156550.P1662793448733000204

`5*(A140966(n)-1)`
-/

namespace A156550.P1662793448733000204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A140966 n - 1)

end

end A156550.P1662793448733000204

namespace A156550

/-- `5*(A140966(n)-1)` -/
def P1662793448733000204.Spec : Prop :=
  ∀ n, P1662793448733000204.a n = A156550 n

end A156550

/-! ## A156550.P1318185830641884053

`5*(2-A084247(n))`
-/

namespace A156550.P1318185830641884053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (2 - A084247 n)

end

end A156550.P1318185830641884053

namespace A156550

/-- `5*(2-A084247(n))` -/
def P1318185830641884053.Spec : Prop :=
  ∀ n, P1318185830641884053.a n = A156550 n

end A156550

/-! ## A156550.P11284730092246657929

`5*A078052(2*n)`
-/

namespace A156550.P11284730092246657929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A078052 (2 * n)

end

end A156550.P11284730092246657929

namespace A156550

/-- `5*A078052(2*n)` -/
def P11284730092246657929.Spec : Prop :=
  ∀ n, P11284730092246657929.a n = A156550 n

end A156550

/-! ## A156550.P13352969628102904647

`5*(5-A268741(n))`
-/

namespace A156550.P13352969628102904647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 - A268741 n)

end

end A156550.P13352969628102904647

namespace A156550

/-- `5*(5-A268741(n))` -/
def P13352969628102904647.Spec : Prop :=
  ∀ n, P13352969628102904647.a n = A156550 n

end A156550

/-! ## A156550.P5990259387843875890

`∑[∑[5*A110164(n)]]`
-/

namespace A156550.P5990259387843875890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A110164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156550.P5990259387843875890

namespace A156550

/-- `∑[∑[5*A110164(n)]]` -/
def P5990259387843875890.Spec : Prop :=
  ∀ n, P5990259387843875890.a n = A156550 n

end A156550

/-! ## A156550.P16297057369290220390

`∑[A166577(n+1)]+1`
-/

namespace A156550.P16297057369290220390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156550.P16297057369290220390

namespace A156550

/-- `∑[A166577(n+1)]+1` -/
def P16297057369290220390.Spec : Prop :=
  ∀ n, P16297057369290220390.a n = A156550 n

end A156550

/-! ## A156550.P17909238798283622756

`A083581(n+1)/2+2`
-/

namespace A156550.P17909238798283622756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083581 (n + 1) : ℚ) / 2 + 2

end

end A156550.P17909238798283622756

namespace A156550

/-- `A083581(n+1)/2+2` -/
def P17909238798283622756.Spec : Prop :=
  ∀ n, P17909238798283622756.a n = (A156550 n : ℚ)

end A156550

/-! ## A156550.P6658777631101848454

`(-2)^n+A077925(n)+3`
-/

namespace A156550.P6658777631101848454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n + (A077925 n + 3)

end

end A156550.P6658777631101848454

namespace A156550

/-- `(-2)^n+A077925(n)+3` -/
def P6658777631101848454.Spec : Prop :=
  ∀ n, P6658777631101848454.a n = A156550 n

end A156550

/-! ## A156550.P4427401331795937798

`5-(a(n-1)-A140360(n))` with `a(0)=5`
-/

namespace A156550.P4427401331795937798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  5 - (a (n - 1) - A140360 n)

end

end A156550.P4427401331795937798

namespace A156550

/-- `5-(a(n-1)-A140360(n))` -/
def P4427401331795937798.Spec : Prop :=
  ∀ n, P4427401331795937798.a n = A156550 n

end A156550

/-!
# A156551: Period 10: repeat [8, 6, 0, 4, 2, 2, 4, 0, 6, 8].

The programs for A156551, there is no canonical definition to state claims against.
-/

/-! ## A156551.P10966914615186256800

`8-A138287(n)`
-/

namespace A156551.P10966914615186256800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A138287 n

end

end A156551.P10966914615186256800

/-!
# A156552: Unary-encoded compressed factorization of natural numbers.

The programs for A156552, the canonical program `A156552.P4268073137713085227` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156552 has offset 1).

The definition of A156552 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005941, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156552.P4268073137713085227

`A005941(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A156552

/-- `A005941(n+1)-1` -/
def P4268073137713085227.Spec : Prop :=
  ∀ n, P4268073137713085227.a n = A156552 (n + 1)

theorem P4268073137713085227.correct : P4268073137713085227.Spec := by
  intro n
  simp only [A156552, Nat.add_sub_cancel]

end A156552

/-! ## A156552.P12865286815621377733

`A048675(n+1)+A323905(n+1)`
-/

namespace A156552.P12865286815621377733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + A323905 (n + 1)

end

end A156552.P12865286815621377733

namespace A156552

/-- `A048675(n+1)+A323905(n+1)` -/
def P12865286815621377733.Spec : Prop :=
  ∀ n, P12865286815621377733.a n = A156552 (n + 1)

theorem P12865286815621377733.correct : P12865286815621377733.Spec := by
  intro n
  simp only [A156552, Nat.add_sub_cancel, A156552.P12865286815621377733.a, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A323905, A323905.P339970777162455812.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P3226708849595875613.a, A297167, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A020500, A020500.P12751166166803317150.f1, A020500.P12751166166803317150.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A252464, A252464.P11274602121942962009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156552

/-! ## A156552.P8999755264744801691

`A000079(A001222(n+1)+A061395(n+1)-2)+a(A052126(n+1)-1)` with `a(0)=0`
-/

namespace A156552.P8999755264744801691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000079 (A001222 (n + 1) + A061395 (n + 1) - 2).toNat + a (A052126 (n + 1) - 1).toNat

end

end A156552.P8999755264744801691

namespace A156552

/-- `A000079(A001222(n+1)+A061395(n+1)-2)+a(A052126(n+1)-1)` -/
def P8999755264744801691.Spec : Prop :=
  ∀ n, P8999755264744801691.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P14881012306267257267

`A003188(A243354(n+1))`
-/

namespace A156552.P14881012306267257267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A243354 (n + 1)).toNat

end

end A156552.P14881012306267257267

namespace A156552

/-- `A003188(A243354(n+1))` -/
def P14881012306267257267.Spec : Prop :=
  ∀ n, P14881012306267257267.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P16133679412108518453

`A364559(n+1)+n`
-/

namespace A156552.P16133679412108518453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364559 (n + 1) + (n : ℤ)

end

end A156552.P16133679412108518453

namespace A156552

/-- `A364559(n+1)+n` -/
def P16133679412108518453.Spec : Prop :=
  ∀ n, P16133679412108518453.a n = A156552 (n + 1)

theorem P16133679412108518453.correct : P16133679412108518453.Spec := by
  intro n
  simp only [A156552, Nat.add_sub_cancel, A156552.P16133679412108518453.a, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A364559, A364559.P17766999660544483635.a, A364557, A364557.P16113127302810243144.a, A297167, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A252464, A252464.P11274602121942962009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156552

/-! ## A156552.P15404511479946620122

`∑{d}[n+1, A297112(#)]`
-/

namespace A156552.P15404511479946620122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297112 d

end

end A156552.P15404511479946620122

namespace A156552

/-- `∑{d}[n+1, A297112(#)]` -/
def P15404511479946620122.Spec : Prop :=
  ∀ n, P15404511479946620122.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P16241157928189113508

`A057428(n+1)+A005941(n+1)`
-/

namespace A156552.P16241157928189113508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A005941 (n + 1)

end

end A156552.P16241157928189113508

namespace A156552

/-- `A057428(n+1)+A005941(n+1)` -/
def P16241157928189113508.Spec : Prop :=
  ∀ n, P16241157928189113508.a n = A156552 (n + 1)

theorem P16241157928189113508.correct : P16241157928189113508.Spec := by
  intro n
  simp only [A156552, Nat.add_sub_cancel, A156552.P16241157928189113508.a, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A364557, A364557.P16113127302810243144.a, A000007, A000007.P6599383543502402472.a, A297167, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A252464, A252464.P11274602121942962009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156552

/-! ## A156552.P13763172705343920976

`A297168(n+1)+A297112(n+1)`
-/

namespace A156552.P13763172705343920976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297168 (n + 1) + A297112 (n + 1)

end

end A156552.P13763172705343920976

namespace A156552

/-- `A297168(n+1)+A297112(n+1)` -/
def P13763172705343920976.Spec : Prop :=
  ∀ n, P13763172705343920976.a n = A156552 (n + 1)

theorem P13763172705343920976.correct : P13763172705343920976.Spec := by
  intro n
  simp only [A156552, Nat.add_sub_cancel, A156552.P13763172705343920976.a, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A297112, A297112.P4192810520716380487.a, A297168, A297168.P17205494295370266601.a, A131577, A131577.P3998309598604981540.a, A297113, A297113.P441289280190658386.a, A364557, A364557.P16113127302810243144.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A297167, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A252464, A252464.P11274602121942962009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156552

/-! ## A156552.P2337726281775628956

`A324865(n+1)+A323244(n+1)`
-/

namespace A156552.P2337726281775628956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1) + A323244 (n + 1)

end

end A156552.P2337726281775628956

namespace A156552

/-- `A324865(n+1)+A323244(n+1)` -/
def P2337726281775628956.Spec : Prop :=
  ∀ n, P2337726281775628956.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P18334096352099626796

`xor(A005941(n+1), A038712(n+1))`
-/

namespace A156552.P18334096352099626796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005941 (n + 1)) (A038712 (n + 1))

end

end A156552.P18334096352099626796

namespace A156552

/-- `xor(A005941(n+1), A038712(n+1))` -/
def P18334096352099626796.Spec : Prop :=
  ∀ n, P18334096352099626796.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P17883988123376696038

`A323905(2*(n+1))-A323905(n+1)`
-/

namespace A156552.P17883988123376696038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (2 * (n + 1)) - A323905 (n + 1)

end

end A156552.P17883988123376696038

namespace A156552

/-- `A323905(2*(n+1))-A323905(n+1)` -/
def P17883988123376696038.Spec : Prop :=
  ∀ n, P17883988123376696038.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P2446186192230301972

`2*A324104(n+1)-A324103(n+1)`
-/

namespace A156552.P2446186192230301972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324104 (n + 1) - A324103 (n + 1)

end

end A156552.P2446186192230301972

namespace A156552

/-- `2*A324104(n+1)-A324103(n+1)` -/
def P2446186192230301972.Spec : Prop :=
  ∀ n, P2446186192230301972.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P612844187949391097

`∑{d}[n+1, A055615(#)*A329372((n+1)/#)]`
-/

namespace A156552.P612844187949391097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A329372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A156552.P612844187949391097

namespace A156552

/-- `∑{d}[n+1, A055615(#)*A329372((n+1)/#)]` -/
def P612844187949391097.Spec : Prop :=
  ∀ n, P612844187949391097.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P9209719124123060836

`(A322993(2*(n+1))-1)/2`
-/

namespace A156552.P9209719124123060836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322993 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A156552.P9209719124123060836

namespace A156552

/-- `(A322993(2*(n+1))-1)/2` -/
def P9209719124123060836.Spec : Prop :=
  ∀ n, P9209719124123060836.a n = (A156552 (n + 1) : ℚ)

end A156552

/-! ## A156552.P17090638817832807474

`A323243(n+1)-A324865(n+1)`
-/

namespace A156552.P17090638817832807474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - A324865 (n + 1)

end

end A156552.P17090638817832807474

namespace A156552

/-- `A323243(n+1)-A324865(n+1)` -/
def P17090638817832807474.Spec : Prop :=
  ∀ n, P17090638817832807474.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P7442367073690157523

`xor(A324865(n+1), A324867(n+1))`
-/

namespace A156552.P7442367073690157523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324865 (n + 1)) (A324867 (n + 1))

end

end A156552.P7442367073690157523

namespace A156552

/-- `xor(A324865(n+1), A324867(n+1))` -/
def P7442367073690157523.Spec : Prop :=
  ∀ n, P7442367073690157523.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P17719128513822155418

`(A323244(n+1)+A323243(n+1))/2`
-/

namespace A156552.P17719128513822155418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323244 (n + 1) + A323243 (n + 1) : ℚ) / 2

end

end A156552.P17719128513822155418

namespace A156552

/-- `(A323244(n+1)+A323243(n+1))/2` -/
def P17719128513822155418.Spec : Prop :=
  ∀ n, P17719128513822155418.a n = (A156552 (n + 1) : ℚ)

end A156552

/-! ## A156552.P12605509201132733452

`(A324815(n+1)+A324716(n+1))/2`
-/

namespace A156552.P12605509201132733452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324815 (n + 1) + A324716 (n + 1) : ℚ) / 2

end

end A156552.P12605509201132733452

namespace A156552

/-- `(A324815(n+1)+A324716(n+1))/2` -/
def P12605509201132733452.Spec : Prop :=
  ∀ n, P12605509201132733452.a n = (A156552 (n + 1) : ℚ)

end A156552

/-! ## A156552.P10534827992686417195

`A324398(n+1)+A324866(n+1)-A324865(n+1)`
-/

namespace A156552.P10534827992686417195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324398 (n + 1) + (A324866 (n + 1) - A324865 (n + 1))

end

end A156552.P10534827992686417195

namespace A156552

/-- `A324398(n+1)+A324866(n+1)-A324865(n+1)` -/
def P10534827992686417195.Spec : Prop :=
  ∀ n, P10534827992686417195.a n = A156552 (n + 1)

end A156552

/-! ## A156552.P5783321307506468447

`A292382(n+1)+A292380(n+1)`
-/

namespace A156552.P5783321307506468447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292382 (n + 1) + A292380 (n + 1)

end

end A156552.P5783321307506468447

namespace A156552

/-- `A292382(n+1)+A292380(n+1)` -/
def P5783321307506468447.Spec : Prop :=
  ∀ n, P5783321307506468447.a n = A156552 (n + 1)

end A156552

/-!
# A156553: Primes where the first digit is not a prime but all the other digits are primes.

The programs for A156553, there is no canonical definition to state claims against.
-/

/-! ## A156553.P10664194383427357197

`∩[A077390(n+1), A125524(n+2)]`
-/

namespace A156553.P10664194383427357197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125524 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156553.P10664194383427357197

/-! ## A156553.P18079203839060198655

`∩[A092626(n+1), A125524(n+2)]`
-/

namespace A156553.P18079203839060198655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125524 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156553.P18079203839060198655

/-! ## A156553.P345120502508051457

`∩[A125524(n+2), p?[n*A276729(n)]]`
-/

namespace A156553.P345120502508051457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125524 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156553.P345120502508051457

/-! ## A156553.P14195570081103908577

`∩[A092626(n+1), A167415(n+1)]`
-/

namespace A156553.P14195570081103908577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156553.P14195570081103908577

/-! ## A156553.P15412223449369806440

`∩[A092626(n+1), A262210(n+1)]`
-/

namespace A156553.P15412223449369806440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156553.P15412223449369806440

/-!
# A156554: The number of integer sequences of length d = 2n+1 such that the sum of the terms is 0 and the sum of the absolute values of the terms is d-1.

The programs for A156554, there is no canonical definition to state claims against.
-/

/-! ## A156554.P14907804643784556457

`A103881(A276819(n))`
-/

namespace A156554.P14907804643784556457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A276819 n).toNat

end

end A156554.P14907804643784556457

/-! ## A156554.P8528869615359525987

`A103881(A022266(n)+1)`
-/

namespace A156554.P8528869615359525987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A022266 n + 1).toNat

end

end A156554.P8528869615359525987

/-! ## A156554.P14023476499687690963

`A103881(A006137(n)-n)`
-/

namespace A156554.P14023476499687690963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A006137 n - (n : ℤ)).toNat

end

end A156554.P14023476499687690963

/-! ## A156554.P5622311516265384947

`A103881(A054556(n+1)+A000217(n))`
-/

namespace A156554.P5622311516265384947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A054556 (n + 1) + A000217 n).toNat

end

end A156554.P5622311516265384947

/-! ## A156554.P11603434199185018827

`A103881(A000217(A008486(n))-A004273(n))`
-/

namespace A156554.P11603434199185018827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103881 (A000217 (A008486 n).toNat - A004273 n).toNat

end

end A156554.P11603434199185018827

/-!
# A156555: Primes of the form 3^k - 4.

The programs for A156555, there is no canonical definition to state claims against.
-/

/-! ## A156555.P12616296804408168121

`3^A058959(n+1)-4`
-/

namespace A156555.P12616296804408168121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A058959 (n + 1) : ℤ) - 4

end

end A156555.P12616296804408168121

/-! ## A156555.P13808767906049545946

`A058481(A058959(n+1))-2`
-/

namespace A156555.P13808767906049545946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058481 (A058959 (n + 1)).toNat - 2

end

end A156555.P13808767906049545946

/-!
# A156557: Primes of the form Sum_{k=1..m} (m^k mod (m+k)).

The programs for A156557, there is no canonical definition to state claims against.
-/

/-! ## A156557.P8577364885954732889

`filter[A156556(n+2), A080339(#)]`
-/

namespace A156557.P8577364885954732889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156556 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A156557.P8577364885954732889

/-! ## A156557.P16247591001877368083

`filter[A156556(n+2), A192280(#)]`
-/

namespace A156557.P16247591001877368083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156556 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j).toNat = 1) n)

end

end A156557.P16247591001877368083

/-!
# A156560: Primes of the form 2^n-5.

The programs for A156560, there is no canonical definition to state claims against.
-/

/-! ## A156560.P10850470696940671742

`2^A059608(n+1)-5`
-/

namespace A156560.P10850470696940671742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059608 (n + 1) : ℤ) - 5

end

end A156560.P10850470696940671742

/-! ## A156560.P10348771111075185662

`A168616(A059608(n+1))`
-/

namespace A156560.P10348771111075185662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 (A059608 (n + 1)).toNat

end

end A156560.P10348771111075185662

/-! ## A156560.P3620719161722630937

`∩[A165255(n+1), A168616(n)]`
-/

namespace A156560.P3620719161722630937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156560.P3620719161722630937

/-! ## A156560.P15373125017993907223

`∩[A181741(n+1), A168616(n)]`
-/

namespace A156560.P15373125017993907223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156560.P15373125017993907223

/-! ## A156560.P11610460682889124226

`∩[A181741(n+1), A185647(n)+1]`
-/

namespace A156560.P11610460682889124226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185647 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156560.P11610460682889124226

/-!
# A156561: Floor(Fibonacci(2n+1)/9).

The programs for A156561, the canonical program `A156561.P6186296288781561187` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156561 has offset 0).

The definition of A156561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156561.P6186296288781561187

`floor(A122367(n)/9)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156561

/-- `floor(A122367(n)/9)` -/
def P6186296288781561187.Spec : Prop :=
  ∀ n, P6186296288781561187.a n = A156561 n

theorem P6186296288781561187.correct : P6186296288781561187.Spec := by
  intro n
  simp only [A156561]

end A156561

/-! ## A156561.P4626522105623177338

`floor(A001519(n+1)/9)`
-/

namespace A156561.P4626522105623177338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001519 (n + 1) : ℚ) / 9⌋

end

end A156561.P4626522105623177338

namespace A156561

/-- `floor(A001519(n+1)/9)` -/
def P4626522105623177338.Spec : Prop :=
  ∀ n, P4626522105623177338.a n = A156561 n

end A156561

/-! ## A156561.P12681166652873325028

`(A000045(2*n+1)-A154811(n))/9`
-/

namespace A156561.P12681166652873325028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n + 1) - A154811 n : ℚ) / 9

end

end A156561.P12681166652873325028

namespace A156561

/-- `(A000045(2*n+1)-A154811(n))/9` -/
def P12681166652873325028.Spec : Prop :=
  ∀ n, P12681166652873325028.a n = (A156561 n : ℚ)

end A156561

/-! ## A156561.P3811134040188144474

`∑[round(round(A001611(2*n)/3)/3)]`
-/

namespace A156561.P3811134040188144474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A001611 (2 * n) : ℚ) / 3) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156561.P3811134040188144474

namespace A156561

/-- `∑[round(round(A001611(2*n)/3)/3)]` -/
def P3811134040188144474.Spec : Prop :=
  ∀ n, P3811134040188144474.a n = A156561 n

end A156561

/-! ## A156561.P6837908494972677907

`floor(record[a(n-2)-a(n-1)]/9)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A156561.P6837908494972677907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9⌋

end

end A156561.P6837908494972677907

namespace A156561

/-- `floor(record[a(n-2)-a(n-1)]/9)` -/
def P6837908494972677907.Spec : Prop :=
  ∀ n, P6837908494972677907.a n = A156561 n

end A156561

/-! ## A156561.P12788159746348457410

`floor(A027941(n)/9)`
-/

namespace A156561.P12788159746348457410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027941 n : ℚ) / 9⌋

end

end A156561.P12788159746348457410

namespace A156561

/-- `floor(A027941(n)/9)` -/
def P12788159746348457410.Spec : Prop :=
  ∀ n, P12788159746348457410.a n = A156561 n

end A156561

/-! ## A156561.P14703121899604557013

`floor(Δ[A001906(n)/9])`
-/

namespace A156561.P14703121899604557013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 n : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A156561.P14703121899604557013

namespace A156561

/-- `floor(Δ[A001906(n)/9])` -/
def P14703121899604557013.Spec : Prop :=
  ∀ n, P14703121899604557013.a n = A156561 n

end A156561

/-! ## A156561.P10614760935967124779

`floor(Δ[A055588(n)/9])`
-/

namespace A156561.P10614760935967124779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055588 n : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A156561.P10614760935967124779

namespace A156561

/-- `floor(Δ[A055588(n)/9])` -/
def P10614760935967124779.Spec : Prop :=
  ∀ n, P10614760935967124779.a n = A156561 n

end A156561

/-! ## A156561.P9165462731917463020

`floor(A000045(Δ[n²])/9)`
-/

namespace A156561.P9165462731917463020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 9⌋

end

end A156561.P9165462731917463020

namespace A156561

/-- `floor(A000045(Δ[n²])/9)` -/
def P9165462731917463020.Spec : Prop :=
  ∀ n, P9165462731917463020.a n = A156561 n

end A156561

/-! ## A156561.P13139470403416237294

`floor(∑[A000045(2*n)]/9)`
-/

namespace A156561.P13139470403416237294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 9⌋

end

end A156561.P13139470403416237294

namespace A156561

/-- `floor(∑[A000045(2*n)]/9)` -/
def P13139470403416237294.Spec : Prop :=
  ∀ n, P13139470403416237294.a n = A156561 n

end A156561

/-! ## A156561.P2178619383742597237

`floor(A000071(2*n+1)/9)`
-/

namespace A156561.P2178619383742597237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000071 (2 * n + 1) : ℚ) / 9⌋

end

end A156561.P2178619383742597237

namespace A156561

/-- `floor(A000071(2*n+1)/9)` -/
def P2178619383742597237.Spec : Prop :=
  ∀ n, P2178619383742597237.a n = A156561 n

end A156561

/-! ## A156561.P284243660647256891

`floor(A005247(2*n+1)/9)`
-/

namespace A156561.P284243660647256891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005247 (2 * n + 1) : ℚ) / 9⌋

end

end A156561.P284243660647256891

namespace A156561

/-- `floor(A005247(2*n+1)/9)` -/
def P284243660647256891.Spec : Prop :=
  ∀ n, P284243660647256891.a n = A156561 n

end A156561

/-! ## A156561.P462301671490694384

`floor(A097896(2*n+1)/9)`
-/

namespace A156561.P462301671490694384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097896 (2 * n + 1) : ℚ) / 9⌋

end

end A156561.P462301671490694384

namespace A156561

/-- `floor(A097896(2*n+1)/9)` -/
def P462301671490694384.Spec : Prop :=
  ∀ n, P462301671490694384.a n = A156561 n

end A156561

/-! ## A156561.P13561711805071610224

`floor(A167816(2*n+1)/9)`
-/

namespace A156561.P13561711805071610224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167816 (2 * n + 1) : ℚ) / 9⌋

end

end A156561.P13561711805071610224

namespace A156561

/-- `floor(A167816(2*n+1)/9)` -/
def P13561711805071610224.Spec : Prop :=
  ∀ n, P13561711805071610224.a n = A156561 n

end A156561

/-! ## A156561.P5475405903773939364

`floor(record[A000045(xor(1, n))-1]/9)`
-/

namespace A156561.P5475405903773939364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9⌋

end

end A156561.P5475405903773939364

namespace A156561

/-- `floor(record[A000045(xor(1, n))-1]/9)` -/
def P5475405903773939364.Spec : Prop :=
  ∀ n, P5475405903773939364.a n = A156561 n

end A156561

/-! ## A156561.P3574997531792076682

`floor(xor(-1, -A000045(n+1+n))/9)`
-/

namespace A156561.P3574997531792076682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (-1) (-A000045 (n + 1 + n)) : ℚ) / 9⌋

end

end A156561.P3574997531792076682

namespace A156561

/-- `floor(xor(-1, -A000045(n+1+n))/9)` -/
def P3574997531792076682.Spec : Prop :=
  ∀ n, P3574997531792076682.a n = A156561 n

end A156561

/-! ## A156561.P15608136378134933832

`floor(floor(A000045(A005408(n))/3)/3)`
-/

namespace A156561.P15608136378134933832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A000045 (A005408 n).toNat : ℚ) / 3⌋ : ℚ) / 3⌋

end

end A156561.P15608136378134933832

namespace A156561

/-- `floor(floor(A000045(A005408(n))/3)/3)` -/
def P15608136378134933832.Spec : Prop :=
  ∀ n, P15608136378134933832.a n = A156561 n

end A156561

/-! ## A156561.P16293120380615888762

`floor(A006355(2*(n+1))/18)`
-/

namespace A156561.P16293120380615888762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006355 (2 * (n + 1)) : ℚ) / 18⌋

end

end A156561.P16293120380615888762

namespace A156561

/-- `floor(A006355(2*(n+1))/18)` -/
def P16293120380615888762.Spec : Prop :=
  ∀ n, P16293120380615888762.a n = A156561 n

end A156561

/-!
# A156562: a(n) = (-1)^n*Sum_{k=1..n} A054353(k)*(-1)^k.

The programs for A156562, the canonical program `A156562.P3592564537652149873` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156562 has offset 1).

The definition of A156562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156562.P8939106049777762771

`A006928(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A156562.P8939106049777762771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006928 n + a (n - 2)

end

end A156562.P8939106049777762771

namespace A156562

/-- `A006928(n)+a(n-2)` -/
def P8939106049777762771.Spec : Prop :=
  ∀ n, P8939106049777762771.a n = A156562 (n + 1)

end A156562

/-! ## A156562.P4681003121055028524

`A078880(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A156562.P4681003121055028524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A078880 n + a (n - 2)

end

end A156562.P4681003121055028524

namespace A156562

/-- `A078880(n)+a(n-2)` -/
def P4681003121055028524.Spec : Prop :=
  ∀ n, P4681003121055028524.a n = A156562 (n + 1)

end A156562

/-! ## A156562.P13761276420677417793

`∑[(-1)^n*A074272(n+1)]`
-/

namespace A156562.P13761276420677417793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A074272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156562.P13761276420677417793

namespace A156562

/-- `∑[(-1)^n*A074272(n+1)]` -/
def P13761276420677417793.Spec : Prop :=
  ∀ n, P13761276420677417793.a n = A156562 (n + 1)

end A156562

/-! ## A156562.P2800310892168188866

`A054353(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A156562.P2800310892168188866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054353 (n + 1) - a (n - 1)

end

end A156562.P2800310892168188866

namespace A156562

/-- `A054353(n+1)-a(n-1)` -/
def P2800310892168188866.Spec : Prop :=
  ∀ n, P2800310892168188866.a n = A156562 (n + 1)

end A156562

/-! ## A156562.P17991812878983862068

`A000002(n+1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A156562.P17991812878983862068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000002 (n + 1) + a (n - 2)

end

end A156562.P17991812878983862068

namespace A156562

/-- `A000002(n+1)+a(n-2)` -/
def P17991812878983862068.Spec : Prop :=
  ∀ n, P17991812878983862068.a n = A156562 (n + 1)

end A156562

/-! ## A156562.P3592564537652149873

`a(n-2)+a(A156351(n)%2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156562

/-- `a(n-2)+a(A156351(n)%2)` -/
def P3592564537652149873.Spec : Prop :=
  ∀ n, (P3592564537652149873.a n : ℤ) = A156562 (n + 1)

theorem P3592564537652149873.correct : P3592564537652149873.Spec := by
  intro n
  simp only [A156562, Nat.add_sub_cancel]

end A156562

/-! ## A156562.P7679089388010932728

`a(n-2)+gcd(2, A156253(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A156562.P7679089388010932728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Int.gcd 2 (A156253 (n + 1))

end

end A156562.P7679089388010932728

namespace A156562

/-- `a(n-2)+gcd(2, A156253(n+1))` -/
def P7679089388010932728.Spec : Prop :=
  ∀ n, (P7679089388010932728.a n : ℤ) = A156562 (n + 1)

end A156562

/-! ## A156562.P13648633024562977810

`a(n-2)+2-A078650(n+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A156562.P13648633024562977810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + (2 - A078650 (n + 1))

end

end A156562.P13648633024562977810

namespace A156562

/-- `a(n-2)+2-A078650(n+1)` -/
def P13648633024562977810.Spec : Prop :=
  ∀ n, P13648633024562977810.a n = A156562 (n + 1)

end A156562

/-! ## A156562.P17411669676729182995

`a(n-2)+char[A013948(n+1)-1]+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A156562.P17411669676729182995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A156562.P17411669676729182995

namespace A156562

/-- `a(n-2)+char[A013948(n+1)-1]+1` -/
def P17411669676729182995.Spec : Prop :=
  ∀ n, (P17411669676729182995.a n : ℤ) = A156562 (n + 1)

end A156562

/-! ## A156562.P16812502566250017577

`a(n-2)+A123594(n+3)+1` with `a(0)=1, a(1)=2`
-/

namespace A156562.P16812502566250017577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (A123594 (n + 3) + 1)

end

end A156562.P16812502566250017577

namespace A156562

/-- `a(n-2)+A123594(n+3)+1` -/
def P16812502566250017577.Spec : Prop :=
  ∀ n, P16812502566250017577.a n = A156562 (n + 1)

end A156562

/-!
# A156563: a(n) = (-1)^n*Sum_{k=1..n} A078649(k)*(-1)^k.

The programs for A156563, the canonical program `A156563.P15747032255580645587` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156563 has offset 1).

The definition of A156563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156563.P1227228649296716843

`A078649(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A156563.P1227228649296716843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A078649 (n + 1) - a (n - 1)

end

end A156563.P1227228649296716843

namespace A156563

/-- `A078649(n+1)-a(n-1)` -/
def P1227228649296716843.Spec : Prop :=
  ∀ n, P1227228649296716843.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P6290585232633373349

`A013948(n+1)-a(n-1)+n` with `a(0)=2`
-/

namespace A156563.P6290585232633373349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A013948 (n + 1) - a (n - 1) + (n : ℤ)

end

end A156563.P6290585232633373349

namespace A156563

/-- `A013948(n+1)-a(n-1)+n` -/
def P6290585232633373349.Spec : Prop :=
  ∀ n, P6290585232633373349.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P1308354958069435564

`abs(a(n-1)-A078649(Δ[n²]-n))` with `a(0)=2`
-/

namespace A156563.P1308354958069435564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |a (n - 1) - A078649 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A156563.P1308354958069435564

namespace A156563

/-- `abs(a(n-1)-A078649(Δ[n²]-n))` -/
def P1308354958069435564.Spec : Prop :=
  ∀ n, P1308354958069435564.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P1945721277809835604

`comp[A054353(n+1)-1]+1-a(n-1)` with `a(0)=2`
-/

namespace A156563.P1945721277809835604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - a (n - 1)

end

end A156563.P1945721277809835604

namespace A156563

/-- `comp[A054353(n+1)-1]+1-a(n-1)` -/
def P1945721277809835604.Spec : Prop :=
  ∀ n, P1945721277809835604.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P13856895423717741405

`comp[(n+1)*A156728(n+1)]-a(n-1)` with `a(0)=2`
-/

namespace A156563.P13856895423717741405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A156728 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - a (n - 1)

end

end A156563.P13856895423717741405

namespace A156563

/-- `comp[(n+1)*A156728(n+1)]-a(n-1)` -/
def P13856895423717741405.Spec : Prop :=
  ∀ n, P13856895423717741405.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P15747032255580645587

`eq[1, A049705(n+1)]+1+n-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156563

/-- `eq[1, A049705(n+1)]+1+n-a(n-1)` -/
def P15747032255580645587.Spec : Prop :=
  ∀ n, P15747032255580645587.a n = A156563 (n + 1)

theorem P15747032255580645587.correct : P15747032255580645587.Spec := by
  intro n
  simp only [A156563, Nat.add_sub_cancel]

end A156563

/-! ## A156563.P4905856667633368294

`abs(∑[A033999(n)*A078649(n+1)])`
-/

namespace A156563.P4905856667633368294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A156563.P4905856667633368294

namespace A156563

/-- `abs(∑[A033999(n)*A078649(n+1)])` -/
def P4905856667633368294.Spec : Prop :=
  ∀ n, P4905856667633368294.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P16313308306201856497

`A216345(A013948(n+1))-a(n-1)` with `a(0)=2`
-/

namespace A156563.P16313308306201856497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A216345 (A013948 (n + 1)).toNat - a (n - 1)

end

end A156563.P16313308306201856497

namespace A156563

/-- `A216345(A013948(n+1))-a(n-1)` -/
def P16313308306201856497.Spec : Prop :=
  ∀ n, P16313308306201856497.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P14601357405043932366

`record[A216345(n+2)/A088569(n+1)]-a(n-1)` with `a(0)=2`
-/

namespace A156563.P14601357405043932366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216345 (n + 2) : ℚ) / (A088569 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A156563.P14601357405043932366

namespace A156563

/-- `record[A216345(n+2)/A088569(n+1)]-a(n-1)` -/
def P14601357405043932366.Spec : Prop :=
  ∀ n, P14601357405043932366.a n = (A156563 (n + 1) : ℚ)

end A156563

/-! ## A156563.P5948009052025497344

`∑[A033999(n)*A078649(n+1)]*A010892(3*n)`
-/

namespace A156563.P5948009052025497344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010892 (3 * n)

end

end A156563.P5948009052025497344

namespace A156563

/-- `∑[A033999(n)*A078649(n+1)]*A010892(3*n)` -/
def P5948009052025497344.Spec : Prop :=
  ∀ n, P5948009052025497344.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P12435875669752659100

`A054353(n+1)+A054353(n+1)-A156268(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A156563.P12435875669752659100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A054353 (n + 1) + (A054353 (n + 1) - A156268 (n + 1)) - a (n - 1)

end

end A156563.P12435875669752659100

namespace A156563

/-- `A054353(n+1)+A054353(n+1)-A156268(n+1)-a(n-1)` -/
def P12435875669752659100.Spec : Prop :=
  ∀ n, P12435875669752659100.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P5117979158471154453

`A306229(A013947(n+1))+n-a(n-1)` with `a(0)=2`
-/

namespace A156563.P5117979158471154453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A306229 (A013947 (n + 1)).toNat + (n : ℤ) - a (n - 1)

end

end A156563.P5117979158471154453

namespace A156563

/-- `A306229(A013947(n+1))+n-a(n-1)` -/
def P5117979158471154453.Spec : Prop :=
  ∀ n, P5117979158471154453.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P8607317841480711951

`A306229(eq[0, A123594(n+2)])+n-a(n-1)` with `a(0)=2`
-/

namespace A156563.P8607317841480711951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A306229 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + (n : ℤ) - a (n - 1)

end

end A156563.P8607317841480711951

namespace A156563

/-- `A306229(eq[0, A123594(n+2)])+n-a(n-1)` -/
def P8607317841480711951.Spec : Prop :=
  ∀ n, P8607317841480711951.a n = A156563 (n + 1)

end A156563

/-! ## A156563.P11132093470918434490

`A306323(n+1)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A156563.P11132093470918434490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A306323 (n + 1) + a (n - 2)

end

end A156563.P11132093470918434490

namespace A156563

/-- `A306323(n+1)+a(n-2)` -/
def P11132093470918434490.Spec : Prop :=
  ∀ n, P11132093470918434490.a n = A156563 (n + 1)

end A156563

/-!
# A156564: Triangle: see Mathematica code.

The programs for A156564, there is no canonical definition to state claims against.
-/

/-! ## A156564.P13752534496816386738

`lcm(A156565(n), A156586(A156576(n)))`
-/

namespace A156564.P13752534496816386738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A156565 n) (A156586 (A156576 n).toNat)

end

end A156564.P13752534496816386738

/-!
# A156566: a(2n+2) = 9*a(2n+1), a(2n+1) = 9*a(2n) - 8^n*A000108(n), a(0)=1.

The programs for A156566, there is no canonical definition to state claims against.
-/

/-! ## A156566.P6711313345964987970

`A000267(A229135(n))*A081294(n)`
-/

namespace A156566.P6711313345964987970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A229135 n).toNat * A081294 n

end

end A156566.P6711313345964987970

/-! ## A156566.P5854902026643969213

`A087980(3*n+1)*A241826(A000384(n))`
-/

namespace A156566.P5854902026643969213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087980 (3 * n + 1) * A241826 (A000384 n).toNat

end

end A156566.P5854902026643969213

/-!
# A156567: Positive numbers y such that y^2 is of the form x^2+(x+23)^2 with integer x.

The programs for A156567, the canonical program `A156567.P17483281973035869437` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156567 has offset 1).

The definition of A156567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156567.P17483281973035869437

`6*a(n-3)-a(n-6)` with `a(0)=17, a(1)=23, a(2)=37, a(3)=65, a(4)=115, a(5)=205`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156567

/-- `6*a(n-3)-a(n-6)` -/
def P17483281973035869437.Spec : Prop :=
  ∀ n, P17483281973035869437.a n = A156567 (n + 1)

theorem P17483281973035869437.correct : P17483281973035869437.Spec := by
  intro n
  simp only [A156567, Nat.add_sub_cancel]

end A156567

/-! ## A156567.P3278000043403555436

`sqrt(A156572(n+1))`
-/

namespace A156567.P3278000043403555436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A156572 (n + 1) : ℝ)

end

end A156567.P3278000043403555436

namespace A156567

/-- `sqrt(A156572(n+1))` -/
def P3278000043403555436.Spec : Prop :=
  ∀ n, P3278000043403555436.a n = (A156567 (n + 1) : ℝ)

end A156567

/-! ## A156567.P7160923692199853728

`root(A156572(n+1), 2%A028279(n))`
-/

namespace A156567.P7160923692199853728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156572 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A028279 n) : ℝ))

end

end A156567.P7160923692199853728

namespace A156567

/-- `root(A156572(n+1), 2%A028279(n))` -/
def P7160923692199853728.Spec : Prop :=
  ∀ n, P7160923692199853728.a n = (A156567 (n + 1) : ℝ)

end A156567

/-! ## A156567.P9584319560822411267

`root(A156572(n+1), A094290(2*n+1))`
-/

namespace A156567.P9584319560822411267
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156572 (n + 1) : ℝ) ^ (1 / (A094290 (2 * n + 1) : ℝ))

end

end A156567.P9584319560822411267

namespace A156567

/-- `root(A156572(n+1), A094290(2*n+1))` -/
def P9584319560822411267.Spec : Prop :=
  ∀ n, P9584319560822411267.a n = (A156567 (n + 1) : ℝ)

end A156567

/-! ## A156567.P17259579485977367516

`A156572(n+1)^(A057427(A322820(n+1))/2)`
-/

namespace A156567.P17259579485977367516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156572 (n + 1) : ℝ) ^ ((A057427 (A322820 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A156567.P17259579485977367516

namespace A156567

/-- `A156572(n+1)^(A057427(A322820(n+1))/2)` -/
def P17259579485977367516.Spec : Prop :=
  ∀ n, P17259579485977367516.a n = (A156567 (n + 1) : ℝ)

end A156567

/-! ## A156567.P5557588320064721522

`root(A156572(n+1), 2)%A156568(n+1)`
-/

namespace A156567.P5557588320064721522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A156572 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A156568 (n + 1))

end

end A156567.P5557588320064721522

namespace A156567

/-- `root(A156572(n+1), 2)%A156568(n+1)` -/
def P5557588320064721522.Spec : Prop :=
  ∀ n, P5557588320064721522.a n = A156567 (n + 1)

end A156567

/-! ## A156567.P3203453381508959477

`root(A156572(n+1), A028326(n*(2*n+1)))`
-/

namespace A156567.P3203453381508959477
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156572 (n + 1) : ℝ) ^ (1 / (A028326 (n * (2 * n + 1)) : ℝ))

end

end A156567.P3203453381508959477

namespace A156567

/-- `root(A156572(n+1), A028326(n*(2*n+1)))` -/
def P3203453381508959477.Spec : Prop :=
  ∀ n, P3203453381508959477.a n = (A156567 (n + 1) : ℝ)

end A156567

/-!
# A156568: a(n) = 6*a(n-1)-a(n-2) for n > 2; a(1)=23, a(2)=115.

The programs for A156568, the canonical program `A156568.P4560471731237928690` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156568 has offset 1).

The definition of A156568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A156568.P4560471731237928690`, by `A156568.P4560471731237928690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156568.P4560471731237928690

`6*a(n-1)-a(n-2)` with `a(0)=23, a(1)=115`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156568

/-- `6*a(n-1)-a(n-2)` -/
def P4560471731237928690.Spec : Prop :=
  ∀ n, P4560471731237928690.a n = A156568 (n + 1)

theorem P4560471731237928690.correct : P4560471731237928690.Spec := by
  intro n
  simp only [A156568, Nat.add_sub_cancel]

end A156568

/-! ## A156568.P13482496922439275901

`ogf((23-23x)/(1-6x+x^2))`
-/

namespace A156568.P13482496922439275901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [23, -23] [1, -6, 1] n

end

end A156568.P13482496922439275901

namespace A156568

/-- `ogf((23-23x)/(1-6x+x^2))` -/
def P13482496922439275901.Spec : Prop :=
  ∀ n, P13482496922439275901.a n = A156568 (n + 1)

end A156568

/-! ## A156568.P10036558654575619088

`Δ[23*A001109(n)]`
-/

namespace A156568.P10036558654575619088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156568.P10036558654575619088

namespace A156568

/-- `Δ[23*A001109(n)]` -/
def P10036558654575619088.Spec : Prop :=
  ∀ n, P10036558654575619088.a n = A156568 (n + 1)

end A156568

/-! ## A156568.P9550443028659978483

`record[23*A077985(n)]`
-/

namespace A156568.P9550443028659978483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A077985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156568.P9550443028659978483

namespace A156568

/-- `record[23*A077985(n)]` -/
def P9550443028659978483.Spec : Prop :=
  ∀ n, P9550443028659978483.a n = A156568 (n + 1)

end A156568

/-! ## A156568.P12340990027684565408

`A156567(3*n+2)`
-/

namespace A156568.P12340990027684565408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (3 * n + 2)

end

end A156568.P12340990027684565408

namespace A156568

/-- `A156567(3*n+2)` -/
def P12340990027684565408.Spec : Prop :=
  ∀ n, P12340990027684565408.a n = A156568 (n + 1)

end A156568

/-! ## A156568.P2703640416814853995

`23*A001653(n+1)`
-/

namespace A156568.P2703640416814853995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A001653 (n + 1)

end

end A156568.P2703640416814853995

namespace A156568

/-- `23*A001653(n+1)` -/
def P2703640416814853995.Spec : Prop :=
  ∀ n, P2703640416814853995.a n = A156568 (n + 1)

end A156568

/-! ## A156568.P3668866339955633566

`23*A077985(2*n)`
-/

namespace A156568.P3668866339955633566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A077985 (2 * n)

end

end A156568.P3668866339955633566

namespace A156568

/-- `23*A077985(2*n)` -/
def P3668866339955633566.Spec : Prop :=
  ∀ n, P3668866339955633566.a n = A156568 (n + 1)

end A156568

/-! ## A156568.P16333971238351947788

`23*A000129(2*n+1)`
-/

namespace A156568.P16333971238351947788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A000129 (2 * n + 1)

end

end A156568.P16333971238351947788

namespace A156568

/-- `23*A000129(2*n+1)` -/
def P16333971238351947788.Spec : Prop :=
  ∀ n, P16333971238351947788.a n = A156568 (n + 1)

end A156568

/-! ## A156568.P2441079631038020539

`((10/2)²-2)*A041011(2*n)`
-/

namespace A156568.P2441079631038020539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((10 : ℚ) / 2) ^ 2 - 2) * (A041011 (2 * n) : ℚ)

end

end A156568.P2441079631038020539

namespace A156568

/-- `((10/2)²-2)*A041011(2*n)` -/
def P2441079631038020539.Spec : Prop :=
  ∀ n, P2441079631038020539.a n = (A156568 (n + 1) : ℚ)

end A156568

/-! ## A156568.P10941656458188234154

`A001653(n+2)+A275793(n)+A275793(n)`
-/

namespace A156568.P10941656458188234154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 2) + (A275793 n + A275793 n)

end

end A156568.P10941656458188234154

namespace A156568

/-- `A001653(n+2)+A275793(n)+A275793(n)` -/
def P10941656458188234154.Spec : Prop :=
  ∀ n, P10941656458188234154.a n = A156568 (n + 1)

end A156568

/-!
# A156569: a(n) = 6*a(n-1)-a(n-2) for n > 2; a(1)=37, a(2)=205.

The programs for A156569, the canonical program `A156569.P10413463075571351268` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156569 has offset 1).

The definition of A156569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A156569.P10413463075571351268`, by `A156569.P10413463075571351268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156569.P10413463075571351268

`6*a(n-1)-a(n-2)` with `a(0)=37, a(1)=205`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156569

/-- `6*a(n-1)-a(n-2)` -/
def P10413463075571351268.Spec : Prop :=
  ∀ n, P10413463075571351268.a n = A156569 (n + 1)

theorem P10413463075571351268.correct : P10413463075571351268.Spec := by
  intro n
  simp only [A156569, Nat.add_sub_cancel]

end A156569

/-! ## A156569.P1073567328864141583

`Δ[ogf((5+12x)/(1-6x+x^2))]`
-/

namespace A156569.P1073567328864141583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 12] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156569.P1073567328864141583

namespace A156569

/-- `Δ[ogf((5+12x)/(1-6x+x^2))]` -/
def P1073567328864141583.Spec : Prop :=
  ∀ n, P1073567328864141583.a n = A156569 (n + 1)

end A156569

/-! ## A156569.P4645811263499915081

`A117475(Δ[n²])`
-/

namespace A156569.P4645811263499915081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156569.P4645811263499915081

namespace A156569

/-- `A117475(Δ[n²])` -/
def P4645811263499915081.Spec : Prop :=
  ∀ n, P4645811263499915081.a n = A156569 (n + 1)

end A156569

/-! ## A156569.P10205895704988889269

`A156567(3*(n+1))`
-/

namespace A156569.P10205895704988889269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (3 * (n + 1))

end

end A156569.P10205895704988889269

namespace A156569

/-- `A156567(3*(n+1))` -/
def P10205895704988889269.Spec : Prop :=
  ∀ n, P10205895704988889269.a n = A156569 (n + 1)

end A156569

/-! ## A156569.P3881069605231291666

`or(1, A117475(2*n+1))`
-/

namespace A156569.P3881069605231291666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A117475 (2 * n + 1))

end

end A156569.P3881069605231291666

namespace A156569

/-- `or(1, A117475(2*n+1))` -/
def P3881069605231291666.Spec : Prop :=
  ∀ n, P3881069605231291666.a n = A156569 (n + 1)

end A156569

/-! ## A156569.P5563829244866145477

`record[A117475(n+1)/2^val(n+1, 2)]`
-/

namespace A156569.P5563829244866145477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117475 (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156569.P5563829244866145477

namespace A156569

/-- `record[A117475(n+1)/2^val(n+1, 2)]` -/
def P5563829244866145477.Spec : Prop :=
  ∀ n, P5563829244866145477.a n = (A156569 (n + 1) : ℚ)

end A156569

/-! ## A156569.P5932802726812709088

`record[A117475(A000265(n+1))]`
-/

namespace A156569.P5932802726812709088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117475 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156569.P5932802726812709088

namespace A156569

/-- `record[A117475(A000265(n+1))]` -/
def P5932802726812709088.Spec : Prop :=
  ∀ n, P5932802726812709088.a n = A156569 (n + 1)

end A156569

/-! ## A156569.P14487213518474165314

`Δ[A048693(n)*A162268(n)]`
-/

namespace A156569.P14487213518474165314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n * A162268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156569.P14487213518474165314

namespace A156569

/-- `Δ[A048693(n)*A162268(n)]` -/
def P14487213518474165314.Spec : Prop :=
  ∀ n, P14487213518474165314.a n = A156569 (n + 1)

end A156569

/-! ## A156569.P16794029935242472502

`Δ[A154149(2*n+1)+A053141(n+1)]`
-/

namespace A156569.P16794029935242472502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (2 * n + 1) + A053141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156569.P16794029935242472502

namespace A156569

/-- `Δ[A154149(2*n+1)+A053141(n+1)]` -/
def P16794029935242472502.Spec : Prop :=
  ∀ n, P16794029935242472502.a n = A156569 (n + 1)

end A156569

/-! ## A156569.P7898035581690048021

`A001542(n+2)+Δ[A154149(2*n+1)]`
-/

namespace A156569.P7898035581690048021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (n + 2) + (f1 (n + 1) - f1 n)

end

end A156569.P7898035581690048021

namespace A156569

/-- `A001542(n+2)+Δ[A154149(2*n+1)]` -/
def P7898035581690048021.Spec : Prop :=
  ∀ n, P7898035581690048021.a n = A156569 (n + 1)

end A156569

/-! ## A156569.P4105296440374087979

`Δ[A048696(2*n+1)]-A048697(2*n)`
-/

namespace A156569.P4105296440374087979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048697 (2 * n)

end

end A156569.P4105296440374087979

namespace A156569

/-- `Δ[A048696(2*n+1)]-A048697(2*n)` -/
def P4105296440374087979.Spec : Prop :=
  ∀ n, P4105296440374087979.a n = A156569 (n + 1)

end A156569

/-!
# A156570: a(n) = 6*a(n-1)-a(n-2) for n > 2; a(1)=17, a(2)=65.

The programs for A156570, the canonical program `A156570.P9640394396227916992` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156570 has offset 1).

The definition of A156570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A156570.P9640394396227916992`, by `A156570.P9640394396227916992.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156570.P9640394396227916992

`6*a(n-1)-a(n-2)` with `a(0)=17, a(1)=65`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156570

/-- `6*a(n-1)-a(n-2)` -/
def P9640394396227916992.Spec : Prop :=
  ∀ n, P9640394396227916992.a n = A156570 (n + 1)

theorem P9640394396227916992.correct : P9640394396227916992.Spec := by
  intro n
  simp only [A156570, Nat.add_sub_cancel]

end A156570

/-! ## A156570.P314334303221849685

`A156567(3*n+1)`
-/

namespace A156570.P314334303221849685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (3 * n + 1)

end

end A156570.P314334303221849685

namespace A156570

/-- `A156567(3*n+1)` -/
def P314334303221849685.Spec : Prop :=
  ∀ n, P314334303221849685.a n = A156570 (n + 1)

end A156570

/-! ## A156570.P3152910275572799327

`A078343(2*n+1)+3*A162268(2*n)`
-/

namespace A156570.P3152910275572799327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (2 * n + 1) + 3 * A162268 (2 * n)

end

end A156570.P3152910275572799327

namespace A156570

/-- `A078343(2*n+1)+3*A162268(2*n)` -/
def P3152910275572799327.Spec : Prop :=
  ∀ n, P3152910275572799327.a n = A156570 (n + 1)

end A156570

/-! ## A156570.P17260643327567702197

`A048696(2*n+1)+A164303(2*n)-A221175(2*n)`
-/

namespace A156570.P17260643327567702197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 (2 * n + 1) + (A164303 (2 * n) - A221175 (2 * n))

end

end A156570.P17260643327567702197

namespace A156570

/-- `A048696(2*n+1)+A164303(2*n)-A221175(2*n)` -/
def P17260643327567702197.Spec : Prop :=
  ∀ n, P17260643327567702197.a n = A156570 (n + 1)

end A156570

/-! ## A156570.P9234564291144592455

`A000129(2*(n+2))+A000129(2*n)-A221175(2*n)`
-/

namespace A156570.P9234564291144592455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * (n + 2)) + (A000129 (2 * n) - A221175 (2 * n))

end

end A156570.P9234564291144592455

namespace A156570

/-- `A000129(2*(n+2))+A000129(2*n)-A221175(2*n)` -/
def P9234564291144592455.Spec : Prop :=
  ∀ n, P9234564291144592455.a n = A156570 (n + 1)

end A156570

/-! ## A156570.P9244411123214495790

`sqrt(A156575(n+1))`
-/

namespace A156570.P9244411123214495790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A156575 (n + 1) : ℝ)

end

end A156570.P9244411123214495790

namespace A156570

/-- `sqrt(A156575(n+1))` -/
def P9244411123214495790.Spec : Prop :=
  ∀ n, P9244411123214495790.a n = (A156570 (n + 1) : ℝ)

end A156570

/-!
# A156572: Squares of the form k^2+(k+23)^2 with integer k.

The programs for A156572, the canonical program `A156572.P308074895079523884` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156572 has offset 1).

The definition of A156572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156572.P308074895079523884

`A156567(n+1)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156572

/-- `A156567(n+1)²` -/
def P308074895079523884.Spec : Prop :=
  ∀ n, P308074895079523884.a n = A156572 (n + 1)

theorem P308074895079523884.correct : P308074895079523884.Spec := by
  intro n
  simp only [A156572, Nat.add_sub_cancel]

end A156572

/-! ## A156572.P1106148417813396264

`record[A156567(A331303(n))²]`
-/

namespace A156572.P1106148417813396264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A331303 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156572.P1106148417813396264

namespace A156572

/-- `record[A156567(A331303(n))²]` -/
def P1106148417813396264.Spec : Prop :=
  ∀ n, P1106148417813396264.a n = A156572 (n + 1)

end A156572

/-! ## A156572.P6569015032433526247

`A156567(A000027(n+1))^2`
-/

namespace A156572.P6569015032433526247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A000027 (n + 1)).toNat ^ 2

end

end A156572.P6569015032433526247

namespace A156572

/-- `A156567(A000027(n+1))^2` -/
def P6569015032433526247.Spec : Prop :=
  ∀ n, P6569015032433526247.a n = A156572 (n + 1)

end A156572

/-! ## A156572.P5716349428668468939

`A156567(n+1)^ratio[A000079(n)]`
-/

namespace A156572.P5716349428668468939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A156567 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A156572.P5716349428668468939

namespace A156572

/-- `A156567(n+1)^ratio[A000079(n)]` -/
def P5716349428668468939.Spec : Prop :=
  ∀ n, P5716349428668468939.a n = (A156572 (n + 1) : ℝ)

end A156572

/-! ## A156572.P13221342971401469268

`A156567(n+1)^A020639(4*(n+1))`
-/

namespace A156572.P13221342971401469268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156567 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A156572.P13221342971401469268

namespace A156572

/-- `A156567(n+1)^A020639(4*(n+1))` -/
def P13221342971401469268.Spec : Prop :=
  ∀ n, P13221342971401469268.a n = (A156572 (n + 1) : ℚ)

end A156572

/-! ## A156572.P17633165897608381360

`record[A156567(A331303(n))]*A156567(n+1)`
-/

namespace A156572.P17633165897608381360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A331303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A156567 (n + 1)

end

end A156572.P17633165897608381360

namespace A156572

/-- `record[A156567(A331303(n))]*A156567(n+1)` -/
def P17633165897608381360.Spec : Prop :=
  ∀ n, P17633165897608381360.a n = A156572 (n + 1)

end A156572

/-! ## A156572.P3543178500964656495

`A156567(A000027(n+1))*A156567(n+1)`
-/

namespace A156572.P3543178500964656495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A000027 (n + 1)).toNat * A156567 (n + 1)

end

end A156572.P3543178500964656495

namespace A156572

/-- `A156567(A000027(n+1))*A156567(n+1)` -/
def P3543178500964656495.Spec : Prop :=
  ∀ n, P3543178500964656495.a n = A156572 (n + 1)

end A156572

/-! ## A156572.P1051803807115411947

`A156567(n+1)^A000005(A156611(n+1))`
-/

namespace A156572.P1051803807115411947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156567 (n + 1) : ℚ) ^ (A000005 (A156611 (n + 1)).toNat : ℤ)

end

end A156572.P1051803807115411947

namespace A156572

/-- `A156567(n+1)^A000005(A156611(n+1))` -/
def P1051803807115411947.Spec : Prop :=
  ∀ n, P1051803807115411947.a n = (A156572 (n + 1) : ℚ)

end A156572

/-! ## A156572.P13935992933652508726

`A156567(n+1)^A329600(A020639(n+2))`
-/

namespace A156572.P13935992933652508726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156567 (n + 1) : ℚ) ^ (A329600 (A020639 (n + 2)).toNat : ℤ)

end

end A156572.P13935992933652508726

namespace A156572

/-- `A156567(n+1)^A329600(A020639(n+2))` -/
def P13935992933652508726.Spec : Prop :=
  ∀ n, P13935992933652508726.a n = (A156572 (n + 1) : ℚ)

end A156572

/-! ## A156572.P2228702668179651443

`A156567(A008619(2*n+1))*A156567(n+1)`
-/

namespace A156572.P2228702668179651443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (A008619 (2 * n + 1)).toNat * A156567 (n + 1)

end

end A156572.P2228702668179651443

namespace A156572

/-- `A156567(A008619(2*n+1))*A156567(n+1)` -/
def P2228702668179651443.Spec : Prop :=
  ∀ n, P2228702668179651443.a n = A156572 (n + 1)

end A156572

/-! ## A156572.P11151015127108892162

`A156567(n+1)^A329600(A139932(n+1))`
-/

namespace A156572.P11151015127108892162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156567 (n + 1) : ℚ) ^ (A329600 (A139932 (n + 1)).toNat : ℤ)

end

end A156572.P11151015127108892162

namespace A156572

/-- `A156567(n+1)^A329600(A139932(n+1))` -/
def P11151015127108892162.Spec : Prop :=
  ∀ n, P11151015127108892162.a n = (A156572 (n + 1) : ℚ)

end A156572

/-! ## A156572.P7059203049931004981

`A156567(n+1)^A000005(A059496(n+1))`
-/

namespace A156572.P7059203049931004981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156567 (n + 1) : ℚ) ^ (A000005 (A059496 (n + 1)).toNat : ℤ)

end

end A156572.P7059203049931004981

namespace A156572

/-- `A156567(n+1)^A000005(A059496(n+1))` -/
def P7059203049931004981.Spec : Prop :=
  ∀ n, P7059203049931004981.a n = (A156572 (n + 1) : ℚ)

end A156572

/-!
# A156573: a(n) = 34*a(n-1) - a(n-2) - 4232 for n > 2; a(1)=529, a(2)=13225.

The programs for A156573, the canonical program `A156573.P3368904626161036951` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156573 has offset 1).

The definition of A156573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156573.P3368904626161036951

`529*A008844(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156573

/-- `529*A008844(n)` -/
def P3368904626161036951.Spec : Prop :=
  ∀ n, P3368904626161036951.a n = A156573 (n + 1)

theorem P3368904626161036951.correct : P3368904626161036951.Spec := by
  intro n
  simp only [A156573, Nat.add_sub_cancel]

end A156573

/-! ## A156573.P15331368423165330808

`A156568(n+1)²`
-/

namespace A156573.P15331368423165330808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156568 (n + 1) ^ 2

end

end A156573.P15331368423165330808

namespace A156573

/-- `A156568(n+1)²` -/
def P15331368423165330808.Spec : Prop :=
  ∀ n, P15331368423165330808.a n = A156573 (n + 1)

end A156573

/-! ## A156573.P12087320806998569275

`A156572(3*n+2)`
-/

namespace A156573.P12087320806998569275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156572 (3 * n + 2)

end

end A156573.P12087320806998569275

namespace A156573

/-- `A156572(3*n+2)` -/
def P12087320806998569275.Spec : Prop :=
  ∀ n, P12087320806998569275.a n = A156573 (n + 1)

end A156573

/-! ## A156573.P10356890142143229988

`Δ[23*A001109(n)]²`
-/

namespace A156573.P10356890142143229988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A156573.P10356890142143229988

namespace A156573

/-- `Δ[23*A001109(n)]²` -/
def P10356890142143229988.Spec : Prop :=
  ∀ n, P10356890142143229988.a n = A156573 (n + 1)

end A156573

/-! ## A156573.P9133750933174969496

`A156567(3*n+2)²`
-/

namespace A156573.P9133750933174969496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (3 * n + 2) ^ 2

end

end A156573.P9133750933174969496

namespace A156573

/-- `A156567(3*n+2)²` -/
def P9133750933174969496.Spec : Prop :=
  ∀ n, P9133750933174969496.a n = A156573 (n + 1)

end A156573

/-! ## A156573.P12786380087895958698

`(23*A001653(n+1))²`
-/

namespace A156573.P12786380087895958698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * A001653 (n + 1)) ^ 2

end

end A156573.P12786380087895958698

namespace A156573

/-- `(23*A001653(n+1))²` -/
def P12786380087895958698.Spec : Prop :=
  ∀ n, P12786380087895958698.a n = A156573 (n + 1)

end A156573

/-! ## A156573.P1667723385880974931

`A156568(n+1)^A020639(A139616(n))`
-/

namespace A156573.P1667723385880974931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156568 (n + 1) : ℚ) ^ (A020639 (A139616 n).toNat : ℤ)

end

end A156573.P1667723385880974931

namespace A156573

/-- `A156568(n+1)^A020639(A139616(n))` -/
def P1667723385880974931.Spec : Prop :=
  ∀ n, P1667723385880974931.a n = (A156573 (n + 1) : ℚ)

end A156573

/-! ## A156573.P5048062855709527800

`A156568(n+1)^A000005(A156611(n+1))`
-/

namespace A156573.P5048062855709527800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156568 (n + 1) : ℚ) ^ (A000005 (A156611 (n + 1)).toNat : ℤ)

end

end A156573.P5048062855709527800

namespace A156573

/-- `A156568(n+1)^A000005(A156611(n+1))` -/
def P5048062855709527800.Spec : Prop :=
  ∀ n, P5048062855709527800.a n = (A156573 (n + 1) : ℚ)

end A156573

/-!
# A156574: a(n) = 34*a(n-1) - a(n-2) - 4232 for n > 2; a(1)=1369, a(2)=42025.

The programs for A156574, there is no canonical definition to state claims against.
-/

/-! ## A156574.P9934948467993821471

`A156569(n+1)²`
-/

namespace A156574.P9934948467993821471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156569 (n + 1) ^ 2

end

end A156574.P9934948467993821471

/-! ## A156574.P5286331256119201369

`A117475(Δ[n²])²`
-/

namespace A156574.P5286331256119201369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A156574.P5286331256119201369

/-! ## A156574.P5175383224688888103

`A156572(3*(n+1))`
-/

namespace A156574.P5175383224688888103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156572 (3 * (n + 1))

end

end A156574.P5175383224688888103

/-! ## A156574.P14361120102825246610

`A156567(3*(n+1))²`
-/

namespace A156574.P14361120102825246610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (3 * (n + 1)) ^ 2

end

end A156574.P14361120102825246610

/-! ## A156574.P16098686096423808255

`record[A156569(A331303(n))²]`
-/

namespace A156574.P16098686096423808255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156569 (A331303 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156574.P16098686096423808255

/-! ## A156574.P3089632341265937234

`record[A117475(A000265(n+1))²]`
-/

namespace A156574.P3089632341265937234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117475 (A000265 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156574.P3089632341265937234

/-! ## A156574.P1790435233113589554

`Δ[A048693(n)*A162268(n)]²`
-/

namespace A156574.P1790435233113589554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n * A162268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A156574.P1790435233113589554

/-! ## A156574.P8255878216237758750

`A117475(2*n+1)*A117475(2*n+1)`
-/

namespace A156574.P8255878216237758750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117475 (2 * n + 1) * A117475 (2 * n + 1)

end

end A156574.P8255878216237758750

/-! ## A156574.P702432674437454785

`Δ[A154149(2*n+1)+A053141(n+1)]²`
-/

namespace A156574.P702432674437454785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (2 * n + 1) + A053141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A156574.P702432674437454785

/-! ## A156574.P13872009728466931237

`(Δ[A048696(2*n+1)]-A048697(2*n))²`
-/

namespace A156574.P13872009728466931237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A048697 (2 * n)) ^ 2

end

end A156574.P13872009728466931237

/-!
# A156575: a(n) = 34*a(n-1)-a(n-2)-4232 for n > 2; a(1)=289, a(2)=4225.

The programs for A156575, there is no canonical definition to state claims against.
-/

/-! ## A156575.P592780861152337074

`record[a(n-2)-a(n-1)-a(n-1)]²` with `a(0)=17, a(1)=10, a(2)=17`
-/

namespace A156575.P592780861152337074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17, 10, 17] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A156575.P592780861152337074

/-! ## A156575.P2988071937001807191

`A156570(n+1)²`
-/

namespace A156575.P2988071937001807191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156570 (n + 1) ^ 2

end

end A156575.P2988071937001807191

/-! ## A156575.P6419935446636627834

`A156572(3*n+1)`
-/

namespace A156575.P6419935446636627834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156572 (3 * n + 1)

end

end A156575.P6419935446636627834

/-! ## A156575.P301604869221104123

`A156567(3*n+1)²`
-/

namespace A156575.P301604869221104123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (3 * n + 1) ^ 2

end

end A156575.P301604869221104123

/-! ## A156575.P13776665187513187483

`or(1, A156572(A016777(n)))`
-/

namespace A156575.P13776665187513187483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A156572 (A016777 n).toNat)

end

end A156575.P13776665187513187483

/-! ## A156575.P3214791499120468837

`record[A156570(A193739(n))²]`
-/

namespace A156575.P3214791499120468837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156570 (A193739 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156575.P3214791499120468837

/-! ## A156575.P5295359809900020689

`A156567(3*n+1)*A156570(n+1)`
-/

namespace A156575.P5295359809900020689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156567 (3 * n + 1) * A156570 (n + 1)

end

end A156575.P5295359809900020689

/-! ## A156575.P18390895124585874360

`record[A156570(A193739(n))]*A156570(n+1)`
-/

namespace A156575.P18390895124585874360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156570 (A193739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A156570 (n + 1)

end

end A156575.P18390895124585874360

/-!
# A156577: a(2*n+2) = 10*a(2*n+1), a(2*n+1) = 10*a(2*n) - 9^n*A000108(n), a(0) = 1.

The programs for A156577, there is no canonical definition to state claims against.
-/

/-! ## A156577.P10244984748318526684

`3^n*A126931(n)`
-/

namespace A156577.P10244984748318526684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A126931 n

end

end A156577.P10244984748318526684

/-! ## A156577.P2401101271427017053

`3^(n-1)*A102898(n+1)`
-/

namespace A156577.P2401101271427017053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A102898 (n + 1) : ℚ)

end

end A156577.P2401101271427017053

/-! ## A156577.P5873910684027507977

`record[A126953(n)]*A000244(n)`
-/

namespace A156577.P5873910684027507977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000244 n

end

end A156577.P5873910684027507977

/-! ## A156577.P12769085281078028483

`record[A098355(n)*A126953(n)]`
-/

namespace A156577.P12769085281078028483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n * A126953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156577.P12769085281078028483

/-! ## A156577.P17261265074907108876

`record[A120027(n)*A126953(n)]`
-/

namespace A156577.P17261265074907108876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120027 n * A126953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156577.P17261265074907108876

/-! ## A156577.P988757740744851940

`Δ[A003462(n)]*record[A126953(n)]`
-/

namespace A156577.P988757740744851940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A156577.P988757740744851940

/-! ## A156577.P7219464717679981760

`record[A125824(n)]*record[A126953(n)]`
-/

namespace A156577.P7219464717679981760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A156577.P7219464717679981760

/-! ## A156577.P7566226893436512224

`record[A126953(n)]*A027465(A000217(n))`
-/

namespace A156577.P7566226893436512224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A027465 (A000217 n).toNat

end

end A156577.P7566226893436512224

/-!
# A156578: Triangle of coefficients of 1 - (n+1)*x^n + n*x^(n+1), read by rows.

The programs for A156578, the canonical program `A156578.P4649527317743523446` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156578 has offset 0).

The definition of A156578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156578.P4936138546966784721

`Δ[-A128229(n+2)]`
-/

namespace A156578.P4936138546966784721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A128229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P4936138546966784721

namespace A156578

/-- `Δ[-A128229(n+2)]` -/
def P4936138546966784721.Spec : Prop :=
  ∀ n, P4936138546966784721.a n = A156578 n

end A156578

/-! ## A156578.P4649527317743523446

`Δ[-A145677(n+2)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A156578

/-- `Δ[-A145677(n+2)]` -/
def P4649527317743523446.Spec : Prop :=
  ∀ n, P4649527317743523446.a n = A156578 n

theorem P4649527317743523446.correct : P4649527317743523446.Spec := by
  intro n
  simp only [A156578]

end A156578

/-! ## A156578.P16416890667799990791

`Δ[Δ[A128227(n+1)]]`
-/

namespace A156578.P16416890667799990791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P16416890667799990791

namespace A156578

/-- `Δ[Δ[A128227(n+1)]]` -/
def P16416890667799990791.Spec : Prop :=
  ∀ n, P16416890667799990791.a n = A156578 n

end A156578

/-! ## A156578.P11329352979121933604

`Δ[Δ[A134868(n+3)]]`
-/

namespace A156578.P11329352979121933604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P11329352979121933604

namespace A156578

/-- `Δ[Δ[A134868(n+3)]]` -/
def P11329352979121933604.Spec : Prop :=
  ∀ n, P11329352979121933604.a n = A156578 n

end A156578

/-! ## A156578.P11839758709898173221

`Δ[Δ[A144328(n+3)]]`
-/

namespace A156578.P11839758709898173221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P11839758709898173221

namespace A156578

/-- `Δ[Δ[A144328(n+3)]]` -/
def P11839758709898173221.Spec : Prop :=
  ∀ n, P11839758709898173221.a n = A156578 n

end A156578

/-! ## A156578.P14659898423118203139

`Δ[-A026741(A134082(n+1))]`
-/

namespace A156578.P14659898423118203139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A026741 (A134082 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P14659898423118203139

namespace A156578

/-- `Δ[-A026741(A134082(n+1))]` -/
def P14659898423118203139.Spec : Prop :=
  ∀ n, P14659898423118203139.a n = A156578 n

end A156578

/-! ## A156578.P14049868465333646606

`Δ[Δ[A055087(A056537(n+1))]]`
-/

namespace A156578.P14049868465333646606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A056537 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P14049868465333646606

namespace A156578

/-- `Δ[Δ[A055087(A056537(n+1))]]` -/
def P14049868465333646606.Spec : Prop :=
  ∀ n, P14049868465333646606.a n = A156578 n

end A156578

/-! ## A156578.P8740488830135818476

`Δ[Δ[A028310(A002262(n+2))]]`
-/

namespace A156578.P8740488830135818476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002262 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P8740488830135818476

namespace A156578

/-- `Δ[Δ[A028310(A002262(n+2))]]` -/
def P8740488830135818476.Spec : Prop :=
  ∀ n, P8740488830135818476.a n = A156578 n

end A156578

/-! ## A156578.P4849915996989636512

`A128229(n+2)-A128229(n+3)`
-/

namespace A156578.P4849915996989636512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (n + 2) - A128229 (n + 3)

end

end A156578.P4849915996989636512

namespace A156578

/-- `A128229(n+2)-A128229(n+3)` -/
def P4849915996989636512.Spec : Prop :=
  ∀ n, P4849915996989636512.a n = A156578 n

end A156578

/-! ## A156578.P10299038515011458295

`A145677(n+2)-A145677(n+3)`
-/

namespace A156578.P10299038515011458295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 (n + 2) - A145677 (n + 3)

end

end A156578.P10299038515011458295

namespace A156578

/-- `A145677(n+2)-A145677(n+3)` -/
def P10299038515011458295.Spec : Prop :=
  ∀ n, P10299038515011458295.a n = A156578 n

theorem P10299038515011458295.correct : P10299038515011458295.Spec := by
  intro n
  simp only [A156578, Nat.add_sub_cancel, A156578.P10299038515011458295.a, A156578.P4649527317743523446.f1, A156578.P4649527317743523446.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A156578

/-! ## A156578.P7364426855043689452

`Δ[Δ[A002262(n+1)*A023532(n+1)]]`
-/

namespace A156578.P7364426855043689452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1) * A023532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P7364426855043689452

namespace A156578

/-- `Δ[Δ[A002262(n+1)*A023532(n+1)]]` -/
def P7364426855043689452.Spec : Prop :=
  ∀ n, P7364426855043689452.a n = A156578 n

end A156578

/-! ## A156578.P5066733338881617425

`Δ[Δ[A002260(n+2)-A051340(n+1)]]`
-/

namespace A156578.P5066733338881617425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) - A051340 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P5066733338881617425

namespace A156578

/-- `Δ[Δ[A002260(n+2)-A051340(n+1)]]` -/
def P5066733338881617425.Spec : Prop :=
  ∀ n, P5066733338881617425.a n = A156578 n

end A156578

/-!
# A156580: Triangle T(n, k) = binomial(n-1, k-1) for n < 4, 2*(n + k - 4) + (-1)^n if k = (n+1)/2, 2*(n + k - 4) if k < floor(n/2) + 1, otherwise 2*(2*n - k - 3), with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A156580, there is no canonical definition to state claims against.
-/

/-! ## A156580.P2655939324082051758

`A098388(A316686(n+1)+A174126(n))`
-/

namespace A156580.P2655939324082051758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (A316686 (n + 1) + A174126 n).toNat

end

end A156580.P2655939324082051758

/-! ## A156580.P17156737381573157308

`A061555(A152613(n))`
-/

namespace A156580.P17156737381573157308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061555 (A152613 n).toNat

end

end A156580.P17156737381573157308

/-! ## A156580.P1849873170391442829

`A029837(A128596(n))+1`
-/

namespace A156580.P1849873170391442829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A128596 n).toNat + 1

end

end A156580.P1849873170391442829

/-! ## A156580.P13315354909000845007

`A029837(2*A128596(n))`
-/

namespace A156580.P13315354909000845007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (2 * A128596 n).toNat

end

end A156580.P13315354909000845007

/-! ## A156580.P11611203379035811228

`A087233(A157154(n))`
-/

namespace A156580.P11611203379035811228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087233 (A157154 n).toNat

end

end A156580.P11611203379035811228

/-!
# A156581: Triangle T(n, k, m) = (m+2)^(k*(n-k)) with m = 15, read by rows.

The programs for A156581, the canonical program `A156581.P6595588303505645397` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156581 has offset 0).

The definition of A156581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156581.P12339567741826866956

`17^A004247(n)`
-/

namespace A156581.P12339567741826866956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (A004247 n : ℤ)

end

end A156581.P12339567741826866956

namespace A156581

/-- `17^A004247(n)` -/
def P12339567741826866956.Spec : Prop :=
  ∀ n, P12339567741826866956.a n = (A156581 n : ℚ)

end A156581

/-! ## A156581.P14273188692574281087

`17^log2(A117401(n))`
-/

namespace A156581.P14273188692574281087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (17 : ℝ) ^ (Real.logb 2 (A117401 n : ℝ))

end

end A156581.P14273188692574281087

namespace A156581

/-- `17^log2(A117401(n))` -/
def P14273188692574281087.Spec : Prop :=
  ∀ n, P14273188692574281087.a n = (A156581 n : ℝ)

end A156581

/-! ## A156581.P2209745191233329355

`17^(1-A176270(n))`
-/

namespace A156581.P2209745191233329355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (1 - A176270 n : ℤ)

end

end A156581.P2209745191233329355

namespace A156581

/-- `17^(1-A176270(n))` -/
def P2209745191233329355.Spec : Prop :=
  ∀ n, P2209745191233329355.a n = (A156581 n : ℚ)

end A156581

/-! ## A156581.P8968570033586770016

`A073221(A285192(n))`
-/

namespace A156581.P8968570033586770016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073221 (A285192 n).toNat

end

end A156581.P8968570033586770016

namespace A156581

/-- `A073221(A285192(n))` -/
def P8968570033586770016.Spec : Prop :=
  ∀ n, P8968570033586770016.a n = A156581 n

end A156581

/-! ## A156581.P6595588303505645397

`A001026(A077028(n)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156581

/-- `A001026(A077028(n)-1)` -/
def P6595588303505645397.Spec : Prop :=
  ∀ n, P6595588303505645397.a n = A156581 n

theorem P6595588303505645397.correct : P6595588303505645397.Spec := by
  intro n
  simp only [A156581]

end A156581

/-! ## A156581.P13746109631318048568

`A017955(2*A004247(n))`
-/

namespace A156581.P13746109631318048568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 (2 * A004247 n).toNat

end

end A156581.P13746109631318048568

namespace A156581

/-- `A017955(2*A004247(n))` -/
def P13746109631318048568.Spec : Prop :=
  ∀ n, P13746109631318048568.a n = A156581 n

end A156581

/-! ## A156581.P11160925907595981583

`17^(A002262(n)*A025581(n))`
-/

namespace A156581.P11160925907595981583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (A002262 n * A025581 n : ℤ)

end

end A156581.P11160925907595981583

namespace A156581

/-- `17^(A002262(n)*A025581(n))` -/
def P11160925907595981583.Spec : Prop :=
  ∀ n, P11160925907595981583.a n = (A156581 n : ℚ)

end A156581

/-! ## A156581.P6732127057526144251

`A017955(A004247(n)+A004247(n))`
-/

namespace A156581.P6732127057526144251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017955 (A004247 n + A004247 n).toNat

end

end A156581.P6732127057526144251

namespace A156581

/-- `A017955(A004247(n)+A004247(n))` -/
def P6732127057526144251.Spec : Prop :=
  ∀ n, P6732127057526144251.a n = A156581 n

end A156581

/-! ## A156581.P15899158958338621455

`A001026((A003056(n)-A002262(n))*A002262(n))`
-/

namespace A156581.P15899158958338621455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 ((A003056 n - A002262 n) * A002262 n).toNat

end

end A156581.P15899158958338621455

namespace A156581

/-- `A001026((A003056(n)-A002262(n))*A002262(n))` -/
def P15899158958338621455.Spec : Prop :=
  ∀ n, P15899158958338621455.a n = A156581 n

end A156581

/-!
# A156582: Square array T(n, k) = (k+2)^binomial(n, 2) with T(n, 0) = n!, read by antidiagonals.

The programs for A156582, there is no canonical definition to state claims against.
-/

/-! ## A156582.P8384965015771896009

`A156953(n)%A073131(A156953(n))`
-/

namespace A156582.P8384965015771896009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156953 n) (A073131 (A156953 n).toNat)

end

end A156582.P8384965015771896009

/-! ## A156582.P2584655836081498392

`A005940(A156953(n))%A215366(3*n+2)`
-/

namespace A156582.P2584655836081498392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (A156953 n).toNat) (A215366 (3 * n + 2))

end

end A156582.P2584655836081498392

/-! ## A156582.P481464363282274807

`A349864(A156953(n))`
-/

namespace A156582.P481464363282274807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349864 (A156953 n).toNat

end

end A156582.P481464363282274807

/-! ## A156582.P11459102622817472878

`A349864(A156540(n)*A214268(n))`
-/

namespace A156582.P11459102622817472878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349864 (A156540 n * A214268 n).toNat

end

end A156582.P11459102622817472878

/-! ## A156582.P3453505872857581676

`A089867(A156953(n))%A005818(n+1)`
-/

namespace A156582.P3453505872857581676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089867 (A156953 n).toNat) (A005818 (n + 1))

end

end A156582.P3453505872857581676

/-!
# A156583: The subsequence of even digits in A119505.

The programs for A156583, the canonical program `A156583.P9591001356614490137` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156583 has offset 1).

The definition of A156583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156583.P9591001356614490137

`A119505(eq[2, gcd(2, A119505(n+1))]+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156583

/-- `A119505(eq[2, gcd(2, A119505(n+1))]+1)` -/
def P9591001356614490137.Spec : Prop :=
  ∀ n, P9591001356614490137.a n = A156583 (n + 1)

theorem P9591001356614490137.correct : P9591001356614490137.Spec := by
  intro n
  simp only [A156583, Nat.add_sub_cancel]

end A156583

/-! ## A156583.P8421681232419320588

`A007400(A283701(n)+A064989(n+2))`
-/

namespace A156583.P8421681232419320588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (A283701 n + A064989 (n + 2)).toNat

end

end A156583.P8421681232419320588

namespace A156583

/-- `A007400(A283701(n)+A064989(n+2))` -/
def P8421681232419320588.Spec : Prop :=
  ∀ n, P8421681232419320588.a n = A156583 (n + 1)

end A156583

/-! ## A156583.P15260743441041451051

`A000005(A323353(n+1)*A323355(n+5))`
-/

namespace A156583.P15260743441041451051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A323353 (n + 1) * A323355 (n + 5)).toNat

end

end A156583.P15260743441041451051

namespace A156583

/-- `A000005(A323353(n+1)*A323355(n+5))` -/
def P15260743441041451051.Spec : Prop :=
  ∀ n, P15260743441041451051.a n = A156583 (n + 1)

end A156583

/-! ## A156583.P14340361046153916656

`A000005(lcm(A323353(n+1), A323355(n+5)))`
-/

namespace A156583.P14340361046153916656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A323353 (n + 1)) (A323355 (n + 5)))

end

end A156583.P14340361046153916656

namespace A156583

/-- `A000005(lcm(A323353(n+1), A323355(n+5)))` -/
def P14340361046153916656.Spec : Prop :=
  ∀ n, P14340361046153916656.a n = A156583 (n + 1)

end A156583

/-! ## A156583.P15104949060339418589

`and(A278481(A278448(n+1)), A278487(3*n+5))`
-/

namespace A156583.P15104949060339418589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278481 (A278448 (n + 1)).toNat) (A278487 (3 * n + 5))

end

end A156583.P15104949060339418589

namespace A156583

/-- `and(A278481(A278448(n+1)), A278487(3*n+5))` -/
def P15104949060339418589.Spec : Prop :=
  ∀ n, P15104949060339418589.a n = A156583 (n + 1)

end A156583

/-!
# A156584: Triangle T(n,k) = SF(n+1)/(SF(n-k+1)*SF(k+1)) where SF(n) is the superfactorial A000178(n), read by rows.

The programs for A156584, there is no canonical definition to state claims against.
-/

/-! ## A156584.P14054517684748472643

`A001263(n+1)/A007318(n)*A009963(n)`
-/

namespace A156584.P14054517684748472643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A009963 n : ℚ)

end

end A156584.P14054517684748472643

/-! ## A156584.P9550063269270436679

`A001263(n+1)/A157638(n)*A156765(n)`
-/

namespace A156584.P9550063269270436679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A157638 n : ℚ) * (A156765 n : ℚ)

end

end A156584.P9550063269270436679

/-! ## A156584.P3090393033460885890

`A046792(n+1)/A060854(n+1)`
-/

namespace A156584.P3090393033460885890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (n + 1) : ℚ) / (A060854 (n + 1) : ℚ)

end

end A156584.P3090393033460885890

/-! ## A156584.P5345918449640450737

`A046792(n+1)/A290252(A089633(n)+1)`
-/

namespace A156584.P5345918449640450737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (n + 1) : ℚ) / (A290252 (A089633 n + 1).toNat : ℚ)

end

end A156584.P5345918449640450737

/-! ## A156584.P3080876807817122849

`A046792(n+1)/A290252(A023758(n+2))`
-/

namespace A156584.P3080876807817122849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (n + 1) : ℚ) / (A290252 (A023758 (n + 2)).toNat : ℚ)

end

end A156584.P3080876807817122849

/-! ## A156584.P8253461194161420912

`A046792(n+1)/A290252(A043569(n+1)/2)`
-/

namespace A156584.P8253461194161420912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (n + 1) : ℚ) / (A290252 (SequenceMachineLib.roundAway ((A043569 (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A156584.P8253461194161420912

/-! ## A156584.P5228075272383390297

`A046792(n+1)/A290252((A081118(n+1)+1)/2)`
-/

namespace A156584.P5228075272383390297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (n + 1) : ℚ) / (A290252 (SequenceMachineLib.roundAway ((A081118 (n + 1) + 1 : ℚ) / 2)).toNat : ℚ)

end

end A156584.P5228075272383390297

/-! ## A156584.P655175328011101812

`A046792(n+1)/A290252(A130328(n))`
-/

namespace A156584.P655175328011101812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (n + 1) : ℚ) / (A290252 (A130328 n).toNat : ℚ)

end

end A156584.P655175328011101812

/-! ## A156584.P14602455979604993706

`A046792(n+1)/A004065(A115216(n))`
-/

namespace A156584.P14602455979604993706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (n + 1) : ℚ) / (A004065 (A115216 n).toNat : ℚ)

end

end A156584.P14602455979604993706

/-! ## A156584.P11175854865693132230

`A046792(n+1)/A290252(A193902(n))`
-/

namespace A156584.P11175854865693132230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046792 (n + 1) : ℚ) / (A290252 (A193902 n).toNat : ℚ)

end

end A156584.P11175854865693132230

/-!
# A156586: A new q-combination type general triangle sequence based on Stirling first polynomials: here q=4: m=3: t(n,k)=If[m == 0, n!, Product[Sum[(-1)^(i + k)*StirlingS1[k - 1, i]*(m + 1)^i, {i, 0, k - 1}], {k, 1, n}]]; b(n,k,m)=If[n == 0, 1, t[n, m]/(t[k, m]*t[n - k, m])].

The programs for A156586, there is no canonical definition to state claims against.
-/

/-! ## A156586.P6959239096839619077

`A056939(n)*A090441(n)`
-/

namespace A156586.P6959239096839619077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 n * A090441 n

end

end A156586.P6959239096839619077

/-! ## A156586.P10227775448737977562

`A009963(n)/A156584(n)*A156764(n)`
-/

namespace A156586.P10227775448737977562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009963 n : ℚ) / (A156584 n : ℚ) * (A156764 n : ℚ)

end

end A156586.P10227775448737977562

/-! ## A156586.P14856428806073906101

`A056939(n)*A156767(n)/A157641(n)`
-/

namespace A156586.P14856428806073906101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056939 n * A156767 n : ℚ) / (A157641 n : ℚ)

end

end A156586.P14856428806073906101

/-! ## A156586.P12484690315330432000

`A002260(n+1)/A074909(n)*A156764(n)`
-/

namespace A156586.P12484690315330432000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A074909 n : ℚ) * (A156764 n : ℚ)

end

end A156586.P12484690315330432000

/-! ## A156586.P1261356048615289789

`A063183(A059328(n))`
-/

namespace A156586.P1261356048615289789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063183 (A059328 n).toNat

end

end A156586.P1261356048615289789

/-!
# A156587: A new q-combination type general triangle sequence based on Stirling first polynomials: here q=5: m=4: t(n,k)=If[m == 0, n!, Product[Sum[(-1)^(i + k)*StirlingS1[k - 1, i]*(m + 1)^i, {i, 0, k - 1}], {k, 1, n}]]; b(n,k,m)=If[n == 0, 1, t[n, m]/(t[k, m]*t[n - k, m])].

The programs for A156587, there is no canonical definition to state claims against.
-/

/-! ## A156587.P4789280669102943485

`A056940(n)*A090441(n)`
-/

namespace A156587.P4789280669102943485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 n * A090441 n

end

end A156587.P4789280669102943485

/-! ## A156587.P9733860041374255175

`A071852(A091378(n))`
-/

namespace A156587.P9733860041374255175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071852 (A091378 n).toNat

end

end A156587.P9733860041374255175

/-! ## A156587.P12668695774279117528

`A089046(A081581(n))`
-/

namespace A156587.P12668695774279117528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089046 (A081581 n).toNat

end

end A156587.P12668695774279117528

/-! ## A156587.P4701519319383282284

`A089046(A131067(n))`
-/

namespace A156587.P4701519319383282284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089046 (A131067 n).toNat

end

end A156587.P4701519319383282284

/-! ## A156587.P11953434354535532514

`A089046(A157170(n))`
-/

namespace A156587.P11953434354535532514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089046 (A157170 n).toNat

end

end A156587.P11953434354535532514

/-!
# A156589: a(n) = 4^n - 2^n - 1.

The programs for A156589, the canonical program `A156589.P6108127963412924824` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156589 has offset 0).

The definition of A156589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-2^n-1` (program `A156589.P6108127963412924824`, by `A156589.P6108127963412924824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156589.P6108127963412924824

`4^n-2^n-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156589

/-- `4^n-2^n-1` -/
def P6108127963412924824.Spec : Prop :=
  ∀ n, P6108127963412924824.a n = A156589 n

theorem P6108127963412924824.correct : P6108127963412924824.Spec := by
  intro n
  simp only [A156589]

end A156589

/-! ## A156589.P13042726779904886732

`∑[ogf((-1+8x-10x^2)/(1-6x+8x^2))]`
-/

namespace A156589.P13042726779904886732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 8, -10] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156589.P13042726779904886732

namespace A156589

/-- `∑[ogf((-1+8x-10x^2)/(1-6x+8x^2))]` -/
def P13042726779904886732.Spec : Prop :=
  ∀ n, P13042726779904886732.a n = A156589 n

end A156589

/-! ## A156589.P2912834036471326448

`record[or(1, A279879(n)-2)]`
-/

namespace A156589.P2912834036471326448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A279879 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156589.P2912834036471326448

namespace A156589

/-- `record[or(1, A279879(n)-2)]` -/
def P2912834036471326448.Spec : Prop :=
  ∀ n, P2912834036471326448.a n = A156589 n

end A156589

/-! ## A156589.P15268735819458450043

`ceil(A020522(n)-ratio[n+3])`
-/

namespace A156589.P15268735819458450043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020522 n : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A156589.P15268735819458450043

namespace A156589

/-- `ceil(A020522(n)-ratio[n+3])` -/
def P15268735819458450043.Spec : Prop :=
  ∀ n, P15268735819458450043.a n = A156589 n

end A156589

/-! ## A156589.P10001771824628727659

`xor(A024036(n), A171449(n))`
-/

namespace A156589.P10001771824628727659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024036 n) (A171449 n)

end

end A156589.P10001771824628727659

namespace A156589

/-- `xor(A024036(n), A171449(n))` -/
def P10001771824628727659.Spec : Prop :=
  ∀ n, P10001771824628727659.a n = A156589 n

end A156589

/-! ## A156589.P17617461855091684731

`record[A122803(n)-A052552(n)]`
-/

namespace A156589.P17617461855091684731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n - A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156589.P17617461855091684731

namespace A156589

/-- `record[A122803(n)-A052552(n)]` -/
def P17617461855091684731.Spec : Prop :=
  ∀ n, P17617461855091684731.a n = A156589 n

end A156589

/-! ## A156589.P16592035726378131023

`(A092440(n)-3)/2`
-/

namespace A156589.P16592035726378131023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092440 n - 3 : ℚ) / 2

end

end A156589.P16592035726378131023

namespace A156589

/-- `(A092440(n)-3)/2` -/
def P16592035726378131023.Spec : Prop :=
  ∀ n, P16592035726378131023.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P9288719245701353108

`(A169726(n)-4)/3`
-/

namespace A156589.P9288719245701353108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169726 n - 4 : ℚ) / 3

end

end A156589.P9288719245701353108

namespace A156589

/-- `(A169726(n)-4)/3` -/
def P9288719245701353108.Spec : Prop :=
  ∀ n, P9288719245701353108.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P3497521959154645292

`(A093112(n+1)-3)/4`
-/

namespace A156589.P3497521959154645292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093112 (n + 1) - 3 : ℚ) / 4

end

end A156589.P3497521959154645292

namespace A156589

/-- `(A093112(n+1)-3)/4` -/
def P3497521959154645292.Spec : Prop :=
  ∀ n, P3497521959154645292.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P8280255441926494747

`(A060867(n+1)-5)/4`
-/

namespace A156589.P8280255441926494747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060867 (n + 1) - 5 : ℚ) / 4

end

end A156589.P8280255441926494747

namespace A156589

/-- `(A060867(n+1)-5)/4` -/
def P8280255441926494747.Spec : Prop :=
  ∀ n, P8280255441926494747.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P8453903689864520425

`(A096045(n)-A242985(n))/2`
-/

namespace A156589.P8453903689864520425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096045 n - A242985 n : ℚ) / 2

end

end A156589.P8453903689864520425

namespace A156589

/-- `(A096045(n)-A242985(n))/2` -/
def P8453903689864520425.Spec : Prop :=
  ∀ n, P8453903689864520425.a n = (A156589 n : ℚ)

theorem P8453903689864520425.correct : P8453903689864520425.Spec := by
  intro n
  simp only [A156589, Nat.add_sub_cancel, A156589.P8453903689864520425.a, A156589.P6108127963412924824.a, A096045, A096045.P15010219694620711667.a, A242985, A242985.P924288704119484347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156589

/-! ## A156589.P4368894975383332989

`(A103454(n+1)-A343175(n+1))/2`
-/

namespace A156589.P4368894975383332989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103454 (n + 1) - A343175 (n + 1) : ℚ) / 2

end

end A156589.P4368894975383332989

namespace A156589

/-- `(A103454(n+1)-A343175(n+1))/2` -/
def P4368894975383332989.Spec : Prop :=
  ∀ n, P4368894975383332989.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P5764698445088530120

`(2*A000079(n)²-A052548(n+1))/2`
-/

namespace A156589.P5764698445088530120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 - A052548 (n + 1) : ℚ) / 2

end

end A156589.P5764698445088530120

namespace A156589

/-- `(2*A000079(n)²-A052548(n+1))/2` -/
def P5764698445088530120.Spec : Prop :=
  ∀ n, P5764698445088530120.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P10351162001745836051

`(A000225(2*n+1)-A000051(n+1))/2`
-/

namespace A156589.P10351162001745836051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (2 * n + 1) - A000051 (n + 1) : ℚ) / 2

end

end A156589.P10351162001745836051

namespace A156589

/-- `(A000225(2*n+1)-A000051(n+1))/2` -/
def P10351162001745836051.Spec : Prop :=
  ∀ n, P10351162001745836051.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P11443878203127156982

`(A000918(2*n+1)-A000079(n+1))/2`
-/

namespace A156589.P11443878203127156982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000918 (2 * n + 1) - A000079 (n + 1) : ℚ) / 2

end

end A156589.P11443878203127156982

namespace A156589

/-- `(A000918(2*n+1)-A000079(n+1))/2` -/
def P11443878203127156982.Spec : Prop :=
  ∀ n, P11443878203127156982.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P3465485610551945757

`(A000079(2*n+1)-A052548(n+1))/2`
-/

namespace A156589.P3465485610551945757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) - A052548 (n + 1) : ℚ) / 2

end

end A156589.P3465485610551945757

namespace A156589

/-- `(A000079(2*n+1)-A052548(n+1))/2` -/
def P3465485610551945757.Spec : Prop :=
  ∀ n, P3465485610551945757.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P15295176506403536970

`(A000051(2*n+1)-A062709(n+1))/2`
-/

namespace A156589.P15295176506403536970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 (2 * n + 1) - A062709 (n + 1) : ℚ) / 2

end

end A156589.P15295176506403536970

namespace A156589

/-- `(A000051(2*n+1)-A062709(n+1))/2` -/
def P15295176506403536970.Spec : Prop :=
  ∀ n, P15295176506403536970.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P5655252456410713112

`(A001018(n)-A000051(n+1))/A000051(n)`
-/

namespace A156589.P5655252456410713112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001018 n - A000051 (n + 1) : ℚ) / (A000051 n : ℚ)

end

end A156589.P5655252456410713112

namespace A156589

/-- `(A001018(n)-A000051(n+1))/A000051(n)` -/
def P5655252456410713112.Spec : Prop :=
  ∀ n, P5655252456410713112.a n = (A156589 n : ℚ)

end A156589

/-! ## A156589.P9619746696031058218

`(A062395(n)-A052548(n+1))/A000051(n)`
-/

namespace A156589.P9619746696031058218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062395 n - A052548 (n + 1) : ℚ) / (A000051 n : ℚ)

end

end A156589.P9619746696031058218

namespace A156589

/-- `(A062395(n)-A052548(n+1))/A000051(n)` -/
def P9619746696031058218.Spec : Prop :=
  ∀ n, P9619746696031058218.a n = (A156589 n : ℚ)

end A156589

/-!
# A156591: First differences of A154570.

The programs for A156591, the canonical program `A156591.P12243526318247523164` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156591 has offset 0).

The definition of A156591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156591.P11625793606938678271

`ogf((2-9x+9x^2)/(1-x-2x^2))`
-/

namespace A156591.P11625793606938678271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -9, 9] [1, -1, -2] n

end

end A156591.P11625793606938678271

namespace A156591

/-- `ogf((2-9x+9x^2)/(1-x-2x^2))` -/
def P11625793606938678271.Spec : Prop :=
  ∀ n, P11625793606938678271.a n = A156591 n

end A156591

/-! ## A156591.P12243526318247523164

`A157823(n-1)-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156591

/-- `A157823(n-1)-a(n-1)` -/
def P12243526318247523164.Spec : Prop :=
  ∀ n, P12243526318247523164.a n = A156591 n

theorem P12243526318247523164.correct : P12243526318247523164.Spec := by
  intro n
  simp only [A156591]

end A156591

/-! ## A156591.P4400960385772397726

`Δ[-(a(n-1)+2^(n-2))]` with `a(0)=1, a(1)=3`
-/

namespace A156591.P4400960385772397726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  -(f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156591.P4400960385772397726

namespace A156591

/-- `Δ[-(a(n-1)+2^(n-2))]` -/
def P4400960385772397726.Spec : Prop :=
  ∀ n, P4400960385772397726.a n = (A156591 n : ℚ)

end A156591

/-! ## A156591.P15407513722422486209

`Δ[A156067(n)+A001045(n)]`
-/

namespace A156591.P15407513722422486209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 n + A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156591.P15407513722422486209

namespace A156591

/-- `Δ[A156067(n)+A001045(n)]` -/
def P15407513722422486209.Spec : Prop :=
  ∀ n, P15407513722422486209.a n = A156591 n

end A156591

/-! ## A156591.P17624199977198764066

`A078008(n)+Δ[A156067(n)]`
-/

namespace A156591.P17624199977198764066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + (f1 (n + 1) - f1 n)

end

end A156591.P17624199977198764066

namespace A156591

/-- `A078008(n)+Δ[A156067(n)]` -/
def P17624199977198764066.Spec : Prop :=
  ∀ n, P17624199977198764066.a n = A156591 n

end A156591

/-! ## A156591.P6450351579565154078

`Δ[A156067(n)+A128209(n)]`
-/

namespace A156591.P6450351579565154078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 n + A128209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156591.P6450351579565154078

namespace A156591

/-- `Δ[A156067(n)+A128209(n)]` -/
def P6450351579565154078.Spec : Prop :=
  ∀ n, P6450351579565154078.a n = A156591 n

end A156591

/-! ## A156591.P16187781940022448990

`Δ[A156067(n)+A153643(n)]`
-/

namespace A156591.P16187781940022448990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 n + A153643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156591.P16187781940022448990

namespace A156591

/-- `Δ[A156067(n)+A153643(n)]` -/
def P16187781940022448990.Spec : Prop :=
  ∀ n, P16187781940022448990.a n = A156591 n

end A156591

/-! ## A156591.P10485089081805660814

`A154589(n)-2*A154570(n)`
-/

namespace A156591.P10485089081805660814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154589 n - 2 * A154570 n

end

end A156591.P10485089081805660814

namespace A156591

/-- `A154589(n)-2*A154570(n)` -/
def P10485089081805660814.Spec : Prop :=
  ∀ n, P10485089081805660814.a n = A156591 n

end A156591

/-! ## A156591.P17637737241156473506

`Δ[A154570(n)]`
-/

namespace A156591.P17637737241156473506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156591.P17637737241156473506

namespace A156591

/-- `Δ[A154570(n)]` -/
def P17637737241156473506.Spec : Prop :=
  ∀ n, P17637737241156473506.a n = A156591 n

end A156591

/-! ## A156591.P17526218921432723300

`Δ[A115341(n)-A084214(n)]`
-/

namespace A156591.P17526218921432723300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115341 n - A084214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156591.P17526218921432723300

namespace A156591

/-- `Δ[A115341(n)-A084214(n)]` -/
def P17526218921432723300.Spec : Prop :=
  ∀ n, P17526218921432723300.a n = A156591 n

end A156591

/-! ## A156591.P9535513241751418180

`A154570(n+1)-A154570(n)`
-/

namespace A156591.P9535513241751418180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154570 (n + 1) - A154570 n

end

end A156591.P9535513241751418180

namespace A156591

/-- `A154570(n+1)-A154570(n)` -/
def P9535513241751418180.Spec : Prop :=
  ∀ n, P9535513241751418180.a n = A156591 n

end A156591

/-! ## A156591.P14870408328525425280

`Δ[A144472(n+2)-(A144472(n+1)+A000079(n+1))]`
-/

namespace A156591.P14870408328525425280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144472 (n + 2) - (A144472 (n + 1) + A000079 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156591.P14870408328525425280

namespace A156591

/-- `Δ[A144472(n+2)-(A144472(n+1)+A000079(n+1))]` -/
def P14870408328525425280.Spec : Prop :=
  ∀ n, P14870408328525425280.a n = A156591 n

end A156591

/-!
# A156592: Product p*q of two primes with q = 2*p + 1.

The programs for A156592, the canonical program `A156592.P11546580422876167646` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156592 has offset 1).

The definition of A156592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, A005385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156592.P11546580422876167646

`A005384(n+1)*A005385(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A156592

/-- `A005384(n+1)*A005385(n+1)` -/
def P11546580422876167646.Spec : Prop :=
  ∀ n, P11546580422876167646.a n = A156592 (n + 1)

theorem P11546580422876167646.correct : P11546580422876167646.Spec := by
  intro n
  simp only [A156592, Nat.add_sub_cancel]

end A156592

/-! ## A156592.P6734101290839984385

`C(A005385(n+1), 2)`
-/

namespace A156592.P6734101290839984385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005385 (n + 1)).toNat 2

end

end A156592.P6734101290839984385

namespace A156592

/-- `C(A005385(n+1), 2)` -/
def P6734101290839984385.Spec : Prop :=
  ∀ n, (P6734101290839984385.a n : ℤ) = A156592 (n + 1)

end A156592

/-! ## A156592.P10163834853055295746

`(A077065(n+1)+1)*A005384(n+1)`
-/

namespace A156592.P10163834853055295746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077065 (n + 1) + 1) * A005384 (n + 1)

end

end A156592.P10163834853055295746

namespace A156592

/-- `(A077065(n+1)+1)*A005384(n+1)` -/
def P10163834853055295746.Spec : Prop :=
  ∀ n, P10163834853055295746.a n = A156592 (n + 1)

theorem P10163834853055295746.correct : P10163834853055295746.Spec := by
  intro n
  simp only [A156592, Nat.add_sub_cancel, A156592.P10163834853055295746.a, A156592.P11546580422876167646.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A077065, A077065.P3431251406781570749.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156592

/-! ## A156592.P4865765872553141242

`(A176045(n+1)-1)*A005385(n+1)`
-/

namespace A156592.P4865765872553141242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176045 (n + 1) - 1) * A005385 (n + 1)

end

end A156592.P4865765872553141242

namespace A156592

/-- `(A176045(n+1)-1)*A005385(n+1)` -/
def P4865765872553141242.Spec : Prop :=
  ∀ n, P4865765872553141242.a n = A156592 (n + 1)

theorem P4865765872553141242.correct : P4865765872553141242.Spec := by
  intro n
  simp only [A156592, Nat.add_sub_cancel, A156592.P4865765872553141242.a, A156592.P11546580422876167646.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156592

/-! ## A156592.P16274808309749633682

`A005385(n+1)/2*A077065(n+1)`
-/

namespace A156592.P16274808309749633682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005385 (n + 1) : ℚ) / 2 * (A077065 (n + 1) : ℚ)

end

end A156592.P16274808309749633682

namespace A156592

/-- `A005385(n+1)/2*A077065(n+1)` -/
def P16274808309749633682.Spec : Prop :=
  ∀ n, P16274808309749633682.a n = (A156592 (n + 1) : ℚ)

theorem P16274808309749633682.correct : P16274808309749633682.Spec := by
  intro n
  simp only [A156592, Nat.add_sub_cancel, A156592.P16274808309749633682.a, A156592.P11546580422876167646.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A077065, A077065.P3431251406781570749.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156592

/-! ## A156592.P17695043607250021710

`C(A175666(n+1)-A005384(n+1), 2)`
-/

namespace A156592.P17695043607250021710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175666 (n + 1) - A005384 (n + 1)).toNat 2

end

end A156592.P17695043607250021710

namespace A156592

/-- `C(A175666(n+1)-A005384(n+1), 2)` -/
def P17695043607250021710.Spec : Prop :=
  ∀ n, (P17695043607250021710.a n : ℤ) = A156592 (n + 1)

end A156592

/-! ## A156592.P6123968505727865703

`(A176045(n+1)+A005384(n+1))*A005384(n+1)`
-/

namespace A156592.P6123968505727865703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176045 (n + 1) + A005384 (n + 1)) * A005384 (n + 1)

end

end A156592.P6123968505727865703

namespace A156592

/-- `(A176045(n+1)+A005384(n+1))*A005384(n+1)` -/
def P6123968505727865703.Spec : Prop :=
  ∀ n, P6123968505727865703.a n = A156592 (n + 1)

theorem P6123968505727865703.correct : P6123968505727865703.Spec := by
  intro n
  simp only [A156592, Nat.add_sub_cancel, A156592.P6123968505727865703.a, A156592.P11546580422876167646.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156592

/-! ## A156592.P9604628829456548568

`(A175666(n+1)-A005385(n+1))*A005385(n+1)`
-/

namespace A156592.P9604628829456548568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175666 (n + 1) - A005385 (n + 1)) * A005385 (n + 1)

end

end A156592.P9604628829456548568

namespace A156592

/-- `(A175666(n+1)-A005385(n+1))*A005385(n+1)` -/
def P9604628829456548568.Spec : Prop :=
  ∀ n, P9604628829456548568.a n = A156592 (n + 1)

theorem P9604628829456548568.correct : P9604628829456548568.Spec := by
  intro n
  simp only [A156592, Nat.add_sub_cancel, A156592.P9604628829456548568.a, A156592.P11546580422876167646.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A175666, A175666.P11802829545752177848.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156592

/-! ## A156592.P10448118831973735729

`C(A079148(n+3), 2)`
-/

namespace A156592.P10448118831973735729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079148 (n + 3)).toNat 2

end

end A156592.P10448118831973735729

namespace A156592

/-- `C(A079148(n+3), 2)` -/
def P10448118831973735729.Spec : Prop :=
  ∀ n, (P10448118831973735729.a n : ℤ) = A156592 (n + 1)

end A156592

/-! ## A156592.P12305548537807255894

`A005384(n+1)*A079148(n+3)`
-/

namespace A156592.P12305548537807255894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) * A079148 (n + 3)

end

end A156592.P12305548537807255894

namespace A156592

/-- `A005384(n+1)*A079148(n+3)` -/
def P12305548537807255894.Spec : Prop :=
  ∀ n, P12305548537807255894.a n = A156592 (n + 1)

end A156592

/-! ## A156592.P13480734309734174441

`p?[A348511(n+1)]*A005385(n+1)`
-/

namespace A156592.P13480734309734174441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A005385 (n + 1)

end

end A156592.P13480734309734174441

namespace A156592

/-- `p?[A348511(n+1)]*A005385(n+1)` -/
def P13480734309734174441.Spec : Prop :=
  ∀ n, P13480734309734174441.a n = A156592 (n + 1)

end A156592

/-! ## A156592.P10558186406858725400

`∩[A124000(n+1), A231966(n+1)]`
-/

namespace A156592.P10558186406858725400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156592.P10558186406858725400

namespace A156592

/-- `∩[A124000(n+1), A231966(n+1)]` -/
def P10558186406858725400.Spec : Prop :=
  ∀ n, (P10558186406858725400.a n : ℤ) = A156592 (n + 1)

end A156592

/-! ## A156592.P7976653957804620058

`∩[A068443(n+1), A231966(n+1)]`
-/

namespace A156592.P7976653957804620058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156592.P7976653957804620058

namespace A156592

/-- `∩[A068443(n+1), A231966(n+1)]` -/
def P7976653957804620058.Spec : Prop :=
  ∀ n, (P7976653957804620058.a n : ℤ) = A156592 (n + 1)

end A156592

/-! ## A156592.P7152532766744625784

`C(p?[A164977(n+1)+1], 2)`
-/

namespace A156592.P7152532766744625784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A156592.P7152532766744625784

namespace A156592

/-- `C(p?[A164977(n+1)+1], 2)` -/
def P7152532766744625784.Spec : Prop :=
  ∀ n, (P7152532766744625784.a n : ℤ) = A156592 (n + 1)

end A156592

/-! ## A156592.P17988317079601481546

`record[C(A023590(n+1), 2)]`
-/

namespace A156592.P17988317079601481546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023590 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156592.P17988317079601481546

namespace A156592

/-- `record[C(A023590(n+1), 2)]` -/
def P17988317079601481546.Spec : Prop :=
  ∀ n, (P17988317079601481546.a n : ℤ) = A156592 (n + 1)

end A156592

/-! ## A156592.P3829410392682256104

`C(p?[A072055(n+1)], 2)`
-/

namespace A156592.P3829410392682256104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A156592.P3829410392682256104

namespace A156592

/-- `C(p?[A072055(n+1)], 2)` -/
def P3829410392682256104.Spec : Prop :=
  ∀ n, (P3829410392682256104.a n : ℤ) = A156592 (n + 1)

end A156592

/-! ## A156592.P5126793552034770323

`C(p?[2*A000040(n+1)+1], 2)`
-/

namespace A156592.P5126793552034770323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A156592.P5126793552034770323

namespace A156592

/-- `C(p?[2*A000040(n+1)+1], 2)` -/
def P5126793552034770323.Spec : Prop :=
  ∀ n, (P5126793552034770323.a n : ℤ) = A156592 (n + 1)

end A156592

/-! ## A156592.P10069722067232312882

`A000040(A072192(n+1))*A005385(n+1)`
-/

namespace A156592.P10069722067232312882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072192 (n + 1)).toNat * A005385 (n + 1)

end

end A156592.P10069722067232312882

namespace A156592

/-- `A000040(A072192(n+1))*A005385(n+1)` -/
def P10069722067232312882.Spec : Prop :=
  ∀ n, P10069722067232312882.a n = A156592 (n + 1)

end A156592

/-! ## A156592.P13877709929570936788

`A005384(n+1)*A023590(A072192(n+1))`
-/

namespace A156592.P13877709929570936788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) * A023590 (A072192 (n + 1)).toNat

end

end A156592.P13877709929570936788

namespace A156592

/-- `A005384(n+1)*A023590(A072192(n+1))` -/
def P13877709929570936788.Spec : Prop :=
  ∀ n, P13877709929570936788.a n = A156592 (n + 1)

end A156592

/-! ## A156592.P12619524825760084196

`∩[A008837(n+1), A068443(n+1)]`
-/

namespace A156592.P12619524825760084196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156592.P12619524825760084196

namespace A156592

/-- `∩[A008837(n+1), A068443(n+1)]` -/
def P12619524825760084196.Spec : Prop :=
  ∀ n, (P12619524825760084196.a n : ℤ) = A156592 (n + 1)

end A156592

/-!
# A156593: Triangle: q=2; m=1; t(n,k) = If[m == 0, n!, Product[Sum[(-1)^i*StirlingS2[ k - 1, i]*(m + 1)^i, {i, 0, k - 1}], {k, 1, n}]]; b(n,k,m) = If[n == 0, 1, t[n, m]/(t[k, m]*t[n - k, m])].

The programs for A156593, there is no canonical definition to state claims against.
-/

/-! ## A156593.P5295378178871569388

`A133692(A341773(A152655(n))²)`
-/

namespace A156593.P5295378178871569388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 (A341773 (A152655 n).toNat ^ 2).toNat

end

end A156593.P5295378178871569388

/-! ## A156593.P5692197173862074870

`A138951(A052331(A001263(n+1))²)`
-/

namespace A156593.P5692197173862074870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138951 (A052331 (A001263 (n + 1)).toNat ^ 2).toNat

end

end A156593.P5692197173862074870

/-!
# A156594: Triangle: q=3; m=2; t(n,k)=If[m == 0, n!, Product[Sum[(-1)^i*StirlingS2[ k - 1, i]*(m + 1)^i, {i, 0, k - 1}], {k, 1, n}]]; b(n,k,m)=If[n == 0, 1, t[n, m]/(t[k, m]*t[n - k, m])].

The programs for A156594, there is no canonical definition to state claims against.
-/

/-! ## A156594.P15228009737504924476

`A339702(A157151(n))`
-/

namespace A156594.P15228009737504924476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339702 (A157151 n).toNat

end

end A156594.P15228009737504924476

/-!
# A156595: Fixed point of the morphism 0->011, 1->010.

The programs for A156595, the canonical program `A156595.P4549591963331449160` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156595 has offset 0).

The definition of A156595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156595.P17413098044059063184

`char[A278997(n+1)]`
-/

namespace A156595.P17413098044059063184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156595.P17413098044059063184

namespace A156595

/-- `char[A278997(n+1)]` -/
def P17413098044059063184.Spec : Prop :=
  ∀ n, (P17413098044059063184.a n : ℤ) = A156595 n

end A156595

/-! ## A156595.P1469181876947622814

`Δ[A256184(n)]%2`
-/

namespace A156595.P1469181876947622814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A156595.P1469181876947622814

namespace A156595

/-- `Δ[A256184(n)]%2` -/
def P1469181876947622814.Spec : Prop :=
  ∀ n, P1469181876947622814.a n = A156595 n

end A156595

/-! ## A156595.P3800494106501473248

`and(1, Δ[A004488(n)])`
-/

namespace A156595.P3800494106501473248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A156595.P3800494106501473248

namespace A156595

/-- `and(1, Δ[A004488(n)])` -/
def P3800494106501473248.Spec : Prop :=
  ∀ n, P3800494106501473248.a n = A156595 n

end A156595

/-! ## A156595.P4549591963331449160

`and(1, Δ[A081603(n)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156595

/-- `and(1, Δ[A081603(n)])` -/
def P4549591963331449160.Spec : Prop :=
  ∀ n, P4549591963331449160.a n = A156595 n

theorem P4549591963331449160.correct : P4549591963331449160.Spec := by
  intro n
  simp only [A156595]

end A156595

/-! ## A156595.P4364092394419079488

`floor(cos(Δ[A189718(n)]))`
-/

namespace A156595.P4364092394419079488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (f1 (n + 1) - f1 n : ℝ)⌋

end

end A156595.P4364092394419079488

namespace A156595

/-- `floor(cos(Δ[A189718(n)]))` -/
def P4364092394419079488.Spec : Prop :=
  ∀ n, P4364092394419079488.a n = A156595 n

end A156595

/-! ## A156595.P17663934223630202263

`ceil(sin(ratio[A117942(n)]))`
-/

namespace A156595.P17663934223630202263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌉

end

end A156595.P17663934223630202263

namespace A156595

/-- `ceil(sin(ratio[A117942(n)]))` -/
def P17663934223630202263.Spec : Prop :=
  ∀ n, P17663934223630202263.a n = A156595 n

end A156595

/-! ## A156595.P2518029929981065407

`Δ[A117592(n)%3]²`
-/

namespace A156595.P2518029929981065407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117592 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A156595.P2518029929981065407

namespace A156595

/-- `Δ[A117592(n)%3]²` -/
def P2518029929981065407.Spec : Prop :=
  ∀ n, P2518029929981065407.a n = A156595 n

end A156595

/-! ## A156595.P8635173610025344750

`char[comp[A278996(n+1)]]`
-/

namespace A156595.P8635173610025344750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278996 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A156595.P8635173610025344750

namespace A156595

/-- `char[comp[A278996(n+1)]]` -/
def P8635173610025344750.Spec : Prop :=
  ∀ n, (P8635173610025344750.a n : ℤ) = A156595 n

end A156595

/-! ## A156595.P17868708233976754686

`char[A189716(n+1)-1]`
-/

namespace A156595.P17868708233976754686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A156595.P17868708233976754686

namespace A156595

/-- `char[A189716(n+1)-1]` -/
def P17868708233976754686.Spec : Prop :=
  ∀ n, (P17868708233976754686.a n : ℤ) = A156595 n

end A156595

/-! ## A156595.P12133114224207364661

`and(1, Δ[A061436(n+1)])`
-/

namespace A156595.P12133114224207364661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A156595.P12133114224207364661

namespace A156595

/-- `and(1, Δ[A061436(n+1)])` -/
def P12133114224207364661.Spec : Prop :=
  ∀ n, P12133114224207364661.a n = A156595 n

end A156595

/-! ## A156595.P4460287830534201047

`and(1, Δ[A117966(n)]+1)`
-/

namespace A156595.P4460287830534201047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n + 1)

end

end A156595.P4460287830534201047

namespace A156595

/-- `and(1, Δ[A117966(n)]+1)` -/
def P4460287830534201047.Spec : Prop :=
  ∀ n, P4460287830534201047.a n = A156595 n

end A156595

/-! ## A156595.P5693063946836584352

`abs(floor(acot(A113421(n+1))))`
-/

namespace A156595.P5693063946836584352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊SequenceMachineLib.acot (A113421 (n + 1) : ℝ)⌋|

end

end A156595.P5693063946836584352

namespace A156595

/-- `abs(floor(acot(A113421(n+1))))` -/
def P5693063946836584352.Spec : Prop :=
  ∀ n, P5693063946836584352.a n = A156595 n

end A156595

/-! ## A156595.P13868794208889032624

`A189718((Δ[A189718(n)]+1)²)`
-/

namespace A156595.P13868794208889032624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 ((f1 (n + 1) - f1 n + 1) ^ 2).toNat

end

end A156595.P13868794208889032624

namespace A156595

/-- `A189718((Δ[A189718(n)]+1)²)` -/
def P13868794208889032624.Spec : Prop :=
  ∀ n, P13868794208889032624.a n = A156595 n

end A156595

/-! ## A156595.P2650913185370212988

`A000045(abs(Δ[A004488(n)%2]))`
-/

namespace A156595.P2650913185370212988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004488 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |f1 (n + 1) - f1 n|.toNat

end

end A156595.P2650913185370212988

namespace A156595

/-- `A000045(abs(Δ[A004488(n)%2]))` -/
def P2650913185370212988.Spec : Prop :=
  ∀ n, P2650913185370212988.a n = A156595 n

end A156595

/-! ## A156595.P6195701086494470086

`xor(A080846(n+1), A182581(n+1))`
-/

namespace A156595.P6195701086494470086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080846 (n + 1)) (A182581 (n + 1))

end

end A156595.P6195701086494470086

namespace A156595

/-- `xor(A080846(n+1), A182581(n+1))` -/
def P6195701086494470086.Spec : Prop :=
  ∀ n, P6195701086494470086.a n = A156595 n

end A156595

/-! ## A156595.P6255692564386265591

`∑{d}[n+1, A011655(#-1)*A154271((n+1)/#)]`
-/

namespace A156595.P6255692564386265591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011655 (d - 1) * A154271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A156595.P6255692564386265591

namespace A156595

/-- `∑{d}[n+1, A011655(#-1)*A154271((n+1)/#)]` -/
def P6255692564386265591.Spec : Prop :=
  ∀ n, P6255692564386265591.a n = A156595 n

end A156595

/-! ## A156595.P262874060034447596

`abs(Δ[A064990(n)])`
-/

namespace A156595.P262874060034447596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A156595.P262874060034447596

namespace A156595

/-- `abs(Δ[A064990(n)])` -/
def P262874060034447596.Spec : Prop :=
  ∀ n, P262874060034447596.a n = A156595 n

end A156595

/-! ## A156595.P2047643001169100360

`A182581(A002517(n+1))`
-/

namespace A156595.P2047643001169100360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (A002517 (n + 1)).toNat

end

end A156595.P2047643001169100360

namespace A156595

/-- `A182581(A002517(n+1))` -/
def P2047643001169100360.Spec : Prop :=
  ∀ n, P2047643001169100360.a n = A156595 n

end A156595

/-! ## A156595.P13272251222231856410

`A000045(Δ[A064990(n)]²)`
-/

namespace A156595.P13272251222231856410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A156595.P13272251222231856410

namespace A156595

/-- `A000045(Δ[A064990(n)]²)` -/
def P13272251222231856410.Spec : Prop :=
  ∀ n, P13272251222231856410.a n = A156595 n

end A156595

/-!
# A156596: Infinite Fibonacci word fractal sequence.

The programs for A156596, the canonical program `A156596.P16517224717250966737` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156596 has offset 1).

The definition of A156596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156596.P8855672341190463646

`gcd(2, n+1)*Δ[floor((n+1)/ϕ)]`
-/

namespace A156596.P8855672341190463646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * (f1 (n + 1) - f1 n)

end

end A156596.P8855672341190463646

namespace A156596

/-- `gcd(2, n+1)*Δ[floor((n+1)/ϕ)]` -/
def P8855672341190463646.Spec : Prop :=
  ∀ n, P8855672341190463646.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P16517224717250966737

`(n%2+1)*A005614(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156596

/-- `(n%2+1)*A005614(n)` -/
def P16517224717250966737.Spec : Prop :=
  ∀ n, P16517224717250966737.a n = A156596 (n + 1)

theorem P16517224717250966737.correct : P16517224717250966737.Spec := by
  intro n
  simp only [A156596, Nat.add_sub_cancel]

end A156596

/-! ## A156596.P3651312546457181704

`log2(gcd(4, A014675(n)+2*n))`
-/

namespace A156596.P3651312546457181704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A014675 n + (2 * n : ℤ)) : ℝ)

end

end A156596.P3651312546457181704

namespace A156596

/-- `log2(gcd(4, A014675(n)+2*n))` -/
def P3651312546457181704.Spec : Prop :=
  ∀ n, P3651312546457181704.a n = (A156596 (n + 1) : ℝ)

end A156596

/-! ## A156596.P2363678458472497402

`char[floor(ϕ*(n+1))-1]*A000034(n)`
-/

namespace A156596.P2363678458472497402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000034 n

end

end A156596.P2363678458472497402

namespace A156596

/-- `char[floor(ϕ*(n+1))-1]*A000034(n)` -/
def P2363678458472497402.Spec : Prop :=
  ∀ n, P2363678458472497402.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P16299227460283177110

`val(A244586(Δ[floor((n+1)/ϕ)+n²]), 2)`
-/

namespace A156596.P16299227460283177110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ + (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A244586 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A156596.P16299227460283177110

namespace A156596

/-- `val(A244586(Δ[floor((n+1)/ϕ)+n²]), 2)` -/
def P16299227460283177110.Spec : Prop :=
  ∀ n, (P16299227460283177110.a n : ℤ) = A156596 (n + 1)

end A156596

/-! ## A156596.P14006119217047547908

`log2(Δ[floor(ϕ*(n+1))])*A236398(2*n+1)`
-/

namespace A156596.P14006119217047547908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ) * (A236398 (2 * n + 1) : ℝ)

end

end A156596.P14006119217047547908

namespace A156596

/-- `log2(Δ[floor(ϕ*(n+1))])*A236398(2*n+1)` -/
def P14006119217047547908.Spec : Prop :=
  ∀ n, P14006119217047547908.a n = (A156596 (n + 1) : ℝ)

end A156596

/-! ## A156596.P4798420076414186311

`A000032(and(2*n+1, Δ[floor(ϕ*(n+1))]))-1`
-/

namespace A156596.P4798420076414186311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land (2 * n + 1 : ℤ) (f1 (n + 1) - f1 n)).toNat - 1

end

end A156596.P4798420076414186311

namespace A156596

/-- `A000032(and(2*n+1, Δ[floor(ϕ*(n+1))]))-1` -/
def P4798420076414186311.Spec : Prop :=
  ∀ n, P4798420076414186311.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P15101687374977199844

`A088689(A287803(n+1))`
-/

namespace A156596.P15101687374977199844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (A287803 (n + 1)).toNat

end

end A156596.P15101687374977199844

namespace A156596

/-- `A088689(A287803(n+1))` -/
def P15101687374977199844.Spec : Prop :=
  ∀ n, P15101687374977199844.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P4307859473178463726

`A131743(A287658(n+1))`
-/

namespace A156596.P4307859473178463726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 (A287658 (n + 1)).toNat

end

end A156596.P4307859473178463726

namespace A156596

/-- `A131743(A287658(n+1))` -/
def P4307859473178463726.Spec : Prop :=
  ∀ n, P4307859473178463726.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P9915946583642221793

`A000034(n)*A005614(n)`
-/

namespace A156596.P9915946583642221793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A005614 n

end

end A156596.P9915946583642221793

namespace A156596

/-- `A000034(n)*A005614(n)` -/
def P9915946583642221793.Spec : Prop :=
  ∀ n, P9915946583642221793.a n = A156596 (n + 1)

theorem P9915946583642221793.correct : P9915946583642221793.Spec := by
  intro n
  simp only [A156596, Nat.add_sub_cancel, A156596.P9915946583642221793.a, A156596.P16517224717250966737.a, A000034, A000034.P10773112074177680709.a, A005614, A005614.P5927283876123815402.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156596

/-! ## A156596.P5810293935200480222

`A005614(n)*A084642(n)`
-/

namespace A156596.P5810293935200480222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A084642 n

end

end A156596.P5810293935200480222

namespace A156596

/-- `A005614(n)*A084642(n)` -/
def P5810293935200480222.Spec : Prop :=
  ∀ n, P5810293935200480222.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P3346867165980315937

`(A000035(n)+1)*A005614(n)`
-/

namespace A156596.P3346867165980315937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A005614 n

end

end A156596.P3346867165980315937

namespace A156596

/-- `(A000035(n)+1)*A005614(n)` -/
def P3346867165980315937.Spec : Prop :=
  ∀ n, P3346867165980315937.a n = A156596 (n + 1)

theorem P3346867165980315937.correct : P3346867165980315937.Spec := by
  intro n
  simp only [A156596, Nat.add_sub_cancel, A156596.P3346867165980315937.a, A156596.P16517224717250966737.a, A000035, A000035.P2023072528413494694.a, A005614, A005614.P5927283876123815402.a, A005206, A005206.P7910201692454662432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156596

/-! ## A156596.P7867765091634042308

`A000034(n)*A096270(n+1)`
-/

namespace A156596.P7867765091634042308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A096270 (n + 1)

end

end A156596.P7867765091634042308

namespace A156596

/-- `A000034(n)*A096270(n+1)` -/
def P7867765091634042308.Spec : Prop :=
  ∀ n, P7867765091634042308.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P3000727275891399382

`A005614(n)*A176895(2*n)`
-/

namespace A156596.P3000727275891399382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A176895 (2 * n)

end

end A156596.P3000727275891399382

namespace A156596

/-- `A005614(n)*A176895(2*n)` -/
def P3000727275891399382.Spec : Prop :=
  ∀ n, P3000727275891399382.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P5059510665803806494

`A000034(n)%A050141(n+1)`
-/

namespace A156596.P5059510665803806494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000034 n) (A050141 (n + 1))

end

end A156596.P5059510665803806494

namespace A156596

/-- `A000034(n)%A050141(n+1)` -/
def P5059510665803806494.Spec : Prop :=
  ∀ n, P5059510665803806494.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P16528190397447676912

`A001370(n)%A050141(n+1)`
-/

namespace A156596.P16528190397447676912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 n) (A050141 (n + 1))

end

end A156596.P16528190397447676912

namespace A156596

/-- `A001370(n)%A050141(n+1)` -/
def P16528190397447676912.Spec : Prop :=
  ∀ n, P16528190397447676912.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P6255065322542386063

`A010065(n)%A050141(n+1)`
-/

namespace A156596.P6255065322542386063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010065 n) (A050141 (n + 1))

end

end A156596.P6255065322542386063

namespace A156596

/-- `A010065(n)%A050141(n+1)` -/
def P6255065322542386063.Spec : Prop :=
  ∀ n, P6255065322542386063.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P6590303683258520176

`A010069(n)%A050141(n+1)`
-/

namespace A156596.P6590303683258520176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010069 n) (A050141 (n + 1))

end

end A156596.P6590303683258520176

namespace A156596

/-- `A010069(n)%A050141(n+1)` -/
def P6590303683258520176.Spec : Prop :=
  ∀ n, P6590303683258520176.a n = A156596 (n + 1)

end A156596

/-! ## A156596.P1346469045528139645

`A010686(n)%A050141(n+1)`
-/

namespace A156596.P1346469045528139645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010686 n) (A050141 (n + 1))

end

end A156596.P1346469045528139645

namespace A156596

/-- `A010686(n)%A050141(n+1)` -/
def P1346469045528139645.Spec : Prop :=
  ∀ n, P1346469045528139645.a n = A156596 (n + 1)

end A156596

/-!
# A156599: Triangle T(n, k, m) = t(n, m)/(t(k, m)*t(n-k, m)), where t(n, k) = Product_{j=1..n} p(j, k+1), p(n, x) = Sum_{j=0..n} (-1)^j*A053122(n, j)*x^j, and m = 5, read by rows.

The programs for A156599, there is no canonical definition to state claims against.
-/

/-! ## A156599.P17127302022522872172

`A329116(A173585(n))`
-/

namespace A156599.P17127302022522872172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (A173585 n).toNat

end

end A156599.P17127302022522872172

/-! ## A156599.P2011030754493665803

`A137396(4*A098568(n))`
-/

namespace A156599.P2011030754493665803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137396 (4 * A098568 n).toNat

end

end A156599.P2011030754493665803

/-! ## A156599.P12589583659776803618

`A363779(2*(A007318(n)+1)²)`
-/

namespace A156599.P12589583659776803618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363779 (2 * (A007318 n + 1) ^ 2).toNat

end

end A156599.P12589583659776803618

/-! ## A156599.P4943727442597050304

`A116469(n+1)*A117162(A116469(n+1))`
-/

namespace A156599.P4943727442597050304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 (n + 1) * A117162 (A116469 (n + 1)).toNat

end

end A156599.P4943727442597050304

/-! ## A156599.P13736930996934060562

`A067856(A172302(n+1))*A116469(n+1)`
-/

namespace A156599.P13736930996934060562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A172302 (n + 1)).toNat * A116469 (n + 1)

end

end A156599.P13736930996934060562

