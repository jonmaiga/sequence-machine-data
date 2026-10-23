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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A319650.P14664312154430006966

`A073138(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319650.P14664312154430006966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n - (n : ℤ)

end

end A319650.P14664312154430006966

noncomputable section

/-- A319650: a(n) = A073138(n) - n.

Offset 0, canonical program `A319650.P14664312154430006966`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319650 (n : ℕ) : ℤ :=
  A319650.P14664312154430006966.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319785.P17238291360876731257

`A073138(n)+A038573(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319785.P17238291360876731257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n + A038573 n

end

end A319785.P17238291360876731257

noncomputable section

/-- A319785: a(n) = A073138(n) + A038573(n).

Offset 0, canonical program `A319785.P17238291360876731257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319785 (n : ℕ) : ℤ :=
  A319785.P17238291360876731257.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A203998.P4307443962499752240

`A203996(n+1)-A203994(n+1)`
-/

namespace A203998.P4307443962499752240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203996 (n + 1) - A203994 (n + 1)

end

end A203998.P4307443962499752240

noncomputable section

/-- A203998: Symmetric matrix based on f(i,j)=max{i(j+1)-1,j(i+1)-1}, by antidiagonals.

Offset 1, canonical program `A203998.P4307443962499752240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203998 (n : ℕ) : ℤ :=
  A203998.P4307443962499752240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204006.P4882152759025976317

`A204002(n+1)-2`
-/

namespace A204006.P4882152759025976317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204002 (n + 1) - 2

end

end A204006.P4882152759025976317

noncomputable section

/-- A204006: Symmetric matrix based on f(i,j) = min{2i+j-2,i+2j-2}, by antidiagonals.

Offset 1, canonical program `A204006.P4882152759025976317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204006 (n : ℕ) : ℤ :=
  A204006.P4882152759025976317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204112.P12596033136160775492

`A000045(A204030(n+1))`
-/

namespace A204112.P12596033136160775492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A204030 (n + 1)).toNat

end

end A204112.P12596033136160775492

noncomputable section

/-- A204112: Symmetric matrix based on f(i,j) = gcd(F(i+1), F(j+1)), where F=A000045 (Fibonacci numbers), by antidiagonals.

Offset 1, canonical program `A204112.P12596033136160775492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204112 (n : ℕ) : ℤ :=
  A204112.P12596033136160775492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204156.P2950584542744823295

`A204022(n+1)+A049581(n)`
-/

namespace A204156.P2950584542744823295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204022 (n + 1) + A049581 n

end

end A204156.P2950584542744823295

noncomputable section

/-- A204156: Symmetric matrix based on f(i,j)=max(3i-j, 3j-i), by antidiagonals.

Offset 1, canonical program `A204156.P2950584542744823295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204156 (n : ℕ) : ℤ :=
  A204156.P2950584542744823295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205680.P15285534464945859236

`A000040(A205678(n+1))`
-/

namespace A205680.P15285534464945859236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205678 (n + 1)).toNat

end

end A205680.P15285534464945859236

noncomputable section

/-- A205680: Prime(A205678(n)), the n-th number s(j) such that 4 divides s(k)-s(j), where the pairs (k,j) are given by A205677 and A205678.

Offset 1, canonical program `A205680.P15285534464945859236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205680 (n : ℕ) : ℤ :=
  A205680.P15285534464945859236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205692.P12020917738335032980

`A002260(A205690(n+1))`
-/

namespace A205692.P12020917738335032980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205690 (n + 1)).toNat

end

end A205692.P12020917738335032980

noncomputable section

/-- A205692: The number j such that 6 divides prime(k)-prime(j), where k(n)=A205691(n).

Offset 1, canonical program `A205692.P12020917738335032980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5478 terms. -/
def A205692 (n : ℕ) : ℤ :=
  A205692.P12020917738335032980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5478 terms. -/
def A205692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213819.P7092098208098070007

`A213761(n+1)+abs(A122432(n))`
-/

namespace A213819.P7092098208098070007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) + |A122432 n|

end

end A213819.P7092098208098070007

noncomputable section

/-- A213819: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 3*n-4+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213819.P7092098208098070007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213819 (n : ℕ) : ℤ :=
  A213819.P7092098208098070007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213821.P9578737112397043331

`A213771(n+1)+A049777(n+1)`
-/

namespace A213821.P9578737112397043331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213771 (n + 1) + A049777 (n + 1)

end

end A213821.P9578737112397043331

noncomputable section

/-- A213821: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213821.P9578737112397043331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213821 (n : ℕ) : ℤ :=
  A213821.P9578737112397043331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213841.P5709133087758580350

`2*A213752(n+1)-A055461(n+1)`
-/

namespace A213841.P5709133087758580350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213752 (n + 1) - A055461 (n + 1)

end

end A213841.P5709133087758580350

noncomputable section

/-- A213841: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 4*n-7+4*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213841.P5709133087758580350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213841 (n : ℕ) : ℤ :=
  A213841.P5709133087758580350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213844.P11503971655518464143

`A055461(n+1)+2*A213752(n+1)`
-/

namespace A213844.P11503971655518464143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + 2 * A213752 (n + 1)

end

end A213844.P11503971655518464143

noncomputable section

/-- A213844: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = 4*n-5+4*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213844.P11503971655518464143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213844 (n : ℕ) : ℤ :=
  A213844.P11503971655518464143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213847.P13086117806875613018

`A213752(n+1)+2*A213750(n+1)`
-/

namespace A213847.P13086117806875613018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + 2 * A213750 (n + 1)

end

end A213847.P13086117806875613018

noncomputable section

/-- A213847: Rectangular array: (row n) = b**c, where b(h) = 4*h-1, c(h) = 2*n-3+2*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213847.P13086117806875613018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213847 (n : ℕ) : ℤ :=
  A213847.P13086117806875613018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220075.P13613845482449315163

`∑[A220073(n+1)-n*A010054(n)]`
-/

namespace A220075.P13613845482449315163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) - (n : ℤ) * A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220075.P13613845482449315163

noncomputable section

/-- A220075: Partial sums in rows of A220073, triangle read by rows.

Offset 1, canonical program `A220075.P13613845482449315163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A220075 (n : ℕ) : ℤ :=
  A220075.P13613845482449315163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A220075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220508.P6866650714193173536

`A033638(A204022(n+1))-(A114327(n)+1)`
-/

namespace A220508.P6866650714193173536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A204022 (n + 1)).toNat - (A114327 n + 1)

end

end A220508.P6866650714193173536

noncomputable section

/-- A220508: T(n,k) = n^2 + k if k <= n, otherwise T(n,k) = k*(k + 2) - n; square array T(n,k) read by ascending antidiagonals (n >= 0, k >= 0).

Offset 0, canonical program `A220508.P6866650714193173536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220508 (n : ℕ) : ℤ :=
  A220508.P6866650714193173536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A220508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225950.P5976257078115682793

`A222946(n+2)%2*A120070(n+2)`
-/

namespace A225950.P5976257078115682793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222946 (n + 2)) 2 * A120070 (n + 2)

end

end A225950.P5976257078115682793

noncomputable section

/-- A225950: Triangle for odd legs of primitive Pythagorean triangles.

Offset 2, canonical program `A225950.P5976257078115682793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A225950 (n : ℕ) : ℤ :=
  A225950.P5976257078115682793.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A225950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239287.P8882484153100334312

`val(A115216(n), 4)`
-/

namespace A239287.P8882484153100334312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A115216 n).toNat 4

end

end A239287.P8882484153100334312

noncomputable section

/-- A239287: Triangle T(n,k), 0 <= k <= n, read by rows: T(n,k) = floor(n/2) - min(k,n-k).

Offset 0, canonical program `A239287.P8882484153100334312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A239287 (n : ℕ) : ℤ :=
  (A239287.P8882484153100334312.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A239287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257522.P1857815431269029601

`A003991(n+1)/gcd(A003991(n+1), A141387(n))`
-/

namespace A257522.P1857815431269029601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (Int.gcd (A003991 (n + 1)) (A141387 n) : ℚ)

end

end A257522.P1857815431269029601

noncomputable section

/-- A257522: Table T(i,j) = denominator of (1/i + 1/j) = i*j/gcd(i*j,i+j) read by antidiagonals (i >= 1, j >= 1).

Offset 1, canonical program `A257522.P1857815431269029601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257522 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A257522.P1857815431269029601.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269845.P12932834634170086123

`A181118(n+1)²`
-/

namespace A269845.P12932834634170086123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (n + 1) ^ 2

end

end A269845.P12932834634170086123

noncomputable section

/-- A269845: Irregular triangle read by rows: T(n,k) = (k/2+1/2)^2 if odd-k otherwise T(n,k) = (n-k/2)^2 where n >= 1, k = 0..2*n-1.

Offset 1, canonical program `A269845.P12932834634170086123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A269845 (n : ℕ) : ℤ :=
  A269845.P12932834634170086123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A269845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279211.P6609687660226102696

`A002260(n+1)+A204002(n+1)-4`
-/

namespace A279211.P6609687660226102696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A204002 (n + 1) - 4)

end

end A279211.P6609687660226102696

noncomputable section

/-- A279211: Fill an array by antidiagonals upwards; in the n-th cell, enter the number of earlier cells that can be seen from that cell.

Offset 0, canonical program `A279211.P6609687660226102696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A279211 (n : ℕ) : ℤ :=
  A279211.P6609687660226102696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A279211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281014.P10699821202680531726

`∩[A280998(n+1), A280999(n+1)]`
-/

namespace A281014.P10699821202680531726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281014.P10699821202680531726

noncomputable section

/-- A281014: Numbers with both prime number of 0's and prime number of 1's in their binary reflected Gray code representation.

Offset 1, canonical program `A281014.P10699821202680531726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3400 terms. -/
def A281014 (n : ℕ) : ℤ :=
  (A281014.P10699821202680531726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3400 terms. -/
def A281014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283845.P12175913799182392741

`A123231(A204022(n+1))`
-/

namespace A283845.P12175913799182392741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A204022 (n + 1)).toNat

end

end A283845.P12175913799182392741

noncomputable section

/-- A283845: Square array read by antidiagonals: T(1,1) = T(1,2) = T(2,1) = T(2,2) = 1; thereafter T(m,n) = min {T(m,n-2) + T(m,n-1), T(m-2,n) + T(m-1,n), T(m-2,n-2) + T(m-1,n-1)}.

Offset 1, canonical program `A283845.P12175913799182392741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A283845 (n : ℕ) : ℤ :=
  A283845.P12175913799182392741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A283845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290260.P7398993785717858421

`A277937(A035327(n+1))`
-/

namespace A290260.P7398993785717858421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A035327 (n + 1)).toNat

end

end A290260.P7398993785717858421

noncomputable section

/-- A290260: a(n) = number of isolated 0's in the binary representation of n.

Offset 1, canonical program `A290260.P7398993785717858421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290260 (n : ℕ) : ℤ :=
  A290260.P7398993785717858421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309759.P11154735191982409754

`A115216(A292564(n))`
-/

namespace A309759.P11154735191982409754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (A292564 n).toNat

end

end A309759.P11154735191982409754

noncomputable section

/-- A309759: Numbers that are sums of consecutive powers of 4.

Offset 1, canonical program `A309759.P11154735191982409754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A309759 (n : ℕ) : ℤ :=
  A309759.P11154735191982409754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A309759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313928.P15528941747193858582

`2*A313916(n)-A313905(n)`
-/

namespace A313928.P15528941747193858582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313916 n - A313905 n

end

end A313928.P15528941747193858582

noncomputable section

/-- A313928: Coordination sequence Gal.5.302.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313928.P15528941747193858582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A313928 (n : ℕ) : ℤ :=
  A313928.P15528941747193858582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A313928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315489.P10835335937589495706

`A330025(n)+A313801(n)`
-/

namespace A315489.P10835335937589495706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313801 n

end

end A315489.P10835335937589495706

noncomputable section

/-- A315489: Coordination sequence Gal.5.292.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315489.P10835335937589495706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315489 (n : ℕ) : ℤ :=
  A315489.P10835335937589495706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. -/
def A315489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315508.P17212227273649796777

`A315069(n)+A253262(n)`
-/

namespace A315508.P17212227273649796777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315069 n + A253262 n

end

end A315508.P17212227273649796777

noncomputable section

/-- A315508: Coordination sequence Gal.6.325.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315508.P17212227273649796777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315508 (n : ℕ) : ℤ :=
  A315508.P17212227273649796777.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A315508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316272.P3024077072028453439

`A073846(A304337(n+1))`
-/

namespace A316272.P3024077072028453439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A304337 (n + 1)).toNat

end

end A316272.P3024077072028453439

noncomputable section

/-- A316272: A fractal-like sequence: erasing all pairs of consecutive terms that include a prime and a composite number (in any order) leaves the sequence unchanged.

Offset 1, canonical program `A316272.P3024077072028453439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A316272 (n : ℕ) : ℤ :=
  A316272.P3024077072028453439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A316272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316716.P5868275179206833086

`A277937(A003726(n+1))`
-/

namespace A316716.P5868275179206833086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A003726 (n + 1)).toNat

end

end A316716.P5868275179206833086

noncomputable section

/-- A316716: a(n) is the number of 2s in A316713(n). That is, a(n) is the number of A-sequences (A278040) used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316716.P5868275179206833086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316716 (n : ℕ) : ℤ :=
  A316716.P5868275179206833086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A316716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325095.P4478772866640746713

`a(n-1)+a(A115378(n))` with `a(0)=1`
-/

namespace A325095.P4478772866640746713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A115378 n).toNat

end

end A325095.P4478772866640746713

noncomputable section

/-- A325095: Number of subsets of {1...n} with no binary carries.

Offset 0, canonical program `A325095.P4478772866640746713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325095 (n : ℕ) : ℤ :=
  (A325095.P4478772866640746713.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325541.P8609790583688640712

`Δ[A325539(n+1)]`
-/

namespace A325541.P8609790583688640712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A325541.P8609790583688640712

noncomputable section

/-- A325541: Difference sequence of A325539.

Offset 1, canonical program `A325541.P8609790583688640712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A325541 (n : ℕ) : ℤ :=
  A325541.P8609790583688640712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A325541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327008.P7042617821927860861

`A029837(∑[A246017(A055941(n+3))])`
-/

namespace A327008.P7042617821927860861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246017 (A055941 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327008.P7042617821927860861

noncomputable section

/-- A327008: a(n) = number of iterations of f(x)=floor((x^2+n^2)/(2x)) starting at x=n^2 to reach the value n.

Offset 1, canonical program `A327008.P7042617821927860861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A327008 (n : ℕ) : ℤ :=
  A327008.P7042617821927860861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A327008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334923.P17285238801038389709

`2*A003991(n+1)-A334922(n+1)`
-/

namespace A334923.P17285238801038389709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) - A334922 (n + 1)

end

end A334923.P17285238801038389709

noncomputable section

/-- A334923: Square array T(n,k) = ((5/2)*n*k - (1/2)*A319929(n,k))/2, n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A334923.P17285238801038389709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A334923 (n : ℕ) : ℤ :=
  A334923.P17285238801038389709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A334923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344345.P14857744057970681340

`eq[1, A320042(n+1)]+1`
-/

namespace A344345.P14857744057970681340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320042 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344345.P14857744057970681340

noncomputable section

/-- A344345: Digitally balanced numbers in Gray code: numbers whose binary reflected Gray code has the same number of 0's as 1's.

Offset 1, canonical program `A344345.P14857744057970681340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A344345 (n : ℕ) : ℤ :=
  (A344345.P14857744057970681340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A344345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349039.P8820889069148107615

`Δ[n²]-A101468(n)`
-/

namespace A349039.P8820889069148107615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A101468 n

end

end A349039.P8820889069148107615

noncomputable section

/-- A349039: Square array T(n, k) read by antidiagonals, n, k >= 0; T(n, k) = n^2 - n*k + k^2.

Offset 0, canonical program `A349039.P8820889069148107615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349039 (n : ℕ) : ℤ :=
  A349039.P8820889069148107615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355342.P6242898558751605481

`A062157(A003056(n))*A355341(n)`
-/

namespace A355342.P6242898558751605481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A003056 n).toNat * A355341 n

end

end A355342.P6242898558751605481

noncomputable section

/-- A355342: G.f.: A(x) = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * C(x)^n, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A355342.P6242898558751605481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355342 (n : ℕ) : ℤ :=
  A355342.P6242898558751605481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A355342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372332.P7189402295266121524

`log2(A372331(n+1))`
-/

namespace A372332.P7189402295266121524
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A372331 (n + 1) : ℝ)

end

end A372332.P7189402295266121524

noncomputable section

/-- A372332: The number of "Fermi-Dirac primes" (A050376) that are noninfinitary divisors of n.

Offset 1, canonical program `A372332.P7189402295266121524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372332 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372332.P7189402295266121524.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372873.P8475125270225187405

`A098158(n)*A116588(n)`
-/

namespace A372873.P8475125270225187405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n * A116588 n

end

end A372873.P8475125270225187405

noncomputable section

/-- A372873: Triangle read by rows: T(n,k) is the number of flattened Catalan words of length n with exactly k runs of descents.

Offset 1, canonical program `A372873.P8475125270225187405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372873 (n : ℕ) : ℤ :=
  A372873.P8475125270225187405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378145.P15300547793781424143

`A106566(n+1)+A106566(n)`
-/

namespace A378145.P15300547793781424143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (n + 1) + A106566 n

end

end A378145.P15300547793781424143

noncomputable section

/-- A378145: Riordan triangle (1 + x * C(x), x * C(x)), where C(x) is g.f. of A000108.

Offset 0, canonical program `A378145.P15300547793781424143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378145 (n : ℕ) : ℤ :=
  A378145.P15300547793781424143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378145.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385108.P4617157348366069827

`A033436(A376102(n))+1`
-/

namespace A385108.P4617157348366069827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (A376102 n).toNat + 1

end

end A385108.P4617157348366069827

noncomputable section

/-- A385108: Triangle a(n,k) read by antidiagonals: a(n,k) is the number of dots in the k-augmented centered triangle of order n, k>=0, n>=1.

Offset 1, canonical program `A385108.P4617157348366069827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A385108 (n : ℕ) : ℤ :=
  A385108.P4617157348366069827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A385108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385865.P12036821787748699265

`A003057(n+2)-A233558(n+2)`
-/

namespace A385865.P12036821787748699265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A233558 (n + 2)

end

end A385865.P12036821787748699265

noncomputable section

/-- A385865: Triangle read by rows where T(n,k), for 1 <= k < n, is the column number where (n-k)^2 occurs in an n X n grid filled rowwise with the numbers 1 to n^2.

Offset 2, canonical program `A385865.P12036821787748699265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A385865 (n : ℕ) : ℤ :=
  A385865.P12036821787748699265.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A385865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204087.P6569582494000110394

`A003418(A003056(n))/A003418(A003984(n))`
-/

namespace A204087.P6569582494000110394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (A003056 n).toNat : ℚ) / (A003418 (A003984 n).toNat : ℚ)

end

end A204087.P6569582494000110394

noncomputable section

/-- A204087: Reduced Pascal triangle: C_R(n,m) = A003418(n) / max(A003418(m), A003418(n-m)), m=0,...,n.

Offset 0, canonical program `A204087.P6569582494000110394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204087 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204087.P6569582494000110394.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204204.P9788490803614695615

`A204202(n+1)+A008949(n)`
-/

namespace A204204.P9788490803614695615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204202 (n + 1) + A008949 n

end

end A204204.P9788490803614695615

noncomputable section

/-- A204204: Triangle based on (0,3/4,1) averaging array.

Offset 1, canonical program `A204204.P9788490803614695615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204204 (n : ℕ) : ℤ :=
  A204204.P9788490803614695615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204205.P18235704100513698987

`2*A204201(n+1)-A008949(n)`
-/

namespace A204205.P18235704100513698987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204201 (n + 1) - A008949 n

end

end A204205.P18235704100513698987

noncomputable section

/-- A204205: Triangle based on (0,1/5,1) averaging array.

Offset 1, canonical program `A204205.P18235704100513698987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204205 (n : ℕ) : ℤ :=
  A204205.P18235704100513698987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205550.P12428340349728459363

`A258993(A143182(n)+A057944(n))`
-/

namespace A205550.P12428340349728459363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (A143182 n + A057944 n).toNat

end

end A205550.P12428340349728459363

noncomputable section

/-- A205550: Symmetric matrix by antidiagonals: C(max(g(i),g(j)),min(g(i),g(j))), where g(k)=2k-1.

Offset 1, canonical program `A205550.P12428340349728459363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A205550 (n : ℕ) : ℤ :=
  A205550.P12428340349728459363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A205550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205674.P5002100609961987848

`A000040(A205547(n+1))`
-/

namespace A205674.P5002100609961987848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205547 (n + 1)).toNat

end

end A205674.P5002100609961987848

noncomputable section

/-- A205674: Prime(A202560(n)), the n-th number s(k) such that 3 divides s(k)-s(j) for some j

Offset 1, canonical program `A205674.P5002100609961987848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205674 (n : ℕ) : ℤ :=
  A205674.P5002100609961987848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207636.P15349936276195465793

`2*A038207(n)-A183190(n)`
-/

namespace A207636.P15349936276195465793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A183190 n

end

end A207636.P15349936276195465793

noncomputable section

/-- A207636: Triangle of coefficients of polynomials v(n,x) jointly generated with A207635; see Formula section.

Offset 1, canonical program `A207636.P15349936276195465793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207636 (n : ℕ) : ℤ :=
  A207636.P15349936276195465793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208913.P2125602932926388690

`A059268(n)*A133567(n+1)`
-/

namespace A208913.P2125602932926388690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A133567 (n + 1)

end

end A208913.P2125602932926388690

noncomputable section

/-- A208913: Triangle of coefficients of polynomials u(n,x) jointly generated with A208914; see the Formula section.

Offset 1, canonical program `A208913.P2125602932926388690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208913 (n : ℕ) : ℤ :=
  A208913.P2125602932926388690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209561.P13297843710123169914

`A051597(n)-a(n-1)` with `a(0)=1`
-/

namespace A209561.P13297843710123169914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051597 n - a (n - 1)

end

end A209561.P13297843710123169914

noncomputable section

/-- A209561: Triangle of coefficients of polynomials u(n,x) jointly generated with A209562; see the Formula section.

Offset 1, canonical program `A209561.P13297843710123169914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209561 (n : ℕ) : ℤ :=
  A209561.P13297843710123169914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209771.P15471991878597447221

`ceil(A208324(n)/2)`
-/

namespace A209771.P15471991878597447221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A208324 n : ℚ) / 2⌉

end

end A209771.P15471991878597447221

noncomputable section

/-- A209771: Triangle of coefficients of polynomials u(n,x) jointly generated with A209772; see the Formula section.

Offset 1, canonical program `A209771.P15471991878597447221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209771 (n : ℕ) : ℤ :=
  A209771.P15471991878597447221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222404.P14214754150695596768

`2*A222403(n)`
-/

namespace A222404.P14214754150695596768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222403 n

end

end A222404.P14214754150695596768

noncomputable section

/-- A222404: Triangle read by rows: left and right edges are A002378, interior entries are filled in using the Pascal triangle rule.

Offset 0, canonical program `A222404.P14214754150695596768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222404 (n : ℕ) : ℤ :=
  A222404.P14214754150695596768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228370.P14690688600162977036

`A228371(n)+a(n-1)` with `a(0)=0`
-/

namespace A228370.P14690688600162977036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A228371 n + a (n - 1)

end

end A228370.P14690688600162977036

noncomputable section

/-- A228370: Toothpick sequence from a diagram of compositions of the positive integers (see Comments lines for definition).

Offset 0, canonical program `A228370.P14690688600162977036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228370 (n : ℕ) : ℤ :=
  A228370.P14690688600162977036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245213.P16321820402832536688

`lt[A245212(n+1), n]+1`
-/

namespace A245213.P16321820402832536688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A245213.P16321820402832536688

noncomputable section

/-- A245213: Numbers n such that A245212(n) < n.

Offset 1, canonical program `A245213.P16321820402832536688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A245213 (n : ℕ) : ℤ :=
  (A245213.P16321820402832536688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A245213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245214.P5252668247013556248

`lt[A245212(A028310(n)), 0]`
-/

namespace A245214.P5252668247013556248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A245214.P5252668247013556248

noncomputable section

/-- A245214: Numbers k such that A245212(k) < 0.

Offset 1, canonical program `A245214.P5252668247013556248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A245214 (n : ℕ) : ℤ :=
  (A245214.P5252668247013556248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. -/
def A245214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255122.P1477362535082678246

`A255061(1+A255121(n))-A255120(n)`
-/

namespace A255122.P1477362535082678246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255061 (1 + A255121 n).toNat - A255120 n

end

end A255122.P1477362535082678246

noncomputable section

/-- A255122: Simple self-inverse permutation of natural numbers: after zero, list each block of A255071(n) numbers in reverse order, from A255061(n+1) to A255062(n).

Offset 0, canonical program `A255122.P1477362535082678246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255120, A255121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255122 (n : ℕ) : ℤ :=
  A255122.P1477362535082678246.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255120, A255121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A255122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A257852.P9714662518285997073

`A257791(n+1)-A257499(n+1)`
-/

namespace A257852.P9714662518285997073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257791 (n + 1) - A257499 (n + 1)

end

end A257852.P9714662518285997073

noncomputable section

/-- A257852: Array A read by upward antidiagonals in which the entry A(n,k) in row n and column k is defined by A(n,k) = (2^n*(6*k - 3 - 2*(-1)^n) - 1)/3, n,k >= 1.

Offset 1, canonical program `A257852.P9714662518285997073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257852 (n : ℕ) : ℤ :=
  A257852.P9714662518285997073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263832.P17990265328339962167

`(3*A263828(n+1))%A263827(n+1)`
-/

namespace A263832.P17990265328339962167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A263828 (n + 1)) (A263827 (n + 1))

end

end A263832.P17990265328339962167

noncomputable section

/-- A263832: The number c_{Cc,pi_1(B_2)}(n) of the second amphicosm n-coverings over the second amphicosm.

Offset 1, canonical program `A263832.P17990265328339962167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263832 (n : ℕ) : ℤ :=
  A263832.P17990265328339962167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265890.P7956634040998674457

`A099563(A265609(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265890.P7956634040998674457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A265609 n).toNat

end

end A265890.P7956634040998674457

noncomputable section

/-- A265890: Array read by ascending antidiagonals: A(n,k) = A099563(A265609(n,k)), with n as row >= 0, k as column >= 0; the most significant digit in the factorial base representation of rising factorial n^(k) = (n+k-1)!/(n-1)!.

Offset 0, canonical program `A265890.P7956634040998674457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A265609, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265890 (n : ℕ) : ℤ :=
  A265890.P7956634040998674457.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099563, A265609, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265890.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268295.P2894376950606773316

`ceil(A109128(n²)/2)`
-/

namespace A268295.P2894376950606773316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 (n ^ 2) : ℚ) / 2⌉

end

end A268295.P2894376950606773316

noncomputable section

/-- A268295: Terms at square positions in Pascal's triangle when in flattened form.

Offset 0, canonical program `A268295.P2894376950606773316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A268295 (n : ℕ) : ℤ :=
  A268295.P2894376950606773316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A268295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272700.P8290029814233016297

`∑[A169699(n)]`
-/

namespace A272700.P8290029814233016297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272700.P8290029814233016297

noncomputable section

/-- A272700: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272700.P8290029814233016297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4463 terms. -/
def A272700 (n : ℕ) : ℤ :=
  A272700.P8290029814233016297.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4463 terms. -/
def A272700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272702.P13388874115026706064

`A000007(n)+A016754(n)-A169699(n)`
-/

namespace A272702.P13388874115026706064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A169699 n)

end

end A272702.P13388874115026706064

noncomputable section

/-- A272702: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272702.P13388874115026706064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2839 terms. -/
def A272702 (n : ℕ) : ℤ :=
  A272702.P13388874115026706064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2839 terms. -/
def A272702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272704.P6526107480624225321

`Δ[A000007(n)+A016754(n)-A169699(n)]`
-/

namespace A272704.P6526107480624225321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A169699 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272704.P6526107480624225321

noncomputable section

/-- A272704: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272704.P6526107480624225321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2882 terms. -/
def A272704 (n : ℕ) : ℤ :=
  A272704.P6526107480624225321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2882 terms. -/
def A272704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274954.P10035714956963324201

`A000217(p?[A133700(3*n+2)])*A006498(3*n+1)`
-/

namespace A274954.P10035714956963324201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A006498 (3 * n + 1)

end

end A274954.P10035714956963324201

noncomputable section

/-- A274954: Number of n X 3 0..2 arrays with no element equal to any value at offset (-1,-1) (-2,0) or (0,-2) and new values introduced in order 0..2.

Offset 1, canonical program `A274954.P10035714956963324201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A274954 (n : ℕ) : ℤ :=
  A274954.P10035714956963324201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A274954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275925.P1014596103965212206

`7-gcd(4, A003796(n+1))`
-/

namespace A275925.P1014596103965212206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (Int.gcd 4 (A003796 (n + 1)) : ℤ)

end

end A275925.P1014596103965212206

noncomputable section

/-- A275925: Trajectory of 3 under repeated application of the morphism sigma: 3 -> 3656, 5 -> 365656, 6 -> 3656656.

Offset 1, canonical program `A275925.P1014596103965212206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275925 (n : ℕ) : ℤ :=
  A275925.P1014596103965212206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282252.P10656512343650803153

`A001405(A025581(n))*A109187(n)`
-/

namespace A282252.P10656512343650803153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A025581 n).toNat * A109187 n

end

end A282252.P10656512343650803153

noncomputable section

/-- A282252: Exponential Riordan array [Bessel_I(0,2*x)^2, x].

Offset 0, canonical program `A282252.P10656512343650803153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A282252 (n : ℕ) : ℤ :=
  A282252.P10656512343650803153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A282252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285117.P11572243704474235123

`2*A285116(n)-A007318(n)`
-/

namespace A285117.P11572243704474235123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285116 n - A007318 n

end

end A285117.P11572243704474235123

noncomputable section

/-- A285117: Triangle read by rows: T(0,n) = T(n,n) = 1; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) XOR C(n-1,k), where C(n,k) is binomial coefficient (A007318) and XOR is bitwise-XOR (A003987).

Offset 0, canonical program `A285117.P11572243704474235123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285117 (n : ℕ) : ℤ :=
  A285117.P11572243704474235123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285118.P16406240334695016361

`A007318(n)-A285116(n)`
-/

namespace A285118.P16406240334695016361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A285116 n

end

end A285118.P16406240334695016361

noncomputable section

/-- A285118: Triangle read by rows: T(0,n) = T(n,n) = 0; and for n > 0, 0 < k < n, T(n,k) = C(n-1,k-1) AND C(n-1,k), where C(n,k) is binomial coefficient (A007318) & AND is bitwise-AND (A004198).

Offset 0, canonical program `A285118.P16406240334695016361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285118 (n : ℕ) : ℤ :=
  A285118.P16406240334695016361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286563.P18138317205327324667

`dr(A286564(A038722(n+1)))`
-/

namespace A286563.P18138317205327324667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A286564 (A038722 (n + 1)).toNat)

end

end A286563.P18138317205327324667

noncomputable section

/-- A286563: Triangular table T(n,k) read by rows: T(n,1) = 1, and for 1 < k <= n, T(n,k) = the highest exponent e such that k^e divides n.

Offset 1, canonical program `A286563.P18138317205327324667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A286563 (n : ℕ) : ℤ :=
  (A286563.P18138317205327324667.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A286563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286784.P14644862398582893663

`A110608(n)/A004736(n+1)`
-/

namespace A286784.P14644862398582893663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A286784.P14644862398582893663

noncomputable section

/-- A286784: Triangle read by rows: T(n, k) = binomial(2*n, n + k) * binomial(n + 1, k)/(n + 1).

Offset 0, canonical program `A286784.P14644862398582893663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7626 terms. -/
def A286784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286784.P14644862398582893663.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7626 terms. -/
def A286784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288571.P7040563331996419951

`2*A133700(n+1)-A007425(n+1)`
-/

namespace A288571.P7040563331996419951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133700 (n + 1) - A007425 (n + 1)

end

end A288571.P7040563331996419951

noncomputable section

/-- A288571: a(n) = Sum_{d|n} (-1)^(n/d+1)*tau(d), where tau = number of divisors (A000005).

Offset 1, canonical program `A288571.P7040563331996419951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288571 (n : ℕ) : ℤ :=
  A288571.P7040563331996419951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293600.P7342064870478371486

`A063007(n)/A027555(n)`
-/

namespace A293600.P7342064870478371486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A027555 n : ℚ)

end

end A293600.P7342064870478371486

noncomputable section

/-- A293600: G.f. A(x,y) = Sum_{-oo..+oo} (x - y^n)^(n+1), as a flattened rectangular array of coefficients T(n,k) of x^n * y^(k*(n+k-1)) in A(x,y) for n>=1.

Offset 1, canonical program `A293600.P7342064870478371486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9136 terms. -/
def A293600 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293600.P7342064870478371486.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9136 terms. -/
def A293600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303901.P18251698055895516582

`A059268(n)*A164942(n)`
-/

namespace A303901.P18251698055895516582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A164942 n

end

end A303901.P18251698055895516582

noncomputable section

/-- A303901: Triangle read by rows of coefficients in expansion of (3-2x)^n, where n is a nonnegative integer.

Offset 0, canonical program `A303901.P18251698055895516582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303901 (n : ℕ) : ℤ :=
  A303901.P18251698055895516582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303986.P14807797264890215683

`A033999(A002262(n))*A113025(n)`
-/

namespace A303986.P14807797264890215683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A113025 n

end

end A303986.P14807797264890215683

noncomputable section

/-- A303986: Triangle of derivatives of the Niven polynomials evaluated at 0.

Offset 0, canonical program `A303986.P14807797264890215683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1483 terms. -/
def A303986 (n : ℕ) : ℤ :=
  A303986.P14807797264890215683.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1483 terms. -/
def A303986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304572.P1363963036755555797

`A304571(n+1)-A304570(n+1)`
-/

namespace A304572.P1363963036755555797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (n + 1) - A304570 (n + 1)

end

end A304572.P1363963036755555797

noncomputable section

/-- A304572: Triangle read by rows: T(n,k) = 1 if k does not divide n^e, positive nonzero integers, and gcd(n,k) > 1.

Offset 1, canonical program `A304572.P1363963036755555797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304572 (n : ℕ) : ℤ :=
  A304572.P1363963036755555797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307360.P8284333854152591718

`∪[A089581(n+1), A166684(n+1)]`
-/

namespace A307360.P8284333854152591718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A307360.P8284333854152591718

noncomputable section

/-- A307360: A sequence in which every divisor other than 1 is used at most three times.

Offset 1, canonical program `A307360.P8284333854152591718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307360 (n : ℕ) : ℤ :=
  (A307360.P8284333854152591718.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308737.P11826907470254659242

`2*A110552(n+1)-A007318(n)`
-/

namespace A308737.P11826907470254659242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110552 (n + 1) - A007318 n

end

end A308737.P11826907470254659242

noncomputable section

/-- A308737: Triangle of scaled 1-tiered binomial coefficients, T(n,k) = 2^(n+1)*(n-k,k)_1 (n >= 0, 0 <= k <= n), where (N,M)_1 is the 1-tiered binomial coefficient.

Offset 0, canonical program `A308737.P11826907470254659242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A308737 (n : ℕ) : ℤ :=
  A308737.P11826907470254659242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A308737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315270.P17695513051592214442

`A315203(n)+A002266(n+2)`
-/

namespace A315270.P17695513051592214442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315203 n + A002266 (n + 2)

end

end A315270.P17695513051592214442

noncomputable section

/-- A315270: Coordination sequence Gal.5.137.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315270.P17695513051592214442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A315270 (n : ℕ) : ℤ :=
  A315270.P17695513051592214442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A315270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315402.P15354869192594561044

`A314740(n)+A253262(n)`
-/

namespace A315402.P15354869192594561044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314740 n + A253262 n

end

end A315402.P15354869192594561044

noncomputable section

/-- A315402: Coordination sequence Gal.5.116.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315402.P15354869192594561044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A315402 (n : ℕ) : ℤ :=
  A315402.P15354869192594561044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A315402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323211.P6731529718550413430

`a(n-1)-A113313(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A323211.P6731529718550413430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - A113313 n

end

end A323211.P6731529718550413430

noncomputable section

/-- A323211: Level 1 of Pascal's pyramid. T(n, k) triangle read by rows for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A323211.P6731529718550413430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323211 (n : ℕ) : ℤ :=
  A323211.P6731529718550413430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323231.P6944103331787896278

`a(n-1)-A113313(n)` with `a(0)=1, a(1)=2`
-/

namespace A323231.P6944103331787896278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - A113313 n

end

end A323231.P6944103331787896278

noncomputable section

/-- A323231: A(n, k) = [x^k] (1/(1-x) + x/(1-x)^n), square array read by descending antidiagonals for n, k >= 0.

Offset 0, canonical program `A323231.P6944103331787896278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323231 (n : ℕ) : ℤ :=
  A323231.P6944103331787896278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325424.P14992744106236860470

`A325499(n)+a(n-1)` with `a(0)=2`
-/

namespace A325424.P14992744106236860470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A325499 n + a (n - 1)

end

end A325424.P14992744106236860470

noncomputable section

/-- A325424: Complement of A036668: numbers not of the form 2^i*3^j*k, i + j even, (k,6) = 1.

Offset 1, canonical program `A325424.P14992744106236860470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325424 (n : ℕ) : ℤ :=
  A325424.P14992744106236860470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326417.P3226228404223211668

`∑{d}[n+1, A133700(#)]`
-/

namespace A326417.P3226228404223211668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133700 d

end

end A326417.P3226228404223211668

noncomputable section

/-- A326417: Dirichlet g.f.: zeta(s)^4 * (1 - 2^(-s)).

Offset 1, canonical program `A326417.P3226228404223211668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326417 (n : ℕ) : ℤ :=
  A326417.P3226228404223211668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326820.P7475238842077640535

`A003984(lt[A099026(n), 1])`
-/

namespace A326820.P7475238842077640535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A326820.P7475238842077640535

noncomputable section

/-- A326820: Irregular triangle read by rows; for n >= 0, the n-th row corresponds to the elements of the set {(n-k) OR k, k = 0..n}, in ascending order (where OR denotes the bitwise OR operator).

Offset 0, canonical program `A326820.P7475238842077640535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A326820 (n : ℕ) : ℤ :=
  A326820.P7475238842077640535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A326820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327259.P9875520771987652429

`A003991(n+1)+4*(A003991(n+1)-A334922(n+1))`
-/

namespace A327259.P9875520771987652429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + 4 * (A003991 (n + 1) - A334922 (n + 1))

end

end A327259.P9875520771987652429

noncomputable section

/-- A327259: Array T(n,k) = 2*n*k - A319929(n,k), n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A327259.P9875520771987652429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A327259 (n : ℕ) : ℤ :=
  A327259.P9875520771987652429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A327259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332496.P9101858789091568414

`A124847(n+1)-A127954(n+1)`
-/

namespace A332496.P9101858789091568414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124847 (n + 1) - A127954 (n + 1)

end

end A332496.P9101858789091568414

noncomputable section

/-- A332496: Triangular array T(n,k): the number of not necessarily proper colorings of the complete graph on n unlabeled vertices minus an edge using exactly k colors.

Offset 1, canonical program `A332496.P9101858789091568414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A332496 (n : ℕ) : ℤ :=
  A332496.P9101858789091568414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A332496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335385.P17534177448668786288

`∏{e}[n+1, A000122(A131830(#²))+2]`
-/

namespace A335385.P17534177448668786288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000122 (A131830 (Nat.factorization (f1 n) p ^ 2)).toNat + 2)

end

end A335385.P17534177448668786288

noncomputable section

/-- A335385: The number of tri-unitary divisors of n.

Offset 1, canonical program `A335385.P17534177448668786288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A335385 (n : ℕ) : ℤ :=
  A335385.P17534177448668786288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A335385.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340568.P8040469025914050039

`A191522(n)+A191309(n)`
-/

namespace A340568.P8040469025914050039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 n + A191309 n

end

end A340568.P8040469025914050039

noncomputable section

/-- A340568: Total number of consecutive triples matching the pattern 132 in all faro permutations of length n.

Offset 0, canonical program `A340568.P8040469025914050039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A340568 (n : ℕ) : ℤ :=
  A340568.P8040469025914050039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A340568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347056.P6143559408674374907

`A121547(n)+A094305(n)`
-/

namespace A347056.P6143559408674374907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121547 n + A094305 n

end

end A347056.P6143559408674374907

noncomputable section

/-- A347056: Triangle read by rows: T(n,k) = (n+1)*(n+2)*(k+3)*binomial(n,k)/6, 0 <= k <= n.

Offset 0, canonical program `A347056.P6143559408674374907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347056 (n : ℕ) : ℤ :=
  A347056.P6143559408674374907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347823.P13243761439211694045

`A132775(n)-A216973(n)`
-/

namespace A347823.P13243761439211694045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132775 n - A216973 n

end

end A347823.P13243761439211694045

noncomputable section

/-- A347823: Triangle read by rows: T(n,k) = (n+k+1)*binomial(n,k), 0 <= k <= n.

Offset 0, canonical program `A347823.P13243761439211694045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A347823 (n : ℕ) : ℤ :=
  A347823.P13243761439211694045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A347823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349454.P13824410521446832784

`(1-A025581(n))*A215534(n)`
-/

namespace A349454.P13824410521446832784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * A215534 n

end

end A349454.P13824410521446832784

noncomputable section

/-- A349454: Number T(n,k) of endofunctions on [n] with exactly k fixed points, all of which are isolated; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

Offset 0, canonical program `A349454.P13824410521446832784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A349454 (n : ℕ) : ℤ :=
  A349454.P13824410521446832784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A349454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349727.P7443163994713940348

`gcd(Δ[A100100(n)], A131427(n))`
-/

namespace A349727.P7443163994713940348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A131427 n)

end

end A349727.P7443163994713940348

noncomputable section

/-- A349727: Triangle read by rows, T(n, k) = [x^(n - k)] hypergeom([-n, -1 + n], [-n], x).

Offset 0, canonical program `A349727.P7443163994713940348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A349727 (n : ℕ) : ℤ :=
  (A349727.P7443163994713940348.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A349727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350771.P14615375243004568037

`A154690(n)-A028326(n)`
-/

namespace A350771.P14615375243004568037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154690 n - A028326 n

end

end A350771.P14615375243004568037

noncomputable section

/-- A350771: Triangle read by rows: T(n, k) = (2^(n-k-1) + 2^k - 2)*binomial(n-1, k), 0 <= k <= n-1.

Offset 1, canonical program `A350771.P14615375243004568037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A350771 (n : ℕ) : ℤ :=
  A350771.P14615375243004568037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A350771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352105.P912367162564622228

`eq[0, A175919(A003796(n+1))]`
-/

namespace A352105.P912367162564622228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A003796 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352105.P912367162564622228

noncomputable section

/-- A352105: Numbers whose maximal tribonacci representation (A352103) is palindromic.

Offset 1, canonical program `A352105.P912367162564622228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A352105 (n : ℕ) : ℤ :=
  (A352105.P912367162564622228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A352105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355659.P4047661433713095930

`A093375(n+1)-A008949(n)`
-/

namespace A355659.P4047661433713095930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - A008949 n

end

end A355659.P4047661433713095930

noncomputable section

/-- A355659: Martingale win/loss triangle, read by rows: T(n,k) = total number of dollars won (or lost) using the martingale method on all possible n trials that have exactly k losses and n-k wins, for 0 <= k <= n.

Offset 0, canonical program `A355659.P4047661433713095930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355659 (n : ℕ) : ℤ :=
  A355659.P4047661433713095930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356898.P5129270634185328881

`val(A003796(n+1)+1, 2)`
-/

namespace A356898.P5129270634185328881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003796 (n + 1) + 1).toNat 2

end

end A356898.P5129270634185328881

noncomputable section

/-- A356898: a(n) is the number of trailing 1's in the maximal tribonacci representation of n (A352103).

Offset 0, canonical program `A356898.P5129270634185328881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356898 (n : ℕ) : ℤ :=
  (A356898.P5129270634185328881.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356899.P11987798286801387555

`lt[A003726(n+1)-A003796(n+1), 1]`
-/

namespace A356899.P11987798286801387555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1) - A003796 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356899.P11987798286801387555

noncomputable section

/-- A356899: Nonnegative numbers whose minimal and maximal tribonacci representations are the same.

Offset 1, canonical program `A356899.P11987798286801387555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A356899 (n : ℕ) : ℤ :=
  (A356899.P11987798286801387555.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A356899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357367.P4873515078796916862

`A086810(n)*A130493(n+1)`
-/

namespace A357367.P4873515078796916862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n * A130493 (n + 1)

end

end A357367.P4873515078796916862

noncomputable section

/-- A357367: Triangle read by rows. T(n, k) = binomial(n - 1, k - 1)*(n + k)! / k!.

Offset 0, canonical program `A357367.P4873515078796916862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A357367 (n : ℕ) : ℤ :=
  A357367.P4873515078796916862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A357367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359066.P7221224019361326544

`A193844(A266725(n))`
-/

namespace A359066.P7221224019361326544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A266725 n).toNat

end

end A359066.P7221224019361326544

noncomputable section

/-- A359066: a(n) = Sum_{k=0..floor((n-1)/2)} binomial(n,k)*binomial(n-1-k,floor((n-1)/2) - k).

Offset 1, canonical program `A359066.P7221224019361326544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A359066 (n : ℕ) : ℤ :=
  A359066.P7221224019361326544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A359066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362588.P6849223915613361597

`A008279(n)*A265609(n)`
-/

namespace A362588.P6849223915613361597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A265609 n

end

end A362588.P6849223915613361597

noncomputable section

/-- A362588: Triangle read by rows, T(n, k) = RisingFactorial(n - k, k) * FallingFactorial(n, k).

Offset 0, canonical program `A362588.P6849223915613361597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. -/
def A362588 (n : ℕ) : ℤ :=
  A362588.P6849223915613361597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. -/
def A362588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362787.P3515008906079128941

`A265609(A245300(n))*A265609(n)`
-/

namespace A362787.P3515008906079128941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A245300 n).toNat * A265609 n

end

end A362787.P3515008906079128941

noncomputable section

/-- A362787: Triangle read by rows, T(n, k) = (-1)^k * RisingFactorial(n, k) * FallingFactorial(k - n, k).

Offset 0, canonical program `A362787.P3515008906079128941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A362787 (n : ℕ) : ℤ :=
  A362787.P3515008906079128941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A362787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364292.P14793139162051283291

`∪[A175332(n+1), A364287(n+1)]`
-/

namespace A364292.P14793139162051283291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364292.P14793139162051283291

noncomputable section

/-- A364292: Numbers k such that A163511(k) <= k.

Offset 1, canonical program `A364292.P14793139162051283291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364292 (n : ℕ) : ℤ :=
  (A364292.P14793139162051283291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364493.P15479827431775127397

`A364491(n)*A364492(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364493.P15479827431775127397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364491 n * A364492 n

end

end A364493.P15479827431775127397

noncomputable section

/-- A364493: a(n) = A364491(n) * A364492(n).

Offset 0, canonical program `A364493.P15479827431775127397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364491, A364492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364493 (n : ℕ) : ℤ :=
  A364493.P15479827431775127397.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364491, A364492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366284.P11103033075793896238

`n/A366283(n)`
-/

namespace A366284.P11103033075793896238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A366283 n : ℚ)

end

end A366284.P11103033075793896238

noncomputable section

/-- A366284: a(n) = n / gcd(n, A366275(n)), where A366275 is the Cat's tongue permutation.

Offset 0, canonical program `A366284.P11103033075793896238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366284 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366284.P11103033075793896238.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366285.P944909390526134256

`A366275(n)/A366283(n)`
-/

namespace A366285.P944909390526134256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366275 n : ℚ) / (A366283 n : ℚ)

end

end A366285.P944909390526134256

noncomputable section

/-- A366285: a(n) = A366275(n) / gcd(n, A366275(n)), where A366275 is the Cat's tongue permutation.

Offset 0, canonical program `A366285.P944909390526134256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, A366283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366285 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366285.P944909390526134256.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366275, A366283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366285.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374109.P10190102552975969900

`∪[A373587(n+1), A016825(n)]`
-/

namespace A374109.P10190102552975969900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374109.P10190102552975969900

noncomputable section

/-- A374109: Numbers k such that A113177(k) and A328845(k) are not both even, where A113177 is fully additive with a(p) = Fibonacci(p) and A328845 is the first Fibonacci-based variant of the arithmetic derivative.

Offset 1, canonical program `A374109.P10190102552975969900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374109 (n : ℕ) : ℤ :=
  (A374109.P10190102552975969900.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374114.P4158927788412466770

`filter[A374108(n+1), A035263(#)]`
-/

namespace A374114.P4158927788412466770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A374114.P4158927788412466770

noncomputable section

/-- A374114: Numbers k such that A113177(k) and A276085(k) are both even, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374114.P4158927788412466770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A374114 (n : ℕ) : ℤ :=
  A374114.P4158927788412466770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A374114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374115.P14378622944131692428

`∪[A036554(n+1), A373587(n+1)]`
-/

namespace A374115.P14378622944131692428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A374115.P14378622944131692428

noncomputable section

/-- A374115: Numbers k such that A113177(k) and A276085(k) are not both even, where A113177 and A276085 are fully additive with a(p) = Fibonacci(p) and a(p) = p#/p, respectively.

Offset 1, canonical program `A374115.P14378622944131692428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374115 (n : ℕ) : ℤ :=
  (A374115.P14378622944131692428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377660.P13913844871105716731

`A253284(n)/A103371(n)`
-/

namespace A377660.P13913844871105716731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253284 n : ℚ) / (A103371 n : ℚ)

end

end A377660.P13913844871105716731

noncomputable section

/-- A377660: Triangle read by rows: T(n, k) = (n - k)!*(n + k)!/n!.

Offset 0, canonical program `A377660.P13913844871105716731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A377660 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377660.P13913844871105716731.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A377660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380113.P2900189167819423770

`A110608(n)/A132749(n)`
-/

namespace A380113.P2900189167819423770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A132749 n : ℚ)

end

end A380113.P2900189167819423770

noncomputable section

/-- A380113: Triangle read by rows: The inverse matrix of the central factorials A370707, row n normalized by (-1)^(n - k)*A370707(n, n).

Offset 0, canonical program `A380113.P2900189167819423770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A380113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380113.P2900189167819423770.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A380113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380786.P6646570094551573593

`∩[A343258(n+1), A380788(n+1)]`
-/

namespace A380786.P6646570094551573593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380786.P6646570094551573593

noncomputable section

/-- A380786: Numbers with a prime number of bits, prime number of ones, and prime number of zeros in their binary representation.

Offset 1, canonical program `A380786.P6646570094551573593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A380786 (n : ℕ) : ℤ :=
  (A380786.P6646570094551573593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A380786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381883.P1597276662483742425

`A258758(n)/A100100(n)`
-/

namespace A381883.P1597276662483742425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258758 n : ℚ) / (A100100 n : ℚ)

end

end A381883.P1597276662483742425

noncomputable section

/-- A381883: Triangle read by rows: T(n, k) = binomial(2*n - 1, k).

Offset 0, canonical program `A381883.P1597276662483742425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A381883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381883.P1597276662483742425.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A381883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386789.P12804886181245952323

`∑[char[∑[n]]]*A086810(n)`
-/

namespace A386789.P12804886181245952323
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A086810 n

end

end A386789.P12804886181245952323

noncomputable section

/-- A386789: Triangle read by rows: T(n, k) = binomial(n - 1, k - 1)*binomial(n + k, k).

Offset 0, canonical program `A386789.P12804886181245952323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9138 terms. -/
def A386789 (n : ℕ) : ℤ :=
  A386789.P12804886181245952323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9138 terms. -/
def A386789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390725.P2084391966824759075

`A000108(A002262(n))*A271703(n)`
-/

namespace A390725.P2084391966824759075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A271703 n

end

end A390725.P2084391966824759075

noncomputable section

/-- A390725: Triangle read by rows: T(n, k) = Lah(n, k)*CatalanNumber(k), and Lah = A271703.

Offset 0, canonical program `A390725.P2084391966824759075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A390725 (n : ℕ) : ℤ :=
  A390725.P2084391966824759075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A390725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393901.P9350242213273031306

`A118413(n+1)-A152920(n)`
-/

namespace A393901.P9350242213273031306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118413 (n + 1) - A152920 n

end

end A393901.P9350242213273031306

noncomputable section

/-- A393901: Triangle read by rows: T(n,k) = (2*n + k - 1) * 2^(k-2).

Offset 1, canonical program `A393901.P9350242213273031306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393901 (n : ℕ) : ℤ :=
  A393901.P9350242213273031306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207617.P12486162294747434692

`A236376(A091018(n+1))`
-/

namespace A207617.P12486162294747434692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236376 (A091018 (n + 1)).toNat

end

end A207617.P12486162294747434692

noncomputable section

/-- A207617: Triangle of coefficients of polynomials v(n,x) jointly generated with A207616; see the Formula section.

Offset 1, canonical program `A207617.P12486162294747434692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207617 (n : ℕ) : ℤ :=
  A207617.P12486162294747434692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207628.P18335954848228977278

`A029635(C(9, 8*n)+n)*A059268(n)`
-/

namespace A207628.P18335954848228977278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (Nat.choose 9 (8 * n) + n) * A059268 n

end

end A207628.P18335954848228977278

noncomputable section

/-- A207628: Triangle of coefficients of polynomials v(n,x) jointly generated with A207627; see the Formula section.

Offset 1, canonical program `A207628.P18335954848228977278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207628 (n : ℕ) : ℤ :=
  A207628.P18335954848228977278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A207628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208659.P4846878712330380114

`A029653(n)*A059268(n)`
-/

namespace A208659.P4846878712330380114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n * A059268 n

end

end A208659.P4846878712330380114

noncomputable section

/-- A208659: Triangle of coefficients of polynomials v(n,x) jointly generated with A185045; see the Formula section.

Offset 1, canonical program `A208659.P4846878712330380114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208659 (n : ℕ) : ℤ :=
  A208659.P4846878712330380114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208754.P18207085302697048033

`A059268(A091018(n))*A208509(n+1)`
-/

namespace A208754.P18207085302697048033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A208509 (n + 1)

end

end A208754.P18207085302697048033

noncomputable section

/-- A208754: Triangle of coefficients of polynomials v(n,x) jointly generated with A208753; see the Formula section.

Offset 1, canonical program `A208754.P18207085302697048033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A208754 (n : ℕ) : ℤ :=
  A208754.P18207085302697048033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A208754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209705.P3780900180069936411

`floor(A029635(n)/2*A059268(n))`
-/

namespace A209705.P3780900180069936411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029635 n : ℚ) / 2 * (A059268 n : ℚ)⌋

end

end A209705.P3780900180069936411

noncomputable section

/-- A209705: Triangle of coefficients of polynomials u(n,x) jointly generated with A209706; see the Formula section.

Offset 1, canonical program `A209705.P3780900180069936411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209705 (n : ℕ) : ℤ :=
  A209705.P3780900180069936411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215079.P7857227990351126838

`A002262(n)^A003056(n)*A055248(n)`
-/

namespace A215079.P7857227990351126838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A003056 n : ℤ) * (A055248 n : ℚ)

end

end A215079.P7857227990351126838

noncomputable section

/-- A215079: Triangle T(n,k) = k^n * sum(binomial(n,n-k-j),j=0..n-k).

Offset 0, canonical program `A215079.P7857227990351126838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1576 terms. -/
def A215079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215079.P7857227990351126838.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1576 terms. -/
def A215079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A215726.P9624273629466354318

`∩[A078779(n+1)-1, A078779(n+1)]`
-/

namespace A215726.P9624273629466354318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215726.P9624273629466354318

noncomputable section

/-- A215726: Numbers k such that the k-th triangular number is squarefree.

Offset 1, canonical program `A215726.P9624273629466354318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6828 terms. -/
def A215726 (n : ℕ) : ℤ :=
  (A215726.P9624273629466354318.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6828 terms. -/
def A215726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229134.P4330092751427606427

`(A121944(n+1)-1)/4`
-/

namespace A229134.P4330092751427606427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121944 (n + 1) - 1 : ℚ) / 4

end

end A229134.P4330092751427606427

noncomputable section

/-- A229134: Square numbers that are the sum of two non-consecutive triangular numbers.

Offset 1, canonical program `A229134.P4330092751427606427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7444 terms. -/
def A229134 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A229134.P4330092751427606427.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7444 terms. -/
def A229134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236188.P8240144379786060525

`Δ[A008366(n+2)]`
-/

namespace A236188.P8240144379786060525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236188.P8240144379786060525

noncomputable section

/-- A236188: Differences between terms of compacting Eratosthenes sieve for prime(7) = 17.

Offset 1, canonical program `A236188.P8240144379786060525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5759 terms. -/
def A236188 (n : ℕ) : ℤ :=
  A236188.P8240144379786060525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5759 terms. -/
def A236188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247500.P7727794814474457671

`A001263(n+1)*A119502(n)`
-/

namespace A247500.P7727794814474457671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A119502 n

end

end A247500.P7727794814474457671

noncomputable section

/-- A247500: Triangle read by rows: T(n, k) = n!*binomial(n + 1, k)/(k + 1)!, 0 <= k <= n.

Offset 0, canonical program `A247500.P7727794814474457671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A247500 (n : ℕ) : ℤ :=
  A247500.P7727794814474457671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A247500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249756.P8545413745431220676

`A029635(A080036(n))`
-/

namespace A249756.P8545413745431220676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A080036 n).toNat

end

end A249756.P8545413745431220676

noncomputable section

/-- A249756: Triangular array of coefficients of polynomials p(n,x) = (x + 1)*p(n-1,x) + n*x, p(0,x) = 1.

Offset 0, canonical program `A249756.P8545413745431220676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249756 (n : ℕ) : ℤ :=
  A249756.P8545413745431220676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254520.P14622412056457031035

`(n+1)*A063659(n+1)`
-/

namespace A254520.P14622412056457031035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063659 (n + 1)

end

end A254520.P14622412056457031035

noncomputable section

/-- A254520: Möbius transform of A034676.

Offset 1, canonical program `A254520.P14622412056457031035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254520 (n : ℕ) : ℤ :=
  A254520.P14622412056457031035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063659, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254520.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A260166.P15996052265045843287

`A260295(2*n)`
-/

namespace A260166.P15996052265045843287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260295 (2 * n)

end

end A260166.P15996052265045843287

noncomputable section

/-- A260166: Expansion of phi(x^2) * f(-x^3)^3 / chi(-x)^2 in powers of x where phi(), chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260166.P15996052265045843287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260166 (n : ℕ) : ℤ :=
  A260166.P15996052265045843287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260167.P17124022594414374465

`A260295(Δ[n²])/2`
-/

namespace A260167.P17124022594414374465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260295 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A260167.P17124022594414374465

noncomputable section

/-- A260167: Expansion of psi(x^4) * f(-x^3)^3 / chi(-x)^2 in powers of x where psi(), chi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A260167.P17124022594414374465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260167 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260167.P17124022594414374465.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A260167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268476.P10167548556957758468

`p?[A043727(n+1)]`
-/

namespace A268476.P10167548556957758468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268476.P10167548556957758468

noncomputable section

/-- A268476: Balanced evil primes: primes with an even number of runs of 1's in their binary expansion.

Offset 1, canonical program `A268476.P10167548556957758468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2058 terms. -/
def A268476 (n : ℕ) : ℤ :=
  A268476.P10167548556957758468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2058 terms. -/
def A268476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270301.P17533543848909741744

`8*A008366(n+2)`
-/

namespace A270301.P17533543848909741744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008366 (n + 2)

end

end A270301.P17533543848909741744

noncomputable section

/-- A270301: Numbers which are representable as a sum of sixteen but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270301.P17533543848909741744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270301 (n : ℕ) : ℤ :=
  A270301.P17533543848909741744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280910.P276052425312024874

`char[A277238(n+1)]`
-/

namespace A280910.P276052425312024874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280910.P276052425312024874

noncomputable section

/-- A280910: Characteristic sequence of A277238.

Offset 0, canonical program `A280910.P276052425312024874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280910 (n : ℕ) : ℤ :=
  (A280910.P276052425312024874.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285805.P3259867179575910996

`p?[A171696(n+1)]`
-/

namespace A285805.P3259867179575910996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A285805.P3259867179575910996

noncomputable section

/-- A285805: Prime numbers p such that 6*p-1 and 6*p+1 are composite numbers.

Offset 1, canonical program `A285805.P3259867179575910996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1216 terms. -/
def A285805 (n : ℕ) : ℤ :=
  A285805.P3259867179575910996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1216 terms. -/
def A285805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304364.P10656042330179223075

`eq[0, A304362(n+1)]+1`
-/

namespace A304364.P10656042330179223075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A304364.P10656042330179223075

noncomputable section

/-- A304364: Numbers k such that A304362(k) = Sum_{d|k, d = 1 or not a perfect power} mu(k/d) = 0.

Offset 1, canonical program `A304364.P10656042330179223075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A304364 (n : ℕ) : ℤ :=
  (A304364.P10656042330179223075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A304364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304365.P12944840934423433223

`lt[0, A304362(n+1)²]+1`
-/

namespace A304365.P12944840934423433223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304362 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A304365.P12944840934423433223

noncomputable section

/-- A304365: Numbers k such that Sum_{d|k, d = 1 or not a perfect power} mu(k/d) is nonzero.

Offset 1, canonical program `A304365.P12944840934423433223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A304365 (n : ℕ) : ℤ :=
  (A304365.P12944840934423433223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A304365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304649.P2069392600454254021

`∑{d}[n+1, A304362(#)*A304817((n+1)/#)]`
-/

namespace A304649.P2069392600454254021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304362 d * A304817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304649.P2069392600454254021

noncomputable section

/-- A304649: Number of divisors d|n such that neither d nor n/d is a perfect power greater than 1.

Offset 1, canonical program `A304649.P2069392600454254021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304649 (n : ℕ) : ℤ :=
  A304649.P2069392600454254021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306015.P10934879851139084817

`A094587(n)-A008290(n)*A010054(n)`
-/

namespace A306015.P10934879851139084817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n - A008290 n * A010054 n

end

end A306015.P10934879851139084817

noncomputable section

/-- A306015: Exponential series expansion of (exp(x*y) + sinh(x) - cosh(x))/(1 - x).

Offset 0, canonical program `A306015.P10934879851139084817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A306015 (n : ℕ) : ℤ :=
  A306015.P10934879851139084817.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A306015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306379.P13856813588637983137

`∑{d}[n+1, A060648(#)*A063659((n+1)/#)]`
-/

namespace A306379.P13856813588637983137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P13856813588637983137

noncomputable section

/-- A306379: Dirichlet convolution of psi(n) with itself.

Offset 1, canonical program `A306379.P13856813588637983137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306379 (n : ℕ) : ℤ :=
  A306379.P13856813588637983137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307445.P6220732114162355976

`∑{d}[n+1, A046692(#)*A063659((n+1)/#)]`
-/

namespace A307445.P6220732114162355976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307445.P6220732114162355976

noncomputable section

/-- A307445: Dirichlet g.f.: 1 / (zeta(s) * zeta(2*s)).

Offset 1, canonical program `A307445.P6220732114162355976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307445 (n : ℕ) : ℤ :=
  A307445.P6220732114162355976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311181.P11413614855013295294

`2*A312143(n)-A312682(n)`
-/

namespace A311181.P11413614855013295294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312143 n - A312682 n

end

end A311181.P11413614855013295294

noncomputable section

/-- A311181: Coordination sequence Gal.5.107.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311181.P11413614855013295294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A311181 (n : ℕ) : ℤ :=
  A311181.P11413614855013295294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A311181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313802.P1453364322399320603

`A008458(n)-A004525(A008458(n)-A312163(n))`
-/

namespace A313802.P1453364322399320603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A312163 n).toNat

end

end A313802.P1453364322399320603

noncomputable section

/-- A313802: Coordination sequence Gal.6.209.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313802.P1453364322399320603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A313802 (n : ℕ) : ℤ :=
  A313802.P1453364322399320603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. -/
def A313802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313814.P16685413866964249119

`2*A313788(n)-A313738(n)`
-/

namespace A313814.P16685413866964249119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313788 n - A313738 n

end

end A313814.P16685413866964249119

noncomputable section

/-- A313814: Coordination sequence Gal.5.314.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313814.P16685413866964249119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A313814 (n : ℕ) : ℤ :=
  A313814.P16685413866964249119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. -/
def A313814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313878.P13457127066712427819

`A313873(n)+A313898(n)-A313889(n)`
-/

namespace A313878.P13457127066712427819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n + (A313898 n - A313889 n)

end

end A313878.P13457127066712427819

noncomputable section

/-- A313878: Coordination sequence Gal.6.647.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313878.P13457127066712427819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A313878 (n : ℕ) : ℤ :=
  A313878.P13457127066712427819.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A313878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313899.P8562321666356515905

`A313788(n)+Δ[A011864(n)]`
-/

namespace A313899.P8562321666356515905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313788 n + (f1 (n + 1) - f1 n)

end

end A313899.P8562321666356515905

noncomputable section

/-- A313899: Coordination sequence Gal.6.620.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313899.P8562321666356515905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313899 (n : ℕ) : ℤ :=
  A313899.P8562321666356515905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A313899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313918.P15568199343954860452

`A314849(2*n)-4*n`
-/

namespace A313918.P15568199343954860452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314849 (2 * n) - (4 * n : ℤ)

end

end A313918.P15568199343954860452

noncomputable section

/-- A313918: Coordination sequence Gal.6.332.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313918.P15568199343954860452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A313918 (n : ℕ) : ℤ :=
  A313918.P15568199343954860452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. -/
def A313918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315070.P1003336142198801993

`2*n+A004396(A312163(n))`
-/

namespace A315070.P1003336142198801993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A312163 n).toNat

end

end A315070.P1003336142198801993

noncomputable section

/-- A315070: Coordination sequence Gal.6.326.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315070.P1003336142198801993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A315070 (n : ℕ) : ℤ :=
  A315070.P1003336142198801993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. -/
def A315070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315498.P13781612876162429386

`A315277(n)+A004525(A008458(n)-A315277(n))`
-/

namespace A315498.P13781612876162429386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315277 n + A004525 (A008458 n - A315277 n).toNat

end

end A315498.P13781612876162429386

noncomputable section

/-- A315498: Coordination sequence Gal.6.334.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315498.P13781612876162429386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. -/
def A315498 (n : ℕ) : ℤ :=
  A315498.P13781612876162429386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. -/
def A315498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315678.P12797774727885421403

`abs(A008592(n)-A312163(n))`
-/

namespace A315678.P12797774727885421403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312163 n|

end

end A315678.P12797774727885421403

noncomputable section

/-- A315678: Coordination sequence Gal.6.158.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315678.P12797774727885421403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A315678 (n : ℕ) : ℤ :=
  A315678.P12797774727885421403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A315678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322577.P2466038700097355167

`∑{d}[n+1, #*A063659((n+1)/#)]`
-/

namespace A322577.P2466038700097355167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322577.P2466038700097355167

noncomputable section

/-- A322577: a(n) = Sum_{d|n} psi(n/d) * phi(d).

Offset 1, canonical program `A322577.P2466038700097355167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322577 (n : ℕ) : ℤ :=
  A322577.P2466038700097355167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322577.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A328729.P14526023504473922965

`∑{d}[n+1, A063659(#)*A101035((n+1)/#)]`
-/

namespace A328729.P14526023504473922965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P14526023504473922965

noncomputable section

/-- A328729: Dirichlet g.f.: zeta(s) / (zeta(s-1) * zeta(2*s)).

Offset 1, canonical program `A328729.P14526023504473922965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328729 (n : ℕ) : ℤ :=
  A328729.P14526023504473922965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330609.P14507470063012570889

`A271703(A091018(n))`
-/

namespace A330609.P14507470063012570889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A091018 n).toNat

end

end A330609.P14507470063012570889

noncomputable section

/-- A330609: T(n, k) = binomial(n-k-1, k-1)*(n-k)!/k! for n >= 0 and 0 <= k <= floor(n/2). Irregular triangle read by rows.

Offset 0, canonical program `A330609.P14507470063012570889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A330609 (n : ℕ) : ℤ :=
  A330609.P14507470063012570889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A330609.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A332799.P4620929770745415607

`17*A008366(n+1)`
-/

namespace A332799.P4620929770745415607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A008366 (n + 1)

end

end A332799.P4620929770745415607

noncomputable section

/-- A332799: Numbers whose smallest prime factor is 17.

Offset 1, canonical program `A332799.P4620929770745415607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332799 (n : ℕ) : ℤ :=
  A332799.P4620929770745415607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008366, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332799.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A342190.P10398113537479394527

`lt[A070176(A001065(n+1)), 1]+1`
-/

namespace A342190.P10398113537479394527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A001065 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A342190.P10398113537479394527

noncomputable section

/-- A342190: Numbers k such that A001065(k) = sigma(k) - k is the sum of 2 squares.

Offset 1, canonical program `A342190.P10398113537479394527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. -/
def A342190 (n : ℕ) : ℤ :=
  (A342190.P10398113537479394527.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. -/
def A342190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343861.P16454549693945676163

`A021009(n)/A008459(n)*A110608(n)`
-/

namespace A343861.P16454549693945676163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021009 n : ℚ) / (A008459 n : ℚ) * (A110608 n : ℚ)

end

end A343861.P16454549693945676163

noncomputable section

/-- A343861: Coefficient triangle of generalized Laguerre polynomials n!*L(n,n,x) (rising powers of x).

Offset 0, canonical program `A343861.P16454549693945676163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A343861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343861.P16454549693945676163.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. -/
def A343861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353202.P16479654457777802616

`lt[A070176(n), 2]+1`
-/

namespace A353202.P16479654457777802616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353202.P16479654457777802616

noncomputable section

/-- A353202: Positive integers which can be expressed as the sum of three or fewer squares, no more than two of which are greater than 1.

Offset 1, canonical program `A353202.P16479654457777802616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4828 terms. -/
def A353202 (n : ℕ) : ℤ :=
  (A353202.P16479654457777802616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4828 terms. -/
def A353202.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A367022.P3554268763725929727

`A262616(n)*A367023(n)`
-/

namespace A367022.P3554268763725929727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n * A367023 n

end

end A367022.P3554268763725929727

noncomputable section

/-- A367022: Triangle read by rows, T(n, k) = [x^k] p(n), where p(n) = 4^n * hypergeom([1/2, -n - 1, -n], [2, 2], x).

Offset 0, canonical program `A367022.P3554268763725929727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4043 terms. -/
def A367022 (n : ℕ) : ℤ :=
  A367022.P3554268763725929727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4043 terms. -/
def A367022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375999.P7786675138920784206

`lt[0, char[A001263(n+1)]]`
-/

namespace A375999.P7786675138920784206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375999.P7786675138920784206

noncomputable section

/-- A375999: Narayana numbers (A001263), sorted, duplicates removed.

Offset 1, canonical program `A375999.P7786675138920784206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A375999 (n : ℕ) : ℤ :=
  (A375999.P7786675138920784206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A375999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386093.P8909246624751845622

`∩[A247052(n+1), A380906(n+1)]`
-/

namespace A386093.P8909246624751845622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386093.P8909246624751845622

noncomputable section

/-- A386093: Primes having only {1, 2, 4, 7} as digits.

Offset 1, canonical program `A386093.P8909246624751845622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 497 terms. -/
def A386093 (n : ℕ) : ℤ :=
  (A386093.P8909246624751845622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 497 terms. -/
def A386093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386096.P15885976382190563992

`∩[A190222(n+1), A247052(n+1)]`
-/

namespace A386096.P15885976382190563992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386096.P15885976382190563992

noncomputable section

/-- A386096: Primes having only {1, 2, 5, 7} as digits.

Offset 1, canonical program `A386096.P15885976382190563992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. -/
def A386096 (n : ℕ) : ℤ :=
  (A386096.P15885976382190563992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. -/
def A386096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386120.P12265816021471172297

`∩[A247052(n+1), A386335(n+1)]`
-/

namespace A386120.P12265816021471172297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386120.P12265816021471172297

noncomputable section

/-- A386120: Primes having only {1, 4, 5, 7} as digits.

Offset 1, canonical program `A386120.P12265816021471172297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A386120 (n : ℕ) : ℤ :=
  (A386120.P12265816021471172297.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A386120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388427.P2071951571592344279

`filter[A303554(n+1), A066247(#)]`
-/

namespace A388427.P2071951571592344279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A388427.P2071951571592344279

noncomputable section

/-- A388427: Composite numbers that are squarefree or prime powers.

Offset 1, canonical program `A388427.P2071951571592344279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A388427 (n : ℕ) : ℤ :=
  A388427.P2071951571592344279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A388427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203398.P16155668990834997632

`A216953(n+1)/(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A203398.P16155668990834997632
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216953 (n + 1) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ)

end

end A203398.P16155668990834997632

noncomputable section

/-- A203398: T(n,k), a triangular array read by rows, is the number of classes of equivalent 2-color n-bead necklaces (turning over is not allowed) that have k necklaces.

Offset 1, canonical program `A203398.P16155668990834997632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203398 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A203398.P16155668990834997632.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214361.P18114527469717323411

`(-1)^n*A124449(n+1)`
-/

namespace A214361.P18114527469717323411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A124449 (n + 1)

end

end A214361.P18114527469717323411

noncomputable section

/-- A214361: Expansion of c(q^2) * (c(q) + 2 * c(q^4)) / 9 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A214361.P18114527469717323411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214361 (n : ℕ) : ℤ :=
  A214361.P18114527469717323411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214361.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A247897.P17986607596554966549

`Δ[A247676(n+1)]`
-/

namespace A247897.P17986607596554966549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247897.P17986607596554966549

noncomputable section

/-- A247897: First differences of A247676.

Offset 1, canonical program `A247897.P17986607596554966549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247897 (n : ℕ) : ℤ :=
  A247897.P17986607596554966549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247897.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A257409.P13798852354601103833

`eq[A121262(n)+1, A220400(n)]`
-/

namespace A257409.P13798852354601103833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257409.P13798852354601103833

noncomputable section

/-- A257409: Values of n such that there are exactly 2 solutions to x^2 - y^2 = n, with x > y >= 0.

Offset 1, canonical program `A257409.P13798852354601103833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. -/
def A257409 (n : ℕ) : ℤ :=
  (A257409.P13798852354601103833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2966 terms. -/
def A257409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257410.P7877436251234973800

`eq[A121262(n)+2, A220400(n)]`
-/

namespace A257410.P7877436251234973800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257410.P7877436251234973800

noncomputable section

/-- A257410: Values of n such that there are exactly 3 solutions to x^2 - y^2 = n with x > y >= 0.

Offset 1, canonical program `A257410.P7877436251234973800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A257410 (n : ℕ) : ℤ :=
  (A257410.P7877436251234973800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A257410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260224.P1438130178473622830

`∩[A386024(n+1), A386105(n+1)]`
-/

namespace A260224.P1438130178473622830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P1438130178473622830

noncomputable section

/-- A260224: Primes having only {1, 3, 5} as digits.

Offset 1, canonical program `A260224.P1438130178473622830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1504 terms. -/
def A260224 (n : ℕ) : ℤ :=
  (A260224.P1438130178473622830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1504 terms. -/
def A260224.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A266716.P4114286461542328987

`1-A263428(A049068(n+1))`
-/

namespace A266716.P4114286461542328987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A263428 (A049068 (n + 1)).toNat

end

end A266716.P4114286461542328987

noncomputable section

/-- A266716: Triangle read by rows giving successive states of cellular automaton generated by "Rule 59" initiated with a single ON (black) cell.

Offset 0, canonical program `A266716.P4114286461542328987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A266716 (n : ℕ) : ℤ :=
  A266716.P4114286461542328987.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. -/
def A266716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275387.P16073463027195064393

`A066446(n+1)-A063647(n+1)`
-/

namespace A275387.P16073463027195064393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) - A063647 (n + 1)

end

end A275387.P16073463027195064393

noncomputable section

/-- A275387: Numbers of ordered pairs of divisors d < e of n such that gcd(d, e) > 1.

Offset 1, canonical program `A275387.P16073463027195064393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A066446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275387 (n : ℕ) : ℤ :=
  A275387.P16073463027195064393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A066446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285305.P17795015097415860108

`char[A285307(n+1)-1]`
-/

namespace A285305.P17795015097415860108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285305.P17795015097415860108

noncomputable section

/-- A285305: Fixed point of the morphism 0 -> 10, 1 -> 1001.

Offset 1, canonical program `A285305.P17795015097415860108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285305 (n : ℕ) : ℤ :=
  (A285305.P17795015097415860108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285306.P713584507056425595

`2*(n+1)-A189664(n+1)`
-/

namespace A285306.P713584507056425595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A189664 (n + 1)

end

end A285306.P713584507056425595

noncomputable section

/-- A285306: Positions of 0 in A285305; complement of A285307.

Offset 1, canonical program `A285306.P713584507056425595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285306 (n : ℕ) : ℤ :=
  A285306.P713584507056425595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310512.P18429582237261561799

`A313842(n)-A105384(A004273(n))`
-/

namespace A310512.P18429582237261561799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n - A105384 (A004273 n).toNat

end

end A310512.P18429582237261561799

noncomputable section

/-- A310512: Coordination sequence Gal.6.352.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310512.P18429582237261561799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A310512 (n : ℕ) : ℤ :=
  A310512.P18429582237261561799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. -/
def A310512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311613.P7627697520887146138

`2*A313788(n)-A008458(n)`
-/

namespace A311613.P7627697520887146138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313788 n - A008458 n

end

end A311613.P7627697520887146138

noncomputable section

/-- A311613: Coordination sequence Gal.6.231.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311613.P7627697520887146138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A311613 (n : ℕ) : ℤ :=
  A311613.P7627697520887146138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. -/
def A311613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312207.P3228347032379674604

`A311633(n)+Δ[A011862(n)]`
-/

namespace A312207.P3228347032379674604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 n + (f1 (n + 1) - f1 n)

end

end A312207.P3228347032379674604

noncomputable section

/-- A312207: Coordination sequence Gal.5.68.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312207.P3228347032379674604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A312207 (n : ℕ) : ℤ :=
  A312207.P3228347032379674604.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. -/
def A312207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315735.P11355329765123142326

`abs(A008592(n)-A311554(n))`
-/

namespace A315735.P11355329765123142326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311554 n|

end

end A315735.P11355329765123142326

noncomputable section

/-- A315735: Coordination sequence Gal.6.159.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315735.P11355329765123142326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A315735 (n : ℕ) : ℤ :=
  A315735.P11355329765123142326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A315735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315743.P14010390675010090140

`A315695(n)+Δ[A011864(n)]`
-/

namespace A315743.P14010390675010090140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315695 n + (f1 (n + 1) - f1 n)

end

end A315743.P14010390675010090140

noncomputable section

/-- A315743: Coordination sequence Gal.6.334.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315743.P14010390675010090140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315743 (n : ℕ) : ℤ :=
  A315743.P14010390675010090140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A315743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321519.P724523528517111217

`A089233((n+1)²+1)`
-/

namespace A321519.P724523528517111217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 ((n + 1) ^ 2 + 1)

end

end A321519.P724523528517111217

noncomputable section

/-- A321519: Let d(n,i), i = 1..k be the k divisors of n^2 + 1 (the number 1 is not counted). a(n) is the number of ordered pairs d(n,i) < d(n,j) such that gcd(d(n,i), d(n,j)) = 1.

Offset 1, canonical program `A321519.P724523528517111217`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321519 (n : ℕ) : ℤ :=
  A321519.P724523528517111217.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089233, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321519.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323762.P10953275565980288274

`eq[1, A323761(n+1)]+1`
-/

namespace A323762.P10953275565980288274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323761 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323762.P10953275565980288274

noncomputable section

/-- A323762: Numbers m such that Product_{d|m} (pod(d)/tau(d)) is an integer h where pod(k) = the product of the divisors of k (A007955) and tau(k) = the number of the divisors of k (A000005).

Offset 1, canonical program `A323762.P10953275565980288274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1956 terms. -/
def A323762 (n : ℕ) : ℤ :=
  (A323762.P10953275565980288274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1956 terms. -/
def A323762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333564.P18087434835058333693

`1/2*(A119259(n+1)-(-1)^(n+1))`
-/

namespace A333564.P18087434835058333693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A119259 (n + 1) - (-1) ^ (n + 1) : ℚ)

end

end A333564.P18087434835058333693

noncomputable section

/-- A333564: a(n) = [x^n] ( c(x)/c(-x) )^n, where c(x) = (1 - sqrt( 1 - 4*x))/(2*x) is the o.g.f. of the Catalan numbers A000108.

Offset 1, canonical program `A333564.P18087434835058333693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333564.P18087434835058333693.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119259, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333564.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A334662.P8497653626660670943

`∑{d}[n+1, A306671(#)]`
-/

namespace A334662.P8497653626660670943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306671 d

end

end A334662.P8497653626660670943

noncomputable section

/-- A334662: a(n) = Sum_{d|n} gcd(tau(d), pod(d)), where pod(k) is the product of the divisors of k (A007955).

Offset 1, canonical program `A334662.P8497653626660670943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334662 (n : ℕ) : ℤ :=
  A334662.P8497653626660670943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334730.P4098740322766143181

`∏{d}[n+1, A306671(#)]`
-/

namespace A334730.P4098740322766143181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A306671 d

end

end A334730.P4098740322766143181

noncomputable section

/-- A334730: a(n) = Product_{d|n} gcd(tau(d), pod(d)) where tau(k) is the number of divisors of k (A000005) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334730.P4098740322766143181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334730 (n : ℕ) : ℤ :=
  A334730.P4098740322766143181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339273.P10031977836032368190

`4*A000404(n+1)`
-/

namespace A339273.P10031977836032368190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000404 (n + 1)

end

end A339273.P10031977836032368190

noncomputable section

/-- A339273: Sums of two nonzero even squares.

Offset 1, canonical program `A339273.P10031977836032368190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273 (n : ℕ) : ℤ :=
  A339273.P10031977836032368190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339273.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348391.P12587816717728795562

`A153485(n+2)+A348392(n+2)`
-/

namespace A348391.P12587816717728795562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 2) + A348392 (n + 2)

end

end A348391.P12587816717728795562

noncomputable section

/-- A348391: Row sums of irregular triangle A348390.

Offset 2, canonical program `A348391.P12587816717728795562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, A348392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348391 (n : ℕ) : ℤ :=
  A348391.P12587816717728795562.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153485, A348392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348391.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355769.P9165720454597640322

`∩[A000404(n+1)-1, A000404(n+1)]`
-/

namespace A355769.P9165720454597640322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355769.P9165720454597640322

noncomputable section

/-- A355769: Numbers k such that both k and k+1 can be written as the sum of two nonzero squares.

Offset 1, canonical program `A355769.P9165720454597640322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. -/
def A355769 (n : ℕ) : ℤ :=
  (A355769.P9165720454597640322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2130 terms. -/
def A355769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360401.P12481925379736986205

`A356133(A360393(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360401.P12481925379736986205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (A360393 (n + 1)).toNat

end

end A360401.P12481925379736986205

noncomputable section

/-- A360401: a(n) = A356133(A360393(n)).

Offset 1, canonical program `A360401.P12481925379736986205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360401 (n : ℕ) : ℤ :=
  A360401.P12481925379736986205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360403.P3962407088684523938

`A360393(A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360403.P3962407088684523938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A026430 (n + 1)).toNat

end

end A360403.P3962407088684523938

noncomputable section

/-- A360403: a(n) = A360393(A026430(n)).

Offset 1, canonical program `A360403.P3962407088684523938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A360393, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360403 (n : ℕ) : ℤ :=
  A360403.P3962407088684523938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, A360393, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360405.P18303608665221522570

`A360393(A356133(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360405.P18303608665221522570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360393 (A356133 (n + 1)).toNat

end

end A360405.P18303608665221522570

noncomputable section

/-- A360405: a(n) = A360393(A356133(n)).

Offset 1, canonical program `A360405.P18303608665221522570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360405 (n : ℕ) : ℤ :=
  A360405.P18303608665221522570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364308.P6684160361608899668

`∩[A006073(n+1), A140077(n+1)]`
-/

namespace A364308.P6684160361608899668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364308.P6684160361608899668

noncomputable section

/-- A364308: Numbers k such that k, k+1 and k+2 have exactly 3 distinct prime factors.

Offset 1, canonical program `A364308.P6684160361608899668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3762 terms. -/
def A364308 (n : ℕ) : ℤ :=
  (A364308.P6684160361608899668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3762 terms. -/
def A364308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386040.P12680812709271459822

`∩[A386337(n+1), A054047(n)]`
-/

namespace A386040.P12680812709271459822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386040.P12680812709271459822

noncomputable section

/-- A386040: Primes having only {0, 1, 8, 9} as digits.

Offset 1, canonical program `A386040.P12680812709271459822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A386040 (n : ℕ) : ℤ :=
  (A386040.P12680812709271459822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A386040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394346.P4603799114259171752

`A324528(n+1)*A306671(n+1)`
-/

namespace A394346.P4603799114259171752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324528 (n + 1) * A306671 (n + 1)

end

end A394346.P4603799114259171752

noncomputable section

/-- A394346: a(n) = tau(n) * pod(n) where tau(k) = the number of the divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A394346.P4603799114259171752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346 (n : ℕ) : ℤ :=
  A394346.P4603799114259171752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306671, A324528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394997.P14454066831357329865

`A337524(n+1)-A063647(n+1)`
-/

namespace A394997.P14454066831357329865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337524 (n + 1) - A063647 (n + 1)

end

end A394997.P14454066831357329865

noncomputable section

/-- A394997: Wiener index of the divisor prime graph of n.

Offset 1, canonical program `A394997.P14454066831357329865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997 (n : ℕ) : ℤ :=
  A394997.P14454066831357329865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397450.P15353059364789468864

`∑[char[A000404(n+1)-1]]`
-/

namespace A397450.P15353059364789468864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397450.P15353059364789468864

noncomputable section

/-- A397450: a(n) is the number of positive integers <= n that are the sum of 2 nonzero squares.

Offset 1, canonical program `A397450.P15353059364789468864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397450 (n : ℕ) : ℤ :=
  (A397450.P15353059364789468864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211272.P4633808634347613999

`abs(Δ[A220400(2*n)])`
-/

namespace A211272.P4633808634347613999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A211272.P4633808634347613999

noncomputable section

/-- A211272: Number of integer pairs (x,y) such that 0

Offset 1, canonical program `A211272.P4633808634347613999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A211272 (n : ℕ) : ℤ :=
  A211272.P4633808634347613999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. -/
def A211272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255763.P6358197639438820287

`record[(2*n+1)*A283265(2*n+1)]`
-/

namespace A255763.P6358197639438820287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A283265 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255763.P6358197639438820287

noncomputable section

/-- A255763: Odd numbers that are not twin primes.

Offset 1, canonical program `A255763.P6358197639438820287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255763 (n : ℕ) : ℤ :=
  A255763.P6358197639438820287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256152.P5956490634084316170

`filter[A063937(n+3), A354927(#)]`
-/

namespace A256152.P5956490634084316170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063937 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A256152.P5956490634084316170

noncomputable section

/-- A256152: Numbers k such that k is the product of two distinct primes and sigma(k) is a square number.

Offset 1, canonical program `A256152.P5956490634084316170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A256152 (n : ℕ) : ℤ :=
  A256152.P5956490634084316170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A256152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265892.P3280630500737208173

`A265893(A265609(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265892.P3280630500737208173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 (A265609 n).toNat

end

end A265892.P3280630500737208173

noncomputable section

/-- A265892: Array read by ascending antidiagonals: A(n,k) = A265893(A265609(n,k)), with n as row >= 0, k as column >= 0; the number of significant digits counted without trailing zeros in the factorial base representation of rising factorial n^(k) = (n+k-1)!/(n-1)!.

Offset 0, canonical program `A265892.P3280630500737208173`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265609, A265893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265892 (n : ℕ) : ℤ :=
  A265892.P3280630500737208173.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265609, A265893, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A265892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291186.P9759207513551932445

`∏{d}[n+1, #]/A306671(n+1)`
-/

namespace A291186.P9759207513551932445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A291186.P9759207513551932445

noncomputable section

/-- A291186: a(n) = numerator of (pod(n) / tau(n)).

Offset 1, canonical program `A291186.P9759207513551932445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A291186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291186.P9759207513551932445.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A291186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311224.P15092934751619094238

`A008574(n)+A311633(n)-A311625(n)`
-/

namespace A311224.P15092934751619094238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A311633 n - A311625 n)

end

end A311224.P15092934751619094238

noncomputable section

/-- A311224: Coordination sequence Gal.5.97.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311224.P15092934751619094238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A311224 (n : ℕ) : ℤ :=
  A311224.P15092934751619094238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A311224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314140.P15451870942694101110

`A315695(n)-A004525(A315695(n)-A313772(n))`
-/

namespace A314140.P15451870942694101110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315695 n - A004525 (A315695 n - A313772 n).toNat

end

end A314140.P15451870942694101110

noncomputable section

/-- A314140: Coordination sequence Gal.6.633.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314140.P15451870942694101110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314140 (n : ℕ) : ℤ :=
  A314140.P15451870942694101110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. -/
def A314140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323154.P14116477510633869356

`A000007(A048146(n+1)%(n+1))`
-/

namespace A323154.P14116477510633869356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A048146 (n + 1)) (n + 1 : ℤ)).toNat

end

end A323154.P14116477510633869356

noncomputable section

/-- A323154: a(n) = 1 if n divides A048146(n) = (sigma(n)-usigma(n)), 0 otherwise.

Offset 1, canonical program `A323154.P14116477510633869356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323154 (n : ℕ) : ℤ :=
  A323154.P14116477510633869356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325813.P255509125670812564

`gcd(A034448(n+1)-(n+1), n+1-A048146(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325813.P255509125670812564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1) - (n + 1 : ℤ)) ((n + 1 : ℤ) - A048146 (n + 1))

end

end A325813.P255509125670812564

noncomputable section

/-- A325813: a(n) = gcd(A034448(n)-n, n-A048146(n)), where A034448 and A048146 are respectively the sum of unitary and non-unitary divisors of n.

Offset 1, canonical program `A325813.P255509125670812564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325813 (n : ℕ) : ℤ :=
  (A325813.P255509125670812564.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325814.P16316630090321165520

`n+1-A048146(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325814.P16316630090321165520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048146 (n + 1)

end

end A325814.P16316630090321165520

noncomputable section

/-- A325814: a(n) = n - A048146(n), where A048146 is the sum of non-unitary divisors of n.

Offset 1, canonical program `A325814.P16316630090321165520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325814 (n : ℕ) : ℤ :=
  A325814.P16316630090321165520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325977.P12931186378742614702

`(A034460(n+1)+A325313(n+1))/2`
-/

namespace A325977.P12931186378742614702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + A325313 (n + 1) : ℚ) / 2

end

end A325977.P12931186378742614702

noncomputable section

/-- A325977: a(n) = (1/2)*(A034448(n)+A048250(n)-2*n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A325977.P12931186378742614702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325977 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325977.P12931186378742614702.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325977.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A332882.P15306502482901872650

`A034448(n+1)/A323166(n+1)`
-/

namespace A332882.P15306502482901872650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332882.P15306502482901872650

noncomputable section

/-- A332882: If n = Product (p_j^k_j) then a(n) = numerator of Product (1 + 1/p_j^k_j).

Offset 1, canonical program `A332882.P15306502482901872650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332882 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332882.P15306502482901872650.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323166, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332883.P3376569476005531227

`(n+1)/A323166(n+1)`
-/

namespace A332883.P3376569476005531227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323166 (n + 1) : ℚ)

end

end A332883.P3376569476005531227

noncomputable section

/-- A332883: If n = Product (p_j^k_j) then a(n) = denominator of Product (1 + 1/p_j^k_j).

Offset 1, canonical program `A332883.P3376569476005531227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332883.P3376569476005531227.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348504.P8886190148475080709

`A000203(n+1)/A348503(n+1)`
-/

namespace A348504.P8886190148475080709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348504.P8886190148475080709

noncomputable section

/-- A348504: a(n) = sigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348504.P8886190148475080709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348504.P8886190148475080709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348505.P18197901835979243919

`A034448(n+1)/A348503(n+1)`
-/

namespace A348505.P18197901835979243919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A348503 (n + 1) : ℚ)

end

end A348505.P18197901835979243919

noncomputable section

/-- A348505: a(n) = usigma(n) / gcd(sigma(n), usigma(n)), where sigma is the sum of divisors function, A000203, and usigma is the unitary sigma, A034448.

Offset 1, canonical program `A348505.P18197901835979243919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348505.P18197901835979243919.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368038.P2030547895329606168

`A048146(A013929(n+1))`
-/

namespace A368038.P2030547895329606168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A013929 (n + 1)).toNat

end

end A368038.P2030547895329606168

noncomputable section

/-- A368038: The sum of non-unitary divisors of the nonsquarefree numbers.

Offset 1, canonical program `A368038.P2030547895329606168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A048146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368038 (n : ℕ) : ℤ :=
  A368038.P2030547895329606168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A048146, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368038.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386088.P2858648878049144333

`∩[A001742(n+1), A386345(n+1)]`
-/

namespace A386088.P2858648878049144333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386088.P2858648878049144333

noncomputable section

/-- A386088: Primes having only {1, 2, 3, 7} as digits.

Offset 1, canonical program `A386088.P2858648878049144333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A386088 (n : ℕ) : ℤ :=
  (A386088.P2858648878049144333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A386088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315302.P6791131573123663794

`2*A314826(n)-A008574(n)`
-/

namespace A315302.P6791131573123663794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314826 n - A008574 n

end

end A315302.P6791131573123663794

noncomputable section

/-- A315302: Coordination sequence Gal.6.152.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315302.P6791131573123663794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2428 terms. -/
def A315302 (n : ℕ) : ℤ :=
  A315302.P6791131573123663794.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2428 terms. -/
def A315302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211170.P10008061104866407627

`∩[A034962(n+1), A034965(n+1)]`
-/

namespace A211170.P10008061104866407627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211170.P10008061104866407627

noncomputable section

/-- A211170: Primes that are sum of both three and five consecutive primes.

Offset 1, canonical program `A211170.P10008061104866407627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A211170 (n : ℕ) : ℤ :=
  (A211170.P10008061104866407627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A211170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216157.P14329396617965940493

`A215947(A055684(n+3)+1)`
-/

namespace A216157.P14329396617965940493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (A055684 (n + 3) + 1).toNat

end

end A216157.P14329396617965940493

noncomputable section

/-- A216157: Difference between the sum of the even divisors and the sum of the odd divisors of phi(n).

Offset 3, canonical program `A216157.P14329396617965940493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A216157 (n : ℕ) : ℤ :=
  A216157.P14329396617965940493.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A216157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219603.P7195166369659654583

`(A109723(n)-A109722(n))*A000040(n+1)`
-/

namespace A219603.P7195166369659654583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109723 n - A109722 n) * A000040 (n + 1)

end

end A219603.P7195166369659654583

noncomputable section

/-- A219603: a(n) = prime(n) * prime(2*n-1).

Offset 1, canonical program `A219603.P7195166369659654583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219603 (n : ℕ) : ℤ :=
  A219603.P7195166369659654583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225854.P1162875142972506100

`Δ[A061568(abs(1-n)+1)%A002522(n)]`
-/

namespace A225854.P1162875142972506100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061568 (|1 - (n : ℤ)| + 1).toNat) (A002522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A225854.P1162875142972506100

noncomputable section

/-- A225854: Frequency of prime numbers between consecutive partial sums of primes.

Offset 1, canonical program `A225854.P1162875142972506100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A225854 (n : ℕ) : ℤ :=
  A225854.P1162875142972506100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A225854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233561.P4480109826147428274

`filter[A109288(n+1), A035263(#)]`
-/

namespace A233561.P4480109826147428274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A233561.P4480109826147428274

noncomputable section

/-- A233561: Products p*q of distinct primes such that (p*q - 1)/2 is prime.

Offset 1, canonical program `A233561.P4480109826147428274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233561 (n : ℕ) : ℤ :=
  A233561.P4480109826147428274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237589.P15064465826932885110

`A014284(n+2)-2`
-/

namespace A237589.P15064465826932885110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 2) - 2

end

end A237589.P15064465826932885110

noncomputable section

/-- A237589: Sum of first n odd noncomposite numbers.

Offset 1, canonical program `A237589.P15064465826932885110`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237589 (n : ℕ) : ℤ :=
  A237589.P15064465826932885110.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A237589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239204.P16238939825905580694

`(A001003(n+2)-A001003(n+1))/2`
-/

namespace A239204.P16238939825905580694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n + 2) - A001003 (n + 1) : ℚ) / 2

end

end A239204.P16238939825905580694

noncomputable section

/-- A239204: Expansion of ((x-1)*sqrt(x^2-6*x+1)-x^2-4*x+1)/(8*x^3).

Offset 0, canonical program `A239204.P16238939825905580694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239204.P16238939825905580694.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245175.P15986975037316514887

`Δ[Δ[A038580(n+1)]]`
-/

namespace A245175.P15986975037316514887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245175.P15986975037316514887

noncomputable section

/-- A245175: Second differences of A038580.

Offset 1, canonical program `A245175.P15986975037316514887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A245175 (n : ℕ) : ℤ :=
  A245175.P15986975037316514887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A245175.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A256475.P15851941031067490214

`lt[A256470(n+1), 0]+1`
-/

namespace A256475.P15851941031067490214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256470 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A256475.P15851941031067490214

noncomputable section

/-- A256475: Numbers n for which there are more primes in range [prime(n)^2, prime(n)*prime(n+1)] than in range [prime(n)*prime(n+1), prime(n+1)^2].

Offset 1, canonical program `A256475.P15851941031067490214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3084 terms. -/
def A256475 (n : ℕ) : ℤ :=
  (A256475.P15851941031067490214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3084 terms. -/
def A256475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256476.P1071483563112911407

`lt[0, A256470(n+1)]+1`
-/

namespace A256476.P1071483563112911407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A256476.P1071483563112911407

noncomputable section

/-- A256476: Numbers n for which there are more primes in range [prime(n)*prime(n+1), prime(n+1)^2] than in range [prime(n)^2, prime(n)*prime(n+1)].

Offset 1, canonical program `A256476.P1071483563112911407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3413 terms. -/
def A256476 (n : ℕ) : ℤ :=
  (A256476.P1071483563112911407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3413 terms. -/
def A256476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256477.P10380906130391129273

`lt[A256470(n+1), 1]+1`
-/

namespace A256477.P10380906130391129273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256470 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A256477.P10380906130391129273

noncomputable section

/-- A256477: Numbers n for which the number of primes in the range [prime(n)*prime(n+1), prime(n+1)^2] is less than or equal to the number of primes in the range [prime(n)^2, prime(n)*prime(n+1)].

Offset 1, canonical program `A256477.P10380906130391129273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3128 terms. -/
def A256477 (n : ℕ) : ℤ :=
  (A256477.P10380906130391129273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3128 terms. -/
def A256477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257077.P17026154758205929853

`A037125(A000040(n+1))`
-/

namespace A257077.P17026154758205929853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (A000040 (n + 1)).toNat

end

end A257077.P17026154758205929853

noncomputable section

/-- A257077: a(n) = prime(n)-prime(1)-prime(2)-...-prime(k), while the result > 0.

Offset 1, canonical program `A257077.P17026154758205929853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A257077 (n : ℕ) : ℤ :=
  A257077.P17026154758205929853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A257077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263990.P15229984249607134462

`A109288(n+1)-1`
-/

namespace A263990.P15229984249607134462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109288 (n + 1) - 1

end

end A263990.P15229984249607134462

noncomputable section

/-- A263990: Nonsquare numbers k such that k and k+1 are semiprimes.

Offset 1, canonical program `A263990.P15229984249607134462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109288, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263990 (n : ℕ) : ℤ :=
  A263990.P15229984249607134462.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109288, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274912.P2605630082671546069

`(A193770(n)-1)%4`
-/

namespace A274912.P2605630082671546069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193770 n - 1) 4

end

end A274912.P2605630082671546069

noncomputable section

/-- A274912: Square array read by antidiagonals upwards in which each new term is the least nonnegative integer distinct from its neighbors.

Offset 0, canonical program `A274912.P2605630082671546069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274912 (n : ℕ) : ℤ :=
  A274912.P2605630082671546069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307673.P7363177245116075700

`∑[A108754(n+1)]`
-/

namespace A307673.P7363177245116075700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307673.P7363177245116075700

noncomputable section

/-- A307673: Partial sums of A108754.

Offset 1, canonical program `A307673.P7363177245116075700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307673 (n : ℕ) : ℤ :=
  A307673.P7363177245116075700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307980.P14907760515223499407

`eq[(2*A055642(n))², A145154(n)]`
-/

namespace A307980.P14907760515223499407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A055642 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307980.P14907760515223499407

noncomputable section

/-- A307980: Numbers k whose number of divisors is the square of the number of decimal digits of k.

Offset 1, canonical program `A307980.P14907760515223499407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A307980 (n : ℕ) : ℤ :=
  (A307980.P14907760515223499407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A307980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316322.P16038970231065936341

`A167214(n+1)+A062020(n+1)`
-/

namespace A316322.P16038970231065936341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167214 (n + 1) + A062020 (n + 1)

end

end A316322.P16038970231065936341

noncomputable section

/-- A316322: Sum of piles of first n primes: a(n) = Sum(prime(i)*(2*i-1): 1<=i<=n).

Offset 1, canonical program `A316322.P16038970231065936341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, A167214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316322 (n : ℕ) : ℤ :=
  A316322.P16038970231065936341.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062020, A167214, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320228.P12443175590728770353

`A000040(n+1)*A034958(n+1)`
-/

namespace A320228.P12443175590728770353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A034958 (n + 1)

end

end A320228.P12443175590728770353

noncomputable section

/-- A320228: Distribute the primes into groups in ascending order, with the n-th group having prime(n) elements. Then a(n) is the sum of the numbers in the n-th group times the number of elements in the group.

Offset 1, canonical program `A320228.P12443175590728770353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A034958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320228 (n : ℕ) : ℤ :=
  A320228.P12443175590728770353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A034958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321178.P14007840561554074392

`A109723(n)/2`
-/

namespace A321178.P14007840561554074392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109723 n : ℚ) / 2

end

end A321178.P14007840561554074392

noncomputable section

/-- A321178: One-half the sum of the first 2n + 1 primes.

Offset 0, canonical program `A321178.P14007840561554074392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321178 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A321178.P14007840561554074392.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321178.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330556.P13468609858281030865

`A330559(∑[A101264(n)]+1)`
-/

namespace A330556.P13468609858281030865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330559 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A330556.P13468609858281030865

noncomputable section

/-- A330556: a(n) = (number of primes p <= 2*n+1 with Delta(p) == 2 mod 4) - (number of primes p <= 2*n+1 with Delta(p) == 0 mod 4), where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330556.P13468609858281030865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330556 (n : ℕ) : ℤ :=
  A330556.P13468609858281030865.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333243.P7101162203109780154

`A038580(A121543(n+1))`
-/

namespace A333243.P7101162203109780154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A121543 (n + 1)).toNat

end

end A333243.P7101162203109780154

noncomputable section

/-- A333243: Prime numbers with prime indices in A262275.

Offset 1, canonical program `A333243.P7101162203109780154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A333243 (n : ℕ) : ℤ :=
  A333243.P7101162203109780154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8936 terms. -/
def A333243.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A341781.P6122018093653235653

`eq[2, (2*(n+1))%A145154(n)]`
-/

namespace A341781.P6122018093653235653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A145154 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341781.P6122018093653235653

noncomputable section

/-- A341781: Refactorable numbers (or tau numbers, A033950) k such that k/tau(k) is even, where tau(k) = A000005(k).

Offset 1, canonical program `A341781.P6122018093653235653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A341781 (n : ℕ) : ℤ :=
  (A341781.P6122018093653235653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A341781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345099.P13746055854138142594

`p?[A114381(n+1)]`
-/

namespace A345099.P13746055854138142594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345099.P13746055854138142594

noncomputable section

/-- A345099: Primes in A114381.

Offset 1, canonical program `A345099.P13746055854138142594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A345099 (n : ℕ) : ℤ :=
  A345099.P13746055854138142594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A345099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357251.P3468567000620855618

`A065762(n+1)/2`
-/

namespace A357251.P3468567000620855618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065762 (n + 1) : ℚ) / 2

end

end A357251.P3468567000620855618

noncomputable section

/-- A357251: a(n) = Sum_{1<=i<=j<=n} prime(i)*prime(j).

Offset 1, canonical program `A357251.P3468567000620855618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357251.P3468567000620855618.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358179.P5604913156474970621

`A038580(A262275(n+1))`
-/

namespace A358179.P5604913156474970621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (A262275 (n + 1)).toNat

end

end A358179.P5604913156474970621

noncomputable section

/-- A358179: Prime numbers with prime indices in A333244.

Offset 1, canonical program `A358179.P5604913156474970621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038580, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358179 (n : ℕ) : ℤ :=
  A358179.P5604913156474970621.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038580, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375020.P9231730803761729613

`A068773(10^n)`
-/

namespace A375020.P9231730803761729613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068773 (10 ^ n)

end

end A375020.P9231730803761729613

noncomputable section

/-- A375020: Alternating sum phi(1) - phi(2) + phi(3) - phi(4) + ... + ((-1)^(10^n+1))*phi(10^n).

Offset 0, canonical program `A375020.P9231730803761729613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375020 (n : ℕ) : ℤ :=
  A375020.P9231730803761729613.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378027.P3346758186908230283

`A038580(n+1)-A006450(n+1)`
-/

namespace A378027.P3346758186908230283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038580 (n + 1) - A006450 (n + 1)

end

end A378027.P3346758186908230283

noncomputable section

/-- A378027: a(n) = prime(prime(prime(n))) - prime(prime(n)).

Offset 1, canonical program `A378027.P3346758186908230283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A038580, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378027 (n : ℕ) : ℤ :=
  A378027.P3346758186908230283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A038580, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378123.P719144829619954669

`A001221(A071148(n+1))`
-/

namespace A378123.P719144829619954669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A071148 (n + 1)).toNat

end

end A378123.P719144829619954669

noncomputable section

/-- A378123: a(n) = number of prime divisors of the sum of the first n odd primes.

Offset 1, canonical program `A378123.P719144829619954669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A071148, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378123 (n : ℕ) : ℤ :=
  A378123.P719144829619954669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A071148, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378500.P6528699867994276169

`∑[A174275(n+1)+A123725(2*n+1)]`
-/

namespace A378500.P6528699867994276169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (n + 1) + A123725 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378500.P6528699867994276169

noncomputable section

/-- A378500: a(1) = 2, then a(n) = a(n-1) - 2 for n even, a(n) = a(n-1) + 3 for n an odd prime or odd prime power, and a(n) = a(n-1) + 2 otherwise.

Offset 1, canonical program `A378500.P6528699867994276169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378500 (n : ℕ) : ℤ :=
  A378500.P6528699867994276169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380048.P12805935202259720765

`A000045(n)*A001003(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380048.P12805935202259720765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001003 n

end

end A380048.P12805935202259720765

noncomputable section

/-- A380048: a(n) = A000045(n) * A001003(n).

Offset 0, canonical program `A380048.P12805935202259720765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380048 (n : ℕ) : ℤ :=
  A380048.P12805935202259720765.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385046.P393041273059483800

`A034448(n+1)/A385045(n+1)`
-/

namespace A385046.P393041273059483800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A385045 (n + 1) : ℚ)

end

end A385046.P393041273059483800

noncomputable section

/-- A385046: The sum of the unitary divisors of n that are 3-smooth numbers (A003586).

Offset 1, canonical program `A385046.P393041273059483800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A385045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385046 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385046.P393041273059483800.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A385045, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385046.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A219652.P12184869098295570606

`1+a(A219651(n))` with `a(0)=0`
-/

namespace A219652.P12184869098295570606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A219651 n).toNat

end

end A219652.P12184869098295570606

noncomputable section

/-- A219652: Number of steps to reach 0 starting with n and using the iterated process: x -> x - (sum of digits in factorial expansion of x).

Offset 0, canonical program `A219652.P12184869098295570606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219652 (n : ℕ) : ℤ :=
  (A219652.P12184869098295570606.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A221714.P3890911169790140761

`A007088(A073138(n))`
-/

namespace A221714.P3890911169790140761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A073138 n).toNat

end

end A221714.P3890911169790140761

noncomputable section

/-- A221714: Numbers written in base 2 with digits rearranged to be in decreasing order.

Offset 0, canonical program `A221714.P3890911169790140761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221714 (n : ℕ) : ℤ :=
  A221714.P3890911169790140761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224840.P6519552924552385028

`∑{d}[n+1, A085945(#)]`
-/

namespace A224840.P6519552924552385028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085945 d

end

end A224840.P6519552924552385028

noncomputable section

/-- A224840: Divisor sum of the arithmetic function A085945(n).

Offset 1, canonical program `A224840.P6519552924552385028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A224840 (n : ℕ) : ℤ :=
  A224840.P6519552924552385028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A224840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229153.P12908825937958678714

`∪[A119899(n+1), A285800(n+1)]`
-/

namespace A229153.P12908825937958678714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229153.P12908825937958678714

noncomputable section

/-- A229153: Numbers of the form c * m^2, where m > 0 and c is composite and squarefree.

Offset 1, canonical program `A229153.P12908825937958678714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229153 (n : ℕ) : ℤ :=
  (A229153.P12908825937958678714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229904.P63020032265155901

`A063725(A000404(n+1))`
-/

namespace A229904.P63020032265155901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A000404 (n + 1)).toNat

end

end A229904.P63020032265155901

noncomputable section

/-- A229904: Number of additional unit squares completely encircled in the first quadrant of a Cartesian grid by a circle centered at the origin as the radius squared increases from one sum of two square integers to the next larger sum of two square integers.

Offset 1, canonical program `A229904.P63020032265155901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A229904 (n : ℕ) : ℤ :=
  A229904.P63020032265155901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A229904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230412.P4316669891405136830

`char[A219651(n)]`
-/

namespace A230412.P4316669891405136830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A230412.P4316669891405136830

noncomputable section

/-- A230412: a(n) = the number of ways to express n as a sum d1*(k1!-1) + d2*(k2!-1) + ... + dj*(kj!-1), where all k's are distinct and greater than one and each di is in range [1,ki]; the characteristic function of A219650.

Offset 0, canonical program `A230412.P4316669891405136830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230412 (n : ℕ) : ℤ :=
  (A230412.P4316669891405136830.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230412.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245742.P1630487989177979838

`p?[A095824(n+1)]`
-/

namespace A245742.P1630487989177979838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245742.P1630487989177979838

noncomputable section

/-- A245742: Primes p such that p + d is also prime, where d is the largest digit of p.

Offset 1, canonical program `A245742.P1630487989177979838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A245742 (n : ℕ) : ℤ :=
  A245742.P1630487989177979838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A245742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249372.P11330790995747515268

`eq[1, A248805(n+1)²]+1`
-/

namespace A249372.P11330790995747515268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249372.P11330790995747515268

noncomputable section

/-- A249372: Numbers k such that A156257(k) != A074292(k).

Offset 1, canonical program `A249372.P11330790995747515268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2620 terms. -/
def A249372 (n : ℕ) : ℤ :=
  (A249372.P11330790995747515268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2620 terms. -/
def A249372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257682.P6778273375056823921

`A257680(n)+a(n-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257682.P6778273375056823921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A257680 n + a (n - 1)

end

end A257682.P6778273375056823921

noncomputable section

/-- A257682: Partial sums of A257680: a(0) = 0; for n >= 1, a(n) = A257680(n) + a(n-1).

Offset 0, canonical program `A257682.P6778273375056823921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257682 (n : ℕ) : ℤ :=
  A257682.P6778273375056823921.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A257682.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261101.P2281269014081318971

`∑[char[A261082(n)]]`
-/

namespace A261101.P2281269014081318971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261082 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261101.P2281269014081318971

noncomputable section

/-- A261101: After zero, each n occurs A261091(n) times.

Offset 0, canonical program `A261101.P2281269014081318971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7625 terms. -/
def A261101 (n : ℕ) : ℤ :=
  (A261101.P2281269014081318971.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7625 terms. -/
def A261101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269704.P3345989859340557520

`∩[A024704(n+1), A080147(n+1)]`
-/

namespace A269704.P3345989859340557520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269704.P3345989859340557520

noncomputable section

/-- A269704: Numbers k such that prime(k) == 1 (mod 8).

Offset 1, canonical program `A269704.P3345989859340557520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A269704 (n : ℕ) : ℤ :=
  (A269704.P3345989859340557520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A269704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270311.P4966833465686400972

`A061395(p?[A270310(n+1)])`
-/

namespace A270311.P4966833465686400972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270311.P4966833465686400972

noncomputable section

/-- A270311: Indices of primes ending with the same decimal digit as the previous or next prime.

Offset 1, canonical program `A270311.P4966833465686400972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270311 (n : ℕ) : ℤ :=
  A270311.P4966833465686400972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273662.P15426500531253154143

`A257680(n+1)+a(n-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273662.P15426500531253154143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A257680 (n + 1) + a (n - 1)

end

end A273662.P15426500531253154143

noncomputable section

/-- A273662: Least monotonic left inverse for A256450: a(1) = 0; for n > 1, a(n) = A257680(n) + a(n-1).

Offset 1, canonical program `A273662.P15426500531253154143`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273662 (n : ℕ) : ℤ :=
  A273662.P15426500531253154143.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280919.P2165921723752371989

`A280223(A071562(n+1))`
-/

namespace A280919.P2165921723752371989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280223 (A071562 (n + 1)).toNat

end

end A280919.P2165921723752371989

noncomputable section

/-- A280919: Precipices from the successive terraces, descending by the main diagonal of the pyramid described in A245092. Also first differences of A071562.

Offset 1, canonical program `A280919.P2165921723752371989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, A280223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280919 (n : ℕ) : ℤ :=
  A280919.P2165921723752371989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071562, A280223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280919.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A283844.P7909332745208675623

`A063776(2*(n+1))+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283844.P7909332745208675623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (2 * (n + 1)) + 1

end

end A283844.P7909332745208675623

noncomputable section

/-- A283844: a(n) = A063776(2*n) + 1.

Offset 1, canonical program `A283844.P7909332745208675623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283844 (n : ℕ) : ℤ :=
  A283844.P7909332745208675623.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063776, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286606.P14280755880862415863

`(n+1)%(n+1-A227191(n+1))`
-/

namespace A286606.P14280755880862415863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) ((n + 1 : ℤ) - A227191 (n + 1))

end

end A286606.P14280755880862415863

noncomputable section

/-- A286606: a(n) = n mod product of nonzero digits of n in factorial base.

Offset 1, canonical program `A286606.P14280755880862415863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286606 (n : ℕ) : ℤ :=
  A286606.P14280755880862415863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286607.P13954288801725100147

`comp[A118363(n+1)-1]+1`
-/

namespace A286607.P13954288801725100147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286607.P13954288801725100147

noncomputable section

/-- A286607: Numbers that are not divisible by the sum of their factorial base digits (A034968).

Offset 1, canonical program `A286607.P13954288801725100147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286607 (n : ℕ) : ℤ :=
  (A286607.P13954288801725100147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288003.P13602552641808821543

`A002487(n+1)-A288002(n+1)`
-/

namespace A288003.P13602552641808821543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A288002 (n + 1)

end

end A288003.P13602552641808821543

noncomputable section

/-- A288003: R-fusc, sequence r of the mutual diatomic recurrence pair: l(1)=0, r(1)=1, l(2n) = l(n), r(2n) = r(n), l(2n+1) = l(n)+r(n), r(2n+1) = l(n+1)+r(n+1), where l(n) = A288002(n).

Offset 1, canonical program `A288003.P13602552641808821543`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288003 (n : ℕ) : ℤ :=
  A288003.P13602552641808821543.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A288003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289341.P18206740167896856464

`a(n-1)+A288002(n)` with `a(0)=1, a(1)=1`
-/

namespace A289341.P18206740167896856464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A288002 n

end

end A289341.P18206740167896856464

noncomputable section

/-- A289341: Partial sums of l-fusc A288002(n-1) + 1.

Offset 1, canonical program `A289341.P18206740167896856464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289341 (n : ℕ) : ℤ :=
  A289341.P18206740167896856464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289341.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A306510.P7325178267120369206

`eq[2*A145154(n), A145154(A007953(n))]`
-/

namespace A306510.P7325178267120369206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306510.P7325178267120369206

noncomputable section

/-- A306510: Numbers k such that twice the number of divisors of k is equal to the number of divisors of the sum of digits of k.

Offset 1, canonical program `A306510.P7325178267120369206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A306510 (n : ℕ) : ℤ :=
  (A306510.P7325178267120369206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A306510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307716.P13840358709468437809

`∑[A000040(n+1)]/A309036(n+1)`
-/

namespace A307716.P13840358709468437809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A309036 (n + 1) : ℚ)

end

end A307716.P13840358709468437809

noncomputable section

/-- A307716: Denominator of the barycenter of first n primes defined as a(n) = denominator(Sum_{i=1..n} (i*prime(i)) / Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A307716.P13840358709468437809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307716 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307716.P13840358709468437809.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319712.P12974217456940558250

`A319711(n+1)+A034968(n+1)`
-/

namespace A319712.P12974217456940558250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319711 (n + 1) + A034968 (n + 1)

end

end A319712.P12974217456940558250

noncomputable section

/-- A319712: Sum of A034968(d) over divisors d of n, where A034968 gives the sum of digits in factorial base.

Offset 1, canonical program `A319712.P12974217456940558250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, A319711, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319712 (n : ℕ) : ℤ :=
  A319712.P12974217456940558250.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, A319711, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319712.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323160.P16832328256614807770

`gcd(n+1, A323159(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323160.P16832328256614807770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A323159 (n + 1))

end

end A323160.P16832328256614807770

noncomputable section

/-- A323160: a(n) = gcd(n, A323159(n)) = gcd(n, A034448(n), A048250(n)).

Offset 1, canonical program `A323160.P16832328256614807770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323160 (n : ℕ) : ℤ :=
  (A323160.P16832328256614807770.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324718.P17421159723006763235

`A324639(eq[1, A324639(n+1)%2]+1)`
-/

namespace A324718.P17421159723006763235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324639 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A324718.P17421159723006763235

noncomputable section

/-- A324718: Odd numbers n for which bitand(2n,sigma(n)) = 2*bitand(n,sigma(n)-n), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324718.P17421159723006763235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A324718 (n : ℕ) : ℤ :=
  A324718.P17421159723006763235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. -/
def A324718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325974.P5304343172121658747

`A000203(n+1)-A325973(n+1)`
-/

namespace A325974.P5304343172121658747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325973 (n + 1)

end

end A325974.P5304343172121658747

noncomputable section

/-- A325974: Arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}: a(n) = (1/2)*(A048146(n) + A162296(n)).

Offset 1, canonical program `A325974.P5304343172121658747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325974 (n : ℕ) : ℤ :=
  A325974.P5304343172121658747.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328205.P2491949014738295465

`A118363(eq[1, A118363(n+2)-A118363(n+1)]+1)`
-/

namespace A328205.P2491949014738295465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 2) - A118363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A328205.P2491949014738295465

noncomputable section

/-- A328205: Numbers m such that m and m+1 are consecutive factorial base Niven numbers (A118363).

Offset 1, canonical program `A328205.P2491949014738295465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A328205 (n : ℕ) : ℤ :=
  A328205.P2491949014738295465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A328205.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A333910.P3160973853015198064

`lt[A070176(A001615(n+1)), 1]+1`
-/

namespace A333910.P3160973853015198064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A001615 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333910.P3160973853015198064

noncomputable section

/-- A333910: Numbers k such that psi(k) is the sum of 2 squares, where psi is the Dedekind psi function (A001615).

Offset 1, canonical program `A333910.P3160973853015198064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 962 terms. -/
def A333910 (n : ℕ) : ℤ :=
  (A333910.P3160973853015198064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 962 terms. -/
def A333910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334233.P6544359111704176220

`A334576(A292600(A053438(n)))`
-/

namespace A334233.P6544359111704176220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334576 (A292600 (A053438 n).toNat).toNat

end

end A334233.P6544359111704176220

noncomputable section

/-- A334233: a(n) is the X-coordinate of the point at n steps forward from the origin along the H-order curve defined in A334232; sequence A334234 gives Y-coordinates.

Offset 0, canonical program `A334233.P6544359111704176220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A334233 (n : ℕ) : ℤ :=
  A334233.P6544359111704176220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A334233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334235.P17269033423127776426

`A334577(2*A292600(n))`
-/

namespace A334235.P17269033423127776426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334577 (2 * A292600 n).toNat

end

end A334235.P17269033423127776426

noncomputable section

/-- A334235: a(n) is the X-coordinate of the point at n steps backward from the origin along the H-order curve defined in A334232; sequence A334236 gives Y-coordinates.

Offset 0, canonical program `A334235.P17269033423127776426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334235 (n : ℕ) : ℤ :=
  A334235.P17269033423127776426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A334235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337450.P988308958090563321

`A212804(A028310(n))-A178472(A028310(n))`
-/

namespace A337450.P988308958090563321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A028310 n).toNat - A178472 (A028310 n).toNat

end

end A337450.P988308958090563321

noncomputable section

/-- A337450: Number of relatively prime compositions of n with no 1's.

Offset 0, canonical program `A337450.P988308958090563321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A337450 (n : ℕ) : ℤ :=
  A337450.P988308958090563321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A337450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340082.P8525962363158034396

`A003958(n+1)/A340081(n+1)`
-/

namespace A340082.P8525962363158034396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A340081 (n + 1) : ℚ)

end

end A340082.P8525962363158034396

noncomputable section

/-- A340082: a(n) = A003958(n) / gcd(n-1, A003958(n)).

Offset 1, canonical program `A340082.P8525962363158034396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A340081, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340082.P8525962363158034396.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A340081, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340083.P188478940144942709

`n/A340081(n+1)`
-/

namespace A340083.P188478940144942709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A340081 (n + 1) : ℚ)

end

end A340083.P188478940144942709

noncomputable section

/-- A340083: a(n) = (n-1) / gcd(n-1, A003958(n)).

Offset 1, canonical program `A340083.P188478940144942709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340083.P188478940144942709.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342040.P10166415705382760406

`A007088(A048700(n+1))`
-/

namespace A342040.P10166415705382760406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048700 (n + 1)).toNat

end

end A342040.P10166415705382760406

noncomputable section

/-- A342040: Binary palindromes of odd length.

Offset 1, canonical program `A342040.P10166415705382760406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342040 (n : ℕ) : ℤ :=
  A342040.P10166415705382760406.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342040.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A345463.P16392055412775158657

`A001037(n+1)*A002884(n+1)/A000225(n+1)`
-/

namespace A345463.P16392055412775158657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) * A002884 (n + 1) : ℚ) / (A000225 (n + 1) : ℚ)

end

end A345463.P16392055412775158657

noncomputable section

/-- A345463: Number of n X n matrices over GF(2) whose characteristic polynomial is irreducible.

Offset 1, canonical program `A345463.P16392055412775158657`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345463 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345463.P16392055412775158657.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348980.P7651113664669267661

`∑{d}[n+1, #*A322582((n+1)/#)]`
-/

namespace A348980.P7651113664669267661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A322582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348980.P7651113664669267661

noncomputable section

/-- A348980: a(n) = Sum_{d|n} d * A322582(n/d), where A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348980.P7651113664669267661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348980 (n : ℕ) : ℤ :=
  A348980.P7651113664669267661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348982.P2529502468728272317

`∑{d}[n+1, A001615(#)*A322582((n+1)/#)]`
-/

namespace A348982.P2529502468728272317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A322582 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348982.P2529502468728272317

noncomputable section

/-- A348982: a(n) = Sum_{d|n} psi(n/d) * A322582(d), where psi is Dedekind psi (A001615), A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348982.P2529502468728272317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348982 (n : ℕ) : ℤ :=
  A348982.P2529502468728272317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348984.P8034432277354798354

`gcd(A000203(n+1), A325973(n+1))`
-/

namespace A348984.P8034432277354798354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A325973 (n + 1))

end

end A348984.P8034432277354798354

noncomputable section

/-- A348984: a(n) = gcd(sigma(n), A325973(n)), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

Offset 1, canonical program `A348984.P8034432277354798354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348984 (n : ℕ) : ℤ :=
  (A348984.P8034432277354798354.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351444.P16678748484825930213

`A322582(n+1)+A351442(n+1)`
-/

namespace A351444.P16678748484825930213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322582 (n + 1) + A351442 (n + 1)

end

end A351444.P16678748484825930213

noncomputable section

/-- A351444: a(n) = n - A003958(n) + A003958(sigma(n)), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351444.P16678748484825930213`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351444 (n : ℕ) : ℤ :=
  A351444.P16678748484825930213.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322582, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351445.P1347753034350702190

`A351442(n+1)-A003958(n+1)`
-/

namespace A351445.P1347753034350702190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351442 (n + 1) - A003958 (n + 1)

end

end A351445.P1347753034350702190

noncomputable section

/-- A351445: a(n) = A003958(sigma(n)) - A003958(n), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351445.P1347753034350702190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351445 (n : ℕ) : ℤ :=
  A351445.P1347753034350702190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A351442, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352103.P9753175658429631275

`A007088(A003796(n+1))`
-/

namespace A352103.P9753175658429631275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003796 (n + 1)).toNat

end

end A352103.P9753175658429631275

noncomputable section

/-- A352103: a(n) is the maximal (or lazy) tribonacci representation of n using a binary system of vectors not containing three consecutive 0's.

Offset 0, canonical program `A352103.P9753175658429631275`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003796, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352103 (n : ℕ) : ℤ :=
  A352103.P9753175658429631275.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003796, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364557.P16113127302810243144

`2^A297167(n+1)`
-/

namespace A364557.P16113127302810243144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A297167 (n + 1) : ℤ)

end

end A364557.P16113127302810243144

noncomputable section

/-- A364557: Möbius transform of A005941.

Offset 1, canonical program `A364557.P16113127302810243144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297167, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364557 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364557.P16113127302810243144.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297167, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371056.P7401130399935352017

`A004488(A371054(n+1))`
-/

namespace A371056.P7401130399935352017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A371054 (n + 1)).toNat

end

end A371056.P7401130399935352017

noncomputable section

/-- A371056: Numbers whose ternary representation consists of a run of 2's, then a run of 0's, then a run of 1's.

Offset 1, canonical program `A371056.P7401130399935352017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A371056 (n : ℕ) : ℤ :=
  A371056.P7401130399935352017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A371056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372886.P4173512411131491016

`eq[1, A010051(A372429(n+1))]+1`
-/

namespace A372886.P4173512411131491016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A372429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372886.P4173512411131491016

noncomputable section

/-- A372886: Indices of prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

Offset 1, canonical program `A372886.P4173512411131491016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A372886 (n : ℕ) : ℤ :=
  (A372886.P4173512411131491016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. -/
def A372886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374467.P9810705810024272100

`eq[1, A374466(n+1)]+1`
-/

namespace A374467.P9810705810024272100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374467.P9810705810024272100

noncomputable section

/-- A374467: Numbers that are products of an odd number of primes and the total number of 1-bits in the exponents of their prime factorization n is odd.

Offset 1, canonical program `A374467.P9810705810024272100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374467 (n : ℕ) : ℤ :=
  (A374467.P9810705810024272100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374472.P9715634022253251052

`eq[1, A374471(n+1)]+1`
-/

namespace A374472.P9715634022253251052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374472.P9715634022253251052

noncomputable section

/-- A374472: Numbers k such that bigomega(k) and A064547(k) are both even, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374472.P9715634022253251052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374472 (n : ℕ) : ℤ :=
  (A374472.P9715634022253251052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377028.P1346066966373044945

`∑[A341629(n+1)]`
-/

namespace A377028.P1346066966373044945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377028.P1346066966373044945

noncomputable section

/-- A377028: a(n) = number of integers k <= n such that k is a term in A055932.

Offset 1, canonical program `A377028.P1346066966373044945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377028 (n : ℕ) : ℤ :=
  A377028.P1346066966373044945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378684.P885690523636202921

`A378200(A378200(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378684.P885690523636202921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A378200 (n + 1)).toNat

end

end A378684.P885690523636202921

noncomputable section

/-- A378684: a(n) = A378200(A378200(n)).

Offset 1, canonical program `A378684.P885690523636202921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378684 (n : ℕ) : ℤ :=
  A378684.P885690523636202921.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378762.P3404448250858099609

`A378200(A378200(A378200(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378762.P3404448250858099609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A378200 (A378200 (n + 1)).toNat).toNat

end

end A378762.P3404448250858099609

noncomputable section

/-- A378762: a(n) = A378200(A378200(A378200(n))).

Offset 1, canonical program `A378762.P3404448250858099609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378762 (n : ℕ) : ℤ :=
  A378762.P3404448250858099609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379268.P8143241729187957033

`A007088(A379267(n+1))`
-/

namespace A379268.P8143241729187957033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A379267 (n + 1)).toNat

end

end A379268.P8143241729187957033

noncomputable section

/-- A379268: Numbers with only digits "1" and two digits "0".

Offset 1, canonical program `A379268.P8143241729187957033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A379267, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379268 (n : ℕ) : ℤ :=
  A379268.P8143241729187957033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A379267, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388986.P11904024746085052397

`lt[A325973(n+1), n]+1`
-/

namespace A388986.P11904024746085052397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388986.P11904024746085052397

noncomputable section

/-- A388986: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} is less than 2*k.

Offset 1, canonical program `A388986.P11904024746085052397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986 (n : ℕ) : ℤ :=
  (A388986.P11904024746085052397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4846 terms. -/
def A388986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389074.P18108287681303167250

`A034448(n+1)/A323159(n+1)`
-/

namespace A389074.P18108287681303167250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389074.P18108287681303167250

noncomputable section

/-- A389074: Numerator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389074.P18108287681303167250`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389074.P18108287681303167250.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389075.P12257504307077228747

`A048250(n+1)/A323159(n+1)`
-/

namespace A389075.P12257504307077228747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A323159 (n + 1) : ℚ)

end

end A389075.P12257504307077228747

noncomputable section

/-- A389075: Denominator of ratio A034448(n) / A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389075.P12257504307077228747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389075.P12257504307077228747.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A323159, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389170.P11666675562721126669

`A057723(n+1)-A048146(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389170.P11666675562721126669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A048146 (n + 1)

end

end A389170.P11666675562721126669

noncomputable section

/-- A389170: a(n) = A057723(n) - A048146(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389170.P11666675562721126669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389170 (n : ℕ) : ℤ :=
  A389170.P11666675562721126669.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389171.P8921738463794581484

`n+1+A048146(n+1)-A057723(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389171.P8921738463794581484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A048146 (n + 1) - A057723 (n + 1)

end

end A389171.P8921738463794581484

noncomputable section

/-- A389171: a(n) = n + A048146(n) - A057723(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A389171.P8921738463794581484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389171 (n : ℕ) : ℤ :=
  A389171.P8921738463794581484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389215.P13589853183880962071

`lt[n, A325973(n+1)]+1`
-/

namespace A389215.P13589853183880962071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389215.P13589853183880962071

noncomputable section

/-- A389215: Numbers k such that {sum of unitary divisors of k} plus {sum of squarefree divisors of k} >= 2*k.

Offset 1, canonical program `A389215.P13589853183880962071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215 (n : ℕ) : ℤ :=
  (A389215.P13589853183880962071.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390806.P17797365199190271958

`(n+1+A008966(n+1))*A063659(n+1)/2`
-/

namespace A390806.P17797365199190271958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A008966 (n + 1)) * A063659 (n + 1) : ℚ) / 2

end

end A390806.P17797365199190271958

noncomputable section

/-- A390806: The sum of the integers k from 1 to n such that gcd(n, k) is squarefree (A005117).

Offset 1, canonical program `A390806.P17797365199190271958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A063659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390806 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390806.P17797365199190271958.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A063659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209974.P4619457533679587758

`a(n-1)+2*A126246(n)-A000010(n)` with `a(0)=0, a(1)=0`
-/

namespace A209974.P4619457533679587758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + 2 * A126246 n - A000010 n

end

end A209974.P4619457533679587758

noncomputable section

/-- A209974: a(n) = A209973(n)/4.

Offset 0, canonical program `A209974.P4619457533679587758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A126246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A209974 (n : ℕ) : ℤ :=
  A209974.P4619457533679587758.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A126246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A209974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209994.P10842801715655778839

`n^4-2*A212054(n)`
-/

namespace A209994.P10842801715655778839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - 2 * A212054 n

end

end A209994.P10842801715655778839

noncomputable section

/-- A209994: Number of 2 X 2 matrices with all elements in {1,2,...,n} and determinant in {-1,0,1}.

Offset 0, canonical program `A209994.P10842801715655778839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A209994 (n : ℕ) : ℤ :=
  A209994.P10842801715655778839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A209994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212053.P4014316363866120723

`n^4-A212054(n)`
-/

namespace A212053.P4014316363866120723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A212054 n

end

end A212053.P4014316363866120723

noncomputable section

/-- A212053: Number of (w,x,y,z) with all terms in {1,...,n} and w*x<=y*z+1.

Offset 0, canonical program `A212053.P4014316363866120723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A212053 (n : ℕ) : ℤ :=
  A212053.P4014316363866120723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A212053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212666.P6478584111494388376

`lt[A006530(n+1)², A007947(n+1)]+1`
-/

namespace A212666.P6478584111494388376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A212666.P6478584111494388376

noncomputable section

/-- A212666: Numbers such that the greatest prime divisor is less than the product of the other distinct prime divisors.

Offset 1, canonical program `A212666.P6478584111494388376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. -/
def A212666 (n : ℕ) : ℤ :=
  (A212666.P6478584111494388376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8484 terms. -/
def A212666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214320.P9969656214956985357

`A006530(a(n-1)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A214320.P9969656214956985357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A006530 (a (n - 1) + a (n - 3)).toNat

end

end A214320.P9969656214956985357

noncomputable section

/-- A214320: a(0)=a(1)=a(2)=1; thereafter a(n) = gpf(a(n-1)+a(n-3)), where gpf = "greatest prime factor".

Offset 0, canonical program `A214320.P9969656214956985357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214320 (n : ℕ) : ℤ :=
  A214320.P9969656214956985357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214662.P6787687657922781023

`A006530(A001923(n+2))`
-/

namespace A214662.P6787687657922781023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001923 (n + 2)).toNat

end

end A214662.P6787687657922781023

noncomputable section

/-- A214662: Greatest prime divisor of 1 + 2^2 + 3^3 + ... + n^n.

Offset 2, canonical program `A214662.P6787687657922781023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214662 (n : ℕ) : ℤ :=
  A214662.P6787687657922781023.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216850.P14243807484774658923

`A034444(n+1)*A100371(n+1)`
-/

namespace A216850.P14243807484774658923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A100371 (n + 1)

end

end A216850.P14243807484774658923

noncomputable section

/-- A216850: Number of distinct infinite sets of primes congruent to a subset of 1..n mod n.

Offset 1, canonical program `A216850.P14243807484774658923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A216850 (n : ℕ) : ℤ :=
  A216850.P14243807484774658923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A216850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216983.P291002655810337799

`A006530(gcd(n, 7*(n+30)))`
-/

namespace A216983.P291002655810337799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (7 * (n + 30)))

end

end A216983.P291002655810337799

noncomputable section

/-- A216983: The integers sieved by 7, 5, 3, and 2.

Offset 1, canonical program `A216983.P291002655810337799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216983 (n : ℕ) : ℤ :=
  A216983.P291002655810337799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217434.P11934691035472252803

`(n+1)*A006530(n+1)/A007947(n+1)`
-/

namespace A217434.P11934691035472252803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A006530 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A217434.P11934691035472252803

noncomputable section

/-- A217434: n divided by the product of all its prime divisors smaller than the largest prime divisor.

Offset 1, canonical program `A217434.P11934691035472252803`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217434.P11934691035472252803.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A217434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A217581.P13303256244740024529

`A006530(A072504(n+1))`
-/

namespace A217581.P13303256244740024529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072504 (n + 1)).toNat

end

end A217581.P13303256244740024529

noncomputable section

/-- A217581: Largest prime divisor of n <= sqrt(n), 1 if n is prime or 1.

Offset 1, canonical program `A217581.P13303256244740024529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217581 (n : ℕ) : ℤ :=
  A217581.P13303256244740024529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217895.P6948623987334555102

`∑{d}[n+1, #/A006530(#)]`
-/

namespace A217895.P6948623987334555102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A006530 d : ℚ)

end

end A217895.P6948623987334555102

noncomputable section

/-- A217895: Sum of d/Gpf(d) for all divisors d of n, with Gpf(d) the greatest prime factor of d.

Offset 1, canonical program `A217895.P6948623987334555102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217895.P6948623987334555102.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219650.P9586038116927092165

`A219651(2*n)`
-/

namespace A219650.P9586038116927092165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (2 * n)

end

end A219650.P9586038116927092165

noncomputable section

/-- A219650: The nonnegative integers n such that there exists a number k with A034968(n+k)=k.

Offset 0, canonical program `A219650.P9586038116927092165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219650 (n : ℕ) : ℤ :=
  A219650.P9586038116927092165.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A221183.P10202177714929776963

`A006530(2*a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A221183.P10202177714929776963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006530 (2 * a (n - 1) + a (n - 2)).toNat

end

end A221183.P10202177714929776963

noncomputable section

/-- A221183: a(0)=0, a(1)=1; thereafter a(n) = gpf(2*a(n-1)+a(n-2)), where gpf = "greatest prime factor" (A006530).

Offset 0, canonical program `A221183.P10202177714929776963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221183 (n : ℕ) : ℤ :=
  A221183.P10202177714929776963.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226523.P42842706496276235

`A006530(and(9, -A000040(n+1)²))-2`
-/

namespace A226523.P42842706496276235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land 9 (-(A000040 (n + 1) ^ 2))).toNat - 2

end

end A226523.P42842706496276235

noncomputable section

/-- A226523: a(n) = 0 if p=2, 1 if 2 is a square mod p, -1 otherwise, where p = prime(n).

Offset 1, canonical program `A226523.P42842706496276235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226523 (n : ℕ) : ℤ :=
  A226523.P42842706496276235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A226523.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227349.P3803513828955669446

`A005361(A005940(1+n))`
-/

namespace A227349.P3803513828955669446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A005940 (1 + n)).toNat

end

end A227349.P3803513828955669446

noncomputable section

/-- A227349: Product of lengths of runs of 1-bits in binary representation of n.

Offset 0, canonical program `A227349.P3803513828955669446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227349 (n : ℕ) : ℤ :=
  A227349.P3803513828955669446.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A227349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227575.P8313750550235113537

`A006530(A034491(n))`
-/

namespace A227575.P8313750550235113537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034491 n).toNat

end

end A227575.P8313750550235113537

noncomputable section

/-- A227575: Largest prime factor of 7^n + 1.

Offset 0, canonical program `A227575.P8313750550235113537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227575 (n : ℕ) : ℤ :=
  A227575.P8313750550235113537.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227944.P6444077743464981226

`1+a(A053575(n+1)-1)` with `a(0)=0`
-/

namespace A227944.P6444077743464981226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A053575 (n + 1) - 1).toNat

end

end A227944.P6444077743464981226

noncomputable section

/-- A227944: Number of iterations of "take odd part of phi" (A053575) to reach 1 from n.

Offset 1, canonical program `A227944.P6444077743464981226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053575, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227944 (n : ℕ) : ℤ :=
  (A227944.P6444077743464981226.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053575, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A227944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228235.P13597145891255613777

`ceil(A228233(n+1)/2)`
-/

namespace A228235.P13597145891255613777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228233 (n + 1) : ℚ) / 2⌉

end

end A228235.P13597145891255613777

noncomputable section

/-- A228235: Number of Gaussian primes of norm less than or equal to n in the first quadrant on or below the first diagonal.

Offset 1, canonical program `A228235.P13597145891255613777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228235 (n : ℕ) : ℤ :=
  A228235.P13597145891255613777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A228235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229086.P178086772296195941

`A006530(p?[A281379(n+1)+1]-A000007(n))`
-/

namespace A229086.P178086772296195941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281379 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n).toNat

end

end A229086.P178086772296195941

noncomputable section

/-- A229086: Numbers k such that the concatenation of the divisors of k written in base 2 is a palindromic number.

Offset 1, canonical program `A229086.P178086772296195941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A229086 (n : ℕ) : ℤ :=
  A229086.P178086772296195941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A229086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238533.P17719701383286130883

`(n+1)*A189393(n+1)`
-/

namespace A238533.P17719701383286130883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189393 (n + 1)

end

end A238533.P17719701383286130883

noncomputable section

/-- A238533: Number of solutions to gcd(x^2 + y^2 + z^2 + t^2 + h^2, n) = 1 with x,y,z,t,h in [0,n-1].

Offset 1, canonical program `A238533.P17719701383286130883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238533 (n : ℕ) : ℤ :=
  A238533.P17719701383286130883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245486.P4019298664788629082

`A006530(n+1)*A006530(n+2)`
-/

namespace A245486.P4019298664788629082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A006530 (n + 2)

end

end A245486.P4019298664788629082

noncomputable section

/-- A245486: Product of the greatest prime factor of n and the greatest prime factor of n+1.

Offset 1, canonical program `A245486.P4019298664788629082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245486 (n : ℕ) : ℤ :=
  A245486.P4019298664788629082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245565.P8152710951243314242

`∏{e}[A005940(n+1), A000129(#+1)]`
-/

namespace A245565.P8152710951243314242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000129 (Nat.factorization (f1 n).natAbs p + 1)

end

end A245565.P8152710951243314242

noncomputable section

/-- A245565: a(n) = Product_{i in row n of A245562} Pell(i+1).

Offset 0, canonical program `A245565.P8152710951243314242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A245565 (n : ℕ) : ℤ :=
  A245565.P8152710951243314242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A245565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246596.P4248891644944988047

`A069739(A005940(1+n))`
-/

namespace A246596.P4248891644944988047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069739 (A005940 (1 + n)).toNat

end

end A246596.P4248891644944988047

noncomputable section

/-- A246596: Run Length Transform of Catalan numbers A000108.

Offset 0, canonical program `A246596.P4248891644944988047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A069739, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246596 (n : ℕ) : ℤ :=
  A246596.P4248891644944988047.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A069739, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246596.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246660.P2458529780599884726

`A112624(A005940(1+n))`
-/

namespace A246660.P2458529780599884726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A005940 (1 + n)).toNat

end

end A246660.P2458529780599884726

noncomputable section

/-- A246660: Run Length Transform of factorials.

Offset 0, canonical program `A246660.P2458529780599884726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A112624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246660 (n : ℕ) : ℤ :=
  A246660.P2458529780599884726.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A112624, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249666.P16235947781865661960

`record[(n+3)%A006530(A286901(n+3))]`
-/

namespace A249666.P16235947781865661960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A006530 (A286901 (n + 3)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249666.P16235947781865661960

noncomputable section

/-- A249666: Numbers n such that the sum of n and the largest prime

Offset 1, canonical program `A249666.P16235947781865661960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A249666 (n : ℕ) : ℤ :=
  A249666.P16235947781865661960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A249666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249740.P7780659376755282522

`A006530(A003557(n+1))`
-/

namespace A249740.P7780659376755282522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003557 (n + 1)).toNat

end

end A249740.P7780659376755282522

noncomputable section

/-- A249740: The largest prime whose square divides n, 1 if n is squarefree.

Offset 1, canonical program `A249740.P7780659376755282522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249740 (n : ℕ) : ℤ :=
  A249740.P7780659376755282522.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249740.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252750.P12930142929614438506

`A005940(2*n+1)-A005940(2*(n+1))`
-/

namespace A252750.P12930142929614438506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (2 * n + 1) - A005940 (2 * (n + 1))

end

end A252750.P12930142929614438506

noncomputable section

/-- A252750: a(n) = A003961(A005940(n+1)) - 2 * A005940(n+1).

Offset 0, canonical program `A252750.P12930142929614438506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A252750 (n : ℕ) : ℤ :=
  A252750.P12930142929614438506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A252750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253254.P7775952260682555816

`A006530(A051682(n+2))`
-/

namespace A253254.P7775952260682555816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051682 (n + 2)).toNat

end

end A253254.P7775952260682555816

noncomputable section

/-- A253254: Largest prime factor of the n-th 11-gonal number.

Offset 2, canonical program `A253254.P7775952260682555816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253254 (n : ℕ) : ℤ :=
  A253254.P7775952260682555816.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253560.P6679352984908299498

`A006530(n+1)*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253560.P6679352984908299498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * (n + 1 : ℤ)

end

end A253560.P6679352984908299498

noncomputable section

/-- A253560: Multiply n by its largest prime factor: a(n) = A006530(n) * n.

Offset 1, canonical program `A253560.P6679352984908299498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253560 (n : ℕ) : ℤ :=
  A253560.P6679352984908299498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253560.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253782.P822978868598912140

`lt[7, A113061((n+1)/A006530(n+1))]+1`
-/

namespace A253782.P822978868598912140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A253782.P822978868598912140

noncomputable section

/-- A253782: Numbers n for which A075167(n) <> A252464(n).

Offset 1, canonical program `A253782.P822978868598912140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A253782 (n : ℕ) : ℤ :=
  (A253782.P822978868598912140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A253782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255464.P10753955913467884624

`∏{e}[A005940(n+1), A255465(#)]`
-/

namespace A255464.P10753955913467884624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255465 (Nat.factorization (f1 n).natAbs p)

end

end A255464.P10753955913467884624

noncomputable section

/-- A255464: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 137 when started with a single ON cell.

Offset 0, canonical program `A255464.P10753955913467884624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255464 (n : ℕ) : ℤ :=
  A255464.P10753955913467884624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A255464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255670.P14046333864495007464

`A035612(A000201(n+1))`
-/

namespace A255670.P14046333864495007464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A000201 (n + 1)).toNat

end

end A255670.P14046333864495007464

noncomputable section

/-- A255670: Number of the column of the Wythoff array (A035513) that contains L(n), where L = A000201, the lower Wythoff sequence.

Offset 1, canonical program `A255670.P14046333864495007464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255670 (n : ℕ) : ℤ :=
  A255670.P14046333864495007464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256654.P7882076535163150395

`A000045(A108852(n))`
-/

namespace A256654.P7882076535163150395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 n).toNat

end

end A256654.P7882076535163150395

noncomputable section

/-- A256654: Least Fibonacci number not less than n.

Offset 1, canonical program `A256654.P7882076535163150395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256654 (n : ℕ) : ℤ :=
  A256654.P7882076535163150395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257586.P15882022975451041570

`comp[(3*A006530(n+1))%(n+1)]`
-/

namespace A257586.P15882022975451041570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A006530 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257586.P15882022975451041570

noncomputable section

/-- A257586: Numbers that are neither primes nor three times primes.

Offset 1, canonical program `A257586.P15882022975451041570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257586 (n : ℕ) : ℤ :=
  (A257586.P15882022975451041570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259650.P13373830699041172912

`A006530(A000326(n+2))`
-/

namespace A259650.P13373830699041172912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000326 (n + 2)).toNat

end

end A259650.P13373830699041172912

noncomputable section

/-- A259650: Largest prime factor of the n-th pentagonal number (A000326).

Offset 2, canonical program `A259650.P13373830699041172912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259650 (n : ℕ) : ℤ :=
  A259650.P13373830699041172912.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260234.P5914860103157422503

`A006530(A000384(n+2))`
-/

namespace A260234.P5914860103157422503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000384 (n + 2)).toNat

end

end A260234.P5914860103157422503

noncomputable section

/-- A260234: Largest prime factor of the n-th hexagonal number (A000384).

Offset 2, canonical program `A260234.P5914860103157422503`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260234 (n : ℕ) : ℤ :=
  A260234.P5914860103157422503.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A261094.P291515214993649240

`A261092(n)*A261093(n)`
-/

namespace A261094.P291515214993649240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261092 n * A261093 n

end

end A261094.P291515214993649240

noncomputable section

/-- A261094: Left inverse of A219640: If n = A219640(k) for some k, then a(n) = k, otherwise zero.

Offset 0, canonical program `A261094.P291515214993649240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261092, A261093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261094 (n : ℕ) : ℤ :=
  A261094.P291515214993649240.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261092, A261093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A261094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262095.P10827467733905052003

`A000005(n+1)-A086971(n+1)`
-/

namespace A262095.P10827467733905052003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A086971 (n + 1)

end

end A262095.P10827467733905052003

noncomputable section

/-- A262095: Number of non-semiprime divisors of n.

Offset 1, canonical program `A262095.P10827467733905052003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262095 (n : ℕ) : ℤ :=
  A262095.P10827467733905052003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A262095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270807.P1509187675414497600

`a(n-1)+a(n-1)/A006530(a(n-1))+1` with `a(0)=1`
-/

namespace A270807.P1509187675414497600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) / (A006530 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) + 1)

end

end A270807.P1509187675414497600

noncomputable section

/-- A270807: Trajectory of 1 under the map n -> n + n/gpf(n) + 1 (see A269304).

Offset 1, canonical program `A270807.P1509187675414497600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 829 terms. -/
def A270807 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270807.P1509187675414497600.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 829 terms. -/
def A270807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271322.P15050062181397390916

`A006530(A060354(n+2))`
-/

namespace A271322.P15050062181397390916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060354 (n + 2)).toNat

end

end A271322.P15050062181397390916

noncomputable section

/-- A271322: Largest prime factor of the n-th n-gonal number (A060354).

Offset 2, canonical program `A271322.P15050062181397390916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271322 (n : ℕ) : ℤ :=
  A271322.P15050062181397390916.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A271322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274903.P7767053460689236802

`A006530(A052539(n))`
-/

namespace A274903.P7767053460689236802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052539 n).toNat

end

end A274903.P7767053460689236802

noncomputable section

/-- A274903: Largest prime factor of 4^n + 1.

Offset 0, canonical program `A274903.P7767053460689236802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274903 (n : ℕ) : ℤ :=
  A274903.P7767053460689236802.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274905.P1279009335390391940

`A006530(A062395(n))`
-/

namespace A274905.P1279009335390391940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062395 n).toNat

end

end A274905.P1279009335390391940

noncomputable section

/-- A274905: Largest prime factor of 8^n + 1.

Offset 0, canonical program `A274905.P1279009335390391940`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274905 (n : ℕ) : ℤ :=
  A274905.P1279009335390391940.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274906.P4413060585807588716

`A006530(A024036(n+1))`
-/

namespace A274906.P4413060585807588716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024036 (n + 1)).toNat

end

end A274906.P4413060585807588716

noncomputable section

/-- A274906: Largest prime factor of 4^n - 1.

Offset 1, canonical program `A274906.P4413060585807588716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274906 (n : ℕ) : ℤ :=
  A274906.P4413060585807588716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A275840.P13098094200477927866

`A273670(n)-A256450(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275840.P13098094200477927866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - A256450 n

end

end A275840.P13098094200477927866

noncomputable section

/-- A275840: a(n) = A273670(n) - A256450(n).

Offset 0, canonical program `A275840.P13098094200477927866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256450, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275840 (n : ℕ) : ℤ :=
  A275840.P13098094200477927866.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256450, A273670, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276947.P8861823862004383826

`A256450(n+1)-A256450(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276947.P8861823862004383826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (n + 1) - A256450 n

end

end A276947.P8861823862004383826

noncomputable section

/-- A276947: First differences of A256450: a(n) = A256450(n) - A256450(n-1).

Offset 1, canonical program `A276947.P8861823862004383826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276947 (n : ℕ) : ℤ :=
  A276947.P8861823862004383826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276988.P13668740206633188978

`floor(A006530(A175225(n+1))/A052147(n+1))+1`
-/

namespace A276988.P13668740206633188978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (A175225 (n + 1)).toNat : ℚ) / (A052147 (n + 1) : ℚ)⌋ + 1

end

end A276988.P13668740206633188978

noncomputable section

/-- A276988: a(n) is the least k such that 10*k+prime(n) is composite.

Offset 1, canonical program `A276988.P13668740206633188978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A276988 (n : ℕ) : ℤ :=
  A276988.P13668740206633188978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9591 terms. -/
def A276988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277006.P8287458563155925466

`A005940(1+A003714(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277006.P8287458563155925466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A003714 n).toNat

end

end A277006.P8287458563155925466

noncomputable section

/-- A277006: a(n) = A005940(1+A003714(n)); permutation of squarefree numbers.

Offset 0, canonical program `A277006.P8287458563155925466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277006 (n : ℕ) : ℤ :=
  A277006.P8287458563155925466.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277006.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277417.P7340486011847553374

`∪[(n+1)², A073485(n+1)]`
-/

namespace A277417.P7340486011847553374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277417.P7340486011847553374

noncomputable section

/-- A277417: Numbers n for which A248663(n) = A277333(n).

Offset 1, canonical program `A277417.P7340486011847553374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A277417 (n : ℕ) : ℤ :=
  (A277417.P7340486011847553374.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A277417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277813.P6365018661829255093

`A115384(A277812(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277813.P6365018661829255093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A277812 (n + 1)).toNat

end

end A277813.P6365018661829255093

noncomputable section

/-- A277813: a(n) = A115384(A277812(n)) = index of the row where n is located in array A277880.

Offset 1, canonical program `A277813.P6365018661829255093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277813 (n : ℕ) : ℤ :=
  A277813.P6365018661829255093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278049.P11985461488246088473

`∑[A200905(n+1)]-1`
-/

namespace A278049.P11985461488246088473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278049.P11985461488246088473

noncomputable section

/-- A278049: a(n) = 3*(Sum_{k=1..n} phi(k)) - 1, where phi = A000010.

Offset 1, canonical program `A278049.P11985461488246088473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278049 (n : ℕ) : ℤ :=
  A278049.P11985461488246088473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278161.P11501400355849923107

`A046951(A005940(1+n))`
-/

namespace A278161.P11501400355849923107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A005940 (1 + n)).toNat

end

end A278161.P11501400355849923107

noncomputable section

/-- A278161: Run length transform of A008619 (floor(n/2)+1).

Offset 0, canonical program `A278161.P11501400355849923107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278161 (n : ℕ) : ℤ :=
  A278161.P11501400355849923107.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A278161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278569.P10528025825887119479

`∩[A033992(n+1), A098903(n+1)]`
-/

namespace A278569.P10528025825887119479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278569.P10528025825887119479

noncomputable section

/-- A278569: Numbers of the form p^i*q^j*r^k where p,q,r are distinct odd primes and i,j,k >= 1.

Offset 1, canonical program `A278569.P10528025825887119479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3463 terms. -/
def A278569 (n : ℕ) : ℤ :=
  (A278569.P10528025825887119479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3463 terms. -/
def A278569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281020.P16220256379266101386

`eq[A006530(A072283(n)²), A072283(n)]`
-/

namespace A281020.P16220256379266101386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072283 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281020.P16220256379266101386

noncomputable section

/-- A281020: Numbers with a prime number of raised dots in their Braille representation.

Offset 1, canonical program `A281020.P16220256379266101386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281020 (n : ℕ) : ℤ :=
  (A281020.P16220256379266101386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281793.P3676669769379353085

`A006530(A281660(n))`
-/

namespace A281793.P3676669769379353085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A281660 n).toNat

end

end A281793.P3676669769379353085

noncomputable section

/-- A281793: The largest prime factor of (1+n)*(1+n^2).

Offset 0, canonical program `A281793.P3676669769379353085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281793 (n : ℕ) : ℤ :=
  A281793.P3676669769379353085.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281794.P13729554616467775863

`A006530((1+n²)*(1+n^3))`
-/

namespace A281794.P13729554616467775863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((1 + n ^ 2) * (1 + n ^ 3))

end

end A281794.P13729554616467775863

noncomputable section

/-- A281794: The largest prime factor of (1+n^2)*(1+n^3).

Offset 0, canonical program `A281794.P13729554616467775863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281794 (n : ℕ) : ℤ :=
  A281794.P13729554616467775863.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281794.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282098.P4672254977080989792

`A006530(a(n-1))+A006530(a(n-2))+A006530(a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A282098.P4672254977080989792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A006530 (a (n - 1)).toNat + A006530 (a (n - 2)).toNat + A006530 (a (n - 3)).toNat

end

end A282098.P4672254977080989792

noncomputable section

/-- A282098: a(n) = A006530(a(n-1)) + A006530(a(n-2)) + A006530(a(n-3)) with a(0) = a(1) = a(2) = 1.

Offset 0, canonical program `A282098.P4672254977080989792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282098 (n : ℕ) : ℤ :=
  A282098.P4672254977080989792.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284695.P14105735879824220416

`A006530((n+1)*a(A005361(n+1)-1))` with `a(0)=1`
-/

namespace A284695.P14105735879824220416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 ((n + 1 : ℤ) * a (A005361 (n + 1) - 1).toNat).toNat

end

end A284695.P14105735879824220416

noncomputable section

/-- A284695: Greatest prime number appearing in the prime tower factorization of n (when n > 1); a(1) = 1.

Offset 1, canonical program `A284695.P14105735879824220416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A284695 (n : ℕ) : ℤ :=
  A284695.P14105735879824220416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A284695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286574.P1181605856872533712

`A064547(A005940(1+n))`
-/

namespace A286574.P1181605856872533712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A005940 (1 + n)).toNat

end

end A286574.P1181605856872533712

noncomputable section

/-- A286574: Sum of the binary weights of the lengths of 1-runs in base-2 representation of n: a(n) = A000523(A286575(n)).

Offset 0, canonical program `A286574.P1181605856872533712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286574 (n : ℕ) : ℤ :=
  A286574.P1181605856872533712.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286574.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286575.P2149681113595504666

`A037445(A005940(1+n))`
-/

namespace A286575.P2149681113595504666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A005940 (1 + n)).toNat

end

end A286575.P2149681113595504666

noncomputable section

/-- A286575: Run-length transform of A001316.

Offset 0, canonical program `A286575.P2149681113595504666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A037445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286575 (n : ℕ) : ℤ :=
  A286575.P2149681113595504666.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A037445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287459.P13570335528166808079

`record[A006530(A006530(30*n+23)+n+1+n)]`
-/

namespace A287459.P13570335528166808079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (30 * n + 23) + (n + 1 : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287459.P13570335528166808079

noncomputable section

/-- A287459: Primes p such that (15 p + 1)/2 is prime.

Offset 1, canonical program `A287459.P13570335528166808079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A287459 (n : ℕ) : ℤ :=
  A287459.P13570335528166808079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A287459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288601.P5777185184981331824

`comp[A283794(n+1)]+1`
-/

namespace A288601.P5777185184981331824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288601.P5777185184981331824

noncomputable section

/-- A288601: Positions of 0 in A288600; complement of A288602.

Offset 1, canonical program `A288601.P5777185184981331824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288601 (n : ℕ) : ℤ :=
  (A288601.P5777185184981331824.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288602.P9324771817530744836

`A283794(n+1)+1`
-/

namespace A288602.P9324771817530744836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1) + 1

end

end A288602.P9324771817530744836

noncomputable section

/-- A288602: Positions of 1 in A288600; complement of A288601.

Offset 1, canonical program `A288602.P9324771817530744836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288602 (n : ℕ) : ℤ :=
  A288602.P9324771817530744836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289052.P122631715072368316

`a(n-A006530(n))+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A289052.P122631715072368316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A006530 n).toNat + 1

end

end A289052.P122631715072368316

noncomputable section

/-- A289052: a(1) = 1; a(n) = a(n-A006530(n-1)) + 1 for n > 1.

Offset 1, canonical program `A289052.P122631715072368316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289052 (n : ℕ) : ℤ :=
  (A289052.P122631715072368316.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A290077.P1811018423005109397

`A000010(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A290077.P1811018423005109397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005940 (1 + n)).toNat

end

end A290077.P1811018423005109397

noncomputable section

/-- A290077: a(n) = A000010(A005940(1+n)).

Offset 0, canonical program `A290077.P1811018423005109397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290077 (n : ℕ) : ℤ :=
  A290077.P1811018423005109397.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A290077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292442.P14025010807940350477

`A292441(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292442.P14025010807940350477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292441 n ^ 2

end

end A292442.P14025010807940350477

noncomputable section

/-- A292442: a(n) = A292441(n)^2.

Offset 0, canonical program `A292442.P14025010807940350477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292442 (n : ℕ) : ℤ :=
  A292442.P14025010807940350477.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292602.P11848715388523311559

`floor(A005940(1+n)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292602.P11848715388523311559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005940 (1 + n) : ℚ) / 4⌋

end

end A292602.P11848715388523311559

noncomputable section

/-- A292602: a(n) = floor(A005940(1+n)/4).

Offset 0, canonical program `A292602.P11848715388523311559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292602 (n : ℕ) : ℤ :=
  A292602.P11848715388523311559.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292603.P8169406784297346491

`A010873(A005940(1+n))`
-/

namespace A292603.P8169406784297346491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A005940 (1 + n)).toNat

end

end A292603.P8169406784297346491

noncomputable section

/-- A292603: Doudna-tree reduced modulo 4: a(n) = A005940(1+n) mod 4.

Offset 0, canonical program `A292603.P8169406784297346491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292603 (n : ℕ) : ℤ :=
  A292603.P8169406784297346491.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292769.P7637608606255069320

`∑[A228947(n+1)+1+n]`
-/

namespace A292769.P7637608606255069320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292769.P7637608606255069320

noncomputable section

/-- A292769: Partial sums of A051612.

Offset 1, canonical program `A292769.P7637608606255069320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292769 (n : ℕ) : ℤ :=
  A292769.P7637608606255069320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293810.P17932194511883239640

`A007947(n+1)/A006530(n+1)`
-/

namespace A293810.P17932194511883239640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A293810.P17932194511883239640

noncomputable section

/-- A293810: The truncated kernel function of n: the product of distinct primes dividing n, but excluding the largest prime divisor of n.

Offset 1, canonical program `A293810.P17932194511883239640`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293810 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293810.P17932194511883239640.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295075.P13207258477495882565

`comp[n+1-A000290((n+1)/A006530(n+1))]`
-/

namespace A295075.P13207258477495882565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A295075.P13207258477495882565

noncomputable section

/-- A295075: Numbers k such that d + k/d is never prime for any divisor d of k.

Offset 1, canonical program `A295075.P13207258477495882565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6431 terms. -/
def A295075 (n : ℕ) : ℤ :=
  (A295075.P13207258477495882565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6431 terms. -/
def A295075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295303.P8470606991534144988

`round(sin(atan(A295301(n+1))))`
-/

namespace A295303.P8470606991534144988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.arctan (A295301 (n + 1) : ℝ)))

end

end A295303.P8470606991534144988

noncomputable section

/-- A295303: a(n) = +1 if n > phi(sigma(n)), -1 if n < phi(sigma(n)), and 0 if n = phi(sigma(n)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295303.P8470606991534144988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295303 (n : ℕ) : ℤ :=
  A295303.P8470606991534144988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295309.P8495486040454173549

`ceil(A295301(n+1)/A160664(n))`
-/

namespace A295309.P8495486040454173549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (A160664 n : ℚ)⌉

end

end A295309.P8495486040454173549

noncomputable section

/-- A295309: Characteristic function for A295307: a(n) = 1 if n > phi(sigma(n)), 0 otherwise.

Offset 1, canonical program `A295309.P8495486040454173549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295309 (n : ℕ) : ℤ :=
  A295309.P8495486040454173549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295311.P16426649915299872850

`(n+1)/A295310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295311.P16426649915299872850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295311.P16426649915299872850

noncomputable section

/-- A295311: a(n) = n / A295310(n) = n / gcd(n, phi(sigma(n))).

Offset 1, canonical program `A295311.P16426649915299872850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295311 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295311.P16426649915299872850.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295311.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295312.P2048515004002335457

`A062401(n+1)/A295310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295312.P2048515004002335457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295312.P2048515004002335457

noncomputable section

/-- A295312: a(n) = A062401(n) / A295310(n) = phi(sigma(n)) / gcd(n, phi(sigma(n))).

Offset 1, canonical program `A295312.P2048515004002335457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295312 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295312.P2048515004002335457.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A295310, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295875.P17529281261708969201

`A295297(A005940(1+n))`
-/

namespace A295875.P17529281261708969201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (A005940 (1 + n)).toNat

end

end A295875.P17529281261708969201

noncomputable section

/-- A295875: Let p = A295895(n) = parity of the binary weight of A005940(1+n). If A005940(1+n) is a square or twice a square (in A028982) then a(n) = 1 - p, otherwise a(n) = p.

Offset 0, canonical program `A295875.P17529281261708969201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295875 (n : ℕ) : ℤ :=
  A295875.P17529281261708969201.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295894.P3426569779041832203

`A000120(A005940(1+n))`
-/

namespace A295894.P3426569779041832203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005940 (1 + n)).toNat

end

end A295894.P3426569779041832203

noncomputable section

/-- A295894: Binary weight of the contents of node n in Doudna-tree (A005940).

Offset 0, canonical program `A295894.P3426569779041832203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295894 (n : ℕ) : ℤ :=
  A295894.P3426569779041832203.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295896.P11963859378553721760

`A053866(A005940(1+n))`
-/

namespace A295896.P11963859378553721760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A005940 (1 + n)).toNat

end

end A295896.P11963859378553721760

noncomputable section

/-- A295896: a(n) = 1 if there are no odd runs of 1's in the binary expansion of n followed by a 0 to their right, 0 otherwise.

Offset 0, canonical program `A295896.P11963859378553721760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295896 (n : ℕ) : ℤ :=
  A295896.P11963859378553721760.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296213.P8375901246265267104

`char[A063532(n+1)-1]`
-/

namespace A296213.P8375901246265267104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063532 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296213.P8375901246265267104

noncomputable section

/-- A296213: a(n) = 1 if both 1+phi(k) and 1+sigma(k) are squares, 0 otherwise.

Offset 1, canonical program `A296213.P8375901246265267104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296213 (n : ℕ) : ℤ :=
  (A296213.P8375901246265267104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297043.P77604833926978237

`∑[A341629(Δ[A017533(n)²])]`
-/

namespace A297043.P77604833926978237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297043.P77604833926978237

noncomputable section

/-- A297043: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-15 digits of n; see Comments.

Offset 1, canonical program `A297043.P77604833926978237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A297043 (n : ℕ) : ℤ :=
  A297043.P77604833926978237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A297043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297116.P10389749861646648007

`A297115(2*n+1)`
-/

namespace A297116.P10389749861646648007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297115 (2 * n + 1)

end

end A297116.P10389749861646648007

noncomputable section

/-- A297116: Odd bisection of A297115, Möbius transform of A000120 (binary weight of n).

Offset 1, canonical program `A297116.P10389749861646648007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297116 (n : ℕ) : ℤ :=
  A297116.P10389749861646648007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297116.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299766.P1328271149826463585

`A006530(A000265(n+1))`
-/

namespace A299766.P1328271149826463585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000265 (n + 1)).toNat

end

end A299766.P1328271149826463585

noncomputable section

/-- A299766: Greatest odd noncomposite divisor of n.

Offset 1, canonical program `A299766.P1328271149826463585`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A299766 (n : ℕ) : ℤ :=
  A299766.P1328271149826463585.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A299766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300518.P859629294734505161

`A006530(A007913(n+1))`
-/

namespace A300518.P859629294734505161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007913 (n + 1)).toNat

end

end A300518.P859629294734505161

noncomputable section

/-- A300518: The greatest prime factor of the squarefree part of n, or 1 if n is square.

Offset 1, canonical program `A300518.P859629294734505161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300518 (n : ℕ) : ℤ :=
  A300518.P859629294734505161.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A300518.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300724.P6183862051817097321

`∑{d}[n+1, A082908(#-1)*A361984((n+1)/#)]`
-/

namespace A300724.P6183862051817097321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082908 (d - 1) * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300724.P6183862051817097321

noncomputable section

/-- A300724: Möbius transform of A053644(n), largest power of 2 less than or equal to n.

Offset 1, canonical program `A300724.P6183862051817097321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300724 (n : ℕ) : ℤ :=
  A300724.P6183862051817097321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301506.P17975347321607137903

`a(n-1)+val(A006530(n), 5)` with `a(0)=0`
-/

namespace A301506.P17975347321607137903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (A006530 n).toNat 5

end

end A301506.P17975347321607137903

noncomputable section

/-- A301506: Number of integers less than or equal to n whose largest prime factor is 5.

Offset 0, canonical program `A301506.P17975347321607137903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301506 (n : ℕ) : ℤ :=
  (A301506.P17975347321607137903.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303809.P15019410293216701756

`∏{e}[n+1, 2^2^A238949(#)]`
-/

namespace A303809.P15019410293216701756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 : ℝ) ^ ((2 : ℚ) ^ (A238949 (Nat.factorization (f1 n) p) : ℤ) : ℝ)

end

end A303809.P15019410293216701756

noncomputable section

/-- A303809: Multiplicative with a(p^k) = 2^a(k).

Offset 1, canonical program `A303809.P15019410293216701756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A303809.P15019410293216701756.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304180.P7270068340037446333

`A006530(n+1)^A051903(n+1)`
-/

namespace A304180.P7270068340037446333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A304180.P7270068340037446333

noncomputable section

/-- A304180: If n = Product (p_j^k_j) then a(n) = max{p_j}^max{k_j}.

Offset 1, canonical program `A304180.P7270068340037446333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304180 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304180.P7270068340037446333.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307313.P17841615215202485845

`2^A070940(n+1)`
-/

namespace A307313.P17841615215202485845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A070940 (n + 1) : ℤ)

end

end A307313.P17841615215202485845

noncomputable section

/-- A307313: a(n) is the denominator of n/2^(length of the binary representation of n).

Offset 1, canonical program `A307313.P17841615215202485845`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307313 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307313.P17841615215202485845.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307907.P13472592245579266381

`floor(log(n+2)/log(A006530(n+2)))`
-/

namespace A307907.P13472592245579266381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 2 : ℝ) / Real.log (A006530 (n + 2) : ℝ)⌋

end

end A307907.P13472592245579266381

noncomputable section

/-- A307907: a(n) is the greatest k such that p^k <= n for any prime factor p of n.

Offset 2, canonical program `A307907.P13472592245579266381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307907 (n : ℕ) : ℤ :=
  A307907.P13472592245579266381.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308971.P1753330829675571991

`A006530(A001008(n+1))`
-/

namespace A308971.P1753330829675571991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001008 (n + 1)).toNat

end

end A308971.P1753330829675571991

noncomputable section

/-- A308971: Largest prime factor of A001008(n), numerator of n-th harmonic number; a(1) = 1.

Offset 1, canonical program `A308971.P1753330829675571991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308971 (n : ℕ) : ℤ :=
  A308971.P1753330829675571991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318316.P7822985467475682579

`2^A318322(n+1)`
-/

namespace A318316.P7822985467475682579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318322 (n + 1) : ℤ)

end

end A318316.P7822985467475682579

noncomputable section

/-- A318316: Multiplicative with a(p^e) = 2^A007306(e).

Offset 1, canonical program `A318316.P7822985467475682579`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318316 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318316.P7822985467475682579.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318316.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318320.P3093360369618625706

`A291784(n+1)-A000010(n+1)`
-/

namespace A318320.P3093360369618625706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (n + 1) - A000010 (n + 1)

end

end A318320.P3093360369618625706

noncomputable section

/-- A318320: a(n) = (psi(n) - phi(n))/2.

Offset 1, canonical program `A318320.P3093360369618625706`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A291784, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318320 (n : ℕ) : ℤ :=
  A318320.P3093360369618625706.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A291784, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318320.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318325.P6590032439412958240

`∑{d}[n+1, A057427(#-1)*A291784((n+1)/#)]`
-/

namespace A318325.P6590032439412958240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A291784 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318325.P6590032439412958240

noncomputable section

/-- A318325: a(n) = Sum_{d|n} [moebius(n/d) > 0]*(sigma(d)-d).

Offset 1, canonical program `A318325.P6590032439412958240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318325 (n : ℕ) : ℤ :=
  A318325.P6590032439412958240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318649.P4247351377528363883

`(n+1)*A318512(n+1)*A299149(n+1)/A299150(n+1)`
-/

namespace A318649.P4247351377528363883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A318512 (n + 1) * A299149 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ)

end

end A318649.P4247351377528363883

noncomputable section

/-- A318649: Numerators of the sequence whose Dirichlet convolution with itself yields squares, A000290.

Offset 1, canonical program `A318649.P4247351377528363883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318649.P4247351377528363883.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318681.P12311283223604938976

`(n+1)*A299149(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318681.P12311283223604938976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A299149 (n + 1)

end

end A318681.P12311283223604938976

noncomputable section

/-- A318681: a(n) = n * A299149(n).

Offset 1, canonical program `A318681.P12311283223604938976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318681 (n : ℕ) : ℤ :=
  A318681.P12311283223604938976.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318830.P2444961546425265661

`A318827(n+1)-A051953(n+1)`
-/

namespace A318830.P2444961546425265661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1) - A051953 (n + 1)

end

end A318830.P2444961546425265661

noncomputable section

/-- A318830: a(n) = phi(n) - gcd(phi(n), n-1).

Offset 1, canonical program `A318830.P2444961546425265661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A318827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318830 (n : ℕ) : ℤ :=
  A318830.P2444961546425265661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A318827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318830.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319988.P7589903780705495911

`C(n+1, lcm(n+1, A006530(2*(n+1))²))`
-/

namespace A319988.P7589903780705495911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Int.lcm (n + 1 : ℤ) (A006530 (2 * (n + 1)) ^ 2))

end

end A319988.P7589903780705495911

noncomputable section

/-- A319988: a(n) = 1 if n is divisible by the square of its largest prime factor, 0 otherwise.

Offset 1, canonical program `A319988.P7589903780705495911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319988 (n : ℕ) : ℤ :=
  (A319988.P7589903780705495911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321556.P12238147563848284171

`2*A096963(n+1)-A013959(n+1)`
-/

namespace A321556.P12238147563848284171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096963 (n + 1) - A013959 (n + 1)

end

end A321556.P12238147563848284171

noncomputable section

/-- A321556: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^11.

Offset 1, canonical program `A321556.P12238147563848284171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321556 (n : ℕ) : ℤ :=
  A321556.P12238147563848284171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322168.P14803382909734286249

`A007305(2*(n+2))-(A007305(2*n+3)-A002487(n+1))`
-/

namespace A322168.P14803382909734286249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (2 * (n + 2)) - (A007305 (2 * n + 3) - A002487 (n + 1))

end

end A322168.P14803382909734286249

noncomputable section

/-- A322168: Sequence gives the values of the trace A+D of the 2 X 2 matrices [[A,B],[C,D]] in a binary tree of the special linear monoid, SL(2,Z+).

Offset 1, canonical program `A322168.P14803382909734286249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A322168 (n : ℕ) : ℤ :=
  A322168.P14803382909734286249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A322168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323915.P7457930734356691176

`A023900(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323915.P7457930734356691176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A005940 (1 + n)).toNat

end

end A323915.P7457930734356691176

noncomputable section

/-- A323915: a(n) = A023900(A005940(1+n)).

Offset 0, canonical program `A323915.P7457930734356691176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323915 (n : ℕ) : ℤ :=
  A323915.P7457930734356691176.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324052.P9838691771205741248

`A083254(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324052.P9838691771205741248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A005940 (1 + n)).toNat

end

end A324052.P9838691771205741248

noncomputable section

/-- A324052: a(n) = A083254(A005940(1+n)).

Offset 0, canonical program `A324052.P9838691771205741248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A083254, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324052 (n : ℕ) : ℤ :=
  A324052.P9838691771205741248.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A083254, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324054.P16538433876613963457

`A000203(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324054.P16538433876613963457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005940 (1 + n)).toNat

end

end A324054.P16538433876613963457

noncomputable section

/-- A324054: a(n) = A000203(A005940(1+n)).

Offset 0, canonical program `A324054.P16538433876613963457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324054 (n : ℕ) : ℤ :=
  A324054.P16538433876613963457.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324055.P14690087279481986387

`A033879(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324055.P14690087279481986387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A005940 (1 + n)).toNat

end

end A324055.P14690087279481986387

noncomputable section

/-- A324055: Deficiency of Doudna-sequence: a(n) = A033879(A005940(1+n)).

Offset 0, canonical program `A324055.P14690087279481986387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324055 (n : ℕ) : ℤ :=
  A324055.P14690087279481986387.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324056.P9197834271733439572

`A000593(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324056.P9197834271733439572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A005940 (1 + n)).toNat

end

end A324056.P9197834271733439572

noncomputable section

/-- A324056: a(n) = A000593(A005940(1+n)).

Offset 0, canonical program `A324056.P9197834271733439572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324056 (n : ℕ) : ℤ :=
  A324056.P9197834271733439572.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324057.P12349580302683905171

`A106315(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324057.P12349580302683905171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106315 (A005940 (1 + n)).toNat

end

end A324057.P12349580302683905171

noncomputable section

/-- A324057: a(n) = A106315(A005940(1+n)).

Offset 0, canonical program `A324057.P12349580302683905171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A106315, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324057 (n : ℕ) : ℤ :=
  A324057.P12349580302683905171.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A106315, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324058.P15737617926128643869

`A324121(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324058.P15737617926128643869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A005940 (1 + n)).toNat

end

end A324058.P15737617926128643869

noncomputable section

/-- A324058: a(n) = A324121(A005940(1+n)) = gcd(A324054(n), A005940(1+n)*A106737(n)).

Offset 0, canonical program `A324058.P15737617926128643869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A324121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324058 (n : ℕ) : ℤ :=
  A324058.P15737617926128643869.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A324121, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324114.P1737227159885335025

`A192895(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324114.P1737227159885335025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (A005940 (1 + n)).toNat

end

end A324114.P1737227159885335025

noncomputable section

/-- A324114: A000120-deficiency of n permuted by Doudna-sequence: a(n) = A192895(A005940(1+n)).

Offset 0, canonical program `A324114.P1737227159885335025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324114 (n : ℕ) : ℤ :=
  A324114.P1737227159885335025.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A192895, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324340.P2325313193965035330

`A046692(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324340.P2325313193965035330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A005940 (1 + n)).toNat

end

end A324340.P2325313193965035330

noncomputable section

/-- A324340: a(n) = A046692(A005940(1+n)), where A005940 is the Doudna sequence and A046692 is the Dirichlet inverse of sigma function.

Offset 0, canonical program `A324340.P2325313193965035330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A046692, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324340 (n : ℕ) : ℤ :=
  A324340.P2325313193965035330.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A046692, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324348.P8335576142218511792

`A294898(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324348.P8335576142218511792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (A005940 (1 + n)).toNat

end

end A324348.P8335576142218511792

noncomputable section

/-- A324348: a(n) = A294898(A005940(1+n)), where A294898(k) = A005187(k) - A000203(k).

Offset 0, canonical program `A324348.P8335576142218511792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324348 (n : ℕ) : ℤ :=
  A324348.P8335576142218511792.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324348.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324349.P1026548390885821762

`A324122(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324349.P1026548390885821762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (A005940 (1 + n)).toNat

end

end A324349.P1026548390885821762

noncomputable section

/-- A324349: a(n) = A324122(A005940(1+n)), where A005940 is the Doudna sequence and A324122(n) = sigma(n) - gcd(n*d(n), sigma(n)).

Offset 0, canonical program `A324349.P1026548390885821762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A324122, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324349 (n : ℕ) : ℤ :=
  A324349.P1026548390885821762.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A324122, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324394.P3962559819764264547

`A009194(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324394.P3962559819764264547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A005940 (1 + n)).toNat

end

end A324394.P3962559819764264547

noncomputable section

/-- A324394: a(n) = A009194(A005940(1+n)), where A005940 is the Doudna sequence and A009194(n) = gcd(n,sigma(n)).

Offset 0, canonical program `A324394.P3962559819764264547`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324394 (n : ℕ) : ℤ :=
  A324394.P3962559819764264547.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324395.P8926581835577107561

`A017666(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324395.P8926581835577107561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A005940 (1 + n)).toNat

end

end A324395.P8926581835577107561

noncomputable section

/-- A324395: a(n) = A017666(A005940(1+n)), where A005940 is the Doudna sequence and A017666(n) = n/gcd(n,sigma(n)).

Offset 0, canonical program `A324395.P8926581835577107561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324395 (n : ℕ) : ℤ :=
  A324395.P8926581835577107561.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324652.P15448140147024622737

`eq[1, A324658(n+1)+1]+1`
-/

namespace A324652.P15448140147024622737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324658 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324652.P15448140147024622737

noncomputable section

/-- A324652: Numbers k such that A318468(k) (bitwise-AND of 2*k and sigma(k)) is equal to 2*k.

Offset 1, canonical program `A324652.P15448140147024622737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A324652 (n : ℕ) : ℤ :=
  (A324652.P15448140147024622737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A324652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324941.P16565507281434966225

`A006530(A224384(n))`
-/

namespace A324941.P16565507281434966225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A224384 n).toNat

end

end A324941.P16565507281434966225

noncomputable section

/-- A324941: Largest prime factor of 17^n + 1.

Offset 0, canonical program `A324941.P16565507281434966225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324941 (n : ℕ) : ℤ :=
  A324941.P16565507281434966225.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325596.P461061139706742604

`A319997(n+1)-A319998(n+1)`
-/

namespace A325596.P461061139706742604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1) - A319998 (n + 1)

end

end A325596.P461061139706742604

noncomputable section

/-- A325596: a(n) = Sum_{d|n} mu(n/d) * (-1)^(d + 1) * d.

Offset 1, canonical program `A325596.P461061139706742604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319997, A319998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325596 (n : ℕ) : ℤ :=
  A325596.P461061139706742604.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319997, A319998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325596.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326135.P4293370758287404225

`A000203(gcd(n+1, ∏{d}[n+1, A006530(#)]/(n+1)))`
-/

namespace A326135.P4293370758287404225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), A006530 d : ℤ) : ℚ) / (n + 1 : ℚ))))

end

end A326135.P4293370758287404225

noncomputable section

/-- A326135: a(n) = sigma(A028234(n)), where sigma is the sum of divisors of n, and A028234 gives n without any occurrence of its smallest prime factor.

Offset 1, canonical program `A326135.P4293370758287404225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326135 (n : ℕ) : ℤ :=
  A326135.P4293370758287404225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328372.P17781344567388749627

`A035263(n+1)*A298735(n+1)`
-/

namespace A328372.P17781344567388749627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A298735 (n + 1)

end

end A328372.P17781344567388749627

noncomputable section

/-- A328372: Expansion of Sum_{k>=1} x^(k^2) / (1 - x^(2*k^2)).

Offset 1, canonical program `A328372.P17781344567388749627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328372 (n : ℕ) : ℤ :=
  A328372.P17781344567388749627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328827.P8229375499967702781

`A006530((n+1)*(n+4))`
-/

namespace A328827.P8229375499967702781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (n + 4))

end

end A328827.P8229375499967702781

noncomputable section

/-- A328827: a(n) is the largest prime factor of n + n*(n+1)/2 = n*(n+3)/2.

Offset 1, canonical program `A328827.P8229375499967702781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328827 (n : ℕ) : ℤ :=
  A328827.P8229375499967702781.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328827.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A330968.P2083301936810330397

`record[A006530(A268185(n+1))]`
-/

namespace A330968.P2083301936810330397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A268185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330968.P2083301936810330397

noncomputable section

/-- A330968: Prime numbers p such that 2*p - last digit of p is prime.

Offset 1, canonical program `A330968.P2083301936810330397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1364 terms. -/
def A330968 (n : ℕ) : ℤ :=
  A330968.P2083301936810330397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1364 terms. -/
def A330968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331409.P16539324255400133516

`(a(n-1)+n+1)/A006530(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A331409.P16539324255400133516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n + 1 : ℚ)) / (A006530 (SequenceMachineLib.roundAway (a (n - 1) + (n + 1 : ℚ))).toNat : ℚ)

end

end A331409.P16539324255400133516

noncomputable section

/-- A331409: a(1)=1; for n>1, a(n) = a(n-1)+n, divided by its largest prime factor.

Offset 1, canonical program `A331409.P16539324255400133516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331409 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331409.P16539324255400133516.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333293.P15015957038887528182

`(A319087(n+1)+A319087(n+2))/2`
-/

namespace A333293.P15015957038887528182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319087 (n + 1) + A319087 (n + 2) : ℚ) / 2

end

end A333293.P15015957038887528182

noncomputable section

/-- A333293: a(n) = Sum_{k=1..n-1} k^2*phi(k) + n^2*phi(n)/2, where phi = A000010.

Offset 2, canonical program `A333293.P15015957038887528182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A333293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333293.P15015957038887528182.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A333293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334070.P205609447133089697

`A000010(n+1)-A053575(n+1)`
-/

namespace A334070.P205609447133089697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A053575 (n + 1)

end

end A334070.P205609447133089697

noncomputable section

/-- A334070: Number of even-order elements in the multiplicative group of integers modulo n.

Offset 1, canonical program `A334070.P205609447133089697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053575, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334070 (n : ℕ) : ℤ :=
  A334070.P205609447133089697.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053575, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334070.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335422.P5576709600895955365

`A005940(1+A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335422.P5576709600895955365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A163511 n).toNat

end

end A335422.P5576709600895955365

noncomputable section

/-- A335422: a(n) = A005940(1+A163511(n)).

Offset 0, canonical program `A335422.P5576709600895955365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335422 (n : ℕ) : ℤ :=
  A335422.P5576709600895955365.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335423.P2092863953169735259

`A005940(1+A248663(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335423.P2092863953169735259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A248663 (n + 1)).toNat

end

end A335423.P2092863953169735259

noncomputable section

/-- A335423: a(n) = A005940(1+A248663(n)).

Offset 1, canonical program `A335423.P2092863953169735259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A248663, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335423 (n : ℕ) : ℤ :=
  A335423.P2092863953169735259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A248663, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335603.P16960096878728577473

`A000720(A006530(n+1))*A051903(n+1)`
-/

namespace A335603.P16960096878728577473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (n + 1)).toNat * A051903 (n + 1)

end

end A335603.P16960096878728577473

noncomputable section

/-- A335603: a(n) = p*q where p is the sequential number (or PrimePi, A000720) of the largest prime divisor of n, and q is the maximal exponent in the canonical representation of n (A051903).

Offset 1, canonical program `A335603.P16960096878728577473`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A006530, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335603 (n : ℕ) : ℤ :=
  A335603.P16960096878728577473.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A006530, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336468.P2819815668049022995

`A336466(A000010(n+1))`
-/

namespace A336468.P2819815668049022995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A000010 (n + 1)).toNat

end

end A336468.P2819815668049022995

noncomputable section

/-- A336468: a(n) = A336466(phi(n)), where A336466 is fully multiplicative with a(p) = A000265(p-1) for prime p, with A000265(k) giving the odd part of k.

Offset 1, canonical program `A336468.P2819815668049022995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336468 (n : ℕ) : ℤ :=
  A336468.P2819815668049022995.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336476.P3849910178410724105

`gcd(A000593(n+1), A336475(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336476.P3849910178410724105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000593 (n + 1)) (A336475 (n + 1))

end

end A336476.P3849910178410724105

noncomputable section

/-- A336476: a(n) = gcd(A000593(n), A336475(n)).

Offset 1, canonical program `A336476.P3849910178410724105`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336476 (n : ℕ) : ℤ :=
  (A336476.P3849910178410724105.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336567.P8607660645956000214

`A335341(n+1)-A003557(n+1)`
-/

namespace A336567.P8607660645956000214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (n + 1) - A003557 (n + 1)

end

end A336567.P8607660645956000214

noncomputable section

/-- A336567: Sum of proper divisors of {n divided by its largest squarefree divisor}.

Offset 1, canonical program `A336567.P8607660645956000214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A335341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336567 (n : ℕ) : ℤ :=
  A336567.P8607660645956000214.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A335341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336649.P1375712288515144548

`A335341(A000265(n+1))`
-/

namespace A336649.P1375712288515144548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A000265 (n + 1)).toNat

end

end A336649.P1375712288515144548

noncomputable section

/-- A336649: Sum of divisors of A336651(n) (odd part of n divided by its largest squarefree divisor).

Offset 1, canonical program `A336649.P1375712288515144548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A335341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336649 (n : ℕ) : ℤ :=
  A336649.P1375712288515144548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A335341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336834.P16963777313214642767

`A294934(A005940(1+n))`
-/

namespace A336834.P16963777313214642767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (A005940 (1 + n)).toNat

end

end A336834.P16963777313214642767

noncomputable section

/-- A336834: a(n) = 1 if A005940(1+n) is deficient, 0 otherwise.

Offset 0, canonical program `A336834.P16963777313214642767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336834 (n : ℕ) : ℤ :=
  A336834.P16963777313214642767.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337196.P4920485684181611942

`A007949(A336698(n+1))`
-/

namespace A337196.P4920485684181611942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A336698 (n + 1)).toNat

end

end A337196.P4920485684181611942

noncomputable section

/-- A337196: The 3-adic valuation of 1+A000265(sigma(n)), where A000265 gives the odd part.

Offset 1, canonical program `A337196.P4920485684181611942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336698, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337196 (n : ℕ) : ℤ :=
  A337196.P4920485684181611942.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336698, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337199.P10254756718090732939

`A000120(A336698(n+1))`
-/

namespace A337199.P10254756718090732939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A336698 (n + 1)).toNat

end

end A337199.P10254756718090732939

noncomputable section

/-- A337199: Binary weight of A337194(n) = 1+A000265(sigma(n)), where A000265(k) gives the odd part of k.

Offset 1, canonical program `A337199.P10254756718090732939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336698, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337199 (n : ℕ) : ℤ :=
  A337199.P10254756718090732939.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336698, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337429.P7088931881512590606

`A006530(A074600(n))`
-/

namespace A337429.P7088931881512590606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074600 n).toNat

end

end A337429.P7088931881512590606

noncomputable section

/-- A337429: a(n) is the largest prime factor of 2^n + 5^n.

Offset 0, canonical program `A337429.P7088931881512590606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337429 (n : ℕ) : ℤ :=
  A337429.P7088931881512590606.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337635.P17372032440398467433

`∑[A000007(Δ[A095111(n)]+1)]`
-/

namespace A337635.P17372032440398467433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337635.P17372032440398467433

noncomputable section

/-- A337635: Number of numbers k <= n such that k is in A095096 and k+1 is in A020899.

Offset 0, canonical program `A337635.P17372032440398467433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337635 (n : ℕ) : ℤ :=
  A337635.P17372032440398467433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337636.P16176283414138515688

`∑[ceil(Δ[A095111(n)/2])]`
-/

namespace A337636.P16176283414138515688
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095111 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337636.P16176283414138515688

noncomputable section

/-- A337636: Number of numbers k <= n such that k+1 is in A095096 and k is in A020899.

Offset 0, canonical program `A337636.P16176283414138515688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337636 (n : ℕ) : ℤ :=
  A337636.P16176283414138515688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338246.P17667749731771323120

`A060373(n)+n-A060373(A338247(n))`
-/

namespace A338246.P17667749731771323120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n + ((n : ℤ) - A060373 (A338247 n).toNat)

end

end A338246.P17667749731771323120

noncomputable section

/-- A338246: Nonpositive values in A117966, in order of appearance and negated.

Offset 0, canonical program `A338246.P17667749731771323120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338246 (n : ℕ) : ℤ :=
  A338246.P17667749731771323120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A338246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339969.P10391985741968629944

`gcd(n, A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A339969.P10391985741968629944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A005940 (1 + n))

end

end A339969.P10391985741968629944

noncomputable section

/-- A339969: a(n) = gcd(n, A005940(1+n)).

Offset 0, canonical program `A339969.P10391985741968629944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339969 (n : ℕ) : ℤ :=
  (A339969.P10391985741968629944.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340084.P17512865495283900918

`gcd(n, A336466(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340084.P17512865495283900918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A336466 (n + 1))

end

end A340084.P17512865495283900918

noncomputable section

/-- A340084: a(n) = gcd(n-1, A336466(n)); Odd part of A340081(n).

Offset 1, canonical program `A340084.P17512865495283900918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340084 (n : ℕ) : ℤ :=
  (A340084.P17512865495283900918.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340084.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340196.P13204647791419670441

`n+1-A340195(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340196.P13204647791419670441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A340195 (n + 1)

end

end A340196.P13204647791419670441

noncomputable section

/-- A340196: a(n) = n - A340195(n).

Offset 1, canonical program `A340196.P13204647791419670441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340196 (n : ℕ) : ℤ :=
  A340196.P13204647791419670441.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A340195, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A340196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340373.P14030435413002856022

`A340363(n+1)-A209229(n+1)`
-/

namespace A340373.P14030435413002856022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (n + 1) - A209229 (n + 1)

end

end A340373.P14030435413002856022

noncomputable section

/-- A340373: a(n) = 1 if n is of the form of 2^i * p^j, with p an odd prime, and i>=0, j>=1, otherwise 0.

Offset 1, canonical program `A340373.P14030435413002856022`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A340363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340373 (n : ℕ) : ℤ :=
  A340373.P14030435413002856022.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A340363, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341636.P2295451022923596252

`∑{d}[n+1, #*A333645((n+1)/#)]`
-/

namespace A341636.P2295451022923596252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341636.P2295451022923596252

noncomputable section

/-- A341636: a(n) = Sum_{d|n} phi(d) * tau(d) * tau(n/d).

Offset 1, canonical program `A341636.P2295451022923596252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341636 (n : ℕ) : ℤ :=
  A341636.P2295451022923596252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342466.P10072051426789715214

`A336466(A336698(n+1))`
-/

namespace A342466.P10072051426789715214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A336698 (n + 1)).toNat

end

end A342466.P10072051426789715214

noncomputable section

/-- A342466: a(n) = A336466(1+A000265(sigma(n))), where A336466 is fully multiplicative with a(p) = A000265(p-1) for p prime, and A000265(k) is the odd part of k.

Offset 1, canonical program `A342466.P10072051426789715214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A336698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342466 (n : ℕ) : ℤ :=
  A342466.P10072051426789715214.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A336698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342535.P1287221588278345036

`∑{d}[n+1, A007431(#)*A338997((n+1)/#)]`
-/

namespace A342535.P1287221588278345036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A338997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342535.P1287221588278345036

noncomputable section

/-- A342535: a(n) = Sum_{k=1..n} phi(gcd(k, n))^3.

Offset 1, canonical program `A342535.P1287221588278345036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342535 (n : ℕ) : ℤ :=
  A342535.P1287221588278345036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343231.P10441655631567260462

`A343228(n)+A343229(n)`
-/

namespace A343231.P10441655631567260462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 n + A343229 n

end

end A343231.P10441655631567260462

noncomputable section

/-- A343231: A binary encoding of the nonzero digits in balanced ternary representation of n.

Offset 0, canonical program `A343231.P10441655631567260462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343228, A343229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343231 (n : ℕ) : ℤ :=
  A343231.P10441655631567260462.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343228, A343229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A343231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344028.P3251303512918898799

`A069359(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344028.P3251303512918898799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A005940 (1 + n)).toNat

end

end A344028.P3251303512918898799

noncomputable section

/-- A344028: a(n) = A069359(A005940(1+n)).

Offset 0, canonical program `A344028.P3251303512918898799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344028 (n : ℕ) : ℤ :=
  A344028.P3251303512918898799.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344526.P11294186280270292264

`∑[A189393(n+1)]`
-/

namespace A344526.P11294186280270292264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344526.P11294186280270292264

noncomputable section

/-- A344526: a(n) = Sum_{k=1..n} k^3 * phi(k).

Offset 1, canonical program `A344526.P11294186280270292264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344526 (n : ℕ) : ℤ :=
  A344526.P11294186280270292264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344875.P1341474813427060519

`2*(n+1)-A323410(2*(n+1))`
-/

namespace A344875.P1341474813427060519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A323410 (2 * (n + 1))

end

end A344875.P1341474813427060519

noncomputable section

/-- A344875: Multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e - 1 for odd primes p.

Offset 1, canonical program `A344875.P1341474813427060519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344875 (n : ℕ) : ℤ :=
  A344875.P1341474813427060519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345082.P16266768967040016348

`A000010(n+1)+A319998(n+1)`
-/

namespace A345082.P16266768967040016348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A319998 (n + 1)

end

end A345082.P16266768967040016348

noncomputable section

/-- A345082: Number of elements of order n in R/Z X Z/2Z.

Offset 1, canonical program `A345082.P16266768967040016348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345082 (n : ℕ) : ℤ :=
  A345082.P16266768967040016348.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345212.P17671319425580127952

`eq[A001221(n+1), A086971(n+1)]+1`
-/

namespace A345212.P17671319425580127952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345212.P17671319425580127952

noncomputable section

/-- A345212: Numbers with equal numbers of prime and semiprime divisors.

Offset 1, canonical program `A345212.P17671319425580127952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345212 (n : ℕ) : ℤ :=
  (A345212.P17671319425580127952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345315.P17248214990085666330

`A076290(n+1)+A000005(n+1)-A086971(n+1)`
-/

namespace A345315.P17248214990085666330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (n + 1) + A000005 (n + 1) - A086971 (n + 1)

end

end A345315.P17248214990085666330

noncomputable section

/-- A345315: a(n) = Sum_{d|n} d^[Omega(d) = 2], where [ ] is the Iverson bracket.

Offset 1, canonical program `A345315.P17248214990085666330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A076290, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345315 (n : ℕ) : ℤ :=
  A345315.P17248214990085666330.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A076290, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345315.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345347.P6658158648195050989

`A000045(A108852(n)+1)+n`
-/

namespace A345347.P6658158648195050989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 n + 1).toNat + (n : ℤ)

end

end A345347.P6658158648195050989

noncomputable section

/-- A345347: Find the largest k with F(k) <= n, where F(k) is the k-th Fibonacci number. a(n) = F(k+2) + n.

Offset 0, canonical program `A345347.P6658158648195050989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345347 (n : ℕ) : ℤ :=
  A345347.P6658158648195050989.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345446.P4602347465364053125

`A086971(n+1)-A086971(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A345446.P4602347465364053125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - A086971 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A345446.P4602347465364053125

noncomputable section

/-- A345446: Number of semiprime divisors of n whose square does not divide n.

Offset 1, canonical program `A345446.P4602347465364053125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345446 (n : ℕ) : ℤ :=
  A345446.P4602347465364053125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345938.P13711634937950283158

`A047994(n+1)/A345937(n+1)`
-/

namespace A345938.P13711634937950283158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345938.P13711634937950283158

noncomputable section

/-- A345938: a(n) = uphi(n) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345938.P13711634937950283158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A345937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345938 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345938.P13711634937950283158.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A345937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345938.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345939.P16885342451554269271

`n/A345937(n+1)`
-/

namespace A345939.P16885342451554269271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A345937 (n + 1) : ℚ)

end

end A345939.P16885342451554269271

noncomputable section

/-- A345939: a(n) = (n-1) / gcd(n-1, uphi(n)), where uphi is unitary totient (or unitary phi) function, A047994.

Offset 1, canonical program `A345939.P16885342451554269271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345939.P16885342451554269271.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345937, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345940.P6958556155531305771

`A006530(n+1)!%(n+1)`
-/

namespace A345940.P6958556155531305771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006530 (n + 1)).toNat % (n + 1)

end

end A345940.P6958556155531305771

noncomputable section

/-- A345940: Factorial of the largest prime factor of n, read modulo n: a(n) = A006530(n)! mod n.

Offset 1, canonical program `A345940.P6958556155531305771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345940 (n : ℕ) : ℤ :=
  (A345940.P6958556155531305771.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347132.P12449885235139872301

`∑{d}[n+1, A063659(#)*A319684((n+1)/#)]`
-/

namespace A347132.P12449885235139872301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P12449885235139872301

noncomputable section

/-- A347132: a(n) = Sum_{d|n} A001615(n/d) * A003415(d), where A003415 is the arithmetic derivative and A001615 is Dedekind psi function.

Offset 1, canonical program `A347132.P12449885235139872301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347132 (n : ℕ) : ℤ :=
  A347132.P12449885235139872301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348098.P9969083464390464746

`A348097(eq[1, A348097(n+2)-A348097(n+1)]+1)`
-/

namespace A348098.P9969083464390464746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (n + 2) - A348097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348098.P9969083464390464746

noncomputable section

/-- A348098: Number k such that k and k+1 both have an equal number of unitary and nonunitary prime divisors (A348097).

Offset 1, canonical program `A348098.P9969083464390464746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A348098 (n : ℕ) : ℤ :=
  A348098.P9969083464390464746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A348098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348122.P4903118865110952081

`∩[A348121(n+1)-1, A348121(n+1)]`
-/

namespace A348122.P4903118865110952081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348121 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348122.P4903118865110952081

noncomputable section

/-- A348122: Numbers k such that k and k+1 both have more nonunitary than unitary prime divisors (A348121).

Offset 1, canonical program `A348122.P4903118865110952081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A348122 (n : ℕ) : ℤ :=
  (A348122.P4903118865110952081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A348122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350331.P13927814064560633855

`A001221(n+1)+A086971(n+1)`
-/

namespace A350331.P13927814064560633855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A086971 (n + 1)

end

end A350331.P13927814064560633855

noncomputable section

/-- A350331: Number of divisors of n that are prime or the product of 2 (not necessarily distinct) primes.

Offset 1, canonical program `A350331.P13927814064560633855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350331 (n : ℕ) : ℤ :=
  A350331.P13927814064560633855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350343.P17281856427666000810

`A350342(n+1)²`
-/

namespace A350343.P17281856427666000810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350342 (n + 1) ^ 2

end

end A350343.P17281856427666000810

noncomputable section

/-- A350343: Square numbers k that are abelian orders.

Offset 1, canonical program `A350343.P17281856427666000810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343 (n : ℕ) : ℤ :=
  A350343.P17281856427666000810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350344.P2038863926175919238

`filter[A050384(n+1), A355816(#)]`
-/

namespace A350344.P2038863926175919238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A350344.P2038863926175919238

noncomputable section

/-- A350344: Composite k such that k^2 is an abelian order.

Offset 1, canonical program `A350344.P2038863926175919238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344 (n : ℕ) : ℤ :=
  A350344.P2038863926175919238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7069 terms. -/
def A350344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350373.P14960891234703651044

`eq[6, A086971(A028310(n))]`
-/

namespace A350373.P14960891234703651044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A350373.P14960891234703651044

noncomputable section

/-- A350373: Numbers with exactly 6 semiprime divisors.

Offset 1, canonical program `A350373.P14960891234703651044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A350373 (n : ℕ) : ℤ :=
  (A350373.P14960891234703651044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A350373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350409.P2002734332718794201

`record[A006530(A046316(n+1)-1)]`
-/

namespace A350409.P2002734332718794201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046316 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A350409.P2002734332718794201

noncomputable section

/-- A350409: Primes p such that 2*p+1 has exactly three prime factors (not necessarily distinct).

Offset 1, canonical program `A350409.P2002734332718794201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. -/
def A350409 (n : ℕ) : ℤ :=
  A350409.P2002734332718794201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. -/
def A350409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351716.P7007273170909431594

`∩[A351715(n+1)-1, A351715(n+1)]`
-/

namespace A351716.P7007273170909431594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351715 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351716.P7007273170909431594

noncomputable section

/-- A351716: Starts of runs of 3 consecutive Lucas-Niven numbers (A351714).

Offset 1, canonical program `A351716.P7007273170909431594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A351716 (n : ℕ) : ℤ :=
  (A351716.P7007273170909431594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A351716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352032.P7584704654108786312

`A051001(n+1)-(n+1)^4*A000035(n+1)`
-/

namespace A352032.P7584704654108786312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051001 (n + 1) - ((n + 1) ^ 4 : ℤ) * A000035 (n + 1)

end

end A352032.P7584704654108786312

noncomputable section

/-- A352032: Sum of the 4th powers of the odd proper divisors of n.

Offset 1, canonical program `A352032.P7584704654108786312`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352032 (n : ℕ) : ℤ :=
  A352032.P7584704654108786312.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352034.P15417253199617285294

`A321810(n+1)%(lcm(6, (n+1)^3)/6)²`
-/

namespace A352034.P15417253199617285294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321810 (n + 1)) (SequenceMachineLib.roundAway (((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6) ^ 2))

end

end A352034.P15417253199617285294

noncomputable section

/-- A352034: Sum of the 6th powers of the odd proper divisors of n.

Offset 1, canonical program `A352034.P15417253199617285294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352034 (n : ℕ) : ℤ :=
  A352034.P15417253199617285294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352035.P6837907332843621546

`A321811(n+1)-(n+1)^7*A000035(n+1)`
-/

namespace A352035.P6837907332843621546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321811 (n + 1) - ((n + 1) ^ 7 : ℤ) * A000035 (n + 1)

end

end A352035.P6837907332843621546

noncomputable section

/-- A352035: Sum of the 7th powers of the odd proper divisors of n.

Offset 1, canonical program `A352035.P6837907332843621546`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352035 (n : ℕ) : ℤ :=
  A352035.P6837907332843621546.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352035.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352036.P1158903838014653672

`A321812(n+1)-(n+1)^8*A000035(n+1)`
-/

namespace A352036.P1158903838014653672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321812 (n + 1) - ((n + 1) ^ 8 : ℤ) * A000035 (n + 1)

end

end A352036.P1158903838014653672

noncomputable section

/-- A352036: Sum of the 8th powers of the odd proper divisors of n.

Offset 1, canonical program `A352036.P1158903838014653672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352036 (n : ℕ) : ℤ :=
  A352036.P1158903838014653672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352037.P2155073876745302495

`A321813(n+1)-(n+1)^9*A000035(n+1)`
-/

namespace A352037.P2155073876745302495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321813 (n + 1) - ((n + 1) ^ 9 : ℤ) * A000035 (n + 1)

end

end A352037.P2155073876745302495

noncomputable section

/-- A352037: Sum of the 9th powers of the odd proper divisors of n.

Offset 1, canonical program `A352037.P2155073876745302495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352037 (n : ℕ) : ℤ :=
  A352037.P2155073876745302495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352038.P14142010787348576659

`A321814(n+1)-(n+1)^10*A000035(n+1)`
-/

namespace A352038.P14142010787348576659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321814 (n + 1) - ((n + 1) ^ 10 : ℤ) * A000035 (n + 1)

end

end A352038.P14142010787348576659

noncomputable section

/-- A352038: Sum of the 10th powers of the odd proper divisors of n.

Offset 1, canonical program `A352038.P14142010787348576659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352038 (n : ℕ) : ℤ :=
  A352038.P14142010787348576659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352038.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352050.P14963246555403053139

`A051001(n+1)*A006519(n+1)^4-A000035(n+1)`
-/

namespace A352050.P14963246555403053139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051001 (n + 1) * A006519 (n + 1) ^ 4 - A000035 (n + 1)

end

end A352050.P14963246555403053139

noncomputable section

/-- A352050: Sum of the 4th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352050.P14963246555403053139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352050 (n : ℕ) : ℤ :=
  A352050.P14963246555403053139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352052.P6009857033034604906

`A321810(n+1)*A006519(n+1)^6-A000035(n+1)`
-/

namespace A352052.P6009857033034604906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321810 (n + 1) * A006519 (n + 1) ^ 6 - A000035 (n + 1)

end

end A352052.P6009857033034604906

noncomputable section

/-- A352052: Sum of the 6th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352052.P6009857033034604906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352052 (n : ℕ) : ℤ :=
  A352052.P6009857033034604906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352053.P1294094474084752061

`A321811(n+1)*A006519(n+1)^7-A000035(n+1)`
-/

namespace A352053.P1294094474084752061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321811 (n + 1) * A006519 (n + 1) ^ 7 - A000035 (n + 1)

end

end A352053.P1294094474084752061

noncomputable section

/-- A352053: Sum of the 7th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352053.P1294094474084752061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352053 (n : ℕ) : ℤ :=
  A352053.P1294094474084752061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352054.P9801773408996031235

`A321812(n+1)*A006519(n+1)^8-A000035(n+1)`
-/

namespace A352054.P9801773408996031235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321812 (n + 1) * A006519 (n + 1) ^ 8 - A000035 (n + 1)

end

end A352054.P9801773408996031235

noncomputable section

/-- A352054: Sum of the 8th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352054.P9801773408996031235`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352054 (n : ℕ) : ℤ :=
  A352054.P9801773408996031235.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352055.P13209063821443067745

`A321813(n+1)*A006519(n+1)^9-A000035(n+1)`
-/

namespace A352055.P13209063821443067745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321813 (n + 1) * A006519 (n + 1) ^ 9 - A000035 (n + 1)

end

end A352055.P13209063821443067745

noncomputable section

/-- A352055: Sum of the 9th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352055.P13209063821443067745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352055 (n : ℕ) : ℤ :=
  A352055.P13209063821443067745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352056.P14532830796557254508

`A321814(n+1)*A006519(n+1)^10-A000035(n+1)`
-/

namespace A352056.P14532830796557254508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321814 (n + 1) * A006519 (n + 1) ^ 10 - A000035 (n + 1)

end

end A352056.P14532830796557254508

noncomputable section

/-- A352056: Sum of the 10th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352056.P14532830796557254508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352056 (n : ℕ) : ℤ :=
  A352056.P14532830796557254508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353498.P9279087021698104160

`and(A019427(n)²²², A318829(n+1))`
-/

namespace A353498.P9279087021698104160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((A019427 n ^ 2) ^ 2) ^ 2) (A318829 (n + 1))

end

end A353498.P9279087021698104160

noncomputable section

/-- A353498: a(n) = 1 if n > 1 and the 2-adic valuation of phi(n) does not exceed the 2-adic valuation of n-1, otherwise 0.

Offset 1, canonical program `A353498.P9279087021698104160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498 (n : ℕ) : ℤ :=
  A353498.P9279087021698104160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353637.P5440180522401724762

`∏{d}[A353636(n+1), A001221(#)]`
-/

namespace A353637.P5440180522401724762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A353637.P5440180522401724762

noncomputable section

/-- A353637: a(n) = 1 if phi(sigma(n)) is equal to phi(n), otherwise 0.

Offset 1, canonical program `A353637.P5440180522401724762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637 (n : ℕ) : ℤ :=
  A353637.P5440180522401724762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353644.P12499979160227092597

`A000010(n+1)/A353643(n+1)`
-/

namespace A353644.P12499979160227092597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P12499979160227092597

noncomputable section

/-- A353644: a(n) = phi(n) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353644.P12499979160227092597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353644.P12499979160227092597.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353646.P14527440753907412208

`A062401(n+1)/A353643(n+1)`
-/

namespace A353646.P14527440753907412208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P14527440753907412208

noncomputable section

/-- A353646: a(n) = phi(sigma(n)) / gcd(phi(n), phi(sigma(n))).

Offset 1, canonical program `A353646.P14527440753907412208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353646 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353646.P14527440753907412208.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353646.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353671.P4076259781783744274

`A059841(n+1)*A353670(n+1)`
-/

namespace A353671.P4076259781783744274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * A353670 (n + 1)

end

end A353671.P4076259781783744274

noncomputable section

/-- A353671: a(n) = 1 if n is even and the odd part of n is a prime, otherwise 0.

Offset 1, canonical program `A353671.P4076259781783744274`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353671 (n : ℕ) : ℤ :=
  A353671.P4076259781783744274.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353681.P403205491971656766

`ceil(A353636(n+1)/A008000(n))`
-/

namespace A353681.P403205491971656766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A008000 n : ℚ)⌉

end

end A353681.P403205491971656766

noncomputable section

/-- A353681: a(n) = 1 if phi(sigma(n)) > phi(n), otherwise 0.

Offset 1, canonical program `A353681.P403205491971656766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681 (n : ℕ) : ℤ :=
  A353681.P403205491971656766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354514.P9936608674892317830

`comp[comp[n-A006530(n+1)]+1]`
-/

namespace A354514.P9936608674892317830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A354514.P9936608674892317830

noncomputable section

/-- A354514: Numbers k such that m - gpf(m) = k has solutions m >= 2, gpf = A006530.

Offset 1, canonical program `A354514.P9936608674892317830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8650 terms. -/
def A354514 (n : ℕ) : ℤ :=
  (A354514.P9936608674892317830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8650 terms. -/
def A354514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354515.P5172981161591048395

`eq[0, char[2-A006530(n+2)+n]]`
-/

namespace A354515.P5172981161591048395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006530 (n + 2) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354515.P5172981161591048395

noncomputable section

/-- A354515: Numbers k such that m - gpf(m) = k has no solution m >= 2, gpf = A006530.

Offset 1, canonical program `A354515.P5172981161591048395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A354515 (n : ℕ) : ℤ :=
  (A354515.P5172981161591048395.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A354515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356455.P8353275492922679429

`A005940(lt[A005940(n+1), n]+1)`
-/

namespace A356455.P8353275492922679429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A356455.P8353275492922679429

noncomputable section

/-- A356455: Numbers m = A005940(n) such that A005940(n) < (n-1), listed in order of appearance in A005940.

Offset 1, canonical program `A356455.P8353275492922679429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. -/
def A356455 (n : ℕ) : ℤ :=
  A356455.P8353275492922679429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 531 terms. -/
def A356455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356840.P5623154295231149571

`A006530(2*A261969(n+2))`
-/

namespace A356840.P5623154295231149571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A261969 (n + 2)).toNat

end

end A356840.P5623154295231149571

noncomputable section

/-- A356840: Largest most common prime factor of n.

Offset 2, canonical program `A356840.P5623154295231149571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A356840 (n : ℕ) : ℤ :=
  A356840.P5623154295231149571.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A356840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358345.P3459524119190626708

`A046951(n+1)-A298735(n+1)`
-/

namespace A358345.P3459524119190626708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A298735 (n + 1)

end

end A358345.P3459524119190626708

noncomputable section

/-- A358345: a(n) is the number of even square divisors of n.

Offset 1, canonical program `A358345.P3459524119190626708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A298735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358345 (n : ℕ) : ℤ :=
  A358345.P3459524119190626708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A298735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358440.P1988106012523245801

`A006530(4*n+5)`
-/

namespace A358440.P1988106012523245801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 5)

end

end A358440.P1988106012523245801

noncomputable section

/-- A358440: a(n) is the largest prime that divides any two successive terms of the sequence b(m) = m^2 + n with m >= 1.

Offset 1, canonical program `A358440.P1988106012523245801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358440 (n : ℕ) : ℤ :=
  A358440.P1988106012523245801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359684.P9882135917607383111

`A006530(A000325(n+1))`
-/

namespace A359684.P9882135917607383111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000325 (n + 1)).toNat

end

end A359684.P9882135917607383111

noncomputable section

/-- A359684: Greatest prime dividing 2^n - n for n>=2; a(1) = 1.

Offset 1, canonical program `A359684.P9882135917607383111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359684 (n : ℕ) : ℤ :=
  A359684.P9882135917607383111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359685.P428297861856561498

`A006530(A006127(n+1))`
-/

namespace A359685.P428297861856561498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006127 (n + 1)).toNat

end

end A359685.P428297861856561498

noncomputable section

/-- A359685: Greatest prime dividing 2^n + n.

Offset 1, canonical program `A359685.P428297861856561498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359685 (n : ℕ) : ℤ :=
  A359685.P428297861856561498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359685.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359954.P251505247951898520

`∑{d}[n+1, A007432(#)*A333645((n+1)/#)]`
-/

namespace A359954.P251505247951898520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359954.P251505247951898520

noncomputable section

/-- A359954: a(n) = Sum_{d|n} tau(d)*phi(d)*mu(n/d).

Offset 1, canonical program `A359954.P251505247951898520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359954 (n : ℕ) : ℤ :=
  A359954.P251505247951898520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360496.P9161161869086018429

`(n+1)%(A006530(n+1)+1)`
-/

namespace A360496.P9161161869086018429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006530 (n + 1) + 1)

end

end A360496.P9161161869086018429

noncomputable section

/-- A360496: a(n) is the remainder after dividing n by its largest prime factor plus 1, a(1) = 1.

Offset 1, canonical program `A360496.P9161161869086018429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360496 (n : ℕ) : ℤ :=
  A360496.P9161161869086018429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360559.P9633687527114646811

`∑[(-1)^n*A006530(n+1)]`
-/

namespace A360559.P9633687527114646811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P9633687527114646811

noncomputable section

/-- A360559: Alternating partial sum of A006530.

Offset 1, canonical program `A360559.P9633687527114646811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360559 (n : ℕ) : ℤ :=
  A360559.P9633687527114646811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362138.P16632515993235248830

`A006530(A000040(n+1)+a(n-1))` with `a(0)=2`
-/

namespace A362138.P16632515993235248830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (A000040 (n + 1) + a (n - 1)).toNat

end

end A362138.P16632515993235248830

noncomputable section

/-- A362138: a(n) = gpf(a(n-1) + prime(n)) where gpf is the greatest prime factor and a(1)=2.

Offset 1, canonical program `A362138.P16632515993235248830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. -/
def A362138 (n : ℕ) : ℤ :=
  A362138.P16632515993235248830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. -/
def A362138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364017.P4674726286493129954

`∑{d}[n+1, A007438(#)*A364011((n+1)/#)]`
-/

namespace A364017.P4674726286493129954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A364011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364017.P4674726286493129954

noncomputable section

/-- A364017: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-2) / (1 - x^(3*k-2))^3.

Offset 1, canonical program `A364017.P4674726286493129954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364017 (n : ℕ) : ℤ :=
  A364017.P4674726286493129954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364018.P745909422124864912

`∑{d}[n+1, A007438(#)*A364014((n+1)/#)]`
-/

namespace A364018.P745909422124864912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A364014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364018.P745909422124864912

noncomputable section

/-- A364018: Expansion of Sum_{k>0} (-1)^(k-1) * x^(3*k-1) / (1 - x^(3*k-1))^3.

Offset 1, canonical program `A364018.P745909422124864912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364018 (n : ℕ) : ℤ :=
  A364018.P745909422124864912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364043.P10368916526282945248

`A083911(n+1)-A083916(n+1)`
-/

namespace A364043.P10368916526282945248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083911 (n + 1) - A083916 (n + 1)

end

end A364043.P10368916526282945248

noncomputable section

/-- A364043: Expansion of Sum_{k>0} x^k / (1 + x^(5*k)).

Offset 1, canonical program `A364043.P10368916526282945248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364043 (n : ℕ) : ℤ :=
  A364043.P10368916526282945248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364499.P16700739225751135008

`A005940(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364499.P16700739225751135008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) - (n + 1 : ℤ)

end

end A364499.P16700739225751135008

noncomputable section

/-- A364499: a(n) = A005940(n) - n.

Offset 1, canonical program `A364499.P16700739225751135008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364499 (n : ℕ) : ℤ :=
  A364499.P16700739225751135008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364500.P4741976009625240050

`gcd(n+1, A005940(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364500.P4741976009625240050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005940 (n + 1))

end

end A364500.P4741976009625240050

noncomputable section

/-- A364500: a(n) = gcd(n, A005940(n)).

Offset 1, canonical program `A364500.P4741976009625240050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364500 (n : ℕ) : ℤ :=
  (A364500.P4741976009625240050.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364501.P11671779795574497897

`(n+1)/gcd(n+1, A005940(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364501.P11671779795574497897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A005940 (n + 1)) : ℚ)

end

end A364501.P11671779795574497897

noncomputable section

/-- A364501: a(n) = n / gcd(n, A005940(n)).

Offset 1, canonical program `A364501.P11671779795574497897`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364501.P11671779795574497897.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364502.P9871908459785644473

`A005940(n+1)/gcd(n+1, A005940(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364502.P9871908459785644473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A005940 (n + 1)) : ℚ)

end

end A364502.P9871908459785644473

noncomputable section

/-- A364502: a(n) = A005940(n) / gcd(n, A005940(n)).

Offset 1, canonical program `A364502.P9871908459785644473`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364502.P9871908459785644473.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365426.P3761931698884595568

`A336466(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365426.P3761931698884595568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (A163511 n).toNat

end

end A365426.P3761931698884595568

noncomputable section

/-- A365426: a(n) = A336466(A163511(n)).

Offset 0, canonical program `A365426.P3761931698884595568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365426 (n : ℕ) : ℤ :=
  A365426.P3761931698884595568.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366584.P7255468611177998519

`A006530(A000073(n+2))`
-/

namespace A366584.P7255468611177998519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000073 (n + 2)).toNat

end

end A366584.P7255468611177998519

noncomputable section

/-- A366584: a(2) = a(3) = 1; for n >3, a(n) = largest prime factor of n-th Tribonacci number.

Offset 2, canonical program `A366584.P7255468611177998519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366584 (n : ℕ) : ℤ :=
  A366584.P7255468611177998519.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366720.P18291755538968107855

`A006530(A178248(n))`
-/

namespace A366720.P18291755538968107855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178248 n).toNat

end

end A366720.P18291755538968107855

noncomputable section

/-- A366720: Largest prime factor of 12^n+1.

Offset 0, canonical program `A366720.P18291755538968107855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366720 (n : ℕ) : ℤ :=
  A366720.P18291755538968107855.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366795.P7121921865006446826

`A344695(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366795.P7121921865006446826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A005940 (1 + n)).toNat

end

end A366795.P7121921865006446826

noncomputable section

/-- A366795: a(n) = A344695(A005940(1+n)), where A344695(n) = gcd(psi(n), sigma(n)), and A005940 is the Doudna sequence.

Offset 0, canonical program `A366795.P7121921865006446826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A344695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366795 (n : ℕ) : ℤ :=
  A366795.P7121921865006446826.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A344695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366885.P6460870065527769006

`A347385(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366885.P6460870065527769006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347385 (A163511 n).toNat

end

end A366885.P6460870065527769006

noncomputable section

/-- A366885: Dedekind psi function applied to the odd part of n, permuted by A163511: a(n) = A347385(A163511(n)).

Offset 0, canonical program `A366885.P6460870065527769006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A347385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366885 (n : ℕ) : ℤ :=
  A366885.P6460870065527769006.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A347385, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366892.P16519678978380655638

`A336652(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366892.P16519678978380655638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336652 (A163511 n).toNat

end

end A366892.P16519678978380655638

noncomputable section

/-- A366892: a(n) = A336652(A163511(n)).

Offset 0, canonical program `A366892.P16519678978380655638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366892 (n : ℕ) : ℤ :=
  A366892.P16519678978380655638.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336652, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366960.P14113807688568308762

`eq[3, A037904(n+1)]+1`
-/

namespace A366960.P14113807688568308762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366960.P14113807688568308762

noncomputable section

/-- A366960: Numbers whose difference between the largest and smallest digits is equal to 3.

Offset 1, canonical program `A366960.P14113807688568308762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A366960 (n : ℕ) : ℤ :=
  (A366960.P14113807688568308762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A366960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366961.P17753619816558675089

`eq[4, A037904(n+1)]+1`
-/

namespace A366961.P17753619816558675089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366961.P17753619816558675089

noncomputable section

/-- A366961: Numbers whose difference between the largest and smallest digits is equal to 4.

Offset 1, canonical program `A366961.P17753619816558675089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A366961 (n : ℕ) : ℤ :=
  (A366961.P17753619816558675089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A366961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366963.P13437376339825858114

`eq[6, A037904(n+1)]+1`
-/

namespace A366963.P13437376339825858114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366963.P13437376339825858114

noncomputable section

/-- A366963: Numbers whose difference between the largest and smallest digits is equal to 6.

Offset 1, canonical program `A366963.P13437376339825858114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A366963 (n : ℕ) : ℤ :=
  (A366963.P13437376339825858114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A366963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366964.P211205205802012678

`eq[7, A037904(n+1)]+1`
-/

namespace A366964.P211205205802012678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366964.P211205205802012678

noncomputable section

/-- A366964: Numbers whose difference between the largest and smallest digits is equal to 7.

Offset 1, canonical program `A366964.P211205205802012678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. -/
def A366964 (n : ℕ) : ℤ :=
  (A366964.P211205205802012678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. -/
def A366964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366965.P15368654095798603801

`eq[8, A037904(n+1)]+1`
-/

namespace A366965.P15368654095798603801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366965.P15368654095798603801

noncomputable section

/-- A366965: Numbers whose difference between the largest and smallest digits is equal to 8.

Offset 1, canonical program `A366965.P15368654095798603801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A366965 (n : ℕ) : ℤ :=
  (A366965.P15368654095798603801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A366965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367003.P10899407354706323176

`A006530(A003261(n+1))`
-/

namespace A367003.P10899407354706323176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003261 (n + 1)).toNat

end

end A367003.P10899407354706323176

noncomputable section

/-- A367003: a(n) is the largest prime factor of n*2^n-1.

Offset 1, canonical program `A367003.P10899407354706323176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367003 (n : ℕ) : ℤ :=
  A367003.P10899407354706323176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367005.P7593407316265420145

`A006530(A002064(n))`
-/

namespace A367005.P7593407316265420145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002064 n).toNat

end

end A367005.P7593407316265420145

noncomputable section

/-- A367005: a(n) is the largest prime factor of n*2^n+1 for n>0, and a(0)=1.

Offset 0, canonical program `A367005.P7593407316265420145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367005 (n : ℕ) : ℤ :=
  A367005.P7593407316265420145.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368990.P4935486375508684149

`A294936(A005940(1+n))`
-/

namespace A368990.P4935486375508684149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A005940 (1 + n)).toNat

end

end A368990.P4935486375508684149

noncomputable section

/-- A368990: a(n) = 1 if A005940(1+n) is nondeficient, otherwise 0. Here A005940 is the Doudna sequence.

Offset 0, canonical program `A368990.P4935486375508684149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A294936, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368990 (n : ℕ) : ℤ :=
  A368990.P4935486375508684149.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A294936, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369209.P4800567984806134755

`eq[3, A006530(A000005(n+1))]+1`
-/

namespace A369209.P4800567984806134755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369209.P4800567984806134755

noncomputable section

/-- A369209: Numbers whose number of divisors has the largest prime factor 3.

Offset 1, canonical program `A369209.P4800567984806134755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369209 (n : ℕ) : ℤ :=
  (A369209.P4800567984806134755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370833.P4333784619671070186

`A006530(A004709(n+1))`
-/

namespace A370833.P4333784619671070186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004709 (n + 1)).toNat

end

end A370833.P4333784619671070186

noncomputable section

/-- A370833: a(n) is the greatest prime dividing the n-th cubefree number, for n >= 2; a(1)=1.

Offset 1, canonical program `A370833.P4333784619671070186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370833 (n : ℕ) : ℤ :=
  A370833.P4333784619671070186.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371012.P16977232108696174586

`A006530(A001481(n+2))`
-/

namespace A371012.P16977232108696174586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001481 (n + 2)).toNat

end

end A371012.P16977232108696174586

noncomputable section

/-- A371012: The largest prime that divides the n-th number that is the sum of 2 squares; a(2) = 1.

Offset 2, canonical program `A371012.P16977232108696174586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371012 (n : ℕ) : ℤ :=
  A371012.P16977232108696174586.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001481, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A371012.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371628.P15621552581421940745

`∑{d}[n+1, A084220(#)*A189393((n+1)/#)]`
-/

namespace A371628.P15621552581421940745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084220 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371628.P15621552581421940745

noncomputable section

/-- A371628: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( gcd(x_1, n)/gcd(x_1, x_2, x_3, x_4, n) )^3.

Offset 1, canonical program `A371628.P15621552581421940745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371628 (n : ℕ) : ℤ :=
  A371628.P15621552581421940745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372228.P5998843933586257429

`A006530(A066068(n+1))`
-/

namespace A372228.P5998843933586257429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066068 (n + 1)).toNat

end

end A372228.P5998843933586257429

noncomputable section

/-- A372228: a(n) is the largest prime factor of n^n + n.

Offset 1, canonical program `A372228.P5998843933586257429`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372228 (n : ℕ) : ℤ :=
  A372228.P5998843933586257429.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372229.P6682383042965722877

`A006530(A061190(n+2))`
-/

namespace A372229.P6682383042965722877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061190 (n + 2)).toNat

end

end A372229.P6682383042965722877

noncomputable section

/-- A372229: a(n) is the largest prime factor of n^n - n.

Offset 2, canonical program `A372229.P6682383042965722877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372229 (n : ℕ) : ℤ :=
  A372229.P6682383042965722877.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372929.P17628262349535249383

`∑{d}[n+1, A068970(#)*A338165((n+1)/#)]`
-/

namespace A372929.P17628262349535249383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A338165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372929.P17628262349535249383

noncomputable section

/-- A372929: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^4.

Offset 1, canonical program `A372929.P17628262349535249383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372929 (n : ℕ) : ℤ :=
  A372929.P17628262349535249383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372937.P5162355273622128373

`∑{d}[n+1, A189393(#)*A372930((n+1)/#)]`
-/

namespace A372937.P5162355273622128373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A372930 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372937.P5162355273622128373

noncomputable section

/-- A372937: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^5.

Offset 1, canonical program `A372937.P5162355273622128373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372937 (n : ℕ) : ℤ :=
  A372937.P5162355273622128373.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375767.P11029837342179991351

`A130233(A375766(n+1))`
-/

namespace A375767.P11029837342179991351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A375766 (n + 1)).toNat

end

end A375767.P11029837342179991351

noncomputable section

/-- A375767: The indices of the terms of A375766 in the Fibonacci sequence.

Offset 1, canonical program `A375767.P11029837342179991351`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, A375766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375767 (n : ℕ) : ℤ :=
  A375767.P11029837342179991351.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130233, A375766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375767.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379351.P3218989933823751428

`A006530(A059100(n))`
-/

namespace A379351.P3218989933823751428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059100 n).toNat

end

end A379351.P3218989933823751428

noncomputable section

/-- A379351: a(n) is the greatest prime factor of n^2 + 2.

Offset 0, canonical program `A379351.P3218989933823751428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379351 (n : ℕ) : ℤ :=
  A379351.P3218989933823751428.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380509.P17107691641625589008

`lt[A006530(4*n+1), n]`
-/

namespace A380509.P17107691641625589008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380509.P17107691641625589008

noncomputable section

/-- A380509: Numbers of the form i+j+4ij for i,j >= 1 together with numbers of the form -i-j+4ij for i,j >= 2.

Offset 1, canonical program `A380509.P17107691641625589008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380509 (n : ℕ) : ℤ :=
  (A380509.P17107691641625589008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381218.P12547036818025043636

`filter[A098903(n+1), A359372(#)]`
-/

namespace A381218.P12547036818025043636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A381218.P12547036818025043636

noncomputable section

/-- A381218: Odd numbers with both an odd number of prime factors (counted with multiplicity) and an odd number of distinct prime factors. (Intersection of A067019 and A098903.)

Offset 1, canonical program `A381218.P12547036818025043636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A381218 (n : ℕ) : ℤ :=
  A381218.P12547036818025043636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A381218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381313.P16274540658270787532

`lt[2, A375669(n+1)]+1`
-/

namespace A381313.P16274540658270787532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A381313.P16274540658270787532

noncomputable section

/-- A381313: Numbers that are divisible by the cube of an odd prime.

Offset 1, canonical program `A381313.P16274540658270787532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A381313 (n : ℕ) : ℤ :=
  (A381313.P16274540658270787532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 490 terms. -/
def A381313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382468.P9812451989353669786

`2*A006530(n+2)-A008472(n+2)`
-/

namespace A382468.P9812451989353669786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2) - A008472 (n + 2)

end

end A382468.P9812451989353669786

noncomputable section

/-- A382468: a(n) = (largest prime factor of n) minus (its remaining distinct prime factors).

Offset 2, canonical program `A382468.P9812451989353669786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382468 (n : ℕ) : ℤ :=
  A382468.P9812451989353669786.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382509.P1592332629180381026

`filter[A390789(n+1), A353670(#)]`
-/

namespace A382509.P1592332629180381026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A382509.P1592332629180381026

noncomputable section

/-- A382509: Integers s = (p1+p2)/4 such that p1 and p2 are consecutive primes and s can be written in the form p*2^k with k>=0 and p>2 prime.

Offset 1, canonical program `A382509.P1592332629180381026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 911 terms. -/
def A382509 (n : ℕ) : ℤ :=
  A382509.P1592332629180381026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 911 terms. -/
def A382509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382661.P8563438829571950820

`A191414(A268335(n+1))`
-/

namespace A382661.P8563438829571950820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A268335 (n + 1)).toNat

end

end A382661.P8563438829571950820

noncomputable section

/-- A382661: The unitary Jordan totient function applied to the exponentially odd numbers (A268335).

Offset 1, canonical program `A382661.P8563438829571950820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191414, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382661 (n : ℕ) : ℤ :=
  A382661.P8563438829571950820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191414, A268335, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382663.P5371014751236149270

`A191414(A004709(n+1))`
-/

namespace A382663.P5371014751236149270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A004709 (n + 1)).toNat

end

end A382663.P5371014751236149270

noncomputable section

/-- A382663: The unitary Jordan totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382663.P5371014751236149270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A191414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382663 (n : ℕ) : ℤ :=
  A382663.P5371014751236149270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A191414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384056.P13183105280516576560

`(n+1)*A047994(n+1)/A384055(n+1)`
-/

namespace A384056.P13183105280516576560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A047994 (n + 1) : ℚ) / (A384055 (n + 1) : ℚ)

end

end A384056.P13183105280516576560

noncomputable section

/-- A384056: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a power of 2.

Offset 1, canonical program `A384056.P13183105280516576560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A384055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384056 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384056.P13183105280516576560.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A384055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385076.P9368700758001390996

`A000005(n+1)+n*A086971(n+1)`
-/

namespace A385076.P9368700758001390996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A086971 (n + 1)

end

end A385076.P9368700758001390996

noncomputable section

/-- A385076: a(n) = Sum_{d|n} n^[Omega(d) = 2], where [ ] is the Iverson bracket.

Offset 1, canonical program `A385076.P9368700758001390996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385076 (n : ℕ) : ℤ :=
  A385076.P9368700758001390996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385538.P4395357012811371764

`A184859(n+2)-A184859(n+1)`
-/

namespace A385538.P4395357012811371764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184859 (n + 2) - A184859 (n + 1)

end

end A385538.P4395357012811371764

noncomputable section

/-- A385538: First differences of A184859.

Offset 1, canonical program `A385538.P4395357012811371764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184859, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385538 (n : ℕ) : ℤ :=
  A385538.P4395357012811371764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184859, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387122.P8961407856667893284

`A006530(A129069(n+1))`
-/

namespace A387122.P8961407856667893284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A129069 (n + 1)).toNat

end

end A387122.P8961407856667893284

noncomputable section

/-- A387122: Greatest prime divisor of 2*prime(n) + 3.

Offset 1, canonical program `A387122.P8961407856667893284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A129069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387122 (n : ℕ) : ℤ :=
  A387122.P8961407856667893284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A129069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387279.P14968820305295738344

`∑{d}[n+1, A006530(#)]`
-/

namespace A387279.P14968820305295738344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006530 d

end

end A387279.P14968820305295738344

noncomputable section

/-- A387279: Inverse Möbius transform of A006530.

Offset 1, canonical program `A387279.P14968820305295738344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387279 (n : ℕ) : ℤ :=
  A387279.P14968820305295738344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390299.P12960639858912194523

`A002472(n+1)*A177702(n)`
-/

namespace A390299.P12960639858912194523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 1) * A177702 n

end

end A390299.P12960639858912194523

noncomputable section

/-- A390299: Number of positive z <= n such that z^2 - 9^g is relatively prime to n (for any particular positive integer g).

Offset 1, canonical program `A390299.P12960639858912194523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390299 (n : ℕ) : ℤ :=
  A390299.P12960639858912194523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390329.P16154196424399310055

`lt[A067434(n+1)%2, 1]+1`
-/

namespace A390329.P16154196424399310055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067434 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390329.P16154196424399310055

noncomputable section

/-- A390329: Numbers k such that the number of distinct prime divisors of binomial(2k, k) is even.

Offset 1, canonical program `A390329.P16154196424399310055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329 (n : ℕ) : ℤ :=
  (A390329.P16154196424399310055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390595.P13905684079355047265

`eq[A070940(3*n+4), A070940(n+1)]+1`
-/

namespace A390595.P13905684079355047265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A390595.P13905684079355047265

noncomputable section

/-- A390595: Numbers k such that the binary length of k is the same as the binary length of 3*k+1 reduced by the largest possible power of two.

Offset 1, canonical program `A390595.P13905684079355047265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A390595 (n : ℕ) : ℤ :=
  (A390595.P13905684079355047265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. -/
def A390595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390768.P10875789156720310825

`A000523(A139391(n+1))-A000523(n+1)`
-/

namespace A390768.P10875789156720310825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A139391 (n + 1)).toNat - A000523 (n + 1)

end

end A390768.P10875789156720310825

noncomputable section

/-- A390768: Binary length of A139391(n) - binary length of n.

Offset 1, canonical program `A390768.P10875789156720310825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A390768 (n : ℕ) : ℤ :=
  A390768.P10875789156720310825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A390768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392240.P12035626656294445076

`A006530(A016921(n+1))`
-/

namespace A392240.P12035626656294445076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016921 (n + 1)).toNat

end

end A392240.P12035626656294445076

noncomputable section

/-- A392240: Largest prime factor of 6*n+1.

Offset 1, canonical program `A392240.P12035626656294445076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392240 (n : ℕ) : ℤ :=
  A392240.P12035626656294445076.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392865.P10564030822675595943

`A000027(n+1)%A151800(A006530(n+1))`
-/

namespace A392865.P10564030822675595943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A151800 (A006530 (n + 1)).toNat)

end

end A392865.P10564030822675595943

noncomputable section

/-- A392865: a(n) = n mod A117366(n), where A117366 gives the smallest prime greater than the largest prime dividing n.

Offset 1, canonical program `A392865.P10564030822675595943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392865 (n : ℕ) : ℤ :=
  A392865.P10564030822675595943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394380.P12740966740896101419

`A264810(2^(n+1)-1)`
-/

namespace A394380.P12740966740896101419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (2 ^ (n + 1) - 1)

end

end A394380.P12740966740896101419

noncomputable section

/-- A394380: Number of totients below 2^n.

Offset 1, canonical program `A394380.P12740966740896101419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380 (n : ℕ) : ℤ :=
  A394380.P12740966740896101419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394380.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394381.P15980332945039088340

`A264810(A000149(n+1))`
-/

namespace A394381.P15980332945039088340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A000149 (n + 1)).toNat

end

end A394381.P15980332945039088340

noncomputable section

/-- A394381: Number of totients below exp(n).

Offset 1, canonical program `A394381.P15980332945039088340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381 (n : ℕ) : ℤ :=
  A394381.P15980332945039088340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394789.P13559910968845003337

`∑[A353670(n+1)]`
-/

namespace A394789.P13559910968845003337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P13559910968845003337

noncomputable section

/-- A394789: Number of positive integers <= n with exactly two odd divisors.

Offset 1, canonical program `A394789.P13559910968845003337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789 (n : ℕ) : ℤ :=
  A394789.P13559910968845003337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398314.P16604501375996341517

`(n+1)*A034386(A006530(n+1))`
-/

namespace A398314.P16604501375996341517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034386 (A006530 (n + 1)).toNat

end

end A398314.P16604501375996341517

noncomputable section

/-- A398314: a(n) = n * A002110(pi(gpf(n))), where pi = A000720 and gpf(n) is the greatest prime factor of n.

Offset 1, canonical program `A398314.P16604501375996341517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A398314 (n : ℕ) : ℤ :=
  A398314.P16604501375996341517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A398314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217006.P11652602790585966678

`∩[A179188(n+1)+6, A179188(n+4)]`
-/

namespace A217006.P11652602790585966678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179188 (n + 1) + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179188 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217006.P11652602790585966678

noncomputable section

/-- A217006: Numbers k such that phi(k-6) = phi(k) = phi(k+6).

Offset 1, canonical program `A217006.P11652602790585966678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A217006 (n : ℕ) : ℤ :=
  (A217006.P11652602790585966678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A217006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221283.P16155625490231982154

`A264810(10^n)`
-/

namespace A221283.P16155625490231982154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (10 ^ n)

end

end A221283.P16155625490231982154

noncomputable section

/-- A221283: Number of totients up to 10^n.

Offset 0, canonical program `A221283.P16155625490231982154`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221283 (n : ℕ) : ℤ :=
  A221283.P16155625490231982154.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A221283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A226323.P8599648680778542413

`A017077(∑[A007875(n+1)]-A007875(n+1))`
-/

namespace A226323.P8599648680778542413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (∑ j ∈ Finset.range (n + 1), f1 j - A007875 (n + 1)).toNat

end

end A226323.P8599648680778542413

noncomputable section

/-- A226323: Number of ordered pairs (i,j) with |i| * |j| <= n and gcd(i,j) <= 1.

Offset 0, canonical program `A226323.P8599648680778542413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A226323 (n : ℕ) : ℤ :=
  A226323.P8599648680778542413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A226323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235461.P18008410030691594039

`∩[A000695(A008578(n+1)), A077718(n+1)]`
-/

namespace A235461.P18008410030691594039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235461.P18008410030691594039

noncomputable section

/-- A235461: Primes whose base-4 representation also is the base 2-representation of a prime.

Offset 1, canonical program `A235461.P18008410030691594039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A235461 (n : ℕ) : ℤ :=
  (A235461.P18008410030691594039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A235461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246803.P15239765525824187154

`eq[A000010(n+1), A295301(n+1)]+1`
-/

namespace A246803.P15239765525824187154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246803.P15239765525824187154

noncomputable section

/-- A246803: Solutions of phi(sigma(x)) = x-phi(x).

Offset 1, canonical program `A246803.P15239765525824187154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A246803 (n : ℕ) : ℤ :=
  (A246803.P15239765525824187154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A246803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248003.P1176382946806919218

`A023896(n+1)/A007875(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248003.P1176382946806919218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) : ℚ) / (A007875 (n + 1) : ℚ)

end

end A248003.P1176382946806919218

noncomputable section

/-- A248003: a(n) = (sum of totatives of n ) / (2^(omega(n)-1)); a(n) = A023896(n) / A007875(n).

Offset 1, canonical program `A248003.P1176382946806919218`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, A023896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248003.P1176382946806919218.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, A023896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A248003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248762.P4209964246771516195

`(n+1)!/A145642(n+1)`
-/

namespace A248762.P4209964246771516195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A145642 (n + 1) : ℚ)

end

end A248762.P4209964246771516195

noncomputable section

/-- A248762: Greatest cube that divides n!.

Offset 1, canonical program `A248762.P4209964246771516195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248762 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248762.P4209964246771516195.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249424.P5276109729741823829

`2*A249428(n+1)+1`
-/

namespace A249424.P5276109729741823829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249428 (n + 1) + 1

end

end A249424.P5276109729741823829

noncomputable section

/-- A249424: Odd integers n such that A249151(n) = (n-1)/2.

Offset 1, canonical program `A249424.P5276109729741823829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A249424 (n : ℕ) : ℤ :=
  A249424.P5276109729741823829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A249424.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267894.P10172327146700491621

`lt[n*char[A267895(n+1)], n]`
-/

namespace A267894.P10172327146700491621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267895 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A267894.P10172327146700491621

noncomputable section

/-- A267894: Numbers whose number of odd divisors is nonprime.

Offset 1, canonical program `A267894.P10172327146700491621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7172 terms. -/
def A267894 (n : ℕ) : ℤ :=
  (A267894.P10172327146700491621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7172 terms. -/
def A267894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273711.P5353043427219471615

`A001221(n+1)*A007875(n+1)`
-/

namespace A273711.P5353043427219471615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A007875 (n + 1)

end

end A273711.P5353043427219471615

noncomputable section

/-- A273711: The Hadamard product of omega(n) and A007875(n).

Offset 1, canonical program `A273711.P5353043427219471615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273711 (n : ℕ) : ℤ :=
  A273711.P5353043427219471615.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A273711.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274915.P5817165163141562259

`filter[A292315(n+1), A340363(#)]`
-/

namespace A274915.P5817165163141562259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A274915.P5817165163141562259

noncomputable section

/-- A274915: Powers of odd non-Fermat primes.

Offset 1, canonical program `A274915.P5817165163141562259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4252 terms. -/
def A274915 (n : ℕ) : ℤ :=
  A274915.P5817165163141562259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4252 terms. -/
def A274915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279912.P579018527015761516

`∑{d}[n, A342534(#)]`
-/

namespace A279912.P579018527015761516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342534 d

end

end A279912.P579018527015761516

noncomputable section

/-- A279912: a(n) = Sum_{i=1..n} denominator(i^n/n).

Offset 0, canonical program `A279912.P579018527015761516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279912 (n : ℕ) : ℤ :=
  A279912.P579018527015761516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281926.P17761781644500305404

`∩[2*A014613(n+1), A001043(n+1)]`
-/

namespace A281926.P17761781644500305404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281926.P17761781644500305404

noncomputable section

/-- A281926: Numbers that are the product of exactly 5 primes and are of the form prime(k) + prime(k + 1).

Offset 1, canonical program `A281926.P17761781644500305404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A281926 (n : ℕ) : ℤ :=
  (A281926.P17761781644500305404.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A281926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289553.P10222352224202675943

`∪[(n+1)², A033942(n+1)]`
-/

namespace A289553.P10222352224202675943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289553.P10222352224202675943

noncomputable section

/-- A289553: Numbers that are not the product of two distinct noncomposite numbers (A008578).

Offset 1, canonical program `A289553.P10222352224202675943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289553 (n : ℕ) : ℤ :=
  (A289553.P10222352224202675943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292763.P17011171486369911549

`eq[1, A354032(n+1)]+1`
-/

namespace A292763.P17011171486369911549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292763.P17011171486369911549

noncomputable section

/-- A292763: Numbers m such that sigma(m)+phi(m) == 2 mod 4.

Offset 1, canonical program `A292763.P17011171486369911549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292763 (n : ℕ) : ℤ :=
  (A292763.P17011171486369911549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292763.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A294278.P17650262410649944853

`lt[A007875(n+1), A007875(A028310(n))]`
-/

namespace A294278.P17650262410649944853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294278.P17650262410649944853

noncomputable section

/-- A294278: Numbers k such that omega(k) > omega(k+1) (where omega(m) = A001221(m), the number of distinct primes dividing m).

Offset 1, canonical program `A294278.P17650262410649944853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3645 terms. -/
def A294278 (n : ℕ) : ℤ :=
  (A294278.P17650262410649944853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3645 terms. -/
def A294278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295501.P9575803984090535079

`A053287(2*(n+1))`
-/

namespace A295501.P9575803984090535079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (2 * (n + 1))

end

end A295501.P9575803984090535079

noncomputable section

/-- A295501: a(n) = phi(4^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A295501.P9575803984090535079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295501 (n : ℕ) : ℤ :=
  A295501.P9575803984090535079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295901.P1895136251216199414

`A296206((n+1)²)`
-/

namespace A295901.P1895136251216199414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296206 ((n + 1) ^ 2)

end

end A295901.P1895136251216199414

noncomputable section

/-- A295901: Unique sequence satisfying SumXOR_{d divides n} a(d) = n^2 for any n > 0, where SumXOR is the analog of summation under the binary XOR operation.

Offset 1, canonical program `A295901.P1895136251216199414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A295901 (n : ℕ) : ℤ :=
  A295901.P1895136251216199414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A295901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303479.P8152554123791237719

`A303481(n+1)-2*A303973(n+1)`
-/

namespace A303479.P8152554123791237719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303481 (n + 1) - 2 * A303973 (n + 1)

end

end A303479.P8152554123791237719

noncomputable section

/-- A303479: Total volume of the family of rectangular prisms with dimensions p, q, and |q - p| where p divides q, n = p + q and p < q.

Offset 1, canonical program `A303479.P8152554123791237719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303479 (n : ℕ) : ℤ :=
  A303479.P8152554123791237719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307341.P13279017432395934177

`record[A105570(A014613(n+1))]`
-/

namespace A307341.P13279017432395934177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A014613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A307341.P13279017432395934177

noncomputable section

/-- A307341: Products of four primes, not all distinct.

Offset 1, canonical program `A307341.P13279017432395934177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6535 terms. -/
def A307341 (n : ℕ) : ℤ :=
  A307341.P13279017432395934177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6535 terms. -/
def A307341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309395.P9707816084324438001

`ceil((n+1)/A193800(n+1))-1`
-/

namespace A309395.P9707816084324438001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A193800 (n + 1) : ℚ)⌉ - 1

end

end A309395.P9707816084324438001

noncomputable section

/-- A309395: Number of integer-sided triangles with sides a,b,c, max(a,b) < c, a + c = n that are right triangles.

Offset 1, canonical program `A309395.P9707816084324438001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A309395 (n : ℕ) : ℤ :=
  A309395.P9707816084324438001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A309395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319677.P17823138448930020068

`(n+1)/A323409(n+1)`
-/

namespace A319677.P17823138448930020068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323409 (n + 1) : ℚ)

end

end A319677.P17823138448930020068

noncomputable section

/-- A319677: Denominator of A047994(n)/n where A047994 is the unitary totient function.

Offset 1, canonical program `A319677.P17823138448930020068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319677 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319677.P17823138448930020068.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321547.P15690247661382810148

`2*A321812(n+1)-A013956(n+1)`
-/

namespace A321547.P15690247661382810148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321812 (n + 1) - A013956 (n + 1)

end

end A321547.P15690247661382810148

noncomputable section

/-- A321547: a(n) = Sum_{d|n} (-1)^(d-1)*d^8.

Offset 1, canonical program `A321547.P15690247661382810148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321547 (n : ℕ) : ℤ :=
  A321547.P15690247661382810148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321548.P14602039721236023997

`2*A321813(n+1)-A013957(n+1)`
-/

namespace A321548.P14602039721236023997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321813 (n + 1) - A013957 (n + 1)

end

end A321548.P14602039721236023997

noncomputable section

/-- A321548: a(n) = Sum_{d|n} (-1)^(d-1)*d^9.

Offset 1, canonical program `A321548.P14602039721236023997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321548 (n : ℕ) : ℤ :=
  A321548.P14602039721236023997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321549.P10078138351214375187

`2*A321814(n+1)-A013958(n+1)`
-/

namespace A321549.P10078138351214375187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321814 (n + 1) - A013958 (n + 1)

end

end A321549.P10078138351214375187

noncomputable section

/-- A321549: a(n) = Sum_{d|n} (-1)^(d-1)*d^10.

Offset 1, canonical program `A321549.P10078138351214375187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321549 (n : ℕ) : ℤ :=
  A321549.P10078138351214375187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326045.P9050702323358522594

`A326040(n+1)-(n+1)`
-/

namespace A326045.P9050702323358522594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326040 (n + 1) - (n + 1 : ℤ)

end

end A326045.P9050702323358522594

noncomputable section

/-- A326045: a(n) is the sum of divisors of n, minus the largest square dividing that sum, minus n: a(n) = sigma(n) - A008833(sigma(n)) - n.

Offset 1, canonical program `A326045.P9050702323358522594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326045 (n : ℕ) : ℤ :=
  A326045.P9050702323358522594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326046.P12649065929944989809

`gcd(n+1-A326039(n+1), A326040(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326046.P12649065929944989809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A326039 (n + 1)) (A326040 (n + 1) - (n + 1 : ℤ))

end

end A326046.P12649065929944989809

noncomputable section

/-- A326046: a(n) = gcd(n-A326039(n), A326040(n)-n).

Offset 1, canonical program `A326046.P12649065929944989809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326039, A326040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326046 (n : ℕ) : ℤ :=
  (A326046.P12649065929944989809.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326039, A326040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336467.P6879531493608964417

`A000265(A206787(n+1))*a(A336651(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A336467.P6879531493608964417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000265 (A206787 (n + 1)).toNat * a (A336651 (n + 1) - 1).toNat

end

end A336467.P6879531493608964417

noncomputable section

/-- A336467: Fully multiplicative with a(2) = 1 and a(p) = A000265(p+1) for odd primes p, with A000265(k) giving the odd part of k.

Offset 1, canonical program `A336467.P6879531493608964417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A206787, A336651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336467 (n : ℕ) : ℤ :=
  A336467.P6879531493608964417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A206787, A336651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336467.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337194.P3771449992322960062

`A336698(n+1)*2^A337195(n+1)`
-/

namespace A337194.P3771449992322960062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336698 (n + 1) : ℚ) * (2 : ℚ) ^ (A337195 (n + 1) : ℤ)

end

end A337194.P3771449992322960062

noncomputable section

/-- A337194: a(n) = 1 + A000265(sigma(n)), where A000265 gives the odd part.

Offset 1, canonical program `A337194.P3771449992322960062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336698, A337195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337194 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337194.P3771449992322960062.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336698, A337195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342470.P9427416455520986583

`∑{d}[n+1, A361148(#)]`
-/

namespace A342470.P9427416455520986583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361148 d

end

end A342470.P9427416455520986583

noncomputable section

/-- A342470: a(n) = Sum_{d|n} phi(d)^4.

Offset 1, canonical program `A342470.P9427416455520986583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342470 (n : ℕ) : ℤ :=
  A342470.P9427416455520986583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343912.P17867153873116999387

`A053470(n+1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A343912.P17867153873116999387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053470 (n + 1) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A343912.P17867153873116999387

noncomputable section

/-- A343912: a(n) = n - phi(n - phi(n)), where phi is the Euler totient function.

Offset 1, canonical program `A343912.P17867153873116999387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343912 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343912.P17867153873116999387.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346245.P11917362753608670902

`∩[A087248(n+1), A226944(n+1)]`
-/

namespace A346245.P11917362753608670902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P11917362753608670902

noncomputable section

/-- A346245: Numbers k for which A003415(k) > k*A003557(k).

Offset 1, canonical program `A346245.P11917362753608670902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A346245 (n : ℕ) : ℤ :=
  (A346245.P11917362753608670902.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A346245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347202.P15825861999241065422

`eq[0, A353670(n+1)]+1`
-/

namespace A347202.P15825861999241065422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347202.P15825861999241065422

noncomputable section

/-- A347202: Numbers whose number of odd divisors is not equal to 2.

Offset 1, canonical program `A347202.P15825861999241065422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347202 (n : ℕ) : ℤ :=
  (A347202.P15825861999241065422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348496.P16814638509883304779

`A348495(n+1)/A003557(n+1)`
-/

namespace A348496.P16814638509883304779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348495 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A348496.P16814638509883304779

noncomputable section

/-- A348496: a(n) = gcd(A018804(n), A347130(n)) / A003557(n).

Offset 1, canonical program `A348496.P16814638509883304779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348496 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348496.P16814638509883304779.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348496.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353328.P18044669405917485236

`A353354(n+1)+A353329(n+1)`
-/

namespace A353328.P18044669405917485236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (n + 1) + A353329 (n + 1)

end

end A353328.P18044669405917485236

noncomputable section

/-- A353328: Number of divisors d of n for which A332823(d) is positive (+1).

Offset 1, canonical program `A353328.P18044669405917485236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353329, A353354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353328 (n : ℕ) : ℤ :=
  A353328.P18044669405917485236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353329, A353354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355450.P7145778670325853768

`A355451(1+(n+1)²)`
-/

namespace A355450.P7145778670325853768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (1 + (n + 1) ^ 2)

end

end A355450.P7145778670325853768

noncomputable section

/-- A355450: a(n) = 1 if n is odd and phi(x) = n^2 + 1 has no solutions, otherwise 0.

Offset 1, canonical program `A355450.P7145778670325853768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355450 (n : ℕ) : ℤ :=
  A355450.P7145778670325853768.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357077.P18209968260014703734

`∩[A033942(n+1)-1, A033942(n+1)]`
-/

namespace A357077.P18209968260014703734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357077.P18209968260014703734

noncomputable section

/-- A357077: The lesser of two consecutive numbers with at least 3 prime factors (counted with multiplicity).

Offset 1, canonical program `A357077.P18209968260014703734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5053 terms. -/
def A357077 (n : ℕ) : ℤ :=
  (A357077.P18209968260014703734.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5053 terms. -/
def A357077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358347.P10314352344576710281

`A034448(n+1)/A358346(n+1)`
-/

namespace A358347.P10314352344576710281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A358346 (n + 1) : ℚ)

end

end A358347.P10314352344576710281

noncomputable section

/-- A358347: a(n) is the sum of the unitary divisors of n that are squares.

Offset 1, canonical program `A358347.P10314352344576710281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A358346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358347 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A358347.P10314352344576710281.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A358346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358347.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A360540.P10431117392450693366

`(n+1)/A360539(n+1)`
-/

namespace A360540.P10431117392450693366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360539 (n + 1) : ℚ)

end

end A360540.P10431117392450693366

noncomputable section

/-- A360540: a(n) is the cubefull part of n: the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A360540.P10431117392450693366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360540.P10431117392450693366.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365171.P15755108315260376590

`∑{d}[n+1, A353519(#)]`
-/

namespace A365171.P15755108315260376590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353519 d

end

end A365171.P15755108315260376590

noncomputable section

/-- A365171: The number of divisors d of n such that gcd(d, n/d) is a square.

Offset 1, canonical program `A365171.P15755108315260376590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365171 (n : ℕ) : ℤ :=
  A365171.P15755108315260376590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365499.P12823429545755088149

`A365498((n+1)/A055229(n+1))`
-/

namespace A365499.P12823429545755088149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055229 (n + 1) : ℚ))).toNat

end

end A365499.P12823429545755088149

noncomputable section

/-- A365499: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 + 1/p^s - 1/p^(4*s)).

Offset 1, canonical program `A365499.P12823429545755088149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365499 (n : ℕ) : ℤ :=
  A365499.P12823429545755088149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366147.P10283015225632227018

`A000005(A360539(n+1))`
-/

namespace A366147.P10283015225632227018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A360539 (n + 1)).toNat

end

end A366147.P10283015225632227018

noncomputable section

/-- A366147: The number of divisors of the cubefree part of n (A360539).

Offset 1, canonical program `A366147.P10283015225632227018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366147 (n : ℕ) : ℤ :=
  A366147.P10283015225632227018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366654.P3224767880021133943

`A053287(3*(n+1))`
-/

namespace A366654.P3224767880021133943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (3 * (n + 1))

end

end A366654.P3224767880021133943

noncomputable section

/-- A366654: a(n) = phi(8^n-1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A366654.P3224767880021133943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366654 (n : ℕ) : ℤ :=
  A366654.P3224767880021133943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368168.P15292658510241182672

`A034444(A368167(n+1))`
-/

namespace A368168.P15292658510241182672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A368167 (n + 1)).toNat

end

end A368168.P15292658510241182672

noncomputable section

/-- A368168: The number of unitary divisors of n that are cubefull exponentially odd numbers (A335988).

Offset 1, canonical program `A368168.P15292658510241182672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A368167, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368168 (n : ℕ) : ℤ :=
  A368168.P15292658510241182672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A368167, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368168.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368169.P9952694221193690901

`A000005(A368167(n+1))`
-/

namespace A368169.P9952694221193690901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A368167 (n + 1)).toNat

end

end A368169.P9952694221193690901

noncomputable section

/-- A368169: The number of divisors of the largest unitary divisor of n that is a cubefull exponentially odd number (A368167).

Offset 1, canonical program `A368169.P9952694221193690901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A368167, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368169 (n : ℕ) : ℤ :=
  A368169.P9952694221193690901.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A368167, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368884.P4906600944682773301

`A360539(A057521(n+1))`
-/

namespace A368884.P4906600944682773301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A057521 (n + 1)).toNat

end

end A368884.P4906600944682773301

noncomputable section

/-- A368884: The largest unitary divisor of n that is the square of a squarefree number (A062503).

Offset 1, canonical program `A368884.P4906600944682773301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368884 (n : ℕ) : ℤ :=
  A368884.P4906600944682773301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369256.P13230337286755965464

`filter[A028260(n+1), A353519(#)]`
-/

namespace A369256.P13230337286755965464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A369256.P13230337286755965464

noncomputable section

/-- A369256: Positions of odd terms in A140773.

Offset 1, canonical program `A369256.P13230337286755965464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A369256 (n : ℕ) : ℤ :=
  A369256.P13230337286755965464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A369256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369310.P4588423880105354459

`A190867(n+1)*A365498(n+1)`
-/

namespace A369310.P4588423880105354459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (n + 1) * A365498 (n + 1)

end

end A369310.P4588423880105354459

noncomputable section

/-- A369310: The number of divisors d of n such that gcd(d, n/d) is a powerful number.

Offset 1, canonical program `A369310.P4588423880105354459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310 (n : ℕ) : ℤ :=
  A369310.P4588423880105354459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370080.P3603288558097370271

`A005361(n+1)/A370079(n+1)`
-/

namespace A370080.P3603288558097370271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) / (A370079 (n + 1) : ℚ)

end

end A370080.P3603288558097370271

noncomputable section

/-- A370080: The product of the even exponents of the prime factorization of n.

Offset 1, canonical program `A370080.P3603288558097370271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A370079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370080 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370080.P3603288558097370271.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A370079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371242.P9923243435576560346

`A034448(A360539(n+1))`
-/

namespace A371242.P9923243435576560346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A360539 (n + 1)).toNat

end

end A371242.P9923243435576560346

noncomputable section

/-- A371242: The sum of the unitary divisors of n that are cubefree numbers (A004709).

Offset 1, canonical program `A371242.P9923243435576560346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371242 (n : ℕ) : ℤ :=
  A371242.P9923243435576560346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375034.P14557958102364292036

`A375032(n+1)-A375033(n+1)`
-/

namespace A375034.P14557958102364292036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375032 (n + 1) - A375033 (n + 1)

end

end A375034.P14557958102364292036

noncomputable section

/-- A375034: The difference between the maximum odd exponent and the maximum even exponent in the prime factorization of n, where 0 is assigned to each maximum exponent if no such exponent exists.

Offset 1, canonical program `A375034.P14557958102364292036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375032, A375033, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375034 (n : ℕ) : ℤ :=
  A375034.P14557958102364292036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375032, A375033, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375847.P17445799609961011630

`A051903(A360539(n+1))`
-/

namespace A375847.P17445799609961011630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A360539 (n + 1)).toNat

end

end A375847.P17445799609961011630

noncomputable section

/-- A375847: The maximum exponent in the prime factorization of the largest unitary cubefree divisor of n.

Offset 1, canonical program `A375847.P17445799609961011630`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375847 (n : ℕ) : ℤ :=
  A375847.P17445799609961011630.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379336.P4604804875248092193

`∪[A375055(n+1), A378767(n+1)]`
-/

namespace A379336.P4604804875248092193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379336.P4604804875248092193

noncomputable section

/-- A379336: Numbers k such that there exists a divisor pair (d, d/k) such that one neither divides nor is coprime to the other.

Offset 1, canonical program `A379336.P4604804875248092193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379336 (n : ℕ) : ℤ :=
  (A379336.P4604804875248092193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381315.P9914003275205982349

`∩[A375072(n+1), A377844(n+1)]`
-/

namespace A381315.P9914003275205982349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381315.P9914003275205982349

noncomputable section

/-- A381315: Numbers whose prime factorization exponents include exactly one 3 and no exponent greater than 3.

Offset 1, canonical program `A381315.P9914003275205982349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315 (n : ℕ) : ℤ :=
  (A381315.P9914003275205982349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7798 terms. -/
def A381315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382903.P2846374962855123125

`A360539(A046100(n+1))`
-/

namespace A382903.P2846374962855123125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A046100 (n + 1)).toNat

end

end A382903.P2846374962855123125

noncomputable section

/-- A382903: The largest cubefree unitary divisor of the n-th biquadratefree number.

Offset 1, canonical program `A382903.P2846374962855123125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903 (n : ℕ) : ℤ :=
  A382903.P2846374962855123125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395959.P2730340011751273461

`2*n+A395958(2*n)`
-/

namespace A395959.P2730340011751273461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A395958 (2 * n)

end

end A395959.P2730340011751273461

noncomputable section

/-- A395959: Numbers k such that A395958(k) = 0.

Offset 1, canonical program `A395959.P2730340011751273461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395959 (n : ℕ) : ℤ :=
  A395959.P2730340011751273461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395960.P5958715908451391238

`2*n+1-A395958(2*n)`
-/

namespace A395960.P5958715908451391238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A395958 (2 * n)

end

end A395960.P5958715908451391238

noncomputable section

/-- A395960: Numbers k such that A395958(k) = 1.

Offset 1, canonical program `A395960.P5958715908451391238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395960 (n : ℕ) : ℤ :=
  A395960.P5958715908451391238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395958, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209802.P15698415580135976079

`∑[A166234(n+1)]`
-/

namespace A209802.P15698415580135976079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209802.P15698415580135976079

noncomputable section

/-- A209802: Partial sums of exponential Möbius function, A166234.

Offset 1, canonical program `A209802.P15698415580135976079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209802 (n : ℕ) : ℤ :=
  A209802.P15698415580135976079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229340.P17722889321809029525

`∑{e}[A006530(n+1), A000010(A003415((n+1)/#))]`
-/

namespace A229340.P17722889321809029525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ))).toNat).toNat

end

end A229340.P17722889321809029525

noncomputable section

/-- A229340: Euler totient function of the arithmetic derivative of n: a(n) = phi(n'), a(1) = 0.

Offset 1, canonical program `A229340.P17722889321809029525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229340 (n : ℕ) : ℤ :=
  A229340.P17722889321809029525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240053.P14038067904992536959

`A003415(A240052(n+1))`
-/

namespace A240053.P14038067904992536959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A240052 (n + 1)).toNat

end

end A240053.P14038067904992536959

noncomputable section

/-- A240053: 3rd arithmetic derivation of products of 2 successive prime numbers (A006094).

Offset 1, canonical program `A240053.P14038067904992536959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A240052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240053 (n : ℕ) : ℤ :=
  A240053.P14038067904992536959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A240052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A240053.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A247129.P9398303988228665836

`∩[A262406(n+1), A324745(n+1)]`
-/

namespace A247129.P9398303988228665836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247129.P9398303988228665836

noncomputable section

/-- A247129: Semiprimes n such that phi(n) is a square.

Offset 1, canonical program `A247129.P9398303988228665836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1565 terms. -/
def A247129 (n : ℕ) : ℤ :=
  (A247129.P9398303988228665836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1565 terms. -/
def A247129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248766.P6803094462203919962

`A053165((n+1)!)`
-/

namespace A248766.P6803094462203919962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (Nat.factorial (n + 1))

end

end A248766.P6803094462203919962

noncomputable section

/-- A248766: Greatest 4th-power-free divisor of n!

Offset 1, canonical program `A248766.P6803094462203919962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248766 (n : ℕ) : ℤ :=
  A248766.P6803094462203919962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258645.P7075663669890801924

`A258644(A003415(n))`
-/

namespace A258645.P7075663669890801924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258644 (A003415 n).toNat

end

end A258645.P7075663669890801924

noncomputable section

/-- A258645: Fifth arithmetic derivative of n.

Offset 0, canonical program `A258645.P7075663669890801924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258645 (n : ℕ) : ℤ :=
  A258645.P7075663669890801924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274611.P10471680084800426065

`(n+1)/A053165(n+1)*A053165(2*(n+1))`
-/

namespace A274611.P10471680084800426065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053165 (n + 1) : ℚ) * (A053165 (2 * (n + 1)) : ℚ)

end

end A274611.P10471680084800426065

noncomputable section

/-- A274611: a(n) = n/8 if A007814(n) == 3 (mod 4), else a(n) = 2*n.

Offset 1, canonical program `A274611.P10471680084800426065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A274611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A274611.P10471680084800426065.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A274611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277802.P17096893089026203100

`A048798(A004709(n+1))`
-/

namespace A277802.P17096893089026203100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A004709 (n + 1)).toNat

end

end A277802.P17096893089026203100

noncomputable section

/-- A277802: The least k > 0 such that k*A004709(n) is a cube.

Offset 1, canonical program `A277802.P17096893089026203100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A048798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277802 (n : ℕ) : ℤ :=
  A277802.P17096893089026203100.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A048798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305461.P8154523107859240476

`A056671(n+1)*A365404(n+1)`
-/

namespace A305461.P8154523107859240476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1) * A365404 (n + 1)

end

end A305461.P8154523107859240476

noncomputable section

/-- A305461: The number of one-digit numbers, k, in base n such that k^2 and k^3 end in the same digit.

Offset 1, canonical program `A305461.P8154523107859240476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, A365404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305461 (n : ℕ) : ℤ :=
  A305461.P8154523107859240476.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056671, A365404, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324747.P5695930881138329308

`∩[A187039(n+1), A324745(n+1)]`
-/

namespace A324747.P5695930881138329308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324747.P5695930881138329308

noncomputable section

/-- A324747: Numbers k with exactly two distinct prime factors and such that phi(k) is a square, when: k = p^(2s) * q^(2t+1) with s >= 1, t >= 0, p <> q primes.

Offset 1, canonical program `A324747.P5695930881138329308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A324747 (n : ℕ) : ℤ :=
  (A324747.P5695930881138329308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A324747.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A327861.P7578778145524314536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327861 (n : ℕ) : ℤ :=
  (A327861.P7578778145524314536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328320.P11647473449184802512

`eq[0, A328311(n+1)]+1`
-/

namespace A328320.P11647473449184802512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328320.P11647473449184802512

noncomputable section

/-- A328320: Numbers for which A328311(n) = 1 + A051903(A003415(n)) - A051903(n) is zero (including 1 as the initial term).

Offset 1, canonical program `A328320.P11647473449184802512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328320 (n : ℕ) : ℤ :=
  (A328320.P11647473449184802512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328321.P3480130997520919797

`lt[0, A328311(n+1)]+1`
-/

namespace A328321.P3480130997520919797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328321.P3480130997520919797

noncomputable section

/-- A328321: Numbers n for which A328311(n) = 1 + A051903(A003415(n)) - A051903(n) is strictly positive.

Offset 1, canonical program `A328321.P3480130997520919797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328321 (n : ℕ) : ℤ :=
  (A328321.P3480130997520919797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329376.P15315639946828072060

`gcd(A010848(n+1), A360539(n+1))`
-/

namespace A329376.P15315639946828072060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010848 (n + 1)) (A360539 (n + 1))

end

end A329376.P15315639946828072060

noncomputable section

/-- A329376: Multiplicative with a(p^e) = p when e = 2, otherwise a(p^e) = 1.

Offset 1, canonical program `A329376.P15315639946828072060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329376 (n : ℕ) : ℤ :=
  (A329376.P15315639946828072060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335324.P12641586174237596728

`A053165(n+1)/A007913(n+1)`
-/

namespace A335324.P12641586174237596728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053165 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A335324.P12641586174237596728

noncomputable section

/-- A335324: Square part of 4th-power-free part of n.

Offset 1, canonical program `A335324.P12641586174237596728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A053165, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335324 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335324.P12641586174237596728.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A053165, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337290.P12355850104571192112

`A020899(eq[1, A020899(n+2)-A020899(n+1)]+1)`
-/

namespace A337290.P12355850104571192112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 2) - A020899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A337290.P12355850104571192112

noncomputable section

/-- A337290: Numbers k such that both k and k+1 are in A020899.

Offset 1, canonical program `A337290.P12355850104571192112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4471 terms. -/
def A337290 (n : ℕ) : ℤ :=
  A337290.P12355850104571192112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4471 terms. -/
def A337290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342004.P9799116110550622350

`C(2, A328311(n+1)+2)`
-/

namespace A342004.P9799116110550622350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A328311 (n + 1) + 2).toNat

end

end A342004.P9799116110550622350

noncomputable section

/-- A342004: a(n) = 1 if the maximal exponent in the prime factorization of the arithmetic derivative of n (A003415) is less than the maximal exponent in n, otherwise 0. a(1) = 1 by convention.

Offset 1, canonical program `A342004.P9799116110550622350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004 (n : ℕ) : ℤ :=
  (A342004.P9799116110550622350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342919.P5264942135803517066

`A342001(n+1)/A342459(n+1)`
-/

namespace A342919.P5264942135803517066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (A342459 (n + 1) : ℚ)

end

end A342919.P5264942135803517066

noncomputable section

/-- A342919: a(n) = A003415(n) / gcd(A001615(n), A003415(n)), where A001615 is Dedekind psi, and A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A342919.P5264942135803517066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A342459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342919 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342919.P5264942135803517066.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A342459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343227.P12175328120246538268

`A000203(n+1)/A343226(n+1)`
-/

namespace A343227.P12175328120246538268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P12175328120246538268

noncomputable section

/-- A343227: a(n) = sigma(n) / gcd(sigma(n), n+A003415(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A343227.P12175328120246538268`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A343227.P12175328120246538268.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A343227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344026.P2062845825652012812

`A003415(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344026.P2062845825652012812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005940 (1 + n)).toNat

end

end A344026.P2062845825652012812

noncomputable section

/-- A344026: Arithmetic derivative applied to the Doudna sequence: a(n) = A003415(A005940(1+n)).

Offset 0, canonical program `A344026.P2062845825652012812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344026 (n : ℕ) : ℤ :=
  A344026.P2062845825652012812.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344026.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A345049.P10676505459348622812

`A173557(n+1)*A345001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345049.P10676505459348622812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A345001 (n + 1)

end

end A345049.P10676505459348622812

noncomputable section

/-- A345049: a(n) = A173557(n) * A345001(n).

Offset 1, canonical program `A345049.P10676505459348622812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A345001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345049 (n : ℕ) : ℤ :=
  A345049.P10676505459348622812.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A345001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345059.P15757506483102927457

`A129283(n+1)/A343226(n+1)`
-/

namespace A345059.P15757506483102927457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A345059.P15757506483102927457

noncomputable section

/-- A345059: a(n) = A129283(n) / gcd(sigma(n), A129283(n)), where A129283(n) is the sum of n and its arithmetic derivative.

Offset 1, canonical program `A345059.P15757506483102927457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129283, A343226, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345059.P15757506483102927457.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129283, A343226, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348076.P15700061850166642476

`A187039(eq[1, A187039(n+2)-A187039(n+1)]+1)`
-/

namespace A348076.P15700061850166642476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 2) - A187039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348076.P15700061850166642476

noncomputable section

/-- A348076: Number k such that k and k+1 both have an equal number of even and odd exponents in their prime factorization (A187039).

Offset 1, canonical program `A348076.P15700061850166642476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A348076 (n : ℕ) : ℤ :=
  A348076.P15700061850166642476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A348076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348498.P5884788677903140983

`gcd(A342001(n+1), A347129(n+1))`
-/

namespace A348498.P5884788677903140983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342001 (n + 1)) (A347129 (n + 1))

end

end A348498.P5884788677903140983

noncomputable section

/-- A348498: a(n) = gcd(A003415(n), A347130(n)) / A003557(n), where A003415 is the arithmetic derivative and A347130 is its Dirichlet convolution with the identity function.

Offset 1, canonical program `A348498.P5884788677903140983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A347129, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348498 (n : ℕ) : ℤ :=
  (A348498.P5884788677903140983.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A347129, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348498.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351571.P11125740512606955591

`A003415(A351569(n+1))`
-/

namespace A351571.P11125740512606955591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A351569 (n + 1)).toNat

end

end A351571.P11125740512606955591

noncomputable section

/-- A351571: Arithmetic derivative of the sum of the divisors of the largest unitary divisor of n that is an exponentially odd number.

Offset 1, canonical program `A351571.P11125740512606955591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A351569, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351571 (n : ℕ) : ℤ :=
  A351571.P11125740512606955591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A351569, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351575.P6993377615906811371

`eq[1, A351570(n+1)]+1`
-/

namespace A351575.P6993377615906811371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A351575.P6993377615906811371

noncomputable section

/-- A351575: Positions of primes in A351568.

Offset 1, canonical program `A351575.P6993377615906811371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351575 (n : ℕ) : ℤ :=
  (A351575.P6993377615906811371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360110.P1200029964072972346

`record[(n+1)*A360109(n+1)]`
-/

namespace A360110.P1200029964072972346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360110.P1200029964072972346

noncomputable section

/-- A360110: Nonmultiples of 4 whose arithmetic derivative is a multiple of 4.

Offset 1, canonical program `A360110.P1200029964072972346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360110 (n : ℕ) : ℤ :=
  A360110.P1200029964072972346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360122.P9404621498929135355

`A347963(n+1)%2`
-/

namespace A360122.P9404621498929135355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347963 (n + 1)) 2

end

end A360122.P9404621498929135355

noncomputable section

/-- A360122: Parity of A360121, where A360121 is Dirichlet convolution of A342001 with A342002.

Offset 1, canonical program `A360122.P9404621498929135355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360122 (n : ℕ) : ℤ :=
  A360122.P9404621498929135355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360721.P14900398492844089108

`A095683((n+1)*A053165(n+1))`
-/

namespace A360721.P14900398492844089108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 ((n + 1 : ℤ) * A053165 (n + 1)).toNat

end

end A360721.P14900398492844089108

noncomputable section

/-- A360721: a(n) is the number of infinitary divisors of n that are powerful (A001694).

Offset 1, canonical program `A360721.P14900398492844089108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A360721 (n : ℕ) : ℤ :=
  A360721.P14900398492844089108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A360721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365401.P6488308132055047037

`A000005(n+1)/A365402(n+1)`
-/

namespace A365401.P6488308132055047037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A365402 (n + 1) : ℚ)

end

end A365401.P6488308132055047037

noncomputable section

/-- A365401: The number of divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A365401.P6488308132055047037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A365402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365401 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365401.P6488308132055047037.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A365402, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365632.P6636790932743859901

`∑{d}[n+1, A359552(#)]`
-/

namespace A365632.P6636790932743859901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359552 d

end

end A365632.P6636790932743859901

noncomputable section

/-- A365632: The number of divisors of n that are terms of A072873.

Offset 1, canonical program `A365632.P6636790932743859901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365632 (n : ℕ) : ℤ :=
  A365632.P6636790932743859901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366801.P8669775455614987768

`A342001(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366801.P8669775455614987768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A005940 (1 + n)).toNat

end

end A366801.P8669775455614987768

noncomputable section

/-- A366801: Arithmetic derivative without its inherited divisor applied to the Doudna sequence: a(n) = A342001(A005940(1+n)).

Offset 0, canonical program `A366801.P8669775455614987768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366801 (n : ℕ) : ℤ :=
  A366801.P8669775455614987768.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366801.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368883.P5151374445955228630

`A061389(A053165(n+1))`
-/

namespace A368883.P5151374445955228630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A053165 (n + 1)).toNat

end

end A368883.P5151374445955228630

noncomputable section

/-- A368883: The number of infinitary divisors of n that are cubefree.

Offset 1, canonical program `A368883.P5151374445955228630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883 (n : ℕ) : ℤ :=
  A368883.P5151374445955228630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368922.P14212543227731437935

`A368921(n)-A068346(n)`
-/

namespace A368922.P14212543227731437935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368921 n - A068346 n

end

end A368922.P14212543227731437935

noncomputable section

/-- A368922: a(n) = n' - n''*2, where n' is the arithmetic derivative of n, A003415(n) and n'' is the second arithmetic derivative, A068346(n).

Offset 0, canonical program `A368922.P14212543227731437935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068346, A368921, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368922 (n : ℕ) : ℤ :=
  A368922.P14212543227731437935.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068346, A368921, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368997.P2323535588264354679

`A035263(n+1)*A358680(n+1)`
-/

namespace A368997.P2323535588264354679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A358680 (n + 1)

end

end A368997.P2323535588264354679

noncomputable section

/-- A368997: a(n) = 1 if A342001(n) is even, otherwise 0.

Offset 1, canonical program `A368997.P2323535588264354679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368997 (n : ℕ) : ℤ :=
  A368997.P2323535588264354679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358680, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369659.P4114768482975404549

`eq[1, A369658(n)]`
-/

namespace A369659.P4114768482975404549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369659.P4114768482975404549

noncomputable section

/-- A369659: Non-multiples of 3 whose arithmetic derivative, or equally, the sum of prime factors (with multiplicity) is a multiple of 3.

Offset 1, canonical program `A369659.P4114768482975404549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369659 (n : ℕ) : ℤ :=
  (A369659.P4114768482975404549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370118.P17328300749575721600

`A079978(A369669(n))`
-/

namespace A370118.P17328300749575721600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A369669 n).toNat

end

end A370118.P17328300749575721600

noncomputable section

/-- A370118: a(n) = 1 if the arithmetic derivative of n is a multiple of 9, otherwise 0.

Offset 0, canonical program `A370118.P17328300749575721600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370118 (n : ℕ) : ℤ :=
  A370118.P17328300749575721600.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370123.P8428876455859098462

`eq[1, A370122(n)]`
-/

namespace A370123.P8428876455859098462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370123.P8428876455859098462

noncomputable section

/-- A370123: Numbers whose second arithmetic derivative (A068346) is a multiple of 3.

Offset 1, canonical program `A370123.P8428876455859098462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370123 (n : ℕ) : ℤ :=
  (A370123.P8428876455859098462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370598.P3615362313586893228

`abs(A166234(n+1))`
-/

namespace A370598.P3615362313586893228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166234 (n + 1)|

end

end A370598.P3615362313586893228

noncomputable section

/-- A370598: Characteristic function of exponentially squarefree numbers (A209061).

Offset 1, canonical program `A370598.P3615362313586893228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370598 (n : ℕ) : ℤ :=
  A370598.P3615362313586893228.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370598.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373144.P16197007913121420560

`record[(n+1)*A373143(n+1)]`
-/

namespace A373144.P16197007913121420560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373144.P16197007913121420560

noncomputable section

/-- A373144: Numbers k such that both A003415(k) and A276085(k) are multiples of 3, where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

Offset 1, canonical program `A373144.P16197007913121420560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373144 (n : ℕ) : ℤ :=
  A373144.P16197007913121420560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373372.P1234123365246061466

`A373371(n+1)*A372573(n+1)`
-/

namespace A373372.P1234123365246061466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A372573 (n + 1)

end

end A373372.P1234123365246061466

noncomputable section

/-- A373372: a(n) = 1 if A001414(n) and A276085(n) are both multiples of 3, otherwise 0, where A001414 is the sum of prime factors with repetition and A276085 is the primorial base log-function.

Offset 1, canonical program `A373372.P1234123365246061466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373372 (n : ℕ) : ℤ :=
  A373372.P1234123365246061466.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372573, A373371, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373472.P17598235069966866873

`A373371(n+1)*A373975(n+1)`
-/

namespace A373472.P17598235069966866873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (n + 1) * A373975 (n + 1)

end

end A373472.P17598235069966866873

noncomputable section

/-- A373472: a(n) = 1 if A001414(n) and A059975(n) are both multiples of 3, otherwise 0, where A001414 and A059975 are fully additive with a(p) = p and a(p) = p-1, respectively.

Offset 1, canonical program `A373472.P17598235069966866873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373472 (n : ℕ) : ℤ :=
  A373472.P17598235069966866873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373478.P4147642878322058632

`record[(n+1)*A373477(n+1)]`
-/

namespace A373478.P4147642878322058632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373478.P4147642878322058632

noncomputable section

/-- A373478: Numbers k such that A001414(k) and A003415(k) are both multiples of 3, where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373478.P4147642878322058632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373478 (n : ℕ) : ℤ :=
  A373478.P4147642878322058632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373482.P4247517866636361981

`eq[1, A373481(n+1)]+1`
-/

namespace A373482.P4247517866636361981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373482.P4247517866636361981

noncomputable section

/-- A373482: Numbers k for which A003415(k) is a multiple of A001414(k), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 1, canonical program `A373482.P4247517866636361981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373482 (n : ℕ) : ℤ :=
  (A373482.P4247517866636361981.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374041.P2899875229044144379

`A373143(A065331(n+1))`
-/

namespace A374041.P2899875229044144379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373143 (A065331 (n + 1)).toNat

end

end A374041.P2899875229044144379

noncomputable section

/-- A374041: a(n) = 1 if A276085(n) and A328768(n) are both multiples of 3, otherwise 0, where A276085 is the primorial base log-function, and A328768 is the first primorial based variant of arithmetic derivative.

Offset 1, canonical program `A374041.P2899875229044144379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374041 (n : ℕ) : ℤ :=
  A374041.P2899875229044144379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384555.P15004222589011881551

`A053165((n+1)/A062378(A053165(n+1)))`
-/

namespace A384555.P15004222589011881551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (A053165 (n + 1)).toNat : ℚ))).toNat

end

end A384555.P15004222589011881551

noncomputable section

/-- A384555: The largest infinitary divisor of n that is cubefree.

Offset 1, canonical program `A384555.P15004222589011881551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384555 (n : ℕ) : ℤ :=
  A384555.P15004222589011881551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385007.P2853750131647033924

`A053165((n+1)/A062379(A003557(n+1)))`
-/

namespace A385007.P2853750131647033924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062379 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A385007.P2853750131647033924

noncomputable section

/-- A385007: The largest unitary divisor of n that is a biquadratefree number (A046100).

Offset 1, canonical program `A385007.P2853750131647033924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385007 (n : ℕ) : ℤ :=
  A385007.P2853750131647033924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395042.P702826538726688441

`A006530(A003415(n+2))`
-/

namespace A395042.P702826538726688441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003415 (n + 2)).toNat

end

end A395042.P702826538726688441

noncomputable section

/-- A395042: Greatest prime dividing arithmetic derivative of n; and for primes p, a(p)=1.

Offset 2, canonical program `A395042.P702826538726688441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395042 (n : ℕ) : ℤ :=
  A395042.P702826538726688441.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A395042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231480.P6782408155422875025

`eq[A038548(n+1), A347954(A037477(n)+1)]+1`
-/

namespace A231480.P6782408155422875025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347954 (A037477 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A231480.P6782408155422875025

noncomputable section

/-- A231480: Primes whose base-8 representation is also the base-9 representation of a prime.

Offset 1, canonical program `A231480.P6782408155422875025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A231480 (n : ℕ) : ℤ :=
  (A231480.P6782408155422875025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A231480.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A241859.P6128019901053988530

`A003415(A157037(n+1))`
-/

namespace A241859.P6128019901053988530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A157037 (n + 1)).toNat

end

end A241859.P6128019901053988530

noncomputable section

/-- A241859: 1st arithmetic derivative of numbers with prime arithmetic derivative (A157037).

Offset 1, canonical program `A241859.P6128019901053988530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A157037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A241859 (n : ℕ) : ℤ :=
  A241859.P6128019901053988530.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A157037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A241859.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A242356.P3750787784098302169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4130 terms. -/
def A242356 (n : ℕ) : ℤ :=
  (A242356.P3750787784098302169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4130 terms. -/
def A242356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256673.P18348728144748040292

`A157037(eq[1, A157037(n+1)%2]+1)`
-/

namespace A256673.P18348728144748040292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157037 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A256673.P18348728144748040292

noncomputable section

/-- A256673: Odd numbers with prime arithmetic derivative A003415.

Offset 1, canonical program `A256673.P18348728144748040292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4322 terms. -/
def A256673 (n : ℕ) : ℤ :=
  A256673.P18348728144748040292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4322 terms. -/
def A256673.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A324909.P7075313633679390802

`sqrt(A324899(n+1))`
-/

namespace A324909.P7075313633679390802
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A324899 (n + 1) : ℝ)

end

end A324909.P7075313633679390802

noncomputable section

/-- A324909: Odd numbers k for which sigma(k^2) == 3 (mod 4).

Offset 1, canonical program `A324909.P7075313633679390802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324909.P7075313633679390802.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334940.P16965108380832837690

`2*A072613(n+1)+A000720(floor(sqrt(n+1)))`
-/

namespace A334940.P16965108380832837690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072613 (n + 1) + A000720 (Nat.sqrt (n + 1))

end

end A334940.P16965108380832837690

noncomputable section

/-- A334940: Partial sums of A230595.

Offset 1, canonical program `A334940.P16965108380832837690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334940 (n : ℕ) : ℤ :=
  A334940.P16965108380832837690.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072613, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334940.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341994.P3917476089229171294

`char[A328234(n+1)]`
-/

namespace A341994.P3917476089229171294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A341994.P3917476089229171294

noncomputable section

/-- A341994: a(n) = 1 if the arithmetic derivative (A003415) of n is a squarefree number (A005117) > 1, otherwise 0.

Offset 0, canonical program `A341994.P3917476089229171294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341994 (n : ℕ) : ℤ :=
  (A341994.P3917476089229171294.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342413.P5834518652712506782

`A003557(n+1)*A342416(n+1)`
-/

namespace A342413.P5834518652712506782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A342416 (n + 1)

end

end A342413.P5834518652712506782

noncomputable section

/-- A342413: a(n) = gcd(phi(n), A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

Offset 1, canonical program `A342413.P5834518652712506782`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A342416, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342413 (n : ℕ) : ℤ :=
  A342413.P5834518652712506782.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A342416, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342413.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342414.P18241024431258092632

`A342001(n+1)/A342416(n+1)`
-/

namespace A342414.P18241024431258092632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (A342416 (n + 1) : ℚ)

end

end A342414.P18241024431258092632

noncomputable section

/-- A342414: a(n) = A003415(n) / gcd(phi(n),A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

Offset 1, canonical program `A342414.P18241024431258092632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A342416, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342414 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342414.P18241024431258092632.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A342416, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344999.P2387045970330033826

`A048250(n+1)*A345001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344999.P2387045970330033826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) * A345001 (n + 1)

end

end A344999.P2387045970330033826

noncomputable section

/-- A344999: a(n) = A048250(n) * A345001(n).

Offset 1, canonical program `A344999.P2387045970330033826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A345001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344999 (n : ℕ) : ℤ :=
  A344999.P2387045970330033826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A345001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356192.P13274736950238569619

`(n+1)*A365298(n+1)`
-/

namespace A356192.P13274736950238569619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A365298 (n + 1)

end

end A356192.P13274736950238569619

noncomputable section

/-- A356192: a(n) is the smallest cubefull exponentially odd number (A335988) that is divisible by n.

Offset 1, canonical program `A356192.P13274736950238569619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356192 (n : ℕ) : ℤ :=
  A356192.P13274736950238569619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369458.P12459843309324393945

`A369465(A163511(n))`
-/

namespace A369458.P12459843309324393945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369465 (A163511 n).toNat

end

end A369458.P12459843309324393945

noncomputable section

/-- A369458: Arithmetic derivative of the odd part of n, permuted by A163511 ("Doudna-sequence mirrored").

Offset 0, canonical program `A369458.P12459843309324393945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A369465, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369458 (n : ℕ) : ℤ :=
  A369458.P12459843309324393945.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A369465, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369661.P6932080721654598006

`filter[A327862(n+1), A369660(#)]`
-/

namespace A369661.P6932080721654598006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369660 (f1 j).toNat = 1) n)

end

end A369661.P6932080721654598006

noncomputable section

/-- A369661: Numbers k whose arithmetic derivative k' is of the form 4m+2, and k' has an even number of prime factors.

Offset 1, canonical program `A369661.P6932080721654598006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5138 terms. -/
def A369661 (n : ℕ) : ℤ :=
  A369661.P6932080721654598006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5138 terms. -/
def A369661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369969.P5250580287867848151

`filter[A327865(n+1), A011558(#)]`
-/

namespace A369969.P5250580287867848151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A369969.P5250580287867848151

noncomputable section

/-- A369969: Numbers that are not multiples of 5, but their arithmetic derivative is.

Offset 1, canonical program `A369969.P5250580287867848151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7884 terms. -/
def A369969 (n : ℕ) : ℤ :=
  A369969.P5250580287867848151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7884 terms. -/
def A369969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381588.P6316090729294100752

`A005361(n+1)*A083346(n+1)`
-/

namespace A381588.P6316090729294100752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A083346 (n + 1)

end

end A381588.P6316090729294100752

noncomputable section

/-- A381588: If n = Product (p_j^k_j) then a(n) = Product (lcm(p_j, k_j)), with a(1) = 1.

Offset 1, canonical program `A381588.P6316090729294100752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381588 (n : ℕ) : ℤ :=
  A381588.P6316090729294100752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381588.provenance : SequenceMachineLib.Provenance := .conjectured

