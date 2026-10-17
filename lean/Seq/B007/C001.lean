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
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A172067.P8128341851257573489

`Δ[A172066(n)-∑[A172064(n)]]`
-/

namespace A172067.P8128341851257573489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172066 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172067.P8128341851257573489

noncomputable section

/-- A172067: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=10.

Offset 0, canonical program `A172067.P8128341851257573489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172067 (n : ℕ) : ℤ :=
  A172067.P8128341851257573489.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A172067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176224.P7399068725741792420

`A099627(n)-A089633(n)`
-/

namespace A176224.P7399068725741792420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n - A089633 n

end

end A176224.P7399068725741792420

noncomputable section

/-- A176224: A symmetrical triangle sequence: T(n, k) = q^k + q^(n-k) - q^n, with q=2.

Offset 0, canonical program `A176224.P7399068725741792420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176224 (n : ℕ) : ℤ :=
  A176224.P7399068725741792420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177264.P12625146371770321732

`A177263(A038722(n+1))+A000007(n+4)`
-/

namespace A177264.P12625146371770321732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177263 (A038722 (n + 1)).toNat + A000007 (n + 4)

end

end A177264.P12625146371770321732

noncomputable section

/-- A177264: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k as the first entry in the last block (1<=k<=n).

Offset 1, canonical program `A177264.P12625146371770321732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177264 (n : ℕ) : ℤ :=
  A177264.P12625146371770321732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A177264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178623.P14236001565579889142

`A130296(lt[1, A143544(n+1)])`
-/

namespace A178623.P14236001565579889142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A178623.P14236001565579889142

noncomputable section

/-- A178623: Triangle T(n,m) read by rows: T(n,0)= prime(n); T(n,m)=1 if m>=1.

Offset 0, canonical program `A178623.P14236001565579889142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A178623 (n : ℕ) : ℤ :=
  A178623.P14236001565579889142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A178623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178756.P13128760247326901510

`A051129(n+2)*A127779(n+1)`
-/

namespace A178756.P13128760247326901510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 2) * A127779 (n + 1)

end

end A178756.P13128760247326901510

noncomputable section

/-- A178756: Rectangular array T(n,k) = binomial(n,2)*k*n^(k-1) read by antidiagonals.

Offset 2, canonical program `A178756.P13128760247326901510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4295 terms. -/
def A178756 (n : ℕ) : ℤ :=
  A178756.P13128760247326901510.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4295 terms. -/
def A178756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180987.P1087486024587690451

`A030528(eq[0, A145677(n)]+1)`
-/

namespace A180987.P1087486024587690451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180987.P1087486024587690451

noncomputable section

/-- A180987: T(n,k)=number of nXk binary matrices with rows in lexicographically nonincreasing order and columns in lexicographically strictly increasing order.

Offset 1, canonical program `A180987.P1087486024587690451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A180987 (n : ℕ) : ℤ :=
  A180987.P1087486024587690451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A180987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181118.P14712911132165439164

`A057555(xor(1, n)+1)`
-/

namespace A181118.P14712911132165439164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (Nat.xor 1 n + 1)

end

end A181118.P14712911132165439164

noncomputable section

/-- A181118: Sequencing of all rational numbers p/q > 0 as ordered pairs (p,q). The rational (p,q) occurs as the n-th ordered pair where n=(p+q-1)*(p+q-2)/2+q.

Offset 1, canonical program `A181118.P14712911132165439164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181118 (n : ℕ) : ℤ :=
  A181118.P14712911132165439164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181986.P2870521269527249450

`A007089(A049354(n+1))`
-/

namespace A181986.P2870521269527249450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A049354 (n + 1)).toNat

end

end A181986.P2870521269527249450

noncomputable section

/-- A181986: Digitally balanced numbers: ternary numbers which have the same number of 0's as 1's as 2's.

Offset 1, canonical program `A181986.P2870521269527249450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A181986 (n : ℕ) : ℤ :=
  A181986.P2870521269527249450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A181986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185740.P16449816303873469913

`A130123(n)+A073424(n)`
-/

namespace A185740.P16449816303873469913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n + A073424 n

end

end A185740.P16449816303873469913

noncomputable section

/-- A185740: Weight array of A185738, by antidiagonals.

Offset 1, canonical program `A185740.P16449816303873469913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185740 (n : ℕ) : ℤ :=
  A185740.P16449816303873469913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191448.P14418744543329355143

`A075300(A066182(n+1))`
-/

namespace A191448.P14418744543329355143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A066182 (n + 1)).toNat

end

end A191448.P14418744543329355143

noncomputable section

/-- A191448: Dispersion of the odd integers greater than 1, by antidiagonals.

Offset 1, canonical program `A191448.P14418744543329355143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191448 (n : ℕ) : ℤ :=
  A191448.P14418744543329355143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193738.P15912685866539530359

`A002260(A132128(n+1))`
-/

namespace A193738.P15912685866539530359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A132128 (n + 1)).toNat

end

end A193738.P15912685866539530359

noncomputable section

/-- A193738: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=q(n,x)=x^n+x^(n-1)+...+x+1.

Offset 0, canonical program `A193738.P15912685866539530359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738 (n : ℕ) : ℤ :=
  A193738.P15912685866539530359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195587.P8776155020400804503

`A061347(n+1)*A379007(n+1)`
-/

namespace A195587.P8776155020400804503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A379007 (n + 1)

end

end A195587.P8776155020400804503

noncomputable section

/-- A195587: a(n) = A163659(n^2), where A163659 is the logarithmic derivative of Stern's diatomic series (A002487).

Offset 1, canonical program `A195587.P8776155020400804503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195587 (n : ℕ) : ℤ :=
  A195587.P8776155020400804503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202452.P9644415859408235148

`A000045(A185914(n+1))`
-/

namespace A202452.P9644415859408235148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A185914 (n + 1)).toNat

end

end A202452.P9644415859408235148

noncomputable section

/-- A202452: Lower triangular Fibonacci matrix, by SW antidiagonals.

Offset 1, canonical program `A202452.P9644415859408235148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202452 (n : ℕ) : ℤ :=
  A202452.P9644415859408235148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A202452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203994.P3590551673523168265

`A024000(A049581(n))`
-/

namespace A203994.P3590551673523168265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A049581 n).toNat

end

end A203994.P3590551673523168265

noncomputable section

/-- A203994: Symmetric matrix based on f(i,j) = (i+j)*min{i,j}, by antidiagonals.

Offset 1, canonical program `A203994.P3590551673523168265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203994 (n : ℕ) : ℤ :=
  A203994.P3590551673523168265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204000.P8902930415265516511

`A203996(n+1)-1`
-/

namespace A204000.P8902930415265516511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) - 1

end

end A204000.P8902930415265516511

noncomputable section

/-- A204000: Symmetric matrix based on f(i,j)=min{i(j+1)-1,j(i+1)-1}, by antidiagonals.

Offset 1, canonical program `A204000.P8902930415265516511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204000 (n : ℕ) : ℤ :=
  A204000.P8902930415265516511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204002.P9170286212412624765

`A203996(n+1)+A176270(n)`
-/

namespace A204002.P9170286212412624765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) + A176270 n

end

end A204002.P9170286212412624765

noncomputable section

/-- A204002: Symmetric matrix based on f(i,j)=min{2i+j,i+2j}, by antidiagonals.

Offset 1, canonical program `A204002.P9170286212412624765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204002 (n : ℕ) : ℤ :=
  A204002.P9170286212412624765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204008.P190403554516119161

`A131507(n)+A049581(n)`
-/

namespace A204008.P190403554516119161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + A049581 n

end

end A204008.P190403554516119161

noncomputable section

/-- A204008: Symmetric matrix based on f(i,j) = max{3i+j-3,i+3j-3}, by antidiagonals.

Offset 1, canonical program `A204008.P190403554516119161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204008 (n : ℕ) : ℤ :=
  A204008.P190403554516119161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204012.P8035036335366724817

`A131507(n)-A049581(n)`
-/

namespace A204012.P8035036335366724817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A049581 n

end

end A204012.P8035036335366724817

noncomputable section

/-- A204012: Symmetric matrix based on f(i,j)=min{3i+j-3,i+3j-3}, by antidiagonals.

Offset 1, canonical program `A204012.P8035036335366724817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204012 (n : ℕ) : ℤ :=
  A204012.P8035036335366724817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204022.P5041661320422895112

`A002024(n+1)+A049581(n)`
-/

namespace A204022.P5041661320422895112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A049581 n

end

end A204022.P5041661320422895112

noncomputable section

/-- A204022: Symmetric matrix based on f(i,j) = max(2i-1, 2j-1), by antidiagonals.

Offset 1, canonical program `A204022.P5041661320422895112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204022 (n : ℕ) : ℤ :=
  A204022.P5041661320422895112.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204030.P9231576085307590684

`gcd(A128227(n)+1, A049581(n))`
-/

namespace A204030.P9231576085307590684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128227 n + 1) (A049581 n)

end

end A204030.P9231576085307590684

noncomputable section

/-- A204030: Symmetric matrix based on f(i,j) = gcd(i+1, j+1), by antidiagonals.

Offset 1, canonical program `A204030.P9231576085307590684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204030 (n : ℕ) : ℤ :=
  (A204030.P9231576085307590684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204158.P9414050647087276641

`A204154(n+1)+A049581(n)`
-/

namespace A204158.P9414050647087276641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204154 (n + 1) + A049581 n

end

end A204158.P9414050647087276641

noncomputable section

/-- A204158: Symmetric matrix based on f(i,j)=max(3i-2j, 3j-2i), by antidiagonals.

Offset 1, canonical program `A204158.P9414050647087276641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204158 (n : ℕ) : ℤ :=
  A204158.P9414050647087276641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205376.P17692013997868668621

`8*A049777(n+1)`
-/

namespace A205376.P17692013997868668621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A049777 (n + 1)

end

end A205376.P17692013997868668621

noncomputable section

/-- A205376: Ordered differences of distinct odd squares, stored in triangle.

Offset 1, canonical program `A205376.P17692013997868668621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205376 (n : ℕ) : ℤ :=
  A205376.P17692013997868668621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205392.P956909529108325684

`A004525(A120070(n+2))`
-/

namespace A205392.P956909529108325684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A120070 (n + 2)).toNat

end

end A205392.P956909529108325684

noncomputable section

/-- A205392: Ordered differences of numbers s(j)=ceiling(j^2/2).

Offset 1, canonical program `A205392.P956909529108325684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A205392 (n : ℕ) : ℤ :=
  A205392.P956909529108325684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. -/
def A205392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205400.P14668994081946104060

`A143902(n+1)+A128177(n+1)`
-/

namespace A205400.P14668994081946104060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143902 (n + 1) + A128177 (n + 1)

end

end A205400.P14668994081946104060

noncomputable section

/-- A205400: Ordered differences of quarter-squares.

Offset 1, canonical program `A205400.P14668994081946104060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205400 (n : ℕ) : ℤ :=
  A205400.P14668994081946104060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205556.P5027991820685192587

`lt[1, gcd(3, A049777(n+1))]+1`
-/

namespace A205556.P5027991820685192587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A049777 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A205556.P5027991820685192587

noncomputable section

/-- A205556: Positions of multiples of 2 in A204922 (differences of Fibonacci numbers).

Offset 1, canonical program `A205556.P5027991820685192587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5539 terms. -/
def A205556 (n : ℕ) : ℤ :=
  (A205556.P5027991820685192587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5539 terms. -/
def A205556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205678.P13105615205405818687

`A002260(A205676(n+1))`
-/

namespace A205678.P13105615205405818687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205676 (n + 1)).toNat

end

end A205678.P13105615205405818687

noncomputable section

/-- A205678: The number j such that 4 divides prime(k)-prime(j), where k(n)=A205677(n).

Offset 1, canonical program `A205678.P13105615205405818687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205678 (n : ℕ) : ℤ :=
  A205678.P13105615205405818687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205690.P15675749625037910183

`∩[A205559(n+1), A080036(n)]`
-/

namespace A205690.P15675749625037910183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205690.P15675749625037910183

noncomputable section

/-- A205690: Positions of multiples of 6 in A204890 (differences of primes).

Offset 1, canonical program `A205690.P15675749625037910183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205690 (n : ℕ) : ℤ :=
  (A205690.P15675749625037910183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. -/
def A205690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205718.P15912331110075494012

`∩[A205683(n+1), A080036(n)]`
-/

namespace A205718.P15912331110075494012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205718.P15912331110075494012

noncomputable section

/-- A205718: Positions of multiples of 10 in A204890 (differences of primes).

Offset 1, canonical program `A205718.P15912331110075494012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A205718 (n : ℕ) : ℤ :=
  (A205718.P15912331110075494012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A205718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206772.P13480883509910150050

`A279891(n)+A204154(n+1)`
-/

namespace A206772.P13480883509910150050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + A204154 (n + 1)

end

end A206772.P13480883509910150050

noncomputable section

/-- A206772: Table T(n,k)=max{4*n+k-4,n+4*k-4} n, k > 0, read by antidiagonals.

Offset 1, canonical program `A206772.P13480883509910150050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A206772 (n : ℕ) : ℤ :=
  A206772.P13480883509910150050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A206772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209279.P8779630020015186238

`A004526(A131307(n+1)+1)`
-/

namespace A209279.P8779630020015186238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131307 (n + 1) + 1).toNat

end

end A209279.P8779630020015186238

noncomputable section

/-- A209279: First inverse function (numbers of rows) for pairing function A185180.

Offset 1, canonical program `A209279.P8779630020015186238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209279 (n : ℕ) : ℤ :=
  A209279.P8779630020015186238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210530.P18136782115304804979

`∑[2-A019425(A130296(n+1))]`
-/

namespace A210530.P18136782115304804979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A019425 (A130296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210530.P18136782115304804979

noncomputable section

/-- A210530: T(n,k) = (k + 3*n - 2 - (k+n-2)*(-1)^(k+n))/2 n, k > 0, read by antidiagonals.

Offset 1, canonical program `A210530.P18136782115304804979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210530 (n : ℕ) : ℤ :=
  A210530.P18136782115304804979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211955.P3134734577332514007

`ceil(A123519(n)/2)`
-/

namespace A211955.P3134734577332514007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123519 n : ℚ) / 2⌉

end

end A211955.P3134734577332514007

noncomputable section

/-- A211955: Triangle of coefficients of a polynomial sequence related to the Morgan-Voyce polynomials A085478.

Offset 0, canonical program `A211955.P3134734577332514007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211955 (n : ℕ) : ℤ :=
  A211955.P3134734577332514007.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213774.P653417461158321534

`A213768(A014132(n+1))-A005408(A002024(n+1))`
-/

namespace A213774.P653417461158321534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213768 (A014132 (n + 1)).toNat - A005408 (A002024 (n + 1)).toNat

end

end A213774.P653417461158321534

noncomputable section

/-- A213774: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = 2*n-3+2*h, F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213774.P653417461158321534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213774 (n : ℕ) : ℤ :=
  A213774.P653417461158321534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A213774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213786.P3878037431570602295

`A099392(A020986(n))-A008619(n)`
-/

namespace A213786.P3878037431570602295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A020986 n).toNat - A008619 n

end

end A213786.P3878037431570602295

noncomputable section

/-- A213786: a(n) = Sum_{1<=i

Offset 0, canonical program `A213786.P3878037431570602295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213786 (n : ℕ) : ℤ :=
  A213786.P3878037431570602295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214412.P17651394908834805650

`comp[A141169(n)+A193739(n)²]`
-/

namespace A214412.P17651394908834805650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A193739 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A214412.P17651394908834805650

noncomputable section

/-- A214412: Numbers that can't be expressed as the sum of a Fibonacci number and a square of a positive integer.

Offset 1, canonical program `A214412.P17651394908834805650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A214412 (n : ℕ) : ℤ :=
  (A214412.P17651394908834805650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A214412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215630.P5926163598212012995

`A144216(n+1)+1+n`
-/

namespace A215630.P5926163598212012995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (n + 1) + 1 + (n : ℤ)

end

end A215630.P5926163598212012995

noncomputable section

/-- A215630: Triangle read by rows: T(n,k) = n^2 - n*k + k^2, 1 <= k <= n.

Offset 1, canonical program `A215630.P5926163598212012995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215630 (n : ℕ) : ℤ :=
  A215630.P5926163598212012995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A215630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215655.P274844341247519406

`2*A057555(xor(1, n)+1)`
-/

namespace A215655.P274844341247519406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057555 (Nat.xor 1 n + 1)

end

end A215655.P274844341247519406

noncomputable section

/-- A215655: Irregular triangle read by rows: reading the n-th row describes all the numbers seen in the triangle up to the end of the n-th row.

Offset 1, canonical program `A215655.P274844341247519406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A215655 (n : ℕ) : ℤ :=
  A215655.P274844341247519406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A215655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218036.P14499550244412564791

`A154614(n+1)+2`
-/

namespace A218036.P14499550244412564791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) + 2

end

end A218036.P14499550244412564791

noncomputable section

/-- A218036: a(n) = (n+1) + (n+3/2)*H(n) - (H(n)^3)/2, where H(n) = A002024(n).

Offset 1, canonical program `A218036.P14499550244412564791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218036 (n : ℕ) : ℤ :=
  A218036.P14499550244412564791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218485.P11683830369572626684

`record[A120070(A061579(n)+2)]`
-/

namespace A218485.P11683830369572626684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A061579 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218485.P11683830369572626684

noncomputable section

/-- A218485: Positive numbers differing from next greater square by a square.

Offset 1, canonical program `A218485.P11683830369572626684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A218485 (n : ℕ) : ℤ :=
  A218485.P11683830369572626684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A218485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219531.P2826553654713780337

`∑[A008863(A028310(n)-1)]`
-/

namespace A219531.P2826553654713780337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219531.P2826553654713780337

noncomputable section

/-- A219531: a(n) = Sum_{k=0..11} C(n, k).

Offset 0, canonical program `A219531.P2826553654713780337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219531 (n : ℕ) : ℤ :=
  A219531.P2826553654713780337.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220073.P10030313601789214799

`A101688(n)+A049581(n)`
-/

namespace A220073.P10030313601789214799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n + A049581 n

end

end A220073.P10030313601789214799

noncomputable section

/-- A220073: Mirror of the triangle A130517.

Offset 1, canonical program `A220073.P10030313601789214799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220073 (n : ℕ) : ℤ :=
  A220073.P10030313601789214799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220348.P6667135359390539441

`A193739(n)+a(A002262(n))` with `a(0)=1`
-/

namespace A220348.P6667135359390539441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193739 n + a (A002262 n).toNat

end

end A220348.P6667135359390539441

noncomputable section

/-- A220348: Index of row where n occurs in A183079.

Offset 1, canonical program `A220348.P6667135359390539441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220348 (n : ℕ) : ℤ :=
  A220348.P6667135359390539441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220464.P10847432535760796563

`A057555(A099375(n))`
-/

namespace A220464.P10847432535760796563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A099375 n).toNat

end

end A220464.P10847432535760796563

noncomputable section

/-- A220464: Reverse reluctant sequence of reluctant sequence A002260.

Offset 1, canonical program `A220464.P10847432535760796563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220464 (n : ℕ) : ℤ :=
  A220464.P10847432535760796563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222946.P18161529280472622073

`and(A054431(n+1), A103217(n))*A055096(n+2)`
-/

namespace A222946.P18161529280472622073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A103217 n) * A055096 (n + 2)

end

end A222946.P18161529280472622073

noncomputable section

/-- A222946: Triangle for hypotenuses of primitive Pythagorean triangles.

Offset 2, canonical program `A222946.P18161529280472622073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A222946 (n : ℕ) : ℤ :=
  A222946.P18161529280472622073.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A222946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224701.P15756178297460564340

`2*A224380(n+1)-1`
-/

namespace A224701.P15756178297460564340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224380 (n + 1) - 1

end

end A224701.P15756178297460564340

noncomputable section

/-- A224701: Table read by antidiagonals of numbers of form (2^n - 1)*2^(m+3) + 5 where n>=1, m>=1.

Offset 1, canonical program `A224701.P15756178297460564340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A224701 (n : ℕ) : ℤ :=
  A224701.P15756178297460564340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A224701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227984.P7060352613725131740

`A130330(n)/A204116(n+1)`
-/

namespace A227984.P7060352613725131740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130330 n : ℚ) / (A204116 (n + 1) : ℚ)

end

end A227984.P7060352613725131740

noncomputable section

/-- A227984: Triangle T(n,k), read by rows: T(n,k) is the numerator of (1-2^(n-k+1))/(1-2^(k+1)).

Offset 0, canonical program `A227984.P7060352613725131740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A227984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227984.P7060352613725131740.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A227984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228035.P16229329400387151927

`A143088(n)/gcd(A130328(n)², A143088(n))`
-/

namespace A228035.P16229329400387151927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143088 n : ℚ) / (Int.gcd (A130328 n ^ 2) (A143088 n) : ℚ)

end

end A228035.P16229329400387151927

noncomputable section

/-- A228035: Triangle T(n,k), read by rows: T(n,k) is the denominator of (1-2^(n-k+1))/(1-2^(k+1)).

Offset 0, canonical program `A228035.P16229329400387151927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A228035.P16229329400387151927.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228371.P10828106634153068610

`gcd(∑[A094267(n)], A214546(n))`
-/

namespace A228371.P10828106634153068610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A214546 n)

end

end A228371.P10828106634153068610

noncomputable section

/-- A228371: First differences of A228370. Also A001511 and A006519 interleaved.

Offset 1, canonical program `A228371.P10828106634153068610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228371 (n : ℕ) : ℤ :=
  (A228371.P10828106634153068610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233932.P2836833035610206240

`Δ[A008619(A004202(a(n-1)))]` with `a(0)=1`
-/

namespace A233932.P2836833035610206240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008619 (A004202 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233932.P2836833035610206240

noncomputable section

/-- A233932: Irregular table read by rows: T(n,k) is the binary representation of n shifted right k times and incremented if the last bit shifted away was set.

Offset 1, canonical program `A233932.P2836833035610206240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A233932 (n : ℕ) : ℤ :=
  A233932.P2836833035610206240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A233932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239714.P9329514972189583921

`A239712(eq[1, A239712(n+1)%3]+1)`
-/

namespace A239714.P9329514972189583921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239712 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A239714.P9329514972189583921

noncomputable section

/-- A239714: Primes of the form m = 4^i + 4^j - 1, where i > j >= 0.

Offset 1, canonical program `A239714.P9329514972189583921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A239714 (n : ℕ) : ℤ :=
  A239714.P9329514972189583921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A239714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240876.P12730443081561685234

`∑[A035706(n)]`
-/

namespace A240876.P12730443081561685234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240876.P12730443081561685234

noncomputable section

/-- A240876: Expansion of (1 + x)^11 / (1 - x)^12.

Offset 0, canonical program `A240876.P12730443081561685234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240876 (n : ℕ) : ℤ :=
  A240876.P12730443081561685234.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241957.P141546297856735390

`2*A075300(n)+1`
-/

namespace A241957.P141546297856735390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075300 n + 1

end

end A241957.P141546297856735390

noncomputable section

/-- A241957: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = 2^n*(2*k - 1) - 1, n,k >= 1.

Offset 1, canonical program `A241957.P141546297856735390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241957 (n : ℕ) : ℤ :=
  A241957.P141546297856735390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246017.P17242805474643553685

`∑[A246016(n)]`
-/

namespace A246017.P17242805474643553685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246017.P17242805474643553685

noncomputable section

/-- A246017: Partial sums of A246016.

Offset 0, canonical program `A246017.P17242805474643553685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246017 (n : ℕ) : ℤ :=
  A246017.P17242805474643553685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249866.P2760361692551330954

`and(A054431(n+1), A073216(n))`
-/

namespace A249866.P2760361692551330954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A073216 n)

end

end A249866.P2760361692551330954

noncomputable section

/-- A249866: Characteristic triangle for primitive Pythagorean triples.

Offset 2, canonical program `A249866.P2760361692551330954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249866 (n : ℕ) : ℤ :=
  A249866.P2760361692551330954.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256560.P10189218502537202963

`A055096(n+2)+A256497(n+1)`
-/

namespace A256560.P10189218502537202963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) + A256497 (n + 1)

end

end A256560.P10189218502537202963

noncomputable section

/-- A256560: Triangle read by rows, sums of 2 distinct nonzero squares plus sums of 2 distinct nonzero cubes: T(n,k) = n^2 + k^2 + n^3 + k^3, 1 <= k <= n-1.

Offset 2, canonical program `A256560.P10189218502537202963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055096, A256497, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256560 (n : ℕ) : ℤ :=
  A256560.P10189218502537202963.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055096, A256497, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259477.P5518667962722059366

`A135278(n)*A193739(n)`
-/

namespace A259477.P5518667962722059366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A193739 n

end

end A259477.P5518667962722059366

noncomputable section

/-- A259477: Triangle of numbers where T(n,k) is the number of k-dimensional faces on a partially truncated n-dimensional simplex, 0 <= k <= n.

Offset 0, canonical program `A259477.P5518667962722059366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259477 (n : ℕ) : ℤ :=
  A259477.P5518667962722059366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259575.P7201171947853536315

`A259572(n+1)+A054431(n+1)`
-/

namespace A259575.P7201171947853536315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (n + 1) + A054431 (n + 1)

end

end A259575.P7201171947853536315

noncomputable section

/-- A259575: Reciprocity array of 1; rectangular, read by antidiagonals.

Offset 1, canonical program `A259575.P7201171947853536315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259575 (n : ℕ) : ℤ :=
  A259575.P7201171947853536315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A259575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267448.P14106542243018115986

`∑[A267447(n)]`
-/

namespace A267448.P14106542243018115986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267448.P14106542243018115986

noncomputable section

/-- A267448: Total number of OFF (white) cells after n iterations of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267448.P14106542243018115986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267448 (n : ℕ) : ℤ :=
  A267448.P14106542243018115986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274701.P11955321872613421849

`A080513(A067731(n))`
-/

namespace A274701.P11955321872613421849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A067731 n).toNat

end

end A274701.P11955321872613421849

noncomputable section

/-- A274701: First differences of A259280.

Offset 1, canonical program `A274701.P11955321872613421849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274701 (n : ℕ) : ℤ :=
  A274701.P11955321872613421849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277546.P11287920623123426190

`A010877((n+1)/A268355(n+1))`
-/

namespace A277546.P11287920623123426190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A268355 (n + 1) : ℚ))).toNat

end

end A277546.P11287920623123426190

noncomputable section

/-- A277546: a(n) = n/8^m mod 8, where 8^m is the greatest power of 8 that divides n.

Offset 1, canonical program `A277546.P11287920623123426190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277546 (n : ℕ) : ℤ :=
  A277546.P11287920623123426190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277937.P17394316521050978661

`n-(A239906(n)+A014081(n))`
-/

namespace A277937.P17394316521050978661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A239906 n + A014081 n)

end

end A277937.P17394316521050978661

noncomputable section

/-- A277937: Number of runs of 1's of length 1 in the binary expansion of n.

Offset 0, canonical program `A277937.P17394316521050978661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277937 (n : ℕ) : ℤ :=
  A277937.P17394316521050978661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279415.P13072635906519015695

`(2-Δ[A274773(n+1)])*(1-C(n, n²))`
-/

namespace A279415.P13072635906519015695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * (1 - (Nat.choose n (n ^ 2) : ℤ))

end

end A279415.P13072635906519015695

noncomputable section

/-- A279415: Triangle read by rows: T(n,k), n>=k>=1, is the number of right isosceles triangles with integral coordinates that have a bounding box of size n X k.

Offset 1, canonical program `A279415.P13072635906519015695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279415 (n : ℕ) : ℤ :=
  A279415.P13072635906519015695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A279415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280048.P14757921311873397482

`A130784(n)*A309873(n+1)`
-/

namespace A280048.P14757921311873397482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 n * A309873 (n + 1)

end

end A280048.P14757921311873397482

noncomputable section

/-- A280048: The Tower of Hanoi word, with a,b,c,a-bar,b-bar,c-bar encoded as 1,2,3,-1,-2,-3 respectively.

Offset 0, canonical program `A280048.P14757921311873397482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280048 (n : ℕ) : ℤ :=
  A280048.P14757921311873397482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280999.P3057871319140881242

`eq[1, A032741(A092339(n))]`
-/

namespace A280999.P3057871319140881242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A092339 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280999.P3057871319140881242

noncomputable section

/-- A280999: Numbers with a prime number of 0's in their binary reflected Gray code representation.

Offset 1, canonical program `A280999.P3057871319140881242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4790 terms. -/
def A280999 (n : ℕ) : ℤ :=
  (A280999.P3057871319140881242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4790 terms. -/
def A280999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282451.P7052189223115230178

`A280411(xor(1, n))`
-/

namespace A282451.P7052189223115230178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 (Nat.xor 1 n)

end

end A282451.P7052189223115230178

noncomputable section

/-- A282451: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282451.P7052189223115230178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282451 (n : ℕ) : ℤ :=
  A282451.P7052189223115230178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285898.P6248290526350817964

`val(A077320(A049777(n+1)), A077320(n+1))`
-/

namespace A285898.P6248290526350817964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077320 (A049777 (n + 1)).toNat).toNat (A077320 (n + 1)).toNat

end

end A285898.P6248290526350817964

noncomputable section

/-- A285898: Triangle read by row: T(n,k) = number of partitions of n into exactly k consecutive parts (1 <= k <= n).

Offset 1, canonical program `A285898.P6248290526350817964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A285898 (n : ℕ) : ℤ :=
  (A285898.P6248290526350817964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A285898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285974.P6886808199461892070

`A285962(n+1)+1`
-/

namespace A285974.P6886808199461892070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285962 (n + 1) + 1

end

end A285974.P6886808199461892070

noncomputable section

/-- A285974: Positions of 1 in A285972; complement of A285973.

Offset 1, canonical program `A285974.P6886808199461892070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285974 (n : ℕ) : ℤ :=
  A285974.P6886808199461892070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286564.P14826098464724168033

`val(A007401(n+2)-(n+1), A193739(A007401(n+2)))`
-/

namespace A286564.P14826098464724168033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007401 (n + 2) - (n + 1 : ℤ)).toNat (A193739 (A007401 (n + 2)).toNat).toNat

end

end A286564.P14826098464724168033

noncomputable section

/-- A286564: Triangular table A286563 reversed.

Offset 1, canonical program `A286564.P14826098464724168033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A286564 (n : ℕ) : ℤ :=
  (A286564.P14826098464724168033.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A286564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289992.P12730023669115640224

`∑[2*A244880(n)]-A244880(n)`
-/

namespace A289992.P12730023669115640224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A244880 n

end

end A289992.P12730023669115640224

noncomputable section

/-- A289992: Number of magic labelings of the prism graph I X C_8 having magic sum n.

Offset 0, canonical program `A289992.P12730023669115640224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289992 (n : ℕ) : ℤ :=
  A289992.P12730023669115640224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300294.P16691287766721128725

`A054431(C(2, n)+n)`
-/

namespace A300294.P16691287766721128725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (Nat.choose 2 n + n)

end

end A300294.P16691287766721128725

noncomputable section

/-- A300294: Irregular triangle giving the GCD characteristic: T(1, 1) = 1 and, for n >= 2 and 1 <= m <= n-1, T(n, m) = 1 if gcd(n, m) = 1 and 0 otherwise.

Offset 1, canonical program `A300294.P16691287766721128725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300294 (n : ℕ) : ℤ :=
  A300294.P16691287766721128725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300624.P1798579072279093080

`A008421(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A300624.P1798579072279093080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008421 (n - 1) + a (n - 1)

end

end A300624.P1798579072279093080

noncomputable section

/-- A300624: Figurate numbers based on the 11-dimensional regular convex polytope called the 11-dimensional cross-polytope, or 11-dimensional hyperoctahedron.

Offset 0, canonical program `A300624.P1798579072279093080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300624 (n : ℕ) : ℤ :=
  A300624.P1798579072279093080.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304337.P3685069978609455408

`A133256(A253146(n+1))`
-/

namespace A304337.P3685069978609455408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A253146 (n + 1)).toNat

end

end A304337.P3685069978609455408

noncomputable section

/-- A304337: Lexicographically earliest fractal-like sequence such that the erasure of all pairs of contiguous terms of opposite parity leaves the sequence unchanged.

Offset 1, canonical program `A304337.P3685069978609455408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304337 (n : ℕ) : ℤ :=
  A304337.P3685069978609455408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A304337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305724.P8769741493615946767

`∑[A035747(n)]`
-/

namespace A305724.P8769741493615946767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305724.P8769741493615946767

noncomputable section

/-- A305724: Crystal ball sequence for the lattice C_10.

Offset 0, canonical program `A305724.P8769741493615946767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305724 (n : ℕ) : ℤ :=
  A305724.P8769741493615946767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309557.P6394933625690260118

`A128226(n+1)+1`
-/

namespace A309557.P6394933625690260118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128226 (n + 1) + 1

end

end A309557.P6394933625690260118

noncomputable section

/-- A309557: Number triangle with T(n,k) = 2 + 3*n - 2*k + 2*k*(n-k) for n >= 0, 0 <= k <= n.

Offset 0, canonical program `A309557.P6394933625690260118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309557 (n : ℕ) : ℤ :=
  A309557.P6394933625690260118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313801.P717888020838785705

`abs(A008592(n)-A313682(n))`
-/

namespace A313801.P717888020838785705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313682 n|

end

end A313801.P717888020838785705

noncomputable section

/-- A313801: Coordination sequence Gal.5.291.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313801.P717888020838785705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313801 (n : ℕ) : ℤ :=
  A313801.P717888020838785705.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313905.P339684935486502025

`abs(A008592(n)-A313525(n))`
-/

namespace A313905.P339684935486502025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313525 n|

end

end A313905.P339684935486502025

noncomputable section

/-- A313905: Coordination sequence Gal.6.352.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313905.P339684935486502025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313905 (n : ℕ) : ℤ :=
  A313905.P339684935486502025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A313905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314134.P13249333215816617724

`A313739(n)+∑[A022003(n)]`
-/

namespace A314134.P13249333215816617724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314134.P13249333215816617724

noncomputable section

/-- A314134: Coordination sequence Gal.6.624.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314134.P13249333215816617724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314134 (n : ℕ) : ℤ :=
  A314134.P13249333215816617724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315069.P429606285114840225

`abs(A008592(n)-A314020(n))`
-/

namespace A315069.P429606285114840225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314020 n|

end

end A315069.P429606285114840225

noncomputable section

/-- A315069: Coordination sequence Gal.6.325.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315069.P429606285114840225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315069 (n : ℕ) : ℤ :=
  A315069.P429606285114840225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. -/
def A315069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315499.P582473207499707061

`A313739(n)+A004525(n)`
-/

namespace A315499.P582473207499707061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A004525 n

end

end A315499.P582473207499707061

noncomputable section

/-- A315499: Coordination sequence Gal.6.643.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315499.P582473207499707061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315499 (n : ℕ) : ℤ :=
  A315499.P582473207499707061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315726.P3826273257408320648

`2*A313682(n)-A008574(n)`
-/

namespace A315726.P3826273257408320648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313682 n - A008574 n

end

end A315726.P3826273257408320648

noncomputable section

/-- A315726: Coordination sequence Gal.6.252.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315726.P3826273257408320648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A315726 (n : ℕ) : ℤ :=
  A315726.P3826273257408320648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. -/
def A315726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315742.P4234331020117959484

`A313682(n)+n`
-/

namespace A315742.P4234331020117959484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n + (n : ℤ)

end

end A315742.P4234331020117959484

noncomputable section

/-- A315742: Coordination sequence Gal.5.302.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315742.P4234331020117959484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A315742 (n : ℕ) : ℤ :=
  A315742.P4234331020117959484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A315742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318768.P995000323633037411

`∑{d}[n+1, A288571(#)]`
-/

namespace A318768.P995000323633037411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288571 d

end

end A318768.P995000323633037411

noncomputable section

/-- A318768: a(n) = Sum_{d|n} (-1)^(n/d+1) * Sum_{j|d} tau(j), where tau = number of divisors (A000005).

Offset 1, canonical program `A318768.P995000323633037411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318768 (n : ℕ) : ℤ :=
  A318768.P995000323633037411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318845.P4959675748145721690

`∑{d}[n+1, #*A288571((n+1)/#)]`
-/

namespace A318845.P4959675748145721690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318845.P4959675748145721690

noncomputable section

/-- A318845: a(n) = Sum_{d|n} (-1)^(n/d+1) * Sum_{j|d} sigma(j), where sigma(j) = sum of divisors of j (A000203).

Offset 1, canonical program `A318845.P4959675748145721690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318845 (n : ℕ) : ℤ :=
  A318845.P4959675748145721690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321016.P11941317684383710991

`char[A002024(n+1)-A080956(A049777(n+1))]`
-/

namespace A321016.P11941317684383710991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A080956 (A049777 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A321016.P11941317684383710991

noncomputable section

/-- A321016: Triangle read by rows: number of partitions of n into distinct and consecutive parts with largest part k (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A321016.P11941317684383710991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A321016 (n : ℕ) : ℤ :=
  (A321016.P11941317684383710991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A321016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321371.P7279978321700670498

`A194152(n+1)+A001962(n+1)`
-/

namespace A321371.P7279978321700670498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194152 (n + 1) + A001962 (n + 1)

end

end A321371.P7279978321700670498

noncomputable section

/-- A321371: n + [n*r/s] + [n*t/s], where r = 1, s = cos(2*Pi/5), t = sec(2*Pi/5).

Offset 1, canonical program `A321371.P7279978321700670498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321371 (n : ℕ) : ℤ :=
  A321371.P7279978321700670498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325002.P12992565631191484110

`A206735(n+1)+A103452(n+1)²`
-/

namespace A325002.P12992565631191484110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A103452 (n + 1) ^ 2

end

end A325002.P12992565631191484110

noncomputable section

/-- A325002: Triangle read by rows: T(n,k) is the number of oriented colorings of the facets (or vertices) of a regular n-dimensional simplex using exactly k colors.

Offset 1, canonical program `A325002.P12992565631191484110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325002 (n : ℕ) : ℤ :=
  A325002.P12992565631191484110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A325002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330366.P13234269032582178326

`A290450(eq[1, A290450(n+1)%5]+1)`
-/

namespace A330366.P13234269032582178326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290450 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330366.P13234269032582178326

noncomputable section

/-- A330366: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 1 (mod 10).

Offset 1, canonical program `A330366.P13234269032582178326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330366 (n : ℕ) : ℤ :=
  A330366.P13234269032582178326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A330366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332676.P3385004995648683764

`∩[5*A024896(n+1)-2, A290450(n+1)]`
-/

namespace A332676.P3385004995648683764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A024896 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332676.P3385004995648683764

noncomputable section

/-- A332676: Prime numbers p_k such that p_k == 3 (mod 10) and p_(k+1) == 3 (mod 10).

Offset 1, canonical program `A332676.P3385004995648683764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A332676 (n : ℕ) : ℤ :=
  (A332676.P3385004995648683764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A332676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334576.P12532079723840725322

`A020986(n)+A020987(n)-1`
-/

namespace A334576.P12532079723840725322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 n + (A020987 n - 1)

end

end A334576.P12532079723840725322

noncomputable section

/-- A334576: a(n) is the X-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334577 gives Y-coordinates.

Offset 0, canonical program `A334576.P12532079723840725322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334576 (n : ℕ) : ℤ :=
  A334576.P12532079723840725322.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334577.P1556614945130862147

`floor(A020990(4*n+2)/2)`
-/

namespace A334577.P1556614945130862147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020990 (4 * n + 2) : ℚ) / 2⌋

end

end A334577.P1556614945130862147

noncomputable section

/-- A334577: a(n) is the Y-coordinate of the n-th point of the space filling curve P defined in Comments section; sequence A334576 gives X-coordinates.

Offset 0, canonical program `A334577.P1556614945130862147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A334577 (n : ℕ) : ℤ :=
  A334577.P1556614945130862147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A334577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334922.P17964154798392453556

`A243866(n+1)+A143902(n+1)`
-/

namespace A334922.P17964154798392453556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243866 (n + 1) + A143902 (n + 1)

end

end A334922.P17964154798392453556

noncomputable section

/-- A334922: Square array T(n,k) = ((3/2)*n*k + (1/2)*A319929(n,k))/2, n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A334922.P17964154798392453556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A334922 (n : ℕ) : ℤ :=
  A334922.P17964154798392453556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A334922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338432.P16966980610441652879

`A056203(n+1)-A098352(n+1)`
-/

namespace A338432.P16966980610441652879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (n + 1) - A098352 (n + 1)

end

end A338432.P16966980610441652879

noncomputable section

/-- A338432: Triangle read by rows: T(n, k) = (n - k + 1)^2 + 2*k^2, for n >= 1, and k = 1, 2, ..., n.

Offset 1, canonical program `A338432.P16966980610441652879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338432 (n : ℕ) : ℤ :=
  A338432.P16966980610441652879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340504.P11252136775736366337

`(5-A105584(n))%4`
-/

namespace A340504.P11252136775736366337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - A105584 n) 4

end

end A340504.P11252136775736366337

noncomputable section

/-- A340504: Fixed under 0 -> 03, 1 -> 23, 2 -> 21, 3 -> 01.

Offset 1, canonical program `A340504.P11252136775736366337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340504 (n : ℕ) : ℤ :=
  A340504.P11252136775736366337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342385.P11220617682431407402

`A144217(n+1)+A004247(n)`
-/

namespace A342385.P11220617682431407402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144217 (n + 1) + A004247 n

end

end A342385.P11220617682431407402

noncomputable section

/-- A342385: Triangle T(n,k) read by rows (n >= 0, 0 <= k <= n): first column is A001477 and column k > 0 is k*A028310.

Offset 0, canonical program `A342385.P11220617682431407402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342385 (n : ℕ) : ℤ :=
  A342385.P11220617682431407402.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343258.P4371836176800830808

`∩[A052294(n+1), A144754(n+1)]`
-/

namespace A343258.P4371836176800830808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343258.P4371836176800830808

noncomputable section

/-- A343258: Numbers whose binary representation has a prime number of zeros and a prime number of ones.

Offset 1, canonical program `A343258.P4371836176800830808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3348 terms. -/
def A343258 (n : ℕ) : ℤ :=
  (A343258.P4371836176800830808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3348 terms. -/
def A343258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347111.P10220973366239699013

`Δ[A067894(n)-A121718(n)]`
-/

namespace A347111.P10220973366239699013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n - A121718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347111.P10220973366239699013

noncomputable section

/-- A347111: a(n) is n in binary rendered as a base-10 number minus n in ternary rendered as a base-10 number.

Offset 1, canonical program `A347111.P10220973366239699013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A347111 (n : ℕ) : ℤ :=
  A347111.P10220973366239699013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A347111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348556.P1449905922643619445

`lt[0, A014083(n)]`
-/

namespace A348556.P1449905922643619445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348556.P1449905922643619445

noncomputable section

/-- A348556: Binary expansion contains 4 adjacent 1's.

Offset 1, canonical program `A348556.P1449905922643619445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348556 (n : ℕ) : ℤ :=
  (A348556.P1449905922643619445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352054.P9699312142203447521

`A321818(n+1)-A059841(n)`
-/

namespace A352054.P9699312142203447521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321818 (n + 1) - A059841 n

end

end A352054.P9699312142203447521

noncomputable section

/-- A352054: Sum of the 8th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352054.P9699312142203447521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352054 (n : ℕ) : ℤ :=
  A352054.P9699312142203447521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353292.P917263375731567259

`1-A080100(n)+n`
-/

namespace A353292.P917263375731567259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080100 n + (n : ℤ)

end

end A353292.P917263375731567259

noncomputable section

/-- A353292: a(n) is the number of positive integers k <= n that have at least one common 1-bit with n.

Offset 0, canonical program `A353292.P917263375731567259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353292 (n : ℕ) : ℤ :=
  A353292.P917263375731567259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353816.P7776925411719625665

`char[A073254(n)]`
-/

namespace A353816.P7776925411719625665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353816.P7776925411719625665

noncomputable section

/-- A353816: a(n) = 1 if n is a number of the form x^2 + xy + y^2, otherwise 0.

Offset 0, canonical program `A353816.P7776925411719625665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353816 (n : ℕ) : ℤ :=
  (A353816.P7776925411719625665.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354037.P7194895652706141721

`A029430(and(3, ∑{d}[n+1, #]-(n+1)))`
-/

namespace A354037.P7194895652706141721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029430 (Int.land 3 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))).toNat

end

end A354037.P7194895652706141721

noncomputable section

/-- A354037: a(n) = 1 if sigma(n)-n is a multiple of 4, otherwise 0.

Offset 1, canonical program `A354037.P7194895652706141721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037 (n : ℕ) : ℤ :=
  A354037.P7194895652706141721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354968.P5289782423154033668

`A057103(n+2)/24`
-/

namespace A354968.P5289782423154033668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057103 (n + 2) : ℚ) / 24

end

end A354968.P5289782423154033668

noncomputable section

/-- A354968: Triangle read by rows: T(n, k) = n*k*(n+k)*(n-k)/6.

Offset 2, canonical program `A354968.P5289782423154033668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354968.P5289782423154033668.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355341.P9670019332395498527

`floor(A117362(A061579(n))+acot(n))`
-/

namespace A355341.P9670019332395498527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117362 (A061579 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A355341.P9670019332395498527

noncomputable section

/-- A355341: G.f.: A(x) = Sum_{n=-oo..+oo} x^(n*(n+1)/2) * C(x)^n, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A355341.P9670019332395498527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355341 (n : ℕ) : ℤ :=
  A355341.P9670019332395498527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358293.P4907253983415988777

`A098360(n+1)*A140978(n+1)`
-/

namespace A358293.P4907253983415988777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (n + 1) * A140978 (n + 1)

end

end A358293.P4907253983415988777

noncomputable section

/-- A358293: Array read by antidiagonals: T(n,k) = n^3*k^3*(n+k)^2, n>=1, k>=1.

Offset 1, canonical program `A358293.P4907253983415988777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358293 (n : ℕ) : ℤ :=
  A358293.P4907253983415988777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365582.P10913562028929217488

`2-A049777(n+1)+n`
-/

namespace A365582.P10913562028929217488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049777 (n + 1) + (n : ℤ)

end

end A365582.P10913562028929217488

noncomputable section

/-- A365582: a(n) is the number at the third vertex of an equilateral triangle whose first and second vertices are at the numbers 1 and n, respectively, on a triangular array of integers.

Offset 1, canonical program `A365582.P10913562028929217488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365582 (n : ℕ) : ℤ :=
  A365582.P10913562028929217488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365904.P11970627133866236320

`A057944(n)+A049777(n+1)`
-/

namespace A365904.P11970627133866236320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A049777 (n + 1)

end

end A365904.P11970627133866236320

noncomputable section

/-- A365904: Triangle read by rows T(n,k) = n^2 - binomial(k+1,2), n>=1, k

Offset 1, canonical program `A365904.P11970627133866236320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365904 (n : ℕ) : ℤ :=
  A365904.P11970627133866236320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369954.P18236350028831961352

`filter[A360769(n+1), A187074(#)]`
-/

namespace A369954.P18236350028831961352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A369954.P18236350028831961352

noncomputable section

/-- A369954: Numbers k that are neither squarefree nor prime powers and also coprime to 6.

Offset 1, canonical program `A369954.P18236350028831961352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2851 terms. -/
def A369954 (n : ℕ) : ℤ :=
  A369954.P18236350028831961352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2851 terms. -/
def A369954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372331.P6557326080855113142

`∏{e}[n+1, A080100(#)]`
-/

namespace A372331.P6557326080855113142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A080100 (Nat.factorization (f1 n) p)

end

end A372331.P6557326080855113142

noncomputable section

/-- A372331: The number of infinitary divisors of the smallest number k such that k*n is a number whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372331.P6557326080855113142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331 (n : ℕ) : ℤ :=
  A372331.P6557326080855113142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373275.P16695684761285881899

`∑{d}[n+1, A288571(#)*A296302((n+1)/#)]`
-/

namespace A373275.P16695684761285881899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288571 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373275.P16695684761285881899

noncomputable section

/-- A373275: a(n) = Sum_{d|n} (-1)^(d-1) * 2^(n/d-1).

Offset 1, canonical program `A373275.P16695684761285881899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A373275 (n : ℕ) : ℤ :=
  A373275.P16695684761285881899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A373275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373547.P3360985737469459485

`A059268(n)*A123519(n)`
-/

namespace A373547.P3360985737469459485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A123519 n

end

end A373547.P3360985737469459485

noncomputable section

/-- A373547: Triangle read by rows: T(n,k) = 4^k*binomial(n+k, n-k) with 0 <= k <= n.

Offset 0, canonical program `A373547.P3360985737469459485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8997 terms. -/
def A373547 (n : ℕ) : ℤ :=
  A373547.P3360985737469459485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8997 terms. -/
def A373547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375342.P14847801276659262859

`A051903(A375142(n+1))`
-/

namespace A375342.P14847801276659262859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375142 (n + 1)).toNat

end

end A375342.P14847801276659262859

noncomputable section

/-- A375342: The maximum exponent in the prime factorization of the numbers whose powerful part is a power of a squarefree number that is larger than 1.

Offset 1, canonical program `A375342.P14847801276659262859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375342 (n : ℕ) : ℤ :=
  A375342.P14847801276659262859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375782.P10629034333840405901

`A001511(A085062(n+1))`
-/

namespace A375782.P10629034333840405901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A085062 (n + 1)).toNat

end

end A375782.P10629034333840405901

noncomputable section

/-- A375782: The 2-adic valuation of the result, starting from n, of Collatz steps x -> (3x+1)/2 while odd.

Offset 1, canonical program `A375782.P10629034333840405901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A375782 (n : ℕ) : ℤ :=
  A375782.P10629034333840405901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A375782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376102.P5296559543741715473

`A288870(n)-A130321(n)`
-/

namespace A376102.P5296559543741715473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288870 n - A130321 n

end

end A376102.P5296559543741715473

noncomputable section

/-- A376102: Array read by ascending antidiagonals: A(n,k) = k*2^(n+1) + 1.

Offset 0, canonical program `A376102.P5296559543741715473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376102 (n : ℕ) : ℤ :=
  A376102.P5296559543741715473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378959.P5432620633639023974

`A003817(n)*A090706(n)`
-/

namespace A378959.P5432620633639023974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n * A090706 n

end

end A378959.P5432620633639023974

noncomputable section

/-- A378959: Sum, in base 10, of the permutations of the digits of n, written in base 2.

Offset 0, canonical program `A378959.P5432620633639023974`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959 (n : ℕ) : ℤ :=
  A378959.P5432620633639023974.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379267.P15908437696186355973

`∩[A144754(n+1), A059010(n)]`
-/

namespace A379267.P15908437696186355973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379267.P15908437696186355973

noncomputable section

/-- A379267: Numbers whose binary representation contains exactly two zeros.

Offset 1, canonical program `A379267.P15908437696186355973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267 (n : ℕ) : ℤ :=
  (A379267.P15908437696186355973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A379267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384125.P14964655347719937837

`A093445(n+1)-A128141(n+1)`
-/

namespace A384125.P14964655347719937837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (n + 1) - A128141 (n + 1)

end

end A384125.P14964655347719937837

noncomputable section

/-- A384125: Array read by antidiagonals: T(n,m) is the number of edges in the n X m rook graph K_n X K_m.

Offset 1, canonical program `A384125.P14964655347719937837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A384125 (n : ℕ) : ℤ :=
  A384125.P14964655347719937837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A384125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384519.P13348821675057678145

`∩[A072587(n+1), A375142(n+1)]`
-/

namespace A384519.P13348821675057678145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384519.P13348821675057678145

noncomputable section

/-- A384519: Numbers whose powerful part (A057521) is greater than 1 and is equal to a squarefree number raised to an even power (A384517).

Offset 1, canonical program `A384519.P13348821675057678145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7347 terms. -/
def A384519 (n : ℕ) : ℤ :=
  (A384519.P13348821675057678145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7347 terms. -/
def A384519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384520.P4473728622954603946

`filter[A375142(n+1), A295316(#)]`
-/

namespace A384520.P4473728622954603946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A384520.P4473728622954603946

noncomputable section

/-- A384520: Numbers whose powerful part (A057521) is greater than 1 and is equal to a squarefree number raised to an odd power (A384518).

Offset 1, canonical program `A384520.P4473728622954603946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A384520 (n : ℕ) : ℤ :=
  A384520.P4473728622954603946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A384520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396409.P16372428509261204668

`A326730(A025480(n))`
-/

namespace A396409.P16372428509261204668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A025480 n).toNat

end

end A396409.P16372428509261204668

noncomputable section

/-- A396409: Number of iterations of x -> x XOR 2^A000120(x) from x = n to reach a number of the form 2^m-1.

Offset 0, canonical program `A396409.P16372428509261204668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409 (n : ℕ) : ℤ :=
  A396409.P16372428509261204668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396776.P18268578886540690482

`2*n+3-A073254(n)`
-/

namespace A396776.P18268578886540690482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A073254 n

end

end A396776.P18268578886540690482

noncomputable section

/-- A396776: Square array read by upwards antidiagonals: T(p,q) is the number cells required to completely surround a single cell of the regular tiling with Schläfli symbol {p,q}.

Offset 3, canonical program `A396776.P18268578886540690482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396776 (n : ℕ) : ℤ :=
  A396776.P18268578886540690482.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171487.P12486691831779442255

`A171435(2*n+1)*A171435(2*n+3)`
-/

namespace A171487.P12486691831779442255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * n + 1) * A171435 (2 * n + 3)

end

end A171487.P12486691831779442255

noncomputable section

/-- A171487: Product of odd prime anti-factors < n, with multiplicity.

Offset 1, canonical program `A171487.P12486691831779442255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171487 (n : ℕ) : ℤ :=
  A171487.P12486691831779442255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171651.P1398147796533981043

`2*A171128(n)-A091867(n)`
-/

namespace A171651.P1398147796533981043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171128 n - A091867 n

end

end A171651.P1398147796533981043

noncomputable section

/-- A171651: Triangle T, read by rows : T(n,k) = A007318(n,k)*A005773(n+1-k).

Offset 0, canonical program `A171651.P1398147796533981043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171651 (n : ℕ) : ℤ :=
  A171651.P1398147796533981043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171731.P6855340763383197574

`A094442(n)-A094441(n)`
-/

namespace A171731.P6855340763383197574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 n - A094441 n

end

end A171731.P6855340763383197574

noncomputable section

/-- A171731: Triangle T : T(n,k)= binomial(n,k)*Fibonacci(n-k)= A007318(n,k)*A000045(n-k).

Offset 0, canonical program `A171731.P6855340763383197574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171731 (n : ℕ) : ℤ :=
  A171731.P6855340763383197574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171814.P9797681691333110312

`A099375(n)*A124644(n)`
-/

namespace A171814.P9797681691333110312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A124644 n

end

end A171814.P9797681691333110312

noncomputable section

/-- A171814: Triangle T : T(n,k)= A007318(n,k)*A001700(n-k).

Offset 0, canonical program `A171814.P9797681691333110312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171814 (n : ℕ) : ℤ :=
  A171814.P9797681691333110312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171886.P2069845256079596505

`eq[0, A140513(n)%A008949(n)]`
-/

namespace A171886.P2069845256079596505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140513 n) (A008949 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171886.P2069845256079596505

noncomputable section

/-- A171886: Numbers n such that A008949(n) is a power of 2.

Offset 1, canonical program `A171886.P2069845256079596505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A171886 (n : ℕ) : ℤ :=
  (A171886.P2069845256079596505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A171886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171941.P16669356445325525036

`n-A243109(n)`
-/

namespace A171941.P16669356445325525036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243109 n

end

end A171941.P16669356445325525036

noncomputable section

/-- A171941: Backwards van Eck transform of A000120.

Offset 1, canonical program `A171941.P16669356445325525036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A171941 (n : ℕ) : ℤ :=
  A171941.P16669356445325525036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A171941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173541.P8603278970651018191

`A002260(n+1)-A127093(n+1)`
-/

namespace A173541.P8603278970651018191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A127093 (n + 1)

end

end A173541.P8603278970651018191

noncomputable section

/-- A173541: Triangle read by rows: T(n,k)=k if k is a proper non-divisor of n, otherwise T(n,k)=0 (1<=k<=n).

Offset 1, canonical program `A173541.P8603278970651018191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173541 (n : ℕ) : ℤ :=
  A173541.P8603278970651018191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173741.P3146822036776038077

`A132047(n)+1-A132729(n)`
-/

namespace A173741.P3146822036776038077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132047 n + (1 - A132729 n)

end

end A173741.P3146822036776038077

noncomputable section

/-- A173741: T(n,k) = binomial(n,k) + 4 for 1 <= k <= n - 1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, triangle read by rows.

Offset 0, canonical program `A173741.P3146822036776038077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173741 (n : ℕ) : ℤ :=
  A173741.P3146822036776038077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174719.P14076238822067918350

`A007318(n)+A098355(n)-A038221(n)`
-/

namespace A174719.P14076238822067918350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A098355 n - A038221 n)

end

end A174719.P14076238822067918350

noncomputable section

/-- A174719: Triangle T(n, k, q) = (1-q^n)*( binomial(n, k) - 1 ) + 1, with q = 3, read by rows.

Offset 0, canonical program `A174719.P14076238822067918350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8445 terms. -/
def A174719 (n : ℕ) : ℤ :=
  A174719.P14076238822067918350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8445 terms. -/
def A174719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174790.P10428492186523786925

`A014473(n)*A196347(n)+1`
-/

namespace A174790.P10428492186523786925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A196347 n + 1

end

end A174790.P10428492186523786925

noncomputable section

/-- A174790: Triangle read by rows: T(n,m) = 1 + ((-1 + binomial(n, m))*(n!)^2)/(m!*(n - m)!).

Offset 0, canonical program `A174790.P10428492186523786925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A174790 (n : ℕ) : ℤ :=
  A174790.P10428492186523786925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A174790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176079.P15611810976206123960

`A127093(n+1)-1`
-/

namespace A176079.P15611810976206123960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) - 1

end

end A176079.P15611810976206123960

noncomputable section

/-- A176079: Triangle T(n,k) read by rows: If k divides n then k-1, otherwise -1.

Offset 1, canonical program `A176079.P15611810976206123960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176079 (n : ℕ) : ℤ :=
  A176079.P15611810976206123960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176702.P2242900337551508736

`char[∑[n-1]]-Δ[(2^A127093(n+1)-1)%2]`
-/

namespace A176702.P2242900337551508736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A127093 (n + 1) : ℤ) - 1)) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A176702.P2242900337551508736

noncomputable section

/-- A176702: Triangle T(n,k) read by rows. A051731(n,k)-A051731(n,k+1).

Offset 1, canonical program `A176702.P2242900337551508736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176702 (n : ℕ) : ℤ :=
  A176702.P2242900337551508736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176891.P14783800229621870818

`floor(sqrt(8*n+1))%2*A127093(n+1)`
-/

namespace A176891.P14783800229621870818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ) * A127093 (n + 1)

end

end A176891.P14783800229621870818

noncomputable section

/-- A176891: Triangle T(n,k) = k if k

Offset 1, canonical program `A176891.P14783800229621870818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176891 (n : ℕ) : ℤ :=
  A176891.P14783800229621870818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177121.P3320387375115592110

`A035214(n+1)-A127093(A099375(n)+1+n)`
-/

namespace A177121.P3320387375115592110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (n + 1) - A127093 (A099375 n + 1 + (n : ℤ)).toNat

end

end A177121.P3320387375115592110

noncomputable section

/-- A177121: Square array T(n,k) read by antidiagonals up: T(n,k) = 1 if n=1; otherwise if n divides k then T(n,k) = -n+1; otherwise T(n,k) = 1.

Offset 1, canonical program `A177121.P3320387375115592110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177121 (n : ℕ) : ℤ :=
  A177121.P3320387375115592110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177207.P505828816875833333

`(A038207(n)/A007318(n))%∑[A010054(n)]`
-/

namespace A177207.P505828816875833333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A038207 n : ℚ) / (A007318 n : ℚ))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177207.P505828816875833333

noncomputable section

/-- A177207: Triangle read by rows: R(n,k) = 2^(n-k) mod n.

Offset 1, canonical program `A177207.P505828816875833333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177207 (n : ℕ) : ℤ :=
  A177207.P505828816875833333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177767.P10065368362006185369

`or(A097805(n), A103452(n))`
-/

namespace A177767.P10065368362006185369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 n) (A103452 n)

end

end A177767.P10065368362006185369

noncomputable section

/-- A177767: Triangle read by rows: T(n,k) = binomial(n - 1, k - 1), 1 <= k <= n, and T(n,0) = A153881(n+1), n >= 0.

Offset 0, canonical program `A177767.P10065368362006185369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177767 (n : ℕ) : ℤ :=
  A177767.P10065368362006185369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177939.P13954845041136174016

`A066991(n+1)/A181511(n+1)`
-/

namespace A177939.P13954845041136174016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066991 (n + 1) : ℚ) / (A181511 (n + 1) : ℚ)

end

end A177939.P13954845041136174016

noncomputable section

/-- A177939: Array t(n,m)=(n*m)!/(n + m - 1)! read by antidiagonals.

Offset 1, canonical program `A177939.P13954845041136174016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A177939.P13954845041136174016.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177978.P5012801373125610272

`2*A051731(n+1)-A128185(n+1)`
-/

namespace A177978.P5012801373125610272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051731 (n + 1) - A128185 (n + 1)

end

end A177978.P5012801373125610272

noncomputable section

/-- A177978: Triangle T(n,k) read by rows: A051731(n,k) - A051731(n-1,k).

Offset 1, canonical program `A177978.P5012801373125610272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177978 (n : ℕ) : ℤ :=
  A177978.P5012801373125610272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180188.P17065688349002946383

`A002024(n+1)*A098825(A061579(n))`
-/

namespace A180188.P17065688349002946383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A098825 (A061579 n).toNat

end

end A180188.P17065688349002946383

noncomputable section

/-- A180188: Triangle read by rows: T(n,k) is the number of permutations of [n] with k circular successions (0<=k<=n-1). A circular succession in a permutation p of [n] is either a pair p(i), p(i+1), where p(i+1)=p(i)+1 or the pair p(n), p(1) if p(1)=p(n)+1.

Offset 1, canonical program `A180188.P17065688349002946383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A180188 (n : ℕ) : ℤ :=
  A180188.P17065688349002946383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A180188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180948.P43109043055312899

`A065091(lt[∑{e}[A127334(n+1), #], 2])`
-/

namespace A180948.P43109043055312899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A180948.P43109043055312899

noncomputable section

/-- A180948: Smallest of seven (7) consecutive primes whose sum is a prime.

Offset 1, canonical program `A180948.P43109043055312899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1794 terms. -/
def A180948 (n : ℕ) : ℤ :=
  A180948.P43109043055312899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1794 terms. -/
def A180948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181116.P15134325695680604966

`∏{e}[A085383(n+1), #-1]`
-/

namespace A181116.P15134325695680604966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A181116.P15134325695680604966

noncomputable section

/-- A181116: Triangle T(n,k) read by rows. T(n,k) = A046643(A126988).

Offset 1, canonical program `A181116.P15134325695680604966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181116 (n : ℕ) : ℤ :=
  A181116.P15134325695680604966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182042.P8039975807503843964

`A013610(n)-A073424(n)`
-/

namespace A182042.P8039975807503843964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n - A073424 n

end

end A182042.P8039975807503843964

noncomputable section

/-- A182042: Triangle T(n,k), read by rows, given by (0, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (3, 0, -3/2, 3/2, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A182042.P8039975807503843964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182042 (n : ℕ) : ℤ :=
  A182042.P8039975807503843964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182059.P2759527818996415774

`A059268(n)*A206735(n)`
-/

namespace A182059.P2759527818996415774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A206735 n

end

end A182059.P2759527818996415774

noncomputable section

/-- A182059: Triangle, read by rows, given by (0, 2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (2, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A182059.P2759527818996415774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182059 (n : ℕ) : ℤ :=
  A182059.P2759527818996415774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182411.P8082731584072737721

`A142243(A061579(n))/A007318(n)`
-/

namespace A182411.P8082731584072737721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142243 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A182411.P8082731584072737721

noncomputable section

/-- A182411: Triangle T(n,k) = (2*k)!*(2*n)!/(k!*n!*(k+n)!) with k=0..n, read by rows.

Offset 0, canonical program `A182411.P8082731584072737721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8385 terms. -/
def A182411 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182411.P8082731584072737721.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8385 terms. -/
def A182411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183154.P7623041928284597540

`A005803(A130296(n+1))+A007318(n)`
-/

namespace A183154.P7623041928284597540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (A130296 (n + 1)).toNat + A007318 n

end

end A183154.P7623041928284597540

noncomputable section

/-- A183154: T(n,k) is the number of order-preserving partial isometries (of an n-chain) of fixed k (fix of alpha is the number of fixed points of alpha).

Offset 0, canonical program `A183154.P7623041928284597540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183154 (n : ℕ) : ℤ :=
  A183154.P7623041928284597540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183190.P10026488769609202842

`Δ[A089633(n)]*A071919(n)`
-/

namespace A183190.P10026488769609202842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A071919 n

end

end A183190.P10026488769609202842

noncomputable section

/-- A183190: Triangle T(n,k), read by rows, given by (1, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (0, 1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A183190.P10026488769609202842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183190 (n : ℕ) : ℤ :=
  A183190.P10026488769609202842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183986.P9474763813998468520

`A271709(n)+A209727(n+1)`
-/

namespace A183986.P9474763813998468520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A209727 (n + 1)

end

end A183986.P9474763813998468520

noncomputable section

/-- A183986: T(n,k) = 1/4 the number of (n+1) X (k+1) binary arrays with all 2 X 2 subblock sums the same.

Offset 1, canonical program `A183986.P9474763813998468520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 683 terms. -/
def A183986 (n : ℕ) : ℤ :=
  A183986.P9474763813998468520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 683 terms. -/
def A183986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184732.P15715545253695480124

`comp[A184733(n+1)-1]+1`
-/

namespace A184732.P15715545253695480124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184733 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184732.P15715545253695480124

noncomputable section

/-- A184732: a(n) = floor(n*r+h), where r=(1+sqrt(5))/2, h=-1/4; complement of A184733.

Offset 1, canonical program `A184732.P15715545253695480124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184732 (n : ℕ) : ℤ :=
  (A184732.P15715545253695480124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187954.P4208797145457920853

`A127093(A185868(n+1))`
-/

namespace A187954.P4208797145457920853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A185868 (n + 1)).toNat

end

end A187954.P4208797145457920853

noncomputable section

/-- A187954: Triangle by rows, divisors of odd integers.

Offset 0, canonical program `A187954.P4208797145457920853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A187954 (n : ℕ) : ℤ :=
  A187954.P4208797145457920853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A187954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188322.P2194308858124452839

`record[n+1-A188321(n+1)-A188321(n+1)]`
-/

namespace A188322.P2194308858124452839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A188321 (n + 1) - A188321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188322.P2194308858124452839

noncomputable section

/-- A188322: Positions of 0 in A188321; complement of A188323.

Offset 1, canonical program `A188322.P2194308858124452839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4645 terms. -/
def A188322 (n : ℕ) : ℤ :=
  A188322.P2194308858124452839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4645 terms. -/
def A188322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188371.P14841229343104294779

`A188321(A188374(n+1)+n)`
-/

namespace A188371.P14841229343104294779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (A188374 (n + 1) + (n : ℤ)).toNat

end

end A188371.P14841229343104294779

noncomputable section

/-- A188371: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=6, [ ]=floor.

Offset 1, canonical program `A188371.P14841229343104294779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188371 (n : ℕ) : ℤ :=
  A188371.P14841229343104294779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188440.P17541006003015622244

`A013609((A196199(n)+n)/2)`
-/

namespace A188440.P17541006003015622244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.roundAway ((A196199 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A188440.P17541006003015622244

noncomputable section

/-- A188440: Triangle T(n,k) read by rows: number of size-k antisymmetric subsets of {1,2,...,n}.

Offset 0, canonical program `A188440.P17541006003015622244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188440 (n : ℕ) : ℤ :=
  A188440.P17541006003015622244.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190200.P18030788477136084334

`filter[n+1, A190198(#)]`
-/

namespace A190200.P18030788477136084334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190198 (f1 j) = 1) n)

end

end A190200.P18030788477136084334

noncomputable section

/-- A190200: Positions of 1 in A190198; complement of A190199.

Offset 1, canonical program `A190200.P18030788477136084334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190200 (n : ℕ) : ℤ :=
  (A190200.P18030788477136084334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191750.P1006708974149694787

`∑{d}[n+1, A130054(#)*A176345((n+1)/#)]`
-/

namespace A191750.P1006708974149694787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A176345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191750.P1006708974149694787

noncomputable section

/-- A191750: Dirichlet convolution of A000012 with A007947.

Offset 1, canonical program `A191750.P1006708974149694787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191750 (n : ℕ) : ℤ :=
  A191750.P1006708974149694787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191910.P11685670682958930902

`A127093(n+1)+A023531(n)-1`
-/

namespace A191910.P11685670682958930902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + A023531 n - 1

end

end A191910.P11685670682958930902

noncomputable section

/-- A191910: Triangle read by rows: T(n,n)=n; T(n,k) = k-1 if k divides n and k < n, otherwise -1.

Offset 1, canonical program `A191910.P11685670682958930902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191910 (n : ℕ) : ℤ :=
  A191910.P11685670682958930902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193229.P10999994925577061172

`A001497(n)*A233543(n)`
-/

namespace A193229.P10999994925577061172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A233543 n

end

end A193229.P10999994925577061172

noncomputable section

/-- A193229: A double factorial triangle.

Offset 0, canonical program `A193229.P10999994925577061172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A193229 (n : ℕ) : ℤ :=
  A193229.P10999994925577061172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A193229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193770.P193125573540705451

`(A027465(n)+A013612(n))/A028326(n)`
-/

namespace A193770.P193125573540705451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n + A013612 n : ℚ) / (A028326 n : ℚ)

end

end A193770.P193125573540705451

noncomputable section

/-- A193770: Table T(m,n) = (5^m + 3^n)/2, m,n = 0,1,2,..., read by antidiagonals.

Offset 0, canonical program `A193770.P193125573540705451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8621 terms. -/
def A193770 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A193770.P193125573540705451.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8621 terms. -/
def A193770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193829.P10500776787776175054

`A208460(n+2)%A208460(n+3)`
-/

namespace A193829.P10500776787776175054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208460 (n + 2)) (A208460 (n + 3))

end

end A193829.P10500776787776175054

noncomputable section

/-- A193829: Irregular triangle read by rows in which row n lists the differences between consecutive divisors of n.

Offset 2, canonical program `A193829.P10500776787776175054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193829 (n : ℕ) : ℤ :=
  A193829.P10500776787776175054.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193844.P14945394421984348747

`A276985(n)-a(n-1)` with `a(0)=1`
-/

namespace A193844.P14945394421984348747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276985 n - a (n - 1)

end

end A193844.P14945394421984348747

noncomputable section

/-- A193844: Triangular array: the fission of ((x+1)^n) by ((x+1)^n); i.e., the self-fission of Pascal's triangle.

Offset 0, canonical program `A193844.P14945394421984348747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193844 (n : ℕ) : ℤ :=
  A193844.P14945394421984348747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194118.P13941331000178065428

`A209518(n)+A104712(n+2)`
-/

namespace A194118.P13941331000178065428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n + A104712 (n + 2)

end

end A194118.P13941331000178065428

noncomputable section

/-- A194118: Triangular array: T(n,k)=C(n+2,k)+C(n+2,k+2), 0<=k<=n.

Offset 0, canonical program `A194118.P13941331000178065428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194118 (n : ℕ) : ℤ :=
  A194118.P13941331000178065428.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194123.P9267081841225222537

`abs(A104712(n+2)-A209518(n))`
-/

namespace A194123.P9267081841225222537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104712 (n + 2) - A209518 n|

end

end A194123.P9267081841225222537

noncomputable section

/-- A194123: Triangular array: T(n,k)=|C(n+2,k)-C(n+2,k+2)|, 0<=k<=n.

Offset 0, canonical program `A194123.P9267081841225222537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194123 (n : ℕ) : ℤ :=
  A194123.P9267081841225222537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198792.P8210630844402988045

`Δ[A089633(n)]*A097805(n)`
-/

namespace A198792.P8210630844402988045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097805 n

end

end A198792.P8210630844402988045

noncomputable section

/-- A198792: Triangle T(n,k), read by rows, given by (0,1,1,0,0,0,0,0,0,0,...) DELTA (1,0,0,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A198792.P8210630844402988045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198792 (n : ℕ) : ℤ :=
  A198792.P8210630844402988045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198793.P9157725411081335184

`A071919(n)*A232089(n)`
-/

namespace A198793.P9157725411081335184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A232089 n

end

end A198793.P9157725411081335184

noncomputable section

/-- A198793: Triangle T(n,k), read by rows, given by (1,0,0,1,0,0,0,0,0,0,0,...) DELTA (0,1,1,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A198793.P9157725411081335184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198793 (n : ℕ) : ℤ :=
  A198793.P9157725411081335184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A198793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199408.P6946388780141795136

`A108872(n+1)-A050873(n+1)`
-/

namespace A199408.P6946388780141795136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A050873 (n + 1)

end

end A199408.P6946388780141795136

noncomputable section

/-- A199408: Triangle T(n,k) = n + k - gcd(n,k) read by rows, 1 <= n, 1 <= k <= n.

Offset 1, canonical program `A199408.P6946388780141795136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199408 (n : ℕ) : ℤ :=
  A199408.P6946388780141795136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A199408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202750.P11917823895154512547

`A008459(n)²`
-/

namespace A202750.P11917823895154512547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n ^ 2

end

end A202750.P11917823895154512547

noncomputable section

/-- A202750: Triangle T(n,k) = binomial(n,k)^4 read by rows, 0<=k<=n.

Offset 0, canonical program `A202750.P11917823895154512547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3869 terms. -/
def A202750 (n : ℕ) : ℤ :=
  A202750.P11917823895154512547.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3869 terms. -/
def A202750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204201.P4812556110496593180

`2*A054143(n)-A008949(n)`
-/

namespace A204201.P4812556110496593180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054143 n - A008949 n

end

end A204201.P4812556110496593180

noncomputable section

/-- A204201: Triangle based on (0,1/3,1) averaging array.

Offset 1, canonical program `A204201.P4812556110496593180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204201 (n : ℕ) : ℤ :=
  A204201.P4812556110496593180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204202.P1024099258740543106

`A054143(n)+A008949(n)`
-/

namespace A204202.P1024099258740543106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + A008949 n

end

end A204202.P1024099258740543106

noncomputable section

/-- A204202: Triangle based on (0,2/3,1) averaging array.

Offset 1, canonical program `A204202.P1024099258740543106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204202 (n : ℕ) : ℤ :=
  A204202.P1024099258740543106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204238.P6692770897565763232

`(A185251(2*(n+1))+n*A011782(n)²)/(-1)^n`
-/

namespace A204238.P6692770897565763232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185251 (2 * (n + 1)) + (n : ℤ) * A011782 n ^ 2 : ℚ) / ((-1) ^ n : ℚ)

end

end A204238.P6692770897565763232

noncomputable section

/-- A204238: Determinant of the n-th principal submatrix of A204237.

Offset 1, canonical program `A204238.P6692770897565763232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A204238 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204238.P6692770897565763232.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A204238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204906.P7021400860210866951

`A204898(A080036(n+1))`
-/

namespace A204906.P7021400860210866951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (A080036 (n + 1)).toNat

end

end A204906.P7021400860210866951

noncomputable section

/-- A204906: Ordered differences of primes >=5.

Offset 1, canonical program `A204906.P7021400860210866951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A204906 (n : ℕ) : ℤ :=
  A204906.P7021400860210866951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A204906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205547.P16237328813757143675

`A002260(A205559(n+1))`
-/

namespace A205547.P16237328813757143675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205559 (n + 1)).toNat

end

end A205547.P16237328813757143675

noncomputable section

/-- A205547: The number j such that 3 divides prime(k)-prime(j), where k(n)=A205560(n).

Offset 1, canonical program `A205547.P16237328813757143675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205547 (n : ℕ) : ℤ :=
  A205547.P16237328813757143675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. -/
def A205547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208324.P5562649891701857175

`A013609(n)+A193862(n)-A010054(n)`
-/

namespace A208324.P5562649891701857175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (A193862 n - A010054 n)

end

end A208324.P5562649891701857175

noncomputable section

/-- A208324: Triangle T(n,k), read by rows, given by (2, -1/2, 1/2, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (4, -2, 0, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

Offset 0, canonical program `A208324.P5562649891701857175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208324 (n : ℕ) : ℤ :=
  A208324.P5562649891701857175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208510.P9937072583222605301

`A029655(A083920(n))`
-/

namespace A208510.P9937072583222605301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (A083920 n).toNat

end

end A208510.P9937072583222605301

noncomputable section

/-- A208510: Triangle of coefficients of polynomials u(n,x) jointly generated with A029653; see the Formula section.

Offset 1, canonical program `A208510.P9937072583222605301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208510 (n : ℕ) : ℤ :=
  A208510.P9937072583222605301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208519.P8400931654513594547

`A094435(n+1)+A094437(n)-A094436(n)`
-/

namespace A208519.P8400931654513594547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (n + 1) + (A094437 n - A094436 n)

end

end A208519.P8400931654513594547

noncomputable section

/-- A208519: Triangle of coefficients of polynomials v(n,x) jointly generated with A208518; see the Formula section.

Offset 1, canonical program `A208519.P8400931654513594547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208519 (n : ℕ) : ℤ :=
  A208519.P8400931654513594547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208521.P14308452571978604591

`A060546(A002262(n))*A133084(n+1)`
-/

namespace A208521.P14308452571978604591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A002262 n).toNat * A133084 (n + 1)

end

end A208521.P14308452571978604591

noncomputable section

/-- A208521: Triangle of coefficients of polynomials v(n,x) jointly generated with A208520; see the Formula section.

Offset 1, canonical program `A208521.P14308452571978604591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208521 (n : ℕ) : ℤ :=
  A208521.P14308452571978604591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208891.P13459728261934615050

`floor(sqrt(A071919(n)²+1))`
-/

namespace A208891.P13459728261934615050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A071919 n ^ 2 + 1)

end

end A208891.P13459728261934615050

noncomputable section

/-- A208891: Pascal's triangle matrix augmented with a right border of 1's.

Offset 0, canonical program `A208891.P13459728261934615050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208891 (n : ℕ) : ℤ :=
  A208891.P13459728261934615050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208906.P14491951014712469072

`A016116(A002262(n))*A133084(n+1)`
-/

namespace A208906.P14491951014712469072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n).toNat * A133084 (n + 1)

end

end A208906.P14491951014712469072

noncomputable section

/-- A208906: Triangle of coefficients of polynomials v(n,x) jointly generated with A208905; see the Formula section.

Offset 1, canonical program `A208906.P14491951014712469072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208906 (n : ℕ) : ℤ :=
  A208906.P14491951014712469072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208914.P18164605293524257971

`A059268(n)*A133084(n+1)`
-/

namespace A208914.P18164605293524257971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A133084 (n + 1)

end

end A208914.P18164605293524257971

noncomputable section

/-- A208914: Triangle of coefficients of polynomials v(n,x) jointly generated with A208913; see the Formula section.

Offset 1, canonical program `A208914.P18164605293524257971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208914 (n : ℕ) : ℤ :=
  A208914.P18164605293524257971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208920.P3108856857928057317

`A208766(n+1)+A208766(n+2)-A208765(n+2)`
-/

namespace A208920.P3108856857928057317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208766 (n + 1) + (A208766 (n + 2) - A208765 (n + 2))

end

end A208920.P3108856857928057317

noncomputable section

/-- A208920: Triangle of coefficients of polynomials v(n,x) jointly generated with A208919; see the Formula section.

Offset 1, canonical program `A208920.P3108856857928057317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A208920 (n : ℕ) : ℤ :=
  A208920.P3108856857928057317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A208920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210204.P16826536876454018621

`2*A038207(n)-A010054(n)`
-/

namespace A210204.P16826536876454018621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A010054 n

end

end A210204.P16826536876454018621

noncomputable section

/-- A210204: Triangle of coefficients of polynomials v(n,x) jointly generated with A210203; see the Formula section.

Offset 1, canonical program `A210204.P16826536876454018621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210204 (n : ℕ) : ℤ :=
  A210204.P16826536876454018621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214978.P15055894369161094190

`A028412(A061579(n))`
-/

namespace A214978.P15055894369161094190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 (A061579 n).toNat

end

end A214978.P15055894369161094190

noncomputable section

/-- A214978: Array T(m,n) = Fibonacci(m*n)/Fibonacci(m), by antidiagonals; transpose of A028412.

Offset 1, canonical program `A214978.P15055894369161094190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A214978 (n : ℕ) : ℤ :=
  A214978.P15055894369161094190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. -/
def A214978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215287.P2856808534763389541

`record[A088617(A001972(n))]`
-/

namespace A215287.P2856808534763389541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215287.P2856808534763389541

noncomputable section

/-- A215287: Number of permutations of 0..floor((n*3-1)/2) on even squares of an n X 3 array such that each row and column of even squares is increasing.

Offset 1, canonical program `A215287.P2856808534763389541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A215287 (n : ℕ) : ℤ :=
  A215287.P2856808534763389541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A215287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215534.P11719715118446938532

`A130595(n)*A177885(A025581(n))`
-/

namespace A215534.P11719715118446938532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A177885 (A025581 n).toNat

end

end A215534.P11719715118446938532

noncomputable section

/-- A215534: Matrix inverse of triangle A088956.

Offset 0, canonical program `A215534.P11719715118446938532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A215534 (n : ℕ) : ℤ :=
  A215534.P11719715118446938532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A215534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216953.P10903731901757870173

`2*∑{d}[A127093(n+1), A296302(#)]`
-/

namespace A216953.P10903731901757870173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, A296302 d)

end

end A216953.P10903731901757870173

noncomputable section

/-- A216953: Triangle read by rows: T(n,k) (n>=1, 1<=k<=n) = number of binary sequences of length n with minimal period k.

Offset 1, canonical program `A216953.P10903731901757870173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216953 (n : ℕ) : ℤ :=
  A216953.P10903731901757870173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216954.P1085504788512225851

`∑{d}[A127093(n+1), A296302(#)]`
-/

namespace A216954.P1085504788512225851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A296302 d

end

end A216954.P1085504788512225851

noncomputable section

/-- A216954: Triangle read by rows: A216953/2.

Offset 1, canonical program `A216954.P1085504788512225851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216954 (n : ℕ) : ℤ :=
  A216954.P1085504788512225851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216973.P15082548232438197860

`A134400(n)-a(n-1)` with `a(0)=0`
-/

namespace A216973.P15082548232438197860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A134400 n - a (n - 1)

end

end A216973.P15082548232438197860

noncomputable section

/-- A216973: Exponential Riordan array [x*exp(x),x].

Offset 0, canonical program `A216973.P15082548232438197860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216973 (n : ℕ) : ℤ :=
  A216973.P15082548232438197860.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219206.P10901169306540035016

`A007318(n)*A102480(n)`
-/

namespace A219206.P10901169306540035016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A102480 n

end

end A219206.P10901169306540035016

noncomputable section

/-- A219206: Triangle, read by rows, where T(n,k) = binomial(n,k)^k for n>=0, k=0..n.

Offset 0, canonical program `A219206.P10901169306540035016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A219206 (n : ℕ) : ℤ :=
  A219206.P10901169306540035016.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A219206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219207.P12490393207679744017

`A008459(n)*A102480(n)`
-/

namespace A219207.P12490393207679744017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A102480 n

end

end A219207.P12490393207679744017

noncomputable section

/-- A219207: Triangle, read by rows, where T(n,k) = binomial(n,k)^(k+1) for n>=0, k=0..n.

Offset 0, canonical program `A219207.P12490393207679744017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A219207 (n : ℕ) : ℤ :=
  A219207.P12490393207679744017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A219207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219647.P16831968749245997982

`n+A219646(n)`
-/

namespace A219647.P16831968749245997982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A219646 n

end

end A219647.P16831968749245997982

noncomputable section

/-- A219647: Positions of zeros in A219649.

Offset 0, canonical program `A219647.P16831968749245997982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219647 (n : ℕ) : ℤ :=
  A219647.P16831968749245997982.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219646, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A221881.P17320403403418010194

`2*A008949(n)-1`
-/

namespace A221881.P17320403403418010194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008949 n - 1

end

end A221881.P17320403403418010194

noncomputable section

/-- A221881: Number of order-preserving or order-reversing full contraction mappings (of an n-chain) with (right) waist exactly k.

Offset 1, canonical program `A221881.P17320403403418010194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221881 (n : ℕ) : ℤ :=
  A221881.P17320403403418010194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227064.P15989366321493760190

`A004139(A022886(n+1))`
-/

namespace A227064.P15989366321493760190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A022886 (n + 1)).toNat

end

end A227064.P15989366321493760190

noncomputable section

/-- A227064: Primes prime(k) such that the gap prime(k-1) - prime(k-2) equals the gap prime(k+2) - prime(k+1).

Offset 1, canonical program `A227064.P15989366321493760190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A227064 (n : ℕ) : ℤ :=
  A227064.P15989366321493760190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A227064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231425.P4117699728060218418

`∏{p}[A050873(n+1), 1-#]`
-/

namespace A231425.P4117699728060218418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))

end

end A231425.P4117699728060218418

noncomputable section

/-- A231425: The Schramm triangle: T(n,k) = f(gcd(n,k)), where f = Dirichlet inverse of Euler totient.

Offset 1, canonical program `A231425.P4117699728060218418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231425 (n : ℕ) : ℤ :=
  A231425.P4117699728060218418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233440.P5706952503317721454

`A003056(n)*A134832(A061579(n))`
-/

namespace A233440.P5706952503317721454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A134832 (A061579 n).toNat

end

end A233440.P5706952503317721454

noncomputable section

/-- A233440: Triangle read by rows: T(n, k) = n*binomial(n, k)*A000757(k), 0 <= k <= n.

Offset 0, canonical program `A233440.P5706952503317721454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A233440 (n : ℕ) : ℤ :=
  A233440.P5706952503317721454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A233440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242849.P8755850415644154534

`gcd(A028326(n), A098355(n))`
-/

namespace A242849.P8755850415644154534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028326 n) (A098355 n)

end

end A242849.P8755850415644154534

noncomputable section

/-- A242849: Triangle read by rows: T(n,k) = A060828(n)/(A060828(k) * A060828(n-k)).

Offset 0, canonical program `A242849.P8755850415644154534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242849 (n : ℕ) : ℤ :=
  (A242849.P8755850415644154534.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245086.P7399087689482312485

`A056594(n)*A063007(A080476(n+1))`
-/

namespace A245086.P7399087689482312485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A063007 (A080476 (n + 1)).toNat

end

end A245086.P7399087689482312485

noncomputable section

/-- A245086: Central values of the n-th discrete Chebyshev polynomials of order 2n.

Offset 0, canonical program `A245086.P7399087689482312485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A245086 (n : ℕ) : ℤ :=
  A245086.P7399087689482312485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A245086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247679.P17770235383496582350

`record[A171435(A239129(n+2))]`
-/

namespace A247679.P17770235383496582350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A239129 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247679.P17770235383496582350

noncomputable section

/-- A247679: Composite numbers congruent to 17 modulo 18.

Offset 1, canonical program `A247679.P17770235383496582350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3956 terms. -/
def A247679 (n : ℕ) : ℤ :=
  A247679.P17770235383496582350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3956 terms. -/
def A247679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247682.P4172309602348026969

`record[A171435(A242215(n+4))]`
-/

namespace A247682.P4172309602348026969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A242215 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247682.P4172309602348026969

noncomputable section

/-- A247682: Odd composite numbers congruent to 5 modulo 9.

Offset 1, canonical program `A247682.P4172309602348026969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. -/
def A247682 (n : ℕ) : ℤ :=
  A247682.P4172309602348026969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. -/
def A247682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247683.P2843368647040740458

`record[A171435(A242215(n+1)+2)]`
-/

namespace A247683.P2843368647040740458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A242215 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247683.P2843368647040740458

noncomputable section

/-- A247683: Odd composite numbers congruent to 7 modulo 9.

Offset 1, canonical program `A247683.P2843368647040740458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. -/
def A247683 (n : ℕ) : ℤ :=
  A247683.P2843368647040740458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. -/
def A247683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248591.P1269342593046905817

`(n+1)/A171435(n+1)*A001316(n)`
-/

namespace A248591.P1269342593046905817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A171435 (n + 1) : ℚ) * (A001316 n : ℚ)

end

end A248591.P1269342593046905817

noncomputable section

/-- A248591: Numerators of the (simplified) rationals n*2^(n - 1)/(n - 1)! .

Offset 1, canonical program `A248591.P1269342593046905817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6018 terms. -/
def A248591 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248591.P1269342593046905817.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6018 terms. -/
def A248591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249133.P6513466101138431158

`A249095(n)%2`
-/

namespace A249133.P6513466101138431158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249095 n) 2

end

end A249133.P6513466101138431158

noncomputable section

/-- A249133: Triangle read by rows: interleaving successive pairs of rows of Sierpiński's triangle.

Offset 0, canonical program `A249133.P6513466101138431158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249133 (n : ℕ) : ℤ :=
  A249133.P6513466101138431158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249307.P11332962648986991517

`A000079(n-floor(sqrt(n))²)*A249095(n)`
-/

namespace A249307.P11332962648986991517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n - Nat.sqrt n ^ 2) * A249095 n

end

end A249307.P11332962648986991517

noncomputable section

/-- A249307: Triangle read by rows: A249095(n,k) * 2^k, k = 0 .. 2*n+1.

Offset 0, canonical program `A249307.P11332962648986991517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249307 (n : ℕ) : ℤ :=
  A249307.P11332962648986991517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253284.P16495861320394303083

`Δ[A200748(n)]*A088617(n)`
-/

namespace A253284.P16495861320394303083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A088617 n

end

end A253284.P16495861320394303083

noncomputable section

/-- A253284: Triangle read by rows, T(n,k) = (k+1)*(n+1)!*(n+k)!/((k+1)!^2*(n-k)!) with n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A253284.P16495861320394303083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A253284 (n : ℕ) : ℤ :=
  A253284.P16495861320394303083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1304 terms. -/
def A253284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254105.P16731552791873516864

`A254107(A038722(n+1))%A017186(n)`
-/

namespace A254105.P16731552791873516864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254107 (A038722 (n + 1)).toNat) (A017186 n)

end

end A254105.P16731552791873516864

noncomputable section

/-- A254105: Dispersion of A055938; starting from its complementary sequence A005187 as the first column of square array A(row,col), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

Offset 1, canonical program `A254105.P16731552791873516864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254105 (n : ℕ) : ℤ :=
  A254105.P16731552791873516864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A254105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255120.P17865758449158190437

`n-A255062(A255121(n))`
-/

namespace A255120.P17865758449158190437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255062 (A255121 n).toNat

end

end A255120.P17865758449158190437

noncomputable section

/-- A255120: After the first zero, numbers from 0 to A255071(n)-1 followed by numbers from 0 to A255071(n+1)-1, etc.

Offset 0, canonical program `A255120.P17865758449158190437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255120 (n : ℕ) : ℤ :=
  A255120.P17865758449158190437.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255120.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256287.P1123834805178179916

`∑[A026812(A008458(n)-1+n)]`
-/

namespace A256287.P1123834805178179916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (A008458 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256287.P1123834805178179916

noncomputable section

/-- A256287: Number of partitions of 7n into 7 parts.

Offset 0, canonical program `A256287.P1123834805178179916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256287 (n : ℕ) : ℤ :=
  A256287.P1123834805178179916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256310.P15154368042461958730

`A026812(2*n)`
-/

namespace A256310.P15154368042461958730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (2 * n)

end

end A256310.P15154368042461958730

noncomputable section

/-- A256310: Number of partitions of 2n into exactly 6 parts.

Offset 0, canonical program `A256310.P15154368042461958730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A256310 (n : ℕ) : ℤ :=
  A256310.P15154368042461958730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A256310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256315.P14419130864312344157

`A026812(3*n)`
-/

namespace A256315.P14419130864312344157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (3 * n)

end

end A256315.P14419130864312344157

noncomputable section

/-- A256315: Number of partitions of 3n into exactly 6 parts.

Offset 0, canonical program `A256315.P14419130864312344157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A256315 (n : ℕ) : ℤ :=
  A256315.P14419130864312344157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A256315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256490.P2374671944261723846

`A257512(n+2)-A257512(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256490.P2374671944261723846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257512 (n + 2) - A257512 (n + 1)

end

end A256490.P2374671944261723846

noncomputable section

/-- A256490: First differences of A257512: a(n) = A257512(n+1) - A257512(n).

Offset 1, canonical program `A256490.P2374671944261723846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256490 (n : ℕ) : ℤ :=
  A256490.P2374671944261723846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256967.P15746179834374025697

`A130235(n)+1-n`
-/

namespace A256967.P15746179834374025697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130235 n + (1 - (n : ℤ))

end

end A256967.P15746179834374025697

noncomputable section

/-- A256967: a(n) = A256966(n) + 1.

Offset 1, canonical program `A256967.P15746179834374025697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256967 (n : ℕ) : ℤ :=
  A256967.P15746179834374025697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257499.P1186898740780545041

`2*A258415(n+1)-1`
-/

namespace A257499.P1186898740780545041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258415 (n + 1) - 1

end

end A257499.P1186898740780545041

noncomputable section

/-- A257499: Array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = (1 + 2^n*(6*k-3+2*(-1)^n))/3, n,k >= 1.

Offset 1, canonical program `A257499.P1186898740780545041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257499 (n : ℕ) : ℤ :=
  A257499.P1186898740780545041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257961.P6712114334569259527

`(A087172(n+1)*A194029(n+1))%A130312(n+1)`
-/

namespace A257961.P6712114334569259527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087172 (n + 1) * A194029 (n + 1)) (A130312 (n + 1))

end

end A257961.P6712114334569259527

noncomputable section

/-- A257961: List of permutations of the intervals of numbers [0,F(n)) defined by x -> x*F(n-1) mod F(n), where F(n) is the n-th Fibonacci number A000045.

Offset 0, canonical program `A257961.P6712114334569259527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257961 (n : ℕ) : ℤ :=
  A257961.P6712114334569259527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258026.P15713230575811532906

`lt[0, A079054(n+2)]+1`
-/

namespace A258026.P15713230575811532906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258026.P15713230575811532906

noncomputable section

/-- A258026: Numbers k such that prime(k+2) - 2*prime(k+1) + prime(k) < 0.

Offset 1, canonical program `A258026.P15713230575811532906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9557 terms. -/
def A258026 (n : ℕ) : ℤ :=
  (A258026.P15713230575811532906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9557 terms. -/
def A258026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258758.P2809109636177300966

`A007318(n)*A100100(A057944(n))`
-/

namespace A258758.P2809109636177300966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A100100 (A057944 n).toNat

end

end A258758.P2809109636177300966

noncomputable section

/-- A258758: Triangle T(n,k) = C(n+k-1,k)*C(2*n-1,n-k).

Offset 0, canonical program `A258758.P2809109636177300966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A258758 (n : ℕ) : ℤ :=
  A258758.P2809109636177300966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A258758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260295.P3101623688400467269

`A263021(A016789(n))/4`
-/

namespace A260295.P3101623688400467269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263021 (A016789 n).toNat : ℚ) / 4

end

end A260295.P3101623688400467269

noncomputable section

/-- A260295: Expansion of f(-x^2)^3 * f(-x^6)^3 / f(-x)^2 in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A260295.P3101623688400467269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A260295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260295.P3101623688400467269.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A260295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261082.P8170488330143915318

`A261081(n)+1`
-/

namespace A261082.P8170488330143915318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261081 n + 1

end

end A261082.P8170488330143915318

noncomputable section

/-- A261082: a(n) = number of steps required to reach 0 from F(n+2) by repeatedly subtracting from a natural number the number of ones in its Zeckendorf representation. Here F(n) = the n-th Fibonacci number, F(0) = 0, F(1) = 1, F(2) = 1, F(3) = 2, ...

Offset 0, canonical program `A261082.P8170488330143915318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261082 (n : ℕ) : ℤ :=
  A261082.P8170488330143915318.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261227.P15274673965007870817

`A261226(n^3)`
-/

namespace A261227.P15274673965007870817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (n ^ 3)

end

end A261227.P15274673965007870817

noncomputable section

/-- A261227: a(n) = number of steps to reach 0 when starting from k = n^3 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 0, canonical program `A261227.P15274673965007870817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261227 (n : ℕ) : ℤ :=
  A261227.P15274673965007870817.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265609.P16748235149498157221

`A114219(n)!*A071919(n)`
-/

namespace A265609.P16748235149498157221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A114219 n).toNat : ℤ) * A071919 n

end

end A265609.P16748235149498157221

noncomputable section

/-- A265609: Array read by ascending antidiagonals: A(n,k) the rising factorial, also known as Pochhammer symbol, for n >= 0 and k >= 0.

Offset 0, canonical program `A265609.P16748235149498157221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A265609 (n : ℕ) : ℤ :=
  A265609.P16748235149498157221.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A265609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268223.P12854693730269524273

`A178822(A007401(n+1))*A233543(n)`
-/

namespace A268223.P12854693730269524273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178822 (A007401 (n + 1)).toNat * A233543 n

end

end A268223.P12854693730269524273

noncomputable section

/-- A268223: Triangle read by rows: T(n,k) (n>=6, k=3..n-3) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,5,6,7,...,s,n} where s is the size of the largest proper open set in t.

Offset 6, canonical program `A268223.P12854693730269524273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268223 (n : ℕ) : ℤ :=
  A268223.P12854693730269524273.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A268223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270310.P10742443358392983411

`∪[A290450(n+1), A151800(A290450(n+1))]`
-/

namespace A270310.P10742443358392983411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A290450 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270310.P10742443358392983411

noncomputable section

/-- A270310: Primes ending with the same decimal digit as the previous or next prime.

Offset 1, canonical program `A270310.P10742443358392983411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A270310 (n : ℕ) : ℤ :=
  (A270310.P10742443358392983411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A270310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271211.P10364572807976757557

`eq[4, A072680(n+2)]+2`
-/

namespace A271211.P10364572807976757557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A271211.P10364572807976757557

noncomputable section

/-- A271211: Composite integers sandwiched between primes p, q with q-p = 4.

Offset 1, canonical program `A271211.P10364572807976757557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A271211 (n : ℕ) : ℤ :=
  (A271211.P10364572807976757557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A271211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271703.P8618835330592467245

`A094587(n)*A097805(n)`
-/

namespace A271703.P8618835330592467245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A097805 n

end

end A271703.P8618835330592467245

noncomputable section

/-- A271703: Triangle read by rows: the unsigned Lah numbers T(n, k) = binomial(n-1, k-1)*n!/k! if n > 0 and k > 0, T(n, 0) = 0^n and otherwise 0, for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A271703.P8618835330592467245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A271703 (n : ℕ) : ℤ :=
  A271703.P8618835330592467245.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A271703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274044.P18314180091191824190

`filter[A071011(n+1), A359377(#)]`
-/

namespace A274044.P18314180091191824190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A274044.P18314180091191824190

noncomputable section

/-- A274044: Squarefree numbers that are the sum of two squares in more than one way.

Offset 1, canonical program `A274044.P18314180091191824190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6269 terms. -/
def A274044 (n : ℕ) : ℤ :=
  A274044.P18314180091191824190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6269 terms. -/
def A274044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276418.P3941641458234612422

`A109767(n)/A094587(n)`
-/

namespace A276418.P3941641458234612422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109767 n : ℚ) / (A094587 n : ℚ)

end

end A276418.P3941641458234612422

noncomputable section

/-- A276418: Starting a random walk on Z at 0 triangle T(j,k) gives the number of paths of length 2*j returning to 0 exactly k times.

Offset 0, canonical program `A276418.P3941641458234612422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A276418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276418.P3941641458234612422.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A276418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277078.P923418389823604188

`A130595(∑[A198954(n)-1])+A130321(n)%2`
-/

namespace A277078.P923418389823604188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + Int.tmod (A130321 n) 2

end

end A277078.P923418389823604188

noncomputable section

/-- A277078: Triangular array similar to A255935 but with 0's and 2's swapped in the trailing diagonal. The columns alternate in signs.

Offset 0, canonical program `A277078.P923418389823604188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A277078 (n : ℕ) : ℤ :=
  A277078.P923418389823604188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A277078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277219.P4583255546027378714

`A007318(n)*A011782(A329854(n))`
-/

namespace A277219.P4583255546027378714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011782 (A329854 n).toNat

end

end A277219.P4583255546027378714

noncomputable section

/-- A277219: Triangle read by rows: T(n,k) is the number of independent sets of size k over all simple labeled graphs on n nodes, n>=0, 0<=k<=n.

Offset 0, canonical program `A277219.P4583255546027378714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A277219 (n : ℕ) : ℤ :=
  A277219.P4583255546027378714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A277219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277513.P97478074551810804

`A013609(eq[A035214(n), A132728(n)])`
-/

namespace A277513.P97478074551810804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277513.P97478074551810804

noncomputable section

/-- A277513: Irregular triangle read by rows: T(n,k) is the number of integers greater than 4 such that they have n trits and 2k+1 (k>=1) nonzero trits in their balanced ternary representation, with n>=3 and 1<=k<=(j-1)/2.

Offset 3, canonical program `A277513.P97478074551810804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A277513 (n : ℕ) : ℤ :=
  A277513.P97478074551810804.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A277513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281000.P384265330079404776

`A097610(A185869(n+1))`
-/

namespace A281000.P384265330079404776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 (A185869 (n + 1)).toNat

end

end A281000.P384265330079404776

noncomputable section

/-- A281000: Triangle read by rows: T(n,k) = binomial(2*n+1, 2*k+1)*binomial(2*n-2*k, n-k)/(n+1-k) for 0 <= k <= n.

Offset 0, canonical program `A281000.P384265330079404776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A281000 (n : ℕ) : ℤ :=
  A281000.P384265330079404776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A281000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281725.P2164127396884126570

`A000124(A279417(n+1))-A000124(A279416(n+1))`
-/

namespace A281725.P2164127396884126570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A279417 (n + 1)).toNat - A000124 (A279416 (n + 1)).toNat

end

end A281725.P2164127396884126570

noncomputable section

/-- A281725: Triangular array T(n,k) is the sum of elements in an n X k matrix that will be assigned the same value whether the integers from 1 to n*k are assigned to elements in row-major order or column-major order.

Offset 1, canonical program `A281725.P2164127396884126570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A281725 (n : ℕ) : ℤ :=
  A281725.P2164127396884126570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A281725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282720.P8202406451560366855

`∑[A007306(n)]-1`
-/

namespace A282720.P8202406451560366855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A282720.P8202406451560366855

noncomputable section

/-- A282720: Number of nonzero terms in first n rows of the base-2 generalized Pascal triangle P_2 (see A282714).

Offset 0, canonical program `A282720.P8202406451560366855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282720 (n : ℕ) : ℤ :=
  A282720.P8202406451560366855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285116.P11562393058970987769

`or(A097805(n+1), A097805(n))`
-/

namespace A285116.P11562393058970987769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097805 (n + 1)) (A097805 n)

end

end A285116.P11562393058970987769

noncomputable section

/-- A285116: Triangle read by rows: T(0,n) = T(n,n) = 1; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) OR C(n-1,k), where C(n,k) is binomial coefficient (A007318) and OR is bitwise-OR (A003986).

Offset 0, canonical program `A285116.P11562393058970987769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285116 (n : ℕ) : ℤ :=
  A285116.P11562393058970987769.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286159.P12324638875471488672

`A286158(A038722(n+1))`
-/

namespace A286159.P12324638875471488672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (A038722 (n + 1)).toNat

end

end A286159.P12324638875471488672

noncomputable section

/-- A286159: Lower triangular region of array A286156, transposed.

Offset 1, canonical program `A286159.P12324638875471488672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286159 (n : ℕ) : ℤ :=
  A286159.P12324638875471488672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286519.P7676926827839113296

`A290660(n)+A280411(n)%A283351(n)`
-/

namespace A286519.P7676926827839113296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n + Int.tmod (A280411 n) (A283351 n)

end

end A286519.P7676926827839113296

noncomputable section

/-- A286519: Binary representation of the diagonal from the origin to the corner (or of the corner to the origin) of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 659", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286519.P7676926827839113296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286519 (n : ℕ) : ℤ :=
  A286519.P7676926827839113296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A286519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286771.P2105546020748147357

`lcm(A280411(n), A288699(n))`
-/

namespace A286771.P2105546020748147357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A280411 n) (A288699 n)

end

end A286771.P2105546020748147357

noncomputable section

/-- A286771: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286771.P2105546020748147357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286771 (n : ℕ) : ℤ :=
  (A286771.P2105546020748147357.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A286771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291632.P11985089398796829925

`n*A122832(A161680(n))`
-/

namespace A291632.P11985089398796829925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122832 (A161680 n).toNat

end

end A291632.P11985089398796829925

noncomputable section

/-- A291632: Column 1 of A122832.

Offset 0, canonical program `A291632.P11985089398796829925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A291632 (n : ℕ) : ℤ :=
  A291632.P11985089398796829925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A291632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291665.P10294910210138216861

`A014421(A173537(n+2))`
-/

namespace A291665.P10294910210138216861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014421 (A173537 (n + 2)).toNat

end

end A291665.P10294910210138216861

noncomputable section

/-- A291665: a(n) = binomial(n, 2^floor(log_2(n))).

Offset 1, canonical program `A291665.P10294910210138216861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A291665 (n : ℕ) : ℤ :=
  A291665.P10294910210138216861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A291665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298075.P4691434882581935082

`∩[A290450(n+1), A151800(A290450(n+1))]`
-/

namespace A298075.P4691434882581935082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A290450 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298075.P4691434882581935082

noncomputable section

/-- A298075: Primes p whose last digit is the same as that of both its predecessor prime and its successor prime.

Offset 1, canonical program `A298075.P4691434882581935082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A298075 (n : ℕ) : ℤ :=
  (A298075.P4691434882581935082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A298075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298485.P7573186523658269829

`A097805(n+1)+A080232(n)`
-/

namespace A298485.P7573186523658269829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A080232 n

end

end A298485.P7573186523658269829

noncomputable section

/-- A298485: Triangle read by rows; row 0 is 1; the n-th row for n>0 contains the coefficients in the expansion of (2-x)*(1+x)^(n-1).

Offset 0, canonical program `A298485.P7573186523658269829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298485 (n : ℕ) : ℤ :=
  A298485.P7573186523658269829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302170.P8300830872753223611

`p?[A126988(n+1)+A000007(n)]-A000007(n)`
-/

namespace A302170.P8300830872753223611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n

end

end A302170.P8300830872753223611

noncomputable section

/-- A302170: Irregular triangle T(n,k) read by rows: first row is 1, n-th row (n > 1) lists distinct prime factors of n in decreasing order.

Offset 1, canonical program `A302170.P8300830872753223611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A302170 (n : ℕ) : ℤ :=
  A302170.P8300830872753223611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A302170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303872.P15192294474027379389

`A013609(n)*A097807(n)`
-/

namespace A303872.P15192294474027379389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A097807 n

end

end A303872.P15192294474027379389

noncomputable section

/-- A303872: Triangle read by rows: T(0,0) = 1; T(n,k) = -T(n-1,k) + 2 T(n-1,k-1) for k = 0,1,...,n; T(n,k)=0 for n or k < 0.

Offset 0, canonical program `A303872.P15192294474027379389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303872 (n : ℕ) : ℤ :=
  A303872.P15192294474027379389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306834.P8589768313617631174

`A014285(n+1)/gcd(A014285(n+1), A316322(n+1))`
-/

namespace A306834.P8589768313617631174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014285 (n + 1) : ℚ) / (Int.gcd (A014285 (n + 1)) (A316322 (n + 1)) : ℚ)

end

end A306834.P8589768313617631174

noncomputable section

/-- A306834: Numerator of the barycenter of first n primes defined as a(n) = numerator(Sum_{i=1..n} (i*prime(i)) / Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A306834.P8589768313617631174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306834 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306834.P8589768313617631174.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306938.P8201564370674792042

`floor(sqrt(A322550(∑[n+2]+4)))`
-/

namespace A306938.P8201564370674792042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A322550 (∑ j ∈ Finset.range (n + 1), f1 j + 4))

end

end A306938.P8201564370674792042

noncomputable section

/-- A306938: If n is divisible by 3 then a(n) = n/3 otherwise a(n) = floor(n*sqrt(3)).

Offset 1, canonical program `A306938.P8201564370674792042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A306938 (n : ℕ) : ℤ :=
  A306938.P8201564370674792042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A306938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307662.P16149030003919297589

`A028310(A127093(n+1))`
-/

namespace A307662.P16149030003919297589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A127093 (n + 1)).toNat

end

end A307662.P16149030003919297589

noncomputable section

/-- A307662: Triangle T(i,j=1..i) read by rows which contain the naturally ordered divisors-or-ones of the row number i.

Offset 1, canonical program `A307662.P16149030003919297589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. -/
def A307662 (n : ℕ) : ℤ :=
  A307662.P16149030003919297589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. -/
def A307662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308442.P6666424184122599892

`ceil(A192618(n+1)/2)`
-/

namespace A308442.P6666424184122599892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A192618 (n + 1) : ℚ) / 2⌉

end

end A308442.P6666424184122599892

noncomputable section

/-- A308442: Primes of the form (p^k+1)/2 where p is prime and k > 1.

Offset 1, canonical program `A308442.P6666424184122599892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A308442 (n : ℕ) : ℤ :=
  A308442.P6666424184122599892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A308442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309256.P10961981877231398996

`n+1-A007306(n)`
-/

namespace A309256.P10961981877231398996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A007306 n)

end

end A309256.P10961981877231398996

noncomputable section

/-- A309256: a(n) = n + 1 - Sum_{k=0..n} (Stirling2(n,k) mod 2).

Offset 0, canonical program `A309256.P10961981877231398996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309256 (n : ℕ) : ℤ :=
  A309256.P10961981877231398996.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A312143.P2878235992731397495

`A313682(n)-A253262(n)`
-/

namespace A312143.P2878235992731397495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n - A253262 n

end

end A312143.P2878235992731397495

noncomputable section

/-- A312143: Coordination sequence Gal.5.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312143.P2878235992731397495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A312143 (n : ℕ) : ℤ :=
  A312143.P2878235992731397495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A312143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312684.P12134066676930196282

`abs(A008592(n)-A315630(n))`
-/

namespace A312684.P12134066676930196282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315630 n|

end

end A312684.P12134066676930196282

noncomputable section

/-- A312684: Coordination sequence Gal.6.252.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312684.P12134066676930196282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A312684 (n : ℕ) : ℤ :=
  A312684.P12134066676930196282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A312684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313284.P7231035941228258190

`A314203(n)-A253262(n)`
-/

namespace A313284.P7231035941228258190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314203 n - A253262 n

end

end A313284.P7231035941228258190

noncomputable section

/-- A313284: Coordination sequence Gal.5.88.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313284.P7231035941228258190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313284 (n : ℕ) : ℤ :=
  A313284.P7231035941228258190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313715.P10014129678615076953

`A313703(n)+A313736(n)-A313721(n)`
-/

namespace A313715.P10014129678615076953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + (A313736 n - A313721 n)

end

end A313715.P10014129678615076953

noncomputable section

/-- A313715: Coordination sequence Gal.6.363.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313715.P10014129678615076953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A313715 (n : ℕ) : ℤ :=
  A313715.P10014129678615076953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. -/
def A313715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313898.P2205925592400124822

`A315518(n)-A330025(n)`
-/

namespace A313898.P2205925592400124822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315518 n - A330025 n

end

end A313898.P2205925592400124822

noncomputable section

/-- A313898: Coordination sequence Gal.5.291.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313898.P2205925592400124822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A313898 (n : ℕ) : ℤ :=
  A313898.P2205925592400124822.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A313898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314740.P9773231279088824093

`A312979(n)-A092202(n+2)`
-/

namespace A314740.P9773231279088824093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n - A092202 (n + 2)

end

end A314740.P9773231279088824093

noncomputable section

/-- A314740: Coordination sequence Gal.5.116.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314740.P9773231279088824093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314740 (n : ℕ) : ℤ :=
  A314740.P9773231279088824093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. -/
def A314740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314849.P12102171247342340479

`A314720(n)+Δ[A011864(n)]`
-/

namespace A314849.P12102171247342340479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314720 n + (f1 (n + 1) - f1 n)

end

end A314849.P12102171247342340479

noncomputable section

/-- A314849: Coordination sequence Gal.6.246.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314849.P12102171247342340479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A314849 (n : ℕ) : ℤ :=
  A314849.P12102171247342340479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A314849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315203.P6226893025600850173

`abs(A008592(n)-A310504(n))`
-/

namespace A315203.P6226893025600850173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310504 n|

end

end A315203.P6226893025600850173

noncomputable section

/-- A315203: Coordination sequence Gal.6.321.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315203.P6226893025600850173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A315203 (n : ℕ) : ℤ :=
  A315203.P6226893025600850173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A315203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315466.P6755861175603104134

`abs(A008592(n)-A313118(n))`
-/

namespace A315466.P6755861175603104134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313118 n|

end

end A315466.P6755861175603104134

noncomputable section

/-- A315466: Coordination sequence Gal.6.158.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315466.P6755861175603104134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315466 (n : ℕ) : ℤ :=
  A315466.P6755861175603104134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A315466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315673.P9942185892903368555

`abs(A008592(n)-A312194(n))`
-/

namespace A315673.P9942185892903368555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312194 n|

end

end A315673.P9942185892903368555

noncomputable section

/-- A315673: Coordination sequence Gal.6.347.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315673.P9942185892903368555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A315673 (n : ℕ) : ℤ :=
  A315673.P9942185892903368555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A315673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316628.P14751555026979223366

`∑[char[∑[A035614(n)]]]`
-/

namespace A316628.P14751555026979223366
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316628.P14751555026979223366

noncomputable section

/-- A316628: a(1)=1, a(2)=2, a(3)=2, a(4)=3; a(n) = a(n-a(n-1))+a(n-1-a(n-2)-a(n-2-a(n-2))) for n > 4.

Offset 1, canonical program `A316628.P14751555026979223366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316628 (n : ℕ) : ℤ :=
  (A316628.P14751555026979223366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318322.P15992978516204358098

`∑{e}[n+1, A007306(#)]`
-/

namespace A318322.P15992978516204358098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007306 (Nat.factorization (f1 n) p)

end

end A318322.P15992978516204358098

noncomputable section

/-- A318322: Additive with a(p^e) = A007306(e).

Offset 1, canonical program `A318322.P15992978516204358098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318322 (n : ℕ) : ℤ :=
  A318322.P15992978516204358098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319432.P3337669572153252279

`A085358(n)+1`
-/

namespace A319432.P3337669572153252279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085358 n + 1

end

end A319432.P3337669572153252279

noncomputable section

/-- A319432: The first differences (A129761) of the tribonacci representation numbers (A003714 or A014417) consists of runs of 1's separated by the terms of the present sequence.

Offset 1, canonical program `A319432.P3337669572153252279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319432 (n : ℕ) : ℤ :=
  A319432.P3337669572153252279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319861.P4565149569775814978

`A007318(n)/A082907(n)`
-/

namespace A319861.P4565149569775814978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A082907 n : ℚ)

end

end A319861.P4565149569775814978

noncomputable section

/-- A319861: Triangle read by rows, 0 <= k <= n: T(n,k) is the numerator of the k-th Bernstein basis polynomial of degree n evaluated at the interval midpoint t = 1/2; denominator is A319862.

Offset 0, canonical program `A319861.P4565149569775814978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319861.P4565149569775814978.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319862.P1169711650458814628

`A137688(n)/A082907(n)`
-/

namespace A319862.P1169711650458814628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℚ) / (A082907 n : ℚ)

end

end A319862.P1169711650458814628

noncomputable section

/-- A319862: Triangle read by rows, 0 <= k <= n: T(n,k) is the denominator of the k-th Bernstein basis polynomial of degree n evaluated at the interval midpoint t = 1/2; numerator is A319861.

Offset 0, canonical program `A319862.P1169711650458814628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319862 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319862.P1169711650458814628.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320042.P13296018025758099294

`2*A092339(n+1)-A000523(n+1)`
-/

namespace A320042.P13296018025758099294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092339 (n + 1) - A000523 (n + 1)

end

end A320042.P13296018025758099294

noncomputable section

/-- A320042: a(n) = a(floor(n/2)) + (-1)^(n*(n+1)/2) with a(1)=0.

Offset 1, canonical program `A320042.P13296018025758099294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320042 (n : ℕ) : ℤ :=
  A320042.P13296018025758099294.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320824.P6364300311971763929

`A006480(A003056(n))*A181543(n)`
-/

namespace A320824.P6364300311971763929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 (A003056 n).toNat * A181543 n

end

end A320824.P6364300311971763929

noncomputable section

/-- A320824: T(n, k) = (m*n)!/(k!*(n-k)!)^m with m = 3; triangle read by rows, 0 <= k <= n.

Offset 0, canonical program `A320824.P6364300311971763929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A320824 (n : ℕ) : ℤ :=
  A320824.P6364300311971763929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1057 terms. -/
def A320824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321544.P13685944617958708160

`2*A051002(n+1)-A001160(n+1)`
-/

namespace A321544.P13685944617958708160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051002 (n + 1) - A001160 (n + 1)

end

end A321544.P13685944617958708160

noncomputable section

/-- A321544: a(n) = Sum_{d|n} (-1)^(d-1)*d^5.

Offset 1, canonical program `A321544.P13685944617958708160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321544 (n : ℕ) : ℤ :=
  A321544.P13685944617958708160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321601.P8978637378401901694

`A014473(n)+∑[A130595(A061579(n))]`
-/

namespace A321601.P8978637378401901694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321601.P8978637378401901694

noncomputable section

/-- A321601: G.f.: A(x,y) = Sum_{n=-oo...+oo} (x^n + y)^n = Sum_{n>=0} Sum_{k>=0} T(n,k) * x^(n^2 + n*k) * y^k, written here as a rectangle of coefficients T(n,k) read by antidiagonals.

Offset 0, canonical program `A321601.P8978637378401901694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A321601 (n : ℕ) : ℤ :=
  A321601.P8978637378401901694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A321601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326917.P6374958588156520790

`A175035(n+1)-1`
-/

namespace A326917.P6374958588156520790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175035 (n + 1) - 1

end

end A326917.P6374958588156520790

noncomputable section

/-- A326917: Nonnegative numbers of the form 8*T(x) - T(y) with 0 <= x, 0 <= y, where T() denotes a triangular number.

Offset 1, canonical program `A326917.P6374958588156520790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326917 (n : ℕ) : ℤ :=
  A326917.P6374958588156520790.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326917.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327223.P9849619397842507375

`lt[n*A327222(n), n]`
-/

namespace A327223.P9849619397842507375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327222 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327223.P9849619397842507375

noncomputable section

/-- A327223: Positions of 0's in {A327222(k) : n > 0}.

Offset 1, canonical program `A327223.P9849619397842507375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327223 (n : ℕ) : ℤ :=
  (A327223.P9849619397842507375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A327223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330558.P13107326556388055266

`A330557(n)-A330556(n)`
-/

namespace A330558.P13107326556388055266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330557 n - A330556 n

end

end A330558.P13107326556388055266

noncomputable section

/-- A330558: a(n) = number of primes p <= 2*n+1 with Delta(p) == 0 mod 4, where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330558.P13107326556388055266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330558 (n : ℕ) : ℤ :=
  A330558.P13107326556388055266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331430.P3556009182865818442

`-A033999(A002262(n))*A063007(n)`
-/

namespace A331430.P3556009182865818442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (A002262 n).toNat * A063007 n)

end

end A331430.P3556009182865818442

noncomputable section

/-- A331430: Triangle read by rows: T(n, k) = (-1)^(k+1)*binomial(n,k)*binomial(n+k,k) (n >= k >= 0).

Offset 0, canonical program `A331430.P3556009182865818442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A331430 (n : ℕ) : ℤ :=
  A331430.P3556009182865818442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A331430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331671.P12219226916889580501

`∑{d}[n+1, A330174(#)]`
-/

namespace A331671.P12219226916889580501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330174 d

end

end A331671.P12219226916889580501

noncomputable section

/-- A331671: Number of Pythagorean triangles with sum of legs n.

Offset 1, canonical program `A331671.P12219226916889580501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331671 (n : ℕ) : ℤ :=
  A331671.P12219226916889580501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332459.P12183132962671046471

`A171435(2*(A000203(n+1)+1))`
-/

namespace A332459.P12183132962671046471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (A000203 (n + 1) + 1)).toNat

end

end A332459.P12183132962671046471

noncomputable section

/-- A332459: Odd part of 1+sigma(n).

Offset 1, canonical program `A332459.P12183132962671046471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332459 (n : ℕ) : ℤ :=
  A332459.P12183132962671046471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333230.P5884877363582196228

`lt[A079054(n+2), 1]+1`
-/

namespace A333230.P5884877363582196228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333230.P5884877363582196228

noncomputable section

/-- A333230: Positions of weak ascents in the sequence of differences between primes.

Offset 1, canonical program `A333230.P5884877363582196228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333230 (n : ℕ) : ℤ :=
  (A333230.P5884877363582196228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333357.P13297053389099279185

`comp[A028412(n)*A057427(n)]`
-/

namespace A333357.P13297053389099279185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028412 n * A057427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333357.P13297053389099279185

noncomputable section

/-- A333357: Integers that cannot be expressed as the ratio of 2 Fibonacci numbers.

Offset 1, canonical program `A333357.P13297053389099279185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333357 (n : ℕ) : ℤ :=
  (A333357.P13297053389099279185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333565.P8813464375107094006

`2*A119259(n)-(-1)^n`
-/

namespace A333565.P8813464375107094006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119259 n - (-1) ^ n

end

end A333565.P8813464375107094006

noncomputable section

/-- A333565: O.g.f.: (1 + 4*x)/((1 + x)*sqrt(1 - 8*x)).

Offset 0, canonical program `A333565.P8813464375107094006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333565 (n : ℕ) : ℤ :=
  A333565.P8813464375107094006.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334823.P8236848252117491370

`A001497(n)*A056594(A002262(n))`
-/

namespace A334823.P8236848252117491370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A056594 (A002262 n).toNat

end

end A334823.P8236848252117491370

noncomputable section

/-- A334823: Triangle, read by rows, of Lambert's denominator polynomials related to convergents of tan(x).

Offset 0, canonical program `A334823.P8236848252117491370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A334823 (n : ℕ) : ℤ :=
  A334823.P8236848252117491370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A334823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335032.P14462768690322919122

`∑{d}[n+1, A176345(#)]`
-/

namespace A335032.P14462768690322919122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176345 d

end

end A335032.P14462768690322919122

noncomputable section

/-- A335032: Dirichlet g.f.: zeta(s) * zeta(s-1) * Product_{p prime} (1 + p^(1 - s) - p^(-s)).

Offset 1, canonical program `A335032.P14462768690322919122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335032 (n : ℕ) : ℤ :=
  A335032.P14462768690322919122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335340.P11147850247702893830

`2*A103371(n)`
-/

namespace A335340.P11147850247702893830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103371 n

end

end A335340.P11147850247702893830

noncomputable section

/-- A335340: North-East paths from (0,0) to (n,n) with k cyclic descents.

Offset 1, canonical program `A335340.P11147850247702893830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335340 (n : ℕ) : ℤ :=
  A335340.P11147850247702893830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335431.P1130457591279741781

`∩[A054784(n+1), A175332(n+1)]`
-/

namespace A335431.P1130457591279741781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335431.P1130457591279741781

noncomputable section

/-- A335431: Numbers of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0.

Offset 1, canonical program `A335431.P1130457591279741781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A335431 (n : ℕ) : ℤ :=
  (A335431.P1130457591279741781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A335431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336699.P1318932189298726204

`A171435(A082903(n+1)+A000593(n+1))`
-/

namespace A336699.P1318932189298726204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A082903 (n + 1) + A000593 (n + 1)).toNat

end

end A336699.P1318932189298726204

noncomputable section

/-- A336699: a(n) = A000265(1+A000265(sigma(A000265(n)))), where A000265(k) gives the odd part of k, and sigma is the sum of divisors function.

Offset 1, canonical program `A336699.P1318932189298726204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336699 (n : ℕ) : ℤ :=
  A336699.P1318932189298726204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337615.P1242488017580297949

`A000166(A025581(n))*A098825(n)`
-/

namespace A337615.P1242488017580297949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A025581 n).toNat * A098825 n

end

end A337615.P1242488017580297949

noncomputable section

/-- A337615: T(n, k) = binomial(n, k)*sf(n-k)*sf(k) where sf is the subfactorial (A000166). Triangle read by rows, for 0 <= k <= n.

Offset 0, canonical program `A337615.P1242488017580297949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A337615 (n : ℕ) : ℤ :=
  A337615.P1242488017580297949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A337615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343647.P9354644187600228966

`A105774(n+1)-A095111(n)`
-/

namespace A343647.P9354644187600228966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105774 (n + 1) - A095111 n

end

end A343647.P9354644187600228966

noncomputable section

/-- A343647: Inverse permutation to A343646.

Offset 0, canonical program `A343647.P9354644187600228966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343647 (n : ℕ) : ℤ :=
  A343647.P9354644187600228966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346619.P9922626625092338987

`A003982(A082907(n))`
-/

namespace A346619.P9922626625092338987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A082907 n).toNat

end

end A346619.P9922626625092338987

noncomputable section

/-- A346619: Triangle read by rows: T(n,k) = 1 iff 4 divides binomial(n,k) but 8 does not (0 <= k <= n).

Offset 0, canonical program `A346619.P9922626625092338987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346619 (n : ℕ) : ℤ :=
  A346619.P9922626625092338987.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347093.P13905324333595350754

`A322577(n+1)+A347092(n+1)`
-/

namespace A347093.P13905324333595350754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322577 (n + 1) + A347092 (n + 1)

end

end A347093.P13905324333595350754

noncomputable section

/-- A347093: Sum of A322577 (convolution of Dedekind psi with Euler phi) and its Dirichlet inverse.

Offset 1, canonical program `A347093.P13905324333595350754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322577, A347092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347093 (n : ℕ) : ℤ :=
  A347093.P13905324333595350754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322577, A347092, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348898.P14212532346505736911

`A068555(A167499(n+4))/2`
-/

namespace A348898.P14212532346505736911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A167499 (n + 4)).toNat : ℚ) / 2

end

end A348898.P14212532346505736911

noncomputable section

/-- A348898: a(n) = 15120*(2*n)!/(n!*(n + 5)!); super ballot numbers, row 4 of A135573.

Offset 0, canonical program `A348898.P14212532346505736911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A348898 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348898.P14212532346505736911.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A348898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349297.P11630556186801154286

`A099375(n)%A065331(A050873(n+1))`
-/

namespace A349297.P11630556186801154286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099375 n) (A065331 (A050873 (n + 1)).toNat)

end

end A349297.P11630556186801154286

noncomputable section

/-- A349297: Triangle T(n,k) = 1 if both n and k are even or if n and k are divisible by 3.

Offset 1, canonical program `A349297.P11630556186801154286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349297 (n : ℕ) : ℤ :=
  A349297.P11630556186801154286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352033.P17820713782512467027

`A051002(n+1)%((n+1)^5)`
-/

namespace A352033.P17820713782512467027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051002 (n + 1)) ((n + 1) ^ 5 : ℤ)

end

end A352033.P17820713782512467027

noncomputable section

/-- A352033: Sum of the 5th powers of the odd proper divisors of n.

Offset 1, canonical program `A352033.P17820713782512467027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352033 (n : ℕ) : ℤ :=
  A352033.P17820713782512467027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357013.P4431206989666201964

`A094527(n)*A098361(n)`
-/

namespace A357013.P4431206989666201964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A098361 n

end

end A357013.P4431206989666201964

noncomputable section

/-- A357013: Triangle read by rows. T(n, k) = ((2*n)! * k!) / (n + k)!.

Offset 0, canonical program `A357013.P4431206989666201964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A357013 (n : ℕ) : ℤ :=
  A357013.P4431206989666201964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A357013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360395.P2153048624438428772

`floor(3*(A285973(n+1)-n)/2)`
-/

namespace A360395.P2153048624438428772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (A285973 (n + 1) - (n : ℤ)) : ℚ) / 2⌋

end

end A360395.P2153048624438428772

noncomputable section

/-- A360395: Intersection of A026430 and A360393.

Offset 1, canonical program `A360395.P2153048624438428772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360395 (n : ℕ) : ℤ :=
  A360395.P2153048624438428772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361989.P2689510740431827614

`A130312(n+1)-A194029(n+1)`
-/

namespace A361989.P2689510740431827614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (n + 1) - A194029 (n + 1)

end

end A361989.P2689510740431827614

noncomputable section

/-- A361989: a(n) is the sum of the Fibonacci numbers missing from the dual Zeckendorf representation of n; a(0) = 0, and for n > 0, a(n) = A022290(A035327(A003754(n+1))).

Offset 0, canonical program `A361989.P2689510740431827614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130312, A194029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361989 (n : ℕ) : ℤ :=
  A361989.P2689510740431827614.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130312, A194029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362951.P3946018214728712457

`A000120(A169814(n+1))`
-/

namespace A362951.P3946018214728712457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A169814 (n + 1)).toNat

end

end A362951.P3946018214728712457

noncomputable section

/-- A362951: a(n) is the Hamming distance between the binary expansions of n and phi(n) where phi is the Euler totient function (A000010).

Offset 1, canonical program `A362951.P3946018214728712457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362951 (n : ℕ) : ℤ :=
  A362951.P3946018214728712457.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362951.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364033.P4440560833208320547

`A364031(n+1)-A124340(n+1)`
-/

namespace A364033.P4440560833208320547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364031 (n + 1) - A124340 (n + 1)

end

end A364033.P4440560833208320547

noncomputable section

/-- A364033: Expansion of Sum_{k>0} k * x^(3*k) / (1 + x^(4*k)).

Offset 1, canonical program `A364033.P4440560833208320547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364033 (n : ℕ) : ℤ :=
  A364033.P4440560833208320547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367023.P1465519748105078735

`A050169(n+1)*A161642(n)*A120588(A002260(n+1))`
-/

namespace A367023.P1465519748105078735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050169 (n + 1) * A161642 n * A120588 (A002260 (n + 1)).toNat

end

end A367023.P1465519748105078735

noncomputable section

/-- A367023: Triangle read by rows, T(n, k) = [x^k] p(n), where p(n) = hypergeom([1/2, -n - 1, -n], [2, 2], 4*x).

Offset 0, canonical program `A367023.P1465519748105078735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6400 terms. -/
def A367023 (n : ℕ) : ℤ :=
  A367023.P1465519748105078735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6400 terms. -/
def A367023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367177.P15815741201613916363

`A007318(n)*A098473(n)`
-/

namespace A367177.P15815741201613916363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A098473 n

end

end A367177.P15815741201613916363

noncomputable section

/-- A367177: Triangle read by rows, T(n, k) = [x^k] hypergeom([1/2, -n, -n], [1, 1], 4*x).

Offset 0, canonical program `A367177.P15815741201613916363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6062 terms. -/
def A367177 (n : ℕ) : ℤ :=
  A367177.P15815741201613916363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6062 terms. -/
def A367177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367178.P17603027464540111819

`A007318(n)*A098474(n)`
-/

namespace A367178.P17603027464540111819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A098474 n

end

end A367178.P17603027464540111819

noncomputable section

/-- A367178: Triangle read by rows. T(n, k) = binomial(n, k)^2 * CatalanNumber(k).

Offset 0, canonical program `A367178.P17603027464540111819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6284 terms. -/
def A367178 (n : ℕ) : ℤ :=
  A367178.P17603027464540111819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6284 terms. -/
def A367178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367270.P16788633298638665148

`A007318(n)*A071919(n)`
-/

namespace A367270.P16788633298638665148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A071919 n

end

end A367270.P16788633298638665148

noncomputable section

/-- A367270: Triangle read by rows. T(n, k) = binomial(n, k)*binomial(n - 1, n - k - 1).

Offset 0, canonical program `A367270.P16788633298638665148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367270 (n : ℕ) : ℤ :=
  A367270.P16788633298638665148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370819.P7119138988108707849

`A097805(A070939(n)+∑[n])`
-/

namespace A370819.P7119138988108707849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A070939 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A370819.P7119138988108707849

noncomputable section

/-- A370819: Number of subsets of {1..n-1} whose cardinality is one less than the length of the binary expansion of n; a(0) = 0.

Offset 0, canonical program `A370819.P7119138988108707849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A370819 (n : ℕ) : ℤ :=
  A370819.P7119138988108707849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A370819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371965.P13381731300050303611

`A371964(n+1)-A371963(n)`
-/

namespace A371965.P13381731300050303611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371964 (n + 1) - A371963 n

end

end A371965.P13381731300050303611

noncomputable section

/-- A371965: a(n) is the sum of all peaks in the set of Catalan words of length n.

Offset 0, canonical program `A371965.P13381731300050303611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A371965 (n : ℕ) : ℤ :=
  A371965.P13381731300050303611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A371965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373101.P8641558268484953081

`C(A014430(n)+2, 3)`
-/

namespace A373101.P8641558268484953081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014430 n + 2).toNat 3

end

end A373101.P8641558268484953081

noncomputable section

/-- A373101: Triangle read by rows, T(n,k) = (binomial(n,k)^3 - binomial(n,k))/6 for k=1..n-1 and n >= 2.

Offset 2, canonical program `A373101.P8641558268484953081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6494 terms. -/
def A373101 (n : ℕ) : ℤ :=
  (A373101.P8641558268484953081.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6494 terms. -/
def A373101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373397.P14400357127221746357

`∑{d}[n+1, A372671(#)*A373156((n+1)/#)]`
-/

namespace A373397.P14400357127221746357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372671 d * A373156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373397.P14400357127221746357

noncomputable section

/-- A373397: Expansion of Sum_{k>=0} x^(6^k) / (1 - x^(6^k))^2.

Offset 1, canonical program `A373397.P14400357127221746357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373397 (n : ℕ) : ℤ :=
  A373397.P14400357127221746357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374044.P3510454366840386907

`filter[A374042(n+1), A187074(#)]`
-/

namespace A374044.P3510454366840386907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A374044.P3510454366840386907

noncomputable section

/-- A374044: Non-multiples of 3 whose 2-adic valuation is a multiple of 3.

Offset 1, canonical program `A374044.P3510454366840386907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9313 terms. -/
def A374044 (n : ℕ) : ℤ :=
  A374044.P3510454366840386907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9313 terms. -/
def A374044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380114.P703305606341716703

`A097805(n)*A137688(n)`
-/

namespace A380114.P703305606341716703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A137688 n

end

end A380114.P703305606341716703

noncomputable section

/-- A380114: Triangle read by rows: The convolution triangle of 2^n, where the convolution triangle of a sequence is defined in A357368.

Offset 0, canonical program `A380114.P703305606341716703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380114 (n : ℕ) : ℤ :=
  A380114.P703305606341716703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381848.P12239694092902384723

`A245188(n)+A036577(A014681(n+1))`
-/

namespace A381848.P12239694092902384723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245188 n + A036577 (A014681 (n + 1)).toNat

end

end A381848.P12239694092902384723

noncomputable section

/-- A381848: Sequence obtained by replacing 3-term subwords of A010060 by 0,1,2,3,4,5 as described in Comments.

Offset 1, canonical program `A381848.P12239694092902384723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381848 (n : ℕ) : ℤ :=
  A381848.P12239694092902384723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385136.P7441573335229270188

`∑{d}[n+1, A384040(#)]`
-/

namespace A385136.P7441573335229270188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A384040 d

end

end A385136.P7441573335229270188

noncomputable section

/-- A385136: The sum of divisors d of n such that n/d is a cubefull number (A036966).

Offset 1, canonical program `A385136.P7441573335229270188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136 (n : ℕ) : ℤ :=
  A385136.P7441573335229270188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386822.P5436816925973816835

`A362227(A023758(n+1))`
-/

namespace A386822.P5436816925973816835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A023758 (n + 1)).toNat

end

end A386822.P5436816925973816835

noncomputable section

/-- A386822: Irregular table T(n,k) = Product_{j = 1..k} prime(j)^(n-j+1), n >= 0, k = 1..n.

Offset 0, canonical program `A386822.P5436816925973816835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822 (n : ℕ) : ℤ :=
  A386822.P5436816925973816835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A386822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386825.P13800824448105910529

`A094527(n)*A140303(n)`
-/

namespace A386825.P13800824448105910529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A140303 n

end

end A386825.P13800824448105910529

noncomputable section

/-- A386825: Triangle read by rows: T(n,k) = 3^(n-k)*C(2*n,n-k).

Offset 0, canonical program `A386825.P13800824448105910529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4465 terms. -/
def A386825 (n : ℕ) : ℤ :=
  A386825.P13800824448105910529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4465 terms. -/
def A386825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387325.P12366465277394037670

`A117303(n+1)-1`
-/

namespace A387325.P12366465277394037670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117303 (n + 1) - 1

end

end A387325.P12366465277394037670

noncomputable section

/-- A387325: Self-inverse permutation of the nonnegative integers, by swapping and converting the head and tail parts of n in binary and using the rightmost 0-bit as their separator.

Offset 0, canonical program `A387325.P12366465277394037670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325 (n : ℕ) : ℤ :=
  A387325.P12366465277394037670.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A387325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389197.P3690758276685081400

`filter[A336101(n+1), A229062(#)]`
-/

namespace A389197.P3690758276685081400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A389197.P3690758276685081400

noncomputable section

/-- A389197: Numbers whose sum of unitary divisors (usigma, A034448) is congruent to 2 modulo 4.

Offset 1, canonical program `A389197.P3690758276685081400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A389197 (n : ℕ) : ℤ :=
  A389197.P3690758276685081400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A389197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398136.P2768667115202154946

`A071207(n)*A233543(n)`
-/

namespace A398136.P2768667115202154946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 n * A233543 n

end

end A398136.P2768667115202154946

noncomputable section

/-- A398136: Triangle read by rows: T(n, k) = n! * n^(n - k) / (n - k)!.

Offset 0, canonical program `A398136.P2768667115202154946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A398136 (n : ℕ) : ℤ :=
  A398136.P2768667115202154946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A398136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171696.P13576368370877495331

`comp[A377540(n+1)]`
-/

namespace A171696.P13576368370877495331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171696.P13576368370877495331

noncomputable section

/-- A171696: Nonnegative numbers k such that neither of 6*k +- 1 is prime.

Offset 1, canonical program `A171696.P13576368370877495331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171696 (n : ℕ) : ℤ :=
  (A171696.P13576368370877495331.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171729.P17350699023659055565

`A171730(A038722(n+1))`
-/

namespace A171729.P17350699023659055565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171730 (A038722 (n + 1)).toNat

end

end A171729.P17350699023659055565

noncomputable section

/-- A171729: Triangle of differences of Fibonacci numbers, rows ascending.

Offset 1, canonical program `A171729.P17350699023659055565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171729 (n : ℕ) : ℤ :=
  A171729.P17350699023659055565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172016.P3154640750281185273

`∪[A121764(n+1)-2, A121764(n+1)]`
-/

namespace A172016.P3154640750281185273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172016.P3154640750281185273

noncomputable section

/-- A172016: Numbers of the form 6*k-+1 such that 6*k-1=nonprime and 6*k+1=prime.

Offset 1, canonical program `A172016.P3154640750281185273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172016 (n : ℕ) : ℤ :=
  (A172016.P3154640750281185273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A172016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173522.P2611288585659142813

`∑[A105321(n)]-A105321(n)`
-/

namespace A173522.P2611288585659142813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105321 n

end

end A173522.P2611288585659142813

noncomputable section

/-- A173522: Zero together with the partial sums of A105321.

Offset 0, canonical program `A173522.P2611288585659142813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173522 (n : ℕ) : ℤ :=
  A173522.P2611288585659142813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175101.P10372877108701866296

`A063994(A046388(n+1))-2`
-/

namespace A175101.P10372877108701866296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A046388 (n + 1)).toNat - 2

end

end A175101.P10372877108701866296

noncomputable section

/-- A175101: The number of bases b for which the odd squarefree semiprime A046388(n) is a Fermat pseudoprime.

Offset 1, canonical program `A175101.P10372877108701866296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1932 terms. -/
def A175101 (n : ℕ) : ℤ :=
  A175101.P10372877108701866296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1932 terms. -/
def A175101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182570.P16827199781017962522

`p?[A179243(n+1)]`
-/

namespace A182570.P16827199781017962522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182570.P16827199781017962522

noncomputable section

/-- A182570: Primes that have three terms in their Zeckendorf representation.

Offset 1, canonical program `A182570.P16827199781017962522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A182570 (n : ℕ) : ℤ :=
  A182570.P16827199781017962522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A182570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182571.P14148324421551641499

`p?[A179244(n+1)]`
-/

namespace A182571.P14148324421551641499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182571.P14148324421551641499

noncomputable section

/-- A182571: Primes that have four terms in their Zeckendorf representation.

Offset 1, canonical program `A182571.P14148324421551641499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A182571 (n : ℕ) : ℤ :=
  A182571.P14148324421551641499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A182571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183761.P10290592215169044862

`ceil(A062801(ceil(Δ[n²]/2))/2)`
-/

namespace A183761.P10290592215169044862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062801 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A183761.P10290592215169044862

noncomputable section

/-- A183761: Number of 2 X 2 nonsingular 0..n matrices with rows in increasing order.

Offset 1, canonical program `A183761.P10290592215169044862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A183761 (n : ℕ) : ℤ :=
  A183761.P10290592215169044862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A183761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185938.P17107618719082406059

`∩[A054643(n+1), A121762(n+1)]`
-/

namespace A185938.P17107618719082406059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185938.P17107618719082406059

noncomputable section

/-- A185938: First of a run of 3 or more consecutive primes which are congruent to 2 (mod 3).

Offset 1, canonical program `A185938.P17107618719082406059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A185938 (n : ℕ) : ℤ :=
  (A185938.P17107618719082406059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A185938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186648.P1074601965307673804

`(A264960(n)-A000984(n))/2`
-/

namespace A186648.P1074601965307673804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264960 n - A000984 n : ℚ) / 2

end

end A186648.P1074601965307673804

noncomputable section

/-- A186648: Number of walks f length n on a square lattice ending with x > 0 and y > 0.

Offset 0, canonical program `A186648.P1074601965307673804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A186648 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186648.P1074601965307673804.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A186648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188318.P11824684918398518309

`A188321(A083035(n+1)+n+1)`
-/

namespace A188318.P11824684918398518309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (A083035 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188318.P11824684918398518309

noncomputable section

/-- A188318: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A188318.P11824684918398518309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188318 (n : ℕ) : ℤ :=
  A188318.P11824684918398518309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190299.P8200176430200214547

`filter[A189986(n+1), A212793(#)]`
-/

namespace A190299.P8200176430200214547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A190299.P8200176430200214547

noncomputable section

/-- A190299: Squarefree semiprimes of the form 4k+1.

Offset 1, canonical program `A190299.P8200176430200214547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9085 terms. -/
def A190299 (n : ℕ) : ℤ :=
  A190299.P8200176430200214547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9085 terms. -/
def A190299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193348.P8154066474516695314

`∏{e}[A000265(∏{e}[n+1, #+1]), #+1]`
-/

namespace A193348.P8154066474516695314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A193348.P8154066474516695314

noncomputable section

/-- A193348: Number of odd divisors of tau(n).

Offset 1, canonical program `A193348.P8154066474516695314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193348 (n : ℕ) : ℤ :=
  (A193348.P8154066474516695314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208884.P2591176299174833096

`A000265(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A208884.P2591176299174833096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000265 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A208884.P2591176299174833096

noncomputable section

/-- A208884: a(n) = (a(n-1) + n)/2^k where 2^k is the largest power of 2 dividing a(n-1) + n, for n>1 with a(1)=1.

Offset 1, canonical program `A208884.P2591176299174833096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208884 (n : ℕ) : ℤ :=
  A208884.P2591176299174833096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212181.P14133733360167425525

`A000265(∏{e}[n+1, #+1])`
-/

namespace A212181.P14133733360167425525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A212181.P14133733360167425525

noncomputable section

/-- A212181: Largest odd divisor of tau(n): a(n) = A000265(A000005(n)).

Offset 1, canonical program `A212181.P14133733360167425525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212181 (n : ℕ) : ℤ :=
  A212181.P14133733360167425525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212278.P9636615895971734323

`A102364(n)-A213911(n)`
-/

namespace A212278.P9636615895971734323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102364 n - A213911 n

end

end A212278.P9636615895971734323

noncomputable section

/-- A212278: Number of adjacent pairs of zeros (possibly overlapping) in the representation of n in base of Fibonacci numbers (A014417).

Offset 0, canonical program `A212278.P9636615895971734323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212278 (n : ℕ) : ℤ :=
  A212278.P9636615895971734323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213671.P12934676949970422598

`A000265(∑[n]+1)`
-/

namespace A213671.P12934676949970422598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213671.P12934676949970422598

noncomputable section

/-- A213671: The odd part of n^2 - n + 2.

Offset 1, canonical program `A213671.P12934676949970422598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A213671 (n : ℕ) : ℤ :=
  A213671.P12934676949970422598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A213671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214362.P3714722882653468056

`xor(3, A213815(A028310(n)+1))+1`
-/

namespace A214362.P3714722882653468056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A213815 (A028310 n + 1).toNat) + 1

end

end A214362.P3714722882653468056

noncomputable section

/-- A214362: Arithmetic mean of next a(n) successive positive integers is prime.

Offset 1, canonical program `A214362.P3714722882653468056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214362 (n : ℕ) : ℤ :=
  A214362.P3714722882653468056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218227.P13857964789849217823

`A218281(2*(n+1))`
-/

namespace A218227.P13857964789849217823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218281 (2 * (n + 1))

end

end A218227.P13857964789849217823

noncomputable section

/-- A218227: Hilltop maps: number of n X 2 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..2 n X 2 array.

Offset 1, canonical program `A218227.P13857964789849217823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A218227 (n : ℕ) : ℤ :=
  A218227.P13857964789849217823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A218227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225091.P1547395261014293833

`A000265(A066003(n))`
-/

namespace A225091.P1547395261014293833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A066003 n).toNat

end

end A225091.P1547395261014293833

noncomputable section

/-- A225091: The odd part of the digit sum of 7^n.

Offset 0, canonical program `A225091.P1547395261014293833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A066003, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225091 (n : ℕ) : ℤ :=
  A225091.P1547395261014293833.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A066003, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A225091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229785.P2544820907719229292

`∑[A157129(n+1)]`
-/

namespace A229785.P2544820907719229292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229785.P2544820907719229292

noncomputable section

/-- A229785: Partial sums of A157129.

Offset 1, canonical program `A229785.P2544820907719229292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229785 (n : ℕ) : ℤ :=
  A229785.P2544820907719229292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229802.P2100397921254206650

`A227216(2*(n+1))-A227216(A000265(n+1))`
-/

namespace A229802.P2100397921254206650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 (2 * (n + 1)) - A227216 (A000265 (n + 1)).toNat

end

end A229802.P2100397921254206650

noncomputable section

/-- A229802: Expansion of q * f(-q, -q^4)^5 / f(-q)^3 in powers of q where f() is a Ramanujan theta function.

Offset 1, canonical program `A229802.P2100397921254206650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A229802 (n : ℕ) : ℤ :=
  A229802.P2100397921254206650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A229802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233775.P17199586027421779978

`A105321(n)-ceil(A038573(n)/2)`
-/

namespace A233775.P17199586027421779978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n - ⌈(A038573 n : ℚ) / 2⌉

end

end A233775.P17199586027421779978

noncomputable section

/-- A233775: Number of vertices in the n-th row of the Sierpinski gasket (cf. A047999).

Offset 0, canonical program `A233775.P17199586027421779978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233775 (n : ℕ) : ℤ :=
  A233775.P17199586027421779978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236331.P7355864695801326223

`64*A031363(n+1)`
-/

namespace A236331.P7355864695801326223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A031363 (n + 1)

end

end A236331.P7355864695801326223

noncomputable section

/-- A236331: Positive integers n such that x^2 - 18xy + y^2 + n = 0 has integer solutions.

Offset 1, canonical program `A236331.P7355864695801326223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236331 (n : ℕ) : ℤ :=
  A236331.P7355864695801326223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236999.P8096146141074710051

`A000265(A176126(n+2))`
-/

namespace A236999.P8096146141074710051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A176126 (n + 2)).toNat

end

end A236999.P8096146141074710051

noncomputable section

/-- A236999: Odd part of n*(n+3)/2-1 (A034856).

Offset 1, canonical program `A236999.P8096146141074710051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A236999 (n : ℕ) : ℤ :=
  A236999.P8096146141074710051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A236999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238246.P5198860850169695475

`A043687(n+1)+1`
-/

namespace A238246.P5198860850169695475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043687 (n + 1) + 1

end

end A238246.P5198860850169695475

noncomputable section

/-- A238246: Numbers m such that A072219(m) = 3.

Offset 1, canonical program `A238246.P5198860850169695475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A238246 (n : ℕ) : ℤ :=
  A238246.P5198860850169695475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A238246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239018.P12242242400328988881

`∩[A007932(n+1), A239019(n+1)]`
-/

namespace A239018.P12242242400328988881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239018.P12242242400328988881

noncomputable section

/-- A239018: Non-primitive words on {1,2,3}.

Offset 1, canonical program `A239018.P12242242400328988881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A239018 (n : ℕ) : ℤ :=
  (A239018.P12242242400328988881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A239018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239879.P16824240110881883084

`∪[A184247(n+1), A184248(n+1)]`
-/

namespace A239879.P16824240110881883084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A239879.P16824240110881883084

noncomputable section

/-- A239879: Primes p such that either x divides y, or y divides x, where x = nextprime(p) - p, and y = p - prevprime(p).

Offset 1, canonical program `A239879.P16824240110881883084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239879 (n : ℕ) : ℤ :=
  (A239879.P16824240110881883084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A239879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240678.P16460776034127500961

`p?[A216292(n+1)]`
-/

namespace A240678.P16460776034127500961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240678.P16460776034127500961

noncomputable section

/-- A240678: Primes p such that p*10+k is prime for exactly one value of the digit k.

Offset 1, canonical program `A240678.P16460776034127500961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240678 (n : ℕ) : ℤ :=
  A240678.P16460776034127500961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A240678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245963.P17810080779370420082

`A030528(A056536(n+2))`
-/

namespace A245963.P17810080779370420082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A056536 (n + 2)).toNat

end

end A245963.P17810080779370420082

noncomputable section

/-- A245963: Triangle read by rows: T(n,k) is the number of maximal hypercubes Q(p) in the Fibonacci cube Gamma(n) (i.e., Q(p) is an induced subgraph of Gamma(n) that is not a subgraph of a subgraph of Gamma(n) that is isomorphic to the hypercube Q(p+1)).

Offset 0, canonical program `A245963.P17810080779370420082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A245963 (n : ℕ) : ℤ :=
  A245963.P17810080779370420082.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A245963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256317.P11855813758149970793

`A256540(n)-A256539(n)`
-/

namespace A256317.P11855813758149970793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256540 n - A256539 n

end

end A256317.P11855813758149970793

noncomputable section

/-- A256317: Number of partitions of 4n into exactly 6 parts.

Offset 0, canonical program `A256317.P11855813758149970793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256317 (n : ℕ) : ℤ :=
  A256317.P11855813758149970793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256602.P14275851301488169315

`∩[A038874(n+1), A121764(n+1)]`
-/

namespace A256602.P14275851301488169315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256602.P14275851301488169315

noncomputable section

/-- A256602: Primes of form 12*k + 1 and not a twin prime.

Offset 1, canonical program `A256602.P14275851301488169315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3782 terms. -/
def A256602 (n : ℕ) : ℤ :=
  (A256602.P14275851301488169315.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3782 terms. -/
def A256602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257399.P10089771544026543685

`A216282(6*n+3+A298028(2*n))`
-/

namespace A257399.P10089771544026543685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 ((6 * n + 3 : ℤ) + A298028 (2 * n)).toNat

end

end A257399.P10089771544026543685

noncomputable section

/-- A257399: Expansion of phi(x^3) * phi(-x^12) / chi(-x^4) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A257399.P10089771544026543685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3641 terms. -/
def A257399 (n : ℕ) : ℤ :=
  A257399.P10089771544026543685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3641 terms. -/
def A257399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257402.P10523308612613138728

`A216282(6*n+11)`
-/

namespace A257402.P10523308612613138728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (6 * n + 11)

end

end A257402.P10523308612613138728

noncomputable section

/-- A257402: Expansion of chi(x) * psi(-x^3) * psi(x^12) in powers of x where psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A257402.P10523308612613138728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257402 (n : ℕ) : ℤ :=
  A257402.P10523308612613138728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258469.P13825212742255435643

`A258432(eq[1, A258383(n+1)]+1)`
-/

namespace A258469.P13825212742255435643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258432 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A258469.P13825212742255435643

noncomputable section

/-- A258469: Numbers m such that A062234(m) != A062234(m+1).

Offset 1, canonical program `A258469.P13825212742255435643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9263 terms. -/
def A258469 (n : ℕ) : ℤ :=
  A258469.P13825212742255435643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9263 terms. -/
def A258469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259548.P18234213199835216627

`record[A000265(A004612(n+1)*A006519(n+1))]`
-/

namespace A259548.P18234213199835216627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A004612 (n + 1) * A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259548.P18234213199835216627

noncomputable section

/-- A259548: Numbers divisible only by primes of the form 6*m-1.

Offset 1, canonical program `A259548.P18234213199835216627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A259548 (n : ℕ) : ℤ :=
  A259548.P18234213199835216627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A259548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260658.P2171500633036475055

`(-1)^n*A000265(9*n+5)`
-/

namespace A260658.P2171500633036475055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000265 (9 * n + 5)

end

end A260658.P2171500633036475055

noncomputable section

/-- A260658: Numerators of a BBP-like formula for 4*Pi/sqrt(27).

Offset 0, canonical program `A260658.P2171500633036475055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260658 (n : ℕ) : ℤ :=
  A260658.P2171500633036475055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261090.P12363886356026085992

`A261091(n+1)-A261091(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261090.P12363886356026085992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261091 (n + 1) - A261091 n

end

end A261090.P12363886356026085992

noncomputable section

/-- A261090: First differences of A261091: a(n) = A261091(n+1) - A261091(n).

Offset 0, canonical program `A261090.P12363886356026085992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261090 (n : ℕ) : ℤ :=
  A261090.P12363886356026085992.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261093.P14586296269946193917

`∑[A261092(n)]-1`
-/

namespace A261093.P14586296269946193917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261093.P14586296269946193917

noncomputable section

/-- A261093: a(n) = number of nonzero terms of A219640 <= n.

Offset 0, canonical program `A261093.P14586296269946193917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261093 (n : ℕ) : ℤ :=
  A261093.P14586296269946193917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6766 terms. -/
def A261093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262855.P8894309601039071380

`A267673(A020703(n+1)-1)`
-/

namespace A262855.P8894309601039071380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267673 (A020703 (n + 1) - 1).toNat

end

end A262855.P8894309601039071380

noncomputable section

/-- A262855: Triangle read by rows giving successive states of cellular automaton generated by "Rule 153" initiated with a single ON (black) cell.

Offset 0, canonical program `A262855.P8894309601039071380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262855 (n : ℕ) : ℤ :=
  A262855.P8894309601039071380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263715.P12750305825610141629

`∪[A097269(n+1), A107750(n)]`
-/

namespace A263715.P12750305825610141629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263715.P12750305825610141629

noncomputable section

/-- A263715: Nonnegative integers that are the sum or difference of two squares.

Offset 1, canonical program `A263715.P12750305825610141629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263715 (n : ℕ) : ℤ :=
  (A263715.P12750305825610141629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266226.P13876817309741798291

`floor(A265390(n+1)/A253139(n+1))`
-/

namespace A266226.P13876817309741798291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265390 (n + 1) : ℚ) / (A253139 (n + 1) : ℚ)⌋

end

end A266226.P13876817309741798291

noncomputable section

/-- A266226: a(n) = floor(Sum_{d|n} 1 / tau(d)).

Offset 1, canonical program `A266226.P13876817309741798291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266226 (n : ℕ) : ℤ :=
  A266226.P13876817309741798291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266295.P15302427151285831677

`A000265(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A266295.P15302427151285831677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7] fun n a =>
  A000265 (a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4)).toNat

end

end A266295.P15302427151285831677

noncomputable section

/-- A266295: 2-free tetranacci sequence beginning 1,3,5,7.

Offset 1, canonical program `A266295.P15302427151285831677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266295 (n : ℕ) : ℤ :=
  A266295.P15302427151285831677.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268083.P14251606824912960542

`filter[A082916(n+3), A354108(#)]`
-/

namespace A268083.P14251606824912960542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A268083.P14251606824912960542

noncomputable section

/-- A268083: Numbers k that are not prime powers and such that gcd(binomial(2*k-1,k), k) = 1.

Offset 1, canonical program `A268083.P14251606824912960542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A268083 (n : ℕ) : ℤ :=
  A268083.P14251606824912960542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A268083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268087.P15154717070613151809

`A007306(A258746(n+1)+1)`
-/

namespace A268087.P15154717070613151809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A258746 (n + 1) + 1).toNat

end

end A268087.P15154717070613151809

noncomputable section

/-- A268087: a(n) = A162909(n) + A162910(n).

Offset 1, canonical program `A268087.P15154717070613151809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A268087 (n : ℕ) : ℤ :=
  A268087.P15154717070613151809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A268087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268631.P11656545596258421338

`A006579(n+1)-n`
-/

namespace A268631.P11656545596258421338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) - (n : ℤ)

end

end A268631.P11656545596258421338

noncomputable section

/-- A268631: Number of ordered pairs (a,b) of positive integers less than n with the property that n divides ab.

Offset 1, canonical program `A268631.P11656545596258421338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268631 (n : ℕ) : ℤ :=
  A268631.P11656545596258421338.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006579, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268631.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270968.P12727451645434044411

`A000265(A017341(n))`
-/

namespace A270968.P12727451645434044411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017341 n).toNat

end

end A270968.P12727451645434044411

noncomputable section

/-- A270968: Reduced 5x+1 function R applied to the odd integers: a(n) = R(2n-1), where R(k) = (5k+1)/2^r, with r as large as possible.

Offset 1, canonical program `A270968.P12727451645434044411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270968 (n : ℕ) : ℤ :=
  A270968.P12727451645434044411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274139.P8346514154262221856

`2^A000265(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274139.P8346514154262221856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000265 (n + 1) : ℤ)

end

end A274139.P8346514154262221856

noncomputable section

/-- A274139: a(n) = 2^A000265(n) = 2^numerator(n/2^n), a sequence related to Oresme numbers.

Offset 1, canonical program `A274139.P8346514154262221856`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274139 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A274139.P8346514154262221856.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274172.P8360577516930396545

`filter[A038510(n+1), A049240(#)]`
-/

namespace A274172.P8360577516930396545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A274172.P8360577516930396545

noncomputable section

/-- A274172: Nonsquare composites with all prime factors larger than 5.

Offset 1, canonical program `A274172.P8360577516930396545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9936 terms. -/
def A274172 (n : ℕ) : ℤ :=
  A274172.P8360577516930396545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9936 terms. -/
def A274172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274555.P2558607527214522533

`∩[A140612(n+1), A000415(n+5)]`
-/

namespace A274555.P2558607527214522533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274555.P2558607527214522533

noncomputable section

/-- A274555: Nonsquare n such that n*(n+1)/2 is the sum of two nonzero squares.

Offset 1, canonical program `A274555.P2558607527214522533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2067 terms. -/
def A274555 (n : ℕ) : ℤ :=
  (A274555.P2558607527214522533.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2067 terms. -/
def A274555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275367.P11477667635539536646

`∏{e}[A000265(n+1), A005408(#)]`
-/

namespace A275367.P11477667635539536646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005408 (Nat.factorization (f1 n).natAbs p)

end

end A275367.P11477667635539536646

noncomputable section

/-- A275367: Number of odd divisors of n^2.

Offset 1, canonical program `A275367.P11477667635539536646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275367 (n : ℕ) : ℤ :=
  A275367.P11477667635539536646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275919.P913546030390113803

`A140102(n+1)+(A140103(n+1)+A140102(n+1))²`
-/

namespace A275919.P913546030390113803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 (n + 1) + (A140103 (n + 1) + A140102 (n + 1)) ^ 2

end

end A275919.P913546030390113803

noncomputable section

/-- A275919: a(n) = A273059(4n+3).

Offset 0, canonical program `A275919.P913546030390113803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275919 (n : ℕ) : ℤ :=
  A275919.P913546030390113803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276255.P14719271894009360201

`∑[A033548(n+1)]`
-/

namespace A276255.P14719271894009360201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276255.P14719271894009360201

noncomputable section

/-- A276255: Sum of first n Honaker primes.

Offset 1, canonical program `A276255.P14719271894009360201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276255 (n : ℕ) : ℤ :=
  A276255.P14719271894009360201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277238.P17499290417694551927

`∪[A035928(n+1), A276795(n+1)]`
-/

namespace A277238.P17499290417694551927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277238.P17499290417694551927

noncomputable section

/-- A277238: Folding numbers (see comments for the definition).

Offset 1, canonical program `A277238.P17499290417694551927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277238 (n : ℕ) : ℤ :=
  (A277238.P17499290417694551927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277567.P15704819305109196933

`filter[A189715(n+1), A373156(#)]`
-/

namespace A277567.P15704819305109196933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277567.P15704819305109196933

noncomputable section

/-- A277567: Numbers k such that k/6^m == 1 (mod 6), where 6^m is the greatest power of 6 that divides k.

Offset 1, canonical program `A277567.P15704819305109196933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A277567 (n : ℕ) : ℤ :=
  A277567.P15704819305109196933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. -/
def A277567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277571.P535996432442128007

`filter[A225838(n+1), A373156(#)]`
-/

namespace A277571.P535996432442128007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277571.P535996432442128007

noncomputable section

/-- A277571: Numbers k such that k/6^m == 5 (mod 6), where 6^m is the greatest power of 6 that divides k.

Offset 1, canonical program `A277571.P535996432442128007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4010 terms. -/
def A277571 (n : ℕ) : ℤ :=
  A277571.P535996432442128007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4010 terms. -/
def A277571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277812.P16669805082078659615

`A003188(A000265(A006068(n+1)))`
-/

namespace A277812.P16669805082078659615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A000265 (A006068 (n + 1)).toNat).toNat

end

end A277812.P16669805082078659615

noncomputable section

/-- A277812: a(n) = the first odious number encountered when starting from k = n and iterating the map k -> A003188(A006068(k)/2).

Offset 1, canonical program `A277812.P16669805082078659615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A277812 (n : ℕ) : ℤ :=
  A277812.P16669805082078659615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A277812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281392.P7903200098704454459

`A086784(n)+a(A000265(n)-1)+1` with `a(0)=0`
-/

namespace A281392.P7903200098704454459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086784 n + (a (A000265 n - 1).toNat + 1)

end

end A281392.P7903200098704454459

noncomputable section

/-- A281392: Number of occurrences of "01" as a subsequence in the binary expansion of n.

Offset 0, canonical program `A281392.P7903200098704454459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281392 (n : ℕ) : ℤ :=
  A281392.P7903200098704454459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281785.P16696734962775317770

`A061347(n+1)*A116607(A000265(n+1))`
-/

namespace A281785.P16696734962775317770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A116607 (A000265 (n + 1)).toNat

end

end A281785.P16696734962775317770

noncomputable section

/-- A281785: a(n) is multiplicative with a(2^e) = 1, a(3^e) = -8 if e>0, a(p^e) = (p^(e+1) - 1) / (p - 1) if p>3.

Offset 1, canonical program `A281785.P16696734962775317770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281785 (n : ℕ) : ℤ :=
  A281785.P16696734962775317770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283794.P5491480845354649629

`A288931(Δ[n²])-n`
-/

namespace A283794.P5491480845354649629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A283794.P5491480845354649629

noncomputable section

/-- A283794: Positions of 1 in A288375; complement of A288625.

Offset 1, canonical program `A283794.P5491480845354649629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A283794 (n : ℕ) : ℤ :=
  A283794.P5491480845354649629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A283794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285008.P1313120965018037990

`3*(2*n-1)*a(n-1)/A000265(n)` with `a(0)=1`
-/

namespace A285008.P1313120965018037990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1)) / (A000265 n : ℚ)

end

end A285008.P1313120965018037990

noncomputable section

/-- A285008: Numerator of (3/4)^n * binomial(2*n,n).

Offset 0, canonical program `A285008.P1313120965018037990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285008.P1313120965018037990.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289558.P3835344173252596639

`∪[A046388(n+1), A100368(n+1)]`
-/

namespace A289558.P3835344173252596639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289558.P3835344173252596639

noncomputable section

/-- A289558: Numbers with two distinct prime factors not divisible by a square larger than 4.

Offset 1, canonical program `A289558.P3835344173252596639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289558 (n : ℕ) : ℤ :=
  (A289558.P3835344173252596639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290479.P14131532051956969420

`A078599(n+1)/A007947(n+1)`
-/

namespace A290479.P14131532051956969420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078599 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A290479.P14131532051956969420

noncomputable section

/-- A290479: Product of nonprime squarefree divisors of n.

Offset 1, canonical program `A290479.P14131532051956969420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A078599, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290479 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290479.P14131532051956969420.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A078599, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290480.P5828358060988426572

`A061537(n+1)/(n+1)`
-/

namespace A290480.P5828358060988426572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A290480.P5828358060988426572

noncomputable section

/-- A290480: Product of proper unitary divisors of n.

Offset 1, canonical program `A290480.P5828358060988426572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290480 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290480.P5828358060988426572.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291784.P16578059245399966389

`∑{d}[n+1, A271102(#)*A378542((n+1)/#)]`
-/

namespace A291784.P16578059245399966389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A378542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P16578059245399966389

noncomputable section

/-- A291784: a(n) = (psi(n) + phi(n))/2.

Offset 1, canonical program `A291784.P16578059245399966389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291784 (n : ℕ) : ℤ :=
  A291784.P16578059245399966389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293444.P6976843243776876041

`∏{e}[∏{e}[n+1, A001317(#)], A000265(#)+#]`
-/

namespace A293444.P6976843243776876041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A001317 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000265 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A293444.P6976843243776876041

noncomputable section

/-- A293444: a(n) = A293442(A293442(n)), where A293442 is multiplicative with a(p^e) = A019565(e).

Offset 1, canonical program `A293444.P6976843243776876041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293444 (n : ℕ) : ℤ :=
  A293444.P6976843243776876041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295561.P10524131366108131501

`4-Δ[A288464(n+1)]`
-/

namespace A295561.P10524131366108131501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A295561.P10524131366108131501

noncomputable section

/-- A295561: Prefixal-derivation of A092782.

Offset 1, canonical program `A295561.P10524131366108131501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295561 (n : ℕ) : ℤ :=
  A295561.P10524131366108131501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311256.P1958209585559977164

`A008574(n)+A315690(n)-A315684(n)`
-/

namespace A311256.P1958209585559977164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315690 n - A315684 n)

end

end A311256.P1958209585559977164

noncomputable section

/-- A311256: Coordination sequence Gal.5.52.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311256.P1958209585559977164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A311256 (n : ℕ) : ℤ :=
  A311256.P1958209585559977164.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A311256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311798.P17873321092687646606

`A313026(n)+A313682(n)-A314088(n)`
-/

namespace A311798.P17873321092687646606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + (A313682 n - A314088 n)

end

end A311798.P17873321092687646606

noncomputable section

/-- A311798: Coordination sequence Gal.5.52.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311798.P17873321092687646606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A311798 (n : ℕ) : ℤ :=
  A311798.P17873321092687646606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. -/
def A311798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312160.P12207429850201497885

`A311548(n)+Δ[A011862(n)]`
-/

namespace A312160.P12207429850201497885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311548 n + (f1 (n + 1) - f1 n)

end

end A312160.P12207429850201497885

noncomputable section

/-- A312160: Coordination sequence Gal.5.100.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312160.P12207429850201497885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A312160 (n : ℕ) : ℤ :=
  A312160.P12207429850201497885.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A312160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312163.P10738351713839419242

`2*A313118(n)-A310455(n)`
-/

namespace A312163.P10738351713839419242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313118 n - A310455 n

end

end A312163.P10738351713839419242

noncomputable section

/-- A312163: Coordination sequence Gal.6.234.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312163.P10738351713839419242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A312163 (n : ℕ) : ℤ :=
  A312163.P10738351713839419242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A312163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313129.P8353896223887088681

`abs(A008592(n)-A315459(n))`
-/

namespace A313129.P8353896223887088681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315459 n|

end

end A313129.P8353896223887088681

noncomputable section

/-- A313129: Coordination sequence Gal.6.159.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313129.P8353896223887088681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313129 (n : ℕ) : ℤ :=
  A313129.P8353896223887088681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. -/
def A313129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313788.P6713366544553221303

`2*A313738(n)-A313696(n)`
-/

namespace A313788.P6713366544553221303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313738 n - A313696 n

end

end A313788.P6713366544553221303

noncomputable section

/-- A313788: Coordination sequence Gal.6.326.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313788.P6713366544553221303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313788 (n : ℕ) : ℤ :=
  A313788.P6713366544553221303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A313788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313842.P14836794253891960675

`abs(A008592(n)-A313610(n))`
-/

namespace A313842.P14836794253891960675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313610 n|

end

end A313842.P14836794253891960675

noncomputable section

/-- A313842: Coordination sequence Gal.5.289.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313842.P14836794253891960675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A313842 (n : ℕ) : ℤ :=
  A313842.P14836794253891960675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A313842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314074.P2496956023396408743

`A314072(n)+A314125(n)-A314123(n)`
-/

namespace A314074.P2496956023396408743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314072 n + (A314125 n - A314123 n)

end

end A314074.P2496956023396408743

noncomputable section

/-- A314074: Coordination sequence Gal.5.310.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314074.P2496956023396408743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314074 (n : ℕ) : ℤ :=
  A314074.P2496956023396408743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314078.P129206603809902003

`2*A314057(n)-A314025(n)`
-/

namespace A314078.P129206603809902003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314057 n - A314025 n

end

end A314078.P129206603809902003

noncomputable section

/-- A314078: Coordination sequence Gal.6.658.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314078.P129206603809902003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A314078 (n : ℕ) : ℤ :=
  A314078.P129206603809902003.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A314078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314106.P7807750276630759076

`A047486(A312891(n)+1-n)`
-/

namespace A314106.P7807750276630759076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A312891 n + (1 - (n : ℤ))).toNat

end

end A314106.P7807750276630759076

noncomputable section

/-- A314106: Coordination sequence Gal.6.199.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314106.P7807750276630759076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314106 (n : ℕ) : ℤ :=
  A314106.P7807750276630759076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A314106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314680.P15412562109567247213

`abs(A008592(n)-A314244(n))`
-/

namespace A314680.P15412562109567247213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314244 n|

end

end A314680.P15412562109567247213

noncomputable section

/-- A314680: Coordination sequence Gal.6.149.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314680.P15412562109567247213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314680 (n : ℕ) : ℤ :=
  A314680.P15412562109567247213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. -/
def A314680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315062.P8994265039834496307

`abs(A008592(n)-A314025(n))`
-/

namespace A315062.P8994265039834496307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314025 n|

end

end A315062.P8994265039834496307

noncomputable section

/-- A315062: Coordination sequence Gal.6.324.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315062.P8994265039834496307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A315062 (n : ℕ) : ℤ :=
  A315062.P8994265039834496307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A315062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315277.P16077913648521142554

`A315340(n)-A004525(A315340(n)-A315264(n))`
-/

namespace A315277.P16077913648521142554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315340 n - A004525 (A315340 n - A315264 n).toNat

end

end A315277.P16077913648521142554

noncomputable section

/-- A315277: Coordination sequence Gal.6.330.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315277.P16077913648521142554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. -/
def A315277 (n : ℕ) : ℤ :=
  A315277.P16077913648521142554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. -/
def A315277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315548.P2689930168977784721

`abs(10*n-A312891(n))`
-/

namespace A315548.P2689930168977784721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312891 n|

end

end A315548.P2689930168977784721

noncomputable section

/-- A315548: Coordination sequence Gal.6.627.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315548.P2689930168977784721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A315548 (n : ℕ) : ℤ :=
  A315548.P2689930168977784721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. -/
def A315548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318623.P8445472304262394545

`((1-A000265(n+1))^26)%(n+1)`
-/

namespace A318623.P8445472304262394545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - A000265 (n + 1)) ^ 26) (n + 1 : ℤ)

end

end A318623.P8445472304262394545

noncomputable section

/-- A318623: a(n) = 2^phi(n) mod n.

Offset 1, canonical program `A318623.P8445472304262394545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7018 terms. -/
def A318623 (n : ℕ) : ℤ :=
  A318623.P8445472304262394545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7018 terms. -/
def A318623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319972.P2263334861732811548

`2*A319969(n+1)-A003145(n+1)`
-/

namespace A319972.P2263334861732811548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319969 (n + 1) - A003145 (n + 1)

end

end A319972.P2263334861732811548

noncomputable section

/-- A319972: a(n) = A003146(A003146(n)).

Offset 1, canonical program `A319972.P2263334861732811548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319972 (n : ℕ) : ℤ :=
  A319972.P2263334861732811548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321550.P13648365977055260050

`2*A013959(A000265(n+1))-A013959(n+1)`
-/

namespace A321550.P13648365977055260050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013959 (A000265 (n + 1)).toNat - A013959 (n + 1)

end

end A321550.P13648365977055260050

noncomputable section

/-- A321550: a(n) = Sum_{d|n} (-1)^(d-1)*d^11.

Offset 1, canonical program `A321550.P13648365977055260050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321550 (n : ℕ) : ℤ :=
  A321550.P13648365977055260050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321815.P2180117526338726262

`∑{d}[A000265(n+1), #^11]`
-/

namespace A321815.P2180117526338726262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 11

end

end A321815.P2180117526338726262

noncomputable section

/-- A321815: Sum of 11th powers of odd divisors of n.

Offset 1, canonical program `A321815.P2180117526338726262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321815 (n : ℕ) : ℤ :=
  (A321815.P2180117526338726262.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321822.P16781590860431614431

`Δ[A005811(n)]*A321830(A000265(n+1))`
-/

namespace A321822.P16781590860431614431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A321830 (A000265 (n + 1)).toNat

end

end A321822.P16781590860431614431

noncomputable section

/-- A321822: a(n) = Sum_{d|n, d==1 mod 4} d^6 - Sum_{d|n, d==3 mod 4} d^6.

Offset 1, canonical program `A321822.P16781590860431614431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321822 (n : ℕ) : ℤ :=
  A321822.P16781590860431614431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321824.P5077356996736192432

`A112347(n+1)*A321832(A000265(n+1))`
-/

namespace A321824.P5077356996736192432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 (n + 1) * A321832 (A000265 (n + 1)).toNat

end

end A321824.P5077356996736192432

noncomputable section

/-- A321824: a(n) = Sum_{d|n, d==1 mod 4} d^8 - Sum_{d|n, d==3 mod 4} d^8.

Offset 1, canonical program `A321824.P5077356996736192432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321824 (n : ℕ) : ℤ :=
  A321824.P5077356996736192432.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321825.P11819625589540989309

`Δ[A005811(n)]*A321833(A000265(n+1))`
-/

namespace A321825.P11819625589540989309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A321833 (A000265 (n + 1)).toNat

end

end A321825.P11819625589540989309

noncomputable section

/-- A321825: a(n) = Sum_{d|n, d==1 (mod 4)} d^9 - Sum_{d|n, d==3 (mod 4)} d^9.

Offset 1, canonical program `A321825.P11819625589540989309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321825 (n : ℕ) : ℤ :=
  A321825.P11819625589540989309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321828.P17421371183857854868

`A033999(A025480(n))*A321836(A000265(n+1))`
-/

namespace A321828.P17421371183857854868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025480 n).toNat * A321836 (A000265 (n + 1)).toNat

end

end A321828.P17421371183857854868

noncomputable section

/-- A321828: a(n) = Sum_{d|n, d==1 mod 4} d^12 - Sum_{d|n, d==3 mod 4} d^12.

Offset 1, canonical program `A321828.P17421371183857854868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321828 (n : ℕ) : ℤ :=
  A321828.P17421371183857854868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324378.P5229486026381007195

`A000265(1+A005187(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324378.P5229486026381007195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A005187 n).toNat

end

end A324378.P5229486026381007195

noncomputable section

/-- A324378: a(n) = A000265(1+A005187(n)).

Offset 0, canonical program `A324378.P5229486026381007195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324378 (n : ℕ) : ℤ :=
  A324378.P5229486026381007195.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327922.P12450088541012564793

`∪[A008846(n+1), A061346(n+1)]`
-/

namespace A327922.P12450088541012564793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P12450088541012564793

noncomputable section

/-- A327922: Odd numbers m >= 3 for which phi(2*m)/2 = phi(m)/2 is even, where phi = A000010 (Euler's totient).

Offset 1, canonical program `A327922.P12450088541012564793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327922 (n : ℕ) : ℤ :=
  (A327922.P12450088541012564793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329095.P6531162386030050095

`record[A000265(A025020(n+1))]`
-/

namespace A329095.P6531162386030050095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A025020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329095.P6531162386030050095

noncomputable section

/-- A329095: Odd numbers k such that x^2 == 2 (mod k) has no solution.

Offset 1, canonical program `A329095.P6531162386030050095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4743 terms. -/
def A329095 (n : ℕ) : ℤ :=
  A329095.P6531162386030050095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4743 terms. -/
def A329095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331259.P10309097593094092739

`A331260(n+1)%4*A046301(n+1)`
-/

namespace A331259.P10309097593094092739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331260 (n + 1)) 4 * A046301 (n + 1)

end

end A331259.P10309097593094092739

noncomputable section

/-- A331259: Numerator of harmonic mean of 3 consecutive primes. Denominators are A331260.

Offset 1, canonical program `A331259.P10309097593094092739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331259 (n : ℕ) : ℤ :=
  A331259.P10309097593094092739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333122.P5461417936121362507

`A157996(A022888(n+1))+A022889(n+1)`
-/

namespace A333122.P5461417936121362507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A022888 (n + 1)).toNat + A022889 (n + 1)

end

end A333122.P5461417936121362507

noncomputable section

/-- A333122: Numbers m such that m = prime(k) + prime(k+5) = prime(k+1) + prime(k+4) for some k.

Offset 1, canonical program `A333122.P5461417936121362507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A333122 (n : ℕ) : ℤ :=
  A333122.P5461417936121362507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A333122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333569.P14197184389412241289

`∑{d}[n+1, A326415(#)*A344221((n+1)/#)]`
-/

namespace A333569.P14197184389412241289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A344221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333569.P14197184389412241289

noncomputable section

/-- A333569: a(n) = Sum_{d|n} (-1)^(bigomega(d) - omega(d)) * phi(n/d).

Offset 1, canonical program `A333569.P14197184389412241289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333569 (n : ℕ) : ℤ :=
  A333569.P14197184389412241289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333823.P3824260530256834123

`∑{d}[A000265(n+1), ((n+1)/#)^#]`
-/

namespace A333823.P3824260530256834123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℚ) / (d : ℚ)) ^ d

end

end A333823.P3824260530256834123

noncomputable section

/-- A333823: a(n) = Sum_{d|n, d odd} (n/d)^d.

Offset 1, canonical program `A333823.P3824260530256834123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A333823 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333823.P3824260530256834123.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. -/
def A333823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334009.P17908156774807028384

`A059268(n)²*A156308(n+1)`
-/

namespace A334009.P17908156774807028384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A156308 (n + 1)

end

end A334009.P17908156774807028384

noncomputable section

/-- A334009: Triangle read by rows: T(n, k) = binomial(n + k - 1, 2*k - 1) * 4^(k - 1) * n/k, 1 <= k <= n.

Offset 1, canonical program `A334009.P17908156774807028384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A334009 (n : ℕ) : ℤ :=
  A334009.P17908156774807028384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8868 terms. -/
def A334009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336113.P9746994483615630298

`A017665(A000265(n+1))`
-/

namespace A336113.P9746994483615630298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A000265 (n + 1)).toNat

end

end A336113.P9746994483615630298

noncomputable section

/-- A336113: a(n) is the numerator of Sum_{odd d|n} 1/d.

Offset 1, canonical program `A336113.P9746994483615630298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336113 (n : ℕ) : ℤ :=
  A336113.P9746994483615630298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336698.P14344285440599480139

`A000265(A000265(∑{d}[n+1, #])+1)`
-/

namespace A336698.P14344285440599480139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat

end

end A336698.P14344285440599480139

noncomputable section

/-- A336698: a(n) = A000265(1+A000265(sigma(n))), where A000265(k) gives the odd part of k.

Offset 1, canonical program `A336698.P14344285440599480139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336698 (n : ℕ) : ℤ :=
  A336698.P14344285440599480139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337195.P9072276756863858494

`val(A000265(∑{d}[n+1, #])+1, 2)`
-/

namespace A337195.P9072276756863858494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000265 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat 2

end

end A337195.P9072276756863858494

noncomputable section

/-- A337195: The 2-adic valuation of 1+A000265(sigma(n)), where A000265 gives the odd part.

Offset 1, canonical program `A337195.P9072276756863858494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337195 (n : ℕ) : ℤ :=
  (A337195.P9072276756863858494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337319.P230640024219586560

`A145037(A000265(n+1))`
-/

namespace A337319.P230640024219586560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A000265 (n + 1)).toNat

end

end A337319.P230640024219586560

noncomputable section

/-- A337319: a(n) = Sum_{i = 1..floor(log_2(n))+1} g(frac(n/2^i)), where g(t) = [0 if t = 0, -1 if 0 < t < 1/2, 1 if t >= 1/2], and where frac(x) denotes the fractional part.

Offset 1, canonical program `A337319.P230640024219586560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A145037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337319 (n : ℕ) : ℤ :=
  A337319.P230640024219586560.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A145037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339194.P3840768483066506201

`A034960(n+1)-A143215(n+1)`
-/

namespace A339194.P3840768483066506201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034960 (n + 1) - A143215 (n + 1)

end

end A339194.P3840768483066506201

noncomputable section

/-- A339194: Sum of all squarefree semiprimes with greater prime factor prime(n).

Offset 1, canonical program `A339194.P3840768483066506201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, A143215, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339194 (n : ℕ) : ℤ :=
  A339194.P3840768483066506201.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034960, A143215, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339977.P17266099311985433094

`filter[A097269(n+1), A353814(#)]`
-/

namespace A339977.P17266099311985433094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A339977.P17266099311985433094

noncomputable section

/-- A339977: Sums of two distinct odd squares.

Offset 1, canonical program `A339977.P17266099311985433094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5924 terms. -/
def A339977 (n : ℕ) : ℤ :=
  A339977.P17266099311985433094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5924 terms. -/
def A339977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340625.P16415255426781792317

`∑{d}[A000265(n+1), C((n+1)/#, #)]`
-/

namespace A340625.P16415255426781792317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat d

end

end A340625.P16415255426781792317

noncomputable section

/-- A340625: a(n) = Sum_{d|n, d odd, d <= n/d} binomial(n/d, d).

Offset 1, canonical program `A340625.P16415255426781792317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340625 (n : ℕ) : ℤ :=
  (A340625.P16415255426781792317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342029.P4108827623858297385

`∩[A342028(n+1)-1, A342028(n+1)]`
-/

namespace A342029.P4108827623858297385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342028 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342029.P4108827623858297385

noncomputable section

/-- A342029: Starts of runs of 3 consecutive numbers that have mutually distinct exponents in their prime factorization (A130091).

Offset 1, canonical program `A342029.P4108827623858297385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A342029 (n : ℕ) : ℤ :=
  (A342029.P4108827623858297385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 937 terms. -/
def A342029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343544.P4992491039795411228

`∑{d}[n+1, A309323(#)]`
-/

namespace A343544.P4992491039795411228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309323 d

end

end A343544.P4992491039795411228

noncomputable section

/-- A343544: a(n) = n * Sum_{d|n} binomial(d+2,3)/d.

Offset 1, canonical program `A343544.P4992491039795411228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343544 (n : ℕ) : ℤ :=
  A343544.P4992491039795411228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344371.P8509343865360483063

`abs(A199084(n+1))`
-/

namespace A344371.P8509343865360483063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199084 (n + 1)|

end

end A344371.P8509343865360483063

noncomputable section

/-- A344371: a(n) = Sum_{k=1..n} (-1)^(n-k) gcd(k,n).

Offset 1, canonical program `A344371.P8509343865360483063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344371 (n : ℕ) : ℤ :=
  A344371.P8509343865360483063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347133.P11442822717717794057

`∑{d}[n+1, A349394(#)*A369894((n+1)/#)]`
-/

namespace A347133.P11442822717717794057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349394 d * A369894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347133.P11442822717717794057

noncomputable section

/-- A347133: a(n) = Sum_{d|n} A003415(n/d) * A069359(d).

Offset 1, canonical program `A347133.P11442822717717794057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347133 (n : ℕ) : ℤ :=
  A347133.P11442822717717794057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348417.P9331888440258440261

`A046073(A081754(n+1))`
-/

namespace A348417.P9331888440258440261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A081754 (n + 1)).toNat

end

end A348417.P9331888440258440261

noncomputable section

/-- A348417: Number of coprime squares modulo A081754(n): a(n) = A046073(A081754(n)).

Offset 1, canonical program `A348417.P9331888440258440261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A348417 (n : ℕ) : ℤ :=
  A348417.P9331888440258440261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A348417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359300.P9022589032381626291

`-2*A063933(n+2)`
-/

namespace A359300.P9022589032381626291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * A063933 (n + 2))

end

end A359300.P9022589032381626291

noncomputable section

/-- A359300: a(n) = (distance from n to nearest prime >= n) - (distance from n to nearest prime <= n).

Offset 2, canonical program `A359300.P9022589032381626291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359300 (n : ℕ) : ℤ :=
  A359300.P9022589032381626291.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360161.P10072357667769380062

`A328258((n+1)/A350389(n+1))`
-/

namespace A360161.P10072357667769380062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A360161.P10072357667769380062

noncomputable section

/-- A360161: a(n) is the sum of unitary divisors of n that are odd squares minus the sum of unitary divisors of n that are even squares.

Offset 1, canonical program `A360161.P10072357667769380062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360161 (n : ℕ) : ℤ :=
  A360161.P10072357667769380062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361671.P2039417519432174779

`A271187(A167614(n+2))`
-/

namespace A361671.P2039417519432174779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271187 (A167614 (n + 2)).toNat

end

end A361671.P2039417519432174779

noncomputable section

/-- A361671: Squarefree part of the n-th tetrahedral number.

Offset 1, canonical program `A361671.P2039417519432174779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A361671 (n : ℕ) : ℤ :=
  A361671.P2039417519432174779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A361671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362841.P16508199166650757426

`eq[5, A007814(A328400(n+1))]+1`
-/

namespace A362841.P16508199166650757426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A328400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A362841.P16508199166650757426

noncomputable section

/-- A362841: Numbers with at least one 5 in their prime signature.

Offset 1, canonical program `A362841.P16508199166650757426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A362841 (n : ℕ) : ℤ :=
  (A362841.P16508199166650757426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A362841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363270.P16204240149667197490

`A000265(A085062(n+1))`
-/

namespace A363270.P16204240149667197490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A085062 (n + 1)).toNat

end

end A363270.P16204240149667197490

noncomputable section

/-- A363270: The result, starting from n, of Collatz steps x -> (3x+1)/2 while odd, followed by x -> x/2 while even.

Offset 1, canonical program `A363270.P16204240149667197490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4094 terms. -/
def A363270 (n : ℕ) : ℤ :=
  A363270.P16204240149667197490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4094 terms. -/
def A363270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363969.P17338355453766122660

`∑{d}[A000265(n+1), A363268(#)]`
-/

namespace A363969.P17338355453766122660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A363268 d

end

end A363969.P17338355453766122660

noncomputable section

/-- A363969: Expansion of Sum_{k>0} k^2 * x^(2*k-1) / (1 - x^(2*k-1)).

Offset 1, canonical program `A363969.P17338355453766122660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363969 (n : ℕ) : ℤ :=
  A363969.P17338355453766122660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363974.P1318836168123044624

`∑{d}[A000265(n+1), A008805(#)]`
-/

namespace A363974.P1318836168123044624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008805 d

end

end A363974.P1318836168123044624

noncomputable section

/-- A363974: Expansion of Sum_{k>0} x^k / (1 - x^(2*k))^3.

Offset 1, canonical program `A363974.P1318836168123044624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363974 (n : ℕ) : ℤ :=
  A363974.P1318836168123044624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367696.P4831548240618922370

`∩[A270428(n+1)-1, A270428(n+1)]`
-/

namespace A367696.P4831548240618922370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367696.P4831548240618922370

noncomputable section

/-- A367696: Numbers k such that k and k+1 are both exponentially odious numbers (A270428).

Offset 1, canonical program `A367696.P4831548240618922370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8685 terms. -/
def A367696 (n : ℕ) : ℤ :=
  (A367696.P4831548240618922370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8685 terms. -/
def A367696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367801.P16307762078431172026

`record[A350389(A270428(n+1))]`
-/

namespace A367801.P16307762078431172026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A270428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367801.P16307762078431172026

noncomputable section

/-- A367801: Numbers that are both exponentially odd (A268335) and exponentially odious (A270428).

Offset 1, canonical program `A367801.P16307762078431172026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A367801 (n : ℕ) : ℤ :=
  A367801.P16307762078431172026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A367801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368739.P7919696125845404475

`A000034(n)*A062803(n+1)`
-/

namespace A368739.P7919696125845404475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A062803 (n + 1)

end

end A368739.P7919696125845404475

noncomputable section

/-- A368739: a(n) = Sum_{k = 1..n} gcd(4*k, n).

Offset 1, canonical program `A368739.P7919696125845404475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368739 (n : ℕ) : ℤ :=
  A368739.P7919696125845404475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371092.P1671906542229753097

`floor((A000265(1+3*n)+5)/6)`
-/

namespace A371092.P1671906542229753097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (1 + 3 * n) + 5 : ℚ) / 6⌋

end

end A371092.P1671906542229753097

noncomputable section

/-- A371092: a(n) = floor((A000265(3*n+1)+5)/6), where A000265 gives the odd part of its argument.

Offset 0, canonical program `A371092.P1671906542229753097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371092 (n : ℕ) : ℤ :=
  A371092.P1671906542229753097.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372885.P14839180436812864898

`A000040(A372886(n+1))`
-/

namespace A372885.P14839180436812864898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372886 (n + 1)).toNat

end

end A372885.P14839180436812864898

noncomputable section

/-- A372885: Prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

Offset 1, canonical program `A372885.P14839180436812864898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885 (n : ℕ) : ℤ :=
  A372885.P14839180436812864898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373730.P14378342733449950770

`A000265(A017185(n))`
-/

namespace A373730.P14378342733449950770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017185 n).toNat

end

end A373730.P14378342733449950770

noncomputable section

/-- A373730: Reduced Collatz function R applied to the numbers 6n+1: a(n) = R(6n+1), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 0, canonical program `A373730.P14378342733449950770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373730 (n : ℕ) : ℤ :=
  A373730.P14378342733449950770.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373864.P16710253182946225644

`A000265(A017257(n))`
-/

namespace A373864.P16710253182946225644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017257 n).toNat

end

end A373864.P16710253182946225644

noncomputable section

/-- A373864: Reduced Collatz function R applied to the numbers 6n+5: a(n) = R(6n+5), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 0, canonical program `A373864.P16710253182946225644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373864 (n : ℕ) : ℤ :=
  A373864.P16710253182946225644.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373895.P7884288159886189589

`A082482(n+1)+A036453(n+1)`
-/

namespace A373895.P7884288159886189589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + A036453 (n + 1)

end

end A373895.P7884288159886189589

noncomputable section

/-- A373895: a(n) = ceiling((2^n+n-1)/n).

Offset 1, canonical program `A373895.P7884288159886189589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A373895 (n : ℕ) : ℤ :=
  A373895.P7884288159886189589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A373895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373992.P2594044471646967012

`∪[A374042(n+1), A008591(n)]`
-/

namespace A373992.P2594044471646967012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A373992.P2594044471646967012

noncomputable section

/-- A373992: Numbers k such that A328768(k) is a multiple of 3, where A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A373992.P2594044471646967012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373992 (n : ℕ) : ℤ :=
  (A373992.P2594044471646967012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375669.P4375013482018991559

`A051903(A000265(n+1))`
-/

namespace A375669.P4375013482018991559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000265 (n + 1)).toNat

end

end A375669.P4375013482018991559

noncomputable section

/-- A375669: The maximum exponent in the prime factorization of the largest odd divisor of n.

Offset 1, canonical program `A375669.P4375013482018991559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375669 (n : ℕ) : ℤ :=
  A375669.P4375013482018991559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375933.P10424609916062426852

`val(A328400(n+1), 3)`
-/

namespace A375933.P10424609916062426852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (n + 1)).toNat 3

end

end A375933.P10424609916062426852

noncomputable section

/-- A375933: The second-largest exponent in the prime factorization of n, or 0 if it does not exist.

Offset 1, canonical program `A375933.P10424609916062426852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375933 (n : ℕ) : ℤ :=
  (A375933.P10424609916062426852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378298.P155601813315861815

`(A062803(n+1)-(n+1))/2`
-/

namespace A378298.P155601813315861815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062803 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A378298.P155601813315861815

noncomputable section

/-- A378298: Number of solutions that satisfy the congruence: i^2 == j^2 (mod n) with 1 <= i < j <= n.

Offset 1, canonical program `A378298.P155601813315861815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378298.P155601813315861815.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378377.P1377304433949360129

`A176992(A056943(n+1))`
-/

namespace A378377.P1377304433949360129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176992 (A056943 (n + 1)).toNat

end

end A378377.P1377304433949360129

noncomputable section

/-- A378377: Triangle read by rows: T(n,k) is the number of non-descending sequences with length k such that the maximum of the length and the last number is n.

Offset 1, canonical program `A378377.P1377304433949360129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377 (n : ℕ) : ℤ :=
  A378377.P1377304433949360129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379561.P6001539951614561260

`A025558(n+1)+A027457(n+2)`
-/

namespace A379561.P6001539951614561260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025558 (n + 1) + A027457 (n + 2)

end

end A379561.P6001539951614561260

noncomputable section

/-- A379561: a(n) = A003418(n+1)*H(n), where H(n) = 1 + 1/2 + ... + 1/n is the n-th harmonic number.

Offset 1, canonical program `A379561.P6001539951614561260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025558, A027457, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379561 (n : ℕ) : ℤ :=
  A379561.P6001539951614561260.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025558, A027457, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379561.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380165.P17570718676453371589

`A000252(n+1)/(A000056(n+1)*A380164(n+1))`
-/

namespace A380165.P17570718676453371589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000056 (n + 1) * A380164 (n + 1) : ℚ)

end

end A380165.P17570718676453371589

noncomputable section

/-- A380165: a(n) is the value of the Euler totient function when applied to the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A380165.P17570718676453371589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380165.P17570718676453371589.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381194.P16466113372331178624

`A306905(n+1)-A000225(n)`
-/

namespace A381194.P16466113372331178624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306905 (n + 1) - A000225 n

end

end A381194.P16466113372331178624

noncomputable section

/-- A381194: Number of equal-length matchings of 2n uniformly spaced points on a circle.

Offset 1, canonical program `A381194.P16466113372331178624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A381194 (n : ℕ) : ℤ :=
  A381194.P16466113372331178624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A381194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384056.P10352032007918448810

`A006519(n+1)*A047994(A000265(n+1))`
-/

namespace A384056.P10352032007918448810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A047994 (A000265 (n + 1)).toNat

end

end A384056.P10352032007918448810

noncomputable section

/-- A384056: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a power of 2.

Offset 1, canonical program `A384056.P10352032007918448810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384056 (n : ℕ) : ℤ :=
  A384056.P10352032007918448810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386220.P3238769250650299334

`A000265(n+1)+A171977(n+1)`
-/

namespace A386220.P3238769250650299334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + A171977 (n + 1)

end

end A386220.P3238769250650299334

noncomputable section

/-- A386220: a(n) = d + 2*2^e where n = d*2^e with d = A000265(n) odd.

Offset 1, canonical program `A386220.P3238769250650299334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386220 (n : ℕ) : ℤ :=
  A386220.P3238769250650299334.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391584.P15171015652483584175

`∩[2*n+1, A391585(n+1)]`
-/

namespace A391584.P15171015652483584175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391584.P15171015652483584175

noncomputable section

/-- A391584: Odd numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391584.P15171015652483584175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 826 terms. -/
def A391584 (n : ℕ) : ℤ :=
  (A391584.P15171015652483584175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 826 terms. -/
def A391584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394497.P14112518820764941324

`3^A007814(n+1)*A000265(n+1)`
-/

namespace A394497.P14112518820764941324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A007814 (n + 1) : ℤ) * (A000265 (n + 1) : ℚ)

end

end A394497.P14112518820764941324

noncomputable section

/-- A394497: Recurrence: a(2*n + 1) = 2*n + 1, a(2*n) = 3*a(n).

Offset 1, canonical program `A394497.P14112518820764941324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394497 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394497.P14112518820764941324.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394579.P10493215658390247642

`filter[A081754(n+2), A212793(#)]`
-/

namespace A394579.P10493215658390247642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A394579.P10493215658390247642

noncomputable section

/-- A394579: Moduli m in which a multiplicative square-root function exists over the ring of integers Z_m.

Offset 1, canonical program `A394579.P10493215658390247642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8769 terms. -/
def A394579 (n : ℕ) : ℤ :=
  A394579.P10493215658390247642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8769 terms. -/
def A394579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175441.P11345916668563517181

`lcm(A001008(n+1), A103517(n))/A103517(n)`
-/

namespace A175441.P11345916668563517181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001008 (n + 1)) (A103517 n) : ℚ) / (A103517 n : ℚ)

end

end A175441.P11345916668563517181

noncomputable section

/-- A175441: Denominator of the harmonic mean of the first n positive integers.

Offset 1, canonical program `A175441.P11345916668563517181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A175441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175441.P11345916668563517181.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A175441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176888.P9111566822716569314

`A059456(n+1)-1`
-/

namespace A176888.P9111566822716569314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1) - 1

end

end A176888.P9111566822716569314

noncomputable section

/-- A176888: Unsafe primes minus 1.

Offset 1, canonical program `A176888.P9111566822716569314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176888 (n : ℕ) : ℤ :=
  A176888.P9111566822716569314.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179212.P14800065424142740463

`Δ[A179211(n+1)]`
-/

namespace A179212.P14800065424142740463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179212.P14800065424142740463

noncomputable section

/-- A179212: First differences of A179211.

Offset 1, canonical program `A179212.P14800065424142740463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179212 (n : ℕ) : ℤ :=
  A179212.P14800065424142740463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179955.P12787247350186807424

`A098488(10*A009993(n+2))`
-/

namespace A179955.P12787247350186807424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (10 * A009993 (n + 2)).toNat

end

end A179955.P12787247350186807424

noncomputable section

/-- A179955: Numbers whose sum of digits is 10 and which contain no 0 digits.

Offset 1, canonical program `A179955.P12787247350186807424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A179955 (n : ℕ) : ℤ :=
  A179955.P12787247350186807424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A179955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182922.P12836266675832290144

`n!/A055773(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182922.P12836266675832290144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A055773 n : ℚ)

end

end A182922.P12836266675832290144

noncomputable section

/-- A182922: a(n) = n! / A055773(n).

Offset 0, canonical program `A182922.P12836266675832290144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182922 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182922.P12836266675832290144.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182923.P17549914405111909947

`A056040(n)/A055773(n)`
-/

namespace A182923.P17549914405111909947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A055773 n : ℚ)

end

end A182923.P17549914405111909947

noncomputable section

/-- A182923: a(n) = n$ / A055773(n), where n$ denotes the swinging factorial (A056040).

Offset 0, canonical program `A182923.P17549914405111909947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A182923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182923.P17549914405111909947.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A182923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184807.P9604685836924148984

`comp[A184804(n+1)-1]+1`
-/

namespace A184807.P9604685836924148984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184804 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184807.P9604685836924148984

noncomputable section

/-- A184807: Numbers m such that prime(m) is of the form floor(k*s), where s=(5+sqrt(5))/4; complement of A184804.

Offset 1, canonical program `A184807.P9604685836924148984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184807 (n : ℕ) : ℤ :=
  (A184807.P9604685836924148984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192672.P1400011279283696610

`floor(sqrt(abs(A080243(n))))`
-/

namespace A192672.P1400011279283696610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A080243 n|

end

end A192672.P1400011279283696610

noncomputable section

/-- A192672: Floor-Sqrt transform of little Schroeder numbers (A001003).

Offset 0, canonical program `A192672.P1400011279283696610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A192672 (n : ℕ) : ℤ :=
  A192672.P1400011279283696610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A192672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192673.P17428601771079711106

`floor(sqrt(abs(2*A080243(n))))`
-/

namespace A192673.P17428601771079711106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |2 * A080243 n|

end

end A192673.P17428601771079711106

noncomputable section

/-- A192673: Floor-Sqrt transform of large Schroder numbers (A006318).

Offset 0, canonical program `A192673.P17428601771079711106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A192673 (n : ℕ) : ℤ :=
  A192673.P17428601771079711106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A192673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193800.P17352765723987985871

`(A379705(n+1)-(n+1))/2`
-/

namespace A193800.P17352765723987985871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379705 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A193800.P17352765723987985871

noncomputable section

/-- A193800: Least m > 0 such that (n+m)^2 - m^2 (= n^2 + 2*m*n) is a square.

Offset 1, canonical program `A193800.P17352765723987985871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A193800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A193800.P17352765723987985871.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A193800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196499.P3306308880413504659

`comp[2*comp[A004613(n+1)]]`
-/

namespace A196499.P3306308880413504659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A196499.P3306308880413504659

noncomputable section

/-- A196499: Numbers k such that the greatest residue of the congruence x^k (mod k) equals k-1 for x in [0..k-1].

Offset 1, canonical program `A196499.P3306308880413504659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196499 (n : ℕ) : ℤ :=
  (A196499.P3306308880413504659.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199854.P12173923621709400113

`p?[2*A004613(n+1)+1]`
-/

namespace A199854.P12173923621709400113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004613 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199854.P12173923621709400113

noncomputable section

/-- A199854: Primes of the form 1 + m^2 + n^2 with gcd(m,n)=1.

Offset 1, canonical program `A199854.P12173923621709400113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. -/
def A199854 (n : ℕ) : ℤ :=
  A199854.P12173923621709400113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. -/
def A199854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206590.P3046185336414950720

`A000189(A057521(n+2))-1`
-/

namespace A206590.P3046185336414950720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A057521 (n + 2)).toNat - 1

end

end A206590.P3046185336414950720

noncomputable section

/-- A206590: Number of solutions (n,k) of k^3=n^3 (mod n), where 1<=k

Offset 2, canonical program `A206590.P3046185336414950720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206590 (n : ℕ) : ℤ :=
  A206590.P3046185336414950720.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211771.P2908802160452686432

`filter[A009993(n+2), A005171(#)]`
-/

namespace A211771.P2908802160452686432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A211771.P2908802160452686432

noncomputable section

/-- A211771: Nonprime numbers with distinct digits in ascending order.

Offset 1, canonical program `A211771.P2908802160452686432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A211771 (n : ℕ) : ℤ :=
  A211771.P2908802160452686432.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A211771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212792.P12800199492162538154

`A055773((n-1)%2+n+1)`
-/

namespace A212792.P12800199492162538154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (Int.tmod ((n : ℤ) - 1) 2 + (n + 1 : ℤ)).toNat

end

end A212792.P12800199492162538154

noncomputable section

/-- A212792: Product of all primes in the interval ((n+1)/2,n].

Offset 1, canonical program `A212792.P12800199492162538154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A212792 (n : ℕ) : ℤ :=
  A212792.P12800199492162538154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A212792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214979.P11630726130086561855

`A179180(n+1)-A214977(n+1)`
-/

namespace A214979.P11630726130086561855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179180 (n + 1) - A214977 (n + 1)

end

end A214979.P11630726130086561855

noncomputable section

/-- A214979: A179180 - A214977.

Offset 1, canonical program `A214979.P11630726130086561855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214979 (n : ℕ) : ℤ :=
  A214979.P11630726130086561855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216295.P7128567264787392644

`(A216309(n+1)-1)/10`
-/

namespace A216295.P7128567264787392644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216309 (n + 1) - 1 : ℚ) / 10

end

end A216295.P7128567264787392644

noncomputable section

/-- A216295: Values of k such that 10k + 1 is the only prime between 10k and 10k + 9.

Offset 1, canonical program `A216295.P7128567264787392644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216295.P7128567264787392644.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216296.P16543262439568301225

`floor(A216310(n+1)/10)`
-/

namespace A216296.P16543262439568301225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216310 (n + 1) : ℚ) / 10⌋

end

end A216296.P16543262439568301225

noncomputable section

/-- A216296: Values of k such that 10k + 3 is the only prime between 10k and 10k + 9.

Offset 1, canonical program `A216296.P16543262439568301225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216296 (n : ℕ) : ℤ :=
  A216296.P16543262439568301225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216297.P18240834366473876575

`floor(A216311(n+1)/10)`
-/

namespace A216297.P18240834366473876575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216311 (n + 1) : ℚ) / 10⌋

end

end A216297.P18240834366473876575

noncomputable section

/-- A216297: Values of k such that 10k + 7 is the only prime between 10k and 10k + 9.

Offset 1, canonical program `A216297.P18240834366473876575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216297 (n : ℕ) : ℤ :=
  A216297.P18240834366473876575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216298.P1014508904312123023

`floor(A216312(n+1)/10)`
-/

namespace A216298.P1014508904312123023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216312 (n + 1) : ℚ) / 10⌋

end

end A216298.P1014508904312123023

noncomputable section

/-- A216298: Values of k such that 10k + 9 is the only prime between 10k and 10k + 9.

Offset 1, canonical program `A216298.P1014508904312123023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216298 (n : ℕ) : ℤ :=
  A216298.P1014508904312123023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216651.P4247305366476539235

`A070089(n+2)-A070089(n+1)`
-/

namespace A216651.P4247305366476539235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 2) - A070089 (n + 1)

end

end A216651.P4247305366476539235

noncomputable section

/-- A216651: Lengths of decreasing blocks of A006530, the greatest prime factor of n, starting from the second term.

Offset 1, canonical program `A216651.P4247305366476539235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216651 (n : ℕ) : ℤ :=
  A216651.P4247305366476539235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A216651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A221048.P1295286946370857410

`filter[A068919(n+1), A353676(#)]`
-/

namespace A221048.P1295286946370857410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A221048.P1295286946370857410

noncomputable section

/-- A221048: The odd semiprime numbers (A046315) which are orders of a non-Abelian group.

Offset 1, canonical program `A221048.P1295286946370857410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A221048 (n : ℕ) : ℤ :=
  A221048.P1295286946370857410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A221048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232180.P7403348615314962087

`A001008(Δ[n²])`
-/

namespace A232180.P7403348615314962087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A232180.P7403348615314962087

noncomputable section

/-- A232180: First bisection of harmonic numbers (numerators).

Offset 1, canonical program `A232180.P7403348615314962087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A232180 (n : ℕ) : ℤ :=
  A232180.P7403348615314962087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A232180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232343.P2807166496031523274

`A232356(3*n+5)/6`
-/

namespace A232343.P2807166496031523274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232356 (3 * n + 5) : ℚ) / 6

end

end A232343.P2807166496031523274

noncomputable section

/-- A232343: Expansion of q^(-5/3) * c(q^2)^3 / (9 * c(q)) in powers of q where c() is a cubic AGM theta function.

Offset 0, canonical program `A232343.P2807166496031523274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A232343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232343.P2807166496031523274.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A232343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243290.P11306935156957972967

`1-A243289(n+1)+n`
-/

namespace A243290.P11306935156957972967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243289 (n + 1) + (n : ℤ)

end

end A243290.P11306935156957972967

noncomputable section

/-- A243290: The index of the greatest prime dividing the n-th squarefree number: a(n) = A061395(A005117(n)).

Offset 1, canonical program `A243290.P11306935156957972967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243290 (n : ℕ) : ℤ :=
  A243290.P11306935156957972967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247676.P15700024140662741661

`∩[A092256(n+1), A017185(n)]`
-/

namespace A247676.P15700024140662741661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247676.P15700024140662741661

noncomputable section

/-- A247676: Odd composite numbers congruent to 2 modulo 9.

Offset 1, canonical program `A247676.P15700024140662741661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A247676 (n : ℕ) : ℤ :=
  (A247676.P15700024140662741661.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A247676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249942.P9237157470274512187

`∩[A156242(n+1)+1, A156243(n+1)]`
-/

namespace A249942.P9237157470274512187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249942.P9237157470274512187

noncomputable section

/-- A249942: Ranks of single 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A249942.P9237157470274512187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A249942 (n : ℕ) : ℤ :=
  (A249942.P9237157470274512187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A249942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253560.P16897171599147666878

`(n+1)*(A070229(n+1)-(n+1))`
-/

namespace A253560.P16897171599147666878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A070229 (n + 1) - (n + 1 : ℤ))

end

end A253560.P16897171599147666878

noncomputable section

/-- A253560: Multiply n by its largest prime factor: a(n) = A006530(n) * n.

Offset 1, canonical program `A253560.P16897171599147666878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253560 (n : ℕ) : ℤ :=
  A253560.P16897171599147666878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254733.P14404969716886412013

`A019555(n+1)+1+n`
-/

namespace A254733.P14404969716886412013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) + 1 + (n : ℤ)

end

end A254733.P14404969716886412013

noncomputable section

/-- A254733: a(n) is the least k > n such that n divides k^3.

Offset 1, canonical program `A254733.P14404969716886412013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254733 (n : ℕ) : ℤ :=
  A254733.P14404969716886412013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256617.P10891670028466202195

`filter[A007774(n+1), A137794(#)]`
-/

namespace A256617.P10891670028466202195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A256617.P10891670028466202195

noncomputable section

/-- A256617: Numbers having exactly two distinct prime factors, which are also adjacent prime numbers.

Offset 1, canonical program `A256617.P10891670028466202195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A256617 (n : ℕ) : ℤ :=
  A256617.P10891670028466202195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A256617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260552.P11753030595582791337

`A266669(n)*A267001(n)`
-/

namespace A260552.P11753030595582791337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266669 n * A267001 n

end

end A260552.P11753030595582791337

noncomputable section

/-- A260552: Triangle read by rows giving successive states of cellular automaton generated by "Rule 17" initiated with a single ON (black) cell.

Offset 0, canonical program `A260552.P11753030595582791337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260552 (n : ℕ) : ℤ :=
  A260552.P11753030595582791337.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261130.P777848238383066671

`A055773(2*n)`
-/

namespace A261130.P777848238383066671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n)

end

end A261130.P777848238383066671

noncomputable section

/-- A261130: a(n) = Product(p prime | n < p <= 2*n).

Offset 0, canonical program `A261130.P777848238383066671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A261130 (n : ℕ) : ℤ :=
  A261130.P777848238383066671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A261130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263297.P13367388864379357855

`A061395(A000265(n+1)*A105560(n+1))`
-/

namespace A263297.P13367388864379357855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000265 (n + 1) * A105560 (n + 1)).toNat

end

end A263297.P13367388864379357855

noncomputable section

/-- A263297: The greater of bigomega(n) and maximal prime index in the prime factorization of n.

Offset 1, canonical program `A263297.P13367388864379357855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6074 terms. -/
def A263297 (n : ℕ) : ℤ :=
  A263297.P13367388864379357855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6074 terms. -/
def A263297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263428.P6407784587852814303

`A266459(n)*A266605(n)`
-/

namespace A263428.P6407784587852814303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266459 n * A266605 n

end

end A263428.P6407784587852814303

noncomputable section

/-- A263428: Triangle read by rows giving successive states of cellular automaton generated by "Rule 3" initiated with a single ON (black) cell.

Offset 0, canonical program `A263428.P6407784587852814303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263428 (n : ℕ) : ℤ :=
  A263428.P6407784587852814303.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268447.P7684583934776672033

`A128899(A000124(n+9)+8)`
-/

namespace A268447.P7684583934776672033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A000124 (n + 9) + 8).toNat

end

end A268447.P7684583934776672033

noncomputable section

/-- A268447: Number of North-East lattice paths from (0,0) to (n,n) that cross the diagonal y = x horizontally exactly four times.

Offset 8, canonical program `A268447.P7684583934776672033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A268447 (n : ℕ) : ℤ :=
  A268447.P7684583934776672033.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A268447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269758.P3897110207471360773

`A000079(A262978(n+1))`
-/

namespace A269758.P3897110207471360773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A262978 (n + 1)).toNat

end

end A269758.P3897110207471360773

noncomputable section

/-- A269758: Prime powers with squarefree neighbors.

Offset 1, canonical program `A269758.P3897110207471360773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A269758 (n : ℕ) : ℤ :=
  A269758.P3897110207471360773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A269758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271347.P3397854645689726759

`p?[A059456(n+1)-38]`
-/

namespace A271347.P3397854645689726759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271347.P3397854645689726759

noncomputable section

/-- A271347: Primes p such that p + 38 is also prime.

Offset 1, canonical program `A271347.P3397854645689726759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1441 terms. -/
def A271347 (n : ℕ) : ℤ :=
  A271347.P3397854645689726759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1441 terms. -/
def A271347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275156.P8746114165436462758

`∩[A080681(n+1)-1, A080681(n+1)]`
-/

namespace A275156.P8746114165436462758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275156.P8746114165436462758

noncomputable section

/-- A275156: The 108 numbers n such that n(n+1) is 17-smooth.

Offset 1, canonical program `A275156.P8746114165436462758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A275156 (n : ℕ) : ℤ :=
  (A275156.P8746114165436462758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A275156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276555.P9709208659877672579

`a(A243291(n+1)-1)+1` with `a(0)=0`
-/

namespace A276555.P9709208659877672579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A243291 (n + 1) - 1).toNat + 1

end

end A276555.P9709208659877672579

noncomputable section

/-- A276555: Number of steps to reach 1 when starting from n and iterating the map x -> x - A061395(x).

Offset 1, canonical program `A276555.P9709208659877672579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276555 (n : ℕ) : ℤ :=
  (A276555.P9709208659877672579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283265.P16513607417697021488

`a(a(1-A129950(n+1)))` with `a(0)=1, a(1)=0`
-/

namespace A283265.P16513607417697021488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (a (1 - A129950 (n + 1)).toNat)

end

end A283265.P16513607417697021488

noncomputable section

/-- A283265: a(n) = 1 if n is neither 2 nor a lesser or greater twin prime (in A001097), 0 otherwise.

Offset 1, canonical program `A283265.P16513607417697021488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283265 (n : ℕ) : ℤ :=
  (A283265.P16513607417697021488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285960.P9200818931746546545

`A286046(2*n+1)`
-/

namespace A285960.P9200818931746546545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286046 (2 * n + 1)

end

end A285960.P9200818931746546545

noncomputable section

/-- A285960: {01->1}-transform of the Thue-Morse word A010060.

Offset 1, canonical program `A285960.P9200818931746546545`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286046, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285960 (n : ℕ) : ℤ :=
  A285960.P9200818931746546545.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286046, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A285960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A288462.P7615949693816486545

`char[A288464(n+1)-1]`
-/

namespace A288462.P7615949693816486545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288462.P7615949693816486545

noncomputable section

/-- A288462: Fixed point of the mapping 00->0101, 1->10, starting with 00.

Offset 1, canonical program `A288462.P7615949693816486545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288462 (n : ℕ) : ℤ :=
  (A288462.P7615949693816486545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289052.P5727791774841468947

`a(A076563(n))+1` with `a(0)=1, a(1)=2`
-/

namespace A289052.P5727791774841468947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A076563 n).toNat + 1

end

end A289052.P5727791774841468947

noncomputable section

/-- A289052: a(1) = 1; a(n) = a(n-A006530(n-1)) + 1 for n > 1.

Offset 1, canonical program `A289052.P5727791774841468947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289052 (n : ℕ) : ℤ :=
  (A289052.P5727791774841468947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290107.P13174289711486750331

`∏{e}[A328400(n+1), #]`
-/

namespace A290107.P13174289711486750331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A290107.P13174289711486750331

noncomputable section

/-- A290107: a(1) = 1; for n > 1, a(n) = product of distinct exponents in the prime factorization of n.

Offset 1, canonical program `A290107.P13174289711486750331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290107 (n : ℕ) : ℤ :=
  (A290107.P13174289711486750331.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294242.P17936846053533156002

`1-A077641(n+1)+n`
-/

namespace A294242.P17936846053533156002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077641 (n + 1) + (n : ℤ)

end

end A294242.P17936846053533156002

noncomputable section

/-- A294242: Number of partitions of 2n into two parts with the larger part nonsquarefree.

Offset 1, canonical program `A294242.P17936846053533156002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294242 (n : ℕ) : ℤ :=
  A294242.P17936846053533156002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309082.P13066646798315340645

`∑[A344299(A000189(n+1))]`
-/

namespace A309082.P13066646798315340645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (A000189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309082.P13066646798315340645

noncomputable section

/-- A309082: a(n) = n - floor(n/2^3) + floor(n/3^3) - floor(n/4^3) + ...

Offset 1, canonical program `A309082.P13066646798315340645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309082 (n : ℕ) : ℤ :=
  A309082.P13066646798315340645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309892.P4509692505962728463

`1+a(A076563(n))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A309892.P4509692505962728463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 2] fun n a =>
  1 + a (A076563 n).toNat

end

end A309892.P4509692505962728463

noncomputable section

/-- A309892: a(0) = 0, a(1) = 1, and for any n > 1, a(n) is the number of iterations of the map x -> x - gpf(x) (where gpf(x) denotes the greatest prime factor of x) required to reach 0 starting from n.

Offset 0, canonical program `A309892.P4509692505962728463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309892 (n : ℕ) : ℤ :=
  (A309892.P4509692505962728463.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A309892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A311506.P16000641395129757266

`A004277(n)+A314736(n)-A072154(n)`
-/

namespace A311506.P16000641395129757266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A314736 n - A072154 n)

end

end A311506.P16000641395129757266

noncomputable section

/-- A311506: Coordination sequence Gal.5.29.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311506.P16000641395129757266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311506 (n : ℕ) : ℤ :=
  A311506.P16000641395129757266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311554.P133304117598951157

`A311549(n)+A004524(A099480(n))`
-/

namespace A311554.P133304117598951157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + A004524 (A099480 n).toNat

end

end A311554.P133304117598951157

noncomputable section

/-- A311554: Coordination sequence Gal.6.134.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311554.P133304117598951157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. -/
def A311554 (n : ℕ) : ℤ :=
  A311554.P133304117598951157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2403 terms. -/
def A311554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311576.P2952944293918818847

`2*A313089(n)-A310493(n)`
-/

namespace A311576.P2952944293918818847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313089 n - A310493 n

end

end A311576.P2952944293918818847

noncomputable section

/-- A311576: Coordination sequence Gal.5.76.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311576.P2952944293918818847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A311576 (n : ℕ) : ℤ :=
  A311576.P2952944293918818847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A311576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311633.P17424544686150266232

`A314736(n)-A128834(A004396(n))`
-/

namespace A311633.P17424544686150266232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 n - A128834 (A004396 n).toNat

end

end A311633.P17424544686150266232

noncomputable section

/-- A311633: Coordination sequence Gal.5.100.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311633.P17424544686150266232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311633 (n : ℕ) : ℤ :=
  A311633.P17424544686150266232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. -/
def A311633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312152.P14206861352301570908

`A004396(n)+A311549(n)-A004525(n)`
-/

namespace A312152.P14206861352301570908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311549 n - A004525 n)

end

end A312152.P14206861352301570908

noncomputable section

/-- A312152: Coordination sequence Gal.6.134.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312152.P14206861352301570908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A312152 (n : ℕ) : ℤ :=
  A312152.P14206861352301570908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A312152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312963.P18354648499990341232

`A311549(n)+A004525(n-A004396(n))`
-/

namespace A312963.P18354648499990341232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A312963.P18354648499990341232

noncomputable section

/-- A312963: Coordination sequence Gal.6.153.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312963.P18354648499990341232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A312963 (n : ℕ) : ℤ :=
  A312963.P18354648499990341232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. -/
def A312963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313845.P7215698163674726813

`A313874(n)+A313887(n)-A313908(n)`
-/

namespace A313845.P7215698163674726813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313874 n + (A313887 n - A313908 n)

end

end A313845.P7215698163674726813

noncomputable section

/-- A313845: Coordination sequence Gal.6.649.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313845.P7215698163674726813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313845 (n : ℕ) : ℤ :=
  A313845.P7215698163674726813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A313845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313933.P2526088647999018062

`A315345(n)-A134667(n)`
-/

namespace A313933.P2526088647999018062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315345 n - A134667 n

end

end A313933.P2526088647999018062

noncomputable section

/-- A313933: Coordination sequence Gal.6.658.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313933.P2526088647999018062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A313933 (n : ℕ) : ℤ :=
  A313933.P2526088647999018062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A313933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315052.P7860107884433601269

`abs(A008592(n)-A314032(n))`
-/

namespace A315052.P7860107884433601269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314032 n|

end

end A315052.P7860107884433601269

noncomputable section

/-- A315052: Coordination sequence Gal.6.338.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315052.P7860107884433601269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315052 (n : ℕ) : ℤ :=
  A315052.P7860107884433601269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315316.P15306875656313717143

`abs(A008592(n)-A310404(n))`
-/

namespace A315316.P15306875656313717143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310404 n|

end

end A315316.P15306875656313717143

noncomputable section

/-- A315316: Coordination sequence Gal.6.324.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315316.P15306875656313717143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315316 (n : ℕ) : ℤ :=
  A315316.P15306875656313717143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A315316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315321.P17466874395387374429

`abs(A008592(n)-A310396(n))`
-/

namespace A315321.P17466874395387374429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A310396 n|

end

end A315321.P17466874395387374429

noncomputable section

/-- A315321: Coordination sequence Gal.6.635.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315321.P17466874395387374429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315321 (n : ℕ) : ℤ :=
  A315321.P17466874395387374429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A315321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315516.P12141593539764391929

`A008458(n)+A312891(n)-A310404(n)`
-/

namespace A315516.P12141593539764391929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A312891 n - A310404 n)

end

end A315516.P12141593539764391929

noncomputable section

/-- A315516: Coordination sequence Gal.6.326.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315516.P12141593539764391929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A315516 (n : ℕ) : ℤ :=
  A315516.P12141593539764391929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A315516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315695.P671725202491789356

`2*A313722(n)-A311889(n)`
-/

namespace A315695.P671725202491789356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313722 n - A311889 n

end

end A315695.P671725202491789356

noncomputable section

/-- A315695: Coordination sequence Gal.6.620.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315695.P671725202491789356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315695 (n : ℕ) : ℤ :=
  A315695.P671725202491789356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A315695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315702.P17954955877429710355

`abs(A008592(n)-A311889(n))`
-/

namespace A315702.P17954955877429710355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311889 n|

end

end A315702.P17954955877429710355

noncomputable section

/-- A315702: Coordination sequence Gal.6.641.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315702.P17954955877429710355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2230 terms. -/
def A315702 (n : ℕ) : ℤ :=
  A315702.P17954955877429710355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2230 terms. -/
def A315702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325134.P8946370293622767949

`A252464(n+1)+1`
-/

namespace A325134.P8946370293622767949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + 1

end

end A325134.P8946370293622767949

noncomputable section

/-- A325134: a(1) = 1; a(n) = number of prime factors of n counted with multiplicity plus the largest prime index of n.

Offset 1, canonical program `A325134.P8946370293622767949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325134 (n : ℕ) : ℤ :=
  A325134.P8946370293622767949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327564.P3885498086889652874

`A003968(n+1)/A007947(n+1)`
-/

namespace A327564.P3885498086889652874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A327564.P3885498086889652874

noncomputable section

/-- A327564: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)^(k_j - 1)).

Offset 1, canonical program `A327564.P3885498086889652874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327564.P3885498086889652874.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327861.P7578778145524314536

`char[Δ[A190117(n+1)]-1]`
-/

namespace A327861.P7578778145524314536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327861.P7578778145524314536

noncomputable section

/-- A327861: Number of divisors d of n for which A003415(d)*d is equal to n, where A003415(x) gives the arithmetic derivative of x.

Offset 1, canonical program `A327861.P7578778145524314536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327861 (n : ℕ) : ℤ :=
  (A327861.P7578778145524314536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328620.P17305493884034460707

`A235224(n)-A267263(n)`
-/

namespace A328620.P17305493884034460707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n - A267263 n

end

end A328620.P17305493884034460707

noncomputable section

/-- A328620: Number of nonleading zeros in primorial base expansion of n, a(0) = 0 by convention.

Offset 0, canonical program `A328620.P17305493884034460707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328620 (n : ℕ) : ℤ :=
  A328620.P17305493884034460707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328879.P6974897454424880359

`∏{p}[n+1, A159081(#)]`
-/

namespace A328879.P6974897454424880359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A159081 p

end

end A328879.P6974897454424880359

noncomputable section

/-- A328879: If n = Product (p_j^k_j) then a(n) = Product (pi(p_j) + 1), where pi = A000720.

Offset 1, canonical program `A328879.P6974897454424880359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328879 (n : ℕ) : ℤ :=
  A328879.P6974897454424880359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329761.P2221005200150248452

`∩[A174813(n+1), A386113(n+1)]`
-/

namespace A329761.P2221005200150248452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329761.P2221005200150248452

noncomputable section

/-- A329761: Primes having only {1, 3, 9} as digits.

Offset 1, canonical program `A329761.P2221005200150248452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A329761 (n : ℕ) : ℤ :=
  (A329761.P2221005200150248452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A329761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330137.P857110562729131261

`∩[A080671(n+1), A279622(n+1)]`
-/

namespace A330137.P857110562729131261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330137.P857110562729131261

noncomputable section

/-- A330137: Numbers m such that 1 < gcd(m, 30) < m and m does not divide 30^e for e >= 0.

Offset 1, canonical program `A330137.P857110562729131261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7288 terms. -/
def A330137 (n : ℕ) : ℤ :=
  (A330137.P857110562729131261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7288 terms. -/
def A330137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332228.P14040884313561916406

`∩[A332227(n+1), A389459(n+1)]`
-/

namespace A332228.P14040884313561916406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P14040884313561916406

noncomputable section

/-- A332228: Odd numbers n, not powers of primes, such that sigma(n) is congruent to 2 modulo 8.

Offset 1, canonical program `A332228.P14040884313561916406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A332228 (n : ℕ) : ℤ :=
  (A332228.P14040884313561916406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. -/
def A332228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332875.P8164143356075399345

`A100429(n+1)+A156243(n+1)%A156242(A028310(n))`
-/

namespace A332875.P8164143356075399345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1) + Int.tmod (A156243 (n + 1)) (A156242 (A028310 n).toNat)

end

end A332875.P8164143356075399345

noncomputable section

/-- A332875: Sizes of maximal weakly increasing subsequences of A000002.

Offset 1, canonical program `A332875.P8164143356075399345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332875 (n : ℕ) : ℤ :=
  A332875.P8164143356075399345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333450.P9039608960163679995

`∑[A333471(n+1)]`
-/

namespace A333450.P9039608960163679995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333450.P9039608960163679995

noncomputable section

/-- A333450: a(n) = Sum_{k=1..n} mu(k) * prime(floor(n/k)).

Offset 1, canonical program `A333450.P9039608960163679995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333450 (n : ℕ) : ℤ :=
  A333450.P9039608960163679995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333843.P18021418855206655250

`A069290(A000189(n+1))`
-/

namespace A333843.P18021418855206655250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A000189 (n + 1)).toNat

end

end A333843.P18021418855206655250

noncomputable section

/-- A333843: Expansion of g.f.: Sum_{k>=1} k * x^(k^3) / (1 - x^(k^3)).

Offset 1, canonical program `A333843.P18021418855206655250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333843 (n : ℕ) : ℤ :=
  A333843.P18021418855206655250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337287.P16808135169875612648

`A095096(eq[1, A095096(n+2)-A095096(n+1)]+1)`
-/

namespace A337287.P16808135169875612648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 2) - A095096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A337287.P16808135169875612648

noncomputable section

/-- A337287: Numbers k such that both k and k+1 are in A095096.

Offset 1, canonical program `A337287.P16808135169875612648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A337287 (n : ℕ) : ℤ :=
  A337287.P16808135169875612648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4473 terms. -/
def A337287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341629.P10620741224943255080

`A331281(∏{p}[n+1, #])`
-/

namespace A341629.P10620741224943255080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A341629.P10620741224943255080

noncomputable section

/-- A341629: Characteristic function of A055932: a(n) = 1 if n is a number all of whose prime divisors are consecutive primes starting at 2, otherwise 0.

Offset 1, canonical program `A341629.P10620741224943255080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341629 (n : ℕ) : ℤ :=
  A341629.P10620741224943255080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344586.P11857581262602511769

`comp[A344585(n+1)-1]+1`
-/

namespace A344586.P11857581262602511769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344585 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344586.P11857581262602511769

noncomputable section

/-- A344586: Numbers k for which A003415(k) >= A001065(k), where A003415 gives the arithmetic derivative, and A001065 is the sum of proper divisors.

Offset 1, canonical program `A344586.P11857581262602511769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344586 (n : ℕ) : ℤ :=
  (A344586.P11857581262602511769.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347382.P12466733261533081924

`A252464(n+1)-A252464(∑{d}[n+1, #*#%2])`
-/

namespace A347382.P12466733261533081924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (∑ d ∈ Nat.divisors (f1 n), d * (d % 2))

end

end A347382.P12466733261533081924

noncomputable section

/-- A347382: a(n) = A252464(n) - A252464(A000593(n)).

Offset 1, canonical program `A347382.P12466733261533081924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5264 terms. -/
def A347382 (n : ℕ) : ℤ :=
  A347382.P12466733261533081924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5264 terms. -/
def A347382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348028.P15876439047741039466

`gcd(sqrt(A072861(n+1)), A343224(n+1))`
-/

namespace A348028.P15876439047741039466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))) (A343224 (n + 1))

end

end A348028.P15876439047741039466

noncomputable section

/-- A348028: Greatest common divisor of A003415 (arithmetic derivative) and sigma, the sum of divisors function.

Offset 1, canonical program `A348028.P15876439047741039466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348028 (n : ℕ) : ℤ :=
  (A348028.P15876439047741039466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348030.P17211473318799311416

`A003968(n+1)-(n+1)`
-/

namespace A348030.P17211473318799311416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - (n + 1 : ℤ)

end

end A348030.P17211473318799311416

noncomputable section

/-- A348030: a(n) = A003968(n) - n, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348030.P17211473318799311416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348030 (n : ℕ) : ℤ :=
  A348030.P17211473318799311416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348499.P15953231188043729446

`record[gcd(n+1, A003968(n+1))]`
-/

namespace A348499.P15953231188043729446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003968 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348499.P15953231188043729446

noncomputable section

/-- A348499: Numbers k such that A003968(k) is a multiple of k, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348499.P15953231188043729446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6242 terms. -/
def A348499 (n : ℕ) : ℤ :=
  (A348499.P15953231188043729446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6242 terms. -/
def A348499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349173.P16569106588395743123

`∑{d}[n+1, A003968(#)*A319684((n+1)/#)]`
-/

namespace A349173.P16569106588395743123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349173.P16569106588395743123

noncomputable section

/-- A349173: Dirichlet convolution of A003415 with A003959, where A003415 is the arithmetic derivative and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349173.P16569106588395743123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349173 (n : ℕ) : ℤ :=
  A349173.P16569106588395743123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349356.P8236317292447045673

`∑{d}[n+1, A003968(#)*A276833((n+1)/#)]`
-/

namespace A349356.P8236317292447045673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003968 d * A276833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349356.P8236317292447045673

noncomputable section

/-- A349356: Dirichlet convolution of A003959 with A097945 (Dirichlet inverse of A003958), where A003958 and A003959 are fully multiplicative with a(p) = p-1 and p+1 respectively.

Offset 1, canonical program `A349356.P8236317292447045673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349356 (n : ℕ) : ℤ :=
  A349356.P8236317292447045673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350342.P14469462587994129721

`filter[A003277(n+1), A325964(#)]`
-/

namespace A350342.P14469462587994129721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A350342.P14469462587994129721

noncomputable section

/-- A350342: Numbers k such that k^2 is an abelian order.

Offset 1, canonical program `A350342.P14469462587994129721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8068 terms. -/
def A350342 (n : ℕ) : ℤ :=
  A350342.P14469462587994129721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8068 terms. -/
def A350342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351715.P1671394502304081214

`A351714(lt[Δ[A351714(n+1)], 2]+1)`
-/

namespace A351715.P1671394502304081214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351714 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351714 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A351715.P1671394502304081214

noncomputable section

/-- A351715: Numbers k such that k and k + 1 are both Lucas-Niven numbers (A351714).

Offset 1, canonical program `A351715.P1671394502304081214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 785 terms. -/
def A351715 (n : ℕ) : ℤ :=
  A351715.P1671394502304081214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 785 terms. -/
def A351715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353329.P10991015569382708285

`A353352(2*(n+1))-A353352(A000265(n+1))`
-/

namespace A353329.P10991015569382708285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353352 (2 * (n + 1)) - A353352 (A000265 (n + 1)).toNat

end

end A353329.P10991015569382708285

noncomputable section

/-- A353329: Number of divisors d of n for which A332823(d) is negative (-1).

Offset 1, canonical program `A353329.P10991015569382708285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353329 (n : ℕ) : ℤ :=
  A353329.P10991015569382708285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353578.P15899571528050790297

`4*A353579(n+1)-1`
-/

namespace A353578.P15899571528050790297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A353579 (n + 1) - 1

end

end A353578.P15899571528050790297

noncomputable section

/-- A353578: Numbers in the smallest subset of N containing 3 and closed under the mappings k->2k + 1, k->8k + 3, and k->16k + 3.

Offset 1, canonical program `A353578.P15899571528050790297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A353578 (n : ℕ) : ℤ :=
  A353578.P15899571528050790297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1155 terms. -/
def A353578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353958.P3857893549041460234

`Δ[A160664(n)]-A353956(n+1)`
-/

namespace A353958.P3857893549041460234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A353956 (n + 1)

end

end A353958.P3857893549041460234

noncomputable section

/-- A353958: Sum of the divisors of n whose arithmetic derivative is even.

Offset 1, canonical program `A353958.P3857893549041460234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353958 (n : ℕ) : ℤ :=
  A353958.P3857893549041460234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356845.P13701475926047040906

`eq[ϕ/a(n-1), A137794(n+1)]+1` with `a(0)=1`
-/

namespace A356845.P13701475926047040906
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A356845.P13701475926047040906

noncomputable section

/-- A356845: Odd numbers with gapless prime indices.

Offset 1, canonical program `A356845.P13701475926047040906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5385 terms. -/
def A356845 (n : ℕ) : ℤ :=
  (A356845.P13701475926047040906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5385 terms. -/
def A356845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360157.P14177147188931133787

`A068068(A066990(n+1)/(A073353(n+1)-(n+1)))`
-/

namespace A360157.P14177147188931133787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (SequenceMachineLib.roundAway ((A066990 (n + 1) : ℚ) / (A073353 (n + 1) - (n + 1 : ℤ) : ℚ))).toNat

end

end A360157.P14177147188931133787

noncomputable section

/-- A360157: a(n) is the number of unitary divisors of n that are odd squares.

Offset 1, canonical program `A360157.P14177147188931133787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157 (n : ℕ) : ℤ :=
  A360157.P14177147188931133787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360793.P3059048481711579706

`filter[A391497(n+1), A359466(#)]`
-/

namespace A360793.P3059048481711579706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A360793.P3059048481711579706

noncomputable section

/-- A360793: Numbers of the form m*p^3, where m > 1 is squarefree and prime p does not divide m.

Offset 1, canonical program `A360793.P3059048481711579706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7407 terms. -/
def A360793 (n : ℕ) : ℤ :=
  A360793.P3059048481711579706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7407 terms. -/
def A360793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361793.P4175961423082726989

`A035316(A000189(n+1))`
-/

namespace A361793.P4175961423082726989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A000189 (n + 1)).toNat

end

end A361793.P4175961423082726989

noncomputable section

/-- A361793: Sum of the squares d^2 of the divisors d satisfying d^3|n.

Offset 1, canonical program `A361793.P4175961423082726989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361793 (n : ℕ) : ℤ :=
  A361793.P4175961423082726989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365298.P3848956683567557331

`A078615(n+1)/A066990(A003557(n+1))`
-/

namespace A365298.P3848956683567557331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (A066990 (A003557 (n + 1)).toNat : ℚ)

end

end A365298.P3848956683567557331

noncomputable section

/-- A365298: a(n) is the smallest number k such that k*n is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A365298.P3848956683567557331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365298 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365298.P3848956683567557331.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365489.P17326269885697847384

`A048785(A019555(n+1))`
-/

namespace A365489.P17326269885697847384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A019555 (n + 1)).toNat

end

end A365489.P17326269885697847384

noncomputable section

/-- A365489: The number of divisors of the smallest cube divisible by n.

Offset 1, canonical program `A365489.P17326269885697847384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365489 (n : ℕ) : ℤ :=
  A365489.P17326269885697847384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368643.P10387415759365505235

`A214526(n*(n+1)/2+1)`
-/

namespace A368643.P10387415759365505235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2) + 1)).toNat

end

end A368643.P10387415759365505235

noncomputable section

/-- A368643: Manhattan distance from the origin of triangular number point T(n) = n*(n+1)/2 in a square spiral with point 0 at the origin.

Offset 0, canonical program `A368643.P10387415759365505235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368643 (n : ℕ) : ℤ :=
  A368643.P10387415759365505235.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368901.P12517472764070751102

`A368900(n)*a(n-1)` with `a(0)=1`
-/

namespace A368901.P12517472764070751102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A368900 n * a (n - 1)

end

end A368901.P12517472764070751102

noncomputable section

/-- A368901: The least common multiple of the first n terms of Doudna sequence, A005940.

Offset 0, canonical program `A368901.P12517472764070751102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368901 (n : ℕ) : ℤ :=
  A368901.P12517472764070751102.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369042.P11874073633808714569

`A369041(A064707(n+1))`
-/

namespace A369042.P11874073633808714569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369041 (A064707 (n + 1)).toNat

end

end A369042.P11874073633808714569

noncomputable section

/-- A369042: LCM-transform of the inverse of binary Gray code (A006068).

Offset 1, canonical program `A369042.P11874073633808714569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A369042 (n : ℕ) : ℤ :=
  A369042.P11874073633808714569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A369042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370077.P3375388874869746190

`2^A370078(n+1)`
-/

namespace A370077.P3375388874869746190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A370078 (n + 1) : ℤ)

end

end A370077.P3375388874869746190

noncomputable section

/-- A370077: The product of exponents of the prime factorization of the largest unitary divisor of n that is a term of A138302.

Offset 1, canonical program `A370077.P3375388874869746190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370077 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370077.P3375388874869746190.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370082.P6772525730967909071

`7*A004613(n+1)-3`
-/

namespace A370082.P6772525730967909071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A004613 (n + 1) - 3

end

end A370082.P6772525730967909071

noncomputable section

/-- A370082: The number of square lattice nodes inside the n-th largest octagon with angles 3*Pi/4, along the perimeter of which there are only 8 lattice nodes - at the vertices of the octagon.

Offset 1, canonical program `A370082.P6772525730967909071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370082 (n : ℕ) : ℤ :=
  A370082.P6772525730967909071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004613, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372771.P4411749344407229713

`comp[A004273(comp[A004613(n+1)])]`
-/

namespace A372771.P4411749344407229713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A372771.P4411749344407229713

noncomputable section

/-- A372771: Numbers m such that the congruence x^(m+1) == m (mod m+1) is solvable.

Offset 1, canonical program `A372771.P4411749344407229713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372771 (n : ℕ) : ℤ :=
  (A372771.P4411749344407229713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374046.P8553826252571052202

`comp[A374047(n+1)]`
-/

namespace A374046.P8553826252571052202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A374046.P8553826252571052202

noncomputable section

/-- A374046: Numbers k for which A328845(k) is even, where A328845 is the first Fibonacci based variant of arithmetic derivative.

Offset 1, canonical program `A374046.P8553826252571052202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374046 (n : ℕ) : ℤ :=
  (A374046.P8553826252571052202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375076.P5343439789459528226

`filter[A391497(n+1), A295316(#)]`
-/

namespace A375076.P5343439789459528226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A375076.P5343439789459528226

noncomputable section

/-- A375076: Numbers whose prime factorization exponents include at least one 1, at least one 3 and no other exponents.

Offset 1, canonical program `A375076.P5343439789459528226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076 (n : ℕ) : ℤ :=
  A375076.P5343439789459528226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A375076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375240.P17491161113882566013

`A019555(A011262(n+1))`
-/

namespace A375240.P17491161113882566013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A011262 (n + 1)).toNat

end

end A375240.P17491161113882566013

noncomputable section

/-- A375240: For squarefree j, a(j*k^2) = j * a(k), a(1) = 1.

Offset 1, canonical program `A375240.P17491161113882566013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A375240 (n : ℕ) : ℤ :=
  A375240.P17491161113882566013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A375240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380163.P8282458829407454135

`A380161(A066990(n+1))`
-/

namespace A380163.P8282458829407454135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380161 (A066990 (n + 1)).toNat

end

end A380163.P8282458829407454135

noncomputable section

/-- A380163: a(n) is the value of the Euler totient function when applied to the squarefree part of n.

Offset 1, canonical program `A380163.P8282458829407454135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380163 (n : ℕ) : ℤ :=
  A380163.P8282458829407454135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384556.P16064934496788693992

`A003968(A066990(n+1))`
-/

namespace A384556.P16064934496788693992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (A066990 (n + 1)).toNat

end

end A384556.P16064934496788693992

noncomputable section

/-- A384556: The sum of the exponential divisors of n that are cubefree.

Offset 1, canonical program `A384556.P16064934496788693992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384556 (n : ℕ) : ℤ :=
  A384556.P16064934496788693992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387096.P15198397566290512698

`lt[n+2, A086568(n+1)]+1`
-/

namespace A387096.P15198397566290512698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387096.P15198397566290512698

noncomputable section

/-- A387096: Numbers k such that k < prime(bigomega(k))#, where prime(bigomega(k))# is the product of the first bigomega(k) primes and bigomega(k) is the number of prime divisors of k (counted multiplicity).

Offset 1, canonical program `A387096.P15198397566290512698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1123 terms. -/
def A387096 (n : ℕ) : ℤ :=
  (A387096.P15198397566290512698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1123 terms. -/
def A387096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387362.P10061794841326187916

`∩[A003277(n+1)-2, A003277(n+1)]`
-/

namespace A387362.P10061794841326187916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387362.P10061794841326187916

noncomputable section

/-- A387362: Cyclic numbers k such that k+2 is also a cyclic number.

Offset 1, canonical program `A387362.P10061794841326187916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. -/
def A387362 (n : ℕ) : ℤ :=
  (A387362.P10061794841326187916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. -/
def A387362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389425.P17457791161868218869

`A199716(n+2)-A199716(n+1)`
-/

namespace A389425.P17457791161868218869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 2) - A199716 (n + 1)

end

end A389425.P17457791161868218869

noncomputable section

/-- A389425: First differences of A199716.

Offset 1, canonical program `A389425.P17457791161868218869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425 (n : ℕ) : ℤ :=
  A389425.P17457791161868218869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390664.P13804746862053539621

`∑{d}[A019555(n+1), #]`
-/

namespace A390664.P13804746862053539621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A390664.P13804746862053539621

noncomputable section

/-- A390664: The sum of the divisors of the smallest number whose cube is divisible by n.

Offset 1, canonical program `A390664.P13804746862053539621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390664 (n : ℕ) : ℤ :=
  (A390664.P13804746862053539621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390665.P6081076433370388835

`A034677(A019555(n+1))`
-/

namespace A390665.P6081076433370388835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 (A019555 (n + 1)).toNat

end

end A390665.P6081076433370388835

noncomputable section

/-- A390665: The sum of the unitary divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390665.P6081076433370388835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390665 (n : ℕ) : ℤ :=
  A390665.P6081076433370388835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390666.P9669294390730205384

`A034448(A019555(n+1))`
-/

namespace A390666.P9669294390730205384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A019555 (n + 1)).toNat

end

end A390666.P9669294390730205384

noncomputable section

/-- A390666: The sum of the unitary divisors of the smallest number whose cube is divisible by n.

Offset 1, canonical program `A390666.P9669294390730205384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390666 (n : ℕ) : ℤ :=
  A390666.P9669294390730205384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390754.P5128108036385649680

`A053191(A019555(n+1))`
-/

namespace A390754.P5128108036385649680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (A019555 (n + 1)).toNat

end

end A390754.P5128108036385649680

noncomputable section

/-- A390754: The Euler totient of the smallest cube divisible by n.

Offset 1, canonical program `A390754.P5128108036385649680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390754 (n : ℕ) : ℤ :=
  A390754.P5128108036385649680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391998.P12404897570496427759

`filter[A392001(n+1), A005171(#)]`
-/

namespace A391998.P12404897570496427759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A391998.P12404897570496427759

noncomputable section

/-- A391998: Composite numbers k such that k + 1 is not a power of an odd prime and 2*k + 1 is not a prime power.

Offset 1, canonical program `A391998.P12404897570496427759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8535 terms. -/
def A391998 (n : ℕ) : ℤ :=
  A391998.P12404897570496427759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8535 terms. -/
def A391998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392009.P12527762625127748169

`2*A024556(n+1)`
-/

namespace A392009.P12527762625127748169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024556 (n + 1)

end

end A392009.P12527762625127748169

noncomputable section

/-- A392009: Even squarefree integers with at least 3 prime factors.

Offset 1, canonical program `A392009.P12527762625127748169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392009 (n : ℕ) : ℤ :=
  A392009.P12527762625127748169.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024556, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392086.P15597796412968857212

`A047994(A019555(n+1))`
-/

namespace A392086.P15597796412968857212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019555 (n + 1)).toNat

end

end A392086.P15597796412968857212

noncomputable section

/-- A392086: The unitary totient of the smallest number whose cube is divisible by n.

Offset 1, canonical program `A392086.P15597796412968857212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392086 (n : ℕ) : ℤ :=
  A392086.P15597796412968857212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392167.P17146361155502720143

`A001615(A019555(n+1))`
-/

namespace A392167.P17146361155502720143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A019555 (n + 1)).toNat

end

end A392167.P17146361155502720143

noncomputable section

/-- A392167: The Dedekind psi function value of the smallest number whose cube is divisible by n.

Offset 1, canonical program `A392167.P17146361155502720143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392167 (n : ℕ) : ℤ :=
  A392167.P17146361155502720143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395958.P5165968733303486376

`A010060(A064707(n))`
-/

namespace A395958.P5165968733303486376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A064707 n).toNat

end

end A395958.P5165968733303486376

noncomputable section

/-- A395958: Third iterate of the Thue-Morse transform applied to A000035.

Offset 0, canonical program `A395958.P5165968733303486376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395958 (n : ℕ) : ℤ :=
  A395958.P5165968733303486376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184810.P4952026747299435353

`comp[A184811(n+1)-1]+1`
-/

namespace A184810.P4952026747299435353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184811 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184810.P4952026747299435353

noncomputable section

/-- A184810: Numbers m such that prime(m) has the form floor(k*r), where r=sqrt(2/3); complement of A184811.

Offset 1, canonical program `A184810.P4952026747299435353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184810 (n : ℕ) : ℤ :=
  (A184810.P4952026747299435353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184859.P13303099330725981754

`A000040(A184861(n+1))`
-/

namespace A184859.P13303099330725981754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184861 (n + 1)).toNat

end

end A184859.P13303099330725981754

noncomputable section

/-- A184859: Primes of the form floor(kr+h), where r=(1+sqrt(5))/2 and h=1/2.

Offset 1, canonical program `A184859.P13303099330725981754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. -/
def A184859 (n : ℕ) : ℤ :=
  A184859.P13303099330725981754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6148 terms. -/
def A184859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189710.P4230026148150961354

`eq[A068346(n)+1, A003415(n)]`
-/

namespace A189710.P4230026148150961354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189710.P4230026148150961354

noncomputable section

/-- A189710: Numbers m such that m'' = m'-1 where m' and m'' are respectively the first and the second arithmetic derivative of m (A003415).

Offset 1, canonical program `A189710.P4230026148150961354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1235 terms. -/
def A189710 (n : ℕ) : ℤ :=
  (A189710.P4230026148150961354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1235 terms. -/
def A189710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190119.P9883724251289863595

`∑[A086130(n+1)/(n+1)]`
-/

namespace A190119.P9883724251289863595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086130 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190119.P9883724251289863595

noncomputable section

/-- A190119: a(n) = Sum_{k=1..n} lcm(k,k')/k, where k' is arithmetic derivative of k.

Offset 1, canonical program `A190119.P9883724251289863595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190119 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A190119.P9883724251289863595.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213791.P5287273639939640334

`(-1)^n*A008440(n)`
-/

namespace A213791.P5287273639939640334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008440 n

end

end A213791.P5287273639939640334

noncomputable section

/-- A213791: Expansion of psi(-x)^6 in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A213791.P5287273639939640334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213791 (n : ℕ) : ℤ :=
  A213791.P5287273639939640334.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213791.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232172.P5206875052303947786

`∑[A068346(n+1)]`
-/

namespace A232172.P5206875052303947786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232172.P5206875052303947786

noncomputable section

/-- A232172: Partial sums of second arithmetic derivative of natural numbers.

Offset 1, canonical program `A232172.P5206875052303947786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232172 (n : ℕ) : ℤ :=
  A232172.P5206875052303947786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240052.P5517115470621218941

`A068346(A006094(n+1))`
-/

namespace A240052.P5517115470621218941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A006094 (n + 1)).toNat

end

end A240052.P5517115470621218941

noncomputable section

/-- A240052: 2nd arithmetic derivative of products of 2 successive prime numbers (A006094).

Offset 1, canonical program `A240052.P5517115470621218941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240052 (n : ℕ) : ℤ :=
  A240052.P5517115470621218941.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240054.P9237913273188116088

`A099306(Δ[A061802(n)])`
-/

namespace A240054.P9237913273188116088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (f1 (n + 1) - f1 n).toNat

end

end A240054.P9237913273188116088

noncomputable section

/-- A240054: 4th arithmetic derivative of products of 2 successive prime numbers (A006094).

Offset 1, canonical program `A240054.P9237913273188116088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A240054 (n : ℕ) : ℤ :=
  A240054.P9237913273188116088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A240054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242356.P3750787784098302169

`∩[A242343(n+1), A242344(n+1)]`
-/

namespace A242356.P3750787784098302169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242356.P3750787784098302169

noncomputable section

/-- A242356: Triangular numbers T such that both (T+2) and (T-2) are semiprimes.

Offset 1, canonical program `A242356.P3750787784098302169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A242356 (n : ℕ) : ℤ :=
  (A242356.P3750787784098302169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A242356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245743.P6282690513620818783

`p?[A095994(n+1)]`
-/

namespace A245743.P6282690513620818783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245743.P6282690513620818783

noncomputable section

/-- A245743: Primes p such that p - d is also prime, where d is the largest digit of p.

Offset 1, canonical program `A245743.P6282690513620818783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A245743 (n : ℕ) : ℤ :=
  A245743.P6282690513620818783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A245743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258644.P500966150776542853

`A099306(A003415(n))`
-/

namespace A258644.P500966150776542853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (A003415 n).toNat

end

end A258644.P500966150776542853

noncomputable section

/-- A258644: Fourth arithmetic derivative of n.

Offset 0, canonical program `A258644.P500966150776542853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258644 (n : ℕ) : ℤ :=
  A258644.P500966150776542853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285714.P17107389238952308951

`A285715(n+1)+A285716(n+1)`
-/

namespace A285714.P17107389238952308951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285715 (n + 1) + A285716 (n + 1)

end

end A285714.P17107389238952308951

noncomputable section

/-- A285714: a(1) = 0; for n > 1, a(n) = 1 + a(A285712(n)).

Offset 1, canonical program `A285714.P17107389238952308951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285715, A285716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285714 (n : ℕ) : ℤ :=
  A285714.P17107389238952308951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285715, A285716, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286314.P11865172362924914077

`A008440(10^n)`
-/

namespace A286314.P11865172362924914077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008440 (10 ^ n)

end

end A286314.P11865172362924914077

noncomputable section

/-- A286314: Number of representations of 10^n as sum of 6 triangular numbers.

Offset 0, canonical program `A286314.P11865172362924914077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286314 (n : ℕ) : ℤ :=
  A286314.P11865172362924914077.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008440, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300253.P7469420858027235800

`gcd(∑[A258057(n)], A300251(n+1))`
-/

namespace A300253.P7469420858027235800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A300251 (n + 1))

end

end A300253.P7469420858027235800

noncomputable section

/-- A300253: GCD of arithmetic derivative (A003415) and its Möbius transform (A300251).

Offset 1, canonical program `A300253.P7469420858027235800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300253 (n : ℕ) : ℤ :=
  (A300253.P7469420858027235800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314245.P2036578917269548125

`A314146(2*n)+A314156(n)-A314156(2*n)`
-/

namespace A314245.P2036578917269548125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314146 (2 * n) + (A314156 n - A314156 (2 * n))

end

end A314245.P2036578917269548125

noncomputable section

/-- A314245: Coordination sequence Gal.5.317.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314245.P2036578917269548125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1136 terms. -/
def A314245 (n : ℕ) : ℤ :=
  A314245.P2036578917269548125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1136 terms. -/
def A314245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320585.P11050667382939563471

`p?[A320584(n+1)]`
-/

namespace A320585.P11050667382939563471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320585.P11050667382939563471

noncomputable section

/-- A320585: Primes whose first digit is prime.

Offset 1, canonical program `A320585.P11050667382939563471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A320585 (n : ℕ) : ℤ :=
  A320585.P11050667382939563471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. -/
def A320585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324521.P9856326808181224407

`record[(n+2)*A331281(n+2)]`
-/

namespace A324521.P9856326808181224407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A331281 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324521.P9856326808181224407

noncomputable section

/-- A324521: Numbers > 1 where the maximum prime index is less than or equal to the number of prime factors counted with multiplicity.

Offset 1, canonical program `A324521.P9856326808181224407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A324521 (n : ℕ) : ℤ :=
  A324521.P9856326808181224407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. -/
def A324521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324562.P16997009951451606243

`lt[A331282(n+2), 1]+2`
-/

namespace A324562.P16997009951451606243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A324562.P16997009951451606243

noncomputable section

/-- A324562: Numbers > 1 where the maximum prime index is greater than or equal to the number of prime factors counted with multiplicity.

Offset 1, canonical program `A324562.P16997009951451606243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324562 (n : ℕ) : ℤ :=
  (A324562.P16997009951451606243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328234.P5040501548362449687

`eq[1, A342003(n+2)]+2`
-/

namespace A328234.P5040501548362449687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A328234.P5040501548362449687

noncomputable section

/-- A328234: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117) > 1.

Offset 1, canonical program `A328234.P5040501548362449687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328234 (n : ℕ) : ℤ :=
  (A328234.P5040501548362449687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328310.P2838529226317114668

`A342003(n+2)-A051903(n+2)`
-/

namespace A328310.P2838529226317114668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2) - A051903 (n + 2)

end

end A328310.P2838529226317114668

noncomputable section

/-- A328310: a(n) = A051903(A003415(n)) - A051903(n).

Offset 2, canonical program `A328310.P2838529226317114668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328310 (n : ℕ) : ℤ :=
  A328310.P2838529226317114668.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328393.P15555907351680932415

`eq[A342003(n+2)², A342003(n+2)]+2`
-/

namespace A328393.P15555907351680932415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A328393.P15555907351680932415

noncomputable section

/-- A328393: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117).

Offset 1, canonical program `A328393.P15555907351680932415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328393 (n : ℕ) : ℤ :=
  (A328393.P15555907351680932415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334940.P9109627078636607318

`∑[A230595(n+1)]`
-/

namespace A334940.P9109627078636607318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334940.P9109627078636607318

noncomputable section

/-- A334940: Partial sums of A230595.

Offset 1, canonical program `A334940.P9109627078636607318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334940 (n : ℕ) : ℤ :=
  A334940.P9109627078636607318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340070.P9886036474916302496

`gcd(∑[A258057(n)], ∑{p}[n+1, (n+1)/#])`
-/

namespace A340070.P9886036474916302496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

end

end A340070.P9886036474916302496

noncomputable section

/-- A340070: a(n) = gcd(A003415(n), A069359(n)).

Offset 1, canonical program `A340070.P9886036474916302496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340070 (n : ℕ) : ℤ :=
  (A340070.P9886036474916302496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340608.P2884054405226738747

`eq[1, A366785(n+1)]+1`
-/

namespace A340608.P2884054405226738747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340608.P2884054405226738747

noncomputable section

/-- A340608: The number of prime factors of n (A001222) is relatively prime to the maximum prime index of n (A061395).

Offset 1, canonical program `A340608.P2884054405226738747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340608 (n : ℕ) : ℤ :=
  (A340608.P2884054405226738747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341625.P17225356341816704463

`round(n/(A129283(n)+1))`
-/

namespace A341625.P17225356341816704463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A129283 n + 1 : ℚ))

end

end A341625.P17225356341816704463

noncomputable section

/-- A341625: a(n) = 1 if the arithmetic derivative of n is less than n, otherwise 0.

Offset 0, canonical program `A341625.P17225356341816704463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341625 (n : ℕ) : ℤ :=
  A341625.P17225356341816704463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341995.P4102610596282420216

`A000212(C(2, A068346(n)))`
-/

namespace A341995.P4102610596282420216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (Nat.choose 2 (A068346 n).toNat)

end

end A341995.P4102610596282420216

noncomputable section

/-- A341995: a(n) = 1 if the arithmetic derivative (A003415) of n is a prime, otherwise 0.

Offset 0, canonical program `A341995.P4102610596282420216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341995 (n : ℕ) : ℤ :=
  A341995.P4102610596282420216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341998.P9716678476371119764

`A336551(∑[A258057(n+1)])+1`
-/

namespace A341998.P9716678476371119764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A341998.P9716678476371119764

noncomputable section

/-- A341998: Arithmetic derivative of n divided by its largest squarefree divisor: a(n) = A003557(A003415(n)).

Offset 2, canonical program `A341998.P9716678476371119764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341998 (n : ℕ) : ℤ :=
  A341998.P9716678476371119764.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348284.P12705284031397632652

`lt[n/2, gcd(n, A068346(n))]`
-/

namespace A348284.P12705284031397632652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A068346 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A348284.P12705284031397632652

noncomputable section

/-- A348284: Numbers k such that k | k" where k" is the 2nd arithmetic derivative of k.

Offset 1, canonical program `A348284.P12705284031397632652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1266 terms. -/
def A348284 (n : ℕ) : ℤ :=
  (A348284.P12705284031397632652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1266 terms. -/
def A348284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348304.P16790100513106976712

`∑{d}[n+1, A068346(#)]`
-/

namespace A348304.P16790100513106976712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068346 d

end

end A348304.P16790100513106976712

noncomputable section

/-- A348304: a(n) = Sum_{d|n} d'', where d'' is the second arithmetic derivative of d (A068346).

Offset 1, canonical program `A348304.P16790100513106976712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348304 (n : ℕ) : ℤ :=
  A348304.P16790100513106976712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349434.P894516629542100593

`∑{d}[n+1, A129283(#)*A349337((n+1)/#)]`
-/

namespace A349434.P894516629542100593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129283 d * A349337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349434.P894516629542100593

noncomputable section

/-- A349434: Dirichlet convolution of A129283 (n + its arithmetic derivative) with A349337 (Dirichlet inverse of A230593).

Offset 1, canonical program `A349434.P894516629542100593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349434 (n : ℕ) : ℤ :=
  A349434.P894516629542100593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351945.P5922417229062994348

`A351942(n+1)/A351944(n+1)`
-/

namespace A351945.P5922417229062994348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351942 (n + 1) : ℚ) / (A351944 (n + 1) : ℚ)

end

end A351945.P5922417229062994348

noncomputable section

/-- A351945: a(n) = A342001(A181819(n)).

Offset 1, canonical program `A351945.P5922417229062994348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351942, A351944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351945 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351945.P5922417229062994348.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351942, A351944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351945.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355003.P4927973554709209448

`gcd(A068981(n+1), A277791(n+1))`
-/

namespace A355003.P4927973554709209448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068981 (n + 1)) (A277791 (n + 1))

end

end A355003.P4927973554709209448

noncomputable section

/-- A355003: a(n) = gcd(A003415(n), A277791(n)), where A003415 is the arithmetic derivative and A277791 is the denominator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A355003.P4927973554709209448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355003 (n : ℕ) : ℤ :=
  (A355003.P4927973554709209448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358680.P17815025508061281044

`A353494(n)+A353495(n)`
-/

namespace A358680.P17815025508061281044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 n + A353495 n

end

end A358680.P17815025508061281044

noncomputable section

/-- A358680: a(n) = 1 if the arithmetic derivative of n is even, 0 otherwise.

Offset 0, canonical program `A358680.P17815025508061281044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680 (n : ℕ) : ℤ :=
  A358680.P17815025508061281044.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358772.P7530290515183113547

`eq[1, A353493(n)]`
-/

namespace A358772.P7530290515183113547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358772.P7530290515183113547

noncomputable section

/-- A358772: Numbers whose arithmetic derivative is of the form 4k+1, cf. A003415.

Offset 1, canonical program `A358772.P7530290515183113547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358772 (n : ℕ) : ℤ :=
  (A358772.P7530290515183113547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360109.P9303785803174765081

`A166486(n)*A353494(n)`
-/

namespace A360109.P9303785803174765081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A353494 n

end

end A360109.P9303785803174765081

noncomputable section

/-- A360109: a(n) = 1 if n is not multiple of 4, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A360109.P9303785803174765081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109 (n : ℕ) : ℤ :=
  A360109.P9303785803174765081.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368921.P16218200472489161701

`A003415(n)-A068346(n)`
-/

namespace A368921.P16218200472489161701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n - A068346 n

end

end A368921.P16218200472489161701

noncomputable section

/-- A368921: a(n) = n' - n'', where n' is the arithmetic derivative of n, A003415(n) and n'' is its second arithmetic derivative, A068346(n).

Offset 0, canonical program `A368921.P16218200472489161701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368921 (n : ℕ) : ℤ :=
  A368921.P16218200472489161701.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369048.P3645363535030871227

`ceil(A168036(n)/record[xor(7, n)])`
-/

namespace A369048.P3645363535030871227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168036 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A369048.P3645363535030871227

noncomputable section

/-- A369048: a(n) = 1 if the arithmetic derivative of n is greater than n, otherwise 0.

Offset 0, canonical program `A369048.P3645363535030871227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048 (n : ℕ) : ℤ :=
  A369048.P3645363535030871227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369465.P18253036522274647247

`A003415(A000265(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369465.P18253036522274647247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000265 (n + 1)).toNat

end

end A369465.P18253036522274647247

noncomputable section

/-- A369465: Arithmetic derivative of the odd part of n: a(n) = A003415(A000265(n)).

Offset 1, canonical program `A369465.P18253036522274647247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369465 (n : ℕ) : ℤ :=
  A369465.P18253036522274647247.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369658.P8096457835264758582

`A011655(n)*A359430(n)`
-/

namespace A369658.P8096457835264758582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A359430 n

end

end A369658.P8096457835264758582

noncomputable section

/-- A369658: a(n) = 1 if n is not multiple of 3, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A369658.P8096457835264758582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369658 (n : ℕ) : ℤ :=
  A369658.P8096457835264758582.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369669.P5620005508573429478

`gcd(A003415(n), A068346(n))`
-/

namespace A369669.P5620005508573429478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A068346 n)

end

end A369669.P5620005508573429478

noncomputable section

/-- A369669: The greatest common divisor of the first and the second arithmetic derivative of n.

Offset 0, canonical program `A369669.P5620005508573429478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369669 (n : ℕ) : ℤ :=
  (A369669.P5620005508573429478.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369968.P13152354729471573061

`A011558(n)*A369967(n)`
-/

namespace A369968.P13152354729471573061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n * A369967 n

end

end A369968.P13152354729471573061

noncomputable section

/-- A369968: a(n) = 1 if n is not multiple of 5, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A369968.P13152354729471573061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369968 (n : ℕ) : ℤ :=
  A369968.P13152354729471573061.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370076.P14273981069909924052

`filter[A074661(n+1), A359466(#)]`
-/

namespace A370076.P14273981069909924052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A370076.P14273981069909924052

noncomputable section

/-- A370076: Numbers k such that A005361(k) is prime.

Offset 1, canonical program `A370076.P14273981069909924052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8663 terms. -/
def A370076 (n : ℕ) : ℤ :=
  A370076.P14273981069909924052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8663 terms. -/
def A370076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370122.P7977747716848007061

`A359430(A003415(n))`
-/

namespace A370122.P7977747716848007061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (A003415 n).toNat

end

end A370122.P7977747716848007061

noncomputable section

/-- A370122: a(n) = 1 if the second arithmetic derivative of n is a multiple of 3, otherwise 0.

Offset 0, canonical program `A370122.P7977747716848007061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A359430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370122 (n : ℕ) : ℤ :=
  A370122.P7977747716848007061.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A359430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373143.P15888518406424866869

`A359430(n+1)*A372573(n+1)`
-/

namespace A373143.P15888518406424866869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (n + 1) * A372573 (n + 1)

end

end A373143.P15888518406424866869

noncomputable section

/-- A373143: a(n) = 1 if both A003415(n) and A276085(n) are multiples of 3, otherwise 0, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373143.P15888518406424866869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373143 (n : ℕ) : ℤ :=
  A373143.P15888518406424866869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373374.P7659164950999126342

`A059841(A373364(n+1))`
-/

namespace A373374.P7659164950999126342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A373364 (n + 1)).toNat

end

end A373374.P7659164950999126342

noncomputable section

/-- A373374: a(n) = 1 if both A001414(n) and A003415(n) are even, otherwise 0, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373374.P7659164950999126342`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373374 (n : ℕ) : ℤ :=
  A373374.P7659164950999126342.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373481.P1918728620852161106

`C(A373364(n+1), A001414(n+1))`
-/

namespace A373481.P1918728620852161106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373364 (n + 1)).toNat (A001414 (n + 1)).toNat

end

end A373481.P1918728620852161106

noncomputable section

/-- A373481: a(n) = 1 if A003415(n) is a multiple of A001414(n), otherwise 0, where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 1, canonical program `A373481.P1918728620852161106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373481 (n : ℕ) : ℤ :=
  (A373481.P1918728620852161106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240531.P5748887671920028653

`comp[A139532(n+1)]`
-/

namespace A240531.P5748887671920028653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A240531.P5748887671920028653

noncomputable section

/-- A240531: Numbers n such that 24*n + 19 is not prime.

Offset 1, canonical program `A240531.P5748887671920028653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240531 (n : ℕ) : ℤ :=
  (A240531.P5748887671920028653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274505.P2443972878676266277

`∩[A023211(n+1), A230227(n+1)]`
-/

namespace A274505.P2443972878676266277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274505.P2443972878676266277

noncomputable section

/-- A274505: Primes p such that 3*p-10 and 3*p+10 are prime numbers.

Offset 1, canonical program `A274505.P2443972878676266277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A274505 (n : ℕ) : ℤ :=
  (A274505.P2443972878676266277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A274505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307562.P10947954791019149991

`record[gcd(A153218(n+1)+1, A153218(n+2))]`
-/

namespace A307562.P10947954791019149991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153218 (n + 1) + 1) (A153218 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307562.P10947954791019149991

noncomputable section

/-- A307562: Numbers k such that both 6*k + 1 and 6*k + 7 are prime.

Offset 1, canonical program `A307562.P10947954791019149991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A307562 (n : ℕ) : ℤ :=
  (A307562.P10947954791019149991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A307562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314826.P16073624034831469492

`abs(A008592(n)-A314165(n))`
-/

namespace A314826.P16073624034831469492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314165 n|

end

end A314826.P16073624034831469492

noncomputable section

/-- A314826: Coordination sequence Gal.6.129.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314826.P16073624034831469492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314826 (n : ℕ) : ℤ :=
  A314826.P16073624034831469492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A314826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327862.P13198743302065105987

`lt[0, A353495(n)]`
-/

namespace A327862.P13198743302065105987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327862.P13198743302065105987

noncomputable section

/-- A327862: Numbers whose arithmetic derivative is of the form 4k+2, cf. A003415.

Offset 1, canonical program `A327862.P13198743302065105987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6202 terms. -/
def A327862 (n : ℕ) : ℤ :=
  (A327862.P13198743302065105987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6202 terms. -/
def A327862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327864.P823315764509377038

`eq[0, A353493(n)]`
-/

namespace A327864.P823315764509377038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327864.P823315764509377038

noncomputable section

/-- A327864: Numbers whose arithmetic derivative is a multiple of 4, cf. A003415.

Offset 1, canonical program `A327864.P823315764509377038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327864 (n : ℕ) : ℤ :=
  (A327864.P823315764509377038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327865.P18409360037918019854

`eq[1, A369967(n)]`
-/

namespace A327865.P18409360037918019854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327865.P18409360037918019854

noncomputable section

/-- A327865: Numbers whose arithmetic derivative is a multiple of 5, cf. A003415.

Offset 1, canonical program `A327865.P18409360037918019854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9433 terms. -/
def A327865 (n : ℕ) : ℤ :=
  (A327865.P18409360037918019854.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9433 terms. -/
def A327865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172283.P15307696702803467898

`A007318(n)+10*A008482(n)`
-/

namespace A172283.P15307696702803467898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 10 * A008482 n

end

end A172283.P15307696702803467898

noncomputable section

/-- A172283: (-9,11) Pascal triangle.

Offset 0, canonical program `A172283.P15307696702803467898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172283 (n : ℕ) : ℤ :=
  A172283.P15307696702803467898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178649.P7773768711783204358

`A007955(n+1)/A078599(n+1)`
-/

namespace A178649.P7773768711783204358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A078599 (n + 1) : ℚ)

end

end A178649.P7773768711783204358

noncomputable section

/-- A178649: a(n) = product of nonsquarefree divisors of n.

Offset 1, canonical program `A178649.P7773768711783204358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A078599, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178649.P7773768711783204358.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A078599, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178881.P4875171311697033481

`∑[A006579(n+1)]`
-/

namespace A178881.P4875171311697033481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178881.P4875171311697033481

noncomputable section

/-- A178881: Sum of all pairs of greatest common divisors for (i,j) where 1 <= i < j <= n.

Offset 1, canonical program `A178881.P4875171311697033481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178881 (n : ℕ) : ℤ :=
  A178881.P4875171311697033481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181117.P3556212015790333691

`lcm(A046644(A010766(n+1)), A114002(n))`
-/

namespace A181117.P3556212015790333691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046644 (A010766 (n + 1)).toNat) (A114002 n)

end

end A181117.P3556212015790333691

noncomputable section

/-- A181117: Triangle T(n,k) read by rows. T(n,k) = A046644(A126988).

Offset 1, canonical program `A181117.P3556212015790333691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181117 (n : ℕ) : ℤ :=
  (A181117.P3556212015790333691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188094.P8623262597786737526

`A188080(n+6)-6`
-/

namespace A188094.P8623262597786737526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 6) - 6

end

end A188094.P8623262597786737526

noncomputable section

/-- A188094: Positions of 0 in A188093; complement of A188095.

Offset 1, canonical program `A188094.P8623262597786737526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A188094 (n : ℕ) : ℤ :=
  A188094.P8623262597786737526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A188094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189072.P1599767684985074234

`A007504(A213650(n+1))`
-/

namespace A189072.P1599767684985074234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A213650 (n + 1)).toNat

end

end A189072.P1599767684985074234

noncomputable section

/-- A189072: Semiprimes in A007504 (the sum of first n primes).

Offset 1, canonical program `A189072.P1599767684985074234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189072 (n : ℕ) : ℤ :=
  A189072.P1599767684985074234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189411.P5776160085060154664

`∩[A002144(n+1), A086983(n+1)]`
-/

namespace A189411.P5776160085060154664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189411.P5776160085060154664

noncomputable section

/-- A189411: Odd primes p such that sigma(p)/2 is a power of an odd prime.

Offset 1, canonical program `A189411.P5776160085060154664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1308 terms. -/
def A189411 (n : ℕ) : ℤ :=
  (A189411.P5776160085060154664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1308 terms. -/
def A189411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189892.P11745447332243219839

`A033286(n+1)-A007504(n)`
-/

namespace A189892.P11745447332243219839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A007504 n

end

end A189892.P11745447332243219839

noncomputable section

/-- A189892: a(n) = n*prime(n) - sum_{i=1..n-1} prime(i).

Offset 1, canonical program `A189892.P11745447332243219839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189892 (n : ℕ) : ℤ :=
  A189892.P11745447332243219839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A189892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190815.P914547741741299528

`A049690(n)+A002088(2*n)`
-/

namespace A190815.P914547741741299528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n + A002088 (2 * n)

end

end A190815.P914547741741299528

noncomputable section

/-- A190815: A bisection of A049690.

Offset 1, canonical program `A190815.P914547741741299528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190815 (n : ℕ) : ℤ :=
  A190815.P914547741741299528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203568.P16517688267231901796

`A062157(n)*A199918(n)`
-/

namespace A203568.P16517688267231901796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A199918 n

end

end A203568.P16517688267231901796

noncomputable section

/-- A203568: a(n) = A026837(n) - A026838(n).

Offset 0, canonical program `A203568.P16517688267231901796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203568 (n : ℕ) : ℤ :=
  A203568.P16517688267231901796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215992.P12067662932436388896

`p?[A007504(n+51)-A007504(n)]`
-/

namespace A215992.P12067662932436388896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 51) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215992.P12067662932436388896

noncomputable section

/-- A215992: Primes that are the sum of 51 consecutive primes.

Offset 1, canonical program `A215992.P12067662932436388896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A215992 (n : ℕ) : ℤ :=
  A215992.P12067662932436388896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A215992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220694.P2534427273062471700

`A220663(n+1)+1`
-/

namespace A220694.P2534427273062471700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220663 (n + 1) + 1

end

end A220694.P2534427273062471700

noncomputable section

/-- A220694: Irregular table: row n (n>=1) consists of numbers 1..A084556(n).

Offset 1, canonical program `A220694.P2534427273062471700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220663, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220694 (n : ℕ) : ℤ :=
  A220694.P2534427273062471700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A220663, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226318.P4776847927226884081

`A105409(n+1)-1`
-/

namespace A226318.P4776847927226884081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105409 (n + 1) - 1

end

end A226318.P4776847927226884081

noncomputable section

/-- A226318: Positive integers n with p_{n+1}-p_n = 2 and p_{n+3}-p_{n+2} = 2, where p_k denotes the k-th prime.

Offset 1, canonical program `A226318.P4776847927226884081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226318 (n : ℕ) : ℤ :=
  A226318.P4776847927226884081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236464.P18246363835184401011

`∩[A096478(n+1), A257762(n+1)]`
-/

namespace A236464.P18246363835184401011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236464.P18246363835184401011

noncomputable section

/-- A236464: Primes p with prime(p) + 2 and prime(p) + 6 both prime.

Offset 1, canonical program `A236464.P18246363835184401011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A236464 (n : ℕ) : ℤ :=
  (A236464.P18246363835184401011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A236464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236467.P1754304649487640801

`p?[p?[A107770(n+1)+2]-2]`
-/

namespace A236467.P1754304649487640801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236467.P1754304649487640801

noncomputable section

/-- A236467: Primes p with p + 2 and prime(p) - 2 both prime.

Offset 1, canonical program `A236467.P1754304649487640801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A236467 (n : ℕ) : ℤ :=
  A236467.P1754304649487640801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A236467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245212.P13496061215896948389

`A038040(n+1)-A245211(n+1)`
-/

namespace A245212.P13496061215896948389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A245211 (n + 1)

end

end A245212.P13496061215896948389

noncomputable section

/-- A245212: a(n) = n * tau(n) - Sum_{(d

Offset 1, canonical program `A245212.P13496061215896948389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A245211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245212 (n : ℕ) : ℤ :=
  A245212.P13496061215896948389.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A245211, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245585.P6108915240535495460

`eq[0, A245575(n)]`
-/

namespace A245585.P6108915240535495460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245585.P6108915240535495460

noncomputable section

/-- A245585: Numbers that cannot be written as sum of two quarter-squares, cf. A002620.

Offset 1, canonical program `A245585.P6108915240535495460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A245585 (n : ℕ) : ℤ :=
  (A245585.P6108915240535495460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A245585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246763.P9034617049166049105

`A246714(n+1)²%Δ[A007504(n)]`
-/

namespace A246763.P9034617049166049105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246714 (n + 1) ^ 2) (f1 (n + 1) - f1 n)

end

end A246763.P9034617049166049105

noncomputable section

/-- A246763: Catalan(n)^2 mod prime(n).

Offset 1, canonical program `A246763.P9034617049166049105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246763 (n : ℕ) : ℤ :=
  A246763.P9034617049166049105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249679.P425418324060059187

`A007504(eq[0, A007504(n)%3])`
-/

namespace A249679.P425418324060059187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249679.P425418324060059187

noncomputable section

/-- A249679: Terms of A007504 divisible by 3.

Offset 1, canonical program `A249679.P425418324060059187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249679 (n : ℕ) : ℤ :=
  A249679.P425418324060059187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250473.P5998027225366399157

`A066883(n+1)+A008864(n+1)`
-/

namespace A250473.P5998027225366399157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + A008864 (n + 1)

end

end A250473.P5998027225366399157

noncomputable section

/-- A250473: Length of the maximal prefix of noncomposite numbers on row n of A249821.

Offset 1, canonical program `A250473.P5998027225366399157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4743 terms. -/
def A250473 (n : ℕ) : ℤ :=
  A250473.P5998027225366399157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4743 terms. -/
def A250473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255541.P16486879820483679436

`A005728(2^n-1)`
-/

namespace A255541.P16486879820483679436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (2 ^ n - 1)

end

end A255541.P16486879820483679436

noncomputable section

/-- A255541: a(n) = 1+Sum_{k=1..2^n-1} A000010(k).

Offset 0, canonical program `A255541.P16486879820483679436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005728, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255541 (n : ℕ) : ℤ :=
  A255541.P16486879820483679436.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005728, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255541.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262392.P17406529640943534344

`A007504(n)+A010693(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262392.P17406529640943534344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + A010693 n

end

end A262392.P17406529640943534344

noncomputable section

/-- A262392: a(n) = A007504(n) + A010693(n).

Offset 0, canonical program `A262392.P17406529640943534344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262392 (n : ℕ) : ℤ :=
  A262392.P17406529640943534344.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265575.P11957760273569767814

`ratio[A051547(A028310(n))]`
-/

namespace A265575.P11957760273569767814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265575.P11957760273569767814

noncomputable section

/-- A265575: LCM-transform of Euler totient numbers (A000010).

Offset 1, canonical program `A265575.P11957760273569767814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A265575 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265575.P11957760273569767814.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A265575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268605.P2485238640013637007

`A051885(A007504(n))`
-/

namespace A268605.P2485238640013637007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A007504 n).toNat

end

end A268605.P2485238640013637007

noncomputable section

/-- A268605: a(1) = 0; a(n+1) is the smallest integer in which the difference between its digits sum and the a(n) digits sum is equal to the n-th prime.

Offset 1, canonical program `A268605.P2485238640013637007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268605 (n : ℕ) : ℤ :=
  A268605.P2485238640013637007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274921.P6886949141205773937

`A274920(n)+1`
-/

namespace A274921.P6886949141205773937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274920 n + 1

end

end A274921.P6886949141205773937

noncomputable section

/-- A274921: Spiral constructed on the nodes of the triangular net in which each new term is the least positive integer distinct from its neighbors.

Offset 0, canonical program `A274921.P6886949141205773937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274921 (n : ℕ) : ℤ :=
  A274921.P6886949141205773937.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276824.P13888465290659419549

`A181962(n+1)-A060939(n+1)`
-/

namespace A276824.P13888465290659419549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181962 (n + 1) - A060939 (n + 1)

end

end A276824.P13888465290659419549

noncomputable section

/-- A276824: a(n) = p-s, where s = Sum_{i=1..n} prime(i) and p = primepi(prime(n)^2).

Offset 1, canonical program `A276824.P13888465290659419549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A276824 (n : ℕ) : ℤ :=
  A276824.P13888465290659419549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A276824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278509.P8841734432031037313

`3^A065339(n+1)`
-/

namespace A278509.P8841734432031037313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A065339 (n + 1) : ℤ)

end

end A278509.P8841734432031037313

noncomputable section

/-- A278509: a(n) = 3^{number of primes congruent to 3 modulo 4 dividing n (with multiplicity)}.

Offset 1, canonical program `A278509.P8841734432031037313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278509 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A278509.P8841734432031037313.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283556.P4279643971322405347

`A010888(A007504(n))`
-/

namespace A283556.P4279643971322405347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A007504 n).toNat

end

end A283556.P4279643971322405347

noncomputable section

/-- A283556: Digital root of the sum of the first n primes.

Offset 0, canonical program `A283556.P4279643971322405347`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283556 (n : ℕ) : ℤ :=
  A283556.P4279643971322405347.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283843.P15067060620591103805

`A063776(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283843.P15067060620591103805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (n + 1) + 1

end

end A283843.P15067060620591103805

noncomputable section

/-- A283843: a(n) = A063776(n) + 1.

Offset 1, canonical program `A283843.P15067060620591103805`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283843 (n : ℕ) : ℤ :=
  A283843.P15067060620591103805.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285786.P15997609782870965771

`A028310(A285269(n))`
-/

namespace A285786.P15997609782870965771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A285269 n).toNat

end

end A285786.P15997609782870965771

noncomputable section

/-- A285786: Number of primes p with 2(n-1)^2 < p <= 2n^2.

Offset 1, canonical program `A285786.P15997609782870965771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285786 (n : ℕ) : ℤ :=
  A285786.P15997609782870965771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286468.P8368266959325649577

`A243353(and(A092323(n+1), A258746(n+1)))`
-/

namespace A286468.P8368266959325649577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (Int.land (A092323 (n + 1)) (A258746 (n + 1))).toNat

end

end A286468.P8368266959325649577

noncomputable section

/-- A286468: Run lengths in the binary expansion of n are one more than the exponents of corresponding primes in the prime factorization of a(n).

Offset 1, canonical program `A286468.P8368266959325649577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286468 (n : ℕ) : ℤ :=
  A286468.P8368266959325649577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293516.P9034369558879961417

`A070556(n+1)-A010554(n+1)`
-/

namespace A293516.P9034369558879961417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1) - A010554 (n + 1)

end

end A293516.P9034369558879961417

noncomputable section

/-- A293516: a(n) = phi(n) - 2*phi(phi(n)), where phi = Euler totient function, A000010.

Offset 1, canonical program `A293516.P9034369558879961417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010554, A070556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293516 (n : ℕ) : ℤ :=
  A293516.P9034369558879961417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010554, A070556, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294612.P4833185872788990948

`A007504(n+1)/A024450(n+1)*A296199(n+1)`
-/

namespace A294612.P4833185872788990948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A024450 (n + 1) : ℚ) * (A296199 (n + 1) : ℚ)

end

end A294612.P4833185872788990948

noncomputable section

/-- A294612: Denominator of the contraharmonic mean of the first n primes.

Offset 1, canonical program `A294612.P4833185872788990948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294612.P4833185872788990948.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297167.P13113550866660970867

`A252464(n+1)-A001221(n+1)`
-/

namespace A297167.P13113550866660970867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A001221 (n + 1)

end

end A297167.P13113550866660970867

noncomputable section

/-- A297167: a(1) = 0, for n > 1, a(n) = -1 + the excess of n (A046660) + the index of the largest prime factor (A061395).

Offset 1, canonical program `A297167.P13113550866660970867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A252464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297167 (n : ℕ) : ℤ :=
  A297167.P13113550866660970867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A252464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A297167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301273.P17395654707237324989

`lcm(n+1, A007504(n+1))/(n+1)`
-/

namespace A301273.P17395654707237324989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A007504 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A301273.P17395654707237324989

noncomputable section

/-- A301273: Numerator of mean of first n primes.

Offset 1, canonical program `A301273.P17395654707237324989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301273 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A301273.P17395654707237324989.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308993.P18444456858046890751

`A066990(A057521(n+1)*A071974(n+1))`
-/

namespace A308993.P18444456858046890751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A057521 (n + 1) * A071974 (n + 1)).toNat

end

end A308993.P18444456858046890751

noncomputable section

/-- A308993: Multiplicative with a(p) = 1 and a(p^e) = p^a(e) for any e > 1 and prime number p.

Offset 1, canonical program `A308993.P18444456858046890751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A308993 (n : ℕ) : ℤ :=
  A308993.P18444456858046890751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A308993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318649.P1514299675571665744

`A318512(n+1)/A299150(n+1)*A318681(n+1)`
-/

namespace A318649.P1514299675571665744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318512 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ) * (A318681 (n + 1) : ℚ)

end

end A318649.P1514299675571665744

noncomputable section

/-- A318649: Numerators of the sequence whose Dirichlet convolution with itself yields squares, A000290.

Offset 1, canonical program `A318649.P1514299675571665744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318649.P1514299675571665744.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322420.P4592221206710886228

`A007504(A002378(n))`
-/

namespace A322420.P4592221206710886228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A002378 n).toNat

end

end A322420.P4592221206710886228

noncomputable section

/-- A322420: Sum of the first n*(n+1) primes.

Offset 0, canonical program `A322420.P4592221206710886228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322420 (n : ℕ) : ℤ :=
  A322420.P4592221206710886228.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324899.P2367865667595697050

`lt[1, A353493(2*n)]²`
-/

namespace A324899.P2367865667595697050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A324899.P2367865667595697050

noncomputable section

/-- A324899: Odd numbers k for which sigma(k) == 3 (mod 4).

Offset 1, canonical program `A324899.P2367865667595697050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. -/
def A324899 (n : ℕ) : ℤ :=
  (A324899.P2367865667595697050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8133 terms. -/
def A324899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325499.P806690597136758802

`Δ[lt[0, A182582(n+1)]]`
-/

namespace A325499.P806690597136758802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A325499.P806690597136758802

noncomputable section

/-- A325499: Difference sequence of A325424.

Offset 1, canonical program `A325499.P806690597136758802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A325499 (n : ℕ) : ℤ :=
  A325499.P806690597136758802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A325499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325539.P1534976636247493424

`eq[A065333(n+1), A182582(n+1)]`
-/

namespace A325539.P1534976636247493424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A325539.P1534976636247493424

noncomputable section

/-- A325539: a(n) is the least number not 2*a(m)+1 or 3*a(m)+2 for any m < n.

Offset 1, canonical program `A325539.P1534976636247493424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5834 terms. -/
def A325539 (n : ℕ) : ℤ :=
  (A325539.P1534976636247493424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5834 terms. -/
def A325539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326039.P9256592062457246146

`A326038(n+1)²`
-/

namespace A326039.P9256592062457246146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (n + 1) ^ 2

end

end A326039.P9256592062457246146

noncomputable section

/-- A326039: Largest square dividing the sum of divisors of n: a(n) = A008833(sigma(n)).

Offset 1, canonical program `A326039.P9256592062457246146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326039 (n : ℕ) : ℤ :=
  A326039.P9256592062457246146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331748.P6062302688156964046

`xor(A002487(n), A323901(n))`
-/

namespace A331748.P6062302688156964046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 n) (A323901 n)

end

end A331748.P6062302688156964046

noncomputable section

/-- A331748: a(n) = A002487(n) XOR A002487(A163511(n)).

Offset 0, canonical program `A331748.P6062302688156964046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331748 (n : ℕ) : ℤ :=
  A331748.P6062302688156964046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336466.P11681216591748470505

`A000265(n+1-A322582(n+1))`
-/

namespace A336466.P11681216591748470505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1 : ℤ) - A322582 (n + 1)).toNat

end

end A336466.P11681216591748470505

noncomputable section

/-- A336466: Fully multiplicative with a(p) = A000265(p-1) for any prime p, where A000265(k) gives the odd part of k.

Offset 1, canonical program `A336466.P11681216591748470505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336466 (n : ℕ) : ℤ :=
  A336466.P11681216591748470505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336467.P3194784148447643994

`A000265(A003960(n+1))`
-/

namespace A336467.P3194784148447643994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003960 (n + 1)).toNat

end

end A336467.P3194784148447643994

noncomputable section

/-- A336467: Fully multiplicative with a(2) = 1 and a(p) = A000265(p+1) for odd primes p, with A000265(k) giving the odd part of k.

Offset 1, canonical program `A336467.P3194784148447643994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336467 (n : ℕ) : ℤ :=
  A336467.P3194784148447643994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336651.P16001873672567347965

`A000265(n+1)/A204455(n+1)`
-/

namespace A336651.P16001873672567347965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A204455 (n + 1) : ℚ)

end

end A336651.P16001873672567347965

noncomputable section

/-- A336651: Odd part of n divided by its largest squarefree divisor.

Offset 1, canonical program `A336651.P16001873672567347965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A204455, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336651.P16001873672567347965.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A204455, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342001.P18261512935679556243

`∑[A258057(n)]/A003557(n+1)`
-/

namespace A342001.P18261512935679556243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A342001.P18261512935679556243

noncomputable section

/-- A342001: Arithmetic derivative without its inherited divisor; the arithmetic derivative of n divided by A003557(n), which is a common divisor of both n and A003415(n).

Offset 1, canonical program `A342001.P18261512935679556243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342001.P18261512935679556243.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342458.P9558356536123007435

`gcd(∑[A258057(n)], A001615(n+1))`
-/

namespace A342458.P9558356536123007435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A001615 (n + 1))

end

end A342458.P9558356536123007435

noncomputable section

/-- A342458: a(n) = gcd(A001615(n), A003415(n)), where A001615 is Dedekind psi, and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A342458.P9558356536123007435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342458 (n : ℕ) : ℤ :=
  (A342458.P9558356536123007435.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343226.P9521065917047062783

`gcd(A000203(n+1), A129283(n+1))`
-/

namespace A343226.P9521065917047062783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A129283 (n + 1))

end

end A343226.P9521065917047062783

noncomputable section

/-- A343226: a(n) = gcd(sigma(n), n+A003415(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343226.P9521065917047062783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343226 (n : ℕ) : ℤ :=
  (A343226.P9521065917047062783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344178.P18293869272705120647

`A168036(n+1)+Δ[A002088(n)]`
-/

namespace A344178.P18293869272705120647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + (f1 (n + 1) - f1 n)

end

end A344178.P18293869272705120647

noncomputable section

/-- A344178: Difference between the arithmetic derivative of n and the cototient of n: a(n) = A003415(n) - A051953(n).

Offset 1, canonical program `A344178.P18293869272705120647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344178 (n : ℕ) : ℤ :=
  A344178.P18293869272705120647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344411.P13447493578011651501

`A007504(A000720(3*(n+1)))-A007504(A000720(2*(n+1)))`
-/

namespace A344411.P13447493578011651501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (3 * (n + 1))).toNat - A007504 (A000720 (2 * (n + 1))).toNat

end

end A344411.P13447493578011651501

noncomputable section

/-- A344411: Sum of the prime numbers in the interval (2n, 3n].

Offset 1, canonical program `A344411.P13447493578011651501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344411 (n : ℕ) : ℤ :=
  A344411.P13447493578011651501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345001.P16189550992337639211

`A168036(n+1)+∑{d}[n+1, #]-(n+1)`
-/

namespace A345001.P16189550992337639211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A345001.P16189550992337639211

noncomputable section

/-- A345001: a(n) = sigma(n) + n' - 2n, where n' is the arithmetic derivative of n (A003415) and sigma is the sum of divisors (A000203).

Offset 1, canonical program `A345001.P16189550992337639211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345001 (n : ℕ) : ℤ :=
  A345001.P16189550992337639211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345375.P6058782107004537506

`A056169(n+1)-A345374(n+1)`
-/

namespace A345375.P6058782107004537506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) - A345374 (n + 1)

end

end A345375.P6058782107004537506

noncomputable section

/-- A345375: Number of unitary prime divisors of n whose prime index is even.

Offset 1, canonical program `A345375.P6058782107004537506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A345374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345375 (n : ℕ) : ℤ :=
  A345375.P6058782107004537506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A345374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348036.P9346987634214526733

`gcd(n+1, A003968(n+1))`
-/

namespace A348036.P9346987634214526733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003968 (n + 1))

end

end A348036.P9346987634214526733

noncomputable section

/-- A348036: a(n) = gcd(n, A003968(n)), where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348036.P9346987634214526733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348036 (n : ℕ) : ℤ :=
  (A348036.P9346987634214526733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348492.P6970999960568855925

`gcd(∑[A258057(n)], A018804(n+1))`
-/

namespace A348492.P6970999960568855925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A018804 (n + 1))

end

end A348492.P6970999960568855925

noncomputable section

/-- A348492: Greatest common divisor of the arithmetic derivative (A003415) and Pillai's arithmetical function (A018804).

Offset 1, canonical program `A348492.P6970999960568855925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348492 (n : ℕ) : ℤ :=
  (A348492.P6970999960568855925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348495.P4852488823322459190

`gcd(A018804(n+1), A347130(n+1))`
-/

namespace A348495.P4852488823322459190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018804 (n + 1)) (A347130 (n + 1))

end

end A348495.P4852488823322459190

noncomputable section

/-- A348495: a(n) = gcd(A018804(n), A347130(n)), where A347130 is the Dirichlet convolution of the identity function with the arithmetic derivative of n (A003415), and A018804 is Pillai's arithmetical function.

Offset 1, canonical program `A348495.P4852488823322459190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348495 (n : ℕ) : ℤ :=
  (A348495.P4852488823322459190.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349191.P3807840381629456878

`A000720(A348907(n+2))`
-/

namespace A349191.P3807840381629456878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A348907 (n + 2)).toNat

end

end A349191.P3807840381629456878

noncomputable section

/-- A349191: a(n) = A000720(A348907(n+1)).

Offset 1, canonical program `A349191.P3807840381629456878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349191 (n : ℕ) : ℤ :=
  A349191.P3807840381629456878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351569.P8738686612960089184

`A000203(n+1)/A351568(n+1)`
-/

namespace A351569.P8738686612960089184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351568 (n + 1) : ℚ)

end

end A351569.P8738686612960089184

noncomputable section

/-- A351569: Sum of divisors of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A351569.P8738686612960089184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351569 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351569.P8738686612960089184.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351570.P16087539898957203616

`A003415(A351568(n+1))`
-/

namespace A351570.P16087539898957203616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A351568 (n + 1)).toNat

end

end A351570.P16087539898957203616

noncomputable section

/-- A351570: Arithmetic derivative of the sum of the divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A351570.P16087539898957203616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A351568, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351570 (n : ℕ) : ℤ :=
  A351570.P16087539898957203616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A351568, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353282.P8980063459041514022

`A032741(A087050(n+1))`
-/

namespace A353282.P8980063459041514022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A087050 (n + 1)).toNat

end

end A353282.P8980063459041514022

noncomputable section

/-- A353282: a(n) is the number of solutions (x,y) to the Diophantine equation S(x,y) = (x+y) + (x-y) + (x*y) + (x/y) = A013929(n) when x >= y > 1 and y | x.

Offset 1, canonical program `A353282.P8980063459041514022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353282 (n : ℕ) : ℤ :=
  A353282.P8980063459041514022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355711.P17709382275087969844

`∩[A355710(n+1)-1, A355710(n+1)]`
-/

namespace A355711.P17709382275087969844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355710 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355711.P17709382275087969844

noncomputable section

/-- A355711: Starts of runs of 3 consecutive numbers with the same number of 5-smooth divisors.

Offset 1, canonical program `A355711.P17709382275087969844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1618 terms. -/
def A355711 (n : ℕ) : ℤ :=
  (A355711.P17709382275087969844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1618 terms. -/
def A355711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358771.P5761548446586358589

`C(A129283(n)+2-n, 3)%2`
-/

namespace A358771.P5761548446586358589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129283 n + (2 - (n : ℤ))).toNat 3 % 2

end

end A358771.P5761548446586358589

noncomputable section

/-- A358771: a(n) = 1 if the arithmetic derivative of n is of the form 4k+1, otherwise 0.

Offset 0, canonical program `A358771.P5761548446586358589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358771 (n : ℕ) : ℤ :=
  (A358771.P5761548446586358589.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359158.P14804396004552753222

`A353627(n+1)-A359156(n+1)`
-/

namespace A359158.P14804396004552753222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) - A359156 (n + 1)

end

end A359158.P14804396004552753222

noncomputable section

/-- A359158: a(n) = 1 if the odd part of n is squarefree and the number of prime factors of n (with multiplicity) is odd, otherwise 0.

Offset 1, canonical program `A359158.P14804396004552753222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353627, A359156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359158 (n : ℕ) : ℤ :=
  A359158.P14804396004552753222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353627, A359156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359158.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360164.P14192724432491003551

`A360162(A000265(n+1))`
-/

namespace A360164.P14192724432491003551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (A000265 (n + 1)).toNat

end

end A360164.P14192724432491003551

noncomputable section

/-- A360164: a(n) is the sum of the square roots of the unitary divisors of n that are odd squares.

Offset 1, canonical program `A360164.P14192724432491003551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360164 (n : ℕ) : ℤ :=
  A360164.P14192724432491003551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360165.P9817317706186478787

`A328258(A071974(n+1))`
-/

namespace A360165.P9817317706186478787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (A071974 (n + 1)).toNat

end

end A360165.P9817317706186478787

noncomputable section

/-- A360165: a(n) is the sum of the square roots of the unitary divisors of n that are odd squares minus the sum of the square roots of the unitary divisors of n that are even squares.

Offset 1, canonical program `A360165.P9817317706186478787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360165 (n : ℕ) : ℤ :=
  A360165.P9817317706186478787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364287.P1164900162732185155

`lt[A364258(n), 0]`
-/

namespace A364287.P1164900162732185155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364287.P1164900162732185155

noncomputable section

/-- A364287: Numbers k such that A163511(k) < k.

Offset 1, canonical program `A364287.P1164900162732185155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A364287 (n : ℕ) : ℤ :=
  (A364287.P1164900162732185155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. -/
def A364287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364491.P14827580004623166337

`n/A364255(n)`
-/

namespace A364491.P14827580004623166337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A364255 n : ℚ)

end

end A364491.P14827580004623166337

noncomputable section

/-- A364491: a(n) = n / gcd(n, A163511(n)).

Offset 0, canonical program `A364491.P14827580004623166337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364491.P14827580004623166337.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364492.P17999923725189708202

`A163511(n)/A364255(n)`
-/

namespace A364492.P17999923725189708202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 n : ℚ) / (A364255 n : ℚ)

end

end A364492.P17999923725189708202

noncomputable section

/-- A364492: a(n) = A163511(n) / gcd(n, A163511(n)).

Offset 0, canonical program `A364492.P17999923725189708202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364492 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364492.P17999923725189708202.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364492.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364499.P4691879138351317647

`A243353(A006068(n))-(n+1)`
-/

namespace A364499.P4691879138351317647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A006068 n).toNat - (n + 1 : ℤ)

end

end A364499.P4691879138351317647

noncomputable section

/-- A364499: a(n) = A005940(n) - n.

Offset 1, canonical program `A364499.P4691879138351317647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A364499 (n : ℕ) : ℤ :=
  A364499.P4691879138351317647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A364499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365808.P18059643760552441775

`eq[1, A365807(n)]`
-/

namespace A365808.P18059643760552441775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365808.P18059643760552441775

noncomputable section

/-- A365808: Numbers k such that A163511(k) is a square.

Offset 1, canonical program `A365808.P18059643760552441775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1597 terms. -/
def A365808 (n : ℕ) : ℤ :=
  (A365808.P18059643760552441775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1597 terms. -/
def A365808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366282.P5690967040154622966

`A366275(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366282.P5690967040154622966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 n - (n : ℤ)

end

end A366282.P5690967040154622966

noncomputable section

/-- A366282: a(n) = A366275(n) - n, where A366275 is the Cat's tongue permutation.

Offset 0, canonical program `A366282.P5690967040154622966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366282 (n : ℕ) : ℤ :=
  A366282.P5690967040154622966.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366283.P2349920202320002134

`gcd(n, A366275(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366283.P2349920202320002134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A366275 n)

end

end A366283.P2349920202320002134

noncomputable section

/-- A366283: a(n) = gcd(n, A366275(n)), where A366275 is the Cat's tongue permutation.

Offset 0, canonical program `A366283.P2349920202320002134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366283 (n : ℕ) : ℤ :=
  (A366283.P2349920202320002134.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367014.P6510119788565707123

`A329119(n+1)+A060615(n)+1`
-/

namespace A367014.P6510119788565707123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329119 (n + 1) + (A060615 n + 1)

end

end A367014.P6510119788565707123

noncomputable section

/-- A367014: Let q be the n-th prime power (A246655), then a(n) = q^3 + q^2 - q; number of solutions to x*y = z*w in the finite field F_q.

Offset 1, canonical program `A367014.P6510119788565707123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367014 (n : ℕ) : ℤ :=
  A367014.P6510119788565707123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369053.P8230427624888693535

`A014963(A243353(n))`
-/

namespace A369053.P8230427624888693535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A243353 n).toNat

end

end A369053.P8230427624888693535

noncomputable section

/-- A369053: Exponential of Mangoldt function permuted by A243353.

Offset 0, canonical program `A369053.P8230427624888693535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A243353, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369053 (n : ℕ) : ℤ :=
  A369053.P8230427624888693535.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A243353, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374469.P9574300939196503578

`A000265(A364255(n))`
-/

namespace A374469.P9574300939196503578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A364255 n).toNat

end

end A374469.P9574300939196503578

noncomputable section

/-- A374469: The odd part of gcd(n, A163511(n)).

Offset 0, canonical program `A374469.P9574300939196503578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374469 (n : ℕ) : ℤ :=
  A374469.P9574300939196503578.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A364255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374469.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375766.P13293560451162268866

`A051903(A115063(n+1))`
-/

namespace A375766.P13293560451162268866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A115063 (n + 1)).toNat

end

end A375766.P13293560451162268866

noncomputable section

/-- A375766: The maximum exponent in the prime factorization of the numbers whose exponents in their prime factorization are all Fibonacci numbers.

Offset 1, canonical program `A375766.P13293560451162268866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375766 (n : ℕ) : ℤ :=
  A375766.P13293560451162268866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378879.P5399312631734305256

`A007814(n+1)+A065339(n+1)`
-/

namespace A378879.P5399312631734305256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A065339 (n + 1)

end

end A378879.P5399312631734305256

noncomputable section

/-- A378879: a(n) = number of non-Pythagorean primes in the prime factorization of n (including multiplicities).

Offset 1, canonical program `A378879.P5399312631734305256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378879 (n : ℕ) : ℤ :=
  A378879.P5399312631734305256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390613.P13768311840881029602

`∩[A034961(n+1), A166039(n+1)]`
-/

namespace A390613.P13768311840881029602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390613.P13768311840881029602

noncomputable section

/-- A390613: Numbers that are the sum of three consecutive primes and also the sum of three consecutive composites.

Offset 1, canonical program `A390613.P13768311840881029602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A390613 (n : ℕ) : ℤ :=
  (A390613.P13768311840881029602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A390613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392087.P10833605214903048698

`A365481(n+1)*A392085(n+1)`
-/

namespace A392087.P10833605214903048698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365481 (n + 1) * A392085 (n + 1)

end

end A392087.P10833605214903048698

noncomputable section

/-- A392087: The unitary totient of the smallest square divisible by n.

Offset 1, canonical program `A392087.P10833605214903048698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392087 (n : ℕ) : ℤ :=
  A392087.P10833605214903048698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397429.P9837664119609473260

`∩[A080790(n+1), A161601(n+1)]`
-/

namespace A397429.P9837664119609473260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397429.P9837664119609473260

noncomputable section

/-- A397429: Primes in A161601 whose binary reversal is prime.

Offset 1, canonical program `A397429.P9837664119609473260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A397429 (n : ℕ) : ℤ :=
  (A397429.P9837664119609473260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 759 terms. -/
def A397429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173270.P9959685970867206750

`∑[A001037(n)]`
-/

namespace A173270.P9959685970867206750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173270.P9959685970867206750

noncomputable section

/-- A173270: Partial sums of A001037, the number of degree-n irreducible polynomials over GF(2).

Offset 0, canonical program `A173270.P9959685970867206750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A173270 (n : ℕ) : ℤ :=
  A173270.P9959685970867206750.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A173270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178752.P10634294460120603498

`∑{d}[n+1, (n+1)/#*A001037(#)]`
-/

namespace A178752.P10634294460120603498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A001037 d : ℚ)

end

end A178752.P10634294460120603498

noncomputable section

/-- A178752: a(n) gives the number of conjugacy classes in the permutation group generated by transposition (1 2) and double n-cycle (1 3 5 7 ... 2n-1)(2 4 6 8 ... 2n). This group is a semidirect product formed by a cyclic group acting on an elementary abelian 2-group of rank n by cyclically permuting the factors.

Offset 1, canonical program `A178752.P10634294460120603498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A178752 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178752.P10634294460120603498.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A178752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179644.P11803984710528431685

`∩[A030638(n+1), A082294(n+1)]`
-/

namespace A179644.P11803984710528431685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P11803984710528431685

noncomputable section

/-- A179644: Product of the 4th power of a prime and 2 different distinct primes (p^4*q*r).

Offset 1, canonical program `A179644.P11803984710528431685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3259 terms. -/
def A179644 (n : ℕ) : ℤ :=
  (A179644.P11803984710528431685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3259 terms. -/
def A179644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188077.P8196535750238244012

`∩[A188080(n+1)-1, A188080(n+1)]`
-/

namespace A188077.P8196535750238244012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188077.P8196535750238244012

noncomputable section

/-- A188077: Positions of 0 in A188076; complement of A188078.

Offset 1, canonical program `A188077.P8196535750238244012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A188077 (n : ℕ) : ℤ :=
  (A188077.P8196535750238244012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A188077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190902.P5214767407288776691

`A069158(n+1)*A061537(n+1)`
-/

namespace A190902.P5214767407288776691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1) * A061537 (n + 1)

end

end A190902.P5214767407288776691

noncomputable section

/-- A190902: a(n) = Product_{d|n} d*mu(n/d).

Offset 1, canonical program `A190902.P5214767407288776691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, A069158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190902 (n : ℕ) : ℤ :=
  A190902.P5214767407288776691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061537, A069158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A190902.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A200747.P15284769991947233914

`a(A034968(n+1)-1)+1` with `a(0)=0`
-/

namespace A200747.P15284769991947233914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A034968 (n + 1) - 1).toNat + 1

end

end A200747.P15284769991947233914

noncomputable section

/-- A200747: Number of iterations of A034968 required to reach 1.

Offset 1, canonical program `A200747.P15284769991947233914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200747 (n : ℕ) : ℤ :=
  (A200747.P15284769991947233914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206778.P8563083119957903362

`filter[A162306(n+1), A008966(#)]`
-/

namespace A206778.P8563083119957903362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A206778.P8563083119957903362

noncomputable section

/-- A206778: Irregular triangle in which n-th row lists squarefree divisors (A005117) of n.

Offset 1, canonical program `A206778.P8563083119957903362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A206778 (n : ℕ) : ℤ :=
  A206778.P8563083119957903362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. -/
def A206778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211339.P2984226944041453084

`∑[A110654(A063725(n+1))]`
-/

namespace A211339.P2984226944041453084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A063725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211339.P2984226944041453084

noncomputable section

/-- A211339: Number of integer pairs (x,y) such that 1 < x <= y <= n and x^2 + y^2 <= n.

Offset 1, canonical program `A211339.P2984226944041453084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211339 (n : ℕ) : ℤ :=
  A211339.P2984226944041453084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211340.P16114889334648700281

`∑[A065033(Δ[A000603(n)])-1]`
-/

namespace A211340.P16114889334648700281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f2 (n + 1) - f2 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211340.P16114889334648700281

noncomputable section

/-- A211340: Number of integer pairs (x,y) such that 1

Offset 1, canonical program `A211340.P16114889334648700281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6337 terms. -/
def A211340 (n : ℕ) : ℤ :=
  A211340.P16114889334648700281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6337 terms. -/
def A211340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211635.P5977809779673859879

`n^3-A211636(n)`
-/

namespace A211635.P5977809779673859879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211636 n

end

end A211635.P5977809779673859879

noncomputable section

/-- A211635: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2

Offset 0, canonical program `A211635.P5977809779673859879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A211635 (n : ℕ) : ℤ :=
  A211635.P5977809779673859879.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A211635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212054.P6228339497904547609

`A211059(A028310(n))-A196227(n)`
-/

namespace A212054.P6228339497904547609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211059 (A028310 n).toNat - A196227 n

end

end A212054.P6228339497904547609

noncomputable section

/-- A212054: Number of (w,x,y,z) with all terms in {1,...,n} and w*x>y*z+1.

Offset 0, canonical program `A212054.P6228339497904547609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A212054 (n : ℕ) : ℤ :=
  A212054.P6228339497904547609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A212054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212671.P4871280416965862351

`A001037(n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A212671.P4871280416965862351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001037 n).toNat

end

end A212671.P4871280416965862351

noncomputable section

/-- A212671: A001037(n)!.

Offset 0, canonical program `A212671.P4871280416965862351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212671 (n : ℕ) : ℤ :=
  (A212671.P4871280416965862351.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216965.P13115869739118727536

`p?[A305801(2*(n+1))%A305800(2*(n+2))]`
-/

namespace A216965.P13115869739118727536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305801 (2 * (n + 1))) (A305800 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216965.P13115869739118727536

noncomputable section

/-- A216965: Primes p such that nonprime(p) is odd, where nonprime(1) = 0.

Offset 1, canonical program `A216965.P13115869739118727536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. -/
def A216965 (n : ℕ) : ℤ :=
  A216965.P13115869739118727536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. -/
def A216965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219651.P5835350949150730882

`n-A034968(n)`
-/

namespace A219651.P5835350949150730882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A034968 n

end

end A219651.P5835350949150730882

noncomputable section

/-- A219651: a(n) = n minus (sum of digits in factorial base expansion of n).

Offset 0, canonical program `A219651.P5835350949150730882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219651 (n : ℕ) : ℤ :=
  A219651.P5835350949150730882.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A224903.P773025527454876865

`A202994(A000265(n+1))+A202994(n+1)`
-/

namespace A224903.P773025527454876865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202994 (A000265 (n + 1)).toNat + A202994 (n + 1)

end

end A224903.P773025527454876865

noncomputable section

/-- A224903: a(n) = sigma(2*n^4) - sigma(n^4).

Offset 1, canonical program `A224903.P773025527454876865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224903 (n : ℕ) : ℤ :=
  A224903.P773025527454876865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225959.P10983135959915471968

`A175926(A000265(n+1))+A175926(n+1)`
-/

namespace A225959.P10983135959915471968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175926 (A000265 (n + 1)).toNat + A175926 (n + 1)

end

end A225959.P10983135959915471968

noncomputable section

/-- A225959: a(n) = sigma(2*n^3) - sigma(n^3).

Offset 1, canonical program `A225959.P10983135959915471968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225959 (n : ℕ) : ℤ :=
  A225959.P10983135959915471968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A225959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227130.P3624731333316804244

`lt[0, A010673(A131421(n+1)-A060130(n))]`
-/

namespace A227130.P3624731333316804244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A131421 (n + 1) - A060130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227130.P3624731333316804244

noncomputable section

/-- A227130: Numbers k for which there is an even number of nonzero digits when k is written in the factorial base (A007623).

Offset 1, canonical program `A227130.P3624731333316804244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5663 terms. -/
def A227130 (n : ℕ) : ℤ :=
  (A227130.P3624731333316804244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5663 terms. -/
def A227130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227148.P3238414022105672298

`A000035(A034968(2*n))+2*n`
-/

namespace A227148.P3238414022105672298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A034968 (2 * n)).toNat + (2 * n : ℤ)

end

end A227148.P3238414022105672298

noncomputable section

/-- A227148: Numbers k for which the sum of digits is even when k is written in the factorial base (A007623).

Offset 1, canonical program `A227148.P3238414022105672298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A227148 (n : ℕ) : ℤ :=
  A227148.P3238414022105672298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A227148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227149.P2907852417723426036

`eq[1, A019426(A034968(n)+1)]`
-/

namespace A227149.P2907852417723426036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A034968 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227149.P2907852417723426036

noncomputable section

/-- A227149: Numbers k for which the sum of digits is odd when k is written in the factorial base (A007623).

Offset 1, canonical program `A227149.P2907852417723426036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227149 (n : ℕ) : ℤ :=
  (A227149.P2907852417723426036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2520 terms. -/
def A227149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227185.P8894517369224633042

`A005811(A129594(n))`
-/

namespace A227185.P8894517369224633042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A129594 n).toNat

end

end A227185.P8894517369224633042

noncomputable section

/-- A227185: The largest part in the unordered partition encoded in the runlengths of the binary expansion of n.

Offset 0, canonical program `A227185.P8894517369224633042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227185 (n : ℕ) : ℤ :=
  A227185.P8894517369224633042.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227191.P10726689018283546420

`Δ[∑[n]-∑[A227153(n)]]`
-/

namespace A227191.P10726689018283546420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227191.P10726689018283546420

noncomputable section

/-- A227191: a(n) = n minus (product of nonzero digits in factorial base representation of n).

Offset 1, canonical program `A227191.P10726689018283546420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227191 (n : ℕ) : ℤ :=
  A227191.P10726689018283546420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A227191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230419.P3694317805320617839

`A034968(A025581(n))-A034968(A002262(n))`
-/

namespace A230419.P3694317805320617839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A025581 n).toNat - A034968 (A002262 n).toNat

end

end A230419.P3694317805320617839

noncomputable section

/-- A230419: Square array A(n,k) = difference of digit sums in factorial base representations (A007623) of n and k, n>=0, k>=0, read by antidiagonals; A(n,k) = A034968(n)-A034968(k).

Offset 0, canonical program `A230419.P3694317805320617839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230419 (n : ℕ) : ℤ :=
  A230419.P3694317805320617839.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231773.P13203328181478767103

`comp[A072209(n+1)-1]+1`
-/

namespace A231773.P13203328181478767103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072209 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A231773.P13203328181478767103

noncomputable section

/-- A231773: Numbers k such that there are no numbers with k primitive roots.

Offset 1, canonical program `A231773.P13203328181478767103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231773 (n : ℕ) : ℤ :=
  (A231773.P13203328181478767103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232094.P2245050724957225248

`A060130(A000217(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232094.P2245050724957225248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A000217 n).toNat

end

end A232094.P2245050724957225248

noncomputable section

/-- A232094: a(n) = A060130(A000217(n)); number of nonzero digits in factorial base representation (A007623) of 0+1+2+...+n.

Offset 0, canonical program `A232094.P2245050724957225248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232094 (n : ℕ) : ℤ :=
  A232094.P2245050724957225248.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A232095.P10152144582324022357

`A034968(A000217(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232095.P10152144582324022357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A000217 n).toNat

end

end A232095.P10152144582324022357

noncomputable section

/-- A232095: Minimal number of factorials which add to 0+1+2+...+n; a(n) = A034968(A000217(n)).

Offset 0, canonical program `A232095.P10152144582324022357`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232095 (n : ℕ) : ℤ :=
  A232095.P10152144582324022357.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A232095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235143.P16098229146506641936

`2*eq[2, A063725(A001481(n+1))]`
-/

namespace A235143.P16098229146506641936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A001481 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235143.P16098229146506641936

noncomputable section

/-- A235143: Positions of -2 in A235141, the first differences of A234300.

Offset 1, canonical program `A235143.P16098229146506641936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1533 terms. -/
def A235143 (n : ℕ) : ℤ :=
  (A235143.P16098229146506641936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1533 terms. -/
def A235143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242609.P7089831912519252597

`(-1)^n*A226225(n)`
-/

namespace A242609.P7089831912519252597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A226225 n

end

end A242609.P7089831912519252597

noncomputable section

/-- A242609: Expansion of phi(-q) * phi(q^8) in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A242609.P7089831912519252597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242609 (n : ℕ) : ℤ :=
  A242609.P7089831912519252597.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257510.P6240819439116695136

`A084558(n+1)-A060130(n+1)`
-/

namespace A257510.P6240819439116695136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (n + 1) - A060130 (n + 1)

end

end A257510.P6240819439116695136

noncomputable section

/-- A257510: Number of nonleading zeros in factorial base representation of n (A007623).

Offset 1, canonical program `A257510.P6240819439116695136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257510 (n : ℕ) : ℤ :=
  A257510.P6240819439116695136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257680.P15970174922144783842

`round(atan(A257511(n)))`
-/

namespace A257680.P15970174922144783842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A257511 n : ℝ))

end

end A257680.P15970174922144783842

noncomputable section

/-- A257680: Characteristic function for A256450: 1 if there is at least one 1-digit present in the factorial representation of n (A007623), otherwise 0.

Offset 0, canonical program `A257680.P15970174922144783842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257680 (n : ℕ) : ℤ :=
  A257680.P15970174922144783842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262725.P4929212033244102736

`(-1)^A034968(n)`
-/

namespace A262725.P4929212033244102736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A034968 n : ℤ)

end

end A262725.P4929212033244102736

noncomputable section

/-- A262725: The unique function f with f(1)=1 and f(jD!+k)=(-1)^j f(k) for all D, j=1..D, and k=1..D!.

Offset 1, canonical program `A262725.P4929212033244102736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A262725.P4929212033244102736.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262992.P10810152767226741436

`A262870(n+1)+A262871(n+1)`
-/

namespace A262992.P10810152767226741436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (n + 1) + A262871 (n + 1)

end

end A262992.P10810152767226741436

noncomputable section

/-- A262992: Sum of the squarefree numbers among the partition parts of n into two parts.

Offset 1, canonical program `A262992.P10810152767226741436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262870, A262871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262992 (n : ℕ) : ℤ :=
  A262992.P10810152767226741436.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262870, A262871, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267895.P4751703947180070628

`eq[2, A000005(A000005(A000265(n+1)))]+1`
-/

namespace A267895.P4751703947180070628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A267895.P4751703947180070628

noncomputable section

/-- A267895: Numbers whose number of odd divisors is prime.

Offset 1, canonical program `A267895.P4751703947180070628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267895 (n : ℕ) : ℤ :=
  (A267895.P4751703947180070628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273245.P11157481121189141754

`A007088(A272670(n+1))`
-/

namespace A273245.P11157481121189141754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A272670 (n + 1)).toNat

end

end A273245.P11157481121189141754

noncomputable section

/-- A273245: Non-palindromic binary numbers whose reversal is a palindrome.

Offset 1, canonical program `A273245.P11157481121189141754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A272670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273245 (n : ℕ) : ℤ :=
  A273245.P11157481121189141754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A272670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276112.P8212586368584105175

`A071562(n+2)-1`
-/

namespace A276112.P8212586368584105175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 2) - 1

end

end A276112.P8212586368584105175

noncomputable section

/-- A276112: Numbers with precipice 1: descending by the main diagonal of the pyramid described in A245092, the height difference between the level a(n) (starting from the top) and the level of the next terrace is equal to 1.

Offset 1, canonical program `A276112.P8212586368584105175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276112 (n : ℕ) : ℤ :=
  A276112.P8212586368584105175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276112.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276947.P6732567290194453229

`Δ[lt[0, A257511(n)]]`
-/

namespace A276947.P6732567290194453229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A276947.P6732567290194453229

noncomputable section

/-- A276947: First differences of A256450: a(n) = A256450(n) - A256450(n-1).

Offset 1, canonical program `A276947.P6732567290194453229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A276947 (n : ℕ) : ℤ :=
  A276947.P6732567290194453229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A276947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280223.P8560381770176027686

`A071562(A348110(n+1)+1)-(n+1)`
-/

namespace A280223.P8560381770176027686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A348110 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A280223.P8560381770176027686

noncomputable section

/-- A280223: Distance of n to the next number with middle divisors.

Offset 1, canonical program `A280223.P8560381770176027686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280223 (n : ℕ) : ℤ :=
  A280223.P8560381770176027686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280726.P4396404061775602210

`A049501(A000010(n+1))`
-/

namespace A280726.P4396404061775602210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A000010 (n + 1)).toNat

end

end A280726.P4396404061775602210

noncomputable section

/-- A280726: a(n) = A049501(phi(n)).

Offset 1, canonical program `A280726.P4396404061775602210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049501, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280726 (n : ℕ) : ℤ :=
  A280726.P4396404061775602210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049501, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280800.P15800914194620614988

`A049501(A051953(n+1))`
-/

namespace A280800.P15800914194620614988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A051953 (n + 1)).toNat

end

end A280800.P15800914194620614988

noncomputable section

/-- A280800: a(n) = A049501(cototient(n)).

Offset 1, canonical program `A280800.P15800914194620614988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280800 (n : ℕ) : ℤ :=
  A280800.P15800914194620614988.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, A051953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280817.P4263899432578162346

`A049501(A000203(n+1))`
-/

namespace A280817.P4263899432578162346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A000203 (n + 1)).toNat

end

end A280817.P4263899432578162346

noncomputable section

/-- A280817: a(n) = A049501(sigma(n)).

Offset 1, canonical program `A280817.P4263899432578162346`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280817 (n : ℕ) : ℤ :=
  A280817.P4263899432578162346.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280919.P14895536633841185653

`Δ[A071562(n+1)]`
-/

namespace A280919.P14895536633841185653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280919.P14895536633841185653

noncomputable section

/-- A280919: Precipices from the successive terraces, descending by the main diagonal of the pyramid described in A245092. Also first differences of A071562.

Offset 1, canonical program `A280919.P14895536633841185653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A280919 (n : ℕ) : ℤ :=
  A280919.P14895536633841185653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A280919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281388.P142733579054389266

`A049501(xor(n+1, ceil(n/2)))`
-/

namespace A281388.P142733579054389266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (Int.xor (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉).toNat

end

end A281388.P142733579054389266

noncomputable section

/-- A281388: Write n in binary reflected Gray code and sum the positions where there is a '1' followed immediately to the right by a '0', counting the leftmost digit as position 1.

Offset 1, canonical program `A281388.P142733579054389266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A281388 (n : ℕ) : ℤ :=
  A281388.P142733579054389266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A281388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281552.P14693642784009751994

`A049501(A171885(n)+1)`
-/

namespace A281552.P14693642784009751994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A171885 n + 1).toNat

end

end A281552.P14693642784009751994

noncomputable section

/-- A281552: Write n in the Elias gamma code and sum the positions where there is a '1' followed immediately to the right by a '0', counting the leftmost digit as position 1.

Offset 1, canonical program `A281552.P14693642784009751994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A281552 (n : ℕ) : ℤ :=
  A281552.P14693642784009751994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A281552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284447.P16300961384300992767

`A092569(A258996(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284447.P16300961384300992767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A258996 (n + 1)).toNat

end

end A284447.P16300961384300992767

noncomputable section

/-- A284447: Permutation of the positive integers: a(n) = A258996(A092569(n)) = A092569(A258996(n)).

Offset 1, canonical program `A284447.P16300961384300992767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284447 (n : ℕ) : ℤ :=
  A284447.P16300961384300992767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284460.P11071859189159221971

`A231550(A258996(n+1))`
-/

namespace A284460.P11071859189159221971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A258996 (n + 1)).toNat

end

end A284460.P11071859189159221971

noncomputable section

/-- A284460: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A245327/A245328 into the enumeration system A002487/A002487' (Calkin-Wilf), and A020651/A020650 (Yu-Ting inverted) into A162911/A162912(Drib).

Offset 1, canonical program `A284460.P11071859189159221971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231550, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284460 (n : ℕ) : ℤ :=
  A284460.P11071859189159221971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A231550, A258996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A284460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286604.P16261278403836028950

`(n+1)%A034968(n+1)`
-/

namespace A286604.P16261278403836028950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A034968 (n + 1))

end

end A286604.P16261278403836028950

noncomputable section

/-- A286604: a(n) = n mod sum of digits of n in factorial base.

Offset 1, canonical program `A286604.P16261278403836028950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286604 (n : ℕ) : ℤ :=
  A286604.P16261278403836028950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294063.P13359154590265481169

`A294061(2*(n+1))`
-/

namespace A294063.P13359154590265481169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294061 (2 * (n + 1))

end

end A294063.P13359154590265481169

noncomputable section

/-- A294063: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the larger part squarefree.

Offset 1, canonical program `A294063.P13359154590265481169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294063 (n : ℕ) : ℤ :=
  A294063.P13359154590265481169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294145.P7307244003580774145

`A262870(n+1)-A294061(n+1)`
-/

namespace A294145.P7307244003580774145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262870 (n + 1) - A294061 (n + 1)

end

end A294145.P7307244003580774145

noncomputable section

/-- A294145: Sum of the smaller parts of the partitions of n into two parts with larger part squarefree.

Offset 1, canonical program `A294145.P7307244003580774145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294145 (n : ℕ) : ℤ :=
  A294145.P7307244003580774145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301593.P6623717910831163898

`A034968((n+1)*C(A060130(n+1), A034968(n+1)))`
-/

namespace A301593.P6623717910831163898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 ((n + 1) * Nat.choose (A060130 (n + 1)).toNat (A034968 (n + 1)).toNat)

end

end A301593.P6623717910831163898

noncomputable section

/-- A301593: n can be represented the sum of a(n) distinct factorials. (If there is no such representation, a(n) = 0.)

Offset 1, canonical program `A301593.P6623717910831163898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301593 (n : ℕ) : ℤ :=
  A301593.P6623717910831163898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306156.P7321451468610362585

`∑{d}[A006519(n+1), A001037((n+1)/#)]`
-/

namespace A306156.P7321451468610362585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001037 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306156.P7321451468610362585

noncomputable section

/-- A306156: Inverse Weigh transform of 2^n.

Offset 1, canonical program `A306156.P7321451468610362585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A306156 (n : ℕ) : ℤ :=
  A306156.P7321451468610362585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A306156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316846.P7827768282836125072

`∑[char[A123324(n+1)]]+1`
-/

namespace A316846.P7827768282836125072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123324 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A316846.P7827768282836125072

noncomputable section

/-- A316846: Column 1 of table A316842.

Offset 1, canonical program `A316846.P7827768282836125072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316846 (n : ℕ) : ℤ :=
  (A316846.P7827768282836125072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319529.P1117598042908344676

`2*lt[A348327(2*n+1), 1]+1`
-/

namespace A319529.P1117598042908344676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A319529.P1117598042908344676

noncomputable section

/-- A319529: Odd numbers that have middle divisors.

Offset 1, canonical program `A319529.P1117598042908344676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5445 terms. -/
def A319529 (n : ℕ) : ℤ :=
  (A319529.P1117598042908344676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5445 terms. -/
def A319529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319711.P4258072044163212966

`∑{d}[n+1, A034968(#%(n+1))]`
-/

namespace A319711.P4258072044163212966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034968 (d % (n + 1))

end

end A319711.P4258072044163212966

noncomputable section

/-- A319711: Sum of A034968(d) over proper divisors d of n, where A034968 gives the sum of digits in factorial base.

Offset 1, canonical program `A319711.P4258072044163212966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319711 (n : ℕ) : ℤ :=
  A319711.P4258072044163212966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319712.P4375645309056527447

`∑{d}[n+1, A034968(#)]`
-/

namespace A319712.P4375645309056527447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034968 d

end

end A319712.P4375645309056527447

noncomputable section

/-- A319712: Sum of A034968(d) over divisors d of n, where A034968 gives the sum of digits in factorial base.

Offset 1, canonical program `A319712.P4375645309056527447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319712 (n : ℕ) : ℤ :=
  A319712.P4375645309056527447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319801.P2334632365175691862

`comp[or(n, A348327(n+1))]+1`
-/

namespace A319801.P2334632365175691862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A348327 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319801.P2334632365175691862

noncomputable section

/-- A319801: Odd numbers without middle divisors.

Offset 1, canonical program `A319801.P2334632365175691862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319801 (n : ℕ) : ℤ :=
  (A319801.P2334632365175691862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319802.P14391175377016966646

`2*A348471(n+1)`
-/

namespace A319802.P14391175377016966646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348471 (n + 1)

end

end A319802.P14391175377016966646

noncomputable section

/-- A319802: Even numbers without middle divisors.

Offset 1, canonical program `A319802.P14391175377016966646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319802 (n : ℕ) : ℤ :=
  A319802.P14391175377016966646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319993.P711255343025282325

`A319997(n+1)/A173557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319993.P711255343025282325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319997 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A319993.P711255343025282325

noncomputable section

/-- A319993: a(n) = A319997(n) / A173557(n).

Offset 1, canonical program `A319993.P711255343025282325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319993 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319993.P711255343025282325.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319998.P4025482794031375230

`A000010(n+1)-A319997(n+1)`
-/

namespace A319998.P4025482794031375230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A319997 (n + 1)

end

end A319998.P4025482794031375230

noncomputable section

/-- A319998: a(n) = Sum_{d|n, d is even} mu(n/d)*d, where mu(n) is Moebius function A008683.

Offset 1, canonical program `A319998.P4025482794031375230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319998 (n : ℕ) : ℤ :=
  A319998.P4025482794031375230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322362.P1867814400525235391

`gcd(n+1, A166590(n+1))`
-/

namespace A322362.P1867814400525235391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A166590 (n + 1))

end

end A322362.P1867814400525235391

noncomputable section

/-- A322362: a(n) = gcd(n, A166590(n)), where A166590 is completely multiplicative with a(p) = p+2 for prime p.

Offset 1, canonical program `A322362.P1867814400525235391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322362 (n : ℕ) : ℤ :=
  (A322362.P1867814400525235391.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333046.P18395749149837300678

`(n+1)*A325446(n+1)`
-/

namespace A333046.P18395749149837300678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A325446 (n + 1)

end

end A333046.P18395749149837300678

noncomputable section

/-- A333046: a(1) = 1; a(n) = n * Sum_{d|n, d < n, gcd(d, n/d) = 1} a(d) / d.

Offset 1, canonical program `A333046.P18395749149837300678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333046 (n : ℕ) : ℤ :=
  A333046.P18395749149837300678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333573.P2070379244315738537

`∪[A036698(n), A036711(n)]`
-/

namespace A333573.P2070379244315738537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036711 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333573.P2070379244315738537

noncomputable section

/-- A333573: a(n) = A333572(n)/4.

Offset 1, canonical program `A333573.P2070379244315738537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A333573 (n : ℕ) : ℤ :=
  (A333573.P2070379244315738537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A333573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333976.P13271542286250004937

`A184389(n+1)-A018892(n+1)`
-/

namespace A333976.P13271542286250004937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - A018892 (n + 1)

end

end A333976.P13271542286250004937

noncomputable section

/-- A333976: Number of pairs of divisors of n, (d1,d2), such that d1 <= d2 and gcd(d1,d2) > 1.

Offset 1, canonical program `A333976.P13271542286250004937`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, A184389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333976 (n : ℕ) : ℤ :=
  A333976.P13271542286250004937.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018892, A184389, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336319.P15871671878372422181

`A038040(n+1)/A000290(A336318(n+1))`
-/

namespace A336319.P15871671878372422181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A000290 (A336318 (n + 1)).toNat : ℚ)

end

end A336319.P15871671878372422181

noncomputable section

/-- A336319: Squarefree part of n*d(n), where d(n) = number of divisors of n (A000005).

Offset 1, canonical program `A336319.P15871671878372422181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A336318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336319.P15871671878372422181.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A336318, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336475.P10953969543612210911

`A000265(n+1)*A001227(n+1)`
-/

namespace A336475.P10953969543612210911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A001227 (n + 1)

end

end A336475.P10953969543612210911

noncomputable section

/-- A336475: Multiplicative with a(2^e) = 1, and for odd primes p, a(p^e) = (e+1)*p^e.

Offset 1, canonical program `A336475.P10953969543612210911`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A001227, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336475 (n : ℕ) : ℤ :=
  A336475.P10953969543612210911.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A001227, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338247.P17670720856560393177

`A338245(A338245(n))`
-/

namespace A338247.P17670720856560393177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338245 (A338245 n).toNat

end

end A338247.P17670720856560393177

noncomputable section

/-- A338247: Inverse permutation to A338245.

Offset 0, canonical program `A338247.P17670720856560393177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338247 (n : ℕ) : ℤ :=
  A338247.P17670720856560393177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346867.P15002536071428415382

`∑{d}[A071562(n+1), #]`
-/

namespace A346867.P15002536071428415382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A346867.P15002536071428415382

noncomputable section

/-- A346867: Sum of divisors of the numbers that have middle divisors.

Offset 1, canonical program `A346867.P15002536071428415382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346867 (n : ℕ) : ℤ :=
  (A346867.P15002536071428415382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347129.P12459740348261300707

`A347130(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347129.P12459740348261300707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347130 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347129.P12459740348261300707

noncomputable section

/-- A347129: a(n) = A347130(n) / A003557(n), where A347130 is the Dirichlet convolution of the identity function with the arithmetic derivative of n.

Offset 1, canonical program `A347129.P12459740348261300707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347129 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347129.P12459740348261300707.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A347130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348971.P11156141318395468406

`A003968(n+1)-A000010(n+1)`
-/

namespace A348971.P11156141318395468406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (n + 1) - A000010 (n + 1)

end

end A348971.P11156141318395468406

noncomputable section

/-- A348971: a(n) = Product(p*(p+1)^(e-1)) - Product((p-1)*p^(e-1)), when n = Product(p^e), with p primes, and e their exponents.

Offset 1, canonical program `A348971.P11156141318395468406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348971 (n : ℕ) : ℤ :=
  A348971.P11156141318395468406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349137.P16480862393533510272

`A067541(A000265(n+1))`
-/

namespace A349137.P16480862393533510272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A000265 (n + 1)).toNat

end

end A349137.P16480862393533510272

noncomputable section

/-- A349137: a(n) = phi(A003602(n)), where A003602 is Kimberling's paraphrase of the binary number system, and phi is Euler totient function.

Offset 1, canonical program `A349137.P16480862393533510272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349137 (n : ℕ) : ℤ :=
  A349137.P16480862393533510272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349338.P1568544451792940700

`A000010(n+1)+A117494(n+1)`
-/

namespace A349338.P1568544451792940700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A117494 (n + 1)

end

end A349338.P1568544451792940700

noncomputable section

/-- A349338: Dirichlet convolution of A000010 (Euler totient phi) with A080339 (characteristic function of noncomposite numbers).

Offset 1, canonical program `A349338.P1568544451792940700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349338 (n : ℕ) : ℤ :=
  A349338.P1568544451792940700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353375.P197900174002010438

`A000005(n+1)-A353376(n+1)`
-/

namespace A353375.P197900174002010438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353376 (n + 1)

end

end A353375.P197900174002010438

noncomputable section

/-- A353375: Number of divisors of n that are not in A345452.

Offset 1, canonical program `A353375.P197900174002010438`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353375 (n : ℕ) : ℤ :=
  A353375.P197900174002010438.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353376, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353382.P5318746231564784083

`A000005(n+1)-A353381(n+1)`
-/

namespace A353382.P5318746231564784083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353381 (n + 1)

end

end A353382.P5318746231564784083

noncomputable section

/-- A353382: Inverse Möbius transform of A353380.

Offset 1, canonical program `A353382.P5318746231564784083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353381, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353382 (n : ℕ) : ℤ :=
  A353382.P5318746231564784083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A353381, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353684.P9788669644601584113

`lt[0, A353682(n+1)]+1`
-/

namespace A353684.P9788669644601584113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353684.P9788669644601584113

noncomputable section

/-- A353684: Numbers k for which phi(sigma(k)) >= phi(k).

Offset 1, canonical program `A353684.P9788669644601584113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353684 (n : ℕ) : ℤ :=
  (A353684.P9788669644601584113.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355280.P12882028884349807086

`A007088(A033015(n+1))`
-/

namespace A355280.P12882028884349807086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A033015 (n + 1)).toNat

end

end A355280.P12882028884349807086

noncomputable section

/-- A355280: Binary numbers (digits in {0, 1}) with no run of digits with length < 2.

Offset 1, canonical program `A355280.P12882028884349807086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A033015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355280 (n : ℕ) : ℤ :=
  A355280.P12882028884349807086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A033015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358976.P7223524224958330645

`eq[1, gcd(n, A034968(n))]`
-/

namespace A358976.P7223524224958330645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A034968 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358976.P7223524224958330645

noncomputable section

/-- A358976: Numbers that are coprime to the sum of their factorial base digits (A034968).

Offset 1, canonical program `A358976.P7223524224958330645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6064 terms. -/
def A358976 (n : ℕ) : ℤ :=
  (A358976.P7223524224958330645.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6064 terms. -/
def A358976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362632.P2419837277974987510

`∑{d}[n+1, A046692(#)*A069546((n+1)/#)]`
-/

namespace A362632.P2419837277974987510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A069546 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A362632.P2419837277974987510

noncomputable section

/-- A362632: a(n) = Sum_{d|n, gcd(d,n/d)=1} d * psi(d), where psi is the Dedekind psi function (A001615).

Offset 1, canonical program `A362632.P2419837277974987510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362632 (n : ℕ) : ℤ :=
  A362632.P2419837277974987510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365403.P16268000425207713660

`A365479(A003557(n+1))`
-/

namespace A365403.P16268000425207713660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365479 (A003557 (n + 1)).toNat

end

end A365403.P16268000425207713660

noncomputable section

/-- A365403: The sum of the unitary divisors of the largest square dividing n.

Offset 1, canonical program `A365403.P16268000425207713660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365403 (n : ℕ) : ℤ :=
  A365403.P16268000425207713660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368342.P15145048510541553360

`∑[A034968(floor(n²/(n+1)))]`
-/

namespace A368342.P15145048510541553360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368342.P15145048510541553360

noncomputable section

/-- A368342: Sum of digits of the numbers 0..n-1 in factorial base (A108731).

Offset 0, canonical program `A368342.P15145048510541553360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368342 (n : ℕ) : ℤ :=
  A368342.P15145048510541553360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372358.P15486915417021650046

`A035327(A258996(n+1))`
-/

namespace A372358.P15486915417021650046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A258996 (n + 1)).toNat

end

end A372358.P15486915417021650046

noncomputable section

/-- A372358: a(n) = n XOR A086893(1+A000523(n)), where XOR is a bitwise-XOR, A003987.

Offset 1, canonical program `A372358.P15486915417021650046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A372358 (n : ℕ) : ℤ :=
  A372358.P15486915417021650046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A372358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372673.P8325753504502278728

`A000010(A003991(n+1))/A106476(n)`
-/

namespace A372673.P8325753504502278728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A003991 (n + 1)).toNat : ℚ) / (A106476 n : ℚ)

end

end A372673.P8325753504502278728

noncomputable section

/-- A372673: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = phi(k*n) / phi(k).

Offset 1, canonical program `A372673.P8325753504502278728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372673.P8325753504502278728.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374466.P2704209594539488434

`A066829(n+1)*(1-A359464(n+1))`
-/

namespace A374466.P2704209594539488434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * (1 - A359464 (n + 1))

end

end A374466.P2704209594539488434

noncomputable section

/-- A374466: a(n) = 1 if n is the product of an odd number of primes and the total number of 1-bits in the exponents of its prime factorization is odd, otherwise 0.

Offset 1, canonical program `A374466.P2704209594539488434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374466 (n : ℕ) : ℤ :=
  A374466.P2704209594539488434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374468.P16396236909376006343

`A034968(n)%2`
-/

namespace A374468.P16396236909376006343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034968 n) 2

end

end A374468.P16396236909376006343

noncomputable section

/-- A374468: Parity of the digit sum of n in factorial base.

Offset 0, canonical program `A374468.P16396236909376006343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374468 (n : ℕ) : ℤ :=
  A374468.P16396236909376006343.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374471.P2134863705312420223

`A065043(n+1)*A359464(n+1)`
-/

namespace A374471.P2134863705312420223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A359464 (n + 1)

end

end A374471.P2134863705312420223

noncomputable section

/-- A374471: a(n) = 1 if bigomega(n) and A064547(n) are both even, otherwise 0, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374471.P2134863705312420223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374471 (n : ℕ) : ℤ :=
  A374471.P2134863705312420223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, A359464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A374471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390663.P11880903397316194057

`A175926(A019555(n+1))`
-/

namespace A390663.P11880903397316194057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175926 (A019555 (n + 1)).toNat

end

end A390663.P11880903397316194057

noncomputable section

/-- A390663: The sum of the divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390663.P11880903397316194057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390663 (n : ℕ) : ℤ :=
  A390663.P11880903397316194057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396323.P6518160970652980328

`filter[A391319(n+1), A379958(#)]`
-/

namespace A396323.P6518160970652980328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A396323.P6518160970652980328

noncomputable section

/-- A396323: Numbers that are neither cubefree nor powerful with at least 3 distinct prime factors.

Offset 1, canonical program `A396323.P6518160970652980328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7067 terms. -/
def A396323 (n : ℕ) : ℤ :=
  A396323.P6518160970652980328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7067 terms. -/
def A396323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172438.P12227216197622879255

`eq[A063647(n+1), A147809(n+1)]+1`
-/

namespace A172438.P12227216197622879255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A172438.P12227216197622879255

noncomputable section

/-- A172438: Numbers k such that tau(k^2+1) - tau(k^2) = 1 where the function tau(k) is the number of positive divisors of k.

Offset 1, canonical program `A172438.P12227216197622879255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A172438 (n : ℕ) : ℤ :=
  (A172438.P12227216197622879255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A172438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173967.P1730649050350416693

`A263990(n+1)+A109288(n+1)`
-/

namespace A173967.P1730649050350416693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1) + A109288 (n + 1)

end

end A173967.P1730649050350416693

noncomputable section

/-- A173967: Sums of two consecutive numbers that are nonsquare semiprimes.

Offset 1, canonical program `A173967.P1730649050350416693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109288, A263990, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173967 (n : ℕ) : ℤ :=
  A173967.P1730649050350416693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109288, A263990, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175247.P6315071726506582918

`A006450(n%a(n-1))` with `a(0)=2`
-/

namespace A175247.P6315071726506582918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006450 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A175247.P6315071726506582918

noncomputable section

/-- A175247: Primes (A000040) with noncomposite (A008578) subscripts.

Offset 1, canonical program `A175247.P6315071726506582918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175247 (n : ℕ) : ℤ :=
  A175247.P6315071726506582918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180263.P12558440102138560603

`record[A000265(A050796(n+1))]`
-/

namespace A180263.P12558440102138560603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A050796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180263.P12558440102138560603

noncomputable section

/-- A180263: Odd k such that (k^2 + 1)/2 is not prime.

Offset 1, canonical program `A180263.P12558440102138560603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A180263 (n : ℕ) : ℤ :=
  A180263.P12558440102138560603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A180263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180292.P7000983173683337364

`A072277(n+3)-A262086(n+1)^C(2, n+1)`
-/

namespace A180292.P7000983173683337364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072277 (n + 3) - A262086 (n + 1) ^ Nat.choose 2 (n + 1)

end

end A180292.P7000983173683337364

noncomputable section

/-- A180292: Number of arrangements of n indistinguishable balls in n boxes with the maximum number of balls in any box equal to n-2.

Offset 3, canonical program `A180292.P7000983173683337364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A180292 (n : ℕ) : ℤ :=
  A180292.P7000983173683337364.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A180292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217622.P12949597402063927546

`A006450(2*(n+1))`
-/

namespace A217622.P12949597402063927546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1))

end

end A217622.P12949597402063927546

noncomputable section

/-- A217622: Prime(prime(2*n)).

Offset 1, canonical program `A217622.P12949597402063927546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217622 (n : ℕ) : ℤ :=
  A217622.P12949597402063927546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217623.P16926536028161874528

`A006450((n+1)²)`
-/

namespace A217623.P16926536028161874528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 ((n + 1) ^ 2)

end

end A217623.P16926536028161874528

noncomputable section

/-- A217623: a(n) = prime(prime(n^2)).

Offset 1, canonical program `A217623.P16926536028161874528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A217623 (n : ℕ) : ℤ :=
  A217623.P16926536028161874528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A217623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217624.P7503922285772767855

`A006450(3*(n+1))`
-/

namespace A217624.P7503922285772767855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (3 * (n + 1))

end

end A217624.P7503922285772767855

noncomputable section

/-- A217624: Prime(prime(3*n)).

Offset 1, canonical program `A217624.P7503922285772767855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217624 (n : ℕ) : ℤ :=
  A217624.P7503922285772767855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218461.P9982432580826872899

`floor(A006450(n+1)/A000040(n+1))`
-/

namespace A218461.P9982432580826872899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006450 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A218461.P9982432580826872899

noncomputable section

/-- A218461: Floor( prime(prime(n))/ prime(n) ).

Offset 1, canonical program `A218461.P9982432580826872899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218461 (n : ℕ) : ℤ :=
  A218461.P9982432580826872899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A218461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239731.P14772903405319056009

`A007504(n+1)-A006450(n+1)`
-/

namespace A239731.P14772903405319056009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A006450 (n + 1)

end

end A239731.P14772903405319056009

noncomputable section

/-- A239731: Difference between sum of first n primes and prime(prime(n)).

Offset 1, canonical program `A239731.P14772903405319056009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239731 (n : ℕ) : ℤ :=
  A239731.P14772903405319056009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A007504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240475.P16814413565336914401

`p?[A240474(n+1)+A112925(n+1)]`
-/

namespace A240475.P16814413565336914401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240474 (n + 1) + A112925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240475.P16814413565336914401

noncomputable section

/-- A240475: Primes that are midway between the closest flanking squarefree numbers.

Offset 1, canonical program `A240475.P16814413565336914401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A240475 (n : ℕ) : ℤ :=
  A240475.P16814413565336914401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A240475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245174.P17300894965390179754

`Δ[A006450(n+2)-A006450(n+1)]`
-/

namespace A245174.P17300894965390179754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245174.P17300894965390179754

noncomputable section

/-- A245174: Second differences of A006450.

Offset 1, canonical program `A245174.P17300894965390179754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245174 (n : ℕ) : ℤ :=
  A245174.P17300894965390179754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256450.P2961887337842134831

`lt[0, A257511(n)]`
-/

namespace A256450.P2961887337842134831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256450.P2961887337842134831

noncomputable section

/-- A256450: Numbers that have at least one 1-digit in their factorial base representation (A007623).

Offset 0, canonical program `A256450.P2961887337842134831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9360 terms. -/
def A256450 (n : ℕ) : ℤ :=
  (A256450.P2961887337842134831.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9360 terms. -/
def A256450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262021.P16382475691803801981

`A006450(n+1)-(n+1)`
-/

namespace A262021.P16382475691803801981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - (n + 1 : ℤ)

end

end A262021.P16382475691803801981

noncomputable section

/-- A262021: a(n) = prime(prime(n)) - n.

Offset 1, canonical program `A262021.P16382475691803801981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262021 (n : ℕ) : ℤ :=
  A262021.P16382475691803801981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262275.P4673791647840445127

`A006450(A121543(n+1))`
-/

namespace A262275.P4673791647840445127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A121543 (n + 1)).toNat

end

end A262275.P4673791647840445127

noncomputable section

/-- A262275: Prime numbers with an even number of steps in their prime index chain.

Offset 1, canonical program `A262275.P4673791647840445127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262275 (n : ℕ) : ℤ :=
  A262275.P4673791647840445127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290599.P6666395715488275245

`A060462(n+2)-A166362(n+2)`
-/

namespace A290599.P6666395715488275245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 2) - A166362 (n + 2)

end

end A290599.P6666395715488275245

noncomputable section

/-- A290599: Number of numbers from 1 to A002808(n) - 1 that are non-coprime to A002808(n).

Offset 1, canonical program `A290599.P6666395715488275245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A290599 (n : ℕ) : ℤ :=
  A290599.P6666395715488275245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A290599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299644.P3252047608249761790

`A006450(n+2)+A006450(n+1)`
-/

namespace A299644.P3252047608249761790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) + A006450 (n + 1)

end

end A299644.P3252047608249761790

noncomputable section

/-- A299644: a(n) = prime(prime(n+1)) + prime(prime(n)).

Offset 1, canonical program `A299644.P3252047608249761790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299644 (n : ℕ) : ℤ :=
  A299644.P3252047608249761790.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304362.P3395535958297874023

`∑{d}[n+1, A007427(#)*A304817((n+1)/#)]`
-/

namespace A304362.P3395535958297874023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A304817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304362.P3395535958297874023

noncomputable section

/-- A304362: a(n) = Sum_{d|n, d = 1 or not a perfect power} mu(n/d).

Offset 1, canonical program `A304362.P3395535958297874023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304362 (n : ℕ) : ℤ :=
  A304362.P3395535958297874023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309502.P2115304276531406201

`filter[A114871(n+2), A359820(#)]`
-/

namespace A309502.P2115304276531406201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A309502.P2115304276531406201

noncomputable section

/-- A309502: Totients congruent to 2 mod 4.

Offset 1, canonical program `A309502.P2115304276531406201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4845 terms. -/
def A309502 (n : ℕ) : ℤ :=
  A309502.P2115304276531406201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4845 terms. -/
def A309502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319100.P5580130370207246504

`A000010(n+1)/A293483(n+1)`
-/

namespace A319100.P5580130370207246504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A293483 (n + 1) : ℚ)

end

end A319100.P5580130370207246504

noncomputable section

/-- A319100: Number of solutions to x^6 == 1 (mod n).

Offset 1, canonical program `A319100.P5580130370207246504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A293483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319100.P5580130370207246504.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A293483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322827.P11659878149687160008

`A329887(A341915(n))`
-/

namespace A322827.P11659878149687160008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329887 (A341915 n).toNat

end

end A322827.P11659878149687160008

noncomputable section

/-- A322827: A permutation of A025487: Sequence of least representatives of distinct prime signatures obtained from the run lengths present in the binary expansion of n.

Offset 0, canonical program `A322827.P11659878149687160008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A322827 (n : ℕ) : ℤ :=
  A322827.P11659878149687160008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A322827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323916.P1875716498563365091

`∩[A007774(n+1), A063752(n+1)]`
-/

namespace A323916.P1875716498563365091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323916.P1875716498563365091

noncomputable section

/-- A323916: Numbers k with exactly two distinct prime divisors and such that cototient(k) is a square.

Offset 1, canonical program `A323916.P1875716498563365091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A323916 (n : ℕ) : ℤ :=
  (A323916.P1875716498563365091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A323916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324507.P9101657935171306601

`A211776(n+1)/A007955(n+1)*A324506(n+1)`
-/

namespace A324507.P9101657935171306601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A324506 (n + 1) : ℚ)

end

end A324507.P9101657935171306601

noncomputable section

/-- A324507: a(n) = denominator of Product_{d|n} (d/tau(d)) where tau(k) = the number of divisors of k (A000005).

Offset 1, canonical program `A324507.P9101657935171306601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324507 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324507.P9101657935171306601.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339879.P17833683181860755581

`record[(n+1)/A000265(A160595(n+1))]`
-/

namespace A339879.P17833683181860755581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (A160595 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A339879.P17833683181860755581

noncomputable section

/-- A339879: Numbers k for which k-1 is a multiple of A053575(k) [the odd part of phi(k)].

Offset 1, canonical program `A339879.P17833683181860755581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7020 terms. -/
def A339879 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339879.P17833683181860755581.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7020 terms. -/
def A339879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343229.P18291780148970798749

`A289831(A060373(n))`
-/

namespace A343229.P18291780148970798749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060373 n).toNat

end

end A343229.P18291780148970798749

noncomputable section

/-- A343229: A binary encoding of the digits "-1" in balanced ternary representation of n.

Offset 0, canonical program `A343229.P18291780148970798749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060373, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343229 (n : ℕ) : ℤ :=
  A343229.P18291780148970798749.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060373, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351114.P13024542866936842174

`A063524(A289412(n+1))`
-/

namespace A351114.P13024542866936842174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A289412 (n + 1)).toNat

end

end A351114.P13024542866936842174

noncomputable section

/-- A351114: Characteristic function of balanced numbers: a(n) = 1 if phi(n) divides sigma(n), otherwise 0.

Offset 1, canonical program `A351114.P13024542866936842174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351114 (n : ℕ) : ℤ :=
  A351114.P13024542866936842174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353679.P2765792584734807979

`record[A000265(A006872(n+1))]`
-/

namespace A353679.P2765792584734807979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353679.P2765792584734807979

noncomputable section

/-- A353679: Odd numbers k for which phi(k) = phi(sigma(k)).

Offset 1, canonical program `A353679.P2765792584734807979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. -/
def A353679 (n : ℕ) : ℤ :=
  A353679.P2765792584734807979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. -/
def A353679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363616.P384024628921417800

`A363615(n+1)-A363617(n+1)`
-/

namespace A363616.P384024628921417800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363615 (n + 1) - A363617 (n + 1)

end

end A363616.P384024628921417800

noncomputable section

/-- A363616: Expansion of Sum_{k>0} x^(4*k)/(1+x^k)^4.

Offset 1, canonical program `A363616.P384024628921417800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363616 (n : ℕ) : ℤ :=
  A363616.P384024628921417800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363630.P14594292375729000675

`A363629(n+1)-A320900(n+1)`
-/

namespace A363630.P14594292375729000675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363629 (n + 1) - A320900 (n + 1)

end

end A363630.P14594292375729000675

noncomputable section

/-- A363630: Expansion of Sum_{k>0} (1/(1+x^k)^3 - 1).

Offset 1, canonical program `A363630.P14594292375729000675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363630 (n : ℕ) : ℤ :=
  A363630.P14594292375729000675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364013.P10793024115163397505

`2*A364017(n+1)-A364012(n+1)`
-/

namespace A364013.P10793024115163397505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364017 (n + 1) - A364012 (n + 1)

end

end A364013.P10793024115163397505

noncomputable section

/-- A364013: Expansion of Sum_{k>0} k^2 * x^k / (1 + x^(3*k)).

Offset 1, canonical program `A364013.P10793024115163397505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364013 (n : ℕ) : ℤ :=
  A364013.P10793024115163397505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364016.P4474703174552157399

`2*A364018(n+1)-A364015(n+1)`
-/

namespace A364016.P4474703174552157399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364018 (n + 1) - A364015 (n + 1)

end

end A364016.P4474703174552157399

noncomputable section

/-- A364016: Expansion of Sum_{k>0} k^2 * x^(2*k) / (1 + x^(3*k)).

Offset 1, canonical program `A364016.P4474703174552157399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364016 (n : ℕ) : ℤ :=
  A364016.P4474703174552157399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366250.P1848522872160911425

`filter[A391319(n+1), A380439(#)]`
-/

namespace A366250.P1848522872160911425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A366250.P1848522872160911425

noncomputable section

/-- A366250: Numbers k that are not powerful and do not have a strictly superior squarefree divisor.

Offset 1, canonical program `A366250.P1848522872160911425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A366250 (n : ℕ) : ℤ :=
  A366250.P1848522872160911425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A366250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370650.P533710446170374147

`filter[A000379(n+1), A373975(#)]`
-/

namespace A370650.P533710446170374147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A370650.P533710446170374147

noncomputable section

/-- A370650: Numbers whose number of infinitary divisors that are terms of A366242 is equal to the number of infinitary divisors that are terms of A366243.

Offset 1, canonical program `A370650.P533710446170374147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A370650 (n : ℕ) : ℤ :=
  A370650.P533710446170374147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. -/
def A370650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374150.P2027937700261000642

`A006450(2^n)`
-/

namespace A374150.P2027937700261000642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 ^ n)

end

end A374150.P2027937700261000642

noncomputable section

/-- A374150: a(n) is the (2^n)-th prime-indexed prime.

Offset 0, canonical program `A374150.P2027937700261000642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374150 (n : ℕ) : ℤ :=
  A374150.P2027937700261000642.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389072.P5718528657647475934

`1-A388286(n+1)+n`
-/

namespace A389072.P5718528657647475934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A388286 (n + 1) + (n : ℤ)

end

end A389072.P5718528657647475934

noncomputable section

/-- A389072: Möbius transform of A325974, where A325974 is the arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}.

Offset 1, canonical program `A389072.P5718528657647475934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389072 (n : ℕ) : ℤ :=
  A389072.P5718528657647475934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231278.P12030104603106713402

`A007089(p?[A297250(n+1)])`
-/

namespace A231278.P12030104603106713402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A231278.P12030104603106713402

noncomputable section

/-- A231278: Not necessarily palindromic primes of which initial and terminal digits are identical, as written in base 3.

Offset 1, canonical program `A231278.P12030104603106713402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A231278 (n : ℕ) : ℤ :=
  A231278.P12030104603106713402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A231278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255365.P11528583219773473008

`A033999(n)*A256505(n)`
-/

namespace A255365.P11528583219773473008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A256505 n

end

end A255365.P11528583219773473008

noncomputable section

/-- A255365: Expansion of phi(-x^3) * phi(-x^48) / chi(-x^16) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A255365.P11528583219773473008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255365 (n : ℕ) : ℤ :=
  A255365.P11528583219773473008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323760.P7258766165293403016

`A325030(n+1)/gcd(A324987(n+1), A325030(n+1))`
-/

namespace A323760.P7258766165293403016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (Int.gcd (A324987 (n + 1)) (A325030 (n + 1)) : ℚ)

end

end A323760.P7258766165293403016

noncomputable section

/-- A323760: Numerator of Product_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k and tau(k) = the number of the divisors of k.

Offset 1, canonical program `A323760.P7258766165293403016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A323760 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323760.P7258766165293403016.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A323760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337132.P808422596746096956

`A147582(A343228(n)+1)`
-/

namespace A337132.P808422596746096956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (A343228 n + 1).toNat

end

end A337132.P808422596746096956

noncomputable section

/-- A337132: a(n) is the number of squares at distance n from the central square of a Vicsek fractal.

Offset 0, canonical program `A337132.P808422596746096956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A337132 (n : ℕ) : ℤ :=
  A337132.P808422596746096956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A337132.provenance : SequenceMachineLib.Provenance := .conjectured

