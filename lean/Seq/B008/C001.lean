import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B007.C000
import Seq.B007.C001

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

/-! ## A209293.P16549262265327354364

`A209279(n+1)+A057944(n)`
-/

namespace A209293.P16549262265327354364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) + A057944 n

end

end A209293.P16549262265327354364

noncomputable section

/-- A209293: Inverse permutation of A185180.

Offset 1, canonical program `A209293.P16549262265327354364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A209293 (n : ℕ) : ℤ :=
  A209293.P16549262265327354364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A209293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211161.P13877356950491930230

`A209279(n+1)-A142150(A025581(n))`
-/

namespace A211161.P13877356950491930230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) - A142150 (A025581 n).toNat

end

end A211161.P13877356950491930230

noncomputable section

/-- A211161: Table T(n,k) = n, if k is odd, k/2 if k is even; n, k > 0, read by antidiagonals.

Offset 1, canonical program `A211161.P13877356950491930230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211161 (n : ℕ) : ℤ :=
  A211161.P13877356950491930230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213500.P10415559373979276509

`A104633(n+1)+A000292(A025581(n))`
-/

namespace A213500.P10415559373979276509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A000292 (A025581 n).toNat

end

end A213500.P10415559373979276509

noncomputable section

/-- A213500: Rectangular array T(n,k): (row n) = b**c, where b(h) = h, c(h) = h + n - 1, n >= 1, h >= 1, and ** = convolution.

Offset 1, canonical program `A213500.P10415559373979276509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213500 (n : ℕ) : ℤ :=
  A213500.P10415559373979276509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219615.P15093587587077422900

`∑[A219531(A028310(n)-1)]`
-/

namespace A219615.P15093587587077422900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219615.P15093587587077422900

noncomputable section

/-- A219615: a(n) = Sum_{k=0..12} binomial(n,k).

Offset 0, canonical program `A219615.P15093587587077422900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219615 (n : ℕ) : ℤ :=
  A219615.P15093587587077422900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219615.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268525.P2139929128977456135

`A073061(4*n)+a(n-1)` with `a(0)=1`
-/

namespace A268525.P2139929128977456135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073061 (4 * n) + a (n - 1)

end

end A268525.P2139929128977456135

noncomputable section

/-- A268525: a(n) = r*a(ceiling(n/2))+s*a(floor(n/2)) with a(1)=1 and (r,s)=(2,3).

Offset 1, canonical program `A268525.P2139929128977456135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A268525 (n : ℕ) : ℤ :=
  A268525.P2139929128977456135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A268525.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A330175.P16793899005492460367

`A321371(n+1)+1+n`
-/

namespace A330175.P16793899005492460367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321371 (n + 1) + 1 + (n : ℤ)

end

end A330175.P16793899005492460367

noncomputable section

/-- A330175: a(n) = n + floor(ns/r) + floor(nt/r), where r = sqrt(5) - 2, s = sqrt(5) - 1, t = sqrt(5).

Offset 1, canonical program `A330175.P16793899005492460367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330175 (n : ℕ) : ℤ :=
  A330175.P16793899005492460367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330175.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358678.P18239229635933163516

`A354037(A341522(n))`
-/

namespace A358678.P18239229635933163516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354037 (A341522 n).toNat

end

end A358678.P18239229635933163516

noncomputable section

/-- A358678: a(n) = 1 if n is odd and sigma(n) == 2 mod 4, otherwise 0.

Offset 1, canonical program `A358678.P18239229635933163516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358678 (n : ℕ) : ℤ :=
  A358678.P18239229635933163516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358678.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375325.P4910902372028041489

`∑{d}[n+1, A353816(#)]`
-/

namespace A375325.P4910902372028041489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353816 d

end

end A375325.P4910902372028041489

noncomputable section

/-- A375325: a(n) is the number of divisors of n which are Loeschian numbers (A003136).

Offset 1, canonical program `A375325.P4910902372028041489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375325 (n : ℕ) : ℤ :=
  A375325.P4910902372028041489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375325.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390690.P17610099573045072712

`∑{d}[n+1, #*A353816(#)]`
-/

namespace A390690.P17610099573045072712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A353816 d

end

end A390690.P17610099573045072712

noncomputable section

/-- A390690: The sum of the divisors of n that are Loeschian numbers (A003136).

Offset 1, canonical program `A390690.P17610099573045072712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390690 (n : ℕ) : ℤ :=
  A390690.P17610099573045072712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397100.P2153576112342565242

`A007814(n+1)-A396409(n)`
-/

namespace A397100.P2153576112342565242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A396409 n

end

end A397100.P2153576112342565242

noncomputable section

/-- A397100: a(n) is the number of steps by which n's trajectory under f is ahead of 0's; i.e., f^k(0) = f^(k-a(n))(n) for all sufficiently large k, where f(n) = n XOR 2^A000120(n).

Offset 0, canonical program `A397100.P2153576112342565242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100 (n : ℕ) : ℤ :=
  A397100.P2153576112342565242.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397100.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A227854.P8575566533649913162

`filter[A014612(n+1), A353816(#)]`
-/

namespace A227854.P8575566533649913162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A227854.P8575566533649913162

noncomputable section

/-- A227854: Loeschian 3-almost primes: numbers with exactly three prime factors (with multiplicity) and of the form x^2 + x*y + y^2.

Offset 1, canonical program `A227854.P8575566533649913162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1753 terms. -/
def A227854 (n : ℕ) : ℤ :=
  A227854.P8575566533649913162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1753 terms. -/
def A227854.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A233295.P11776928920388201262

`A059268(n)*A125165(n)`
-/

namespace A233295.P11776928920388201262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A125165 n

end

end A233295.P11776928920388201262

noncomputable section

/-- A233295: Riordan array ((1+x)/(1-x)^3, 2*x/(1-x)).

Offset 0, canonical program `A233295.P11776928920388201262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233295 (n : ℕ) : ℤ :=
  A233295.P11776928920388201262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242224.P7022419707306435246

`(A050873(n+1)+2)*A051537(n+1)`
-/

namespace A242224.P7022419707306435246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050873 (n + 1) + 2) * A051537 (n + 1)

end

end A242224.P7022419707306435246

noncomputable section

/-- A242224: Triangular array T read by rows, T(n, k) = n*k*(gcd(n,k)+2)/gcd(n,k)^2.

Offset 1, canonical program `A242224.P7022419707306435246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A242224 (n : ℕ) : ℤ :=
  A242224.P7022419707306435246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A242224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246507.P17824389023818354113

`A078817(A000096(n+3)+5)`
-/

namespace A246507.P17824389023818354113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078817 (A000096 (n + 3) + 5).toNat

end

end A246507.P17824389023818354113

noncomputable section

/-- A246507: a(n) = 70*(n+1)*binomial(2*n+1,n+1)/(n+5).

Offset 0, canonical program `A246507.P17824389023818354113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A246507 (n : ℕ) : ℤ :=
  A246507.P17824389023818354113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A246507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247899.P5216710372688080822

`Δ[A247679(n+1)]`
-/

namespace A247899.P5216710372688080822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247899.P5216710372688080822

noncomputable section

/-- A247899: First differences of A247679.

Offset 1, canonical program `A247899.P5216710372688080822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247899 (n : ℕ) : ℤ :=
  A247899.P5216710372688080822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247901.P13824052714345523076

`Δ[A247682(n+1)]`
-/

namespace A247901.P13824052714345523076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247901.P13824052714345523076

noncomputable section

/-- A247901: First differences of A247682.

Offset 1, canonical program `A247901.P13824052714345523076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247901 (n : ℕ) : ℤ :=
  A247901.P13824052714345523076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247902.P16639021086398748878

`Δ[A247683(n+1)]`
-/

namespace A247902.P16639021086398748878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247902.P16639021086398748878

noncomputable section

/-- A247902: First differences of A247683.

Offset 1, canonical program `A247902.P16639021086398748878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247902 (n : ℕ) : ℤ :=
  A247902.P16639021086398748878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256098.P9109279517395957021

`A054531(record[A056023(n+1)])`
-/

namespace A256098.P9109279517395957021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A256098.P9109279517395957021

noncomputable section

/-- A256098: Denominators for the numerators A256097.

Offset 1, canonical program `A256098.P9109279517395957021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A256098 (n : ℕ) : ℤ :=
  A256098.P9109279517395957021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A256098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256288.P13224695341683646574

`7*n*A256287(n)`
-/

namespace A256288.P13224695341683646574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℤ) * A256287 n)

end

end A256288.P13224695341683646574

noncomputable section

/-- A256288: Sum of all the parts in the partitions of 7n into 7 parts.

Offset 0, canonical program `A256288.P13224695341683646574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256288 (n : ℕ) : ℤ :=
  A256288.P13224695341683646574.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256287, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256288.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A261228.P3051602998305982951

`A261227(n+1)-1`
-/

namespace A261228.P3051602998305982951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 (n + 1) - 1

end

end A261228.P3051602998305982951

noncomputable section

/-- A261228: a(n) = number of steps to reach 0 when starting from k = (n^3)-1 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 1, canonical program `A261228.P3051602998305982951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A261228 (n : ℕ) : ℤ :=
  A261228.P3051602998305982951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A261228.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A267864.P5040665294763150187

`A225975(2*A054531(n+1))`
-/

namespace A267864.P5040665294763150187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (2 * A054531 (n + 1)).toNat

end

end A267864.P5040665294763150187

noncomputable section

/-- A267864: Denominator triangle for A267863: T(n, k) = denominator((n - 2*k)/(2*n)), n >= 1, k = 1, ..., n.

Offset 1, canonical program `A267864.P5040665294763150187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267864 (n : ℕ) : ℤ :=
  A267864.P5040665294763150187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267864.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A271183.P13519153737086807592

`eq[1, A353816(A353816(n)+n)]`
-/

namespace A271183.P13519153737086807592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 (A353816 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271183.P13519153737086807592

noncomputable section

/-- A271183: Löschian numbers (A003136) k such that k + 1 is also Löschian number.

Offset 1, canonical program `A271183.P13519153737086807592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1128 terms. -/
def A271183 (n : ℕ) : ℤ :=
  (A271183.P13519153737086807592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1128 terms. -/
def A271183.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A272933.P1769940145584880595

`lt[and(2, n), A353816(n)]`
-/

namespace A272933.P1769940145584880595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272933.P1769940145584880595

noncomputable section

/-- A272933: Numbers of the form x^2 + 12*y^2.

Offset 1, canonical program `A272933.P1769940145584880595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6625 terms. -/
def A272933 (n : ℕ) : ℤ :=
  (A272933.P1769940145584880595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6625 terms. -/
def A272933.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A276611.P18078078065825971557

`∑[char[A261227(n+1)]]`
-/

namespace A276611.P18078078065825971557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276611.P18078078065825971557

noncomputable section

/-- A276611: After a(0)=0, each n occurs A261229(n) times.

Offset 0, canonical program `A276611.P18078078065825971557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276611 (n : ℕ) : ℤ :=
  (A276611.P18078078065825971557.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277227.P5944869305107030698

`A054531((2*n)%(n+1)+1)`
-/

namespace A277227.P5944869305107030698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (2 * n % (n + 1) + 1)

end

end A277227.P5944869305107030698

noncomputable section

/-- A277227: Triangular array T read by rows: T(n,k) gives the additive orders k modulo n, for k = 0,1, ..., n-1.

Offset 1, canonical program `A277227.P5944869305107030698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277227 (n : ℕ) : ℤ :=
  A277227.P5944869305107030698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277227.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307414.P5147274626846036237

`eq[A014285(n+1), A306834(n+1)]+1`
-/

namespace A307414.P5147274626846036237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306834 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A307414.P5147274626846036237

noncomputable section

/-- A307414: Numbers k such that A014285(k) and A007504(k) are coprime.

Offset 1, canonical program `A307414.P5147274626846036237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6095 terms. -/
def A307414 (n : ℕ) : ℤ :=
  (A307414.P5147274626846036237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6095 terms. -/
def A307414.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A309036.P9727514450623830631

`A014285(n+1)/A306834(n+1)`
-/

namespace A309036.P9727514450623830631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014285 (n + 1) : ℚ) / (A306834 (n + 1) : ℚ)

end

end A309036.P9727514450623830631

noncomputable section

/-- A309036: a(n) = gcd(A007504(n), A014285(n)).

Offset 1, canonical program `A309036.P9727514450623830631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014285, A306834, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309036 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309036.P9727514450623830631.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014285, A306834, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A309036.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A331895.P17148082181447596485

`∩[A048700(n+1), A331893(n+1)]`
-/

namespace A331895.P17148082181447596485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331895.P17148082181447596485

noncomputable section

/-- A331895: Positive numbers k such that the binary and negabinary representations of k and the negabinary representation of -k are all palindromic.

Offset 1, canonical program `A331895.P17148082181447596485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A331895 (n : ℕ) : ℤ :=
  (A331895.P17148082181447596485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A331895.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A333215.P5189667732100044682

`Δ[A258026(abs(1-n)+1)%(12*n+1)]`
-/

namespace A333215.P5189667732100044682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258026 (|1 - (n : ℤ)| + 1).toNat) (12 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333215.P5189667732100044682

noncomputable section

/-- A333215: Lengths of maximal weakly increasing subsequences in the sequence of prime gaps (A001223).

Offset 1, canonical program `A333215.P5189667732100044682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333215 (n : ℕ) : ℤ :=
  A333215.P5189667732100044682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333215.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A336696.P16964923931363861030

`∑{d}[A332459(n+1), #]`
-/

namespace A336696.P16964923931363861030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A336696.P16964923931363861030

noncomputable section

/-- A336696: Sum of odd divisors of 1+sigma(n).

Offset 1, canonical program `A336696.P16964923931363861030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336696 (n : ℕ) : ℤ :=
  (A336696.P16964923931363861030.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336696.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A349317.P2877834298764922178

`1-A054521(n+1)`
-/

namespace A349317.P2877834298764922178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054521 (n + 1)

end

end A349317.P2877834298764922178

noncomputable section

/-- A349317: Triangle T(n,k): T(n,k) = 1 if gcd(n, k) > 1, else 0.

Offset 1, canonical program `A349317.P2877834298764922178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349317 (n : ℕ) : ℤ :=
  A349317.P2877834298764922178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349317.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354838.P10597548136551311115

`∑[A138342(n+1)]/A076775(n+1)`
-/

namespace A354838.P10597548136551311115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A076775 (n + 1) : ℚ)

end

end A354838.P10597548136551311115

noncomputable section

/-- A354838: For n >= 1, a(n) = A007088(n)/gcd(n, A007088(n)).

Offset 1, canonical program `A354838.P10597548136551311115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354838.P10597548136551311115.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354838.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A357073.P14172131428776894142

`∑[A129761(n)]%(n+1)`
-/

namespace A357073.P14172131428776894142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A357073.P14172131428776894142

noncomputable section

/-- A357073: For n >= 1, a(n) = A003714(n) mod n.

Offset 1, canonical program `A357073.P14172131428776894142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357073 (n : ℕ) : ℤ :=
  A357073.P14172131428776894142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357111.P15741096504218641398

`(n+1)/A076775(n+1)`
-/

namespace A357111.P15741096504218641398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A076775 (n + 1) : ℚ)

end

end A357111.P15741096504218641398

noncomputable section

/-- A357111: For n >= 1, a(n) = n / A076775(n).

Offset 1, canonical program `A357111.P15741096504218641398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357111 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357111.P15741096504218641398.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358531.P7250430587380128327

`A258026(n+1)+2`
-/

namespace A358531.P7250430587380128327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1) + 2

end

end A358531.P7250430587380128327

noncomputable section

/-- A358531: Indices of the primes in A358530.

Offset 1, canonical program `A358531.P7250430587380128327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531 (n : ℕ) : ℤ :=
  A358531.P7250430587380128327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A389199.P2572344504919042834

`filter[A389197(n+1), A353814(#)]`
-/

namespace A389199.P2572344504919042834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389199.P2572344504919042834

noncomputable section

/-- A389199: Numbers whose sum of squarefree divisors (A048250) is congruent to 2 modulo 4.

Offset 1, canonical program `A389199.P2572344504919042834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9835 terms. -/
def A389199 (n : ℕ) : ℤ :=
  A389199.P2572344504919042834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9835 terms. -/
def A389199.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A224921.P7973326342640336391

`A063468(A028310(n))/2`
-/

namespace A224921.P7973326342640336391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063468 (A028310 n).toNat : ℚ) / 2

end

end A224921.P7973326342640336391

noncomputable section

/-- A224921: Number of Pythagorean triples (a, b, c) with a^2 + b^2 = c^2 and 0 < a < b < c < n.

Offset 1, canonical program `A224921.P7973326342640336391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224921 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A224921.P7973326342640336391.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227945.P11162813114022877264

`A098378(A132740(n+1))`
-/

namespace A227945.P11162813114022877264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (A132740 (n + 1)).toNat

end

end A227945.P11162813114022877264

noncomputable section

/-- A227945: Smallest possible number of nonzero digits in a positive multiple of n.

Offset 1, canonical program `A227945.P11162813114022877264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A227945 (n : ℕ) : ℤ :=
  A227945.P11162813114022877264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A227945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234099.P9052992037013079274

`(A046389(n+1)-1)/2`
-/

namespace A234099.P9052992037013079274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046389 (n + 1) - 1 : ℚ) / 2

end

end A234099.P9052992037013079274

noncomputable section

/-- A234099: Integers of the form (p*q*r - 1)/2, where p, q, r are distinct primes.

Offset 1, canonical program `A234099.P9052992037013079274`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A234099.P9052992037013079274.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A234100.P10458591407678790924

`2*p?[floor(A046389(n+2)/2)]+1`
-/

namespace A234100.P10458591407678790924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046389 (n + 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A234100.P10458591407678790924

noncomputable section

/-- A234100: Products p*q*r of distinct primes for which (p*q*r - 1)/2 is prime.

Offset 1, canonical program `A234100.P10458591407678790924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A234100 (n : ℕ) : ℤ :=
  A234100.P10458591407678790924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A234100.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A244414.P2578077897269637691

`gcd(n+1, A373397(n+1))`
-/

namespace A244414.P2578077897269637691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A373397 (n + 1))

end

end A244414.P2578077897269637691

noncomputable section

/-- A244414: Remove highest power of 6 from n.

Offset 1, canonical program `A244414.P2578077897269637691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244414 (n : ℕ) : ℤ :=
  (A244414.P2578077897269637691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244414.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A248649.P2251139896662346655

`filter[A274044(n+2), A373975(#)]`
-/

namespace A248649.P2251139896662346655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A248649.P2251139896662346655

noncomputable section

/-- A248649: Numbers n that are the product of three distinct primes such that x^2+y^2 = n has integer solutions.

Offset 1, canonical program `A248649.P2251139896662346655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A248649 (n : ℕ) : ℤ :=
  A248649.P2251139896662346655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A248649.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A254064.P8256548670162255891

`eq[1, A331671(n+1)]+1`
-/

namespace A254064.P8256548670162255891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A254064.P8256548670162255891

noncomputable section

/-- A254064: Positive integers whose square is expressible in exactly one way as x^2 + 6xy + y^2, with 0 < x < y.

Offset 1, canonical program `A254064.P8256548670162255891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4668 terms. -/
def A254064 (n : ℕ) : ℤ :=
  (A254064.P8256548670162255891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4668 terms. -/
def A254064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256226.P5516758041017410339

`A256315(2*n)`
-/

namespace A256226.P5516758041017410339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256315 (2 * n)

end

end A256226.P5516758041017410339

noncomputable section

/-- A256226: Number of partitions of 6n into 6 parts.

Offset 0, canonical program `A256226.P5516758041017410339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A256226 (n : ℕ) : ℤ :=
  A256226.P5516758041017410339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A256226.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A264719.P3615555422415297802

`∪[A051634(n+1), A264721(n+1)]`
-/

namespace A264719.P3615555422415297802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A264719.P3615555422415297802

noncomputable section

/-- A264719: Numbers that are greater than the average of their closest flanking primes.

Offset 1, canonical program `A264719.P3615555422415297802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264719 (n : ℕ) : ℤ :=
  (A264719.P3615555422415297802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268343.P13116901143195206810

`A000040(∩[A258026(n+1), A358529(n+1)])`
-/

namespace A268343.P13116901143195206810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358529 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A268343.P13116901143195206810

noncomputable section

/-- A268343: Hermit primes: primes which are not a nearest neighbor of another prime.

Offset 1, canonical program `A268343.P13116901143195206810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A268343 (n : ℕ) : ℤ :=
  A268343.P13116901143195206810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A268343.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A286627.P1343693028001462736

`val(Δ[A049643(n)], A096737(n+1))`
-/

namespace A286627.P1343693028001462736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (A096737 (n + 1)).toNat

end

end A286627.P1343693028001462736

noncomputable section

/-- A286627: a(n) = exponent of the highest power of A000005(n) (number of divisors of n) dividing A000010(n) (totient function phi), a(1) = 1.

Offset 1, canonical program `A286627.P1343693028001462736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A286627 (n : ℕ) : ℤ :=
  (A286627.P1343693028001462736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A286627.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307641.P8431992554252271675

`A014963(A307662(n+1))`
-/

namespace A307641.P8431992554252271675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A307662 (n + 1)).toNat

end

end A307641.P8431992554252271675

noncomputable section

/-- A307641: Triangle T(i,j=1..i) read by rows which contain the naturally ordered prime-or-one factorization of the row number i.

Offset 1, canonical program `A307641.P8431992554252271675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. -/
def A307641 (n : ℕ) : ℤ :=
  A307641.P8431992554252271675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8646 terms. -/
def A307641.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A314186.P10880923475952212698

`A314106(n)+Δ[A011864(n)]`
-/

namespace A314186.P10880923475952212698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314106 n + (f1 (n + 1) - f1 n)

end

end A314186.P10880923475952212698

noncomputable section

/-- A314186: Coordination sequence Gal.6.330.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314186.P10880923475952212698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A314186 (n : ℕ) : ℤ :=
  A314186.P10880923475952212698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A314186.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A316830.P8467791605311806215

`A381848(3*n+1)+1`
-/

namespace A316830.P8467791605311806215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381848 (3 * n + 1) + 1

end

end A316830.P8467791605311806215

noncomputable section

/-- A316830: Replace successive blocks of length 3 in the Thue-Morse sequence A010060 with their decimal equivalents.

Offset 1, canonical program `A316830.P8467791605311806215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A316830 (n : ℕ) : ℤ :=
  A316830.P8467791605311806215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A316830.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A326732.P13751635001145010866

`2*A281392(n)-A000120(n)`
-/

namespace A326732.P13751635001145010866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281392 n - A000120 n

end

end A326732.P13751635001145010866

noncomputable section

/-- A326732: Number of iterations of A326731(x) starting at x = n to reach 0.

Offset 0, canonical program `A326732.P13751635001145010866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A326732 (n : ℕ) : ℤ :=
  A326732.P13751635001145010866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A326732.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A335841.P5826896804979119893

`∑{d}[n+1, A275367(#)]`
-/

namespace A335841.P5826896804979119893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A275367 d

end

end A335841.P5826896804979119893

noncomputable section

/-- A335841: Number of distinct rectangles that can be made with one even and one odd side length that are divisors of 2n.

Offset 1, canonical program `A335841.P5826896804979119893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335841 (n : ℕ) : ℤ :=
  A335841.P5826896804979119893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335969.P8452878406880024569

`∩[A034961(n+1), A046389(n+1)]`
-/

namespace A335969.P8452878406880024569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335969.P8452878406880024569

noncomputable section

/-- A335969: Sphenic numbers that are also the sum of three consecutive primes.

Offset 1, canonical program `A335969.P8452878406880024569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. -/
def A335969 (n : ℕ) : ℤ :=
  (A335969.P8452878406880024569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. -/
def A335969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337196.P11016687731490253502

`val(A336698(n+1), 3)`
-/

namespace A337196.P11016687731490253502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336698 (n + 1)).toNat 3

end

end A337196.P11016687731490253502

noncomputable section

/-- A337196: The 3-adic valuation of 1+A000265(sigma(n)), where A000265 gives the odd part.

Offset 1, canonical program `A337196.P11016687731490253502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337196 (n : ℕ) : ℤ :=
  (A337196.P11016687731490253502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337196.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A344373.P3639027277485766421

`A344371(n+1)-(n+1)`
-/

namespace A344373.P3639027277485766421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344371 (n + 1) - (n + 1 : ℤ)

end

end A344373.P3639027277485766421

noncomputable section

/-- A344373: a(n) = Sum_{k=1..n-1} (-1)^k gcd(k, n).

Offset 1, canonical program `A344373.P3639027277485766421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344373 (n : ℕ) : ℤ :=
  A344373.P3639027277485766421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344373.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A356749.P7001661797573302836

`A035614(A361989(n+1))`
-/

namespace A356749.P7001661797573302836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 (A361989 (n + 1)).toNat

end

end A356749.P7001661797573302836

noncomputable section

/-- A356749: a(n) is the number of trailing 1's in the dual Zeckendorf representation of n (A104326).

Offset 0, canonical program `A356749.P7001661797573302836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356749 (n : ℕ) : ℤ :=
  A356749.P7001661797573302836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356749.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358530.P16462741210301020417

`A151800(A051634(n+1))`
-/

namespace A358530.P16462741210301020417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A051634 (n + 1)).toNat

end

end A358530.P16462741210301020417

noncomputable section

/-- A358530: a(n) = n-th prime prime(k) such that prime(k) - prime(k-1) < prime(k-1) - prime(k-2).

Offset 1, canonical program `A358530.P16462741210301020417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051634, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358530 (n : ℕ) : ℤ :=
  A358530.P16462741210301020417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051634, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360393.P1701064018632553590

`∪[A360395(n+1), A360397(n+1)]`
-/

namespace A360393.P1701064018632553590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360393.P1701064018632553590

noncomputable section

/-- A360393: Complement of A360392.

Offset 1, canonical program `A360393.P1701064018632553590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360393 (n : ℕ) : ℤ :=
  (A360393.P1701064018632553590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361689.P6436331542054967917

`2*(1+A007814(n+1))*A275367(n+1)`
-/

namespace A361689.P6436331542054967917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((1 + A007814 (n + 1)) * A275367 (n + 1))

end

end A361689.P6436331542054967917

noncomputable section

/-- A361689: The number of divisors of 2*n^2.

Offset 1, canonical program `A361689.P6436331542054967917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361689 (n : ℕ) : ℤ :=
  A361689.P6436331542054967917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361689.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364362.P4837481512525781304

`A331472(or(n, A118759(n)))`
-/

namespace A364362.P4837481512525781304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (Int.lor (n : ℤ) (A118759 n)).toNat

end

end A364362.P4837481512525781304

noncomputable section

/-- A364362: Consider all the ways to make sequences of distinct nonnegative integers using all the digits of n, such that no term has leading 0's or appears more than once in the sequence. a(n) is the minimum possible sum of any sequence of n.

Offset 0, canonical program `A364362.P4837481512525781304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A364362 (n : ℕ) : ℤ :=
  A364362.P4837481512525781304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A364362.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371054.P6931107053434447671

`A089118(A238246(n+1))`
-/

namespace A371054.P6931107053434447671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (A238246 (n + 1)).toNat

end

end A371054.P6931107053434447671

noncomputable section

/-- A371054: Numbers whose ternary representation consists of a run of 1's, then a run of 0's, then a run of 2's.

Offset 1, canonical program `A371054.P6931107053434447671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054 (n : ℕ) : ℤ :=
  A371054.P6931107053434447671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A371054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373947.P8857403306256119126

`A037201(n+2)/2`
-/

namespace A373947.P8857403306256119126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037201 (n + 2) : ℚ) / 2

end

end A373947.P8857403306256119126

noncomputable section

/-- A373947: Halved and run-compressed first differences of consecutive odd primes.

Offset 1, canonical program `A373947.P8857403306256119126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373947.P8857403306256119126.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A375999.P7786675138920784206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A375999 (n : ℕ) : ℤ :=
  (A375999.P7786675138920784206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A375999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379916.P8861778669536379572

`A033879(A046389(n+1))/2`
-/

namespace A379916.P8861778669536379572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (A046389 (n + 1)).toNat : ℚ) / 2

end

end A379916.P8861778669536379572

noncomputable section

/-- A379916: a(n) is the deficiency of A046389(n), divided by 2.

Offset 1, canonical program `A379916.P8861778669536379572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A379916 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379916.P8861778669536379572.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A379916.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A212791.P5133466975691796848

`gcd(A126930(n+1), A182923(n+1))`
-/

namespace A212791.P5133466975691796848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126930 (n + 1)) (A182923 (n + 1))

end

end A212791.P5133466975691796848

noncomputable section

/-- A212791: Central binomial coefficient CB(n) purged of all primes exceeding (n+1)/2.

Offset 1, canonical program `A212791.P5133466975691796848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A212791 (n : ℕ) : ℤ :=
  (A212791.P5133466975691796848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A212791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214195.P1409231567041737422

`eq[(n+1)^3, A290480(n+1)]+1`
-/

namespace A214195.P1409231567041737422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214195.P1409231567041737422

noncomputable section

/-- A214195: Numbers with the number of distinct prime factors a multiple of 3.

Offset 1, canonical program `A214195.P1409231567041737422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214195 (n : ℕ) : ℤ :=
  (A214195.P1409231567041737422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214195.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A227553.P11896763355419445799

`A087784(n+1)/A093148(n)`
-/

namespace A227553.P11896763355419445799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A093148 n : ℚ)

end

end A227553.P11896763355419445799

noncomputable section

/-- A227553: Number of solutions to x^2 - y^2 - z^2 == 1 (mod n).

Offset 1, canonical program `A227553.P11896763355419445799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A227553 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227553.P11896763355419445799.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A227553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231754.P1945507588168497190

`filter[A057653(n+1), A359377(#)]`
-/

namespace A231754.P1945507588168497190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A231754.P1945507588168497190

noncomputable section

/-- A231754: Products of distinct primes congruent to 1 modulo 4 (A002144).

Offset 1, canonical program `A231754.P1945507588168497190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7751 terms. -/
def A231754 (n : ℕ) : ℤ :=
  A231754.P1945507588168497190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7751 terms. -/
def A231754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232181.P8852575731093556452

`A002805(Δ[n²])`
-/

namespace A232181.P8852575731093556452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A232181.P8852575731093556452

noncomputable section

/-- A232181: First bisection of harmonic numbers (denominators).

Offset 1, canonical program `A232181.P8852575731093556452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A232181 (n : ℕ) : ℤ :=
  A232181.P8852575731093556452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A232181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243349.P12567301772792210123

`A005117(n+1)-A243290(n+1)`
-/

namespace A243349.P12567301772792210123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - A243290 (n + 1)

end

end A243349.P12567301772792210123

noncomputable section

/-- A243349: Difference between the n-th squarefree number and the index of its largest prime factor.

Offset 1, canonical program `A243349.P12567301772792210123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243349 (n : ℕ) : ℤ :=
  A243349.P12567301772792210123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243349.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A249948.P1807570156630475926

`Δ[A249942(n)/a(A000038(n))]` with `a(0)=1`
-/

namespace A249948.P1807570156630475926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A249942 n : ℚ) / f1 (A000038 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249948.P1807570156630475926

noncomputable section

/-- A249948: Gaps between single 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A249948.P1807570156630475926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249948.P1807570156630475926.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254734.P5864895102281337725

`A053166(n+1)+1+n`
-/

namespace A254734.P5864895102281337725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1) + 1 + (n : ℤ)

end

end A254734.P5864895102281337725

noncomputable section

/-- A254734: a(n) is the least k > n such that n divides k^4.

Offset 1, canonical program `A254734.P5864895102281337725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A254734 (n : ℕ) : ℤ :=
  A254734.P5864895102281337725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A254734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255319.P1653962225687368170

`A101428(3*n+2)`
-/

namespace A255319.P1653962225687368170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 (3 * n + 2)

end

end A255319.P1653962225687368170

noncomputable section

/-- A255319: Expansion of psi(x^3) * f(x, x^5) in powers of x where psi(), f() are Ramanujan theta functions.

Offset 0, canonical program `A255319.P1653962225687368170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A255319 (n : ℕ) : ℤ :=
  A255319.P1653962225687368170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A255319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257398.P465226734749930738

`A257399(4*n)`
-/

namespace A257398.P465226734749930738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257399 (4 * n)

end

end A257398.P465226734749930738

noncomputable section

/-- A257398: Expansion of phi(-x^6)^2 / chi(-x) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A257398.P465226734749930738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A257398 (n : ℕ) : ℤ :=
  A257398.P465226734749930738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A257398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258291.P5881300206868688426

`A116604(2*n)/ratio[A131713(n+2)]`
-/

namespace A258291.P5881300206868688426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116604 (2 * n) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A258291.P5881300206868688426

noncomputable section

/-- A258291: Expansion of q^(-1/4) * eta(q) * eta(q^2) * eta(q^6) / eta(q^3) in powers of q.

Offset 0, canonical program `A258291.P5881300206868688426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A258291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A258291.P5881300206868688426.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A258291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263931.P12716601024892893548

`A000984(n)/A261130(n)`
-/

namespace A263931.P12716601024892893548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A261130 n : ℚ)

end

end A263931.P12716601024892893548

noncomputable section

/-- A263931: a(n) = binomial(2*n, n) / Product(p prime | n < p <= 2*n).

Offset 0, canonical program `A263931.P12716601024892893548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263931.P12716601024892893548.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263931.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A268398.P16108927674745858169

`∑[A085731(n+1)]`
-/

namespace A268398.P16108927674745858169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268398.P16108927674745858169

noncomputable section

/-- A268398: Partial sums of A085731.

Offset 1, canonical program `A268398.P16108927674745858169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268398 (n : ℕ) : ℤ :=
  A268398.P16108927674745858169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268398.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A275918.P6241858997175305561

`A275919(n)-(A140101(n+1)+A140101(n+1))`
-/

namespace A275918.P6241858997175305561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275919 n - (A140101 (n + 1) + A140101 (n + 1))

end

end A275918.P6241858997175305561

noncomputable section

/-- A275918: a(n) = A273059(4n+2).

Offset 0, canonical program `A275918.P6241858997175305561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275918 (n : ℕ) : ℤ :=
  A275918.P6241858997175305561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275918.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A322820.P8290585140206009011

`A253560((n+1)²/A253560(n+1))`
-/

namespace A322820.P8290585140206009011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A253560 (n + 1) : ℚ))).toNat

end

end A322820.P8290585140206009011

noncomputable section

/-- A322820: a(n) = A052126(n) * A006530(A052126(n)).

Offset 1, canonical program `A322820.P8290585140206009011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322820 (n : ℕ) : ℤ :=
  A322820.P8290585140206009011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327668.P8702113189712458297

`∑{d}[n+1, A333569(#)]`
-/

namespace A327668.P8702113189712458297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333569 d

end

end A327668.P8702113189712458297

noncomputable section

/-- A327668: a(n) = n * Sum_{d|n} (-1)^(bigomega(d) - omega(d)) / d.

Offset 1, canonical program `A327668.P8702113189712458297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327668 (n : ℕ) : ℤ :=
  A327668.P8702113189712458297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332458.P4141515290315436007

`∩[A332228(n+1), A332457(n+1)]`
-/

namespace A332458.P4141515290315436007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332458.P4141515290315436007

noncomputable section

/-- A332458: Odd numbers k, not powers of primes, such that sigma(k) == 2 modulo 8 and sigma(sigma(k)) == 6 modulo 8.

Offset 1, canonical program `A332458.P4141515290315436007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A332458 (n : ℕ) : ℤ :=
  (A332458.P4141515290315436007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A332458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333196.P17543216168465696791

`gcd(A002805(n+1), A034386(n+1))`
-/

namespace A333196.P17543216168465696791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002805 (n + 1)) (A034386 (n + 1))

end

end A333196.P17543216168465696791

noncomputable section

/-- A333196: Least k such that Sum_{i=1..n} k^n / i is a positive integer.

Offset 1, canonical program `A333196.P17543216168465696791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A333196 (n : ℕ) : ℤ :=
  (A333196.P17543216168465696791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A333196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335024.P5668950765007731693

`ratio[A110566(n+1)]*A048671(n+2)`
-/

namespace A335024.P5668950765007731693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A048671 (n + 2) : ℚ)

end

end A335024.P5668950765007731693

noncomputable section

/-- A335024: Ratios of consecutive terms of A056612.

Offset 1, canonical program `A335024.P5668950765007731693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335024 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335024.P5668950765007731693.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335024.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A345321.P1628524416626667783

`A000203(n+1)-A333843(n+1)`
-/

namespace A345321.P1628524416626667783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A333843 (n + 1)

end

end A345321.P1628524416626667783

noncomputable section

/-- A345321: Sum of the divisors of n whose cube does not divide n.

Offset 1, canonical program `A345321.P1628524416626667783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345321 (n : ℕ) : ℤ :=
  A345321.P1628524416626667783.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345321.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A353559.P9248086909526130647

`char[A348499(n+1)-1]`
-/

namespace A353559.P9248086909526130647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353559.P9248086909526130647

noncomputable section

/-- A353559: a(n) = 1 if A003968(n) is a multiple of n, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1), otherwise 0.

Offset 1, canonical program `A353559.P9248086909526130647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353559 (n : ℕ) : ℤ :=
  (A353559.P9248086909526130647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353559.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359552.P1693999533399603662

`C(A085731(n+1), n+1)`
-/

namespace A359552.P1693999533399603662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085731 (n + 1)).toNat (n + 1)

end

end A359552.P1693999533399603662

noncomputable section

/-- A359552: Multiplicative with a(p^e) = 1 if e == 0 mod p, otherwise 0.

Offset 1, canonical program `A359552.P1693999533399603662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552 (n : ℕ) : ℤ :=
  (A359552.P1693999533399603662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360160.P8428443414059967614

`A360161((n+1)/A006519(n+1))`
-/

namespace A360160.P8428443414059967614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360161 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A360160.P8428443414059967614

noncomputable section

/-- A360160: a(n) is the sum of unitary divisors of n that are odd squares.

Offset 1, canonical program `A360160.P8428443414059967614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360160 (n : ℕ) : ℤ :=
  A360160.P8428443414059967614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368373.P10681565599172187300

`gcd(2, n+1)*A175441(n+1)`
-/

namespace A368373.P10681565599172187300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A175441 (n + 1)

end

end A368373.P10681565599172187300

noncomputable section

/-- A368373: a(n) = denominator of AM(n)-HM(n), where AM(n) and HM(n) are the arithmetic and harmonic means of the first n positive integers.

Offset 1, canonical program `A368373.P10681565599172187300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A368373 (n : ℕ) : ℤ :=
  A368373.P10681565599172187300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A368373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369008.P206606723966136315

`A085731(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369008.P206606723966136315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085731 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A369008.P206606723966136315

noncomputable section

/-- A369008: a(n) = A085731(n) / A003557(n).

Offset 1, canonical program `A369008.P206606723966136315`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A085731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369008 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369008.P206606723966136315.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A085731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369105.P2590256937605570919

`∩[A004614(n+1)-2, A065091(n+1)]`
-/

namespace A369105.P2590256937605570919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369105.P2590256937605570919

noncomputable section

/-- A369105: Primes p such that p+2 has only prime factors congruent to -1 modulo 4.

Offset 1, canonical program `A369105.P2590256937605570919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A369105 (n : ℕ) : ℤ :=
  (A369105.P2590256937605570919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A369105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373991.P1418235622808596592

`char[A373992(n+1)]`
-/

namespace A373991.P1418235622808596592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373991.P1418235622808596592

noncomputable section

/-- A373991: a(n) = 1 if A328768(n) is a multiple of 3, otherwise 0, where A328768 is the first primorial based variant of arithmetic derivative.

Offset 0, canonical program `A373991.P1418235622808596592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373991 (n : ℕ) : ℤ :=
  (A373991.P1418235622808596592.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374456.P1486037038028298426

`A380165(A268335(2*n+1-n))`
-/

namespace A374456.P1486037038028298426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380165 (A268335 (2 * n + 1 - n)).toNat

end

end A374456.P1486037038028298426

noncomputable section

/-- A374456: The Euler phi function values of the exponentially odd numbers (A268335).

Offset 1, canonical program `A374456.P1486037038028298426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A374456 (n : ℕ) : ℤ :=
  A374456.P1486037038028298426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A374456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375930.P7525023561221465794

`∑[A120992(n+1)]`
-/

namespace A375930.P7525023561221465794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375930.P7525023561221465794

noncomputable section

/-- A375930: Numbers k such that A005117(k+1) - A005117(k) > 1. In other words, the k-th squarefree number is more than 1 less than the next.

Offset 1, canonical program `A375930.P7525023561221465794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930 (n : ℕ) : ℤ :=
  A375930.P7525023561221465794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386125.P18364965414769765798

`∩[A152313(n+1), A386343(n+1)]`
-/

namespace A386125.P18364965414769765798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386125.P18364965414769765798

noncomputable section

/-- A386125: Primes having only {1, 4, 6, 9} as digits.

Offset 1, canonical program `A386125.P18364965414769765798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A386125 (n : ℕ) : ℤ :=
  (A386125.P18364965414769765798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A386125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395959.P9714823752039904361

`xor(A158704(n+1), A395958(n))`
-/

namespace A395959.P9714823752039904361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158704 (n + 1)) (A395958 n)

end

end A395959.P9714823752039904361

noncomputable section

/-- A395959: Numbers k such that A395958(k) = 0.

Offset 1, canonical program `A395959.P9714823752039904361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395959 (n : ℕ) : ℤ :=
  A395959.P9714823752039904361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395959.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A217434.P5233578707413579465

`A003557(n+1)*A006530(n+1)`
-/

namespace A217434.P5233578707413579465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A006530 (n + 1)

end

end A217434.P5233578707413579465

noncomputable section

/-- A217434: n divided by the product of all its prime divisors smaller than the largest prime divisor.

Offset 1, canonical program `A217434.P5233578707413579465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217434 (n : ℕ) : ℤ :=
  A217434.P5233578707413579465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217434.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228936.P6406300158484346142

`A006530(A071044(n))*A009001(n)`
-/

namespace A228936.P6406300158484346142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071044 n).toNat * A009001 n

end

end A228936.P6406300158484346142

noncomputable section

/-- A228936: Expansion of (1 + 3*x - 3*x^3 - x^4)/(1 + 2*x^2 + x^4).

Offset 0, canonical program `A228936.P6406300158484346142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228936 (n : ℕ) : ℤ :=
  A228936.P6406300158484346142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228936.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A242218.P592347260306296089

`filter[A075540(n+1), A354927(#)]`
-/

namespace A242218.P592347260306296089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A242218.P592347260306296089

noncomputable section

/-- A242218: Semiprimes which are the arithmetic mean of three consecutive primes.

Offset 1, canonical program `A242218.P592347260306296089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A242218 (n : ℕ) : ℤ :=
  A242218.P592347260306296089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A242218.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A249740.P10635776748486197550

`A006530((n+1)/∏{p}[n+1, #])`
-/

namespace A249740.P10635776748486197550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A249740.P10635776748486197550

noncomputable section

/-- A249740: The largest prime whose square divides n, 1 if n is squarefree.

Offset 1, canonical program `A249740.P10635776748486197550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249740 (n : ℕ) : ℤ :=
  A249740.P10635776748486197550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253236.P9116711881590204222

`∑{p}[A014963((n+1)/gcd(n+1, 1-A006530(n+1))), #]`
-/

namespace A253236.P9116711881590204222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (1 - A006530 (n + 1)) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A253236.P9116711881590204222

noncomputable section

/-- A253236: The unique prime p <= n such that n-th cyclotomic polynomial has a root mod p, or 0 if no such p exists.

Offset 1, canonical program `A253236.P9116711881590204222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253236 (n : ℕ) : ℤ :=
  (A253236.P9116711881590204222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253236.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A287107.P12993006803381746333

`A287073(n+1)+A156077(A013947(n+1))`
-/

namespace A287107.P12993006803381746333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1) + A156077 (A013947 (n + 1)).toNat

end

end A287107.P12993006803381746333

noncomputable section

/-- A287107: Positions of 2 in A287104.

Offset 1, canonical program `A287107.P12993006803381746333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A287107 (n : ℕ) : ℤ :=
  A287107.P12993006803381746333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A287107.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A295075.P13207258477495882565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295075 (n : ℕ) : ℤ :=
  (A295075.P13207258477495882565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295075.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A298073.P1727978061545907446

`A075540(n+1)-1`
-/

namespace A298073.P1727978061545907446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1) - 1

end

end A298073.P1727978061545907446

noncomputable section

/-- A298073: The first of three consecutive integers the sum of which is equal to the sum of three consecutive prime numbers.

Offset 1, canonical program `A298073.P1727978061545907446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298073 (n : ℕ) : ℤ :=
  A298073.P1727978061545907446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300518.P10548424480935196533

`A006530(Δ[A069891(n)])`
-/

namespace A300518.P10548424480935196533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A300518.P10548424480935196533

noncomputable section

/-- A300518: The greatest prime factor of the squarefree part of n, or 1 if n is square.

Offset 1, canonical program `A300518.P10548424480935196533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300518 (n : ℕ) : ℤ :=
  A300518.P10548424480935196533.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300518.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A303092.P4096083080800045430

`∩[A075540(n+1), A216309(n+1)]`
-/

namespace A303092.P4096083080800045430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303092.P4096083080800045430

noncomputable section

/-- A303092: Balanced primes of order one ending in 1.

Offset 1, canonical program `A303092.P4096083080800045430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A303092 (n : ℕ) : ℤ :=
  (A303092.P4096083080800045430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A303092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303093.P3139981382436143613

`∩[A030431(n+1), A075540(n+1)]`
-/

namespace A303093.P3139981382436143613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303093.P3139981382436143613

noncomputable section

/-- A303093: Balanced primes of order one ending in 3.

Offset 1, canonical program `A303093.P3139981382436143613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A303093 (n : ℕ) : ℤ :=
  (A303093.P3139981382436143613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. -/
def A303093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303094.P17242353083461653845

`∩[A030432(n+1), A075540(n+1)]`
-/

namespace A303094.P17242353083461653845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303094.P17242353083461653845

noncomputable section

/-- A303094: Balanced primes of order one ending in 7.

Offset 1, canonical program `A303094.P17242353083461653845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A303094 (n : ℕ) : ℤ :=
  (A303094.P17242353083461653845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A303094.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A312961.P11569695398906220671

`abs(A008592(n)-A315516(n))`
-/

namespace A312961.P11569695398906220671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315516 n|

end

end A312961.P11569695398906220671

noncomputable section

/-- A312961: Coordination sequence Gal.6.152.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312961.P11569695398906220671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A312961 (n : ℕ) : ℤ :=
  A312961.P11569695398906220671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A312961.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A327239.P9428732686515301854

`A013947(n+2)-A013947(n+1)`
-/

namespace A327239.P9428732686515301854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2) - A013947 (n + 1)

end

end A327239.P9428732686515301854

noncomputable section

/-- A327239: For n >= 1, a(n) = b(n+1) - b(n) where b is A013947.

Offset 1, canonical program `A327239.P9428732686515301854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327239 (n : ℕ) : ℤ :=
  A327239.P9428732686515301854.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328311.P6899217752375846038

`abs(A328310(A028310(n)+1)+1)`
-/

namespace A328311.P6899217752375846038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328310 (A028310 n + 1).toNat + 1|

end

end A328311.P6899217752375846038

noncomputable section

/-- A328311: a(n) = 1 + A051903(A003415(n)) - A051903(n), a(1) = 0 by convention.

Offset 1, canonical program `A328311.P6899217752375846038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328311 (n : ℕ) : ℤ :=
  A328311.P6899217752375846038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328574.P8235392012786303733

`eq[0, A328620(n)]`
-/

namespace A328574.P8235392012786303733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328574.P8235392012786303733

noncomputable section

/-- A328574: a(1) = 0, and, for n >= 2, numbers n whose primorial base expansion doesn't contain any nonleading zeros.

Offset 1, canonical program `A328574.P8235392012786303733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6348 terms. -/
def A328574 (n : ℕ) : ℤ :=
  (A328574.P8235392012786303733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6348 terms. -/
def A328574.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A331740.P9260061976321167483

`A048675(A375240(n+1))`
-/

namespace A331740.P9260061976321167483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A375240 (n + 1)).toNat

end

end A331740.P9260061976321167483

noncomputable section

/-- A331740: Number of prime factors in A225546(n), counted with multiplicity.

Offset 1, canonical program `A331740.P9260061976321167483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A331740 (n : ℕ) : ℤ :=
  A331740.P9260061976321167483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A331740.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A341655.P4449549526974738098

`2*A129296(record[A006530(n+2)])`
-/

namespace A341655.P4449549526974738098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341655.P4449549526974738098

noncomputable section

/-- A341655: a(n) is the number of divisors of prime(n)^2 - 1.

Offset 1, canonical program `A341655.P4449549526974738098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A341655 (n : ℕ) : ℤ :=
  A341655.P4449549526974738098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A341655.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A345363.P3903916953446513140

`filter[A075540(n+1), A005171(#)]`
-/

namespace A345363.P3903916953446513140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A345363.P3903916953446513140

noncomputable section

/-- A345363: Composite numbers that are the exact average of three consecutive primes.

Offset 1, canonical program `A345363.P3903916953446513140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A345363 (n : ℕ) : ℤ :=
  A345363.P3903916953446513140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A345363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345940.P1186355815265533705

`A062169(A006530(n+1)+∑[n])`
-/

namespace A345940.P1186355815265533705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062169 (A006530 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A345940.P1186355815265533705

noncomputable section

/-- A345940: Factorial of the largest prime factor of n, read modulo n: a(n) = A006530(n)! mod n.

Offset 1, canonical program `A345940.P1186355815265533705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A345940 (n : ℕ) : ℤ :=
  A345940.P1186355815265533705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A345940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349694.P3388148621130702801

`∑{d}[n+1, A345264(#)*A380163((n+1)/#)]`
-/

namespace A349694.P3388148621130702801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345264 d * A380163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349694.P3388148621130702801

noncomputable section

/-- A349694: Dirichlet convolution of the squarefree kernel function (A007947) with itself.

Offset 1, canonical program `A349694.P3388148621130702801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349694 (n : ℕ) : ℤ :=
  A349694.P3388148621130702801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349694.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354360.P2549211365831135699

`∪[A013929(n+1), A090958(n)]`
-/

namespace A354360.P2549211365831135699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354360.P2549211365831135699

noncomputable section

/-- A354360: Positions of 1's in A354366.

Offset 1, canonical program `A354360.P2549211365831135699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354360 (n : ℕ) : ℤ :=
  (A354360.P2549211365831135699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354360.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A370833.P4333784619671070186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370833 (n : ℕ) : ℤ :=
  A370833.P4333784619671070186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370833.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A371012.P16977232108696174586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A371012 (n : ℕ) : ℤ :=
  A371012.P16977232108696174586.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A371012.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373597.P6489054015672801265

`filter[A373473(n+1), A369658(#)]`
-/

namespace A373597.P6489054015672801265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A373597.P6489054015672801265

noncomputable section

/-- A373597: Non-multiples of 3 whose multiplicies of prime factors of types 3m-1 and 3m+1 are both multiples of 3.

Offset 1, canonical program `A373597.P6489054015672801265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5727 terms. -/
def A373597 (n : ℕ) : ℤ :=
  A373597.P6489054015672801265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5727 terms. -/
def A373597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374045.P2461968361233869540

`char[A374046(n+1)]`
-/

namespace A374045.P2461968361233869540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A374045.P2461968361233869540

noncomputable section

/-- A374045: a(n) = 1 if A328845(n) is even, otherwise 0, where A328845 is the first Fibonacci based variant of arithmetic derivative.

Offset 0, canonical program `A374045.P2461968361233869540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374045 (n : ℕ) : ℤ :=
  (A374045.P2461968361233869540.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374912.P16986917820188115762

`record[A006530(A374913(n+1)+1)]`
-/

namespace A374912.P16986917820188115762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A374913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374912.P16986917820188115762

noncomputable section

/-- A374912: Primes p such that (p - 1)^p == p (mod 2*p - 1).

Offset 1, canonical program `A374912.P16986917820188115762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 607 terms. -/
def A374912 (n : ℕ) : ℤ :=
  A374912.P16986917820188115762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 607 terms. -/
def A374912.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A387122.P8961407856667893284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A387122 (n : ℕ) : ℤ :=
  A387122.P8961407856667893284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A387122.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390753.P837858288058759199

`A390754(n+1)/(A019555(n+1)*A019555(n+1))`
-/

namespace A390753.P837858288058759199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390754 (n + 1) : ℚ) / (A019555 (n + 1) * A019555 (n + 1) : ℚ)

end

end A390753.P837858288058759199

noncomputable section

/-- A390753: The Euler totient of the smallest number whose cube is divisible by n.

Offset 1, canonical program `A390753.P837858288058759199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390753 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390753.P837858288058759199.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392240.P16016522167015173598

`A006530(A016825(n+1)+2*n+1)`
-/

namespace A392240.P16016522167015173598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016825 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A392240.P16016522167015173598

noncomputable section

/-- A392240: Largest prime factor of 6*n+1.

Offset 1, canonical program `A392240.P16016522167015173598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392240 (n : ℕ) : ℤ :=
  A392240.P16016522167015173598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392240.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A209940.P3877405828228066548

`A057077(n)*A113417(n)`
-/

namespace A209940.P3877405828228066548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A113417 n

end

end A209940.P3877405828228066548

noncomputable section

/-- A209940: Expansion of psi(x^4) * phi(-x^4)^4 / phi(x) in powers of x where phi(), psi() are Ramanujan theta function.

Offset 0, canonical program `A209940.P3877405828228066548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209940 (n : ℕ) : ℤ :=
  A209940.P3877405828228066548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209940.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A216176.P2544016362055679949

`A159780(∑[A129761(n)])`
-/

namespace A216176.P2544016362055679949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216176.P2544016362055679949

noncomputable section

/-- A216176: Inner product of the Zeckendorf binary representation of n and its reverse.

Offset 1, canonical program `A216176.P2544016362055679949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 842 terms. -/
def A216176 (n : ℕ) : ℤ :=
  A216176.P2544016362055679949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 842 terms. -/
def A216176.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228578.P7500761116644790283

`∑{p}[A006881(n+1), #]`
-/

namespace A228578.P7500761116644790283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A228578.P7500761116644790283

noncomputable section

/-- A228578: Sum of the distinct prime factors of the squarefree semiprimes (A006881).

Offset 1, canonical program `A228578.P7500761116644790283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228578 (n : ℕ) : ℤ :=
  (A228578.P7500761116644790283.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230486.P14651634677920879007

`lt[A152271(n+1), A170818(n+1)]+1`
-/

namespace A230486.P14651634677920879007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A230486.P14651634677920879007

noncomputable section

/-- A230486: Numbers n such that n^n is representable as the sum of two nonzero squares.

Offset 1, canonical program `A230486.P14651634677920879007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230486 (n : ℕ) : ℤ :=
  (A230486.P14651634677920879007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230745.P17335340068142128914

`filter[A091855(n+1), A353816(#)]`
-/

namespace A230745.P17335340068142128914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230745.P17335340068142128914

noncomputable section

/-- A230745: Odious Loeschian numbers.

Offset 1, canonical program `A230745.P17335340068142128914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3697 terms. -/
def A230745 (n : ℕ) : ℤ :=
  A230745.P17335340068142128914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3697 terms. -/
def A230745.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A240086.P8018606740492469687

`A056169(n+1)+A055631(A085731(n+1))`
-/

namespace A240086.P8018606740492469687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + A055631 (A085731 (n + 1)).toNat

end

end A240086.P8018606740492469687

noncomputable section

/-- A240086: a(n) = Sum_{prime p|n} phi(gcd(p, n/p)) where phi is Euler's totient function.

Offset 1, canonical program `A240086.P8018606740492469687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240086 (n : ℕ) : ℤ :=
  A240086.P8018606740492469687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240086.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A250474.P15580657759443600580

`A250473(n+1)+1`
-/

namespace A250474.P15580657759443600580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) + 1

end

end A250474.P15580657759443600580

noncomputable section

/-- A250474: Number of times prime(n) occurs as the least prime factor among numbers 1 .. prime(n)^3: a(n) = A078898(A030078(n)).

Offset 1, canonical program `A250474.P15580657759443600580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A250474 (n : ℕ) : ℤ :=
  A250474.P15580657759443600580.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A250474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A251719.P1076790489604256652

`∑[char[A250473(n+1)]]+1`
-/

namespace A251719.P1076790489604256652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A251719.P1076790489604256652

noncomputable section

/-- A251719: a(n) = the least k such that A250474(k) > n.

Offset 1, canonical program `A251719.P1076790489604256652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251719 (n : ℕ) : ℤ :=
  (A251719.P1076790489604256652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A251719.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268385.P8681897533114460155

`A011262(A064549(n+1))/A053166(A003557(n+1))`
-/

namespace A268385.P8681897533114460155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (A064549 (n + 1)).toNat : ℚ) / (A053166 (A003557 (n + 1)).toNat : ℚ)

end

end A268385.P8681897533114460155

noncomputable section

/-- A268385: a(1) = 1, for n > 1, a(n) = A020639(n)^A193231(A067029(n)) * a(A028234(n)).

Offset 1, canonical program `A268385.P8681897533114460155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A268385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268385.P8681897533114460155.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A268385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272718.P14404705752265822826

`A018806(n+1)-A178881(n+1)`
-/

namespace A272718.P14404705752265822826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) - A178881 (n + 1)

end

end A272718.P14404705752265822826

noncomputable section

/-- A272718: Partial sums of gcd-sum sequence A018804.

Offset 1, canonical program `A272718.P14404705752265822826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, A178881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272718 (n : ℕ) : ℤ :=
  A272718.P14404705752265822826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, A178881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A272718.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A283844.P16418047384171687257

`A283843(2*(n+1))`
-/

namespace A283844.P16418047384171687257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283843 (2 * (n + 1))

end

end A283844.P16418047384171687257

noncomputable section

/-- A283844: a(n) = A063776(2*n) + 1.

Offset 1, canonical program `A283844.P16418047384171687257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A283844 (n : ℕ) : ℤ :=
  A283844.P16418047384171687257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A283844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289279.P13969609369031638139

`Δ[n²]-A285786(n+1)`
-/

namespace A289279.P13969609369031638139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A285786 (n + 1)

end

end A289279.P13969609369031638139

noncomputable section

/-- A289279: Number of odd composite numbers in ]2*(n-1)^2, 2*n^2[.

Offset 1, canonical program `A289279.P13969609369031638139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289279 (n : ℕ) : ℤ :=
  A289279.P13969609369031638139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300190.P933532925247640132

`(A096010(n+1)-1)*Δ[A098180(n)]`
-/

namespace A300190.P933532925247640132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096010 (n + 1) - 1) * (f1 (n + 1) - f1 n)

end

end A300190.P933532925247640132

noncomputable section

/-- A300190: Number of solutions to 1 +- 2 +- 3 +- ... +- n == 0 (mod n).

Offset 1, canonical program `A300190.P933532925247640132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A300190 (n : ℕ) : ℤ :=
  A300190.P933532925247640132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A300190.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A306930.P9649045531916305778

`p?[A170818(n+1)+A047495(n+1)]`
-/

namespace A306930.P9649045531916305778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1) + A047495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306930.P9649045531916305778

noncomputable section

/-- A306930: Primes p of the form 8*k +- 3 such that p-1 has no prime divisor 4*t + 1.

Offset 1, canonical program `A306930.P9649045531916305778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A306930 (n : ℕ) : ℤ :=
  A306930.P9649045531916305778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A306930.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A318655.P15870475144563533263

`val(A318649(n+1), 2)`
-/

namespace A318655.P15870475144563533263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318649 (n + 1)).toNat 2

end

end A318655.P15870475144563533263

noncomputable section

/-- A318655: The 2-adic valuation of A318649, the numerators of "Dirichlet Square Root" of squares.

Offset 1, canonical program `A318655.P15870475144563533263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318655 (n : ℕ) : ℤ :=
  (A318655.P15870475144563533263.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318655.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A324891.P8570052275749477489

`∑{d}[A170818(n+1), #]`
-/

namespace A324891.P8570052275749477489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A324891.P8570052275749477489

noncomputable section

/-- A324891: a(n) = sigma(A170818(n)), where A170818(n) is the part of n composed of prime factors of form 4k+1.

Offset 1, canonical program `A324891.P8570052275749477489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324891 (n : ℕ) : ℤ :=
  (A324891.P8570052275749477489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324891.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A326040.P15308237361060723767

`A000203(n+1)-A326039(n+1)`
-/

namespace A326040.P15308237361060723767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A326039 (n + 1)

end

end A326040.P15308237361060723767

noncomputable section

/-- A326040: a(n) = sigma(n) - A008833(sigma(n)).

Offset 1, canonical program `A326040.P15308237361060723767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326039, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326040 (n : ℕ) : ℤ :=
  A326040.P15308237361060723767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326039, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327471.P11969612927539878657

`A000051(n)-A133670(n)`
-/

namespace A327471.P11969612927539878657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A133670 n

end

end A327471.P11969612927539878657

noncomputable section

/-- A327471: Number of subsets of {1..n} not containing their mean.

Offset 0, canonical program `A327471.P11969612927539878657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327471 (n : ℕ) : ℤ :=
  A327471.P11969612927539878657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327475.P394140087772944545

`2*A133670(n)-(n+1)`
-/

namespace A327475.P394140087772944545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133670 n - (n + 1 : ℤ)

end

end A327475.P394140087772944545

noncomputable section

/-- A327475: Number of subsets of {1..n} whose mean is an integer, where {} has mean 0.

Offset 0, canonical program `A327475.P394140087772944545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A327475 (n : ℕ) : ℤ :=
  A327475.P394140087772944545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A327475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336468.P7355223168731573176

`A336466(Δ[A002088(n)])`
-/

namespace A336468.P7355223168731573176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (f1 (n + 1) - f1 n).toNat

end

end A336468.P7355223168731573176

noncomputable section

/-- A336468: a(n) = A336466(phi(n)), where A336466 is fully multiplicative with a(p) = A000265(p-1) for prime p, with A000265(k) giving the odd part of k.

Offset 1, canonical program `A336468.P7355223168731573176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336468 (n : ℕ) : ℤ :=
  A336468.P7355223168731573176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339362.P5902334945201343831

`A066328(A006881(n+1))`
-/

namespace A339362.P5902334945201343831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A006881 (n + 1)).toNat

end

end A339362.P5902334945201343831

noncomputable section

/-- A339362: Sum of prime indices of the n-th squarefree semiprime.

Offset 1, canonical program `A339362.P5902334945201343831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339362 (n : ℕ) : ℤ :=
  A339362.P5902334945201343831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340084.P17512865495283900918

`gcd(n, A336466(n+1))`
-/

namespace A340084.P17512865495283900918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A336466 (n + 1))

end

end A340084.P17512865495283900918

noncomputable section

/-- A340084: a(n) = gcd(n-1, A336466(n)); Odd part of A340081(n).

Offset 1, canonical program `A340084.P17512865495283900918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340084 (n : ℕ) : ℤ :=
  (A340084.P17512865495283900918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340368.P4585367465747076282

`A173557(n+1)*A327564(n+1)`
-/

namespace A340368.P4585367465747076282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A327564 (n + 1)

end

end A340368.P4585367465747076282

noncomputable section

/-- A340368: Multiplicative with a(p^e) = (p - 1) * (p + 1)^(e-1).

Offset 1, canonical program `A340368.P4585367465747076282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A327564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340368 (n : ℕ) : ℤ :=
  A340368.P4585367465747076282.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A327564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340368.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A342416.P13973089960249361298

`gcd(A023900(n+1), A342001(n+1))`
-/

namespace A342416.P13973089960249361298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023900 (n + 1)) (A342001 (n + 1))

end

end A342416.P13973089960249361298

noncomputable section

/-- A342416: a(n) = gcd(A173557(n), A342001(n)).

Offset 1, canonical program `A342416.P13973089960249361298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342416 (n : ℕ) : ℤ :=
  (A342416.P13973089960249361298.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342459.P5259144866708303854

`A342458(n+1)/A003557(n+1)`
-/

namespace A342459.P5259144866708303854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342458 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A342459.P5259144866708303854

noncomputable section

/-- A342459: a(n) = gcd(A048250(n), A342001(n)).

Offset 1, canonical program `A342459.P5259144866708303854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A342458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342459 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342459.P5259144866708303854.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A342458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342459.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A342466.P10072051426789715214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342466 (n : ℕ) : ℤ :=
  A342466.P10072051426789715214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342466.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A344756.P12165048524653787342

`(A329039(n+2)+A069359(n+2))/A340070(n+2)`
-/

namespace A344756.P12165048524653787342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329039 (n + 2) + A069359 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344756.P12165048524653787342

noncomputable section

/-- A344756: a(n) = A003415(n) / gcd(A003415(n), A069359(n)).

Offset 2, canonical program `A344756.P12165048524653787342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344756.P12165048524653787342.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344757.P15343085714571016600

`A069359(n+2)/A340070(n+2)`
-/

namespace A344757.P15343085714571016600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069359 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344757.P15343085714571016600

noncomputable section

/-- A344757: a(n) = A069359(n) / gcd(A003415(n), A069359(n)).

Offset 2, canonical program `A344757.P15343085714571016600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344757.P15343085714571016600.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344998.P3443638615018705273

`A342001(n+1)*A344753(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344998.P3443638615018705273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) * A344753 (n + 1)

end

end A344998.P3443638615018705273

noncomputable section

/-- A344998: a(n) = A342001(n) * A344753(n).

Offset 1, canonical program `A344998.P3443638615018705273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A344753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344998 (n : ℕ) : ℤ :=
  A344998.P3443638615018705273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A344753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344998.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A345059.P15757506483102927457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345059.P15757506483102927457.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345059.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A346244.P10487541745310976811

`1-A342001(n+1)+n`
-/

namespace A346244.P10487541745310976811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A342001 (n + 1) + (n : ℤ)

end

end A346244.P10487541745310976811

noncomputable section

/-- A346244: a(n) = n - A342001(n).

Offset 1, canonical program `A346244.P10487541745310976811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346244 (n : ℕ) : ℤ :=
  A346244.P10487541745310976811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347385.P11381247364045934133

`A206787(n+1)*A336651(n+1)`
-/

namespace A347385.P11381247364045934133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206787 (n + 1) * A336651 (n + 1)

end

end A347385.P11381247364045934133

noncomputable section

/-- A347385: Dedekind psi function applied to the odd part of n: a(n) = A001615(A000265(n)).

Offset 1, canonical program `A347385.P11381247364045934133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206787, A336651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347385 (n : ℕ) : ℤ :=
  A347385.P11381247364045934133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206787, A336651, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347954.P10515140487385531382

`∑{d}[n+1, A003602(#)*A342001((n+1)/#)]`
-/

namespace A347954.P10515140487385531382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003602 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347954.P10515140487385531382

noncomputable section

/-- A347954: Dirichlet convolution of A003602 with A342001.

Offset 1, canonical program `A347954.P10515140487385531382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347954 (n : ℕ) : ℤ :=
  A347954.P10515140487385531382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347961.P14259934700239685963

`∑{d}[n+1, A342001(#)*A342001((n+1)/#)]`
-/

namespace A347961.P14259934700239685963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A342001 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347961.P14259934700239685963

noncomputable section

/-- A347961: Dirichlet convolution of A342001 with itself.

Offset 1, canonical program `A347961.P14259934700239685963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347961 (n : ℕ) : ℤ :=
  A347961.P14259934700239685963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347963.P2568942602520050035

`∑{d}[n+1, A003557(#)*A342001((n+1)/#)]`
-/

namespace A347963.P2568942602520050035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347963.P2568942602520050035

noncomputable section

/-- A347963: Dirichlet convolution of A342001 with A003557.

Offset 1, canonical program `A347963.P2568942602520050035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347963 (n : ℕ) : ℤ :=
  A347963.P2568942602520050035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348029.P15301953817482989203

`A003959(n+1)-A000203(n+1)`
-/

namespace A348029.P15301953817482989203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A000203 (n + 1)

end

end A348029.P15301953817482989203

noncomputable section

/-- A348029: a(n) = A003959(n) - sigma(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors.

Offset 1, canonical program `A348029.P15301953817482989203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348029 (n : ℕ) : ℤ :=
  A348029.P15301953817482989203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348038.P10301194583297864518

`A003968(n+1)/A348036(n+1)`
-/

namespace A348038.P10301194583297864518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (A348036 (n + 1) : ℚ)

end

end A348038.P10301194583297864518

noncomputable section

/-- A348038: a(n) = A003968(n) / gcd(n, A003968(n)), where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348038.P10301194583297864518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, A348036, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348038 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348038.P10301194583297864518.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, A348036, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348038.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348039.P15874517280542451460

`A348036(n+1)/A007947(n+1)`
-/

namespace A348039.P15874517280542451460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348036 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A348039.P15874517280542451460

noncomputable section

/-- A348039: a(n) = gcd(A003557(n), A327564(n)).

Offset 1, canonical program `A348039.P15874517280542451460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A348036, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348039.P15874517280542451460.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A348036, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348047.P7887878475414206480

`gcd(A000203(n+1), A003959(n+1))`
-/

namespace A348047.P7887878475414206480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A003959 (n + 1))

end

end A348047.P7887878475414206480

noncomputable section

/-- A348047: a(n) = gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348047.P7887878475414206480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348047 (n : ℕ) : ℤ :=
  (A348047.P7887878475414206480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348493.P13510904251785192794

`∑[A258057(n)]/A348492(n+1)`
-/

namespace A348493.P13510904251785192794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A348492 (n + 1) : ℚ)

end

end A348493.P13510904251785192794

noncomputable section

/-- A348493: a(n) = A003415(n) / gcd(A003415(n), A018804(n)), where A003415 is the arithmetic derivative and A018804 is Pillai's arithmetical function.

Offset 1, canonical program `A348493.P13510904251785192794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348493 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348493.P13510904251785192794.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348494.P11005774710442910739

`A348492(n+1)/A003557(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348494.P11005774710442910739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A348494.P11005774710442910739

noncomputable section

/-- A348494: a(n) = A348492(n) / A003557(n), where A348492 is the GCD of the arithmetic derivative (A003415) and Pillai's arithmetical function (A018804).

Offset 1, canonical program `A348494.P11005774710442910739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348494 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348494.P11005774710442910739.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348492, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348494.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348498.P16045871220494983471

`A014682(A275437(n)*A342001(n+1))`
-/

namespace A348498.P16045871220494983471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A275437 n * A342001 (n + 1)).toNat

end

end A348498.P16045871220494983471

noncomputable section

/-- A348498: a(n) = gcd(A003415(n), A347130(n)) / A003557(n), where A003415 is the arithmetic derivative and A347130 is its Dirichlet convolution with the identity function.

Offset 1, canonical program `A348498.P16045871220494983471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348498 (n : ℕ) : ℤ :=
  A348498.P16045871220494983471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348512.P7710684610633855826

`A003959(∑{d}[n+1, #])`
-/

namespace A348512.P7710684610633855826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A348512.P7710684610633855826

noncomputable section

/-- A348512: a(n) = A003959(sigma(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348512.P7710684610633855826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348512 (n : ℕ) : ℤ :=
  A348512.P7710684610633855826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348732.P348791247222302933

`A003959(n+1)-A034448(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348732.P348791247222302933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A034448 (n + 1)

end

end A348732.P348791247222302933

noncomputable section

/-- A348732: a(n) = A003959(n) - A034448(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348732.P348791247222302933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348732 (n : ℕ) : ℤ :=
  A348732.P348791247222302933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348733.P387886665287851790

`gcd(A003959(n+1), A034448(n+1))`
-/

namespace A348733.P387886665287851790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (n + 1)) (A034448 (n + 1))

end

end A348733.P387886665287851790

noncomputable section

/-- A348733: a(n) = gcd(A003959(n), A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348733.P387886665287851790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348733 (n : ℕ) : ℤ :=
  (A348733.P387886665287851790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348929.P10911149095243660924

`gcd(n+1, A003959(n+1))`
-/

namespace A348929.P10911149095243660924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003959 (n + 1))

end

end A348929.P10911149095243660924

noncomputable section

/-- A348929: a(n) = gcd(n, A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348929.P10911149095243660924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348929 (n : ℕ) : ℤ :=
  (A348929.P10911149095243660924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348944.P9603351630688322908

`1/2*(A003959(n+1)+A034448(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348944.P9603351630688322908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A003959 (n + 1) + A034448 (n + 1) : ℚ)

end

end A348944.P9603351630688322908

noncomputable section

/-- A348944: a(n) = (1/2) * (A003959(n)+A034448(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A034448 (usigma) is multiplicative with a(p^e) = (p^e)+1.

Offset 1, canonical program `A348944.P9603351630688322908`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348944.P9603351630688322908.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A034448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348972.P942558158600498541

`gcd(A003959(n+1), A129283(n+1))`
-/

namespace A348972.P942558158600498541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (n + 1)) (A129283 (n + 1))

end

end A348972.P942558158600498541

noncomputable section

/-- A348972: a(n) = gcd(A003959(n), A129283(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348972.P942558158600498541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348972 (n : ℕ) : ℤ :=
  (A348972.P942558158600498541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351435.P6108883380872985515

`A003959(n+1)*A048250(n+1)`
-/

namespace A351435.P6108883380872985515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A048250 (n + 1)

end

end A351435.P6108883380872985515

noncomputable section

/-- A351435: If n = Product (p_j^k_j) then a(n) = Product ((p_j + 1)^(k_j + 1)).

Offset 1, canonical program `A351435.P6108883380872985515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351435 (n : ℕ) : ℤ :=
  A351435.P6108883380872985515.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351435.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A355263.P11720169353840914261

`A053150(n+1)*A007947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355263.P11720169353840914261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1) * A007947 (n + 1)

end

end A355263.P11720169353840914261

noncomputable section

/-- A355263: a(n) = largest-nth-power(n, 3) * radical(n) = A053150(n) * A007947(n), where the largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

Offset 1, canonical program `A355263.P11720169353840914261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A053150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355263 (n : ℕ) : ℤ :=
  A355263.P11720169353840914261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A053150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355263.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A364500.P9425828981055553827

`gcd(A000027(n+1), A364499(n+1))`
-/

namespace A364500.P9425828981055553827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A364499 (n + 1))

end

end A364500.P9425828981055553827

noncomputable section

/-- A364500: a(n) = gcd(n, A005940(n)).

Offset 1, canonical program `A364500.P9425828981055553827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364500 (n : ℕ) : ℤ :=
  (A364500.P9425828981055553827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364500.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A365427.P1911992435203789611

`A336467(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365427.P1911992435203789611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336467 (A163511 n).toNat

end

end A365427.P1911992435203789611

noncomputable section

/-- A365427: a(n) = A336467(A163511(n)).

Offset 0, canonical program `A365427.P1911992435203789611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365427 (n : ℕ) : ℤ :=
  A365427.P1911992435203789611.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365427.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A366894.P17590388083815126484

`A336699(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366894.P17590388083815126484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (A163511 n).toNat

end

end A366894.P17590388083815126484

noncomputable section

/-- A366894: a(n) = A336699(A163511(n)).

Offset 0, canonical program `A366894.P17590388083815126484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336699, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366894 (n : ℕ) : ℤ :=
  A366894.P17590388083815126484.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336699, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368994.P10252783783940313295

`A121262(A342001(n+1))`
-/

namespace A368994.P10252783783940313295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A342001 (n + 1)).toNat

end

end A368994.P10252783783940313295

noncomputable section

/-- A368994: a(n) = 1 if A342001(k) is a multiple of four, and 0 otherwise.

Offset 1, canonical program `A368994.P10252783783940313295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368994 (n : ℕ) : ℤ :=
  A368994.P10252783783940313295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368994.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A379474.P1393438401902086563

`A331671(A170818(n+1)^A331671(n+1))`
-/

namespace A379474.P1393438401902086563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 (SequenceMachineLib.roundAway ((A170818 (n + 1) : ℚ) ^ (A331671 (n + 1) : ℤ))).toNat

end

end A379474.P1393438401902086563

noncomputable section

/-- A379474: Number of prime factors of the form p^e || n : [p == 1 (mod 8), e == 1 (mod 4)] or [p == 5 (mod 8), e == -1 (mod 4)].

Offset 1, canonical program `A379474.P1393438401902086563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A379474 (n : ℕ) : ℤ :=
  A379474.P1393438401902086563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A379474.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387710.P1843881796241010643

`lt[A003959(n+1), 2*(n+1)]+1`
-/

namespace A387710.P1843881796241010643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387710.P1843881796241010643

noncomputable section

/-- A387710: Numbers k for which A003959(k) < 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387710.P1843881796241010643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710 (n : ℕ) : ℤ :=
  (A387710.P1843881796241010643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387711.P8670169942287001865

`lt[2*(n+1), A003959(n+1)]+1`
-/

namespace A387711.P8670169942287001865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387711.P8670169942287001865

noncomputable section

/-- A387711: Numbers k for which A003959(k) > 2*k, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A387711.P8670169942287001865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711 (n : ℕ) : ℤ :=
  (A387711.P8670169942287001865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A220211.P14942763674959834382

`A000961(n+3)*(A000961(n+3)-1)`
-/

namespace A220211.P14942763674959834382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 3) * (A000961 (n + 3) - 1)

end

end A220211.P14942763674959834382

noncomputable section

/-- A220211: The order of the one-dimensional affine group in the finite fields F_q with q >= 3.

Offset 1, canonical program `A220211.P14942763674959834382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220211 (n : ℕ) : ℤ :=
  A220211.P14942763674959834382.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A220211.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A225679.P11481422747885452563

`A294649(record[A015053(n+1)])`
-/

namespace A225679.P11481422747885452563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A225679.P11481422747885452563

noncomputable section

/-- A225679: Numerators of phi(k)/k, as k runs through the squarefree numbers (A005117).

Offset 1, canonical program `A225679.P11481422747885452563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A225679 (n : ℕ) : ℤ :=
  A225679.P11481422747885452563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A225679.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A228172.P12083604075356451109

`A211340(n+1)+1+n`
-/

namespace A228172.P12083604075356451109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 1) + 1 + (n : ℤ)

end

end A228172.P12083604075356451109

noncomputable section

/-- A228172: Number of integer pairs (x,y) such that 0<=y<=x, x>0, and x^2+y^2<=n^2.

Offset 1, canonical program `A228172.P12083604075356451109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A228172 (n : ℕ) : ℤ :=
  A228172.P12083604075356451109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A228172.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A229739.P17412045617027735792

`A255499(A000961(n+1))`
-/

namespace A229739.P17412045617027735792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255499 (A000961 (n + 1)).toNat

end

end A229739.P17412045617027735792

noncomputable section

/-- A229739: a(n) = q^2*(q^2+2*q-1)/2, where q = n-th prime power A000961(n).

Offset 1, canonical program `A229739.P17412045617027735792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A229739 (n : ℕ) : ℤ :=
  A229739.P17412045617027735792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A229739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229740.P7271951831427761893

`A255501(A000961(n+1))`
-/

namespace A229740.P7271951831427761893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255501 (A000961 (n + 1)).toNat

end

end A229740.P7271951831427761893

noncomputable section

/-- A229740: a(n) = q^9/6+5*q^8/6+2*q^7/3-q^6/6-5*q^5/6+q^4/3 where q = n-th prime power A000961(n).

Offset 1, canonical program `A229740.P7271951831427761893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A229740 (n : ℕ) : ℤ :=
  A229740.P7271951831427761893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1281 terms. -/
def A229740.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A236384.P7308811538325743998

`A211340(n+1)-∑[A110654(n)]`
-/

namespace A236384.P7308811538325743998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236384.P7308811538325743998

noncomputable section

/-- A236384: Number of non-congruent integer triangles with base length n whose apex lies on or within a space bounded by a semicircle of diameter n.

Offset 1, canonical program `A236384.P7308811538325743998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A236384 (n : ℕ) : ℤ :=
  A236384.P7308811538325743998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A236384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244154.P3337909700138725317

`ceil(A005940(2*n+1)/2)`
-/

namespace A244154.P3337909700138725317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005940 (2 * n + 1) : ℚ) / 2⌉

end

end A244154.P3337909700138725317

noncomputable section

/-- A244154: Permutation of natural numbers: a(0) = 1, a(1) = 2, a(2n) = A254049(a(n)), a(2n+1) = 3*a(n)-1; composition of A048673 and A005940.

Offset 0, canonical program `A244154.P3337909700138725317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244154 (n : ℕ) : ℤ :=
  A244154.P3337909700138725317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A244154.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245877.P16878826278182840931

`∩[A245742(n+1), A245743(n+1)]`
-/

namespace A245877.P16878826278182840931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245877.P16878826278182840931

noncomputable section

/-- A245877: Primes p such that p - d and p + d are also primes, where d is the largest digit of p.

Offset 1, canonical program `A245877.P16878826278182840931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A245877 (n : ℕ) : ℤ :=
  (A245877.P16878826278182840931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A245877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246029.P17934479731839839263

`A181819(A005940(1+n))`
-/

namespace A246029.P17934479731839839263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A005940 (1 + n)).toNat

end

end A246029.P17934479731839839263

noncomputable section

/-- A246029: a(n) = Product_{i in row n of A245562} prime(i).

Offset 0, canonical program `A246029.P17934479731839839263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246029 (n : ℕ) : ℤ :=
  A246029.P17934479731839839263.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246551.P5525261904559874874

`filter[A000961(n+1), A066829(#)]`
-/

namespace A246551.P5525261904559874874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A246551.P5525261904559874874

noncomputable section

/-- A246551: Prime powers p^e where p is a prime and e is odd.

Offset 1, canonical program `A246551.P5525261904559874874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9618 terms. -/
def A246551 (n : ℕ) : ℤ :=
  A246551.P5525261904559874874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9618 terms. -/
def A246551.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A247587.P16386335736758002616

`∑[A211340(n+1)-A002620(n+1)-A046080(n+1)]`
-/

namespace A247587.P16386335736758002616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 1) - A002620 (n + 1) - A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247587.P16386335736758002616

noncomputable section

/-- A247587: Number of obtuse triangles with integer sides at most n.

Offset 1, canonical program `A247587.P16386335736758002616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A247587 (n : ℕ) : ℤ :=
  A247587.P16386335736758002616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A247587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253565.P12641530648498804568

`A005940(A145342(n+1))`
-/

namespace A253565.P12641530648498804568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A145342 (n + 1)).toNat

end

end A253565.P12641530648498804568

noncomputable section

/-- A253565: Permutation of natural numbers: a(0) = 1, a(1) = 2; after which, a(2n) = A253550(a(n)), a(2n+1) = A253560(a(n)).

Offset 0, canonical program `A253565.P12641530648498804568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A253565 (n : ℕ) : ℤ :=
  A253565.P12641530648498804568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A253565.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A268082.P7438264569753008377

`∪[A000961(n+1), A268083(n+1)]`
-/

namespace A268082.P7438264569753008377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268082.P7438264569753008377

noncomputable section

/-- A268082: Numbers n such that gcd(binomial(2*n-1,n), n) is equal to 1.

Offset 1, canonical program `A268082.P7438264569753008377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268082 (n : ℕ) : ℤ :=
  (A268082.P7438264569753008377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268082.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A289995.P2084561058592668144

`A000961(lt[Δ[A000961(n+1)], 3]+1)`
-/

namespace A289995.P2084561058592668144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A289995.P2084561058592668144

noncomputable section

/-- A289995: Numbers n with omega(n) <= 1 such that omega(n+1) = 1 or omega(n+2) = 1.

Offset 1, canonical program `A289995.P2084561058592668144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A289995 (n : ℕ) : ℤ :=
  A289995.P2084561058592668144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A289995.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A292145.P10793929954205415684

`(A013929(n+1)-A015049(n+1))²/A013929(n+1)`
-/

namespace A292145.P10793929954205415684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A013929 (n + 1) - A015049 (n + 1)) ^ 2 : ℚ) / (A013929 (n + 1) : ℚ)

end

end A292145.P10793929954205415684

noncomputable section

/-- A292145: A permutation of the natural numbers: A292144(A013929(n)).

Offset 1, canonical program `A292145.P10793929954205415684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292145 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A292145.P10793929954205415684.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292145.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A294236.P17835350661961876971

`∑[∑[n]%(n+1)]-A294145(n+1)`
-/

namespace A294236.P17835350661961876971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A294145 (n + 1)

end

end A294236.P17835350661961876971

noncomputable section

/-- A294236: Sum of the smaller parts of the partitions of n into two parts with larger part nonsquarefree.

Offset 1, canonical program `A294236.P17835350661961876971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294236 (n : ℕ) : ℤ :=
  A294236.P17835350661961876971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294236.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A295875.P17529281261708969201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A295297, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295875 (n : ℕ) : ℤ :=
  A295875.P17529281261708969201.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A295297, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 0, canonical program `A295896.P11963859378553721760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A053866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295896 (n : ℕ) : ℤ :=
  A295896.P11963859378553721760.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A053866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A295896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A302498.P11061753881118226107

`∩[A000961(n+1), A302593(n+1)]`
-/

namespace A302498.P11061753881118226107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302498.P11061753881118226107

noncomputable section

/-- A302498: Numbers that are a power of a prime number whose prime index is itself a power of a prime number.

Offset 1, canonical program `A302498.P11061753881118226107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A302498 (n : ℕ) : ℤ :=
  (A302498.P11061753881118226107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A302498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305215.P14039673426177141210

`A101207(A000961(n+1))`
-/

namespace A305215.P14039673426177141210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101207 (A000961 (n + 1)).toNat

end

end A305215.P14039673426177141210

noncomputable section

/-- A305215: a(n) is the number of numbers whose largest prime power factor equals A000961(n).

Offset 1, canonical program `A305215.P14039673426177141210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A305215 (n : ℕ) : ℤ :=
  A305215.P14039673426177141210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A305215.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A324055.P14690087279481986387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A033879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324055 (n : ℕ) : ℤ :=
  A324055.P14690087279481986387.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A033879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 0, canonical program `A324348.P8335576142218511792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A294898, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324348 (n : ℕ) : ℤ :=
  A324348.P8335576142218511792.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A294898, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

/-! ## A329886.P5199277837250869235

`a(A025480(n))*A005940(n+1)` with `a(0)=1`
-/

namespace A329886.P5199277837250869235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 n).toNat * A005940 (n + 1)

end

end A329886.P5199277837250869235

noncomputable section

/-- A329886: Primorial inflation of Doudna-tree: a(0) = 1, a(1) = 2; for n > 1, if n is even, a(n) = A283980(a(n/2)), and if n is odd, then a(n) = 2*a((n-1)/2).

Offset 0, canonical program `A329886.P5199277837250869235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329886 (n : ℕ) : ℤ :=
  A329886.P5199277837250869235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332769.P16402310088424160503

`A284447(A014681(n)+1)`
-/

namespace A332769.P16402310088424160503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (A014681 n + 1).toNat

end

end A332769.P16402310088424160503

noncomputable section

/-- A332769: Permutation of the positive integers: a(n) = A258996(A054429(n)) = A054429(A258996(n)).

Offset 1, canonical program `A332769.P16402310088424160503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A332769 (n : ℕ) : ℤ :=
  A332769.P16402310088424160503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A332769.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A335915.P17327428473756616044

`A336466(n+1)*A336467(n+1)`
-/

namespace A335915.P17327428473756616044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336466 (n + 1) * A336467 (n + 1)

end

end A335915.P17327428473756616044

noncomputable section

/-- A335915: Fully multiplicative with a(2) = 1, and a(p) = A000265(p-1)*A000265(p+1) = A000265(p^2 - 1), for odd primes p.

Offset 1, canonical program `A335915.P17327428473756616044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A336467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335915 (n : ℕ) : ℤ :=
  A335915.P17327428473756616044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A336467, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335915.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A337375.P11080918447601838183

`gcd(A005940(A003602(n+1)), A005940(n+1))`
-/

namespace A337375.P11080918447601838183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005940 (A003602 (n + 1)).toNat) (A005940 (n + 1))

end

end A337375.P11080918447601838183

noncomputable section

/-- A337375: a(n) = A330749(A005940(1+n)).

Offset 0, canonical program `A337375.P11080918447601838183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337375 (n : ℕ) : ℤ :=
  (A337375.P11080918447601838183.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337375.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A349129.P13556310181811753018

`∑{d}[n+1, A003958(#)*A003959((n+1)/#)]`
-/

namespace A349129.P13556310181811753018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003958 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349129.P13556310181811753018

noncomputable section

/-- A349129: a(n) = Sum_{d|n} A003958(d) * A003959(n/d), where A003958 is fully multiplicative with a(p) = (p-1), and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349129.P13556310181811753018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349129 (n : ℕ) : ℤ :=
  A349129.P13556310181811753018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349138.P8801393356759692262

`∑{d}[n+1, A349137(#)]`
-/

namespace A349138.P8801393356759692262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349137 d

end

end A349138.P8801393356759692262

noncomputable section

/-- A349138: Inverse Möbius transform of A349137, where A349137(n) = phi(A003602(n)).

Offset 1, canonical program `A349138.P8801393356759692262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349138 (n : ℕ) : ℤ :=
  A349138.P8801393356759692262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349141.P2326115559744657206

`∑{d}[n+1, #*A348971((n+1)/#)]`
-/

namespace A349141.P2326115559744657206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A348971 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349141.P2326115559744657206

noncomputable section

/-- A349141: a(n) = Sum_{d|n} phi(n/d) * A348507(d), where A348507(n) = A003959(n) - n, and A003959 is fully multiplicative with a(p) = (p+1).

Offset 1, canonical program `A349141.P2326115559744657206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349141 (n : ℕ) : ℤ :=
  A349141.P2326115559744657206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349141.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354344.P140278104913935227

`A014306(A131060(n))*A353637(n+1)`
-/

namespace A354344.P140278104913935227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A131060 n).toNat * A353637 (n + 1)

end

end A354344.P140278104913935227

noncomputable section

/-- A354344: a(n) = 1 if n is x * A005383(i), where x is either 2, 3, 8, 9 or 15 and i > 2 [i.e., A005383(i) > 5], otherwise 0.

Offset 1, canonical program `A354344.P140278104913935227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A354344 (n : ℕ) : ℤ :=
  A354344.P140278104913935227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A354344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355689.P15683903993202269668

`A359156(n+1)-A359158(n+1)`
-/

namespace A355689.P15683903993202269668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (n + 1) - A359158 (n + 1)

end

end A355689.P15683903993202269668

noncomputable section

/-- A355689: Dirichlet inverse of A166486, characteristic function of numbers that are not multiples of 4.

Offset 1, canonical program `A355689.P15683903993202269668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359156, A359158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355689 (n : ℕ) : ℤ :=
  A355689.P15683903993202269668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359156, A359158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355689.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A358061.P13972673680115757593

`A349137(Δ[n²])%∏{e}[n+1, #+1]`
-/

namespace A358061.P13972673680115757593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A358061.P13972673680115757593

noncomputable section

/-- A358061: a(n) = phi(n) mod tau(n).

Offset 1, canonical program `A358061.P13972673680115757593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358061 (n : ℕ) : ℤ :=
  A358061.P13972673680115757593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361148.P11997387026738742793

`A349137(Δ[n²])²²`
-/

namespace A361148.P11997387026738742793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A361148.P11997387026738742793

noncomputable section

/-- A361148: a(n) = phi(n)^4.

Offset 1, canonical program `A361148.P11997387026738742793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361148 (n : ℕ) : ℤ :=
  A361148.P11997387026738742793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361148.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A366799.P11529774657364513407

`A320111(A005940(1+n))`
-/

namespace A366799.P11529774657364513407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A005940 (1 + n)).toNat

end

end A366799.P11529774657364513407

noncomputable section

/-- A366799: Number of divisors d of n that are not of the form 4k+2, as permuted by the Doudna sequence.

Offset 0, canonical program `A366799.P11529774657364513407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A320111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366799 (n : ℕ) : ℤ :=
  A366799.P11529774657364513407.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A320111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366799.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A366835.P6254386400566994233

`A000720(A000961(n+3))-A000720(A000961(n+1))`
-/

namespace A366835.P6254386400566994233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000961 (n + 3)).toNat - A000720 (A000961 (n + 1)).toNat

end

end A366835.P6254386400566994233

noncomputable section

/-- A366835: In the pair (A246655(n), A246655(n+1)), how many primes are there?

Offset 1, canonical program `A366835.P6254386400566994233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9699 terms. -/
def A366835 (n : ℕ) : ℤ :=
  A366835.P6254386400566994233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9699 terms. -/
def A366835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368748.P2060391924120103936

`A001223(n+1)-A080101(n+1)-1`
-/

namespace A368748.P2060391924120103936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A080101 (n + 1) - 1

end

end A368748.P2060391924120103936

noncomputable section

/-- A368748: a(n) is the number of numbers between prime(n) and prime(n+1) that are not prime powers.

Offset 1, canonical program `A368748.P2060391924120103936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A080101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368748 (n : ℕ) : ℤ :=
  A368748.P2060391924120103936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A080101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368748.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A373643.P3675062936320699717

`A001223(n+1)-A061398(n+1)-A080101(n+1)-1`
-/

namespace A373643.P3675062936320699717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A061398 (n + 1) - A080101 (n + 1) - 1

end

end A373643.P3675062936320699717

noncomputable section

/-- A373643: Number of k between consecutive primes such that k is neither squarefree nor prime powers.

Offset 1, canonical program `A373643.P3675062936320699717`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A061398, A080101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373643 (n : ℕ) : ℤ :=
  A373643.P3675062936320699717.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, A061398, A080101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373643.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A382468.P18211153557140471714

`A304409(A006530(2*(n+2)))-A008472(n+2)`
-/

namespace A382468.P18211153557140471714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304409 (A006530 (2 * (n + 2))).toNat - A008472 (n + 2)

end

end A382468.P18211153557140471714

noncomputable section

/-- A382468: a(n) = (largest prime factor of n) minus (its remaining distinct prime factors).

Offset 2, canonical program `A382468.P18211153557140471714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382468 (n : ℕ) : ℤ :=
  A382468.P18211153557140471714.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383034.P6756115272342873254

`A306156(n+1)-A036987(n)`
-/

namespace A383034.P6756115272342873254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 1) - A036987 n

end

end A383034.P6756115272342873254

noncomputable section

/-- A383034: Inverse Weigh transform of 2^(n-1).

Offset 1, canonical program `A383034.P6756115272342873254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A383034 (n : ℕ) : ℤ :=
  A383034.P6756115272342873254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A383034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384716.P8291556497356693562

`A000010(n+1)*A290480(n+1)`
-/

namespace A384716.P8291556497356693562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A290480 (n + 1)

end

end A384716.P8291556497356693562

noncomputable section

/-- A384716: The totient of the product of unitary divisors of n.

Offset 1, canonical program `A384716.P8291556497356693562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384716 (n : ℕ) : ℤ :=
  A384716.P8291556497356693562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392218.P16910627991504591076

`∏{d}[A349137(2*n+1), #]`
-/

namespace A392218.P16910627991504591076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A392218.P16910627991504591076

noncomputable section

/-- A392218: Product of the divisors of phi(n).

Offset 1, canonical program `A392218.P16910627991504591076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218 (n : ℕ) : ℤ :=
  (A392218.P16910627991504591076.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. -/
def A392218.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A211634.P6971356143893170071

`A211635(n)+A063468(A028310(n))`
-/

namespace A211634.P6971356143893170071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211635 n + A063468 (A028310 n).toNat

end

end A211634.P6971356143893170071

noncomputable section

/-- A211634: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2<=x^2+y^2.

Offset 0, canonical program `A211634.P6971356143893170071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A211634 (n : ℕ) : ℤ :=
  A211634.P6971356143893170071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A211634.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A226176.P15595214845803153090

`∩[A014574(n+1), A057265(n+1)]`
-/

namespace A226176.P15595214845803153090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226176.P15595214845803153090

noncomputable section

/-- A226176: Refactorable numbers between a pair of twin primes.

Offset 1, canonical program `A226176.P15595214845803153090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A226176 (n : ℕ) : ℤ :=
  (A226176.P15595214845803153090.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A226176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227186.P1221522202037710042

`val(A163755(A002262(n)), A104887(n+1))`
-/

namespace A227186.P1221522202037710042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163755 (A002262 n).toNat).toNat (A104887 (n + 1)).toNat

end

end A227186.P1221522202037710042

noncomputable section

/-- A227186: Array A(n,k) read by antidiagonals: the length of the (k+1)-th run (k>=0) of binary digits of n, first run starting from the least significant bit of n.

Offset 0, canonical program `A227186.P1221522202037710042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227186 (n : ℕ) : ℤ :=
  (A227186.P1221522202037710042.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A227186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227326.P6185310335424459137

`∑{d}[n, #*A306156(#)]`
-/

namespace A227326.P6185310335424459137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A306156 d

end

end A227326.P6185310335424459137

noncomputable section

/-- A227326: a(2n) = 2a(n)+2^(2n), a(2n+1) = 2^(2n+1), a(0)=0.

Offset 0, canonical program `A227326.P6185310335424459137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A227326 (n : ℕ) : ℤ :=
  A227326.P6185310335424459137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A227326.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A230098.P1397761245252951239

`A080697(n+1)-A001248(n+1)`
-/

namespace A230098.P1397761245252951239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - A001248 (n + 1)

end

end A230098.P1397761245252951239

noncomputable section

/-- A230098: a(n) = n*prime(prime(n)) - prime(n)^2.

Offset 1, canonical program `A230098.P1397761245252951239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A080697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230098 (n : ℕ) : ℤ :=
  A230098.P1397761245252951239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A080697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230285.P13111388507637761220

`A080697(n+1)-A000040(n+1)`
-/

namespace A230285.P13111388507637761220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - A000040 (n + 1)

end

end A230285.P13111388507637761220

noncomputable section

/-- A230285: a(n) = n*prime(prime(n)) - prime(n).

Offset 1, canonical program `A230285.P13111388507637761220`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A080697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230285 (n : ℕ) : ℤ :=
  A230285.P13111388507637761220.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A080697, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230329.P11302817196728521229

`A217622(n+1)-A100484(n+1)`
-/

namespace A230329.P11302817196728521229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - A100484 (n + 1)

end

end A230329.P11302817196728521229

noncomputable section

/-- A230329: Prime(prime(2*n)) - 2*prime(n).

Offset 1, canonical program `A230329.P11302817196728521229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100484, A217622, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230329 (n : ℕ) : ℤ :=
  A230329.P11302817196728521229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100484, A217622, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A230329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A231551.P13473308692949281143

`A154437(A231550(A154437(n)))`
-/

namespace A231551.P13473308692949281143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A231550 (A154437 n).toNat).toNat

end

end A231551.P13473308692949281143

noncomputable section

/-- A231551: Position of n in A231550.

Offset 0, canonical program `A231551.P13473308692949281143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A231551 (n : ℕ) : ℤ :=
  A231551.P13473308692949281143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A231551.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A245589.P11946184601349858175

`∩[A075540(n+1), A240475(n+1)]`
-/

namespace A245589.P11946184601349858175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245589.P11946184601349858175

noncomputable section

/-- A245589: Primes which are the average of the two adjacent primes and also of the two adjacent squarefree numbers.

Offset 1, canonical program `A245589.P11946184601349858175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A245589 (n : ℕ) : ℤ :=
  (A245589.P11946184601349858175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A245589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259285.P7376159365787076354

`A025426(16*n+13)`
-/

namespace A259285.P7376159365787076354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (16 * n + 13)

end

end A259285.P7376159365787076354

noncomputable section

/-- A259285: Expansion of psi(x^2) * f(x, x^7) in powers of x where psi(), f(,) are Ramanujan theta functions.

Offset 0, canonical program `A259285.P7376159365787076354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259285 (n : ℕ) : ℤ :=
  A259285.P7376159365787076354.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259287.P2593529225509960214

`A025426(16*n+5)`
-/

namespace A259287.P2593529225509960214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (16 * n + 5)

end

end A259287.P2593529225509960214

noncomputable section

/-- A259287: Expansion of psi(x^2) * f(x^3, x^5) in powers of x where psi(), f(, ) are Ramanujan theta functions.

Offset 0, canonical program `A259287.P2593529225509960214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259287 (n : ℕ) : ℤ :=
  A259287.P2593529225509960214.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263559.P8053390118549948923

`A083186(n+1)%A007504(n+1)`
-/

namespace A263559.P8053390118549948923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083186 (n + 1)) (A007504 (n + 1))

end

end A263559.P8053390118549948923

noncomputable section

/-- A263559: a(n) = A083186(n) mod A007504(n).

Offset 1, canonical program `A263559.P8053390118549948923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263559 (n : ℕ) : ℤ :=
  A263559.P8053390118549948923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264101.P4487585031418735045

`eq[0, A025426(n)+A112603(n)+A052343(n)]`
-/

namespace A264101.P4487585031418735045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n + (A112603 n + A052343 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A264101.P4487585031418735045

noncomputable section

/-- A264101: Numbers that can't be represented as the sum of two squares, two triangular numbers, or a square and a triangular number.

Offset 1, canonical program `A264101.P4487585031418735045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A264101 (n : ℕ) : ℤ :=
  (A264101.P4487585031418735045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. -/
def A264101.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A275989.P8490521499288907832

`A072677(n+1)-A000040(n+1)`
-/

namespace A275989.P8490521499288907832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) - A000040 (n + 1)

end

end A275989.P8490521499288907832

noncomputable section

/-- A275989: a(n) = prime(prime(n)+1) - prime(n).

Offset 1, canonical program `A275989.P8490521499288907832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A072677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275989 (n : ℕ) : ℤ :=
  A275989.P8490521499288907832.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A072677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A275989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284459.P12780854704581567834

`A154437(A014681(n)+1)`
-/

namespace A284459.P12780854704581567834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A014681 n + 1).toNat

end

end A284459.P12780854704581567834

noncomputable section

/-- A284459: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A002487/A002487' (Calkin-Wilf) into the enumeration system A245327/A245328, and A162911/A162912 (Drib) into A020651/A020650 (Yu-Ting inverted).

Offset 1, canonical program `A284459.P12780854704581567834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284459 (n : ℕ) : ℤ :=
  A284459.P12780854704581567834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284459.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A323503.P2031337210637551510

`A322827(2*n)/A322827(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323503.P2031337210637551510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322827 (2 * n) : ℚ) / (A322827 n : ℚ)

end

end A323503.P2031337210637551510

noncomputable section

/-- A323503: a(n) = A322827(2n) / A322827(n).

Offset 0, canonical program `A323503.P2031337210637551510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322827, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323503.P2031337210637551510.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322827, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323504.P6557596497636559226

`A322827(2*n+1)/A322827(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323504.P6557596497636559226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322827 (2 * n + 1) : ℚ) / (A322827 n : ℚ)

end

end A323504.P6557596497636559226

noncomputable section

/-- A323504: a(n) = A322827(2n+1) / A322827(n).

Offset 0, canonical program `A323504.P6557596497636559226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322827, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323504.P6557596497636559226.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322827, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323507.P15160612703458864707

`A322827(n)/A322827(floor(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323507.P15160612703458864707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322827 n : ℚ) / (A322827 ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A323507.P15160612703458864707

noncomputable section

/-- A323507: a(n) = A322827(n) / A322827(floor(n/2)).

Offset 0, canonical program `A323507.P15160612703458864707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322827, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323507 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323507.P15160612703458864707.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322827, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324383.P15879416955097442241

`A276150(A322827(n))`
-/

namespace A324383.P15879416955097442241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A322827 n).toNat

end

end A324383.P15879416955097442241

noncomputable section

/-- A324383: a(n) is the minimal number of primorials that add to A322827(n).

Offset 0, canonical program `A324383.P15879416955097442241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A322827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324383 (n : ℕ) : ℤ :=
  A324383.P15879416955097442241.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A322827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324383.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333242.P15485222647587077682

`A000720(A262275(n+1)+1)`
-/

namespace A333242.P15485222647587077682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A262275 (n + 1) + 1).toNat

end

end A333242.P15485222647587077682

noncomputable section

/-- A333242: Prime numbers with an odd number of steps in their prime index chain.

Offset 1, canonical program `A333242.P15485222647587077682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333242 (n : ℕ) : ℤ :=
  A333242.P15485222647587077682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A262275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333242.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A333572.P17790517561337561290

`4*A333573(n+1)`
-/

namespace A333572.P17790517561337561290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A333573 (n + 1)

end

end A333572.P17790517561337561290

noncomputable section

/-- A333572: a(n) is the number of Gaussian integers z with 0 < |z| <= n/2.

Offset 1, canonical program `A333572.P17790517561337561290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A333572 (n : ℕ) : ℤ :=
  A333572.P17790517561337561290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A333572.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340077.P4965275238882389020

`record[A000265(A339879(n+1))]`
-/

namespace A340077.P4965275238882389020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A339879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340077.P4965275238882389020

noncomputable section

/-- A340077: Odd numbers k for which k-1 is a multiple of A053575(k) [the odd part of phi(k)].

Offset 1, canonical program `A340077.P4965275238882389020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9673 terms. -/
def A340077 (n : ℕ) : ℤ :=
  A340077.P4965275238882389020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9673 terms. -/
def A340077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340865.P10425759993813930341

`∩[A106483(n+1), A172438(n+1)]`
-/

namespace A340865.P10425759993813930341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P10425759993813930341

noncomputable section

/-- A340865: Primes p such that (p^2 + 1)/2 and 2*p^2 - 1 are also prime.

Offset 1, canonical program `A340865.P10425759993813930341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 555 terms. -/
def A340865 (n : ℕ) : ℤ :=
  (A340865.P10425759993813930341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 555 terms. -/
def A340865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343030.P6588649687182581724

`A014081(A154437(n))`
-/

namespace A343030.P6588649687182581724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A154437 n).toNat

end

end A343030.P6588649687182581724

noncomputable section

/-- A343030: Number of 1-bits in the binary expansion of n which have an odd number of 0-bits at less significant bit positions.

Offset 0, canonical program `A343030.P6588649687182581724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A343030 (n : ℕ) : ℤ :=
  A343030.P6588649687182581724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A343030.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A345048.P15501208074800543925

`A342001(n+1)*A051709(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345048.P15501208074800543925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 1) * A051709 (n + 1)

end

end A345048.P15501208074800543925

noncomputable section

/-- A345048: a(n) = A342001(n) * A051709(n).

Offset 1, canonical program `A345048.P15501208074800543925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051709, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345048 (n : ℕ) : ℤ :=
  A345048.P15501208074800543925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051709, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349981.P5474034835329325920

`∩[A014574(n+1), A068017(n+1)]`
-/

namespace A349981.P5474034835329325920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349981.P5474034835329325920

noncomputable section

/-- A349981: Midpoints k of a pair of twin primes such that sigma(k) is also the midpoint of a pair of twin primes.

Offset 1, canonical program `A349981.P5474034835329325920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A349981 (n : ℕ) : ℤ :=
  (A349981.P5474034835329325920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A349981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351115.P9694729978401219806

`∑[A351114(n+1)]`
-/

namespace A351115.P9694729978401219806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351115.P9694729978401219806

noncomputable section

/-- A351115: Number of balanced numbers <= n.

Offset 1, canonical program `A351115.P9694729978401219806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351115 (n : ℕ) : ℤ :=
  A351115.P9694729978401219806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351116.P16264301309237612569

`∑[(n+1)*A351114(n+1)]`
-/

namespace A351116.P16264301309237612569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351116.P16264301309237612569

noncomputable section

/-- A351116: Sum of the balanced numbers <= n.

Offset 1, canonical program `A351116.P16264301309237612569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351116 (n : ℕ) : ℤ :=
  A351116.P16264301309237612569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353022.P11468291543949970931

`∩[A014574(n+1), A382133(n+1)]`
-/

namespace A353022.P11468291543949970931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353022.P11468291543949970931

noncomputable section

/-- A353022: Products of four distinct primes between twin primes.

Offset 1, canonical program `A353022.P11468291543949970931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A353022 (n : ℕ) : ℤ :=
  (A353022.P11468291543949970931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A353022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357905.P13685105207051734525

`val(A319100(n+1), 3)`
-/

namespace A357905.P13685105207051734525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319100 (n + 1)).toNat 3

end

end A357905.P13685105207051734525

noncomputable section

/-- A357905: a(n) = log_3(A060839(n)).

Offset 1, canonical program `A357905.P13685105207051734525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357905 (n : ℕ) : ℤ :=
  (A357905.P13685105207051734525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363631.P17820446628079016110

`A363630(n+1)-A320901(n+1)`
-/

namespace A363631.P17820446628079016110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363630 (n + 1) - A320901 (n + 1)

end

end A363631.P17820446628079016110

noncomputable section

/-- A363631: Expansion of Sum_{k>0} (1/(1+x^k)^4 - 1).

Offset 1, canonical program `A363631.P17820446628079016110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363631 (n : ℕ) : ℤ :=
  A363631.P17820446628079016110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363631.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386594.P15827319157028247676

`∑{d}[n+1, #*A351114((n+1)/#)]`
-/

namespace A386594.P15827319157028247676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A351114 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386594.P15827319157028247676

noncomputable section

/-- A386594: a(n) = Sum_{d|n} d * c(n/d), where c = A351114.

Offset 1, canonical program `A386594.P15827319157028247676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386594 (n : ℕ) : ℤ :=
  A386594.P15827319157028247676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387935.P13157778175235146584

`∪[A014574(n+1), A088763(n+1)]`
-/

namespace A387935.P13157778175235146584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387935.P13157778175235146584

noncomputable section

/-- A387935: Numbers k such that Sum_{i=1..r} (k-i) and Sum_{i=1..s} (k+i) are both prime (A000040) for some 1 <= r < k, 1 <= s < k.

Offset 1, canonical program `A387935.P13157778175235146584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387935 (n : ℕ) : ℤ :=
  (A387935.P13157778175235146584.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244095.P10181876482107747881

`∩[A001043(n+1)²+1, A002496(n+1)]`
-/

namespace A244095.P10181876482107747881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244095.P10181876482107747881

noncomputable section

/-- A244095: Primes of the form (p + q)^2 + 1, where p and q are consecutive primes.

Offset 1, canonical program `A244095.P10181876482107747881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. -/
def A244095 (n : ℕ) : ℤ :=
  (A244095.P10181876482107747881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. -/
def A244095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248742.P24607167252977039

`∪[A002496(n+1), A144255(n+1)]`
-/

namespace A248742.P24607167252977039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248742.P24607167252977039

noncomputable section

/-- A248742: Numbers of the form x^2+1 with at most two prime factors.

Offset 1, canonical program `A248742.P24607167252977039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248742 (n : ℕ) : ℤ :=
  (A248742.P24607167252977039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323761.P17464288942560498770

`A211776(n+1)/A266265(n+1)*A323760(n+1)`
-/

namespace A323761.P17464288942560498770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) : ℚ) / (A266265 (n + 1) : ℚ) * (A323760 (n + 1) : ℚ)

end

end A323761.P17464288942560498770

noncomputable section

/-- A323761: Denominator of Product_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k and tau(k) = the number of the divisors of k.

Offset 1, canonical program `A323761.P17464288942560498770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A323761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323761.P17464288942560498770.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A323761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325437.P15815788262768055512

`A002496(n+1)%10`
-/

namespace A325437.P15815788262768055512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002496 (n + 1)) 10

end

end A325437.P15815788262768055512

noncomputable section

/-- A325437: Final digit of primes of the form k^2 + 1.

Offset 1, canonical program `A325437.P15815788262768055512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325437 (n : ℕ) : ℤ :=
  A325437.P15815788262768055512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325437.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A351112.P18121164159424966537

`∑{d}[n+1, A351114(#)]`
-/

namespace A351112.P18121164159424966537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351114 d

end

end A351112.P18121164159424966537

noncomputable section

/-- A351112: Number of balanced numbers dividing n.

Offset 1, canonical program `A351112.P18121164159424966537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351112 (n : ℕ) : ℤ :=
  A351112.P18121164159424966537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351113.P14871538275720612314

`∑{d}[n+1, #*A351114(#)]`
-/

namespace A351113.P14871538275720612314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A351114 d

end

end A351113.P14871538275720612314

noncomputable section

/-- A351113: Sum of the balanced numbers dividing n.

Offset 1, canonical program `A351113.P14871538275720612314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351113 (n : ℕ) : ℤ :=
  A351113.P14871538275720612314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357685.P8590542068992344568

`∪[A087248(n+1), A357686(n+1)]`
-/

namespace A357685.P8590542068992344568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A357685.P8590542068992344568

noncomputable section

/-- A357685: Numbers k such that A293228(k) > k.

Offset 1, canonical program `A357685.P8590542068992344568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357685 (n : ℕ) : ℤ :=
  (A357685.P8590542068992344568.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370395.P6591152245152172924

`A061368(n+2)+1`
-/

namespace A370395.P6591152245152172924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 2) + 1

end

end A370395.P6591152245152172924

noncomputable section

/-- A370395: Numbers k that are neither squarefree nor prime powers sandwiched between twin primes.

Offset 1, canonical program `A370395.P6591152245152172924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370395 (n : ℕ) : ℤ :=
  A370395.P6591152245152172924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379762.P18428336242211905384

`∩[A046386(n+1), A087248(n+1)]`
-/

namespace A379762.P18428336242211905384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P18428336242211905384

noncomputable section

/-- A379762: Products of 4 distinct prime numbers (or tetraprimes) that are abundant.

Offset 1, canonical program `A379762.P18428336242211905384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A379762 (n : ℕ) : ℤ :=
  (A379762.P18428336242211905384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. -/
def A379762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391428.P16960108032895023113

`A087248(n+1)²`
-/

namespace A391428.P16960108032895023113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1) ^ 2

end

end A391428.P16960108032895023113

noncomputable section

/-- A391428: Exponential abundant numbers that are squares of squarefree numbers.

Offset 1, canonical program `A391428.P16960108032895023113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428 (n : ℕ) : ℤ :=
  A391428.P16960108032895023113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391428.provenance : SequenceMachineLib.Provenance := .conditional

