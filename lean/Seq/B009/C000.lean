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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B008.C000
import Seq.B008.C001

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A010996.P13804346916523162447

`∑[A010995(n)]`
-/

namespace A010996.P13804346916523162447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010995 (n + 42)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010996.P13804346916523162447

noncomputable section

/-- A010996: Binomial coefficient C(n,43).

Offset 43, canonical program `A010996.P13804346916523162447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A010996 (n : ℕ) : ℤ :=
  A010996.P13804346916523162447.a (n - 43)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A010996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035710.P13564547953895892364

`∑[2*A035709(n)]-A035709(n)`
-/

namespace A035710.P13564547953895892364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035709 n

end

end A035710.P13564547953895892364

noncomputable section

/-- A035710: Coordination sequence for 15-dimensional cubic lattice.

Offset 0, canonical program `A035710.P13564547953895892364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035710 (n : ℕ) : ℤ :=
  A035710.P13564547953895892364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035751.P3779261215358215633

`A035709(2*n)`
-/

namespace A035751.P3779261215358215633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035709 (2 * n)

end

end A035751.P3779261215358215633

noncomputable section

/-- A035751: Coordination sequence for C_14 lattice.

Offset 0, canonical program `A035751.P3779261215358215633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035751 (n : ℕ) : ℤ :=
  A035751.P3779261215358215633.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A035751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038998.P13847443061910831702

`∑{d}[n+1, #*A038997(#)]`
-/

namespace A038998.P13847443061910831702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038997 d

end

end A038998.P13847443061910831702

noncomputable section

/-- A038998: Sublattices of index n in generic 11-dimensional lattice.

Offset 1, canonical program `A038998.P13847443061910831702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038998 (n : ℕ) : ℤ :=
  A038998.P13847443061910831702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064693.P14262218597709513042

`A064692(n)+1`
-/

namespace A064693.P14262218597709513042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n + 1

end

end A064693.P14262218597709513042

noncomputable section

/-- A064693: Number of connected components remaining when decimal expansion of the number n is cut from a piece of paper.

Offset 0, canonical program `A064693.P14262218597709513042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064693 (n : ℕ) : ℤ :=
  A064693.P14262218597709513042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067987.P9146074122802755408

`A067986(n)+A067985(n)`
-/

namespace A067987.P9146074122802755408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067986 n + A067985 n

end

end A067987.P9146074122802755408

noncomputable section

/-- A067987: Convolution of L(n+1) := A000204(n+1) (Lucas), n>=0, with L(n+9), n>=0.

Offset 0, canonical program `A067987.P9146074122802755408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A067987 (n : ℕ) : ℤ :=
  A067987.P9146074122802755408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A067987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073139.P11839161840558189667

`A319650(A073137(n))`
-/

namespace A073139.P11839161840558189667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319650 (A073137 n).toNat

end

end A073139.P11839161840558189667

noncomputable section

/-- A073139: Difference between the largest and smallest number having in binary representation the same number of 0's and 1's as n.

Offset 0, canonical program `A073139.P11839161840558189667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073139 (n : ℕ) : ℤ :=
  A073139.P11839161840558189667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081493.P16441661050706052862

`A003056(n)+A079904(n)+1`
-/

namespace A081493.P16441661050706052862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A079904 n + 1)

end

end A081493.P16441661050706052862

noncomputable section

/-- A081493: Triangle T(n,k) read by rows in which the n-th row begins with T(n,1) = n and contains n terms of an arithmetic progression with a common difference of (n-1).

Offset 1, canonical program `A081493.P16441661050706052862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081493 (n : ℕ) : ℤ :=
  A081493.P16441661050706052862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087401.P10568550885334757291

`A079904(n)-A112367(n)`
-/

namespace A087401.P10568550885334757291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n - A112367 n

end

end A087401.P10568550885334757291

noncomputable section

/-- A087401: Triangle of n*r-binomial(r+1,2).

Offset 0, canonical program `A087401.P10568550885334757291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087401 (n : ℕ) : ℤ :=
  A087401.P10568550885334757291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091435.P17438393200841062209

`A079904(A061579(n))`
-/

namespace A091435.P17438393200841062209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (A061579 n).toNat

end

end A091435.P17438393200841062209

noncomputable section

/-- A091435: Array T(n,k) = n*(n+k), read by antidiagonals.

Offset 0, canonical program `A091435.P17438393200841062209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091435 (n : ℕ) : ℤ :=
  A091435.P17438393200841062209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096038.P12246479114707872370

`A096037(n+1)-1`
-/

namespace A096038.P12246479114707872370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - 1

end

end A096038.P12246479114707872370

noncomputable section

/-- A096038: Triangle T(n,m) = (3*n^2-3*m^2+5*m-4+n)/2 read by rows.

Offset 1, canonical program `A096038.P12246479114707872370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096038 (n : ℕ) : ℤ :=
  A096038.P12246479114707872370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104716.P16250963704566436174

`2*A104634(n+1)-A000217(A004736(n+1))`
-/

namespace A104716.P16250963704566436174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104634 (n + 1) - A000217 (A004736 (n + 1)).toNat

end

end A104716.P16250963704566436174

noncomputable section

/-- A104716: Triangle T(n,k) = (2k-3+4n)*(k-1-n)*(k-2-n)/6, 1<=k<=n.

Offset 1, canonical program `A104716.P16250963704566436174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104716 (n : ℕ) : ℤ :=
  A104716.P16250963704566436174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107508.P7353133713727071130

`A035750(n)-13*A035606(n)`
-/

namespace A107508.P7353133713727071130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035750 n - 13 * A035606 n

end

end A107508.P7353133713727071130

noncomputable section

/-- A107508: Coordination sequence for D_13 lattice.

Offset 0, canonical program `A107508.P7353133713727071130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107508 (n : ℕ) : ℤ :=
  A107508.P7353133713727071130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110449.P13707820135664646576

`A057944(n)+A003056(n)*A079904(n)`
-/

namespace A110449.P13707820135664646576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003056 n * A079904 n

end

end A110449.P13707820135664646576

noncomputable section

/-- A110449: Triangle read by rows: T(n,k) = n*((2*k+1)*n+1)/2, 0<=k<=n.

Offset 0, canonical program `A110449.P13707820135664646576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110449 (n : ℕ) : ℤ :=
  A110449.P13707820135664646576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126890.P13067422002995229557

`A079904(n)+A057944(n)`
-/

namespace A126890.P13067422002995229557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A057944 n

end

end A126890.P13067422002995229557

noncomputable section

/-- A126890: Triangle read by rows: T(n,k) = n*(n+2*k+1)/2, 0 <= k <= n.

Offset 0, canonical program `A126890.P13067422002995229557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126890 (n : ℕ) : ℤ :=
  A126890.P13067422002995229557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128116.P12706371843886189910

`A096037(n+1)-A101447(n)`
-/

namespace A128116.P12706371843886189910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A101447 n

end

end A128116.P12706371843886189910

noncomputable section

/-- A128116: A128064 * A122432 (unsigned).

Offset 1, canonical program `A128116.P12706371843886189910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128116 (n : ℕ) : ℤ :=
  A128116.P12706371843886189910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128142.P9126956890442312540

`A104634(n+1)+C(A004736(n+1), 3)`
-/

namespace A128142.P9126956890442312540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + (Nat.choose (A004736 (n + 1)).toNat 3 : ℤ)

end

end A128142.P9126956890442312540

noncomputable section

/-- A128142: A128132 * A122432 (unsigned).

Offset 1, canonical program `A128142.P9126956890442312540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128142 (n : ℕ) : ℤ :=
  A128142.P9126956890442312540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131032.P456656783028038968

`ceil(ratio[2*A079904(n)+1])`
-/

namespace A131032.P456656783028038968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079904 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A131032.P456656783028038968

noncomputable section

/-- A131032: A097806 * A130296.

Offset 1, canonical program `A131032.P456656783028038968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131032 (n : ℕ) : ℤ :=
  A131032.P456656783028038968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132111.P3713491471241087217

`A079904(n)+A069011(n)`
-/

namespace A132111.P3713491471241087217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A069011 n

end

end A132111.P3713491471241087217

noncomputable section

/-- A132111: Triangle read by rows: T(n,k) = n^2 + k*n + k^2, 0 <= k <= n.

Offset 0, canonical program `A132111.P3713491471241087217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132111 (n : ℕ) : ℤ :=
  A132111.P3713491471241087217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133091.P6564816861379254758

`gcd(2*A002260(n+1), A128228(n+1))`
-/

namespace A133091.P6564816861379254758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A002260 (n + 1)) (A128228 (n + 1))

end

end A133091.P6564816861379254758

noncomputable section

/-- A133091: A133080 * A002260.

Offset 1, canonical program `A133091.P6564816861379254758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133091 (n : ℕ) : ℤ :=
  (A133091.P6564816861379254758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136581.P5726716619279127359

`A094587(n)*A136579(n)`
-/

namespace A136581.P5726716619279127359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A136579 n

end

end A136581.P5726716619279127359

noncomputable section

/-- A136581: Triangle read by rows: A136572 * A128174.

Offset 0, canonical program `A136581.P5726716619279127359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A136581 (n : ℕ) : ℤ :=
  A136581.P5726716619279127359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A136581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141662.P15333316537351910189

`abs(A059036(n)-A079904(n))`
-/

namespace A141662.P15333316537351910189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059036 n - A079904 n|

end

end A141662.P15333316537351910189

noncomputable section

/-- A141662: Triangle read by rows, T(n,m) = abs(n - m^2).

Offset 0, canonical program `A141662.P15333316537351910189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141662 (n : ℕ) : ℤ :=
  A141662.P15333316537351910189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144204.P15164700038722631133

`A079904(n)-1`
-/

namespace A144204.P15164700038722631133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n - 1

end

end A144204.P15164700038722631133

noncomputable section

/-- A144204: Array A(k,n) = (n+k-2)*(n-1) - 1 (k >= 1, n >= 1) read by antidiagonals.

Offset 1, canonical program `A144204.P15164700038722631133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144204 (n : ℕ) : ℤ :=
  A144204.P15164700038722631133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155551.P164788176589614961

`A155550(n+1)-3`
-/

namespace A155551.P164788176589614961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) - 3

end

end A155551.P164788176589614961

noncomputable section

/-- A155551: Triangle read by rows where T(m,n)=2*m*n + m + n - 9.

Offset 1, canonical program `A155551.P164788176589614961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155551 (n : ℕ) : ℤ :=
  A155551.P164788176589614961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159797.P12777153155351090962

`A079904(n)+A025581(n)`
-/

namespace A159797.P12777153155351090962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A025581 n

end

end A159797.P12777153155351090962

noncomputable section

/-- A159797: Triangle read by rows in which row n lists n+1 terms, starting with n, such that the difference between successive terms is equal to n-1.

Offset 0, canonical program `A159797.P12777153155351090962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159797 (n : ℕ) : ℤ :=
  A159797.P12777153155351090962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162245.P15522191768179687631

`3*A155705(n+1)-5`
-/

namespace A162245.P15522191768179687631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A155705 (n + 1) - 5

end

end A162245.P15522191768179687631

noncomputable section

/-- A162245: Triangle T(n,m) = 6*m*n + 3*m + 3*n + 1 read by rows.

Offset 1, canonical program `A162245.P15522191768179687631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162245 (n : ℕ) : ℤ :=
  A162245.P15522191768179687631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162610.P7827333575211813800

`A131507(n)+A079904(n)`
-/

namespace A162610.P7827333575211813800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + A079904 n

end

end A162610.P7827333575211813800

noncomputable section

/-- A162610: Triangle read by rows in which row n lists n terms, starting with 2n-1, with gaps = n-1 between successive terms.

Offset 1, canonical program `A162610.P7827333575211813800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162610 (n : ℕ) : ℤ :=
  A162610.P7827333575211813800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162614.P257456511153718467

`A025581(n)+A003056(n)²*A079904(n)`
-/

namespace A162614.P257456511153718467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A003056 n ^ 2 * A079904 n

end

end A162614.P257456511153718467

noncomputable section

/-- A162614: Triangle read by rows in which row n lists n+1 terms, starting with n, such that the difference between successive terms is equal to n^3 - 1.

Offset 0, canonical program `A162614.P257456511153718467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162614 (n : ℕ) : ℤ :=
  A162614.P257456511153718467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163282.P9703258445285592584

`(A079904(n)+A025581(n))*A003056(n)`
-/

namespace A163282.P9703258445285592584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079904 n + A025581 n) * A003056 n

end

end A163282.P9703258445285592584

noncomputable section

/-- A163282: Triangle read by rows in which row n lists n+1 terms, starting with n^2 and ending with n^3, such that difference between successive terms is equal to n^2 - n.

Offset 0, canonical program `A163282.P9703258445285592584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163282 (n : ℕ) : ℤ :=
  A163282.P9703258445285592584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163657.P2784034745379012211

`A163652(n+1)+2`
-/

namespace A163657.P2784034745379012211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) + 2

end

end A163657.P2784034745379012211

noncomputable section

/-- A163657: Triangle T(m,n) = 2*m*n + m + n + 8 read by rows.

Offset 1, canonical program `A163657.P2784034745379012211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163657 (n : ℕ) : ℤ :=
  A163657.P2784034745379012211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163672.P97015289542930309

`A163652(n+1)+1`
-/

namespace A163672.P97015289542930309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) + 1

end

end A163672.P97015289542930309

noncomputable section

/-- A163672: Triangle T(n,m) = 2mn + m + n + 7 read by rows.

Offset 1, canonical program `A163672.P97015289542930309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163672 (n : ℕ) : ℤ :=
  A163672.P97015289542930309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164884.P8281495825813713226

`A319650(n)+A048967(n)`
-/

namespace A164884.P8281495825813713226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319650 n + A048967 n

end

end A164884.P8281495825813713226

noncomputable section

/-- A164884: a(n) = image of n under the base-2 Kaprekar map n -> (n with digits sorted into descending order) - (n with digits sorted into ascending order).

Offset 0, canonical program `A164884.P8281495825813713226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164884 (n : ℕ) : ℤ :=
  A164884.P8281495825813713226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172090.P16523150407882409080

`C(A157458(n), C(A157458(n), 2))`
-/

namespace A172090.P16523150407882409080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A157458 n).toNat (Nat.choose (A157458 n).toNat 2)

end

end A172090.P16523150407882409080

noncomputable section

/-- A172090: Triangle T(n, k) = f(n-k) + f(k) - f(n), where f(n) = -3*n with f(0) = 1, f(1) = -2, read by rows.

Offset 0, canonical program `A172090.P16523150407882409080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A172090 (n : ℕ) : ℤ :=
  (A172090.P16523150407882409080.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A172090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174377.P13587580538317066246

`A108411(A157458(n))*A159623(n)`
-/

namespace A174377.P13587580538317066246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A157458 n).toNat * A159623 n

end

end A174377.P13587580538317066246

noncomputable section

/-- A174377: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 3, read by rows.

Offset 0, canonical program `A174377.P13587580538317066246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174377 (n : ℕ) : ℤ :=
  A174377.P13587580538317066246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193976.P17233718569355432960

`A104634(n+1)+abs(A122432(n))`
-/

namespace A193976.P17233718569355432960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + |A122432 n|

end

end A193976.P17233718569355432960

noncomputable section

/-- A193976: Mirror of the triangle A193975.

Offset 0, canonical program `A193976.P17233718569355432960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193976 (n : ℕ) : ℤ :=
  A193976.P17233718569355432960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194959.P7468883608781216461

`A157458(n)+A101688(n)`
-/

namespace A194959.P7468883608781216461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 n + A101688 n

end

end A194959.P7468883608781216461

noncomputable section

/-- A194959: Fractalization of (1 + floor(n/2)).

Offset 1, canonical program `A194959.P7468883608781216461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194959 (n : ℕ) : ℤ :=
  A194959.P7468883608781216461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202267.P5737386404805848355

`eq[A055641(n), A064692(n)]`
-/

namespace A202267.P5737386404805848355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A202267.P5737386404805848355

noncomputable section

/-- A202267: Numbers in which all digits are noncomposites (1, 2, 3, 5, 7) or 0.

Offset 1, canonical program `A202267.P5737386404805848355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A202267 (n : ℕ) : ℤ :=
  (A202267.P5737386404805848355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A202267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204004.P16766842814256869288

`A203998(n+1)-A004247(n)`
-/

namespace A204004.P16766842814256869288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203998 (n + 1) - A004247 n

end

end A204004.P16766842814256869288

noncomputable section

/-- A204004: Symmetric matrix based on f(i,j) = max{2i+j-2,i+2j-2}, by antidiagonals.

Offset 1, canonical program `A204004.P16766842814256869288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204004 (n : ℕ) : ℤ :=
  A204004.P16766842814256869288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204016.P18052484230199461045

`A027656(xor(1, A157458(n)))`
-/

namespace A204016.P18052484230199461045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Int.xor 1 (A157458 n)).toNat

end

end A204016.P18052484230199461045

noncomputable section

/-- A204016: Symmetric matrix based on f(i,j) = max(j mod i, i mod j), by antidiagonals.

Offset 1, canonical program `A204016.P18052484230199461045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204016 (n : ℕ) : ℤ :=
  A204016.P18052484230199461045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204237.P6099322334008855491

`A204156(n+1)+1`
-/

namespace A204237.P6099322334008855491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204156 (n + 1) + 1

end

end A204237.P6099322334008855491

noncomputable section

/-- A204237: Symmetric matrix given by f(i,j)=max(3i-j,3j-i).

Offset 1, canonical program `A204237.P6099322334008855491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204237 (n : ℕ) : ℤ :=
  A204237.P6099322334008855491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205016.P2286842531164054448

`2*A193974(n)`
-/

namespace A205016.P2286842531164054448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193974 n

end

end A205016.P2286842531164054448

noncomputable section

/-- A205016: Ordered differences of oblong numbers.

Offset 1, canonical program `A205016.P2286842531164054448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205016 (n : ℕ) : ℤ :=
  A205016.P2286842531164054448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205136.P11482582398427600183

`A096037(n+1)+A099375(n)+1`
-/

namespace A205136.P11482582398427600183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) + (A099375 n + 1)

end

end A205136.P11482582398427600183

noncomputable section

/-- A205136: Ordered differences of distinct pentagonal numbers.

Offset 1, canonical program `A205136.P11482582398427600183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205136 (n : ℕ) : ℤ :=
  A205136.P11482582398427600183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205694.P16272218153168622312

`A000040(A205692(n+1))`
-/

namespace A205694.P16272218153168622312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205692 (n + 1)).toNat

end

end A205694.P16272218153168622312

noncomputable section

/-- A205694: Prime(A205692(n)), the n-th number s(j) such that 6 divides s(k)-s(j), where the pairs (k,j) are given by A205691 and A205692.

Offset 1, canonical program `A205694.P16272218153168622312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205694 (n : ℕ) : ℤ :=
  A205694.P16272218153168622312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206439.P11690255037767737143

`∑[A064692(n)]`
-/

namespace A206439.P11690255037767737143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206439.P11690255037767737143

noncomputable section

/-- A206439: Partial sums of A064692.

Offset 0, canonical program `A206439.P11690255037767737143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206439 (n : ℕ) : ℤ :=
  A206439.P11690255037767737143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209330.P6268406421257850917

`C(A003056(n)², A079904(n))`
-/

namespace A209330.P6268406421257850917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A079904 n).toNat

end

end A209330.P6268406421257850917

noncomputable section

/-- A209330: Triangle defined by T(n,k) = binomial(n^2, n*k), for n>=0, k=0..n, as read by rows.

Offset 0, canonical program `A209330.P6268406421257850917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A209330 (n : ℕ) : ℤ :=
  (A209330.P6268406421257850917.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A209330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213750.P11543633709042919296

`2*A213500(n+1)-abs(A122432(n))`
-/

namespace A213750.P11543633709042919296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213500 (n + 1) - |A122432 n|

end

end A213750.P11543633709042919296

noncomputable section

/-- A213750: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = 2*(n-1+h)-1, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213750.P11543633709042919296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213750 (n : ℕ) : ℤ :=
  A213750.P11543633709042919296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213751.P3389573996948061720

`A104634(n+1)+A062707(n)`
-/

namespace A213751.P3389573996948061720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) + A062707 n

end

end A213751.P3389573996948061720

noncomputable section

/-- A213751: Rectangular array: (row n) = b**c, where b(h) = 2*h-1, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213751.P3389573996948061720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213751 (n : ℕ) : ℤ :=
  A213751.P3389573996948061720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228832.P4962165100805570608

`C(A079904(n), A004247(n))`
-/

namespace A228832.P4962165100805570608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079904 n).toNat (A004247 n).toNat

end

end A228832.P4962165100805570608

noncomputable section

/-- A228832: Triangle defined by T(n,k) = binomial(n*k, k^2), for n>=0, k=0..n, as read by rows.

Offset 0, canonical program `A228832.P4962165100805570608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A228832 (n : ℕ) : ℤ :=
  (A228832.P4962165100805570608.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A228832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236532.P18167315123657496015

`ceil(A079904(n)/A108872(n+1))`
-/

namespace A236532.P18167315123657496015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079904 n : ℚ) / (A108872 (n + 1) : ℚ)⌉

end

end A236532.P18167315123657496015

noncomputable section

/-- A236532: Triangle T(n,k) read by rows: T(n,k) = floor(n*k/(n+k)), with 1 <= k <= n.

Offset 1, canonical program `A236532.P18167315123657496015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236532 (n : ℕ) : ℤ :=
  A236532.P18167315123657496015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278711.P2667105724991810827

`lcm(A140978(n+1), A225950(n+2))`
-/

namespace A278711.P2667105724991810827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A140978 (n + 1)) (A225950 (n + 2))

end

end A278711.P2667105724991810827

noncomputable section

/-- A278711: Triangle T read by rows: T(n, m), for n >= 2, and m=1, 2, ..., n-1, equals the positive integer solution x of y^2 = x^3 - A(n, m)^2*x with the area A(n, m) = A249869(n, m) of the primitive Pythagorean triangle characterized by (n, m) or 0 if no such triangle exists.

Offset 2, canonical program `A278711.P2667105724991810827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278711 (n : ℕ) : ℤ :=
  (A278711.P2667105724991810827.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278712.P11642607934964256146

`lcm(∑[A073423(n)], A225950(n+2))`
-/

namespace A278712.P11642607934964256146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A225950 (n + 2))

end

end A278712.P11642607934964256146

noncomputable section

/-- A278712: Triangle T read by rows: T(n, m), for n >= 2, and m = 1, 2, ..., n-1, equals the square root of the positive integer solution y of y^2 = x^3 - A(n, m)^2*x with the area A(n, m) = A249869(n, m) of the primitive Pythagorean triangle characterized by (n, m) or 0 if no such triangle exists.

Offset 2, canonical program `A278712.P11642607934964256146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278712 (n : ℕ) : ℤ :=
  (A278712.P11642607934964256146.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A278712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286100.P6392366946507749071

`A027656(A157458(n))`
-/

namespace A286100.P6392366946507749071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A157458 n).toNat

end

end A286100.P6392366946507749071

noncomputable section

/-- A286100: Square array A(n,k): If n = k, then A(n,k) = n, otherwise 0, read by antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

Offset 1, canonical program `A286100.P6392366946507749071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286100 (n : ℕ) : ℤ :=
  A286100.P6392366946507749071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292342.P16656484624967896721

`A290260(2*(n+1))`
-/

namespace A292342.P16656484624967896721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (2 * (n + 1))

end

end A292342.P16656484624967896721

noncomputable section

/-- A292342: Number of singletons in the integer partition having viabin number n.

Offset 1, canonical program `A292342.P16656484624967896721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292342 (n : ℕ) : ℤ :=
  A292342.P16656484624967896721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309914.P9100679592567550452

`gcd(A053616(n), A158821(n))`
-/

namespace A309914.P9100679592567550452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A158821 n)

end

end A309914.P9100679592567550452

noncomputable section

/-- A309914: Distance from n to closest triangular number that is different from n.

Offset 0, canonical program `A309914.P9100679592567550452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A309914 (n : ℕ) : ℤ :=
  (A309914.P9100679592567550452.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A309914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316669.P322650816524864639

`A158821(n)+n`
-/

namespace A316669.P322650816524864639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n + (n : ℤ)

end

end A316669.P322650816524864639

noncomputable section

/-- A316669: Squares visited by queen moves on a diagonally numbered board and moving to the lowest available unvisited square at each step.

Offset 1, canonical program `A316669.P322650816524864639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316669 (n : ℕ) : ℤ :=
  A316669.P322650816524864639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320848.P7817123128409178598

`∑[A186352(n+2)-A181133(n+2)]`
-/

namespace A320848.P7817123128409178598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186352 (n + 2) - A181133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320848.P7817123128409178598

noncomputable section

/-- A320848: Number of 2-element subsets of [n] whose sum is a triangular number.

Offset 2, canonical program `A320848.P7817123128409178598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A320848 (n : ℕ) : ℤ :=
  A320848.P7817123128409178598.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A320848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326934.P9325489802585782569

`A003991(n+1)%Δ[A193974(n)]`
-/

namespace A326934.P9325489802585782569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003991 (n + 1)) (f1 (n + 1) - f1 n)

end

end A326934.P9325489802585782569

noncomputable section

/-- A326934: Table of A(n,k) read by antidiagonals, where A(n,k) = (n*k) mod (n+1).

Offset 1, canonical program `A326934.P9325489802585782569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A326934 (n : ℕ) : ℤ :=
  A326934.P9325489802585782569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A326934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327462.P4524600871860232679

`A064692(A000040(n+1))`
-/

namespace A327462.P4524600871860232679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A000040 (n + 1)).toNat

end

end A327462.P4524600871860232679

noncomputable section

/-- A327462: Number of holes in decimal expansion of n-th prime.

Offset 1, canonical program `A327462.P4524600871860232679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A327462 (n : ℕ) : ℤ :=
  A327462.P4524600871860232679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A327462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330186.P13460853311327019796

`A350522(n)-A330175(n+1)`
-/

namespace A330186.P13460853311327019796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350522 n - A330175 (n + 1)

end

end A330186.P13460853311327019796

noncomputable section

/-- A330186: a(n) = n + floor(n*r/t) + floor(n*s/t), where r = phi - 1/2, s = phi, t = phi + 1/2, phi = golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A330186.P13460853311327019796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330186 (n : ℕ) : ℤ :=
  A330186.P13460853311327019796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344110.P6857301136692459558

`A000079(A079904(n))`
-/

namespace A344110.P6857301136692459558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A079904 n).toNat

end

end A344110.P6857301136692459558

noncomputable section

/-- A344110: Triangle read by rows: T(n,k) = 2^(n*k), n >= 0, 0 <= k <= n.

Offset 0, canonical program `A344110.P6857301136692459558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A344110 (n : ℕ) : ℤ :=
  A344110.P6857301136692459558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A344110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345877.P10141757346312010755

`A211161(∑[n]-a(n-1)+1)` with `a(0)=1`
-/

namespace A345877.P10141757346312010755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A211161 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1) + 1).toNat

end

end A345877.P10141757346312010755

noncomputable section

/-- A345877: a(1) = 1, a(n) = a(n-1)/2 if a(n-1) is even, otherwise a(n) = n - a(n-1).

Offset 1, canonical program `A345877.P10141757346312010755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A345877 (n : ℕ) : ℤ :=
  A345877.P10141757346312010755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A345877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358294.P4698983659591505785

`(A051162(n)*A079904(n))²*A079904(n)`
-/

namespace A358294.P4698983659591505785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n * A079904 n) ^ 2 * A079904 n

end

end A358294.P4698983659591505785

noncomputable section

/-- A358294: Triangle read by rows: T(n,k) = n^3*k^3*(n+k)^2, n>=0, 0 <= k <= n.

Offset 0, canonical program `A358294.P4698983659591505785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358294 (n : ℕ) : ℤ :=
  A358294.P4698983659591505785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377563.P16938085652731499524

`lt[1, A372332(n+1)]+1`
-/

namespace A377563.P16938085652731499524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377563.P16938085652731499524

noncomputable section

/-- A377563: Numbers that have fewer infinitary divisors than noninfinitary divisors.

Offset 1, canonical program `A377563.P16938085652731499524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A377563 (n : ℕ) : ℤ :=
  (A377563.P16938085652731499524.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A377563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381664.P17133759747871015799

`A210521(A209293(n+1))`
-/

namespace A381664.P17133759747871015799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210521 (A209293 (n + 1)).toNat

end

end A381664.P17133759747871015799

noncomputable section

/-- A381664: a(n) = A380200(A379342(n)).

Offset 1, canonical program `A381664.P17133759747871015799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A381664 (n : ℕ) : ℤ :=
  A381664.P17133759747871015799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A381664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001745.P975196731566456235

`lt[0, A064692(n)]`
-/

namespace A001745.P975196731566456235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001745.P975196731566456235

noncomputable section

/-- A001745: Numbers such that at least one digit contains a loop (version 2). Also called "holey" or "holy" numbers.

Offset 1, canonical program `A001745.P975196731566456235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001745 (n : ℕ) : ℤ :=
  (A001745.P975196731566456235.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003983.P15269842853270651919

`floor(A157458(n)/2)+1`
-/

namespace A003983.P15269842853270651919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157458 n : ℚ) / 2⌋ + 1

end

end A003983.P15269842853270651919

noncomputable section

/-- A003983: Array read by antidiagonals with T(n,k) = min(n,k).

Offset 1, canonical program `A003983.P15269842853270651919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003983 (n : ℕ) : ℤ :=
  A003983.P15269842853270651919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014146.P7859998547790192277

`∑[A003136(n+1)]`
-/

namespace A014146.P7859998547790192277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P7859998547790192277

noncomputable section

/-- A014146: Partial sums of A003136.

Offset 0, canonical program `A014146.P7859998547790192277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014146 (n : ℕ) : ℤ :=
  A014146.P7859998547790192277.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024535.P15474277784430025051

`floor(A024524(n+4)/A024522(n+4))`
-/

namespace A024535.P15474277784430025051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024524 (n + 4) : ℚ) / (A024522 (n + 4) : ℚ)⌋

end

end A024535.P15474277784430025051

noncomputable section

/-- A024535: [ (4th elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 4, canonical program `A024535.P15474277784430025051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A024535 (n : ℕ) : ℤ :=
  A024535.P15474277784430025051.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A024535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024536.P2823935426376740183

`floor(A024524(n+4)/A024523(n+4))`
-/

namespace A024536.P2823935426376740183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024524 (n + 4) : ℚ) / (A024523 (n + 4) : ℚ)⌋

end

end A024536.P2823935426376740183

noncomputable section

/-- A024536: [ (4th elementary symmetric function of P(n))/(3rd elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, p(0) = 1.

Offset 4, canonical program `A024536.P2823935426376740183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. -/
def A024536 (n : ℕ) : ℤ :=
  A024536.P2823935426376740183.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. -/
def A024536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024609.P1848620475317135968

`lt[gcd(2, A003136(n+1)), 2]+1`
-/

namespace A024609.P1848620475317135968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A003136 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024609.P1848620475317135968

noncomputable section

/-- A024609: Positions of odd numbers in A003136.

Offset 1, canonical program `A024609.P1848620475317135968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. -/
def A024609 (n : ℕ) : ℤ :=
  (A024609.P1848620475317135968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7280 terms. -/
def A024609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024679.P10680649668885426669

`eq[1, ∑{e}[A003136(n+1), #]]+1`
-/

namespace A024679.P10680649668885426669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024679.P10680649668885426669

noncomputable section

/-- A024679: Positions of primes in A003136 (ordered distinct numbers i^2 - i*j + j^2).

Offset 1, canonical program `A024679.P10680649668885426669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A024679 (n : ℕ) : ℤ :=
  (A024679.P10680649668885426669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A024679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028314.P1408064926550668039

`A028276(n)+A007318(n)`
-/

namespace A028314.P1408064926550668039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n + A007318 n

end

end A028314.P1408064926550668039

noncomputable section

/-- A028314: Elements in the 5-Pascal triangle A028313 that are not 1.

Offset 0, canonical program `A028314.P1408064926550668039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028314 (n : ℕ) : ℤ :=
  A028314.P1408064926550668039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029081.P254092326386085694

`A029028(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029081.P254092326386085694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029028 n - a (n - 2)

end

end A029081.P254092326386085694

noncomputable section

/-- A029081: Expansion of g.f. 1/((1-x)*(1-x^4)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029081.P254092326386085694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029081 (n : ℕ) : ℤ :=
  A029081.P254092326386085694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029363.P5892090971847677782

`A029230(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029363.P5892090971847677782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029230 n - a (n - 2)

end

end A029363.P5892090971847677782

noncomputable section

/-- A029363: Expansion of 1/((1 - x^4)*(1 - x^7)*(1 - x^9)*(1 - x^10)).

Offset 0, canonical program `A029363.P5892090971847677782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029363 (n : ℕ) : ℤ :=
  A029363.P5892090971847677782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029364.P18119640240115564070

`A029231(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029364.P18119640240115564070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029231 n - a (n - 2)

end

end A029364.P18119640240115564070

noncomputable section

/-- A029364: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029364.P18119640240115564070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029364 (n : ℕ) : ℤ :=
  A029364.P18119640240115564070.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029365.P2100240297090772745

`A029232(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029365.P2100240297090772745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029232 n - a (n - 2)

end

end A029365.P2100240297090772745

noncomputable section

/-- A029365: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029365.P2100240297090772745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029365 (n : ℕ) : ℤ :=
  A029365.P2100240297090772745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030055.P1184375955424531580

`A054849(n+5)/A054849(n+6)*A004311(n+6)`
-/

namespace A030055.P1184375955424531580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (n + 5) : ℚ) / (A054849 (n + 6) : ℚ) * (A004311 (n + 6) : ℚ)

end

end A030055.P1184375955424531580

noncomputable section

/-- A030055: a(n) = binomial(2*n+1, n-5).

Offset 5, canonical program `A030055.P1184375955424531580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A030055 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030055.P1184375955424531580.a (n - 5))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A030055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034021.P3191518075360289644

`A003136(eq[1, ∏{e}[A003136(n+1), #]]+1)`
-/

namespace A034021.P3191518075360289644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A034021.P3191518075360289644

noncomputable section

/-- A034021: Numbers that are primitively but not imprimitively represented by x^2+xy+y^2.

Offset 1, canonical program `A034021.P3191518075360289644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5619 terms. -/
def A034021 (n : ℕ) : ℤ :=
  A034021.P3191518075360289644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5619 terms. -/
def A034021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035246.P14637985280883244222

`∪[2*A003136(n+2), A003136(n+2)]`
-/

namespace A035246.P14637985280883244222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003136 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035246.P14637985280883244222

noncomputable section

/-- A035246: Indices of the nonzero terms in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m= -12.

Offset 1, canonical program `A035246.P14637985280883244222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035246 (n : ℕ) : ℤ :=
  (A035246.P14637985280883244222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036269.P10624160224326188520

`Δ[A036268(n+1)]`
-/

namespace A036269.P10624160224326188520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036269.P10624160224326188520

noncomputable section

/-- A036269: 8th differences of primes.

Offset 1, canonical program `A036269.P10624160224326188520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036269 (n : ℕ) : ℤ :=
  A036269.P10624160224326188520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A036269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038214.P14601018666803231600

`A038210(n)*A059268(n)`
-/

namespace A038214.P14601018666803231600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038210 n * A059268 n

end

end A038214.P14601018666803231600

noncomputable section

/-- A038214: Triangle whose (i,j)-th entry is binomial(i,j)*2^(i-j)*8^j.

Offset 0, canonical program `A038214.P14601018666803231600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5326 terms. -/
def A038214 (n : ℕ) : ℤ :=
  A038214.P14601018666803231600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5326 terms. -/
def A038214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038226.P14999637500471650341

`A038222(n)*A059268(n)`
-/

namespace A038226.P14999637500471650341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038222 n * A059268 n

end

end A038226.P14999637500471650341

noncomputable section

/-- A038226: Triangle read by rows: (i,j)-th entry is binomial(i,j)*3^(i-j)*8^j.

Offset 0, canonical program `A038226.P14999637500471650341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A038226 (n : ℕ) : ℤ :=
  A038226.P14999637500471650341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A038226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038234.P3698139505430010627

`A038232(n)*A059268(n)`
-/

namespace A038234.P3698139505430010627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038232 n * A059268 n

end

end A038234.P3698139505430010627

noncomputable section

/-- A038234: Triangle whose (n, k)-th entry is binomial(n, k)*4^(n - k)*4^k.

Offset 0, canonical program `A038234.P3698139505430010627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. -/
def A038234 (n : ℕ) : ℤ :=
  A038234.P3698139505430010627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. -/
def A038234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038242.P689435181887055728

`A036561(n)*A038210(n)`
-/

namespace A038242.P689435181887055728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038210 n

end

end A038242.P689435181887055728

noncomputable section

/-- A038242: Triangle whose (i,j)-th entry is binomial(i,j)*4^(i-j)*12^j.

Offset 0, canonical program `A038242.P689435181887055728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3630 terms. -/
def A038242 (n : ℕ) : ℤ :=
  A038242.P689435181887055728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3630 terms. -/
def A038242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038250.P15038229439455009426

`A038246(n)*A059268(n)`
-/

namespace A038250.P15038229439455009426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038246 n * A059268 n

end

end A038250.P15038229439455009426

noncomputable section

/-- A038250: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*8^j.

Offset 0, canonical program `A038250.P15038229439455009426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4237 terms. -/
def A038250 (n : ℕ) : ℤ :=
  A038250.P15038229439455009426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4237 terms. -/
def A038250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038254.P7510998490279946778

`A038248(n)*A059268(n)`
-/

namespace A038254.P7510998490279946778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038248 n * A059268 n

end

end A038254.P7510998490279946778

noncomputable section

/-- A038254: Triangle whose (i,j)-th entry is binomial(i,j)*5^(i-j)*12^j.

Offset 0, canonical program `A038254.P7510998490279946778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3536 terms. -/
def A038254 (n : ℕ) : ℤ :=
  A038254.P7510998490279946778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3536 terms. -/
def A038254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038258.P18171415489042003972

`A038256(n)*A059268(n)`
-/

namespace A038258.P18171415489042003972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038256 n * A059268 n

end

end A038258.P18171415489042003972

noncomputable section

/-- A038258: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*4^j.

Offset 0, canonical program `A038258.P18171415489042003972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5284 terms. -/
def A038258 (n : ℕ) : ℤ :=
  A038258.P18171415489042003972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5284 terms. -/
def A038258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038266.P12892791961704358879

`A036561(n)*A038222(n)`
-/

namespace A038266.P12892791961704358879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038222 n

end

end A038266.P12892791961704358879

noncomputable section

/-- A038266: Triangle whose (i,j)-th entry is binomial(i,j)*6^(i-j)*12^j.

Offset 0, canonical program `A038266.P12892791961704358879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A038266 (n : ℕ) : ℤ :=
  A038266.P12892791961704358879.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. -/
def A038266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038270.P14616798434417100428

`A038268(n)*A059268(n)`
-/

namespace A038270.P14616798434417100428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038268 n * A059268 n

end

end A038270.P14616798434417100428

noncomputable section

/-- A038270: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*4^j.

Offset 0, canonical program `A038270.P14616798434417100428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4877 terms. -/
def A038270 (n : ℕ) : ℤ :=
  A038270.P14616798434417100428.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4877 terms. -/
def A038270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038272.P15608293931360931004

`A038269(n)*A059268(n)`
-/

namespace A038272.P15608293931360931004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038269 n * A059268 n

end

end A038272.P15608293931360931004

noncomputable section

/-- A038272: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*6^j.

Offset 0, canonical program `A038272.P15608293931360931004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4223 terms. -/
def A038272 (n : ℕ) : ℤ :=
  A038272.P15608293931360931004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4223 terms. -/
def A038272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038276.P15142727663705026605

`A038271(n)*A059268(n)`
-/

namespace A038276.P15142727663705026605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038271 n * A059268 n

end

end A038276.P15142727663705026605

noncomputable section

/-- A038276: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j)*10^j.

Offset 0, canonical program `A038276.P15142727663705026605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3525 terms. -/
def A038276 (n : ℕ) : ℤ :=
  A038276.P15142727663705026605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3525 terms. -/
def A038276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038280.P13941131333894266772

`A038279(n)*A059268(n)`
-/

namespace A038280.P13941131333894266772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 n * A059268 n

end

end A038280.P13941131333894266772

noncomputable section

/-- A038280: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*2^j.

Offset 0, canonical program `A038280.P13941131333894266772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5265 terms. -/
def A038280 (n : ℕ) : ℤ :=
  A038280.P13941131333894266772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5265 terms. -/
def A038280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038284.P16416775335584718601

`A036561(n)*A038232(n)`
-/

namespace A038284.P16416775335584718601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038232 n

end

end A038284.P16416775335584718601

noncomputable section

/-- A038284: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*6^j.

Offset 0, canonical program `A038284.P16416775335584718601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4034 terms. -/
def A038284 (n : ℕ) : ℤ :=
  A038284.P16416775335584718601.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4034 terms. -/
def A038284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038288.P15461604904291039397

`A038283(n)*A059268(n)`
-/

namespace A038288.P15461604904291039397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038283 n * A059268 n

end

end A038288.P15461604904291039397

noncomputable section

/-- A038288: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*10^j.

Offset 0, canonical program `A038288.P15461604904291039397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A038288 (n : ℕ) : ℤ :=
  A038288.P15461604904291039397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A038288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038289.P1403237182846747393

`A038241(n)*A130321(n)`
-/

namespace A038289.P1403237182846747393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038241 n * A130321 n

end

end A038289.P1403237182846747393

noncomputable section

/-- A038289: Triangle whose (i,j)-th entry is binomial(i,j)*8^(i-j)*11^j.

Offset 0, canonical program `A038289.P1403237182846747393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A038289 (n : ℕ) : ℤ :=
  A038289.P1403237182846747393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A038289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038294.P370950949061120703

`A038292(n)*A059268(n)`
-/

namespace A038294.P370950949061120703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038292 n * A059268 n

end

end A038294.P370950949061120703

noncomputable section

/-- A038294: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*4^j.

Offset 0, canonical program `A038294.P370950949061120703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4209 terms. -/
def A038294 (n : ℕ) : ℤ :=
  A038294.P370950949061120703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4209 terms. -/
def A038294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038302.P8800221940297156874

`A038296(n)*A059268(n)`
-/

namespace A038302.P8800221940297156874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038296 n * A059268 n

end

end A038302.P8800221940297156874

noncomputable section

/-- A038302: Triangle whose (i,j)-th entry is binomial(i,j)*9^(i-j)*12^j.

Offset 0, canonical program `A038302.P8800221940297156874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A038302 (n : ℕ) : ℤ :=
  A038302.P8800221940297156874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3039 terms. -/
def A038302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038306.P5805800662738392835

`A038304(n)*A059268(n)`
-/

namespace A038306.P5805800662738392835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038304 n * A059268 n

end

end A038306.P5805800662738392835

noncomputable section

/-- A038306: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*4^j.

Offset 0, canonical program `A038306.P5805800662738392835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4022 terms. -/
def A038306 (n : ℕ) : ℤ :=
  A038306.P5805800662738392835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4022 terms. -/
def A038306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038314.P15385511615733957854

`A036561(n)*A038246(n)`
-/

namespace A038314.P15385511615733957854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038246 n

end

end A038314.P15385511615733957854

noncomputable section

/-- A038314: Triangle whose (i,j)-th entry is binomial(i,j)*10^(i-j)*12^j.

Offset 0, canonical program `A038314.P15385511615733957854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2959 terms. -/
def A038314 (n : ℕ) : ℤ :=
  A038314.P15385511615733957854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2959 terms. -/
def A038314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038322.P14117856518855591407

`A038318(n)*A059268(n)`
-/

namespace A038322.P14117856518855591407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038318 n * A059268 n

end

end A038322.P14117856518855591407

noncomputable section

/-- A038322: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*8^j.

Offset 0, canonical program `A038322.P14117856518855591407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A038322 (n : ℕ) : ℤ :=
  A038322.P14117856518855591407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A038322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038326.P6367717680035470483

`A038320(n)*A059268(n)`
-/

namespace A038326.P6367717680035470483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038320 n * A059268 n

end

end A038326.P6367717680035470483

noncomputable section

/-- A038326: Triangle whose (i,j)-th entry is binomial(i,j)*11^(i-j)*12^j.

Offset 0, canonical program `A038326.P6367717680035470483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A038326 (n : ℕ) : ℤ :=
  A038326.P6367717680035470483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A038326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038328.P13362805777604187505

`A038327(n)*A059268(n)`
-/

namespace A038328.P13362805777604187505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038327 n * A059268 n

end

end A038328.P13362805777604187505

noncomputable section

/-- A038328: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*2^j.

Offset 0, canonical program `A038328.P13362805777604187505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4011 terms. -/
def A038328 (n : ℕ) : ℤ :=
  A038328.P13362805777604187505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4011 terms. -/
def A038328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038332.P474245065712382521

`A036561(n)*A038256(n)`
-/

namespace A038332.P474245065712382521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A038256 n

end

end A038332.P474245065712382521

noncomputable section

/-- A038332: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*6^j.

Offset 0, canonical program `A038332.P474245065712382521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3341 terms. -/
def A038332 (n : ℕ) : ℤ :=
  A038332.P474245065712382521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3341 terms. -/
def A038332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038336.P2038556633556668892

`A038331(n)*A059268(n)`
-/

namespace A038336.P2038556633556668892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038331 n * A059268 n

end

end A038336.P2038556633556668892

noncomputable section

/-- A038336: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*10^j.

Offset 0, canonical program `A038336.P2038556633556668892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2952 terms. -/
def A038336 (n : ℕ) : ℤ :=
  A038336.P2038556633556668892.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2952 terms. -/
def A038336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038337.P13596972797405458484

`A038265(n)*A130321(n)`
-/

namespace A038337.P13596972797405458484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038265 n * A130321 n

end

end A038337.P13596972797405458484

noncomputable section

/-- A038337: Triangle whose (i,j)-th entry is binomial(i,j)*12^(i-j)*11^j.

Offset 0, canonical program `A038337.P13596972797405458484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2877 terms. -/
def A038337 (n : ℕ) : ℤ :=
  A038337.P13596972797405458484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2877 terms. -/
def A038337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038566.P10939120331608510243

`A020652(round(sqrt(n²+1)))`
-/

namespace A038566.P10939120331608510243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A038566.P10939120331608510243

noncomputable section

/-- A038566: Numerators in canonical bijection from positive integers to positive rationals <= 1: arrange fractions by increasing denominator then by increasing numerator.

Offset 1, canonical program `A038566.P10939120331608510243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038566 (n : ℕ) : ℤ :=
  A038566.P10939120331608510243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045438.P18307851375055473180

`∪[A023251(n+1), A045448(n+1)]`
-/

namespace A045438.P18307851375055473180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045438.P18307851375055473180

noncomputable section

/-- A045438: Primes congruent to {0, 1, 4, 5, 6} mod 7.

Offset 1, canonical program `A045438.P18307851375055473180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045438 (n : ℕ) : ℤ :=
  (A045438.P18307851375055473180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045492.P16805623647236037843

`2*A020920(n)-A042985(n)`
-/

namespace A045492.P16805623647236037843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020920 n - A042985 n

end

end A045492.P16805623647236037843

noncomputable section

/-- A045492: Convolution of A000108 (Catalan numbers) with A020920.

Offset 0, canonical program `A045492.P16805623647236037843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A045492 (n : ℕ) : ℤ :=
  A045492.P16805623647236037843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A045492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046160.P5184694842882973366

`A003136(A065475(n+1))+2`
-/

namespace A046160.P5184694842882973366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A065475 (n + 1)).toNat + 2

end

end A046160.P5184694842882973366

noncomputable section

/-- A046160: Bends of spheres in Soddy's bowl of integers which are tangent to the unit sphere and a single 2-sphere.

Offset 1, canonical program `A046160.P5184694842882973366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A046160 (n : ℕ) : ℤ :=
  A046160.P5184694842882973366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A046160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046327.P7138358700051144679

`A000040(n+1)*A046326(n+2)`
-/

namespace A046327.P7138358700051144679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A046326 (n + 2)

end

end A046327.P7138358700051144679

noncomputable section

/-- A046327: Numbers that are the product of 9 successive primes.

Offset 1, canonical program `A046327.P7138358700051144679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046327 (n : ℕ) : ℤ :=
  A046327.P7138358700051144679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A046327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051297.P15842795735754610719

`A028266(n)/2`
-/

namespace A051297.P15842795735754610719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028266 n : ℚ) / 2

end

end A051297.P15842795735754610719

noncomputable section

/-- A051297: (Terms in A028266)/2.

Offset 0, canonical program `A051297.P15842795735754610719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051297 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051297.P15842795735754610719.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051601.P16211897946955376091

`A028327(n)-A028276(n)`
-/

namespace A051601.P16211897946955376091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028327 n - A028276 n

end

end A051601.P16211897946955376091

noncomputable section

/-- A051601: Rows of triangle formed using Pascal's rule except we begin and end the n-th row with n.

Offset 0, canonical program `A051601.P16211897946955376091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051601 (n : ℕ) : ℤ :=
  A051601.P16211897946955376091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055374.P14899419224268872403

`round(A055372(n)/2*A137688(n))`
-/

namespace A055374.P14899419224268872403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055372 n : ℚ) / 2 * (A137688 n : ℚ))

end

end A055374.P14899419224268872403

noncomputable section

/-- A055374: Invert transform applied three times to Pascal's triangle A007318.

Offset 0, canonical program `A055374.P14899419224268872403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6492 terms. -/
def A055374 (n : ℕ) : ℤ :=
  A055374.P14899419224268872403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6492 terms. -/
def A055374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056979.P4428526417938003565

`A290260(4*(n+1))`
-/

namespace A056979.P4428526417938003565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (4 * (n + 1))

end

end A056979.P4428526417938003565

noncomputable section

/-- A056979: Number of blocks of {1, 0, 1} in binary expansion of n.

Offset 1, canonical program `A056979.P4428526417938003565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056979 (n : ℕ) : ℤ :=
  A056979.P4428526417938003565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060734.P8616229989639901220

`A114327(n)+A002061(A051125(n+1))`
-/

namespace A060734.P8616229989639901220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + A002061 (A051125 (n + 1)).toNat

end

end A060734.P8616229989639901220

noncomputable section

/-- A060734: Natural numbers written as a square array ending in last row from left to right and rightmost column from bottom to top are read by antidiagonals downwards.

Offset 1, canonical program `A060734.P8616229989639901220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060734 (n : ℕ) : ℤ :=
  A060734.P8616229989639901220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060736.P900922812008928419

`A220508(n)+1`
-/

namespace A060736.P900922812008928419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220508 n + 1

end

end A060736.P900922812008928419

noncomputable section

/-- A060736: Array of square numbers read by antidiagonals in up direction.

Offset 1, canonical program `A060736.P900922812008928419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060736 (n : ℕ) : ℤ :=
  A060736.P900922812008928419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065943.P6936668345606970424

`lcm(A033999(n), A065931(A014132(n+1)))`
-/

namespace A065943.P6936668345606970424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A065931 (A014132 (n + 1)).toNat)

end

end A065943.P6936668345606970424

noncomputable section

/-- A065943: Triangle of coefficients of Bessel polynomials {y_n(x)}''.

Offset 2, canonical program `A065943.P6936668345606970424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A065943 (n : ℕ) : ℤ :=
  (A065943.P6936668345606970424.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A065943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071336.P12527414434795799487

`10*A003136(n+2)+2`
-/

namespace A071336.P12527414434795799487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A003136 (n + 2) + 2

end

end A071336.P12527414434795799487

noncomputable section

/-- A071336: Number of vertices of Goldberg-Casper-Klug pseudo-icosahedra.

Offset 1, canonical program `A071336.P12527414434795799487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071336 (n : ℕ) : ℤ :=
  A071336.P12527414434795799487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075362.P10649777671025085408

`A079904(A014132(n+1))`
-/

namespace A075362.P10649777671025085408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (A014132 (n + 1)).toNat

end

end A075362.P10649777671025085408

noncomputable section

/-- A075362: Triangle read by rows with the n-th row containing the first n multiples of n.

Offset 1, canonical program `A075362.P10649777671025085408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075362 (n : ℕ) : ℤ :=
  A075362.P10649777671025085408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082652.P13720706004020418959

`A104634(A038722(n+1))`
-/

namespace A082652.P13720706004020418959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A038722 (n + 1)).toNat

end

end A082652.P13720706004020418959

noncomputable section

/-- A082652: Triangle read by rows: T(n,k) is the number of squares that can be found in a k X n rectangular grid of little squares, for 1 <= k <= n.

Offset 1, canonical program `A082652.P13720706004020418959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A082652 (n : ℕ) : ℤ :=
  A082652.P13720706004020418959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A082652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086638.P13942084754070889199

`∩[A063037(n+1), A003714(n)]`
-/

namespace A086638.P13942084754070889199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086638.P13942084754070889199

noncomputable section

/-- A086638: Numbers with no 11 or 000 in their binary expansion.

Offset 0, canonical program `A086638.P13942084754070889199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A086638 (n : ℕ) : ℤ :=
  (A086638.P13942084754070889199.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A086638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094930.P3291015638818169319

`A016789(A002262(n))*A096037(n+1)`
-/

namespace A094930.P3291015638818169319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A002262 n).toNat * A096037 (n + 1)

end

end A094930.P3291015638818169319

noncomputable section

/-- A094930: Triangle T(n,m) read by rows, defined by squaring a matrix with row entries 2+3*(m-1).

Offset 1, canonical program `A094930.P3291015638818169319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094930 (n : ℕ) : ℤ :=
  A094930.P3291015638818169319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099091.P612241145686123983

`A099089(n)*A140303(n)`
-/

namespace A099091.P612241145686123983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A140303 n

end

end A099091.P612241145686123983

noncomputable section

/-- A099091: Riordan array (1,2+3x).

Offset 0, canonical program `A099091.P612241145686123983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099091 (n : ℕ) : ℤ :=
  A099091.P612241145686123983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099096.P10240550018504382056

`A097807(n)*A099089(n)`
-/

namespace A099096.P10240550018504382056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A099089 n

end

end A099096.P10240550018504382056

noncomputable section

/-- A099096: Riordan array (1,2-x).

Offset 0, canonical program `A099096.P10240550018504382056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099096 (n : ℕ) : ℤ :=
  A099096.P10240550018504382056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107225.P3066246955477926444

`eq[char[A107224(n+1)], A000007(n)]`
-/

namespace A107225.P3066246955477926444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107224 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A107225.P3066246955477926444

noncomputable section

/-- A107225: Numbers having in their Zeckendorf representation not more odd than even terms.

Offset 1, canonical program `A107225.P3066246955477926444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A107225 (n : ℕ) : ℤ :=
  (A107225.P3066246955477926444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. -/
def A107225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108667.P9835651303339134603

`A154614(n+1)+2*A172292(n+1)`
-/

namespace A108667.P9835651303339134603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) + 2 * A172292 (n + 1)

end

end A108667.P9835651303339134603

noncomputable section

/-- A108667: Triangle read by rows: T(n,k) = 9k*n + 14(n+k) + 20 (0 <= k <= n).

Offset 0, canonical program `A108667.P9835651303339134603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108667 (n : ℕ) : ℤ :=
  A108667.P9835651303339134603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110292.P9374144780505500195

`Δ[-A099039(n)*A130321(n)]`
-/

namespace A110292.P9374144780505500195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A099039 n * A130321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110292.P9374144780505500195

noncomputable section

/-- A110292: Riordan array (1-u, u) where u=(-1 + sqrt(1+8*x))/4.

Offset 0, canonical program `A110292.P9374144780505500195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A110292 (n : ℕ) : ℤ :=
  A110292.P9374144780505500195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A110292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111983.P13317211300514928737

`A038279(n)*A198954(n)`
-/

namespace A111983.P13317211300514928737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038279 n * A198954 n

end

end A111983.P13317211300514928737

noncomputable section

/-- A111983: G.f.: A(x) = Sum_{n>=0} (2*n+1) * 8^n * x^(n*(n+1)/2).

Offset 0, canonical program `A111983.P13317211300514928737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A111983 (n : ℕ) : ℤ :=
  A111983.P13317211300514928737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A111983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112484.P6804898479430279805

`p?[A020652(n+1)]`
-/

namespace A112484.P6804898479430279805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112484.P6804898479430279805

noncomputable section

/-- A112484: Array where n-th row contains the primes < n and coprime to n.

Offset 3, canonical program `A112484.P6804898479430279805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112484 (n : ℕ) : ℤ :=
  A112484.P6804898479430279805.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114253.P5557094872151062663

`A003516(n+2)*A004311(n+5)`
-/

namespace A114253.P5557094872151062663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003516 (n + 2) * A004311 (n + 5)

end

end A114253.P5557094872151062663

noncomputable section

/-- A114253: a(n) = C(5+2*n,5+n)*C(10+2*n,0+n).

Offset 0, canonical program `A114253.P5557094872151062663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003516, A004311, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114253 (n : ℕ) : ℤ :=
  A114253.P5557094872151062663.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003516, A004311, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A114253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115281.P9615937288782899719

`A042963(A157458(n)+1)`
-/

namespace A115281.P9615937288782899719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A157458 n + 1).toNat

end

end A115281.P9615937288782899719

noncomputable section

/-- A115281: Correlation triangle for the sequence 2-0^n.

Offset 0, canonical program `A115281.P9615937288782899719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115281 (n : ℕ) : ℤ :=
  A115281.P9615937288782899719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116647.P5354126856925200051

`A007318(n)*A110813(n)`
-/

namespace A116647.P5354126856925200051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A110813 n

end

end A116647.P5354126856925200051

noncomputable section

/-- A116647: Triangle of number of partitions that fit in an n X n box (but not in an (n-1) X (n-1) box) with Durfee square k.

Offset 1, canonical program `A116647.P5354126856925200051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A116647 (n : ℕ) : ℤ :=
  A116647.P5354126856925200051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A116647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117944.P8296871185845388962

`A117939(n)%2`
-/

namespace A117944.P8296871185845388962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117939 n) 2

end

end A117944.P8296871185845388962

noncomputable section

/-- A117944: Triangle related to powers of 3 partitions of n.

Offset 0, canonical program `A117944.P8296871185845388962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117944 (n : ℕ) : ℤ :=
  A117944.P8296871185845388962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122440.P10548338091317533155

`Δ[-A099039(n)]*A130321(n)`
-/

namespace A122440.P10548338091317533155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130321 n

end

end A122440.P10548338091317533155

noncomputable section

/-- A122440: Riordan array ((3-sqrt(1+8x))/2, (sqrt(1+8x)-1)/4).

Offset 0, canonical program `A122440.P10548338091317533155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6557 terms. -/
def A122440 (n : ℕ) : ℤ :=
  A122440.P10548338091317533155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6557 terms. -/
def A122440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122960.P1556329167515398814

`A202023(A209293(n+1))`
-/

namespace A122960.P1556329167515398814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A209293 (n + 1)).toNat

end

end A122960.P1556329167515398814

noncomputable section

/-- A122960: Triangle T(n,k), 0 <= k <= n, read by rows given by [0, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A122960.P1556329167515398814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122960 (n : ℕ) : ℤ :=
  A122960.P1556329167515398814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A122960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123160.P8140901609317347605

`A007318(n)*A059481(n)`
-/

namespace A123160.P8140901609317347605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059481 n

end

end A123160.P8140901609317347605

noncomputable section

/-- A123160: Triangle read by rows: T(n,k) = n!*(n+k-1)!/((n-k)!*(n-1)!*(k!)^2) for 0 <= k <= n, with T(0,0) = 1.

Offset 0, canonical program `A123160.P8140901609317347605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A123160 (n : ℕ) : ℤ :=
  A123160.P8140901609317347605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A123160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124320.P4874340076457130803

`A059481(n)*A233543(n)`
-/

namespace A124320.P4874340076457130803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A233543 n

end

end A124320.P4874340076457130803

noncomputable section

/-- A124320: Triangle read by rows: T(n,k) = k!*binomial(n+k-1,k) (n >= 0, 0 <= k <= n), rising factorial power, Pochhammer symbol.

Offset 0, canonical program `A124320.P4874340076457130803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A124320 (n : ℕ) : ℤ :=
  A124320.P4874340076457130803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A124320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125235.P13924204334101341039

`2*A125233(n)-A125165(n)`
-/

namespace A125235.P13924204334101341039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125233 n - A125165 n

end

end A125235.P13924204334101341039

noncomputable section

/-- A125235: Triangle with the partial column sums of the octagonal numbers.

Offset 1, canonical program `A125235.P13924204334101341039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125235 (n : ℕ) : ℤ :=
  A125235.P13924204334101341039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127337.P16134071994512097218

`A127336(n+1)+A000040(n+10)`
-/

namespace A127337.P16134071994512097218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1) + A000040 (n + 10)

end

end A127337.P16134071994512097218

noncomputable section

/-- A127337: Numbers that are the sum of 10 consecutive primes.

Offset 1, canonical program `A127337.P16134071994512097218`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A127336, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127337 (n : ℕ) : ℤ :=
  A127337.P16134071994512097218.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A127336, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A127337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128431.P14264031416913626474

`∑{d}[A127368(n+1), A007427(#)]`
-/

namespace A128431.P14264031416913626474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128431.P14264031416913626474

noncomputable section

/-- A128431: Triangle read by rows: A054521 * A128407.

Offset 1, canonical program `A128431.P14264031416913626474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128431 (n : ℕ) : ℤ :=
  A128431.P14264031416913626474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128432.P3443979121522389698

`∑{d}[A127449(n+1), A007427(#)]`
-/

namespace A128432.P3443979121522389698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128432.P3443979121522389698

noncomputable section

/-- A128432: Triangle read by rows: A128407 * A054521.

Offset 1, canonical program `A128432.P3443979121522389698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128432 (n : ℕ) : ℤ :=
  A128432.P3443979121522389698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128584.P5689279512010966890

`A127368(n+1)+A054521(n+2)-A127368(n+2)`
-/

namespace A128584.P5689279512010966890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1) + (A054521 (n + 2) - A127368 (n + 2))

end

end A128584.P5689279512010966890

noncomputable section

/-- A128584: A054521 * A128064 (unsigned).

Offset 1, canonical program `A128584.P5689279512010966890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128584 (n : ℕ) : ℤ :=
  A128584.P5689279512010966890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130020.P3122081554648920852

`2*A059481(n)-A046899(n)`
-/

namespace A130020.P3122081554648920852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059481 n - A046899 n

end

end A130020.P3122081554648920852

noncomputable section

/-- A130020: Triangle T(n,k), 0<=k<=n, read by rows given by [1,0,0,0,0,0,0,...] DELTA [0,1,1,1,1,1,1,...] where DELTA is the operator defined in A084938 .

Offset 0, canonical program `A130020.P3122081554648920852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130020 (n : ℕ) : ℤ :=
  A130020.P3122081554648920852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130207.P2831721020535577098

`A023531(n)*A078401(n+1)`
-/

namespace A130207.P2831721020535577098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A078401 (n + 1)

end

end A130207.P2831721020535577098

noncomputable section

/-- A130207: Diagonalized matrix of A000010, Euler totient function phi.

Offset 1, canonical program `A130207.P2831721020535577098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130207 (n : ℕ) : ℤ :=
  A130207.P2831721020535577098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131034.P11408051281960244654

`A004271(A131035(n))`
-/

namespace A131034.P11408051281960244654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A131035 n).toNat

end

end A131034.P11408051281960244654

noncomputable section

/-- A131034: Triangle read by rows: A129686 * A051340 as infinite lower triangular matrices.

Offset 0, canonical program `A131034.P11408051281960244654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131034 (n : ℕ) : ℤ :=
  A131034.P11408051281960244654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131112.P1892582295749430120

`2*A131111(n)-A129994(n)`
-/

namespace A131112.P1892582295749430120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131111 n - A129994 n

end

end A131112.P1892582295749430120

noncomputable section

/-- A131112: T(n,k) = 4*binomial(n,k) - 3*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

Offset 0, canonical program `A131112.P1892582295749430120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131112 (n : ℕ) : ℤ :=
  A131112.P1892582295749430120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131113.P8900513154664497593

`2*A131111(n)-A007318(n)`
-/

namespace A131113.P8900513154664497593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131111 n - A007318 n

end

end A131113.P8900513154664497593

noncomputable section

/-- A131113: T(n,k) = 5*binomial(n,k) - 4*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

Offset 0, canonical program `A131113.P8900513154664497593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131113 (n : ℕ) : ℤ :=
  A131113.P8900513154664497593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131114.P17775388321855800452

`lcm(A129994(n), A131111(n))`
-/

namespace A131114.P17775388321855800452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A129994 n) (A131111 n)

end

end A131114.P17775388321855800452

noncomputable section

/-- A131114: T(n,k) = 6*binomial(n,k) - 5*I(n,k), where I is the identity matrix; triangle T read by rows (n >= 0 and 0 <= k <= n).

Offset 0, canonical program `A131114.P17775388321855800452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131114 (n : ℕ) : ℤ :=
  (A131114.P17775388321855800452.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132733.P10154900672015657817

`abs(2-A131061(n))`
-/

namespace A132733.P10154900672015657817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A131061 n|

end

end A132733.P10154900672015657817

noncomputable section

/-- A132733: Triangle T(n, k) = 4*binomial(n, k) - 5 with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A132733.P10154900672015657817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132733 (n : ℕ) : ℤ :=
  A132733.P10154900672015657817.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135855.P16850139679087986239

`2*A110813(n)-A131085(n)`
-/

namespace A135855.P16850139679087986239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110813 n - A131085 n

end

end A135855.P16850139679087986239

noncomputable section

/-- A135855: A007318 * a tridiagonal matrix with (1, 4, 1, 0, 0, 0, ...) in every column.

Offset 0, canonical program `A135855.P16850139679087986239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135855 (n : ℕ) : ℤ :=
  A135855.P16850139679087986239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135856.P7074953744569354246

`2*A110813(n)-A007318(n)`
-/

namespace A135856.P7074953744569354246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110813 n - A007318 n

end

end A135856.P7074953744569354246

noncomputable section

/-- A135856: A007318 * a bidiagonal matrix with all 1's in the main diagonal and all 4's in the subdiagonal.

Offset 1, canonical program `A135856.P7074953744569354246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135856 (n : ℕ) : ℤ :=
  A135856.P7074953744569354246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135857.P11901277241392894431

`2*A110813(n)-A135278(n)`
-/

namespace A135857.P11901277241392894431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110813 n - A135278 n

end

end A135857.P11901277241392894431

noncomputable section

/-- A135857: Partial sums triangle based on A016777. Riordan convolution triangle ((1 + 2*x)/(1-x)^2, x/(1-x)).

Offset 0, canonical program `A135857.P11901277241392894431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135857 (n : ℕ) : ℤ :=
  A135857.P11901277241392894431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136037.P14371956938869211453

`comp[A063037(n+1)]`
-/

namespace A136037.P14371956938869211453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136037.P14371956938869211453

noncomputable section

/-- A136037: Numbers with at least three adjacent equal digits in binary representation.

Offset 1, canonical program `A136037.P14371956938869211453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136037 (n : ℕ) : ℤ :=
  (A136037.P14371956938869211453.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136688.P3993852175964647821

`A134513(n)*A156663(n)`
-/

namespace A136688.P3993852175964647821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134513 n * A156663 n

end

end A136688.P3993852175964647821

noncomputable section

/-- A136688: Triangle of polynomials F(x,n) = x*F(x,n-1) + 2*F(x,n-2).

Offset 1, canonical program `A136688.P3993852175964647821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136688 (n : ℕ) : ℤ :=
  A136688.P3993852175964647821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143655.P13289820664003860313

`A127368(n+1)*A143538(n+1)`
-/

namespace A143655.P13289820664003860313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1) * A143538 (n + 1)

end

end A143655.P13289820664003860313

noncomputable section

/-- A143655: Triangle read by rows, primes not dividing n; A054521 * (A061397 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143655.P13289820664003860313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143655 (n : ℕ) : ℤ :=
  A143655.P13289820664003860313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144794.P15433393553894995957

`eq[A036987(n), A290260(2*n+1)]`
-/

namespace A144794.P15433393553894995957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144794.P15433393553894995957

noncomputable section

/-- A144794: A positive integer n is included if every 0 in binary n is next to at least one other 0.

Offset 1, canonical program `A144794.P15433393553894995957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4394 terms. -/
def A144794 (n : ℕ) : ℤ :=
  (A144794.P15433393553894995957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4394 terms. -/
def A144794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145476.P10984387256319330847

`2*(A145482(n+1)-3)-13`
-/

namespace A145476.P10984387256319330847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A145482 (n + 1) - 3) - 13

end

end A145476.P10984387256319330847

noncomputable section

/-- A145476: Primes p such that (19 + p)/2 is prime.

Offset 1, canonical program `A145476.P10984387256319330847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145476 (n : ℕ) : ℤ :=
  A145476.P10984387256319330847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154681.P7188500157470250777

`A155705(n+1)+1`
-/

namespace A154681.P7188500157470250777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + 1

end

end A154681.P7188500157470250777

noncomputable section

/-- A154681: Triangle read by rows where T(m,n) = 2*m*n + m + n +3.

Offset 1, canonical program `A154681.P7188500157470250777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154681 (n : ℕ) : ℤ :=
  A154681.P7188500157470250777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154926.P2703523724457220951

`A028326(n)-A131111(n)`
-/

namespace A154926.P2703523724457220951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A131111 n

end

end A154926.P2703523724457220951

noncomputable section

/-- A154926: Signed version of Pascal's triangle. Diagonal positive, rest negative.

Offset 1, canonical program `A154926.P2703523724457220951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154926 (n : ℕ) : ℤ :=
  A154926.P2703523724457220951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155151.P15562018363835472075

`2*A144650(n+1)`
-/

namespace A155151.P15562018363835472075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144650 (n + 1)

end

end A155151.P15562018363835472075

noncomputable section

/-- A155151: Triangle T(n, k) = 4*n*k + 2*n + 2*k + 2, read by rows.

Offset 1, canonical program `A155151.P15562018363835472075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144650, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155151 (n : ℕ) : ℤ :=
  A155151.P15562018363835472075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144650, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155865.P6741079026207357977

`A134399(A056943(n))`
-/

namespace A155865.P6741079026207357977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 (A056943 n).toNat

end

end A155865.P6741079026207357977

noncomputable section

/-- A155865: Triangle T(n,k) = (n-1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A155865.P6741079026207357977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155865 (n : ℕ) : ℤ :=
  A155865.P6741079026207357977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155998.P3980764014410470248

`A028326(n)-A155997(n)`
-/

namespace A155998.P3980764014410470248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A155997 n

end

end A155998.P3980764014410470248

noncomputable section

/-- A155998: Triangle read by rows: T(n, k) = f(n, k) + f(n, n-k), where f(n, k) = binomial(n, k)*(1 - (-1)^k)/2.

Offset 0, canonical program `A155998.P3980764014410470248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A155998 (n : ℕ) : ℤ :=
  A155998.P3980764014410470248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A155998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157813.P14905809734430770879

`A038567(n+1)-A157807(n+1)`
-/

namespace A157813.P14905809734430770879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A157807 (n + 1)

end

end A157813.P14905809734430770879

noncomputable section

/-- A157813: Denominators of fractions arranged in "antidiagonal boustrophedon" ordering with equivalent fractions removed: (1/1, 2/1, 1/2, 1/3, 3/1, 4/1, 3/2, 2/3, 1/4, 1/5, 5/1, 6/1, 5/2, ...).

Offset 1, canonical program `A157813.P14905809734430770879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157813 (n : ℕ) : ℤ :=
  A157813.P14905809734430770879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167432.P1971588945599416429

`A110510(lt[1, A002262(n)])`
-/

namespace A167432.P1971588945599416429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167432.P1971588945599416429

noncomputable section

/-- A167432: Riordan array (c(2x)^2,xc(2x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A167432.P1971588945599416429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6555 terms. -/
def A167432 (n : ℕ) : ℤ :=
  A167432.P1971588945599416429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6555 terms. -/
def A167432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168561.P906342881231109173

`A369736(n)²*A134513(n)`
-/

namespace A168561.P906342881231109173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369736 n ^ 2 * A134513 n

end

end A168561.P906342881231109173

noncomputable section

/-- A168561: Triangle of coefficients of the Fibonacci polynomials, starting with F(0, x) = 1, F(1, x) = x.

Offset 0, canonical program `A168561.P906342881231109173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168561 (n : ℕ) : ℤ :=
  A168561.P906342881231109173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168625.P1721656364282430505

`2*A131061(n)-1`
-/

namespace A168625.P1721656364282430505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131061 n - 1

end

end A168625.P1721656364282430505

noncomputable section

/-- A168625: Triangle T(n,k) = 8*binomial(n,k) - 7 with columns 0 <= k <= n.

Offset 0, canonical program `A168625.P1721656364282430505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168625 (n : ℕ) : ℤ :=
  A168625.P1721656364282430505.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173740.P17450600128773935956

`A132737(n)-A014473(n)`
-/

namespace A173740.P17450600128773935956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132737 n - A014473 n

end

end A173740.P17450600128773935956

noncomputable section

/-- A173740: Triangle T(n,k) = binomial(n,k) + 2 for 1 <= k <= n - 1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A173740.P17450600128773935956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173740 (n : ℕ) : ℤ :=
  A173740.P17450600128773935956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174446.P10782928639851895883

`ceil(A132735(n)/2)`
-/

namespace A174446.P10782928639851895883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132735 n : ℚ) / 2⌉

end

end A174446.P10782928639851895883

noncomputable section

/-- A174446: Triangle T(n, k, q) = ceiling(binomial(n, k)/f(n, q)) with T(0, 0) = 1, f(n, q) = 1 + tanh((n-1)/q), and q = 1, read by rows.

Offset 0, canonical program `A174446.P10782928639851895883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174446 (n : ℕ) : ℤ :=
  A174446.P10782928639851895883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174557.P5505119269089589923

`A013942(2*(n+1))*A154990(n+1)`
-/

namespace A174557.P5505119269089589923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (2 * (n + 1)) * A154990 (n + 1)

end

end A174557.P5505119269089589923

noncomputable section

/-- A174557: Triangle T(n, k) = -floor(n/k) with T(n, n) = 1, read by rows.

Offset 1, canonical program `A174557.P5505119269089589923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A174557 (n : ℕ) : ℤ :=
  A174557.P5505119269089589923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A174557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174852.P9332735036458002118

`A010051(A144515(n)+1)`
-/

namespace A174852.P9332735036458002118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A144515 n + 1).toNat

end

end A174852.P9332735036458002118

noncomputable section

/-- A174852: Triangle T(n,k) read by rows. T(1,1)=1, n>1 T(n,1)=A049240, k>1 T(n,k)=A051731.

Offset 1, canonical program `A174852.P9332735036458002118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A174852 (n : ℕ) : ℤ :=
  A174852.P9332735036458002118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A174852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176160.P15303842787062289385

`(A131061(n)+4)^∑[char[∑[n+1]]]`
-/

namespace A176160.P15303842787062289385
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131061 n + 4) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176160.P15303842787062289385

noncomputable section

/-- A176160: Triangle read by rows: T(n,k) = (1 + 4*binomial(n, k))^n.

Offset 0, canonical program `A176160.P15303842787062289385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A176160 (n : ℕ) : ℤ :=
  A176160.P15303842787062289385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A176160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177227.P98995655980783552

`A132044(n)+2-A132737(n)`
-/

namespace A177227.P98995655980783552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132044 n + (2 - A132737 n)

end

end A177227.P98995655980783552

noncomputable section

/-- A177227: Triangle, read by rows, T(n, k) = -binomial(n,k) for 0 < k < n, otherwise T(n, k) = 2.

Offset 0, canonical program `A177227.P98995655980783552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177227 (n : ℕ) : ℤ :=
  A177227.P98995655980783552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177229.P9517387556201153442

`A177228(n)+A103451(n)`
-/

namespace A177229.P9517387556201153442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177228 n + A103451 n

end

end A177229.P9517387556201153442

noncomputable section

/-- A177229: Triangle, read by rows, T(n, k) = -binomial(n,k) for 1 <= k <= n-1, otherwise T(n, k) = 4.

Offset 0, canonical program `A177229.P9517387556201153442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177229 (n : ℕ) : ℤ :=
  A177229.P9517387556201153442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A177229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181932.P11204992688967279884

`A003136(n+1)%2`
-/

namespace A181932.P11204992688967279884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003136 (n + 1)) 2

end

end A181932.P11204992688967279884

noncomputable section

/-- A181932: A003136(n) mod 2.

Offset 1, canonical program `A181932.P11204992688967279884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181932 (n : ℕ) : ℤ :=
  A181932.P11204992688967279884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183153.P5427202907270694970

`2*A184049(n)-A007318(n)`
-/

namespace A183153.P5427202907270694970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184049 n - A007318 n

end

end A183153.P5427202907270694970

noncomputable section

/-- A183153: T(n,k) is the number of order-preserving partial isometries of an n-chain of height k (height of alpha = |Im(alpha)|).

Offset 0, canonical program `A183153.P5427202907270694970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183153 (n : ℕ) : ℤ :=
  A183153.P5427202907270694970.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186350.P695162292826315097

`A186352(n+1)-A214263(n)`
-/

namespace A186350.P695162292826315097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186352 (n + 1) - A214263 n

end

end A186350.P695162292826315097

noncomputable section

/-- A186350: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the odd numbers and the triangular numbers. Complement of A186351.

Offset 1, canonical program `A186350.P695162292826315097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186350 (n : ℕ) : ℤ :=
  A186350.P695162292826315097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193554.P2296603449366778039

`A011782(A158821(n))*A135225(n)`
-/

namespace A193554.P2296603449366778039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A158821 n).toNat * A135225 n

end

end A193554.P2296603449366778039

noncomputable section

/-- A193554: Triangle read by rows: first column: top entry is 1, then powers of 2; rest of triangle is Pascal's triangle A007318.

Offset 0, canonical program `A193554.P2296603449366778039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193554 (n : ℕ) : ℤ :=
  A193554.P2296603449366778039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193843.P10306456707657252884

`xor(1, xor(1, A193842(A061579(n))))`
-/

namespace A193843.P10306456707657252884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A193842 (A061579 n).toNat))

end

end A193843.P10306456707657252884

noncomputable section

/-- A193843: Mirror image of the triangle A193842.

Offset 0, canonical program `A193843.P10306456707657252884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A193843 (n : ℕ) : ℤ :=
  A193843.P10306456707657252884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A193843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193846.P9935074766537536262

`A090988(n+1)*A193842(n)`
-/

namespace A193846.P9935074766537536262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) * A193842 n

end

end A193846.P9935074766537536262

noncomputable section

/-- A193846: Triangular array: the fission of ((x+2)^n) by ((x+1)^n).

Offset 0, canonical program `A193846.P9935074766537536262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A193846 (n : ℕ) : ℤ :=
  A193846.P9935074766537536262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A193846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193848.P11847408491001959917

`A130321(n)*A193842(n)`
-/

namespace A193848.P11847408491001959917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A193842 n

end

end A193848.P11847408491001959917

noncomputable section

/-- A193848: Triangular array: (1/2)*A193846.

Offset 0, canonical program `A193848.P11847408491001959917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193848 (n : ℕ) : ℤ :=
  A193848.P11847408491001959917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A201685.P14021662077219839221

`A008279(n)*A095888(n+1)`
-/

namespace A201685.P14021662077219839221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A095888 (n + 1)

end

end A201685.P14021662077219839221

noncomputable section

/-- A201685: Triangular array read by rows. T(n,k) is the number of connected endofunctions on {1,2,...,n} that have exactly k nodes in the unique cycle of its digraph representation.

Offset 1, canonical program `A201685.P14021662077219839221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A201685 (n : ℕ) : ℤ :=
  A201685.P14021662077219839221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A201685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202822.P8406521791768772267

`filter[A003136(n+2), A187074(#)]`
-/

namespace A202822.P8406521791768772267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A202822.P8406521791768772267

noncomputable section

/-- A202822: Numbers of the form 3*(x^2 + xy + y^2 + x + y) + 1 where x and y are integers.

Offset 1, canonical program `A202822.P8406521791768772267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6444 terms. -/
def A202822 (n : ℕ) : ℤ :=
  A202822.P8406521791768772267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6444 terms. -/
def A202822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205456.P17031699656075010018

`C(A051125(n+1), A049581(n))`
-/

namespace A205456.P17031699656075010018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1)).toNat (A049581 n).toNat

end

end A205456.P17031699656075010018

noncomputable section

/-- A205456: Symmetric matrix by antidiagonals: C(max(i,j),min(i,j)), i>=1, j>=1.

Offset 1, canonical program `A205456.P17031699656075010018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205456 (n : ℕ) : ℤ :=
  (A205456.P17031699656075010018.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205548.P6561402102953099810

`C(A051125(n+1)+1, A049581(n))`
-/

namespace A205548.P6561402102953099810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1) + 1).toNat (A049581 n).toNat

end

end A205548.P6561402102953099810

noncomputable section

/-- A205548: Symmetric matrix by antidiagonals: C(max(i+1,j+1),min(i+1,j+1)), i>=1, j>=1.

Offset 1, canonical program `A205548.P6561402102953099810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205548 (n : ℕ) : ℤ :=
  (A205548.P6561402102953099810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205549.P12206282629607975759

`C(A051125(n+1)+2, A049581(n))`
-/

namespace A205549.P12206282629607975759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1) + 2).toNat (A049581 n).toNat

end

end A205549.P12206282629607975759

noncomputable section

/-- A205549: Symmetric matrix by antidiagonals: C(max(i+2,j+2),min(i+2,j+2)), i>=1, j>=1.

Offset 1, canonical program `A205549.P12206282629607975759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205549 (n : ℕ) : ℤ :=
  (A205549.P12206282629607975759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A205549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207620.P5954762046324026887

`A258993(n+1)+A102426(A061885(n))`
-/

namespace A207620.P5954762046324026887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (n + 1) + A102426 (A061885 n).toNat

end

end A207620.P5954762046324026887

noncomputable section

/-- A207620: Triangle of coefficients of polynomials u(n,x) jointly generated with A207621; see the Formula section.

Offset 1, canonical program `A207620.P5954762046324026887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A207620 (n : ℕ) : ℤ :=
  A207620.P5954762046324026887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A207620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209149.P3458088456185272143

`2*A038207(n)-A200139(n)`
-/

namespace A209149.P3458088456185272143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A200139 n

end

end A209149.P3458088456185272143

noncomputable section

/-- A209149: Triangle of coefficients of polynomials v(n,x) jointly generated with A209146; see the Formula section.

Offset 1, canonical program `A209149.P3458088456185272143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209149 (n : ℕ) : ℤ :=
  A209149.P3458088456185272143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209278.P9064405990168728965

`A002260(A057028(n+1))`
-/

namespace A209278.P9064405990168728965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A057028 (n + 1)).toNat

end

end A209278.P9064405990168728965

noncomputable section

/-- A209278: Second inverse function (numbers of rows) for pairing function A185180.

Offset 1, canonical program `A209278.P9064405990168728965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A209278 (n : ℕ) : ℤ :=
  A209278.P9064405990168728965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A209278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209757.P13901960123179879850

`A059268(n)*A110813(n)`
-/

namespace A209757.P13901960123179879850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A110813 n

end

end A209757.P13901960123179879850

noncomputable section

/-- A209757: Triangle of coefficients of polynomials v(n,x) jointly generated with A013609; see the Formula section.

Offset 1, canonical program `A209757.P13901960123179879850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209757 (n : ℕ) : ℤ :=
  A209757.P13901960123179879850.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209772.P1281362737997625489

`A209771(n+1)+A056944(n)%2`
-/

namespace A209772.P1281362737997625489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + Int.tmod (A056944 n) 2

end

end A209772.P1281362737997625489

noncomputable section

/-- A209772: Triangle of coefficients of polynomials v(n,x) jointly generated with A209771; see the Formula section.

Offset 1, canonical program `A209772.P1281362737997625489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209772 (n : ℕ) : ℤ :=
  A209772.P1281362737997625489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213922.P6928355750704519945

`A051125(n+1)²+1-A210535(n+1)`
-/

namespace A213922.P6928355750704519945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) ^ 2 + (1 - A210535 (n + 1))

end

end A213922.P6928355750704519945

noncomputable section

/-- A213922: Natural numbers placed in table T(n,k) layer by layer. The order of placement: T(n,n), T(n-1,n), T(n,n-1), ... T(1,n), T(n,1). Table T(n,k) read by antidiagonals.

Offset 1, canonical program `A213922.P6928355750704519945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213922 (n : ℕ) : ℤ :=
  A213922.P6928355750704519945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A213922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214803.P16704600720366373310

`(A038567(n)-1)*A020652(n+1)-A038567(n)`
-/

namespace A214803.P16704600720366373310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038567 n - 1) * A020652 (n + 1) - A038567 n

end

end A214803.P16704600720366373310

noncomputable section

/-- A214803: Frobenius numbers of numerators and denominators of rational numbers in order of their canonical enumeration.

Offset 1, canonical program `A214803.P16704600720366373310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214803 (n : ℕ) : ℤ :=
  A214803.P16704600720366373310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220053.P10350376442709660528

`A220075(A014132(n+1))%(n+2)`
-/

namespace A220053.P10350376442709660528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220075 (A014132 (n + 1)).toNat) (n + 2 : ℤ)

end

end A220053.P10350376442709660528

noncomputable section

/-- A220053: Partial sums in rows of A130517, triangle read by rows.

Offset 1, canonical program `A220053.P10350376442709660528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A220053 (n : ℕ) : ℤ :=
  A220053.P10350376442709660528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A220053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A222403.P3020155544965014607

`A194121(n)-A028327(n)`
-/

namespace A222403.P3020155544965014607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - A028327 n

end

end A222403.P3020155544965014607

noncomputable section

/-- A222403: Triangle read by rows: left and right edges are A000217, interior entries are filled in using the Pascal triangle rule.

Offset 0, canonical program `A222403.P3020155544965014607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222403 (n : ℕ) : ℤ :=
  A222403.P3020155544965014607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A222403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226314.P17792487929510332212

`A002024(n+1)-A167192(n+1)`
-/

namespace A226314.P17792487929510332212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A167192 (n + 1)

end

end A226314.P17792487929510332212

noncomputable section

/-- A226314: Triangle read by rows: T(i,j) = j+(i-j)/gcd(i,j) (1<=i<=j).

Offset 1, canonical program `A226314.P17792487929510332212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A226314 (n : ℕ) : ℤ :=
  A226314.P17792487929510332212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A226314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228445.P14846367572173528445

`p?[A063037(n+1)]`
-/

namespace A228445.P14846367572173528445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228445.P14846367572173528445

noncomputable section

/-- A228445: Prime numbers with a binary representation in which each digit is repeated at most twice.

Offset 1, canonical program `A228445.P14846367572173528445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A228445 (n : ℕ) : ℤ :=
  A228445.P14846367572173528445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A228445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253283.P6460536467449515030

`A059481(n)*A097805(n)`
-/

namespace A253283.P6460536467449515030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A097805 n

end

end A253283.P6460536467449515030

noncomputable section

/-- A253283: Triangle read by rows: coefficients of the partial fraction decomposition of [d^n/dx^n] (x/(1-x))^n/n!.

Offset 0, canonical program `A253283.P6460536467449515030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9268 terms. -/
def A253283 (n : ℕ) : ℤ :=
  A253283.P6460536467449515030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9268 terms. -/
def A253283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261229.P11187250923675357345

`A261228(n+2)-A261228(n+1)`
-/

namespace A261229.P11187250923675357345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261228 (n + 2) - A261228 (n + 1)

end

end A261229.P11187250923675357345

noncomputable section

/-- A261229: a(n) = number of steps to reach (n^3)-1 when starting from k = ((n+1)^3)-1 and repeatedly applying the map that replaces k with k - A055401(k), where A055401(k) = the number of positive cubes needed to sum to k using the greedy algorithm.

Offset 1, canonical program `A261229.P11187250923675357345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261229 (n : ℕ) : ℤ :=
  A261229.P11187250923675357345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A261228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A261229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A264357.P4841253329854367094

`A110813(n)-A131085(n)`
-/

namespace A264357.P4841253329854367094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n - A131085 n

end

end A264357.P4841253329854367094

noncomputable section

/-- A264357: Array A(r, n) of number of independent components of a symmetric traceless tensor of rank r and dimension n, written as triangle T(n, r) = A(r, n-r+2), n >= 1, r = 2..n+1.

Offset 1, canonical program `A264357.P4841253329854367094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264357 (n : ℕ) : ℤ :=
  A264357.P4841253329854367094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270050.P15374850051776029815

`2*A003136(n+1)`
-/

namespace A270050.P15374850051776029815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003136 (n + 1)

end

end A270050.P15374850051776029815

noncomputable section

/-- A270050: Numbers of the form 2 * (x^2 + xy + y^2).

Offset 1, canonical program `A270050.P15374850051776029815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270050 (n : ℕ) : ℤ :=
  A270050.P15374850051776029815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A270050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270672.P7077653201386938758

`3*A003136(n+1)`
-/

namespace A270672.P7077653201386938758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003136 (n + 1)

end

end A270672.P7077653201386938758

noncomputable section

/-- A270672: Löschian numbers (A003136) that are multiples of 3.

Offset 1, canonical program `A270672.P7077653201386938758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270672 (n : ℕ) : ℤ :=
  A270672.P7077653201386938758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271185.P10888630706129519928

`A000578(A003136(n+2)-1)+1`
-/

namespace A271185.P10888630706129519928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A003136 (n + 2) - 1).toNat + 1

end

end A271185.P10888630706129519928

noncomputable section

/-- A271185: Löschian numbers (A003136) of the form k^3+1.

Offset 1, canonical program `A271185.P10888630706129519928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A271185 (n : ℕ) : ℤ :=
  A271185.P10888630706129519928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A271185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272703.P10957202336932434053

`∑[A272702(n)]`
-/

namespace A272703.P10957202336932434053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272703.P10957202336932434053

noncomputable section

/-- A272703: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272703.P10957202336932434053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2769 terms. -/
def A272703 (n : ℕ) : ℤ :=
  A272703.P10957202336932434053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2769 terms. -/
def A272703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276791.P3840458042607645209

`C(3, A275925(n+1))`
-/

namespace A276791.P3840458042607645209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A275925 (n + 1)).toNat

end

end A276791.P3840458042607645209

noncomputable section

/-- A276791: Indicator function of (A003146 prefixed with 0).

Offset 0, canonical program `A276791.P3840458042607645209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276791 (n : ℕ) : ℤ :=
  (A276791.P3840458042607645209.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276794.P12228498748025440138

`6%A275925(n+1)`
-/

namespace A276794.P12228498748025440138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (A275925 (n + 1))

end

end A276794.P12228498748025440138

noncomputable section

/-- A276794: Indicator function for A003145.

Offset 0, canonical program `A276794.P12228498748025440138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276794 (n : ℕ) : ℤ :=
  A276794.P12228498748025440138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277745.P5748524634217669141

`and(3, -A275925(n+1))`
-/

namespace A277745.P5748524634217669141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A275925 (n + 1))

end

end A277745.P5748524634217669141

noncomputable section

/-- A277745: Trajectory of 1 under repeated application of the morphism 1 -> 1232, 2 -> 1232232, 3 -> 123232.

Offset 1, canonical program `A277745.P5748524634217669141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277745 (n : ℕ) : ℤ :=
  A277745.P5748524634217669141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284620.P13390262342659901568

`and(A063037(n+1), A134451(n))`
-/

namespace A284620.P13390262342659901568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063037 (n + 1)) (A134451 n)

end

end A284620.P13390262342659901568

noncomputable section

/-- A284620: {00->2}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A284620.P13390262342659901568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284620 (n : ℕ) : ℤ :=
  A284620.P13390262342659901568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304571.P9163030136196335364

`A000007(A127368(n+1)+A051731(n+1))`
-/

namespace A304571.P9163030136196335364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A127368 (n + 1) + A051731 (n + 1)).toNat

end

end A304571.P9163030136196335364

noncomputable section

/-- A304571: Triangle read by rows: T(n,k) = 1 if gcd(k,n) > 1 and n mod k != 0.

Offset 1, canonical program `A304571.P9163030136196335364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304571 (n : ℕ) : ℤ :=
  A304571.P9163030136196335364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305373.P4052659438466849516

`A275925(n)+a(n-1)` with `a(0)=0`
-/

namespace A305373.P4052659438466849516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A275925 n + a (n - 1)

end

end A305373.P4052659438466849516

noncomputable section

/-- A305373: a(n) = A003144(n) + A003145(n).

Offset 0, canonical program `A305373.P4052659438466849516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305373 (n : ℕ) : ℤ :=
  A305373.P4052659438466849516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308200.P11353778696816616322

`A275925(n+1)+a(n-1)+1` with `a(0)=0`
-/

namespace A308200.P11353778696816616322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A275925 (n + 1) + (a (n - 1) + 1)

end

end A308200.P11353778696816616322

noncomputable section

/-- A308200: The tribonacci representation of a(n) is obtained by appending 0,0,0 to the tribonacci representation of n (cf. A278038).

Offset 0, canonical program `A308200.P11353778696816616322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308200 (n : ℕ) : ℤ :=
  A308200.P11353778696816616322.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316714.P1143918142362973525

`A316715(n)+A316716(n)+A316717(n)`
-/

namespace A316714.P1143918142362973525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316715 n + A316716 n + A316717 n

end

end A316714.P1143918142362973525

noncomputable section

/-- A316714: a(n) is the number of digits of A316713(n). This is the number of A, B and C sequences used in the tribonacci ABC-representation of n >= 0.

Offset 0, canonical program `A316714.P1143918142362973525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316715, A316716, A316717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316714 (n : ℕ) : ℤ :=
  A316714.P1143918142362973525.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316715, A316716, A316717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A316714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317498.P1933526923235161888

`A303901(A061579(n))`
-/

namespace A317498.P1933526923235161888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303901 (A061579 n).toNat

end

end A317498.P1933526923235161888

noncomputable section

/-- A317498: Triangle read by rows of coefficients in expansions of (-2 + 3*x)^n, where n is nonnegative integer.

Offset 0, canonical program `A317498.P1933526923235161888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317498 (n : ℕ) : ℤ :=
  A317498.P1933526923235161888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320085.P14941602887123033736

`A141692(n)/gcd(A062383(n), A141692(n))`
-/

namespace A320085.P14941602887123033736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141692 n : ℚ) / (Int.gcd (A062383 n) (A141692 n) : ℚ)

end

end A320085.P14941602887123033736

noncomputable section

/-- A320085: Triangle read by rows, 0 <= k <= n: T(n,k) is the numerator of the derivative of the k-th Bernstein basis polynomial of degree n evaluated at the interval midpoint t = 1/2; denominator is A320086.

Offset 0, canonical program `A320085.P14941602887123033736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A320085 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320085.P14941602887123033736.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A320085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322744.P7428208251532424710

`2*A334923(n+1)-A003991(n+1)`
-/

namespace A322744.P7428208251532424710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334923 (n + 1) - A003991 (n + 1)

end

end A322744.P7428208251532424710

noncomputable section

/-- A322744: Array T(n,k) = (3*n*k - A319929(n,k))/2, n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A322744.P7428208251532424710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A322744 (n : ℕ) : ℤ :=
  A322744.P7428208251532424710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A322744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326925.P262717898238461765

`A094442(n+1)-A132148(n+1)`
-/

namespace A326925.P262717898238461765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 (n + 1) - A132148 (n + 1)

end

end A326925.P262717898238461765

noncomputable section

/-- A326925: Irregular triangular array read by rows: row n shows the coefficients of this polynomial of degree n: (1/n!)*(numerator of n-th derivative of (1-x)/(1-x-x^2)).

Offset 1, canonical program `A326925.P262717898238461765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326925 (n : ℕ) : ℤ :=
  A326925.P262717898238461765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328901.P982208090738083972

`A059481(n)/gcd(A003056(n), A059481(n))`
-/

namespace A328901.P982208090738083972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059481 n : ℚ) / (Int.gcd (A003056 n) (A059481 n) : ℚ)

end

end A328901.P982208090738083972

noncomputable section

/-- A328901: Triangle T(n, k) read by rows: T(n, k) is the numerator of the rational Catalan number defined as binomial(n + k, n)/(n + k) for n > 0 and T(0, 0) = 1.

Offset 0, canonical program `A328901.P982208090738083972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328901.P982208090738083972.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333821.P11133852965826041050

`6*A121741(n+1)`
-/

namespace A333821.P11133852965826041050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A121741 (n + 1)

end

end A333821.P11133852965826041050

noncomputable section

/-- A333821: Numbers k that can be represented in the form k = p^3 - q^3 - r^3, where p, q, r are positive integers satisfying p = q + r.

Offset 1, canonical program `A333821.P11133852965826041050`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333821 (n : ℕ) : ℤ :=
  A333821.P11133852965826041050.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334236.P2131599608989732677

`xor(A010059(n), A334233(n+1))`
-/

namespace A334236.P2131599608989732677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010059 n) (A334233 (n + 1))

end

end A334236.P2131599608989732677

noncomputable section

/-- A334236: a(n) is the Y-coordinate of the point at n steps backward from the origin along the H-order curve defined in A334232; sequence A334235 gives X-coordinates.

Offset 0, canonical program `A334236.P2131599608989732677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A334236 (n : ℕ) : ℤ :=
  A334236.P2131599608989732677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A334236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337288.P14799538653772618557

`A095279(Δ[n²])-1`
-/

namespace A337288.P14799538653772618557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A337288.P14799538653772618557

noncomputable section

/-- A337288: Numbers k such that k is in A095096 and k+1 is in A020899.

Offset 1, canonical program `A337288.P14799538653772618557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337288 (n : ℕ) : ℤ :=
  A337288.P14799538653772618557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337289.P989732119151109843

`A095279(2*(n+1))-1`
-/

namespace A337289.P989732119151109843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 (2 * (n + 1)) - 1

end

end A337289.P989732119151109843

noncomputable section

/-- A337289: Numbers k such that k+1 is in A095096 and k is in A020899.

Offset 1, canonical program `A337289.P989732119151109843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337289 (n : ℕ) : ℤ :=
  A337289.P989732119151109843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338878.P14330195955316122499

`gcd(A054531(n+1), A277227(n+1))`
-/

namespace A338878.P14330195955316122499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054531 (n + 1)) (A277227 (n + 1))

end

end A338878.P14330195955316122499

noncomputable section

/-- A338878: Numerators in a set of expansions of the single-term Machin-like formula for Pi.

Offset 1, canonical program `A338878.P14330195955316122499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A338878 (n : ℕ) : ℤ :=
  (A338878.P14330195955316122499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A338878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338995.P635426682492004782

`A108756(Δ[n²]+∑[char[∑[n]]]²)`
-/

namespace A338995.P635426682492004782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108756 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)).toNat

end

end A338995.P635426682492004782

noncomputable section

/-- A338995: Triangle T(n,m):=binomial(n+3*m+2,n-m).

Offset 0, canonical program `A338995.P635426682492004782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A338995 (n : ℕ) : ℤ :=
  A338995.P635426682492004782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A338995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341314.P12612077031606272302

`A277227(A083920(n)+1)%(n+1)`
-/

namespace A341314.P12612077031606272302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277227 (A083920 n + 1).toNat) (n + 1 : ℤ)

end

end A341314.P12612077031606272302

noncomputable section

/-- A341314: Array read by antidiagonals: T(n,k) = (n+k)/gcd(n,k), n>=0, k>=0.

Offset 0, canonical program `A341314.P12612077031606272302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341314 (n : ℕ) : ℤ :=
  A341314.P12612077031606272302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351631.P11342261309472884604

`lt[A275925(n+1), 6]`
-/

namespace A351631.P11342261309472884604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A351631.P11342261309472884604

noncomputable section

/-- A351631: The numbers that are not doubled in column -1 of the extended Trithoff (tribonacci) array.

Offset 1, canonical program `A351631.P11342261309472884604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351631 (n : ℕ) : ℤ :=
  (A351631.P11342261309472884604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361719.P1621893453900705206

`n²*A103283(A007590(n))`
-/

namespace A361719.P1621893453900705206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A103283 (A007590 n).toNat

end

end A361719.P1621893453900705206

noncomputable section

/-- A361719: a(n) = Sum_{k = 1..n} (-1)^(n+k) * k^3 * binomial(n,k)^2.

Offset 0, canonical program `A361719.P1621893453900705206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A361719 (n : ℕ) : ℤ :=
  A361719.P1621893453900705206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A361719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370706.P10819961141183438908

`A008279(n)*A059481(n)`
-/

namespace A370706.P10819961141183438908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A059481 n

end

end A370706.P10819961141183438908

noncomputable section

/-- A370706: Triangle read by rows: T(n, k) = binomial(n, k) * Pochhammer(n, k).

Offset 0, canonical program `A370706.P10819961141183438908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A370706 (n : ℕ) : ℤ :=
  A370706.P10819961141183438908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A370706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383784.P16897109203414652711

`∪[A001481(n+1), A003136(n+1)]`
-/

namespace A383784.P16897109203414652711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383784.P16897109203414652711

noncomputable section

/-- A383784: Norms of vectors in any regular planar tiling (square or A2 lattice).

Offset 1, canonical program `A383784.P16897109203414652711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784 (n : ℕ) : ℤ :=
  (A383784.P16897109203414652711.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385406.P6181901928708286412

`A056023(A057028(n+1))`
-/

namespace A385406.P6181901928708286412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A057028 (n + 1)).toNat

end

end A385406.P6181901928708286412

noncomputable section

/-- A385406: Triangle read by rows: T(n, k) = n*(n+1)/2 - floor((n-1)/2) - (-1)^k * floor(k/2).

Offset 1, canonical program `A385406.P6181901928708286412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A385406 (n : ℕ) : ℤ :=
  A385406.P6181901928708286412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. -/
def A385406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008506.P2596712587414377002

`∑[A008495(n)]`
-/

namespace A008506.P2596712587414377002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008506.P2596712587414377002

noncomputable section

/-- A008506: 12-dimensional centered tetrahedral numbers.

Offset 0, canonical program `A008506.P2596712587414377002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008506 (n : ℕ) : ℤ :=
  A008506.P2596712587414377002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020653.P13896194492571762582

`A038567(n+1)-A020652(n+1)`
-/

namespace A020653.P13896194492571762582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A020652 (n + 1)

end

end A020653.P13896194492571762582

noncomputable section

/-- A020653: Denominators in a certain bijection from positive integers to positive rationals.

Offset 1, canonical program `A020653.P13896194492571762582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020653 (n : ℕ) : ℤ :=
  A020653.P13896194492571762582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024473.P1897966337060809418

`A024592(n+1)+A024592(n+1)-A024463(n+1)`
-/

namespace A024473.P1897966337060809418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024592 (n + 1) + (A024592 (n + 1) - A024463 (n + 1))

end

end A024473.P1897966337060809418

noncomputable section

/-- A024473: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = (Lucas numbers), t = (odd natural numbers).

Offset 1, canonical program `A024473.P1897966337060809418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A024473 (n : ℕ) : ℤ :=
  A024473.P1897966337060809418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A024473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026087.P2933839439661880285

`Δ[A026086(n+4)]-A026085(n+4)`
-/

namespace A026087.P2933839439661880285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026086 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026085 (n + 4)

end

end A026087.P2933839439661880285

noncomputable section

/-- A026087: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, |s(i) - s(i-1)| = 1 for i = 1,2,3; |s(i) - s(i-1)| <= 1 for i >= 4, s(n) = 4. Also a(n) = T(n,n-4), where T is the array defined in A026082.

Offset 4, canonical program `A026087.P2933839439661880285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A026087 (n : ℕ) : ℤ :=
  A026087.P2933839439661880285.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A026087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026125.P8928138202584515454

`Δ[A026124(n+3)]-A026123(n+3)`
-/

namespace A026125.P8928138202584515454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026123 (n + 3)

end

end A026125.P8928138202584515454

noncomputable section

/-- A026125: a(n) = number of (s(0),s(1),...,s(n)) such that every s(i) is a nonnegative integer, s(0) = 1, s(n) = 4, |s(1) - s(0)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2. Also a(n) = T(n,n-3), where T is the array in A026120.

Offset 3, canonical program `A026125.P8928138202584515454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026125 (n : ℕ) : ℤ :=
  A026125.P8928138202584515454.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026152.P13028405890907652534

`A026124(n+3)-A026109(n+3)`
-/

namespace A026152.P13028405890907652534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (n + 3) - A026109 (n + 3)

end

end A026152.P13028405890907652534

noncomputable section

/-- A026152: a(n) = T(n,n-1), where T is the array in A026148.

Offset 2, canonical program `A026152.P13028405890907652534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026152 (n : ℕ) : ℤ :=
  A026152.P13028405890907652534.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027314.P4582682916324983632

`A026325(2*n)`
-/

namespace A027314.P4582682916324983632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026325 (2 * n)

end

end A027314.P4582682916324983632

noncomputable section

/-- A027314: a(n) is the sum of squares of numbers in row n of array T given by A026323.

Offset 0, canonical program `A027314.P4582682916324983632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027314 (n : ℕ) : ℤ :=
  A027314.P4582682916324983632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A027314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028262.P11072633460123417746

`A323211(n)+A014473(n)`
-/

namespace A028262.P11072633460123417746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n + A014473 n

end

end A028262.P11072633460123417746

noncomputable section

/-- A028262: Elements in 3-Pascal triangle (by row).

Offset 0, canonical program `A028262.P11072633460123417746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028262 (n : ℕ) : ℤ :=
  A028262.P11072633460123417746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028277.P11561651408615929989

`A028275(A268231(n+1))`
-/

namespace A028277.P11561651408615929989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (A268231 (n + 1)).toNat

end

end A028277.P11561651408615929989

noncomputable section

/-- A028277: Odd elements in 4-Pascal triangle A028275 (by row).

Offset 0, canonical program `A028277.P11561651408615929989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A028277 (n : ℕ) : ℤ :=
  A028277.P11561651408615929989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. -/
def A028277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028279.P15759741171861685895

`A028275(A268232(n+1))`
-/

namespace A028279.P15759741171861685895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (A268232 (n + 1)).toNat

end

end A028279.P15759741171861685895

noncomputable section

/-- A028279: Even elements in 4-Pascal triangle A028275 (by row).

Offset 0, canonical program `A028279.P15759741171861685895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A028279 (n : ℕ) : ℤ :=
  A028279.P15759741171861685895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A028279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028313.P12289256614395015877

`A028275(n)+A323211(n)-1`
-/

namespace A028313.P12289256614395015877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n + (A323211 n - 1)

end

end A028313.P12289256614395015877

noncomputable section

/-- A028313: Elements in the 5-Pascal triangle (by row).

Offset 0, canonical program `A028313.P12289256614395015877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028313 (n : ℕ) : ℤ :=
  A028313.P12289256614395015877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029192.P625533738884100242

`A029084(n)-a(n-1)` with `a(0)=1`
-/

namespace A029192.P625533738884100242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029084 n - a (n - 1)

end

end A029192.P625533738884100242

noncomputable section

/-- A029192: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029192.P625533738884100242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029192 (n : ℕ) : ℤ :=
  A029192.P625533738884100242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029315.P17147396963157737905

`A029280(n)+A029305(n)-A029277(n)`
-/

namespace A029315.P17147396963157737905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029280 n + (A029305 n - A029277 n)

end

end A029315.P17147396963157737905

noncomputable section

/-- A029315: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029315.P17147396963157737905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029315 (n : ℕ) : ℤ :=
  A029315.P17147396963157737905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029381.P10530664393287797805

`A029280(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029381.P10530664393287797805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029280 n - a (n - 3)

end

end A029381.P10530664393287797805

noncomputable section

/-- A029381: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A029381.P10530664393287797805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029381 (n : ℕ) : ℤ :=
  A029381.P10530664393287797805.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029607.P1574991405031157313

`A029605(lt[2, A029605(n)])`
-/

namespace A029607.P1574991405031157313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029607.P1574991405031157313

noncomputable section

/-- A029607: Even numbers in the (2,3)-Pascal triangle A029600 that are different from 2.

Offset 1, canonical program `A029607.P1574991405031157313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. -/
def A029607 (n : ℕ) : ℤ :=
  A029607.P1574991405031157313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. -/
def A029607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029620.P6209062257735337057

`A029618(comp[∑[n+2]])`
-/

namespace A029620.P6209062257735337057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A029620.P6209062257735337057

noncomputable section

/-- A029620: Numbers in (3,2)-Pascal triangle A029618 that are different from 2.

Offset 0, canonical program `A029620.P6209062257735337057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A029620 (n : ℕ) : ℤ :=
  A029620.P6209062257735337057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A029620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029622.P170867044904776595

`A029618(eq[1, A290452(n)])`
-/

namespace A029622.P170867044904776595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029622.P170867044904776595

noncomputable section

/-- A029622: Odd numbers in (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029622.P170867044904776595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. -/
def A029622 (n : ℕ) : ℤ :=
  A029622.P170867044904776595.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. -/
def A029622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029623.P11351172865891342749

`A029618(eq[0, A290452(n)])`
-/

namespace A029623.P11351172865891342749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029623.P11351172865891342749

noncomputable section

/-- A029623: Even numbers in (3,2)-Pascal triangle A029618.

Offset 0, canonical program `A029623.P11351172865891342749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7728 terms. -/
def A029623 (n : ℕ) : ℤ :=
  A029623.P11351172865891342749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7728 terms. -/
def A029623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037969.P7343057813595917387

`∩[A063037(n+1), A107907(n+1)]`
-/

namespace A037969.P7343057813595917387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037969.P7343057813595917387

noncomputable section

/-- A037969: Numbers whose maximal base-2 run length is 2.

Offset 1, canonical program `A037969.P7343057813595917387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1116 terms. -/
def A037969 (n : ℕ) : ℤ :=
  (A037969.P7343057813595917387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1116 terms. -/
def A037969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046219.P8977103861444328080

`gcd(2, A323211(n))`
-/

namespace A046219.P8977103861444328080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A323211 n)

end

end A046219.P8977103861444328080

noncomputable section

/-- A046219: Denominators of elements of 1/2-Pascal triangle (by row).

Offset 1, canonical program `A046219.P8977103861444328080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046219 (n : ℕ) : ℤ :=
  (A046219.P8977103861444328080.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049465.P10062401916254781799

`A049448(n)+A007305(n)`
-/

namespace A049465.P10062401916254781799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n + A007305 n

end

end A049465.P10062401916254781799

noncomputable section

/-- A049465: Replace each fraction p/q in Farey tree A007305/A007306 with 2p + q.

Offset 0, canonical program `A049465.P10062401916254781799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049465 (n : ℕ) : ℤ :=
  A049465.P10062401916254781799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049468.P14759900804743389918

`A049448(n)+A007306(n)`
-/

namespace A049468.P14759900804743389918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n + A007306 n

end

end A049468.P14759900804743389918

noncomputable section

/-- A049468: Replace each fraction p/q in Farey tree A007305/A007306 with p+2q.

Offset 0, canonical program `A049468.P14759900804743389918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049468 (n : ℕ) : ℤ :=
  A049468.P14759900804743389918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051433.P4257297967773585722

`A029605(n)/2`
-/

namespace A051433.P4257297967773585722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029605 n : ℚ) / 2

end

end A051433.P4257297967773585722

noncomputable section

/-- A051433: (Terms in A029605)/2.

Offset 0, canonical program `A051433.P4257297967773585722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051433 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051433.P4257297967773585722.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051467.P17492901673061742527

`A029640(n+2)/2`
-/

namespace A051467.P17492901673061742527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029640 (n + 2) : ℚ) / 2

end

end A051467.P17492901673061742527

noncomputable section

/-- A051467: (Terms in A029640)/2.

Offset 0, canonical program `A051467.P17492901673061742527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A051467 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051467.P17492901673061742527.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A051467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056977.P11839360104264240419

`A056975(A292264(n+1))`
-/

namespace A056977.P11839360104264240419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (A292264 (n + 1)).toNat

end

end A056977.P11839360104264240419

noncomputable section

/-- A056977: Number of blocks of {0, 1, 1} in binary expansion of n.

Offset 1, canonical program `A056977.P11839360104264240419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056977 (n : ℕ) : ℤ :=
  A056977.P11839360104264240419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057059.P4184647556311659396

`gcd(A080251(n), A141419(n+1))`
-/

namespace A057059.P4184647556311659396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080251 n) (A141419 (n + 1))

end

end A057059.P4184647556311659396

noncomputable section

/-- A057059: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ... Define i(m) and j(m) by R(i(m),j(m)) = m. Then a(n) = j(A057027(n)).

Offset 1, canonical program `A057059.P4184647556311659396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057059 (n : ℕ) : ℤ :=
  (A057059.P4184647556311659396.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057764.P12807561923847807720

`A054522(∑[comp[floor(2^(n-1))]])`
-/

namespace A057764.P12807561923847807720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057764.P12807561923847807720

noncomputable section

/-- A057764: Triangle T(n,k) = number of nonzero elements of multiplicative order k in Galois field GF(2^n) (n >= 1, 1 <= k <= 2^n-1).

Offset 1, canonical program `A057764.P12807561923847807720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A057764 (n : ℕ) : ℤ :=
  A057764.P12807561923847807720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A057764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059797.P8076883929035700437

`A061928(n+1)-A194121(n)`
-/

namespace A059797.P8076883929035700437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061928 (n + 1) - A194121 n

end

end A059797.P8076883929035700437

noncomputable section

/-- A059797: Second in a series of arrays counting standard tableaux by partition type.

Offset 0, canonical program `A059797.P8076883929035700437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059797 (n : ℕ) : ℤ :=
  A059797.P8076883929035700437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061043.P8978401913737900306

`A172370(A055998(n+2))%(3*n+1)²`
-/

namespace A061043.P8978401913737900306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172370 (A055998 (n + 2)).toNat) ((3 * n + 1) ^ 2 : ℤ)

end

end A061043.P8978401913737900306

noncomputable section

/-- A061043: Numerator of 1/25 - 1/n^2.

Offset 5, canonical program `A061043.P8978401913737900306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A061043 (n : ℕ) : ℤ :=
  A061043.P8978401913737900306.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A061043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062627.P16947834308808858695

`A000108(n)*A054527(A034856(n+1))`
-/

namespace A062627.P16947834308808858695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A054527 (A034856 (n + 1)).toNat

end

end A062627.P16947834308808858695

noncomputable section

/-- A062627: a(n) = mu(n) * Catalan(n).

Offset 0, canonical program `A062627.P16947834308808858695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A062627 (n : ℕ) : ℤ :=
  A062627.P16947834308808858695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A062627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072729.P1910500847283528743

`A071766(eq[0, A334076(n)])`
-/

namespace A072729.P1910500847283528743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072729.P1910500847283528743

noncomputable section

/-- A072729: Denominator of rationals >= 1 whose continued fractions consist only of 1's and 2's, in ascending order by the sum of the continued fraction terms and descending by lowest order continued fraction terms to highest.

Offset 0, canonical program `A072729.P1910500847283528743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A072729 (n : ℕ) : ℤ :=
  A072729.P1910500847283528743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A072729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089798.P15808584881803484969

`and(A176742(n), A185916(n+1))`
-/

namespace A089798.P15808584881803484969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176742 n) (A185916 (n + 1))

end

end A089798.P15808584881803484969

noncomputable section

/-- A089798: Expansion of Jacobi theta function theta_4(q^2).

Offset 0, canonical program `A089798.P15808584881803484969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089798 (n : ℕ) : ℤ :=
  A089798.P15808584881803484969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093561.P15258918646658549341

`A097805(n+1)+A093560(n)`
-/

namespace A093561.P15258918646658549341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A093560 n

end

end A093561.P15258918646658549341

noncomputable section

/-- A093561: (4,1) Pascal triangle.

Offset 0, canonical program `A093561.P15258918646658549341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093561 (n : ℕ) : ℤ :=
  A093561.P15258918646658549341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093562.P10658799261842261542

`2*A093560(n)-A007318(n)`
-/

namespace A093562.P10658799261842261542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093560 n - A007318 n

end

end A093562.P10658799261842261542

noncomputable section

/-- A093562: (5,1) Pascal triangle.

Offset 0, canonical program `A093562.P10658799261842261542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093562 (n : ℕ) : ℤ :=
  A093562.P10658799261842261542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095666.P3074718101462256715

`A097805(n)+A095660(n)`
-/

namespace A095666.P3074718101462256715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A095660 n

end

end A095666.P3074718101462256715

noncomputable section

/-- A095666: Pascal (1,4) triangle.

Offset 0, canonical program `A095666.P3074718101462256715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095666 (n : ℕ) : ℤ :=
  A095666.P3074718101462256715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115236.P4359800970134517995

`Δ[-A111967(n)]`
-/

namespace A115236.P4359800970134517995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A111967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115236.P4359800970134517995

noncomputable section

/-- A115236: Matrix inverse of triangle A003983.

Offset 0, canonical program `A115236.P4359800970134517995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115236 (n : ℕ) : ℤ :=
  A115236.P4359800970134517995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115512.P17971829937860406712

`A117198(A183572(n+1))`
-/

namespace A115512.P17971829937860406712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117198 (A183572 (n + 1)).toNat

end

end A115512.P17971829937860406712

noncomputable section

/-- A115512: Number triangle (1,x)+(x,x^3) expressed in terms of Riordan arrays.

Offset 0, canonical program `A115512.P17971829937860406712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A115512 (n : ℕ) : ℤ :=
  A115512.P17971829937860406712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A115512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118800.P15159252118811850146

`A033999(A294317(n))*A200139(n)`
-/

namespace A118800.P15159252118811850146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A200139 n

end

end A118800.P15159252118811850146

noncomputable section

/-- A118800: Triangle read by rows: T satisfies the matrix products: C*T*C = T^-1 and T*C*T = C^-1, where C is Pascal's triangle.

Offset 0, canonical program `A118800.P15159252118811850146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118800 (n : ℕ) : ℤ :=
  A118800.P15159252118811850146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118801.P6489775398404717729

`A033999(A002262(n))*A112857(n)`
-/

namespace A118801.P6489775398404717729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A112857 n

end

end A118801.P6489775398404717729

noncomputable section

/-- A118801: Triangle T that satisfies the matrix products: C*[T^-1]*C = T and T*[C^-1]*T = C, where C is Pascal's triangle.

Offset 0, canonical program `A118801.P6489775398404717729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118801 (n : ℕ) : ℤ :=
  A118801.P6489775398404717729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119272.P14198164838686910294

`A049449(n)-A007305(n)²`
-/

namespace A119272.P14198164838686910294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049449 n - A007305 n ^ 2

end

end A119272.P14198164838686910294

noncomputable section

/-- A119272: Product of numerator and denominator in Stern-Brocot tree.

Offset 1, canonical program `A119272.P14198164838686910294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119272 (n : ℕ) : ℤ :=
  A119272.P14198164838686910294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127466.P7012915985447955855

`A054522(n+1)*A002024(n+1)`
-/

namespace A127466.P7012915985447955855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A002024 (n + 1)

end

end A127466.P7012915985447955855

noncomputable section

/-- A127466: Triangle read by rows: A054525 * A127481 as infinite lower triangular matrices.

Offset 1, canonical program `A127466.P7012915985447955855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127466 (n : ℕ) : ℤ :=
  A127466.P7012915985447955855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127471.P13945067450438146790

`A054522(n+1)*A127170(n+1)`
-/

namespace A127471.P13945067450438146790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A127170 (n + 1)

end

end A127471.P13945067450438146790

noncomputable section

/-- A127471: Triangle formed from the matrix product A051731 * A054522 of infinite lower triangular matrices, read by rows.

Offset 1, canonical program `A127471.P13945067450438146790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127471 (n : ℕ) : ℤ :=
  A127471.P13945067450438146790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127478.P7454647749002706271

`A010766(n+1)*A054522(n+1)`
-/

namespace A127478.P7454647749002706271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A054522 (n + 1)

end

end A127478.P7454647749002706271

noncomputable section

/-- A127478: Triangle T(n,k) read by rows: matrix product A054523 * A054522.

Offset 1, canonical program `A127478.P7454647749002706271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127478 (n : ℕ) : ℤ :=
  A127478.P7454647749002706271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127505.P16814428001717394106

`A054522(n+1)*A054525(n+1)`
-/

namespace A127505.P16814428001717394106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A054525 (n + 1)

end

end A127505.P16814428001717394106

noncomputable section

/-- A127505: Triangle T(n,k) = mobius(n/k)*phi(k) if k|n, otherwise T(n,k)=0; 1<=k<=n.

Offset 1, canonical program `A127505.P16814428001717394106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127505 (n : ℕ) : ℤ :=
  A127505.P16814428001717394106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127506.P11176136321246717551

`∑{d}[A127368(n+1), A007431(#)]`
-/

namespace A127506.P11176136321246717551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A127506.P11176136321246717551

noncomputable section

/-- A127506: Triangle read by rows: T(n,k) = A054521(n,k)*A000010(k), 1<=k<=n .

Offset 1, canonical program `A127506.P11176136321246717551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127506 (n : ℕ) : ℤ :=
  A127506.P11176136321246717551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127510.P18353277708436359795

`A002260(n+1)*A127507(n+1)`
-/

namespace A127510.P18353277708436359795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127507 (n + 1)

end

end A127510.P18353277708436359795

noncomputable section

/-- A127510: Triangle T(n,k) = k*mobius(n).

Offset 1, canonical program `A127510.P18353277708436359795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127510 (n : ℕ) : ℤ :=
  A127510.P18353277708436359795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127512.P4816962291726319378

`A007318(n)*A127507(n+1)`
-/

namespace A127512.P4816962291726319378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A127507 (n + 1)

end

end A127512.P4816962291726319378

noncomputable section

/-- A127512: Triangle read by rows: T(n,k)= mobius(n)*binomial(n-1,k-1).

Offset 1, canonical program `A127512.P4816962291726319378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127512 (n : ℕ) : ℤ :=
  A127512.P4816962291726319378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127514.P8561216037142629593

`A007318(n)*A054527(n+1)`
-/

namespace A127514.P8561216037142629593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A054527 (n + 1)

end

end A127514.P8561216037142629593

noncomputable section

/-- A127514: Binomial transform of an infinite lower triangular matrix with mu(n) in the diagonal.

Offset 1, canonical program `A127514.P8561216037142629593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127514 (n : ℕ) : ℤ :=
  A127514.P8561216037142629593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127677.P11101352811023800668

`A110162(n)+A000007(n)`
-/

namespace A127677.P11101352811023800668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n + A000007 n

end

end A127677.P11101352811023800668

noncomputable section

/-- A127677: Scaled coefficient table for Chebyshev polynomials 2*T(2*n, sqrt(x)/2) (increasing even scaled powers, without zero entries).

Offset 0, canonical program `A127677.P11101352811023800668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127677 (n : ℕ) : ℤ :=
  A127677.P11101352811023800668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127793.P12461716665671031307

`ceil(A002260(n+1)/2)*A111967(n)`
-/

namespace A127793.P12461716665671031307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002260 (n + 1) : ℚ) / 2⌉ * A111967 n

end

end A127793.P12461716665671031307

noncomputable section

/-- A127793: Inverse of number triangle t(n,k) = 1/floor((n+2)/2) if k <= n <= 2*k, 0 otherwise.

Offset 0, canonical program `A127793.P12461716665671031307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127793 (n : ℕ) : ℤ :=
  A127793.P12461716665671031307.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127822.P4246490665184018165

`abs(A111967(n))`
-/

namespace A127822.P4246490665184018165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111967 n|

end

end A127822.P4246490665184018165

noncomputable section

/-- A127822: Triangle whose row sums modulo 2 give the Fredholm-Rueppel sequence A036987.

Offset 0, canonical program `A127822.P4246490665184018165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127822 (n : ℕ) : ℤ :=
  A127822.P4246490665184018165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128258.P4012319948261339764

`A127448(n+2)-Δ[A054525(n+1)]`
-/

namespace A128258.P4012319948261339764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127448 (n + 2) - (f1 (n + 1) - f1 n)

end

end A128258.P4012319948261339764

noncomputable section

/-- A128258: Moebius transform of A128229.

Offset 1, canonical program `A128258.P4012319948261339764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128258 (n : ℕ) : ℤ :=
  A128258.P4012319948261339764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128408.P3158238349057078599

`A051731(n+1)*A127507(n+1)`
-/

namespace A128408.P3158238349057078599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A127507 (n + 1)

end

end A128408.P3158238349057078599

noncomputable section

/-- A128408: Triangle read by rows: A128407 * A051731 as infinite lower triangular matrices.

Offset 1, canonical program `A128408.P3158238349057078599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128408 (n : ℕ) : ℤ :=
  A128408.P3158238349057078599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128414.P626229148063525826

`A110162(n)*A130321(n)`
-/

namespace A128414.P626229148063525826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 n * A130321 n

end

end A128414.P626229148063525826

noncomputable section

/-- A128414: Riordan array ((1-2x)/(1+2x),x/(1+2x)^2).

Offset 0, canonical program `A128414.P626229148063525826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128414 (n : ℕ) : ℤ :=
  A128414.P626229148063525826.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129684.P1014183556665715311

`A072346(A025581(n))*A099174(n)`
-/

namespace A129684.P1014183556665715311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 (A025581 n).toNat * A099174 n

end

end A129684.P1014183556665715311

noncomputable section

/-- A129684: Exponential Riordan array [1/(1-x^2/2), x].

Offset 0, canonical program `A129684.P1014183556665715311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3004 terms. -/
def A129684 (n : ℕ) : ℤ :=
  A129684.P1014183556665715311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3004 terms. -/
def A129684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129687.P17387870988245757681

`2*A097805(n)-A159855(n)`
-/

namespace A129687.P17387870988245757681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097805 n - A159855 n

end

end A129687.P17387870988245757681

noncomputable section

/-- A129687: A129686 * A007318.

Offset 0, canonical program `A129687.P17387870988245757681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129687 (n : ℕ) : ℤ :=
  A129687.P17387870988245757681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130211.P14688960179644469380

`A004736(∑[A054522(abs(1-n)+1)])`
-/

namespace A130211.P14688960179644469380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130211.P14688960179644469380

noncomputable section

/-- A130211: Triangle read by rows: matrix product A054522 * A000012.

Offset 1, canonical program `A130211.P14688960179644469380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130211 (n : ℕ) : ℤ :=
  A130211.P14688960179644469380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132460.P7544697064205325681

`A293600(A056536(n+1))`
-/

namespace A132460.P7544697064205325681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293600 (A056536 (n + 1)).toNat

end

end A132460.P7544697064205325681

noncomputable section

/-- A132460: Irregular triangle read by rows of the initial floor(n/2) + 1 coefficients of 1/C(x)^n, where C(x) is the g.f. of the Catalan sequence (A000108).

Offset 0, canonical program `A132460.P7544697064205325681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A132460 (n : ℕ) : ℤ :=
  A132460.P7544697064205325681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A132460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133101.P1108261628039295405

`abs(A113428(n))`
-/

namespace A133101.P1108261628039295405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113428 n|

end

end A133101.P1108261628039295405

noncomputable section

/-- A133101: Expansion of f(x^2, x^3) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A133101.P1108261628039295405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133101 (n : ℕ) : ℤ :=
  A133101.P1108261628039295405.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133336.P10300946866893438711

`A060693(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A133336.P10300946866893438711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060693 n - a (n - 1)

end

end A133336.P10300946866893438711

noncomputable section

/-- A133336: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1,1,1,1,1,1,1,...] DELTA [0,1,0,1,0,1,0,1,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A133336.P10300946866893438711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9486 terms. -/
def A133336 (n : ℕ) : ℤ :=
  A133336.P10300946866893438711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9486 terms. -/
def A133336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133545.P7259488329024112066

`A131415(n)+A014473(n)`
-/

namespace A133545.P7259488329024112066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131415 n + A014473 n

end

end A133545.P7259488329024112066

noncomputable section

/-- A133545: (A000012 * A007318 - A007318 * A000012) - A000012.

Offset 1, canonical program `A133545.P7259488329024112066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133545 (n : ℕ) : ℤ :=
  A133545.P7259488329024112066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133981.P4660398222137622557

`A108872(n+1)-A154990(n+1)`
-/

namespace A133981.P4660398222137622557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A154990 (n + 1)

end

end A133981.P4660398222137622557

noncomputable section

/-- A133981: Triangle read by rows: A000012 * A127701 + A127701 * A000012 - A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A133981.P4660398222137622557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133981 (n : ℕ) : ℤ :=
  A133981.P4660398222137622557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134673.P11906740047459928108

`A051731(n+1)+A127448(n+1)-A023531(n)`
-/

namespace A134673.P11906740047459928108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A127448 (n + 1) - A023531 n

end

end A134673.P11906740047459928108

noncomputable section

/-- A134673: A051731 + A127448 - I where I is the Identity matrix (A023531).

Offset 1, canonical program `A134673.P11906740047459928108`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051731, A127448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134673 (n : ℕ) : ℤ :=
  A134673.P11906740047459928108.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051731, A127448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139855.P8344561315536592991

`∩[A033220(n+1), A107006(n+1)]`
-/

namespace A139855.P8344561315536592991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P8344561315536592991

noncomputable section

/-- A139855: Primes of the form 4x^2+4xy+31y^2.

Offset 1, canonical program `A139855.P8344561315536592991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5014 terms. -/
def A139855 (n : ℕ) : ℤ :=
  (A139855.P8344561315536592991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5014 terms. -/
def A139855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140952.P5426559807418351343

`A029280(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A140952.P5426559807418351343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029280 n + a (n - 2)

end

end A140952.P5426559807418351343

noncomputable section

/-- A140952: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A140952.P5426559807418351343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140952 (n : ℕ) : ℤ :=
  A140952.P5426559807418351343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142400.P17490170735481666965

`∩[A107006(n+1), A141194(n+1)]`
-/

namespace A142400.P17490170735481666965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142400.P17490170735481666965

noncomputable section

/-- A142400: Primes congruent to 7 mod 48.

Offset 1, canonical program `A142400.P17490170735481666965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A142400 (n : ℕ) : ℤ :=
  (A142400.P17490170735481666965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A142400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142408.P14875019921775552722

`∩[A107006(n+1), A127576(n+1)]`
-/

namespace A142408.P14875019921775552722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142408.P14875019921775552722

noncomputable section

/-- A142408: Primes congruent to 31 mod 48.

Offset 1, canonical program `A142408.P14875019921775552722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A142408 (n : ℕ) : ℤ :=
  (A142408.P14875019921775552722.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A142408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143349.P6165175952052510639

`A010766(n+1)*A054527(n+1)`
-/

namespace A143349.P6165175952052510639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A054527 (n + 1)

end

end A143349.P6165175952052510639

noncomputable section

/-- A143349: Triangle read by rows: A000012 * A054524 = A000012 * A051731 * A128407.

Offset 1, canonical program `A143349.P6165175952052510639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143349 (n : ℕ) : ℤ :=
  A143349.P6165175952052510639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143442.P15593702494414460611

`∑[char[∑[n]]]*A054527(n+1)`
-/

namespace A143442.P15593702494414460611
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A054527 (n + 1)

end

end A143442.P15593702494414460611

noncomputable section

/-- A143442: Triangle read by rows, A127648 * A000012 * A128407, 1 <= k <= n.

Offset 1, canonical program `A143442.P15593702494414460611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143442 (n : ℕ) : ℤ :=
  A143442.P15593702494414460611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143517.P992737143855787768

`A122414(n+1)*A127448(n+1)`
-/

namespace A143517.P992737143855787768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122414 (n + 1) * A127448 (n + 1)

end

end A143517.P992737143855787768

noncomputable section

/-- A143517: Triangle read by rows, A054525 * (A061397 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143517.P992737143855787768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143517 (n : ℕ) : ℤ :=
  A143517.P992737143855787768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144066.P13750958635095974206

`A007318(n)*A112857(n)`
-/

namespace A144066.P13750958635095974206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A112857 n

end

end A144066.P13750958635095974206

noncomputable section

/-- A144066: T(n, k) is the number of order-preserving partial transformations (of an n-element chain) of height k (height(alpha) = |Im(alpha)|); triangle T read by rows.

Offset 0, canonical program `A144066.P13750958635095974206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9099 terms. -/
def A144066 (n : ℕ) : ℤ :=
  A144066.P13750958635095974206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9099 terms. -/
def A144066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144752.P5169487629001239534

`∩[A006995(n+1), A144754(n+1)]`
-/

namespace A144752.P5169487629001239534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144752.P5169487629001239534

noncomputable section

/-- A144752: Positive integers whose binary representation (1) is a palindrome and (2) has a prime number of 0's.

Offset 1, canonical program `A144752.P5169487629001239534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A144752 (n : ℕ) : ℤ :=
  (A144752.P5169487629001239534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A144752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147644.P1419813907313181643

`A028275(n)-2*char[4]`
-/

namespace A147644.P1419813907313181643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A147644.P1419813907313181643

noncomputable section

/-- A147644: Triangle read by rows: T(n, k) = binomial(n, k) if n < 3, otherwise T(n, k) = binomial(n, k) + 2*binomial(n-2, k-1).

Offset 0, canonical program `A147644.P1419813907313181643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147644 (n : ℕ) : ℤ :=
  A147644.P1419813907313181643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159854.P4629768391219883641

`A097805(n)+1-A323231(n)`
-/

namespace A159854.P4629768391219883641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (1 - A323231 n)

end

end A159854.P4629768391219883641

noncomputable section

/-- A159854: Riordan array (1-x,x/(1-x)).

Offset 0, canonical program `A159854.P4629768391219883641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159854 (n : ℕ) : ℤ :=
  A159854.P4629768391219883641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162749.P12481426418206749222

`A006995(A063946(n+2))`
-/

namespace A162749.P12481426418206749222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A063946 (n + 2)).toNat

end

end A162749.P12481426418206749222

noncomputable section

/-- A162749: Write the n-th (odd) binary palindrome in binary. If there are an even number of digits, then combine the middle two digits into one digit. If there are an odd number of digits, then double the middle digit. a(n) is the decimal result.

Offset 1, canonical program `A162749.P12481426418206749222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A162749 (n : ℕ) : ℤ :=
  A162749.P12481426418206749222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8190 terms. -/
def A162749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164126.P5222690194869759477

`A006995(n+2)-A006995(n+1)`
-/

namespace A164126.P5222690194869759477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2) - A006995 (n + 1)

end

end A164126.P5222690194869759477

noncomputable section

/-- A164126: First differences of A006995.

Offset 1, canonical program `A164126.P5222690194869759477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164126 (n : ℕ) : ℤ :=
  A164126.P5222690194869759477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164126.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166139.P11029997221570494400

`A051731(n+1)*A080305(A010766(n+1))`
-/

namespace A166139.P11029997221570494400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A080305 (A010766 (n + 1)).toNat

end

end A166139.P11029997221570494400

noncomputable section

/-- A166139: Triangle T(n,k) read by rows. A080305(A126988(n,k)) if k|n, 0 otherwise.

Offset 1, canonical program `A166139.P11029997221570494400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166139 (n : ℕ) : ℤ :=
  A166139.P11029997221570494400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175543.P16940315139074741168

`A006995(record[2-xor(1, -n)])`
-/

namespace A175543.P16940315139074741168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175543.P16940315139074741168

noncomputable section

/-- A175543: Nonnegative integers that, when written in binary, are palindromes with a middle run of 0's.

Offset 1, canonical program `A175543.P16940315139074741168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A175543 (n : ℕ) : ℤ :=
  A175543.P16940315139074741168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A175543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175544.P6769416257308526754

`or(1, A006995(Δ[n²]))`
-/

namespace A175544.P6769416257308526754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006995 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A175544.P6769416257308526754

noncomputable section

/-- A175544: Positive integers that, when written in binary, are palindromes with a middle run of 1's.

Offset 1, canonical program `A175544.P6769416257308526754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A175544 (n : ℕ) : ℤ :=
  A175544.P6769416257308526754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A175544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176230.P15310352882889084004

`abs(A096713(A061885(n)))`
-/

namespace A176230.P15310352882889084004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096713 (A061885 n).toNat|

end

end A176230.P15310352882889084004

noncomputable section

/-- A176230: Exponential Riordan array [1/sqrt(1-2x), x/(1-2x)].

Offset 0, canonical program `A176230.P15310352882889084004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A176230 (n : ℕ) : ℤ :=
  A176230.P15310352882889084004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A176230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176231.P2236781922509874742

`A096713(lt[0, floor(sqrt(4*n+1))%2])`
-/

namespace A176231.P2236781922509874742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096713 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176231.P2236781922509874742

noncomputable section

/-- A176231: Coefficient array of orthogonal polynomials whose moment sequence is the double factorial numbers A001147.

Offset 0, canonical program `A176231.P2236781922509874742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A176231 (n : ℕ) : ℤ :=
  A176231.P2236781922509874742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A176231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179443.P2342233495432170048

`filter[A153275(n+2), A005171(#)]`
-/

namespace A179443.P2342233495432170048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A179443.P2342233495432170048

noncomputable section

/-- A179443: Numbers m such that m and 10*m + 1 are both composites.

Offset 1, canonical program `A179443.P2342233495432170048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8693 terms. -/
def A179443 (n : ℕ) : ℤ :=
  A179443.P2342233495432170048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8693 terms. -/
def A179443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184039.P4320161098641191564

`3*(A184048(n+1)-A183986(n+1))+1`
-/

namespace A184039.P4320161098641191564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A184048 (n + 1) - A183986 (n + 1)) + 1

end

end A184039.P4320161098641191564

noncomputable section

/-- A184039: T(n,k) = 1/16 the number of (n+1) X (k+1) 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184039.P4320161098641191564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A184039 (n : ℕ) : ℤ :=
  A184039.P4320161098641191564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A184039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187801.P9725530492111839525

`A087698(n+3)+A071919(n+2)`
-/

namespace A187801.P9725530492111839525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087698 (n + 3) + A071919 (n + 2)

end

end A187801.P9725530492111839525

noncomputable section

/-- A187801: Pascal's triangle construction method applied to {1,1,2} as an initial term.

Offset 2, canonical program `A187801.P9725530492111839525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. -/
def A187801 (n : ℕ) : ℤ :=
  A187801.P9725530492111839525.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1272 terms. -/
def A187801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188131.P4371417127393446082

`p?[floor(A107006(n+1)/6)]`
-/

namespace A188131.P4371417127393446082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107006 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188131.P4371417127393446082

noncomputable section

/-- A188131: Primes p == 1 (mod 4) such that 6p+1 is prime.

Offset 1, canonical program `A188131.P4371417127393446082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A188131 (n : ℕ) : ℤ :=
  A188131.P4371417127393446082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. -/
def A188131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191330.P17506206293950054102

`lt[(n+7)*A191329(n+1), 1]+1`
-/

namespace A191330.P17506206293950054102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A191329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A191330.P17506206293950054102

noncomputable section

/-- A191330: Positions of 0 in A191329.

Offset 1, canonical program `A191330.P17506206293950054102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191330 (n : ℕ) : ℤ :=
  (A191330.P17506206293950054102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192775.P9811464463579055224

`A006995(n+1)²`
-/

namespace A192775.P9811464463579055224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1) ^ 2

end

end A192775.P9811464463579055224

noncomputable section

/-- A192775: The numbers n^2 as n runs through the numbers which are palindromes in base 2.

Offset 1, canonical program `A192775.P9811464463579055224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192775 (n : ℕ) : ℤ :=
  A192775.P9811464463579055224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193734.P17675012511319308279

`A059268(n)*A081277(n)`
-/

namespace A193734.P17675012511319308279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A081277 n

end

end A193734.P17675012511319308279

noncomputable section

/-- A193734: Triangular array: the fusion of polynomial sequences P and Q given by p(n,x)=(2x+1)^n and q(n,x)=(x+2)^n.

Offset 0, canonical program `A193734.P17675012511319308279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193734 (n : ℕ) : ℤ :=
  A193734.P17675012511319308279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193735.P6287815036098780558

`A130321(n)*A200139(n)`
-/

namespace A193735.P6287815036098780558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A200139 n

end

end A193735.P6287815036098780558

noncomputable section

/-- A193735: Mirror of the triangle A193734.

Offset 0, canonical program `A193735.P6287815036098780558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193735 (n : ℕ) : ℤ :=
  A193735.P6287815036098780558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193845.P9516992958703024881

`2*A038207(n)-A112857(n)`
-/

namespace A193845.P9516992958703024881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A112857 n

end

end A193845.P9516992958703024881

noncomputable section

/-- A193845: Mirror of the triangle A193844.

Offset 0, canonical program `A193845.P9516992958703024881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193845 (n : ℕ) : ℤ :=
  A193845.P9516992958703024881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A199478.P6630177777262602825

`A081277(A091018(n+2))`
-/

namespace A199478.P6630177777262602825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (A091018 (n + 2)).toNat

end

end A199478.P6630177777262602825

noncomputable section

/-- A199478: Irregular triangle read by rows: T(n,i) = 2^(i-1)*(binomial(n-i+1,i)+binomial(n-i,i)), n >= 1, 0 <= i <= (n+1)/2.

Offset 1, canonical program `A199478.P6630177777262602825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A199478 (n : ℕ) : ℤ :=
  A199478.P6630177777262602825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A199478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202334.P8072250924669287975

`A202335(∑[n+6]+22)`
-/

namespace A202334.P8072250924669287975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A202334.P8072250924669287975

noncomputable section

/-- A202334: Number of (n+1) X 8 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

Offset 1, canonical program `A202334.P8072250924669287975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A202334 (n : ℕ) : ℤ :=
  A202334.P8072250924669287975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A202334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206913.P18136028750856858021

`A006995(A206915(n))`
-/

namespace A206913.P18136028750856858021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A206915 n).toNat

end

end A206913.P18136028750856858021

noncomputable section

/-- A206913: Greatest binary palindrome <= n; the binary palindrome floor function.

Offset 0, canonical program `A206913.P18136028750856858021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, A206915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206913 (n : ℕ) : ℤ :=
  A206913.P18136028750856858021.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, A206915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A206913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206914.P13115194890029056477

`A006995(∑[A178225(abs(1-n))])`
-/

namespace A206914.P13115194890029056477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206914.P13115194890029056477

noncomputable section

/-- A206914: Least binary palindrome >= n; the binary palindrome ceiling function.

Offset 0, canonical program `A206914.P13115194890029056477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206914 (n : ℕ) : ℤ :=
  A206914.P13115194890029056477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207537.P9241399492848314122

`A200139(A091018(n+1))`
-/

namespace A207537.P9241399492848314122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 (A091018 (n + 1)).toNat

end

end A207537.P9241399492848314122

noncomputable section

/-- A207537: Triangle of coefficients of polynomials u(n,x) jointly generated with A207538; see Formula section.

Offset 1, canonical program `A207537.P9241399492848314122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207537 (n : ℕ) : ℤ :=
  A207537.P9241399492848314122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A207537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207623.P11214128450374438743

`A207617(n+1)/A207616(n+2)*A207622(n+2)`
-/

namespace A207623.P11214128450374438743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207617 (n + 1) : ℚ) / (A207616 (n + 2) : ℚ) * (A207622 (n + 2) : ℚ)

end

end A207623.P11214128450374438743

noncomputable section

/-- A207623: Triangle of coefficients of polynomials v(n,x) jointly generated with A207622; see the Formula section.

Offset 1, canonical program `A207623.P11214128450374438743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A207623.P11214128450374438743.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A207623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208513.P6652233857505646847

`gcd(A010816(n), A110162(n))`
-/

namespace A208513.P6652233857505646847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A110162 n)

end

end A208513.P6652233857505646847

noncomputable section

/-- A208513: Triangle of coefficients of polynomials u(n,x) jointly generated with A111125; see the Formula section.

Offset 1, canonical program `A208513.P6652233857505646847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208513 (n : ℕ) : ℤ :=
  (A208513.P6652233857505646847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208520.P11996119381766978288

`A208913(n+1)/A060546(A002262(n))`
-/

namespace A208520.P11996119381766978288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A060546 (A002262 n).toNat : ℚ)

end

end A208520.P11996119381766978288

noncomputable section

/-- A208520: Triangle of coefficients of polynomials u(n,x) jointly generated with A208521; see the Formula section.

Offset 1, canonical program `A208520.P11996119381766978288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208520 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A208520.P11996119381766978288.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A208520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209562.P7373821784173499212

`A209561(n+1)+A029653(n)-A208510(n+1)`
-/

namespace A209562.P7373821784173499212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) + A029653 n - A208510 (n + 1)

end

end A209562.P7373821784173499212

noncomputable section

/-- A209562: Triangle of coefficients of polynomials v(n,x) jointly generated with A209561; see the Formula section.

Offset 1, canonical program `A209562.P7373821784173499212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209562 (n : ℕ) : ℤ :=
  A209562.P7373821784173499212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209706.P2086193192130295390

`A013609(n)+A193862(n)-A209705(n+1)`
-/

namespace A209706.P2086193192130295390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (A193862 n - A209705 (n + 1))

end

end A209706.P2086193192130295390

noncomputable section

/-- A209706: Triangle of coefficients of polynomials v(n,x) jointly generated with A209705; see the Formula section.

Offset 1, canonical program `A209706.P2086193192130295390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209706 (n : ℕ) : ℤ :=
  A209706.P2086193192130295390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216095.P3929612690830080144

`A000079(n)%A078267(A115267(2*(n+2)))`
-/

namespace A216095.P3929612690830080144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A078267 (A115267 (2 * (n + 2))).toNat)

end

end A216095.P3929612690830080144

noncomputable section

/-- A216095: a(n) = 2^n mod 10000.

Offset 0, canonical program `A216095.P3929612690830080144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A216095 (n : ℕ) : ℤ :=
  A216095.P3929612690830080144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A216095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228366.P13566421837120405156

`A228370(2*n)`
-/

namespace A228366.P13566421837120405156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228370 (2 * n)

end

end A228366.P13566421837120405156

noncomputable section

/-- A228366: Toothpick sequence from a diagram of compositions of the positive integers (see Comments lines for definition).

Offset 0, canonical program `A228366.P13566421837120405156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228370, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228366 (n : ℕ) : ℤ :=
  A228366.P13566421837120405156.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228370, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A234102.P1827764588803365079

`A234099(n+1)+1`
-/

namespace A234102.P1827764588803365079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1) + 1

end

end A234102.P1827764588803365079

noncomputable section

/-- A234102: Integers of the form (p*q*r + 1)/2, where p, q, r are distinct primes.

Offset 1, canonical program `A234102.P1827764588803365079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234102 (n : ℕ) : ℤ :=
  A234102.P1827764588803365079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238837.P2652607451931087932

`A071766(A063946(n)+1)%(n+1)`
-/

namespace A238837.P2652607451931087932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071766 (A063946 n + 1).toNat) (n + 1 : ℤ)

end

end A238837.P2652607451931087932

noncomputable section

/-- A238837: Numerators in the enumeration of the rationals by Czyz and Self.

Offset 1, canonical program `A238837.P2652607451931087932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A238837 (n : ℕ) : ℤ :=
  A238837.P2652607451931087932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A238837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245325.P10237342642310337524

`A071766(A117120(n+1))`
-/

namespace A245325.P10237342642310337524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A117120 (n + 1)).toNat

end

end A245325.P10237342642310337524

noncomputable section

/-- A245325: Numerators of an enumeration system of the reduced nonnegative rational numbers.

Offset 1, canonical program `A245325.P10237342642310337524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A245325 (n : ℕ) : ℤ :=
  A245325.P10237342642310337524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A245325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245326.P11591172421238734772

`A071766(lt[xor(n, 3*ceil(n/5)+n), n]-(2*n+3))`
-/

namespace A245326.P11591172421238734772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (3 * ⌈(n : ℚ) / 5⌉ + (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - (2 * n + 3))

end

end A245326.P11591172421238734772

noncomputable section

/-- A245326: Denominators of an enumeration system of the reduced nonnegative rational numbers.

Offset 1, canonical program `A245326.P11591172421238734772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A245326 (n : ℕ) : ℤ :=
  A245326.P11591172421238734772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A245326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248909.P15195140989030119244

`gcd(A170824(n+1)²², A000217(n))`
-/

namespace A248909.P15195140989030119244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A170824 (n + 1) ^ 2) ^ 2) (A000217 n)

end

end A248909.P15195140989030119244

noncomputable section

/-- A248909: Completely multiplicative with a(p) = p if p = 6k+1 and a(p) = 1 otherwise.

Offset 1, canonical program `A248909.P15195140989030119244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248909 (n : ℕ) : ℤ :=
  (A248909.P15195140989030119244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249755.P7943654216642875196

`A095660(A080036(n))`
-/

namespace A249755.P7943654216642875196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A080036 n).toNat

end

end A249755.P7943654216642875196

noncomputable section

/-- A249755: Triangular array of coefficients of polynomials p(n,x) = (x + 1)*p(n-1,x) + (n + 1)*x, p(0,x) = 1.

Offset 0, canonical program `A249755.P7943654216642875196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249755 (n : ℕ) : ℤ :=
  A249755.P7943654216642875196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249757.P11501670255758349847

`2*A249756(n)-A007318(n)`
-/

namespace A249757.P11501670255758349847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249756 n - A007318 n

end

end A249757.P11501670255758349847

noncomputable section

/-- A249757: Triangular array of coefficients of polynomials p(n,x) = (x + 1)*p(n-1,x) + 2*n*x, p(0,x) = 1.

Offset 0, canonical program `A249757.P11501670255758349847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249757 (n : ℕ) : ℤ :=
  A249757.P11501670255758349847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249758.P12334685138373324996

`A038207(n)+A112857(n)-A010054(n)`
-/

namespace A249758.P12334685138373324996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + (A112857 n - A010054 n)

end

end A249758.P12334685138373324996

noncomputable section

/-- A249758: Triangular array of coefficients of polynomials p(n,x) = (x + 2)*p(n-1,x) + x, p(0,x) = 1.

Offset 0, canonical program `A249758.P12334685138373324996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249758 (n : ℕ) : ℤ :=
  A249758.P12334685138373324996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5253 terms. -/
def A249758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256097.P7490933180745882332

`ceil(sqrt(n+1)*A256098(n+1))`
-/

namespace A256097.P7490933180745882332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 1 : ℝ) * (A256098 (n + 1) : ℝ)⌉

end

end A256097.P7490933180745882332

noncomputable section

/-- A256097: Numerators of a rational guess r(n) for the input for Newton's algorithm to find sqrt(n).

Offset 1, canonical program `A256097.P7490933180745882332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256097 (n : ℕ) : ℤ :=
  A256097.P7490933180745882332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256239.P17918677140966713674

`6*n*A256226(n)`
-/

namespace A256239.P17918677140966713674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℤ) * A256226 n)

end

end A256239.P17918677140966713674

noncomputable section

/-- A256239: Sum of all the parts in the partitions of 6n into 6 parts.

Offset 0, canonical program `A256239.P17918677140966713674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256239 (n : ℕ) : ℤ :=
  A256239.P17918677140966713674.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256226, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277544.P13747929227457996893

`A244414(n+1)%6`
-/

namespace A277544.P13747929227457996893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244414 (n + 1)) 6

end

end A277544.P13747929227457996893

noncomputable section

/-- A277544: a(n) = n/6^m mod 6, where 6^m is the greatest power of 6 that divides n.

Offset 1, canonical program `A277544.P13747929227457996893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277544 (n : ℕ) : ℤ :=
  A277544.P13747929227457996893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300725.P18126908090071404131

`∏{p}[n+1, #-1]*A003557(n+1)-A300724(n+1)`
-/

namespace A300725.P18126908090071404131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) - A300724 (n + 1)

end

end A300725.P18126908090071404131

noncomputable section

/-- A300725: Möbius transform of A053645(n), distance to the largest power of 2 less than or equal to n.

Offset 1, canonical program `A300725.P18126908090071404131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300725 (n : ℕ) : ℤ :=
  A300725.P18126908090071404131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300726.P6411943610807453951

`A053644(n+1)-A300724(n+1)`
-/

namespace A300726.P6411943610807453951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) - A300724 (n + 1)

end

end A300726.P6411943610807453951

noncomputable section

/-- A300726: Difference between A053644 (the largest power of 2 less than or equal to n) and its Möbius transform.

Offset 1, canonical program `A300726.P6411943610807453951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300726 (n : ℕ) : ℤ :=
  A300726.P6411943610807453951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300726.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A311416.P5256604560773231204

`(A311570(n)+A311181(n))/2`
-/

namespace A311416.P5256604560773231204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311570 n + A311181 n : ℚ) / 2

end

end A311416.P5256604560773231204

noncomputable section

/-- A311416: Coordination sequence Gal.4.48.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311416.P5256604560773231204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A311416 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A311416.P5256604560773231204.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A311416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313929.P15374622491825537121

`A313814(n)+Δ[A011864(n)]`
-/

namespace A313929.P15374622491825537121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313814 n + (f1 (n + 1) - f1 n)

end

end A313929.P15374622491825537121

noncomputable section

/-- A313929: Coordination sequence Gal.6.334.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313929.P15374622491825537121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A313929 (n : ℕ) : ℤ :=
  A313929.P15374622491825537121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A313929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314115.P2870737139798386552

`A313878(n)+A046978(A201629(n))`
-/

namespace A314115.P2870737139798386552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313878 n + A046978 (A201629 n).toNat

end

end A314115.P2870737139798386552

noncomputable section

/-- A314115: Coordination sequence Gal.6.647.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314115.P2870737139798386552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A314115 (n : ℕ) : ℤ :=
  A314115.P2870737139798386552.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A314115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314765.P9746236482672661847

`abs(A008592(n)-A314186(n))`
-/

namespace A314765.P9746236482672661847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314186 n|

end

end A314765.P9746236482672661847

noncomputable section

/-- A314765: Coordination sequence Gal.6.194.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314765.P9746236482672661847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A314765 (n : ℕ) : ℤ :=
  A314765.P9746236482672661847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A314765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314973.P7567450070349950428

`A042965(A313802(n)+1)-2*n`
-/

namespace A314973.P7567450070349950428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A313802 n + 1).toNat - (2 * n : ℤ)

end

end A314973.P7567450070349950428

noncomputable section

/-- A314973: Coordination sequence Gal.6.342.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314973.P7567450070349950428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A314973 (n : ℕ) : ℤ :=
  A314973.P7567450070349950428.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A314973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315643.P3183973614738207625

`A004278(A017089(n)-A313899(n))`
-/

namespace A315643.P3183973614738207625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A017089 n - A313899 n).toNat

end

end A315643.P3183973614738207625

noncomputable section

/-- A315643: Coordination sequence Gal.6.199.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315643.P3183973614738207625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A315643 (n : ℕ) : ℤ :=
  A315643.P3183973614738207625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. -/
def A315643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332798.P10911018744368294634

`19*A166061(n+1)`
-/

namespace A332798.P10911018744368294634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A166061 (n + 1)

end

end A332798.P10911018744368294634

noncomputable section

/-- A332798: Numbers whose smallest prime factor is 19.

Offset 1, canonical program `A332798.P10911018744368294634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332798 (n : ℕ) : ℤ :=
  A332798.P10911018744368294634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332798.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334222.P17127640605505612675

`A334235(n+1-A334235(n+1-a(n-1)))` with `a(0)=0`
-/

namespace A334222.P17127640605505612675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A334235 ((n + 1 : ℤ) - A334235 ((n + 1 : ℤ) - a (n - 1)).toNat).toNat

end

end A334222.P17127640605505612675

noncomputable section

/-- A334222: a(n) is the X-coordinate of the point at n steps backward from the origin along the space filling curve U defined in A334188; sequence A334223 gives Y-coordinates.

Offset 0, canonical program `A334222.P17127640605505612675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8318 terms. -/
def A334222 (n : ℕ) : ℤ :=
  A334222.P17127640605505612675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8318 terms. -/
def A334222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349536.P8419380923453773288

`record[A323239(A008797(n))+A224921(n+1)]`
-/

namespace A349536.P8419380923453773288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A008797 n).toNat + A224921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349536.P8419380923453773288

noncomputable section

/-- A349536: Consider a circle on the Z X Z lattice with radius equal to the Pythagorean hypotenuse h(n) (A009003); a(n) = number of Pythagorean triples inside a Pi/4 sector of the circle.

Offset 1, canonical program `A349536.P8419380923453773288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A349536 (n : ℕ) : ℤ :=
  A349536.P8419380923453773288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. -/
def A349536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350040.P2213649878104145831

`Δ[record[A224921(A103391(n+1))]]`
-/

namespace A350040.P2213649878104145831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (A103391 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A350040.P2213649878104145831

noncomputable section

/-- A350040: Number of integer-sided right triangles with hypotenuse A009003(n).

Offset 1, canonical program `A350040.P2213649878104145831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6448 terms. -/
def A350040 (n : ℕ) : ℤ :=
  A350040.P2213649878104145831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6448 terms. -/
def A350040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356896.P15058959792167373830

`lt[0, (A356898(n)+1)%2]`
-/

namespace A356896.P15058959792167373830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356898 n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356896.P15058959792167373830

noncomputable section

/-- A356896: Nonnegative numbers whose maximal tribonacci representation (A352103) ends in an even number of 1's.

Offset 1, canonical program `A356896.P15058959792167373830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6479 terms. -/
def A356896 (n : ℕ) : ℤ :=
  (A356896.P15058959792167373830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6479 terms. -/
def A356896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359760.P9277813428666487352

`A099174(∑[2*n]%comp[∑[n]])`
-/

namespace A359760.P9277813428666487352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099174 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A359760.P9277813428666487352

noncomputable section

/-- A359760: Triangle read by rows. The Kummer triangle, the coefficients of the Kummer polynomials. K(n, k) = binomial(n, k) * oddfactorial(k/2) if k is even, otherwise 0, where oddfactorial(z) := (2*z)!/(2^z*z!).

Offset 0, canonical program `A359760.P9277813428666487352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A359760 (n : ℕ) : ℤ :=
  A359760.P9277813428666487352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A359760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366445.P4284588940328719007

`A054522(n+1)*A129691(n+1)`
-/

namespace A366445.P4284588940328719007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A129691 (n + 1)

end

end A366445.P4284588940328719007

noncomputable section

/-- A366445: Triangle read by rows: T(n,k) = A023900(n/k)*phi(k) if k divides n, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A366445.P4284588940328719007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366445 (n : ℕ) : ℤ :=
  A366445.P4284588940328719007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373448.P738136565750743419

`A006995(10^n)`
-/

namespace A373448.P738136565750743419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (10 ^ n)

end

end A373448.P738136565750743419

noncomputable section

/-- A373448: 10^n-th binary palindrome.

Offset 0, canonical program `A373448.P738136565750743419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373448 (n : ℕ) : ℤ :=
  A373448.P738136565750743419.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380281.P6966654181893979849

`A103327(n)*A173424(n)`
-/

namespace A380281.P6966654181893979849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n * A173424 n

end

end A380281.P6966654181893979849

noncomputable section

/-- A380281: Triangle T(n, k) read by rows: T(n, k) = 2^n*binomial(2*n + 1, 2*k + 1) * Pochhammer(1/2, n - k) * Pochhammer(1/2, k).

Offset 0, canonical program `A380281.P6966654181893979849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A380281 (n : ℕ) : ℤ :=
  A380281.P6966654181893979849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. -/
def A380281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002479.P5051516851553002121

`∪[A154777(n+1), A083854(n)]`
-/

namespace A002479.P5051516851553002121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P5051516851553002121

noncomputable section

/-- A002479: Numbers of the form x^2 + 2*y^2.

Offset 1, canonical program `A002479.P5051516851553002121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002479 (n : ℕ) : ℤ :=
  (A002479.P5051516851553002121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003519.P17675522830301751494

`A001392(n+5)-A003518(n+4)`
-/

namespace A003519.P17675522830301751494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001392 (n + 5) - A003518 (n + 4)

end

end A003519.P17675522830301751494

noncomputable section

/-- A003519: a(n) = 10*binomial(2*n + 1, n - 4)/(n + 6).

Offset 4, canonical program `A003519.P17675522830301751494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A003519 (n : ℕ) : ℤ :=
  A003519.P17675522830301751494.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A003519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005652.P16284320388527205357

`eq[2, A191329(2*(n+1))]+1`
-/

namespace A005652.P16284320388527205357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005652.P16284320388527205357

noncomputable section

/-- A005652: Lexicographically least increasing sequence, starting with 1, such that the sum of 2 distinct terms is never a Fibonacci number.

Offset 1, canonical program `A005652.P16284320388527205357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005652 (n : ℕ) : ℤ :=
  (A005652.P16284320388527205357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009000.P4505653467235074305

`comp[A224921(n+1)+n]-n`
-/

namespace A009000.P4505653467235074305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A009000.P4505653467235074305

noncomputable section

/-- A009000: Ordered hypotenuse numbers (squares are sums of 2 distinct nonzero squares).

Offset 1, canonical program `A009000.P4505653467235074305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009000 (n : ℕ) : ℤ :=
  A009000.P4505653467235074305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A009000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015733.P12502680278738575132

`1+eq[0, A286627(n+1)]`
-/

namespace A015733.P12502680278738575132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015733.P12502680278738575132

noncomputable section

/-- A015733: Numbers k such that d(k) does not divide phi(k).

Offset 1, canonical program `A015733.P12502680278738575132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A015733 (n : ℕ) : ℤ :=
  (A015733.P12502680278738575132.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A015733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028324.P3744947203801218243

`A028285(n)+A014413(n+1)`
-/

namespace A028324.P3744947203801218243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 n + A014413 (n + 1)

end

end A028324.P3744947203801218243

noncomputable section

/-- A028324: Elements to the right of the central elements of the 5-Pascal triangle A028313 that are not 1.

Offset 0, canonical program `A028324.P3744947203801218243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028324 (n : ℕ) : ℤ :=
  A028324.P3744947203801218243.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029093.P2140744132042808951

`A029053(n)+A029104(n)-A029061(n)`
-/

namespace A029093.P2140744132042808951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 n + (A029104 n - A029061 n)

end

end A029093.P2140744132042808951

noncomputable section

/-- A029093: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^10)).

Offset 0, canonical program `A029093.P2140744132042808951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029093 (n : ℕ) : ℤ :=
  A029093.P2140744132042808951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029110.P11583160216419689029

`A029053(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029110.P11583160216419689029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029053 n - a (n - 3)

end

end A029110.P11583160216419689029

noncomputable section

/-- A029110: Expansion of 1/((1-x)*(1-x^6)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029110.P11583160216419689029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029110 (n : ℕ) : ℤ :=
  A029110.P11583160216419689029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029204.P7244939096578077172

`A029337(abs(2-n))+A029337(n)`
-/

namespace A029204.P7244939096578077172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029337 |2 - (n : ℤ)|.toNat + A029337 n

end

end A029204.P7244939096578077172

noncomputable section

/-- A029204: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029204.P7244939096578077172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029204 (n : ℕ) : ℤ :=
  A029204.P7244939096578077172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029639.P17803277838601311190

`A029652(lt[1, A029652(n+1)]+1)`
-/

namespace A029639.P17803277838601311190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A029639.P17803277838601311190

noncomputable section

/-- A029639: Odd numbers in the (1,2)-Pascal triangle A029635 that are different from 1.

Offset 0, canonical program `A029639.P17803277838601311190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029639 (n : ℕ) : ℤ :=
  A029639.P17803277838601311190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. -/
def A029639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030059.P16778954960096157451

`record[A080305(n+2)]`
-/

namespace A030059.P16778954960096157451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030059.P16778954960096157451

noncomputable section

/-- A030059: Numbers that are the product of an odd number of distinct primes.

Offset 1, canonical program `A030059.P16778954960096157451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030059 (n : ℕ) : ℤ :=
  A030059.P16778954960096157451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033842.P15752124619344922902

`A049323(A061579(n))`
-/

namespace A033842.P15752124619344922902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049323 (A061579 n).toNat

end

end A033842.P15752124619344922902

noncomputable section

/-- A033842: Triangle of coefficients of certain polynomials (exponents in decreasing order).

Offset 0, canonical program `A033842.P15752124619344922902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A033842 (n : ℕ) : ℤ :=
  A033842.P15752124619344922902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A033842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043690.P9881906805821544190

`floor(A043576(n+1)/2)`
-/

namespace A043690.P9881906805821544190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043576 (n + 1) : ℚ) / 2⌋

end

end A043690.P9881906805821544190

noncomputable section

/-- A043690: a(n) = (s(n)-1)/2, where s(n) is the n-th number whose base-2 representation has exactly 9 runs.

Offset 1, canonical program `A043690.P9881906805821544190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043690 (n : ℕ) : ℤ :=
  A043690.P9881906805821544190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048155.P2488115011374404788

`∑[n+1]²%A014818(n+1)`
-/

namespace A048155.P2488115011374404788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A014818 (n + 1))

end

end A048155.P2488115011374404788

noncomputable section

/-- A048155: a(n)=Sum{T(n,k): k=1,2,...,n}, array T as in A048154.

Offset 1, canonical program `A048155.P2488115011374404788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048155 (n : ℕ) : ℤ :=
  A048155.P2488115011374404788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049069.P14482626575459239838

`A049513(n)+A001787(A002262(n))`
-/

namespace A049069.P14482626575459239838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049513 n + A001787 (A002262 n).toNat

end

end A049069.P14482626575459239838

noncomputable section

/-- A049069: Array T read by antidiagonals: T(k,n) = k*n*2^(n-1) + 1, n >= 0, k >= 1.

Offset 0, canonical program `A049069.P14482626575459239838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049069 (n : ℕ) : ℤ :=
  A049069.P14482626575459239838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049693.P1234389797638437336

`A049634(n)-1`
-/

namespace A049693.P1234389797638437336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049634 n - 1

end

end A049693.P1234389797638437336

noncomputable section

/-- A049693: a(n) = T(n,n+2), array T as in A049687.

Offset 0, canonical program `A049693.P1234389797638437336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A049693 (n : ℕ) : ℤ :=
  A049693.P1234389797638437336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A049693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049697.P8461540125229909495

`A049633(n)-A036453(n+1)`
-/

namespace A049697.P8461540125229909495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - A036453 (n + 1)

end

end A049697.P8461540125229909495

noncomputable section

/-- A049697: a(n)=T(n,n+1), array T as in A049695.

Offset 0, canonical program `A049697.P8461540125229909495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2753 terms. -/
def A049697 (n : ℕ) : ℤ :=
  A049697.P8461540125229909495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2753 terms. -/
def A049697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049698.P2174958753758549193

`A049634(n)-A036453(n+1)`
-/

namespace A049698.P2174958753758549193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049634 n - A036453 (n + 1)

end

end A049698.P2174958753758549193

noncomputable section

/-- A049698: a(n) = T(n,n+2), array T as in A049695.

Offset 0, canonical program `A049698.P2174958753758549193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2819 terms. -/
def A049698 (n : ℕ) : ℤ :=
  A049698.P2174958753758549193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2819 terms. -/
def A049698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052164.P18395530735648300715

`∩[A025584(n+1), A210360(n+1)-4]`
-/

namespace A052164.P18395530735648300715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052164.P18395530735648300715

noncomputable section

/-- A052164: Primes at which the difference pattern X42Y (X and Y >= 6) occurs in A001223.

Offset 1, canonical program `A052164.P18395530735648300715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A052164 (n : ℕ) : ℤ :=
  (A052164.P18395530735648300715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A052164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053139.P10706108705553515303

`A127705(n+1)%(2*n+1)`
-/

namespace A053139.P10706108705553515303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127705 (n + 1)) (2 * n + 1 : ℤ)

end

end A053139.P10706108705553515303

noncomputable section

/-- A053139: a(n) = phi(n) - mu(n).

Offset 1, canonical program `A053139.P10706108705553515303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053139 (n : ℕ) : ℤ :=
  A053139.P10706108705553515303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054372.P16596843267228174239

`A020500(A010766(n+1))^A054522(n+1)`
-/

namespace A054372.P16596843267228174239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (A010766 (n + 1)).toNat : ℚ) ^ (A054522 (n + 1) : ℤ)

end

end A054372.P16596843267228174239

noncomputable section

/-- A054372: Table of resultants for cyclotomic polynomials phi_k(x) and phi_n(x).

Offset 1, canonical program `A054372.P16596843267228174239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6424 terms. -/
def A054372 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054372.P16596843267228174239.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6424 terms. -/
def A054372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054806.P7730590133723137314

`∩[A051634(n+1), A358530(n+1)]`
-/

namespace A054806.P7730590133723137314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054806.P7730590133723137314

noncomputable section

/-- A054806: Third term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

Offset 1, canonical program `A054806.P7730590133723137314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054806 (n : ℕ) : ℤ :=
  (A054806.P7730590133723137314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055197.P16609682820262287136

`A038567(A061560(n+2))-1`
-/

namespace A055197.P16609682820262287136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A061560 (n + 2)).toNat - 1

end

end A055197.P16609682820262287136

noncomputable section

/-- A055197: Numbers k such that A005728(k) is not prime.

Offset 1, canonical program `A055197.P16609682820262287136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A055197 (n : ℕ) : ℤ :=
  A055197.P16609682820262287136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A055197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056343.P18158920682156565457

`(A056489(n+1)+A056283(n+1))/2`
-/

namespace A056343.P18158920682156565457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056489 (n + 1) + A056283 (n + 1) : ℚ) / 2

end

end A056343.P18158920682156565457

noncomputable section

/-- A056343: Number of bracelets of length n using exactly three different colored beads.

Offset 1, canonical program `A056343.P18158920682156565457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056343.P18158920682156565457.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A056343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056912.P6542715010206082314

`lt[(n+1)/and(n+1, -(n+1)), A080305(or(1, n))]`
-/

namespace A056912.P6542715010206082314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A056912.P6542715010206082314

noncomputable section

/-- A056912: Odd squarefree numbers for which the number of prime divisors is odd.

Offset 1, canonical program `A056912.P6542715010206082314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056912 (n : ℕ) : ℤ :=
  (A056912.P6542715010206082314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062316.P13198727376127180149

`2*A124981(n+1)`
-/

namespace A062316.P13198727376127180149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124981 (n + 1)

end

end A062316.P13198727376127180149

noncomputable section

/-- A062316: Neither the sum nor difference of 2 squares.

Offset 1, canonical program `A062316.P13198727376127180149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062316 (n : ℕ) : ℤ :=
  A062316.P13198727376127180149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070268.P2383266410601260933

`record[A080305(A114180(n+1))]`
-/

namespace A070268.P2383266410601260933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (A114180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070268.P2383266410601260933

noncomputable section

/-- A070268: Numbers k such that mu(k) + mu(k+1) + mu(k+2) = -3.

Offset 1, canonical program `A070268.P2383266410601260933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. -/
def A070268 (n : ℕ) : ℤ :=
  A070268.P2383266410601260933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. -/
def A070268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078644.P6430730718511426787

`A361689(n+1)/2`
-/

namespace A078644.P6430730718511426787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361689 (n + 1) : ℚ) / 2

end

end A078644.P6430730718511426787

noncomputable section

/-- A078644: a(n) = tau(2*n^2)/2.

Offset 1, canonical program `A078644.P6430730718511426787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078644 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078644.P6430730718511426787.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079628.P17679166513055195538

`A033999(A002262(n))*A081277(n)`
-/

namespace A079628.P17679166513055195538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A081277 n

end

end A079628.P17679166513055195538

noncomputable section

/-- A079628: Array of coefficients of P(n,x) = det (M(n,x)) where M(n,x) is the n X n matrix m(i,j)=x if i>j m(i,j)=1-x if i<=j.

Offset 0, canonical program `A079628.P17679166513055195538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079628 (n : ℕ) : ℤ :=
  A079628.P17679166513055195538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082510.P15430433622704550580

`filter[A082509(n+1), A079978(#)]`
-/

namespace A082510.P15430433622704550580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A082510.P15430433622704550580

noncomputable section

/-- A082510: Differences of consecutive primes being divisible by 6 in order of their appearance in A001223: terms not divisible by 6 are omitted from A001223.

Offset 1, canonical program `A082510.P15430433622704550580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6326 terms. -/
def A082510 (n : ℕ) : ℤ :=
  A082510.P15430433622704550580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6326 terms. -/
def A082510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083368.P5965228121584232260

`A356749(n)+1`
-/

namespace A083368.P5965228121584232260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356749 n + 1

end

end A083368.P5965228121584232260

noncomputable section

/-- A083368: a(n) is the position of the highest one in A003754(n).

Offset 1, canonical program `A083368.P5965228121584232260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083368 (n : ℕ) : ℤ :=
  A083368.P5965228121584232260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084424.P7395927992122097873

`∩[A179085(n+1), A381218(n+1)]`
-/

namespace A084424.P7395927992122097873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084424.P7395927992122097873

noncomputable section

/-- A084424: Odd numbers having odd numbers of prime factors, odd sums of prime factors and odd sums of decimal digits.

Offset 1, canonical program `A084424.P7395927992122097873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A084424 (n : ℕ) : ℤ :=
  (A084424.P7395927992122097873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4315 terms. -/
def A084424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084534.P1021849949057106995

`abs(A110162(A061579(n)))`
-/

namespace A084534.P1021849949057106995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110162 (A061579 n).toNat|

end

end A084534.P1021849949057106995

noncomputable section

/-- A084534: Triangle read by rows: T(n,0)=1, T(n,n)=2, T(n,m) = T(n-1,m-1) + Sum_{k=0..m} T(n-1-k,m-k).

Offset 0, canonical program `A084534.P1021849949057106995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A084534 (n : ℕ) : ℤ :=
  A084534.P1021849949057106995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A084534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086593.P15080225113442346150

`A071585(n)+A071766(n)`
-/

namespace A086593.P15080225113442346150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 n + A071766 n

end

end A086593.P15080225113442346150

noncomputable section

/-- A086593: Bisection of A086592, denominators of the left-hand half of Kepler's tree of fractions.

Offset 1, canonical program `A086593.P15080225113442346150`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071585, A071766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086593 (n : ℕ) : ℤ :=
  A086593.P15080225113442346150.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071585, A071766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089509.P11081170024757819098

`A034947(n+1)*A175629(n+1)`
-/

namespace A089509.P11081170024757819098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A175629 (n + 1)

end

end A089509.P11081170024757819098

noncomputable section

/-- A089509: a(n) = Kronecker(7/n).

Offset 1, canonical program `A089509.P11081170024757819098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089509 (n : ℕ) : ℤ :=
  A089509.P11081170024757819098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090181.P13882170627177889434

`A131198(abs(2-n)+1)`
-/

namespace A090181.P13882170627177889434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 (|2 - (n : ℤ)| + 1).toNat

end

end A090181.P13882170627177889434

noncomputable section

/-- A090181: Triangle of Narayana (A001263) with 0 <= k <= n, read by rows.

Offset 0, canonical program `A090181.P13882170627177889434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090181 (n : ℕ) : ℤ :=
  A090181.P13882170627177889434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091842.P827728373832057480

`A095660(A095660(Δ[A007090(n)]))`
-/

namespace A091842.P827728373832057480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A095660 (f1 (n + 1) - f1 n).toNat).toNat

end

end A091842.P827728373832057480

noncomputable section

/-- A091842: Lengths of suffix blocks associated with A091799.

Offset 1, canonical program `A091842.P827728373832057480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A091842 (n : ℕ) : ℤ :=
  A091842.P827728373832057480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A091842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093419.P5391515486937506102

`lcm(2, A027611(n+2))/2`
-/

namespace A093419.P5391515486937506102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A027611 (n + 2)) : ℚ) / 2

end

end A093419.P5391515486937506102

noncomputable section

/-- A093419: Denominators of row sums in triangle described in A093412.

Offset 1, canonical program `A093419.P5391515486937506102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A093419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093419.P5391515486937506102.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A093419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096617.P17292615775465208619

`A025529(n+1)/A002944(n+1)*A027611(n+1)`
-/

namespace A096617.P17292615775465208619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A002944 (n + 1) : ℚ) * (A027611 (n + 1) : ℚ)

end

end A096617.P17292615775465208619

noncomputable section

/-- A096617: Numerator of n*HarmonicNumber(n).

Offset 1, canonical program `A096617.P17292615775465208619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A096617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096617.P17292615775465208619.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A096617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100317.P11661269307119985409

`∪[A025584(n+1), A107986(n+1)]-1`
-/

namespace A100317.P11661269307119985409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A100317.P11661269307119985409

noncomputable section

/-- A100317: Numbers k such that exactly one of k - 1 and k + 1 is prime.

Offset 1, canonical program `A100317.P11661269307119985409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100317 (n : ℕ) : ℤ :=
  A100317.P11661269307119985409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104279.P12764755038926620985

`floor(A025584(n+2)/2)`
-/

namespace A104279.P12764755038926620985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025584 (n + 2) : ℚ) / 2⌋

end

end A104279.P12764755038926620985

noncomputable section

/-- A104279: Numbers n such that 2n+1 is prime and 2n-1 is not prime.

Offset 1, canonical program `A104279.P12764755038926620985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A104279 (n : ℕ) : ℤ :=
  A104279.P12764755038926620985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A104279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105728.P9423552014688535179

`A115068(n+1)+A112857(n)-A038207(n)`
-/

namespace A105728.P9423552014688535179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) + (A112857 n - A038207 n)

end

end A105728.P9423552014688535179

noncomputable section

/-- A105728: Triangle read by rows: T(n,1) = 1, T(n,n) = n and for 1 < k < n: T(n,k) = T(n-1,k-1) + 2*T(n-1,k).

Offset 1, canonical program `A105728.P9423552014688535179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105728 (n : ℕ) : ℤ :=
  A105728.P9423552014688535179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111910.P3727221019346552346

`A001263(n+1)/A155495(n)*A155516(n)`
-/

namespace A111910.P3727221019346552346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A155495 n : ℚ) * (A155516 n : ℚ)

end

end A111910.P3727221019346552346

noncomputable section

/-- A111910: Square array read by antidiagonals: S(p,q) = (p+q+1)!(2p+2q+1)!/((p+1)!(2p+1)!(q+1)!(2q+1)!) (p,q>=0).

Offset 0, canonical program `A111910.P3727221019346552346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3868 terms. -/
def A111910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A111910.P3727221019346552346.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3868 terms. -/
def A111910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112554.P14270769045827291744

`gcd(A000038(n), A053121(A014132(n+1)))`
-/

namespace A112554.P14270769045827291744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053121 (A014132 (n + 1)).toNat)

end

end A112554.P14270769045827291744

noncomputable section

/-- A112554: Riordan array (c(x^2)^2, x*c(x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A112554.P14270769045827291744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112554 (n : ℕ) : ℤ :=
  (A112554.P14270769045827291744.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117244.P6624429983364198537

`∩[A025584(n+1), A102540(n+1)]`
-/

namespace A117244.P6624429983364198537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P6624429983364198537

noncomputable section

/-- A117244: Single (or isolated or non-twin) primes (A007510) that are not Chen primes (A109611).

Offset 1, canonical program `A117244.P6624429983364198537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5269 terms. -/
def A117244 (n : ℕ) : ℤ :=
  (A117244.P6624429983364198537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5269 terms. -/
def A117244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119526.P17309535747538120691

`A027611(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119526.P17309535747538120691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (2 ^ n)

end

end A119526.P17309535747538120691

noncomputable section

/-- A119526: Odd denominators of n * n-th harmonic number = A027611[2^n].

Offset 0, canonical program `A119526.P17309535747538120691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119526 (n : ℕ) : ℤ :=
  A119526.P17309535747538120691.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126216.P14014912968389898343

`A033282(A061579(n)+3)`
-/

namespace A126216.P14014912968389898343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A061579 n + 3).toNat

end

end A126216.P14014912968389898343

noncomputable section

/-- A126216: Triangle read by rows: T(n,k) is the number of Schroeder paths of semilength n containing exactly k peaks but no peaks at level one (n >= 1; 0 <= k <= n-1).

Offset 1, canonical program `A126216.P14014912968389898343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A126216 (n : ℕ) : ℤ :=
  A126216.P14014912968389898343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9316 terms. -/
def A126216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127475.P6498119541064859132

`A054522(n+1)*A127507(n+1)`
-/

namespace A127475.P6498119541064859132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A127507 (n + 1)

end

end A127475.P6498119541064859132

noncomputable section

/-- A127475: Triangle T(n,k) read by rows: T(n,k) = mu(n)*phi(k) if k|n, else T(n,k)=0.

Offset 1, canonical program `A127475.P6498119541064859132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127475 (n : ℕ) : ℤ :=
  A127475.P6498119541064859132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128189.P4693228251088959264

`A134540(char[1]+n)-a(n-1)` with `a(0)=1`
-/

namespace A128189.P4693228251088959264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134540 ((if ∃ j, f1 j = n then 1 else 0) + n) - a (n - 1)

end

end A128189.P4693228251088959264

noncomputable section

/-- A128189: Moebius transform of A128174.

Offset 1, canonical program `A128189.P4693228251088959264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128189 (n : ℕ) : ℤ :=
  A128189.P4693228251088959264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131635.P15231796072732893040

`A132818(A245300(n)+1)`
-/

namespace A131635.P15231796072732893040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132818 (A245300 n + 1).toNat

end

end A131635.P15231796072732893040

noncomputable section

/-- A131635: Triangle T(n,m)=m*n*binomial(m+n,m)^2/(2*(m+n)) read by rows.

Offset 1, canonical program `A131635.P15231796072732893040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A131635 (n : ℕ) : ℤ :=
  A131635.P15231796072732893040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A131635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134100.P16893923253376579022

`∩[A025584(n+1), A067833(n+1)]`
-/

namespace A134100.P16893923253376579022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134100.P16893923253376579022

noncomputable section

/-- A134100: Primes p > 3 such that neither p-2 nor p-4 are prime.

Offset 1, canonical program `A134100.P16893923253376579022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8567 terms. -/
def A134100 (n : ℕ) : ℤ :=
  (A134100.P16893923253376579022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8567 terms. -/
def A134100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136692.P3604268324122598631

`A132739(n*a(n-1))%5` with `a(0)=1`
-/

namespace A136692.P3604268324122598631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A132739 ((n : ℤ) * a (n - 1)).toNat) 5

end

end A136692.P3604268324122598631

noncomputable section

/-- A136692: Final nonzero digit of n! in base 5.

Offset 0, canonical program `A136692.P3604268324122598631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A136692 (n : ℕ) : ℤ :=
  A136692.P3604268324122598631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A136692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136799.P12211769734399561323

`A025584(n+3)-1`
-/

namespace A136799.P12211769734399561323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 3) - 1

end

end A136799.P12211769734399561323

noncomputable section

/-- A136799: Last term in a sequence of at least 3 consecutive composite integers.

Offset 1, canonical program `A136799.P12211769734399561323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136799 (n : ℕ) : ℤ :=
  A136799.P12211769734399561323.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153585.P1931782127903893126

`A001405(A002262(n))*A053121(n)`
-/

namespace A153585.P1931782127903893126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A002262 n).toNat * A053121 n

end

end A153585.P1931782127903893126

noncomputable section

/-- A153585: Convolution triangle, A053121 * (A001405 * 0^(n-k)).

Offset 0, canonical program `A153585.P1931782127903893126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A153585 (n : ℕ) : ℤ :=
  A153585.P1931782127903893126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A153585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155454.P12349282199409109893

`A177974(n)/A007318(n)`
-/

namespace A155454.P12349282199409109893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177974 n : ℚ) / (A007318 n : ℚ)

end

end A155454.P12349282199409109893

noncomputable section

/-- A155454: Triangle read by rows: t(n,k)= k! + (1-k!)*(n - k)!, 0<=k<=n.

Offset 0, canonical program `A155454.P12349282199409109893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2489 terms. -/
def A155454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A155454.P12349282199409109893.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2489 terms. -/
def A155454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155761.P15069823807788748563

`A053121(n)*A156663(n)`
-/

namespace A155761.P15069823807788748563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n * A156663 n

end

end A155761.P15069823807788748563

noncomputable section

/-- A155761: Riordan array (c(2*x^2), x*c(2*x^2)) where c(x) is the g.f. of A000108.

Offset 0, canonical program `A155761.P15069823807788748563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155761 (n : ℕ) : ℤ :=
  A155761.P15069823807788748563.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A155761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156995.P8768716994975108950

`A034807(A061885(n))*A119502(n)`
-/

namespace A156995.P8768716994975108950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A061885 n).toNat * A119502 n

end

end A156995.P8768716994975108950

noncomputable section

/-- A156995: Triangle T(n, k) = 2*n*binomial(2*n-k, k)*(n-k)!/(2*n-k), with T(0, 0) = 2, read by rows.

Offset 0, canonical program `A156995.P8768716994975108950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A156995 (n : ℕ) : ℤ :=
  A156995.P8768716994975108950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A156995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159237.P7782317052390177821

`A046346(n+1)/A001414(A046346(n+1))`
-/

namespace A159237.P7782317052390177821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046346 (n + 1) : ℚ) / (A001414 (A046346 (n + 1)).toNat : ℚ)

end

end A159237.P7782317052390177821

noncomputable section

/-- A159237: Composite numbers A046346 divided by the sum of their prime factors (counted with multiplicity).

Offset 1, canonical program `A159237.P7782317052390177821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. -/
def A159237 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159237.P7782317052390177821.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. -/
def A159237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164677.P6354248361395124461

`A034947(n+1)*A001511(n+1)`
-/

namespace A164677.P6354248361395124461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A001511 (n + 1)

end

end A164677.P6354248361395124461

noncomputable section

/-- A164677: For a binary reflected Gray code, the (Hamming/Euclidean) distance between 2 subsequent points x and y is 1, say in coordinate k. If y has a 1 in coordinate k and x has a 0, than (x,y) is indicated by k, if it is the other way around, (x,y) is indicated by -k. The sequence has a fractal character such that G(d+1) = G(d) d+1 R(G(d)) where R(G(d)) alters d --> -d and leaves all other numbers invariant.

Offset 1, canonical program `A164677.P6354248361395124461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164677 (n : ℕ) : ℤ :=
  A164677.P6354248361395124461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175337.P3500885851626886640

`A011658(A132739(n+1))`
-/

namespace A175337.P3500885851626886640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 (A132739 (n + 1)).toNat

end

end A175337.P3500885851626886640

noncomputable section

/-- A175337: Fixed point of morphism 0 -> 00110, 1 -> 00111.

Offset 0, canonical program `A175337.P3500885851626886640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175337 (n : ℕ) : ℤ :=
  A175337.P3500885851626886640.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176063.P13273263877411822681

`A177974(n)+A014473(n)*A155162(n)`
-/

namespace A176063.P13273263877411822681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177974 n + A014473 n * A155162 n

end

end A176063.P13273263877411822681

noncomputable section

/-- A176063: Triangle read by rows: T(n,k) = (-1)^k * binomial(n,k) * pochhammer(-n,k) + (-1)^(n-k) * binomial(n,n-k) * pochhammer(-n,n-k) - n!.

Offset 0, canonical program `A176063.P13273263877411822681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A176063 (n : ℕ) : ℤ :=
  A176063.P13273263877411822681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A176063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179384.P14080840919956110630

`A025584(n+1)-2`
-/

namespace A179384.P14080840919956110630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1) - 2

end

end A179384.P14080840919956110630

noncomputable section

/-- A179384: Nonprimes in A040976.

Offset 1, canonical program `A179384.P14080840919956110630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179384 (n : ℕ) : ℤ :=
  A179384.P14080840919956110630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182584.P10431393163449915345

`A034807(A174114(n+1)-char[A034807(n)])`
-/

namespace A182584.P10431393163449915345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A174114 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A182584.P10431393163449915345

noncomputable section

/-- A182584: Central terms of the triangle A182579.

Offset 0, canonical program `A182584.P10431393163449915345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A182584 (n : ℕ) : ℤ :=
  A182584.P10431393163449915345.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A182584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183061.P3437069056470599292

`A183060(n)-A183060(A183060(n)-A151917(n))`
-/

namespace A183061.P3437069056470599292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183060 n - A183060 (A183060 n - A151917 n).toNat

end

end A183061.P3437069056470599292

noncomputable section

/-- A183061: First differences of A183060.

Offset 0, canonical program `A183061.P3437069056470599292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A183061 (n : ℕ) : ℤ :=
  A183061.P3437069056470599292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A183061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187487.P4860417623296774577

`n*A002805(n+1)-A064169(n+1)`
-/

namespace A187487.P4860417623296774577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002805 (n + 1) - A064169 (n + 1)

end

end A187487.P4860417623296774577

noncomputable section

/-- A187487: Numerator of n minus n-th harmonic number.

Offset 1, canonical program `A187487.P4860417623296774577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A187487 (n : ℕ) : ℤ :=
  A187487.P4860417623296774577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A187487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188034.P1990084002153887556

`A097805(C(4, A356749(n)))`
-/

namespace A188034.P1990084002153887556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (Nat.choose 4 (A356749 n).toNat)

end

end A188034.P1990084002153887556

noncomputable section

/-- A188034: [nr]-[nr-kr]-[kr], where r=(1+sqrt(5))/2, k=12, [ ]=floor.

Offset 1, canonical program `A188034.P1990084002153887556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188034 (n : ℕ) : ℤ :=
  A188034.P1990084002153887556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188433.P1155547441168829669

`A039982(A356749(n)²+1)`
-/

namespace A188433.P1155547441168829669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A356749 n ^ 2 + 1).toNat

end

end A188433.P1155547441168829669

noncomputable section

/-- A188433: a(n) = [2r]-[nr]-[2r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

Offset 1, canonical program `A188433.P1155547441168829669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188433 (n : ℕ) : ℤ :=
  A188433.P1155547441168829669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190455.P12633995412954827223

`eq[1, A191329(A016825(n))+A078588(n)]`
-/

namespace A190455.P12633995412954827223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A016825 n).toNat + A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190455.P12633995412954827223

noncomputable section

/-- A190455: Positions of 3 in A190451.

Offset 1, canonical program `A190455.P12633995412954827223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190455 (n : ℕ) : ℤ :=
  (A190455.P12633995412954827223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191218.P4909588505082131463

`filter[A057653(n+1), A358678(#)]`
-/

namespace A191218.P4909588505082131463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A191218.P4909588505082131463

noncomputable section

/-- A191218: Odd numbers n such that sigma(n) is congruent to 2 modulo 4.

Offset 1, canonical program `A191218.P4909588505082131463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A191218 (n : ℕ) : ℤ :=
  A191218.P4909588505082131463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. -/
def A191218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193386.P2341240866290404182

`A062821(n+1)-A193453(n+1)`
-/

namespace A193386.P2341240866290404182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1) - A193453 (n + 1)

end

end A193386.P2341240866290404182

noncomputable section

/-- A193386: Number of even divisors of phi(n).

Offset 1, canonical program `A193386.P2341240866290404182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A193453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193386 (n : ℕ) : ℤ :=
  A193386.P2341240866290404182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062821, A193453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204922.P10233895407387840154

`A143061(A038722(n+1))`
-/

namespace A204922.P10233895407387840154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A038722 (n + 1)).toNat

end

end A204922.P10233895407387840154

noncomputable section

/-- A204922: Ordered differences of Fibonacci numbers.

Offset 1, canonical program `A204922.P10233895407387840154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204922 (n : ℕ) : ℤ :=
  A204922.P10233895407387840154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207627.P14130250259770773065

`A209705(A080036(n))`
-/

namespace A207627.P14130250259770773065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (A080036 n).toNat

end

end A207627.P14130250259770773065

noncomputable section

/-- A207627: Triangle of coefficients of polynomials u(n,x) jointly generated with A207628; see the Formula section.

Offset 1, canonical program `A207627.P14130250259770773065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A207627 (n : ℕ) : ℤ :=
  A207627.P14130250259770773065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A207627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213600.P5414421497863625237

`A053121(n)²`
-/

namespace A213600.P5414421497863625237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 n ^ 2

end

end A213600.P5414421497863625237

noncomputable section

/-- A213600: Triangle T(n,k) read by rows: Number of Dyck n-paths with midpoint at height k.

Offset 0, canonical program `A213600.P5414421497863625237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213600 (n : ℕ) : ℤ :=
  A213600.P5414421497863625237.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214684.P17730648645661379335

`A132739(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A214684.P17730648645661379335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A132739 (a (n - 1) + a (n - 2)).toNat

end

end A214684.P17730648645661379335

noncomputable section

/-- A214684: a(1)=1, a(2)=1, and, for n>2, a(n)=(a(n-1)+a(n-2))/5^k, where 5^k is the highest power of 5 dividing a(n-1)+a(n-2).

Offset 1, canonical program `A214684.P17730648645661379335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214684 (n : ℕ) : ℤ :=
  A214684.P17730648645661379335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A214684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A216299.P2316561811494309320

`∩[A008471(n+1), A153275(n+1)]`
-/

namespace A216299.P2316561811494309320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216299.P2316561811494309320

noncomputable section

/-- A216299: Numbers k such that 10k+1 is composite but 10k+3, 10k+7, 10k+9 are all prime.

Offset 1, canonical program `A216299.P2316561811494309320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A216299 (n : ℕ) : ℤ :=
  (A216299.P2316561811494309320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A216299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229742.P11809137219085310732

`A071585(n)-A071766(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A229742.P11809137219085310732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 n - A071766 n

end

end A229742.P11809137219085310732

noncomputable section

/-- A229742: a(n) = A071585(n) - A071766(n).

Offset 0, canonical program `A229742.P11809137219085310732`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071585, A071766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229742 (n : ℕ) : ℤ :=
  A229742.P11809137219085310732.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071585, A071766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A237124.P1225317986327375735

`A033184(n+1)-A059365(n+2)%A039599(n)`
-/

namespace A237124.P1225317986327375735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) - Int.tmod (A059365 (n + 2)) (A039599 n)

end

end A237124.P1225317986327375735

noncomputable section

/-- A237124: Triangle of numbers related to Catalan numbers (A000108).

Offset 0, canonical program `A237124.P1225317986327375735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A237124 (n : ℕ) : ℤ :=
  A237124.P1225317986327375735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. -/
def A237124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267269.P7578572907619052116

`A266716(A020703(n+1)-1)`
-/

namespace A267269.P7578572907619052116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (A020703 (n + 1) - 1).toNat

end

end A267269.P7578572907619052116

noncomputable section

/-- A267269: Triangle read by rows giving successive states of cellular automaton generated by "Rule 115" initiated with a single ON (black) cell.

Offset 0, canonical program `A267269.P7578572907619052116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267269 (n : ℕ) : ℤ :=
  A267269.P7578572907619052116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277543.P14051601711625620625

`A010874(A132739(n+1))`
-/

namespace A277543.P14051601711625620625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A132739 (n + 1)).toNat

end

end A277543.P14051601711625620625

noncomputable section

/-- A277543: a(n) = n/5^m mod 5, where 5^m is the greatest power of 5 that divides n.

Offset 1, canonical program `A277543.P14051601711625620625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277543 (n : ℕ) : ℤ :=
  A277543.P14051601711625620625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279952.P8312467500998527084

`∑{d}[n+1, A111406(#-1)]`
-/

namespace A279952.P8312467500998527084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111406 (d - 1)

end

end A279952.P8312467500998527084

noncomputable section

/-- A279952: Number of primes with prime subscripts dividing n.

Offset 1, canonical program `A279952.P8312467500998527084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A279952 (n : ℕ) : ℤ :=
  A279952.P8312467500998527084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A279952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280521.P10058425785882284930

`A288602(n+2)%(n+2)`
-/

namespace A280521.P10058425785882284930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288602 (n + 2)) (n + 2 : ℤ)

end

end A280521.P10058425785882284930

noncomputable section

/-- A280521: From the "Fibonachos" game: Number of phases of the following routine: during each phase, the player removes objects from a pile of n objects as the Fibonacci sequence until the pile contains fewer objects than the next Fibonacci number. The phases continue until the pile is empty.

Offset 1, canonical program `A280521.P10058425785882284930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A280521 (n : ℕ) : ℤ :=
  A280521.P10058425785882284930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A280521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294074.P3645708007660276247

`∩[A058500(n+1), A072939(n+1)]`
-/

namespace A294074.P3645708007660276247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294074.P3645708007660276247

noncomputable section

/-- A294074: Primes of the form p*2^k + 1, where p is an odd prime and k is odd.

Offset 1, canonical program `A294074.P3645708007660276247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A294074 (n : ℕ) : ℤ :=
  (A294074.P3645708007660276247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A294074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309391.P8425997874176840933

`gcd(n+3, A064169(n+1))`
-/

namespace A309391.P8425997874176840933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A064169 (n + 1))

end

end A309391.P8425997874176840933

noncomputable section

/-- A309391: a(n) = gcd(n, A064169(n-2)) for n > 2.

Offset 3, canonical program `A309391.P8425997874176840933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A309391 (n : ℕ) : ℤ :=
  (A309391.P8425997874176840933.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A309391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312151.P16179426876035507423

`A311613(n)+Δ[A011864(n)]`
-/

namespace A312151.P16179426876035507423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311613 n + (f1 (n + 1) - f1 n)

end

end A312151.P16179426876035507423

noncomputable section

/-- A312151: Coordination sequence Gal.6.133.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312151.P16179426876035507423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A312151 (n : ℕ) : ℤ :=
  A312151.P16179426876035507423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A312151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312668.P1763801044699896301

`2*A313918(n)-A008458(n)`
-/

namespace A312668.P1763801044699896301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313918 n - A008458 n

end

end A312668.P1763801044699896301

noncomputable section

/-- A312668: Coordination sequence Gal.6.250.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312668.P1763801044699896301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A312668 (n : ℕ) : ℤ :=
  A312668.P1763801044699896301.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A312668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312683.P3196979988989396886

`A312207(n)+Δ[A011862(n)]`
-/

namespace A312683.P3196979988989396886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312207 n + (f1 (n + 1) - f1 n)

end

end A312683.P3196979988989396886

noncomputable section

/-- A312683: Coordination sequence Gal.5.113.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312683.P3196979988989396886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A312683 (n : ℕ) : ℤ :=
  A312683.P3196979988989396886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. -/
def A312683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313024.P6898105506734600327

`abs(10*n-A315498(n))`
-/

namespace A313024.P6898105506734600327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315498 n|

end

end A313024.P6898105506734600327

noncomputable section

/-- A313024: Coordination sequence Gal.6.119.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313024.P6898105506734600327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A313024 (n : ℕ) : ℤ :=
  A313024.P6898105506734600327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A313024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313498.P2788060221542101989

`abs(A008592(n)-A313918(n))`
-/

namespace A313498.P2788060221542101989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313918 n|

end

end A313498.P2788060221542101989

noncomputable section

/-- A313498: Coordination sequence Gal.6.255.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313498.P2788060221542101989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A313498 (n : ℕ) : ℤ :=
  A313498.P2788060221542101989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. -/
def A313498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314019.P6060083836539470850

`abs(A008592(n)-A315070(n))`
-/

namespace A314019.P6060083836539470850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315070 n|

end

end A314019.P6060083836539470850

noncomputable section

/-- A314019: Coordination sequence Gal.6.152.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314019.P6060083836539470850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. -/
def A314019 (n : ℕ) : ℤ :=
  A314019.P6060083836539470850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. -/
def A314019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315195.P14645508602762884872

`abs(10*n-A310512(n))`
-/

namespace A315195.P14645508602762884872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A310512 n|

end

end A315195.P14645508602762884872

noncomputable section

/-- A315195: Coordination sequence Gal.6.249.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315195.P14645508602762884872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A315195 (n : ℕ) : ℤ :=
  A315195.P14645508602762884872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A315195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315216.P6702835054405367658

`2*A315498(n)-A008458(n)`
-/

namespace A315216.P6702835054405367658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315498 n - A008458 n

end

end A315216.P6702835054405367658

noncomputable section

/-- A315216: Coordination sequence Gal.6.353.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315216.P6702835054405367658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A315216 (n : ℕ) : ℤ :=
  A315216.P6702835054405367658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A315216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321821.P17126405008062713316

`A034947(n+1)*A321829((n+1)/(or(n, n+1)-n))`
-/

namespace A321821.P17126405008062713316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A321821.P17126405008062713316

noncomputable section

/-- A321821: a(n) = Sum_{d|n, d==1 mod 4} d^5 - Sum_{d|n, d==3 mod 4} d^5.

Offset 1, canonical program `A321821.P17126405008062713316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321821 (n : ℕ) : ℤ :=
  A321821.P17126405008062713316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321823.P6269813539326752658

`A034947(n+1)*A321831(A000265(n+1))`
-/

namespace A321823.P6269813539326752658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321831 (A000265 (n + 1)).toNat

end

end A321823.P6269813539326752658

noncomputable section

/-- A321823: a(n) = Sum_{d|n, d==1 mod 4} d^7 - Sum_{d|n, d==3 mod 4} d^7.

Offset 1, canonical program `A321823.P6269813539326752658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321823 (n : ℕ) : ℤ :=
  A321823.P6269813539326752658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321827.P8848987711594622306

`A034947(n+1)*A321835((n+1)/(or(n, n+1)-n))`
-/

namespace A321827.P8848987711594622306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A321835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A321827.P8848987711594622306

noncomputable section

/-- A321827: a(n) = Sum_{d|n, d==1 (mod 4)} d^11 - Sum_{d|n, d==3 (mod 4)} d^11.

Offset 1, canonical program `A321827.P8848987711594622306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321827 (n : ℕ) : ℤ :=
  A321827.P8848987711594622306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329480.P795182894292695426

`A246425(n%A075677(n+1))`
-/

namespace A329480.P795182894292695426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (Int.tmod (n : ℤ) (A075677 (n + 1))).toNat

end

end A329480.P795182894292695426

noncomputable section

/-- A329480: a(n) = (1 - A075677(n))/6 if 6|(A075677(n)-1) or a(n) = (A075677(n) + 1)/6 if 6|(A075677(n)+1).

Offset 1, canonical program `A329480.P795182894292695426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329480 (n : ℕ) : ℤ :=
  A329480.P795182894292695426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337349.P3623951952315938329

`A075677(A067745(n+1))`
-/

namespace A337349.P3623951952315938329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A067745 (n + 1)).toNat

end

end A337349.P3623951952315938329

noncomputable section

/-- A337349: To get a(n), take 3*n+1 and divide out any power of 2; then multiply by 3, subtract 1 and divide out any power of 2.

Offset 0, canonical program `A337349.P3623951952315938329`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067745, A075677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337349 (n : ℕ) : ℤ :=
  A337349.P3623951952315938329.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067745, A075677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347840.P15500692017201645384

`2*n%A075677(n+1)+1`
-/

namespace A347840.P15500692017201645384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (n : ℤ) (A075677 (n + 1)) + 1

end

end A347840.P15500692017201645384

noncomputable section

/-- A347840: A surjective map of the positive numbers congruent to 5 modulo 8 (A004770) to the positive numbers congruent to 1, 3, or 7 modulo 8 (A047529).

Offset 1, canonical program `A347840.P15500692017201645384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347840 (n : ℕ) : ℤ :=
  A347840.P15500692017201645384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350345.P6937258205701611125

`A350344(n+1)²`
-/

namespace A350345.P6937258205701611125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350344 (n + 1) ^ 2

end

end A350345.P6937258205701611125

noncomputable section

/-- A350345: Squares of composite numbers k that are abelian orders.

Offset 1, canonical program `A350345.P6937258205701611125`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350345 (n : ℕ) : ℤ :=
  A350345.P6937258205701611125.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353137.P706346639936671998

`∩[A061771(n+1), A151800(A061771(n+1))]`
-/

namespace A353137.P706346639936671998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A061771 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353137.P706346639936671998

noncomputable section

/-- A353137: Primes whose gaps to both neighbor primes are powers of two.

Offset 1, canonical program `A353137.P706346639936671998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A353137 (n : ℕ) : ℤ :=
  (A353137.P706346639936671998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A353137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353456.P12183993383007872108

`filter[A381313(n+1), A353628(#)]`
-/

namespace A353456.P12183993383007872108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A353456.P12183993383007872108

noncomputable section

/-- A353456: Numbers k such that A353627(k) is less than A353628(k).

Offset 1, canonical program `A353456.P12183993383007872108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 786 terms. -/
def A353456 (n : ℕ) : ℤ :=
  A353456.P12183993383007872108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 786 terms. -/
def A353456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356637.P751081540588102754

`A000265(A263931(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356637.P751081540588102754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A263931 n).toNat

end

end A356637.P751081540588102754

noncomputable section

/-- A356637: a(n) = A000265(A263931(n)).

Offset 0, canonical program `A356637.P751081540588102754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A263931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356637 (n : ℕ) : ℤ :=
  A356637.P751081540588102754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A263931, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359100.P3178330980824675214

`A132739(n+1)*A339747(n+1)`
-/

namespace A359100.P3178330980824675214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 1) * A339747 (n + 1)

end

end A359100.P3178330980824675214

noncomputable section

/-- A359100: a(n) = (1/4) * Sum_{d|n} phi(5 * d).

Offset 1, canonical program `A359100.P3178330980824675214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359100 (n : ℕ) : ℤ :=
  A359100.P3178330980824675214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359100.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A369070.P15963165301272738747

`A008379(n)%A369008(n+1)`
-/

namespace A369070.P15963165301272738747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A369008 (n + 1))

end

end A369070.P15963165301272738747

noncomputable section

/-- A369070: a(n) = 1 if there is at least one prime power p^e in the prime factorization of n such that p|e, otherwise 0.

Offset 1, canonical program `A369070.P15963165301272738747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369070 (n : ℕ) : ℤ :=
  A369070.P15963165301272738747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379822.P7224189513868805994

`A094527(n)+A122366(n)-A062344(n)`
-/

namespace A379822.P7224189513868805994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n + (A122366 n - A062344 n)

end

end A379822.P7224189513868805994

noncomputable section

/-- A379822: Triangle read by rows: T(n, k) is the number of walks of length n on the Z X Z grid with unit steps in all four directions (NSWE) starting at (0, 0), and ending on the vertical line x = 0 if k = 0, or on the line x = k or x = -(n + 1 - k) if k > 0.

Offset 0, canonical program `A379822.P7224189513868805994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379822 (n : ℕ) : ℤ :=
  A379822.P7224189513868805994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379832.P1471312056318668786

`A374456(n+1)*A374457(n+1)`
-/

namespace A379832.P1471312056318668786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374456 (n + 1) * A374457 (n + 1)

end

end A379832.P1471312056318668786

noncomputable section

/-- A379832: The second Jordan totient function applied to the exponentially odd numbers.

Offset 1, canonical program `A379832.P1471312056318668786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379832 (n : ℕ) : ℤ :=
  A379832.P1471312056318668786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002056.P17588811632767383512

`A033282(A000096(n+3))`
-/

namespace A002056.P17588811632767383512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A000096 (n + 3)).toNat

end

end A002056.P17588811632767383512

noncomputable section

/-- A002056: Number of diagonal dissections of a convex n-gon into n-5 regions.

Offset 6, canonical program `A002056.P17588811632767383512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A002056 (n : ℕ) : ℤ :=
  A002056.P17588811632767383512.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A002056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007298.P9853402396666436554

`record[A057427(n)*A143061(n+1)]`
-/

namespace A007298.P9853402396666436554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A143061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007298.P9853402396666436554

noncomputable section

/-- A007298: Sums of consecutive Fibonacci numbers.

Offset 1, canonical program `A007298.P9853402396666436554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A007298 (n : ℕ) : ℤ :=
  A007298.P9853402396666436554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. -/
def A007298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007510.P9655898748526012835

`∩[A025584(n+1), A067774(n+1)]`
-/

namespace A007510.P9655898748526012835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007510.P9655898748526012835

noncomputable section

/-- A007510: Single (or isolated or non-twin) primes: Primes p such that neither p-2 nor p+2 is prime.

Offset 1, canonical program `A007510.P9655898748526012835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8565 terms. -/
def A007510 (n : ℕ) : ℤ :=
  (A007510.P9655898748526012835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8565 terms. -/
def A007510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017679.P5256545410646879571

`lcm(A013956(n+1), A053167(n+1))/A053167(n+1)`
-/

namespace A017679.P5256545410646879571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A013956 (n + 1)) (A053167 (n + 1)) : ℚ) / (A053167 (n + 1) : ℚ)

end

end A017679.P5256545410646879571

noncomputable section

/-- A017679: Numerator of sum of -8th powers of divisors of n.

Offset 1, canonical program `A017679.P5256545410646879571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A017679.P5256545410646879571.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A017679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024515.P16075268455996270968

`eq[0, A135786(n+1)%2]+1`
-/

namespace A024515.P16075268455996270968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135786 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A024515.P16075268455996270968

noncomputable section

/-- A024515: Positions of even numbers in A000404 (sums of 2 nonzero squares).

Offset 1, canonical program `A024515.P16075268455996270968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A024515 (n : ℕ) : ℤ :=
  (A024515.P16075268455996270968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A024515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024520.P11215576376255656208

`eq[1, ∑{e}[A339273(n+1)/4, #]]+1`
-/

namespace A024520.P11215576376255656208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339273 (n + 1) : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f3 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f3 n)).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A024520.P11215576376255656208

noncomputable section

/-- A024520: Positions of primes in A000404 (sums of 2 nonzero squares).

Offset 1, canonical program `A024520.P11215576376255656208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2089 terms. -/
def A024520 (n : ℕ) : ℤ :=
  (A024520.P11215576376255656208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2089 terms. -/
def A024520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025849.P13243924425980503723

`Δ[A029053(abs(1-n))]+C(2, n+2)`
-/

namespace A025849.P13243924425980503723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A025849.P13243924425980503723

noncomputable section

/-- A025849: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A025849.P13243924425980503723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025849 (n : ℕ) : ℤ :=
  A025849.P13243924425980503723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033281.P743630610779105652

`A033282(Δ[A264443(n+2)])`
-/

namespace A033281.P743630610779105652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (f1 (n + 1) - f1 n).toNat

end

end A033281.P743630610779105652

noncomputable section

/-- A033281: Number of diagonal dissections of a convex (n+9)-gon into n+1 regions.

Offset 0, canonical program `A033281.P743630610779105652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A033281 (n : ℕ) : ℤ :=
  A033281.P743630610779105652.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A033281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033992.P9984028461934439090

`A214195(n+2)`
-/

namespace A033992.P9984028461934439090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 2)

end

end A033992.P9984028461934439090

noncomputable section

/-- A033992: Numbers that are divisible by exactly three different primes.

Offset 1, canonical program `A033992.P9984028461934439090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033992 (n : ℕ) : ℤ :=
  A033992.P9984028461934439090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A033992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035930.P13238734123454317446

`A088116(n)-A257297(n)`
-/

namespace A035930.P13238734123454317446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088116 n - A257297 n

end

end A035930.P13238734123454317446

noncomputable section

/-- A035930: Maximal product of any two numbers whose concatenation is n.

Offset 0, canonical program `A035930.P13238734123454317446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A035930 (n : ℕ) : ℤ :=
  A035930.P13238734123454317446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A035930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037910.P17653679277540927855

`A037911(A037474(n+1))`
-/

namespace A037910.P17653679277540927855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (A037474 (n + 1)).toNat

end

end A037910.P17653679277540927855

noncomputable section

/-- A037910: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*7^i is the base-7 representation of n.

Offset 1, canonical program `A037910.P17653679277540927855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037910 (n : ℕ) : ℤ :=
  A037910.P17653679277540927855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039640.P14279125705308195420

`A039635(A006093(n+1))`
-/

namespace A039640.P14279125705308195420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A006093 (n + 1)).toNat

end

end A039640.P14279125705308195420

noncomputable section

/-- A039640: Fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)-1.

Offset 1, canonical program `A039640.P14279125705308195420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039640 (n : ℕ) : ℤ :=
  A039640.P14279125705308195420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039641.P14858944714057806385

`A039635(A008864(n+1))`
-/

namespace A039641.P14858944714057806385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039635 (A008864 (n + 1)).toNat

end

end A039641.P14858944714057806385

noncomputable section

/-- A039641: Fixed point of "k -> k/2 or (k+1)/2 until result is prime", starting with prime(n)+1.

Offset 1, canonical program `A039641.P14858944714057806385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039641 (n : ℕ) : ℤ :=
  A039641.P14858944714057806385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A039641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045191.P12950099252231406999

`A023733(A023706(n+1)+1)`
-/

namespace A045191.P12950099252231406999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023706 (n + 1) + 1).toNat

end

end A045191.P12950099252231406999

noncomputable section

/-- A045191: Numbers whose base-5 representation contains exactly one 0 and no 3's.

Offset 1, canonical program `A045191.P12950099252231406999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3640 terms. -/
def A045191 (n : ℕ) : ℤ :=
  A045191.P12950099252231406999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3640 terms. -/
def A045191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045195.P10661611237994601210

`A023733(A023707(n+1)+1)`
-/

namespace A045195.P10661611237994601210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023707 (n + 1) + 1).toNat

end

end A045195.P10661611237994601210

noncomputable section

/-- A045195: Numbers whose base-5 representation contains exactly two 0's and no 3's.

Offset 1, canonical program `A045195.P10661611237994601210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. -/
def A045195 (n : ℕ) : ℤ :=
  A045195.P10661611237994601210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. -/
def A045195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045199.P14905624048483423082

`A023733(A023708(n+1)+1)`
-/

namespace A045199.P14905624048483423082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023708 (n + 1) + 1).toNat

end

end A045199.P14905624048483423082

noncomputable section

/-- A045199: Numbers whose base-5 representation contains exactly three 0's and no 3's.

Offset 1, canonical program `A045199.P14905624048483423082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A045199 (n : ℕ) : ℤ :=
  A045199.P14905624048483423082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A045199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045236.P6038733648539689362

`∩[A023726(n+1), A023733(n+1)]`
-/

namespace A045236.P6038733648539689362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045236.P6038733648539689362

noncomputable section

/-- A045236: Numbers whose base-5 representation contains exactly one 1 and no 3's.

Offset 1, canonical program `A045236.P6038733648539689362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2115 terms. -/
def A045236 (n : ℕ) : ℤ :=
  (A045236.P6038733648539689362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2115 terms. -/
def A045236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045266.P5671073861663757090

`A023733(A023714(n+1)+1)`
-/

namespace A045266.P5671073861663757090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023714 (n + 1) + 1).toNat

end

end A045266.P5671073861663757090

noncomputable section

/-- A045266: Numbers whose base-5 representation contains exactly one 2 and no 3's.

Offset 1, canonical program `A045266.P5671073861663757090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A045266 (n : ℕ) : ℤ :=
  A045266.P5671073861663757090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A045266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045270.P8891341731803118067

`A023733(A023715(n+1)+1)`
-/

namespace A045270.P8891341731803118067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023715 (n + 1) + 1).toNat

end

end A045270.P8891341731803118067

noncomputable section

/-- A045270: Numbers whose base-5 representation contains exactly two 2's and no 3's.

Offset 1, canonical program `A045270.P8891341731803118067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3138 terms. -/
def A045270 (n : ℕ) : ℤ :=
  A045270.P8891341731803118067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3138 terms. -/
def A045270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045293.P1393092678983169783

`A023733(A023718(n+1)+1)`
-/

namespace A045293.P1393092678983169783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023718 (n + 1) + 1).toNat

end

end A045293.P1393092678983169783

noncomputable section

/-- A045293: Numbers whose base-5 representation contains no 3's and exactly one 4.

Offset 1, canonical program `A045293.P1393092678983169783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3654 terms. -/
def A045293 (n : ℕ) : ℤ :=
  A045293.P1393092678983169783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3654 terms. -/
def A045293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045294.P1182473461957205585

`A023733(A023719(n+1)+1)`
-/

namespace A045294.P1182473461957205585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023719 (n + 1) + 1).toNat

end

end A045294.P1182473461957205585

noncomputable section

/-- A045294: Numbers whose base-5 representation contains no 3's and exactly two 4's.

Offset 1, canonical program `A045294.P1182473461957205585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2868 terms. -/
def A045294 (n : ℕ) : ℤ :=
  A045294.P1182473461957205585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2868 terms. -/
def A045294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049622.P13422498576475773910

`(n+2)²-1-A049634(n)`
-/

namespace A049622.P13422498576475773910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1 - A049634 n

end

end A049622.P13422498576475773910

noncomputable section

/-- A049622: a(n) = T(n,n+2), array T as in A049615.

Offset 0, canonical program `A049622.P13422498576475773910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A049622 (n : ℕ) : ℤ :=
  A049622.P13422498576475773910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A049622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050944.P6983789930678344606

`∩[A066507(n+1), A364657(n+1)]`
-/

namespace A050944.P6983789930678344606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050944.P6983789930678344606

noncomputable section

/-- A050944: Numbers k such that sigma(k) > sigma(k+1) > sigma(k+2) > sigma(k+3).

Offset 1, canonical program `A050944.P6983789930678344606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A050944 (n : ℕ) : ℤ :=
  (A050944.P6983789930678344606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A050944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052173.P12402089057864539642

`gcd(3, A005897(n))*A053121(A061579(n))`
-/

namespace A052173.P12402089057864539642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A005897 n) : ℤ) * A053121 (A061579 n).toNat

end

end A052173.P12402089057864539642

noncomputable section

/-- A052173: Another version of the Catalan triangle A008315.

Offset 0, canonical program `A052173.P12402089057864539642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052173 (n : ℕ) : ℤ :=
  A052173.P12402089057864539642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054641.P4566716067980896768

`lcm(a(n-1), A023509(n+1))` with `a(0)=1, a(1)=6`
-/

namespace A054641.P4566716067980896768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A023509 (n + 1))

end

end A054641.P4566716067980896768

noncomputable section

/-- A054641: GCD of divisor-sum of primorials and primorials itself: a(n) = gcd(A002110(n), A000203(A002110(n))).

Offset 1, canonical program `A054641.P4566716067980896768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A054641 (n : ℕ) : ℤ :=
  (A054641.P4566716067980896768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A054641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055769.P9933774416069110779

`A006530(a(n-1)*A023503(n+1))` with `a(0)=1`
-/

namespace A055769.P9933774416069110779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1) * A023503 (n + 1)).toNat

end

end A055769.P9933774416069110779

noncomputable section

/-- A055769: Largest prime dividing phi of the n-th primorial.

Offset 1, canonical program `A055769.P9933774416069110779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A055769 (n : ℕ) : ℤ :=
  A055769.P9933774416069110779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A055769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061817.P16461623069518315814

`filter[A061810(n+1), A373991(#)]`
-/

namespace A061817.P16461623069518315814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A061817.P16461623069518315814

noncomputable section

/-- A061817: Multiples of 9 containing only odd digits.

Offset 1, canonical program `A061817.P16461623069518315814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A061817 (n : ℕ) : ℤ :=
  A061817.P16461623069518315814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A061817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065454.P12139817057846770347

`eq[n+2, A335024(n+1)]+1`
-/

namespace A065454.P12139817057846770347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065454.P12139817057846770347

noncomputable section

/-- A065454: Let the k-th harmonic number be H(k) = Sum_{i=1..k} 1/i = P(k)/Q(k) = A001008(k)/A002805(k); sequence gives values of k such that Q(k) = Q(k+1).

Offset 1, canonical program `A065454.P12139817057846770347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065454 (n : ℕ) : ℤ :=
  (A065454.P12139817057846770347.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070204.P13892288922647958106

`A000035(n)*A309395(A000189(n+1))`
-/

namespace A070204.P13892288922647958106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A309395 (A000189 (n + 1)).toNat

end

end A070204.P13892288922647958106

noncomputable section

/-- A070204: Number of isosceles integer triangles with perimeter n having integral inradius.

Offset 1, canonical program `A070204.P13892288922647958106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070204 (n : ℕ) : ℤ :=
  A070204.P13892288922647958106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070812.P17457966107081352465

`A006530(n+3)-A000203(A068211(n+3))`
-/

namespace A070812.P17457966107081352465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3) - A000203 (A068211 (n + 3)).toNat

end

end A070812.P17457966107081352465

noncomputable section

/-- A070812: a(n) = phi(gpf(n)) - gpf(phi(n)) = A000010(A006530(n)) - A006530(A000010(n)).

Offset 3, canonical program `A070812.P17457966107081352465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070812 (n : ℕ) : ℤ :=
  A070812.P17457966107081352465.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070817.P10350472922045792204

`A080513(n)-A068211(n+3)`
-/

namespace A070817.P10350472922045792204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - A068211 (n + 3)

end

end A070817.P10350472922045792204

noncomputable section

/-- A070817: a(n) = floor(n/2) - gpf(phi(n)), where gpf(n) is the largest prime factor of n.

Offset 3, canonical program `A070817.P10350472922045792204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070817 (n : ℕ) : ℤ :=
  A070817.P10350472922045792204.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070820.P14301036405267138614

`A000040(n+1)-A070819(n+1)`
-/

namespace A070820.P14301036405267138614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A070819 (n + 1)

end

end A070820.P14301036405267138614

noncomputable section

/-- A070820: Difference between n-th prime and the value of commutator[phi,gpf] = commutator[A000010, A006530] at the same prime argument.

Offset 1, canonical program `A070820.P14301036405267138614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070820 (n : ℕ) : ℤ :=
  A070820.P14301036405267138614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071217.P13033670713267228492

`lt[n+1, A069483(n+1)]+1`
-/

namespace A071217.P13033670713267228492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069483 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071217.P13033670713267228492

noncomputable section

/-- A071217: Numbers k such that the largest prime factor of the sum of successive primes p(k) + p(k+1) is greater than k.

Offset 1, canonical program `A071217.P13033670713267228492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1887 terms. -/
def A071217 (n : ℕ) : ℤ :=
  (A071217.P13033670713267228492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1887 terms. -/
def A071217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071825.P2991501413565991606

`A071823(n+1)-A071824(n+1)`
-/

namespace A071825.P2991501413565991606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071823 (n + 1) - A071824 (n + 1)

end

end A071825.P2991501413565991606

noncomputable section

/-- A071825: a(n) = (number of x with largest prime factor of the form 4k+3 less than or equal to n) minus (number of x with largest prime factor of the form 4k+1 less than or equal to n).

Offset 1, canonical program `A071825.P2991501413565991606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071823, A071824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071825 (n : ℕ) : ℤ :=
  A071825.P2991501413565991606.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071823, A071824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071835.P15681907629153140028

`∩[A048098(n+1), A079142(n)]`
-/

namespace A071835.P15681907629153140028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071835.P15681907629153140028

noncomputable section

/-- A071835: Numbers k such that the largest prime factor of k is equal to floor(sqrt(k)).

Offset 1, canonical program `A071835.P15681907629153140028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A071835 (n : ℕ) : ℤ :=
  (A071835.P15681907629153140028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A071835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071870.P2499928873080730588

`A070087(eq[1, A070087(n+2)-A070087(n+1)]+1)`
-/

namespace A071870.P2499928873080730588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 2) - A070087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071870.P2499928873080730588

noncomputable section

/-- A071870: Numbers k such that gpf(k) > gpf(k+1) > gpf(k+2) where gpf(k) denotes the largest prime factor of k.

Offset 1, canonical program `A071870.P2499928873080730588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. -/
def A071870 (n : ℕ) : ℤ :=
  A071870.P2499928873080730588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. -/
def A071870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073450.P771997140351676744

`A143061(A099375(n)+1+n)%A020695(A002262(n))`
-/

namespace A073450.P771997140351676744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143061 (A099375 n + 1 + (n : ℤ)).toNat) (A020695 (A002262 n).toNat)

end

end A073450.P771997140351676744

noncomputable section

/-- A073450: Triangle T(j,k) = remainder of Fibonacci(j) divided by Fibonacci(k), for 3 < j and 2 < k < j.

Offset 0, canonical program `A073450.P771997140351676744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A073450 (n : ℕ) : ℤ :=
  A073450.P771997140351676744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A073450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074243.P6098293746356971239

`filter[A088232(n+1), A353559(#)]`
-/

namespace A074243.P6098293746356971239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A074243.P6098293746356971239

noncomputable section

/-- A074243: Numbers n such that every integer has a cube root mod n.

Offset 1, canonical program `A074243.P6098293746356971239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6707 terms. -/
def A074243 (n : ℕ) : ℤ :=
  A074243.P6098293746356971239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6707 terms. -/
def A074243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074274.P5256342783301417173

`Δ[A074273(n+1)]`
-/

namespace A074274.P5256342783301417173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074274.P5256342783301417173

noncomputable section

/-- A074274: Gaps between even number of 1's in the Kolakoski sequence A000002.

Offset 1, canonical program `A074274.P5256342783301417173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074274 (n : ℕ) : ℤ :=
  A074274.P5256342783301417173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074289.P13643960160893623

`∩[2*A022297(n+2)-n, record[A074288(n+1)]]`
-/

namespace A074289.P13643960160893623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022297 (n + 2) - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074289.P13643960160893623

noncomputable section

/-- A074289: Values of A000002(n)*A054353(n) that are repeated.

Offset 1, canonical program `A074289.P13643960160893623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. -/
def A074289 (n : ℕ) : ℤ :=
  (A074289.P13643960160893623.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 859 terms. -/
def A074289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076559.P9852931087221104863

`A071216(n+2)`
-/

namespace A076559.P9852931087221104863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071216 (n + 2)

end

end A076559.P9852931087221104863

noncomputable section

/-- A076559: Greatest prime divisor of n-th interprime: (prime(n) + prime(n+1))/2.

Offset 2, canonical program `A076559.P9852931087221104863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A076559 (n : ℕ) : ℤ :=
  A076559.P9852931087221104863.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A076559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081061.P11142281922485975947

`filter[A073491(n+1), A340363(#)]`
-/

namespace A081061.P11142281922485975947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A081061.P11142281922485975947

noncomputable section

/-- A081061: Union of 3-smooth numbers and prime powers.

Offset 1, canonical program `A081061.P11142281922485975947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A081061 (n : ℕ) : ℤ :=
  A081061.P11142281922485975947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6705 terms. -/
def A081061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083714.P16589152891905535723

`A070320(n+1)-A070777(n+1)`
-/

namespace A083714.P16589152891905535723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070320 (n + 1) - A070777 (n + 1)

end

end A083714.P16589152891905535723

noncomputable section

/-- A083714: (greatest prime <= n) - (greatest prime factor of n).

Offset 1, canonical program `A083714.P16589152891905535723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083714 (n : ℕ) : ℤ :=
  A083714.P16589152891905535723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085273.P3425494677370618901

`A002808(n+1)-A052369(n+1)`
-/

namespace A085273.P3425494677370618901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A052369 (n + 1)

end

end A085273.P3425494677370618901

noncomputable section

/-- A085273: Difference between n-th composite number and its largest prime divisor.

Offset 1, canonical program `A085273.P3425494677370618901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085273 (n : ℕ) : ℤ :=
  A085273.P3425494677370618901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085275.P13689628955370853305

`A052369(n+1)+A002808(n+1)`
-/

namespace A085275.P13689628955370853305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052369 (n + 1) + A002808 (n + 1)

end

end A085275.P13689628955370853305

noncomputable section

/-- A085275: a(n) = Sum of n-th composite number and its largest prime divisor.

Offset 1, canonical program `A085275.P13689628955370853305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085275 (n : ℕ) : ℤ :=
  A085275.P13689628955370853305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085378.P17879859378414705973

`A065091(n+2)-A023503(n+3)`
-/

namespace A085378.P17879859378414705973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A023503 (n + 3)

end

end A085378.P17879859378414705973

noncomputable section

/-- A085378: Difference between primes p and the largest prime divisor of p-1.

Offset 3, canonical program `A085378.P17879859378414705973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A085378 (n : ℕ) : ℤ :=
  A085378.P17879859378414705973.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A085378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085382.P1988162494212330199

`A065091(n+1)+A023503(n+2)`
-/

namespace A085382.P1988162494212330199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A023503 (n + 2)

end

end A085382.P1988162494212330199

noncomputable section

/-- A085382: Sum of p = prime(n) and largest prime divisor of p-1.

Offset 2, canonical program `A085382.P1988162494212330199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085382 (n : ℕ) : ℤ :=
  A085382.P1988162494212330199.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086132.P13935818927788794844

`eq[A006530(n+1), A086131(n+1)]+1`
-/

namespace A086132.P13935818927788794844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086132.P13935818927788794844

noncomputable section

/-- A086132: Numbers that have the same largest prime factor as their arithmetic derivative.

Offset 1, canonical program `A086132.P13935818927788794844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A086132 (n : ℕ) : ℤ :=
  (A086132.P13935818927788794844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A086132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087039.P3840147323634243185

`A006530(A322820(n+1))`
-/

namespace A087039.P3840147323634243185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A322820 (n + 1)).toNat

end

end A087039.P3840147323634243185

noncomputable section

/-- A087039: If n is prime then 1 else 2nd largest prime factor of n.

Offset 1, canonical program `A087039.P3840147323634243185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087039 (n : ℕ) : ℤ :=
  A087039.P3840147323634243185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087040.P1876591877341654896

`A006530(A002808(n+1)/A052369(n+1))`
-/

namespace A087040.P1876591877341654896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A002808 (n + 1) : ℚ) / (A052369 (n + 1) : ℚ))).toNat

end

end A087040.P1876591877341654896

noncomputable section

/-- A087040: 2nd largest prime factor of n-th composite number.

Offset 1, canonical program `A087040.P1876591877341654896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087040 (n : ℕ) : ℤ :=
  A087040.P1876591877341654896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087274.P8299303461635809008

`A061395(2*A087273(n+1))`
-/

namespace A087274.P8299303461635809008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A087273 (n + 1)).toNat

end

end A087274.P8299303461635809008

noncomputable section

/-- A087274: Prime index of the largest prime factor of 3*prime(n)+1.

Offset 1, canonical program `A087274.P8299303461635809008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3570 terms. -/
def A087274 (n : ℕ) : ℤ :=
  A087274.P8299303461635809008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3570 terms. -/
def A087274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087430.P17348898548535610470

`filter[A070087(n+1), A005171(#)]`
-/

namespace A087430.P17348898548535610470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A087430.P17348898548535610470

noncomputable section

/-- A087430: Nonprimes n with gpf(n) > gpf(n+1), where gpf=A006530 (greatest prime factor).

Offset 1, canonical program `A087430.P17348898548535610470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7732 terms. -/
def A087430 (n : ℕ) : ℤ :=
  A087430.P17348898548535610470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7732 terms. -/
def A087430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087653.P13584867209953477708

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A070777((n+1)*∏{p}[n+1, #])`
-/

namespace A087653.P13584867209953477708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A070777 ((n + 1) * (∏ p ∈ Nat.primeFactors (f3 n), p)) : ℚ)

end

end A087653.P13584867209953477708

noncomputable section

/-- A087653: Maximum difference between exponents in n-th cyclotomic polynomial.

Offset 1, canonical program `A087653.P13584867209953477708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A087653 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087653.P13584867209953477708.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A087653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087713.P13542409125439187033

`A076605(A000040(n+1))`
-/

namespace A087713.P13542409125439187033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A000040 (n + 1)).toNat

end

end A087713.P13542409125439187033

noncomputable section

/-- A087713: Greatest prime factor of the product of the neighbors of the n-th prime.

Offset 1, canonical program `A087713.P13542409125439187033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A087713 (n : ℕ) : ℤ :=
  A087713.P13542409125439187033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A087713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089503.P2916068136973119441

`A050166(n)*A181511(n+1)`
-/

namespace A089503.P2916068136973119441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 n * A181511 (n + 1)

end

end A089503.P2916068136973119441

noncomputable section

/-- A089503: Triangle of numbers used for basis change between certain falling factorials.

Offset 1, canonical program `A089503.P2916068136973119441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1481 terms. -/
def A089503 (n : ℕ) : ℤ :=
  A089503.P2916068136973119441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1481 terms. -/
def A089503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089993.P6955574486001025768

`p?[A076820(n+1)]`
-/

namespace A089993.P6955574486001025768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089993.P6955574486001025768

noncomputable section

/-- A089993: Penultimate prime divisor of numbers that are not powers of primes (A024619).

Offset 1, canonical program `A089993.P6955574486001025768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089993 (n : ℕ) : ℤ :=
  A089993.P6955574486001025768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094585.P14412693458980172051

`gcd(A000038(n), A143061(A014132(n+1)))`
-/

namespace A094585.P14412693458980172051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A143061 (A014132 (n + 1)).toNat)

end

end A094585.P14412693458980172051

noncomputable section

/-- A094585: Triangle T of all positive differences of distinct Fibonacci numbers; also, triangle of all sums of consecutive distinct Fibonacci numbers.

Offset 1, canonical program `A094585.P14412693458980172051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A094585 (n : ℕ) : ℤ :=
  (A094585.P14412693458980172051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A094585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100376.P793315732072041826

`A070087(∑[1-A087429(n+1)]+1)-(n+1)`
-/

namespace A100376.P793315732072041826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - (n + 1 : ℤ)

end

end A100376.P793315732072041826

noncomputable section

/-- A100376: a(n) is the largest number x such that for m=n to n+x-1, A006530(m) increases.

Offset 2, canonical program `A100376.P793315732072041826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100376 (n : ℕ) : ℤ :=
  A100376.P793315732072041826.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100387.P11346560181924153831

`A070089(∑[A087429(n+1)]+1)-(n+1)`
-/

namespace A100387.P11346560181924153831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - (n + 1 : ℤ)

end

end A100387.P11346560181924153831

noncomputable section

/-- A100387: a(n) is the largest number x such that for m=n to n+x-1, A006530(m) decreases.

Offset 2, canonical program `A100387.P11346560181924153831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A100387 (n : ℕ) : ℤ :=
  A100387.P11346560181924153831.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A100387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100447.P9647154493003985025

`2*A026119(n)`
-/

namespace A100447.P9647154493003985025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026119 n

end

end A100447.P9647154493003985025

noncomputable section

/-- A100447: Bisection of A000031.

Offset 0, canonical program `A100447.P9647154493003985025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A100447 (n : ℕ) : ℤ :=
  A100447.P9647154493003985025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A100447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101549.P6028307656505015155

`lt[A000267(n), A085392(n+1)]+1`
-/

namespace A101549.P6028307656505015155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A101549.P6028307656505015155

noncomputable section

/-- A101549: Composite lopsided numbers: composite numbers n such that the largest prime factor > 2 sqrt(n).

Offset 1, canonical program `A101549.P6028307656505015155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101549 (n : ℕ) : ℤ :=
  (A101549.P6028307656505015155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103667.P16193118299786317801

`record[A006530(2*A070087(n+1)+1)]`
-/

namespace A103667.P16193118299786317801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A070087 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103667.P16193118299786317801

noncomputable section

/-- A103667: Primes p such that the largest prime divisor of p-1 is greater than the largest prime divisor of p+1.

Offset 1, canonical program `A103667.P16193118299786317801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2101 terms. -/
def A103667 (n : ℕ) : ℤ :=
  A103667.P16193118299786317801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2101 terms. -/
def A103667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111089.P6834740455436443643

`A070777(n+1)+1`
-/

namespace A111089.P6834740455436443643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 1) + 1

end

end A111089.P6834740455436443643

noncomputable section

/-- A111089: Largest prime factor of 2n.

Offset 1, canonical program `A111089.P6834740455436443643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111089 (n : ℕ) : ℤ :=
  A111089.P6834740455436443643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115957.P5839293666489066599

`∩[A030230(n+1), A063763(n+1)]`
-/

namespace A115957.P5839293666489066599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115957.P5839293666489066599

noncomputable section

/-- A115957: Numbers k having exactly 3 distinct prime factors, the largest of which is greater than or equal to sqrt(k) (i.e., sqrt(k)-rough numbers with exactly 3 distinct prime factors).

Offset 1, canonical program `A115957.P5839293666489066599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3807 terms. -/
def A115957 (n : ℕ) : ℤ :=
  (A115957.P5839293666489066599.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3807 terms. -/
def A115957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117213.P329896806141795858

`A034386(A073482(n+1))`
-/

namespace A117213.P329896806141795858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A073482 (n + 1)).toNat

end

end A117213.P329896806141795858

noncomputable section

/-- A117213: a(n) = smallest term of sequence A002110 divisible by n-th squarefree positive integer.

Offset 1, canonical program `A117213.P329896806141795858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A117213 (n : ℕ) : ℤ :=
  A117213.P329896806141795858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A117213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121171.P6418051183238153702

`A079451(5*(n+1))`
-/

namespace A121171.P6418051183238153702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079451 (5 * (n + 1))

end

end A121171.P6418051183238153702

noncomputable section

/-- A121171: Largest prime divisor of Lucas(5*n), where Lucas(k) = A000032(k).

Offset 1, canonical program `A121171.P6418051183238153702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A121171 (n : ℕ) : ℤ :=
  A121171.P6418051183238153702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A121171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121359.P4106739247441934485

`p?[A093074(n+1)-C(2, n)]`
-/

namespace A121359.P4106739247441934485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1) - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121359.P4106739247441934485

noncomputable section

/-- A121359: Greatest prime factor of pyramidal number A000292(n).

Offset 2, canonical program `A121359.P4106739247441934485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A121359 (n : ℕ) : ℤ :=
  A121359.P4106739247441934485.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A121359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128215.P14850765395012742859

`a(n-1)+a(A070777(n))` with `a(0)=1, a(1)=1`
-/

namespace A128215.P14850765395012742859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A070777 n).toNat

end

end A128215.P14850765395012742859

noncomputable section

/-- A128215: a(1)=a(2)=1. a(n+1) = a(n) + a(largest prime dividing n).

Offset 1, canonical program `A128215.P14850765395012742859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A128215 (n : ℕ) : ℤ :=
  (A128215.P14850765395012742859.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A128215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132242.P2615322725815077245

`∩[A062506(n+1), A132239(n+1)]`
-/

namespace A132242.P2615322725815077245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132242.P2615322725815077245

noncomputable section

/-- A132242: Twin primes congruent to {17, 19} mod 30.

Offset 1, canonical program `A132242.P2615322725815077245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A132242 (n : ℕ) : ℤ :=
  (A132242.P2615322725815077245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A132242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133355.P11704449306175435800

`1/28*A107397(n)`
-/

namespace A133355.P11704449306175435800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 28 * (A107397 n : ℚ)

end

end A133355.P11704449306175435800

noncomputable section

/-- A133355: Dimensions of certain Lie algebra (see reference for precise definition).

Offset 0, canonical program `A133355.P11704449306175435800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133355.P11704449306175435800.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107397, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145853.P8816000319188844872

`eq[A006530(n+1), A087133(n+1)]+1`
-/

namespace A145853.P8816000319188844872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087133 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A145853.P8816000319188844872

noncomputable section

/-- A145853: Numbers m such that m is a multiple of all integers smaller than the largest prime dividing m.

Offset 1, canonical program `A145853.P8816000319188844872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A145853 (n : ℕ) : ℤ :=
  (A145853.P8816000319188844872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A145853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156244.P7860944318460919725

`A078649(2*(n+1))`
-/

namespace A156244.P7860944318460919725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (2 * (n + 1))

end

end A156244.P7860944318460919725

noncomputable section

/-- A156244: Bisection of A078649.

Offset 1, canonical program `A156244.P7860944318460919725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A156244 (n : ℕ) : ℤ :=
  A156244.P7860944318460919725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A156244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156245.P8092038638020984923

`A078649(2*n+1)`
-/

namespace A156245.P8092038638020984923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (2 * n + 1)

end

end A156245.P8092038638020984923

noncomputable section

/-- A156245: Bisection of A078649.

Offset 1, canonical program `A156245.P8092038638020984923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156245 (n : ℕ) : ℤ :=
  A156245.P8092038638020984923.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156245.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156256.P13404197385732133803

`A078649(n+2)-A078649(n+1)-2`
-/

namespace A156256.P13404197385732133803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 2) - A078649 (n + 1) - 2

end

end A156256.P13404197385732133803

noncomputable section

/-- A156256: Number of 1's separating successive 2's in the Kolakoski sequence A000002.

Offset 1, canonical program `A156256.P13404197385732133803`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156256 (n : ℕ) : ℤ :=
  A156256.P13404197385732133803.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156256.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156257.P13237227130742340145

`A000002(A078649(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156257.P13237227130742340145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078649 (n + 1) + 1).toNat

end

end A156257.P13237227130742340145

noncomputable section

/-- A156257: Digit of runs of length 2 in the Kolakoski sequence A000002: a(n) = A000002(A078649(n)).

Offset 1, canonical program `A156257.P13237227130742340145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156257 (n : ℕ) : ℤ :=
  A156257.P13237227130742340145.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156265.P11083405800392652458

`3*(n+1)-A078649(n+1)`
-/

namespace A156265.P11083405800392652458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A078649 (n + 1)

end

end A156265.P11083405800392652458

noncomputable section

/-- A156265: a(n)=3*n-A078649(n).

Offset 1, canonical program `A156265.P11083405800392652458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156265 (n : ℕ) : ℤ :=
  A156265.P11083405800392652458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156268.P6336594155207146855

`2*A054353(n+1)-A078649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156268.P6336594155207146855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054353 (n + 1) - A078649 (n + 1)

end

end A156268.P6336594155207146855

noncomputable section

/-- A156268: a(n)=2*A054353(n)-A078649(n).

Offset 1, canonical program `A156268.P6336594155207146855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156268 (n : ℕ) : ℤ :=
  A156268.P6336594155207146855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A156268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157677.P12491241583980738230

`p?[A157676(n+1)]`
-/

namespace A157677.P12491241583980738230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157677.P12491241583980738230

noncomputable section

/-- A157677: Primes p such that p + (product of digits of p) is also prime.

Offset 1, canonical program `A157677.P12491241583980738230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5908 terms. -/
def A157677 (n : ℕ) : ℤ :=
  A157677.P12491241583980738230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5908 terms. -/
def A157677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161003.P1160852448560439033

`A002808(n+1)/A052369(n+1)`
-/

namespace A161003.P1160852448560439033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A052369 (n + 1) : ℚ)

end

end A161003.P1160852448560439033

noncomputable section

/-- A161003: A list of the composite numbers divided by their largest prime factors.

Offset 1, canonical program `A161003.P1160852448560439033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A052369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161003.P1160852448560439033.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A052369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161942.P13275340347351870099

`A337194(n+1)-1`
-/

namespace A161942.P13275340347351870099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337194 (n + 1) - 1

end

end A161942.P13275340347351870099

noncomputable section

/-- A161942: Odd part of sum of divisors of n.

Offset 1, canonical program `A161942.P13275340347351870099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161942 (n : ℕ) : ℤ :=
  A161942.P13275340347351870099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162731.P11062943425591500254

`A014612(n+1)-A162361(n+1)`
-/

namespace A162731.P11062943425591500254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - A162361 (n + 1)

end

end A162731.P11062943425591500254

noncomputable section

/-- A162731: a(n) is the n-th triprime (A014612) minus its central prime factor.

Offset 1, canonical program `A162731.P11062943425591500254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, A162361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162731 (n : ℕ) : ℤ :=
  A162731.P11062943425591500254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, A162361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162786.P15387700522578825517

`A162526(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162786.P15387700522578825517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162526 (n + 1) : ℚ) / 6

end

end A162786.P15387700522578825517

noncomputable section

/-- A162786: a(n) = A162526(n)/6.

Offset 1, canonical program `A162786.P15387700522578825517`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162786 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162786.P15387700522578825517.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162526, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163162.P5497654367916491221

`lt[A071190(n+1), n+2]+1`
-/

namespace A163162.P5497654367916491221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071190 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A163162.P5497654367916491221

noncomputable section

/-- A163162: Numbers k such that sigma(k) is not prime.

Offset 1, canonical program `A163162.P5497654367916491221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9986 terms. -/
def A163162 (n : ℕ) : ℤ :=
  (A163162.P5497654367916491221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9986 terms. -/
def A163162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163173.P18075455342719059088

`A014612(n+1)/A162361(n+1)`
-/

namespace A163173.P18075455342719059088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014612 (n + 1) : ℚ) / (A162361 (n + 1) : ℚ)

end

end A163173.P18075455342719059088

noncomputable section

/-- A163173: The n-th product of three primes divided by its central prime factor.

Offset 1, canonical program `A163173.P18075455342719059088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, A162361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163173 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163173.P18075455342719059088.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, A162361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166949.P4680852760929439617

`val(A018252(n+2), A052369(n+1))`
-/

namespace A166949.P4680852760929439617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018252 (n + 2)).toNat (A052369 (n + 1)).toNat

end

end A166949.P4680852760929439617

noncomputable section

/-- A166949: The count of largest prime factors in n-th composite.

Offset 1, canonical program `A166949.P4680852760929439617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166949 (n : ℕ) : ℤ :=
  (A166949.P4680852760929439617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167911.P1051216520771783321

`A167707(n+2)-A167707(n+1)`
-/

namespace A167911.P1051216520771783321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 2) - A167707 (n + 1)

end

end A167911.P1051216520771783321

noncomputable section

/-- A167911: Differences between consecutive non-single (or nonisolated) numbers A167707.

Offset 1, canonical program `A167911.P1051216520771783321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167911 (n : ℕ) : ℤ :=
  A167911.P1051216520771783321.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167911.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168241.P2699333600308786319

`A005117(n+1)+A167707(n+1)`
-/

namespace A168241.P2699333600308786319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A167707 (n + 1)

end

end A168241.P2699333600308786319

noncomputable section

/-- A168241: n-th squarefree number plus n-th non-single or nonisolated number.

Offset 1, canonical program `A168241.P2699333600308786319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168241 (n : ℕ) : ℤ :=
  A168241.P2699333600308786319.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168241.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168496.P10279288104061310244

`1+A167707(n+1)`
-/

namespace A168496.P10279288104061310244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A167707 (n + 1)

end

end A168496.P10279288104061310244

noncomputable section

/-- A168496: The positions of non-single or nonisolated numbers in A001477.

Offset 1, canonical program `A168496.P10279288104061310244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168496 (n : ℕ) : ℤ :=
  A168496.P10279288104061310244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168496.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A170829.P15237391015942110333

`A263931(n)/A005451(n+1)`
-/

namespace A170829.P15237391015942110333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263931 n : ℚ) / (A005451 (n + 1) : ℚ)

end

end A170829.P15237391015942110333

noncomputable section

/-- A170829: a(n) = gcd(Catalan(n), n!).

Offset 0, canonical program `A170829.P15237391015942110333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A170829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A170829.P15237391015942110333.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. -/
def A170829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171384.P1462568005675599005

`A140475(n+1)-A167707(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171384.P1462568005675599005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1) - A167707 (n + 1)

end

end A171384.P1462568005675599005

noncomputable section

/-- A171384: a(n) = A140475(n) - A167707(n).

Offset 1, canonical program `A171384.P1462568005675599005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140475, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171384 (n : ℕ) : ℤ :=
  A171384.P1462568005675599005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140475, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171384.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172019.P16950728949524570251

`∪[A033949(n+1), A071821(n+1)]`
-/

namespace A172019.P16950728949524570251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172019.P16950728949524570251

noncomputable section

/-- A172019: Numbers k such that 4 divides phi(k) (i.e., A000010(k)).

Offset 1, canonical program `A172019.P16950728949524570251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172019 (n : ℕ) : ℤ :=
  (A172019.P16950728949524570251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173626.P10775848943177706528

`p?[A048098(n+1)+1]`
-/

namespace A173626.P10775848943177706528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A173626.P10775848943177706528

noncomputable section

/-- A173626: Primes p such that p-1 has no prime factors larger than sqrt(p).

Offset 1, canonical program `A173626.P10775848943177706528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. -/
def A173626 (n : ℕ) : ℤ :=
  A173626.P10775848943177706528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1571 terms. -/
def A173626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176257.P13315151628699199712

`filter[A071821(n+1), A373979(#)]`
-/

namespace A176257.P13315151628699199712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A176257.P13315151628699199712

noncomputable section

/-- A176257: Numbers of the form 4k-1 with greatest prime divisor of the form 4m+1.

Offset 1, canonical program `A176257.P13315151628699199712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2062 terms. -/
def A176257 (n : ℕ) : ℤ :=
  A176257.P13315151628699199712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2062 terms. -/
def A176257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176258.P9328120445977838014

`filter[A071822(n+1), A373978(#)]`
-/

namespace A176258.P9328120445977838014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A176258.P9328120445977838014

noncomputable section

/-- A176258: Numbers of the form 4k+1 with greatest prime divisor of the form 4m-1.

Offset 1, canonical program `A176258.P9328120445977838014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2060 terms. -/
def A176258 (n : ℕ) : ℤ :=
  A176258.P9328120445977838014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2060 terms. -/
def A176258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179620.P6976213543873507641

`A166460(n+2)+1-Δ[A072668(n+1)]`
-/

namespace A179620.P6976213543873507641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (n + 2) + (1 - (f1 (n + 1) - f1 n))

end

end A179620.P6976213543873507641

noncomputable section

/-- A179620: a(n) = largest k such that A002808(n+1) = A002808(n) + (A002808(n) mod k), or 0 if no such k exists.

Offset 1, canonical program `A179620.P6976213543873507641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179620 (n : ℕ) : ℤ :=
  A179620.P6976213543873507641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A179620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190118.P8393779213979660982

`∑[A083346(n+1)]`
-/

namespace A190118.P8393779213979660982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190118.P8393779213979660982

noncomputable section

/-- A190118: a(n) = Sum_{k=1..n} k/gcd(k,k'), where n' is arithmetic derivative of n.

Offset 1, canonical program `A190118.P8393779213979660982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190118 (n : ℕ) : ℤ :=
  A190118.P8393779213979660982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190120.P8298546026413177048

`∑[A189036(n+1)]`
-/

namespace A190120.P8298546026413177048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190120.P8298546026413177048

noncomputable section

/-- A190120: a(n) = Sum_{k=1..n} lcm(k,k')/gcd(k,k'), where n' is arithmetic derivative of n.

Offset 1, canonical program `A190120.P8298546026413177048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190120 (n : ℕ) : ℤ :=
  A190120.P8298546026413177048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190122.P18286284179449447991

`∑[(n+1)*A189036(n+1)]`
-/

namespace A190122.P18286284179449447991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190122.P18286284179449447991

noncomputable section

/-- A190122: a(n) = Sum_{k=1..n} k*lcm(k,k')/gcd(k,k'), where k' is arithmetic derivative of k.

Offset 1, canonical program `A190122.P18286284179449447991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190122 (n : ℕ) : ℤ :=
  A190122.P18286284179449447991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190136.P17099948517494276302

`A006530(A076605(n+2)*A076605(n+3))`
-/

namespace A190136.P17099948517494276302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076605 (n + 2) * A076605 (n + 3)).toNat

end

end A190136.P17099948517494276302

noncomputable section

/-- A190136: Largest prime factor of n*(n+1)*(n+2)*(n+3).

Offset 1, canonical program `A190136.P17099948517494276302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A190136 (n : ℕ) : ℤ :=
  A190136.P17099948517494276302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A190136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190596.P5907297179524244657

`A190597(A037474(n))`
-/

namespace A190596.P5907297179524244657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 (A037474 n).toNat

end

end A190596.P5907297179524244657

noncomputable section

/-- A190596: Maximal digit in base-7 expansion of n.

Offset 0, canonical program `A190596.P5907297179524244657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A190596 (n : ℕ) : ℤ :=
  A190596.P5907297179524244657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A190596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206825.P6734815729562977131

`A000190(A057521(n+2))-1`
-/

namespace A206825.P6734815729562977131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A057521 (n + 2)).toNat - 1

end

end A206825.P6734815729562977131

noncomputable section

/-- A206825: Number of solutions (n,k) of k^4=n^4 (mod n), where 1<=k

Offset 2, canonical program `A206825.P6734815729562977131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206825 (n : ℕ) : ℤ :=
  A206825.P6734815729562977131.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214627.P2673755501888377610

`record[A141559(A133310(n))]`
-/

namespace A214627.P2673755501888377610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141559 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214627.P2673755501888377610

noncomputable section

/-- A214627: Primes in A161671.

Offset 1, canonical program `A214627.P2673755501888377610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6429 terms. -/
def A214627 (n : ℕ) : ℤ :=
  A214627.P2673755501888377610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6429 terms. -/
def A214627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216650.P13002904075840391741

`abs(Δ[A070087(abs(1-n)+1)])`
-/

namespace A216650.P13002904075840391741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A216650.P13002904075840391741

noncomputable section

/-- A216650: Maximum length of each subsequence whose elements are the greatest prime divisors of the integers 2, 3, 4, ... in increasing order.

Offset 1, canonical program `A216650.P13002904075840391741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216650 (n : ℕ) : ℤ :=
  A216650.P13002904075840391741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220220.P36485528534191165

`record[gcd(A141559(n+1), A141559(n+2))]`
-/

namespace A220220.P36485528534191165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141559 (n + 1)) (A141559 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220220.P36485528534191165

noncomputable section

/-- A220220: Primes p of the form p = A161671(k) = A161671(k+1).

Offset 1, canonical program `A220220.P36485528534191165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A220220 (n : ℕ) : ℤ :=
  (A220220.P36485528534191165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A220220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228957.P5188532976308301560

`lt[A006530(n+1)², A217434(n+1)]+1`
-/

namespace A228957.P5188532976308301560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A228957.P5188532976308301560

noncomputable section

/-- A228957: Numbers n such that n/rad(n) is greater than the greatest prime dividing n.

Offset 1, canonical program `A228957.P5188532976308301560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A228957 (n : ℕ) : ℤ :=
  (A228957.P5188532976308301560.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A228957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234950.P739346460351679352

`A088617(n)/A001263(n+1)*A120986(n)`
-/

namespace A234950.P739346460351679352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088617 n : ℚ) / (A001263 (n + 1) : ℚ) * (A120986 n : ℚ)

end

end A234950.P739346460351679352

noncomputable section

/-- A234950: Borel's triangle read by rows: T(n,k) = Sum_{s=k..n} binomial(s,k)*C(n,s), where C(n,s) is an entry in Catalan's triangle A009766.

Offset 0, canonical program `A234950.P739346460351679352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6836 terms. -/
def A234950 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A234950.P739346460351679352.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6836 terms. -/
def A234950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235622.P15548937306164557030

`p?[A037474(A000040(n+1))]`
-/

namespace A235622.P15548937306164557030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235622.P15548937306164557030

noncomputable section

/-- A235622: Primes whose base-8 representation also is the base-7 representation of a prime.

Offset 1, canonical program `A235622.P15548937306164557030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A235622 (n : ℕ) : ℤ :=
  A235622.P15548937306164557030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A235622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235630.P485179838393159040

`p?[n*A032741(A037474(n))]`
-/

namespace A235630.P485179838393159040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A037474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235630.P485179838393159040

noncomputable section

/-- A235630: Primes whose base-7 representation is also the base-8 representation of a prime.

Offset 1, canonical program `A235630.P485179838393159040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A235630 (n : ℕ) : ℤ :=
  A235630.P485179838393159040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A235630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241572.P128755735048460708

`A153144(n+1)+1`
-/

namespace A241572.P128755735048460708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153144 (n + 1) + 1

end

end A241572.P128755735048460708

noncomputable section

/-- A241572: Numbers n such that 2*n+17 is not a prime.

Offset 1, canonical program `A241572.P128755735048460708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241572 (n : ℕ) : ℤ :=
  A241572.P128755735048460708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243348.P9467034150244978717

`A243349(n+1)-A243289(n+1)`
-/

namespace A243348.P9467034150244978717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243349 (n + 1) - A243289 (n + 1)

end

end A243348.P9467034150244978717

noncomputable section

/-- A243348: Difference between the n-th squarefree number and n: a(n) = A005117(n) - n.

Offset 1, canonical program `A243348.P9467034150244978717`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243289, A243349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243348 (n : ℕ) : ℤ :=
  A243348.P9467034150244978717.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243289, A243349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243348.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252489.P16159693838999936675

`A061395(A087429(n+1)+1+n)`
-/

namespace A252489.P16159693838999936675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A087429 (n + 1) + 1 + (n : ℤ)).toNat

end

end A252489.P16159693838999936675

noncomputable section

/-- A252489: Index of the largest prime which divides n*(n+1).

Offset 1, canonical program `A252489.P16159693838999936675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252489 (n : ℕ) : ℤ :=
  A252489.P16159693838999936675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253254.P2920591398926409598

`A006530(A006530(n+2)*A075677(3*n+4))`
-/

namespace A253254.P2920591398926409598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 2) * A075677 (3 * n + 4)).toNat

end

end A253254.P2920591398926409598

noncomputable section

/-- A253254: Largest prime factor of the n-th 11-gonal number.

Offset 2, canonical program `A253254.P2920591398926409598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A253254 (n : ℕ) : ℤ :=
  A253254.P2920591398926409598.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A253254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258646.P3882891341193768385

`A258645(A003415(n))`
-/

namespace A258646.P3882891341193768385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258645 (A003415 n).toNat

end

end A258646.P3882891341193768385

noncomputable section

/-- A258646: Sixth arithmetic derivative of n.

Offset 0, canonical program `A258646.P3882891341193768385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258646 (n : ℕ) : ℤ :=
  A258646.P3882891341193768385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A258646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260360.P4291605050479398527

`abs(A023503(n+3)-A023503(n+2))`
-/

namespace A260360.P4291605050479398527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023503 (n + 3) - A023503 (n + 2)|

end

end A260360.P4291605050479398527

noncomputable section

/-- A260360: The absolute difference between the largest prime factors of prime(n)-1 and prime(n+1)-1.

Offset 2, canonical program `A260360.P4291605050479398527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260360 (n : ℕ) : ℤ :=
  A260360.P4291605050479398527.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262829.P5430725010381186726

`p?[(n+1)*A085392(A065361(n+1))]`
-/

namespace A262829.P5430725010381186726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085392 (A065361 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262829.P5430725010381186726

noncomputable section

/-- A262829: (3,2)-primes (defined in Comments).

Offset 1, canonical program `A262829.P5430725010381186726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A262829 (n : ℕ) : ℤ :=
  A262829.P5430725010381186726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A262829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265693.P18424975977365355978

`∩[A000469(n+1), A063763(n+1)]`
-/

namespace A265693.P18424975977365355978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265693.P18424975977365355978

noncomputable section

/-- A265693: Squarefree composites that are not sqrt(n)-smooth: some prime factor of n is > sqrt(n).

Offset 1, canonical program `A265693.P18424975977365355978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6709 terms. -/
def A265693 (n : ℕ) : ℤ :=
  (A265693.P18424975977365355978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6709 terms. -/
def A265693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269304.P14712291761484115228

`2*n+3-A171462(n+1)`
-/

namespace A269304.P14712291761484115228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - A171462 (n + 1))

end

end A269304.P14712291761484115228

noncomputable section

/-- A269304: a(n) = n + n/gpf(n) + 1, where gpf(n) is the greatest prime factor of n or 1 if n = 1.

Offset 1, canonical program `A269304.P14712291761484115228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269304 (n : ℕ) : ℤ :=
  A269304.P14712291761484115228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270808.P8100728408651604526

`Δ[A270807(n+1)/2]`
-/

namespace A270808.P8100728408651604526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270807 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270808.P8100728408651604526

noncomputable section

/-- A270808: First differences of A270807, divided by 2.

Offset 0, canonical program `A270808.P8100728408651604526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270808 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270808.P8100728408651604526.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A270808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273798.P614925005457213150

`filter[A063539(n+2), A340371(#)]`
-/

namespace A273798.P614925005457213150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A273798.P614925005457213150

noncomputable section

/-- A273798: Numbers of the form 2^m*p where p is prime and p < 2^m.

Offset 1, canonical program `A273798.P614925005457213150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A273798 (n : ℕ) : ℤ :=
  A273798.P614925005457213150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A273798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275917.P15138052319720947312

`2*A275918(n)-A275919(n)`
-/

namespace A275917.P15138052319720947312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275918 n - A275919 n

end

end A275917.P15138052319720947312

noncomputable section

/-- A275917: a(n) = A273059(4n+1).

Offset 0, canonical program `A275917.P15138052319720947312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275917 (n : ℕ) : ℤ :=
  A275917.P15138052319720947312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. -/
def A275917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289182.P7996856159968412338

`filter[n+1, A106138(#)]`
-/

namespace A289182.P7996856159968412338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106138 (f1 j) = 1) n)

end

end A289182.P7996856159968412338

noncomputable section

/-- A289182: Positions of odd semiprimes in A001358.

Offset 1, canonical program `A289182.P7996856159968412338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7691 terms. -/
def A289182 (n : ℕ) : ℤ :=
  (A289182.P7996856159968412338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7691 terms. -/
def A289182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295078.P5985617204651122140

`filter[A071834(n+1), A354034(#)]`
-/

namespace A295078.P5985617204651122140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A295078.P5985617204651122140

noncomputable section

/-- A295078: Numbers n > 1 such that n and sigma(n) have the same smallest and simultaneously largest prime factors.

Offset 1, canonical program `A295078.P5985617204651122140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A295078 (n : ℕ) : ℤ :=
  A295078.P5985617204651122140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A295078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295102.P4057559906805914940

`∩[A048098(n+1), A365829(n+1)]`
-/

namespace A295102.P4057559906805914940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295102.P4057559906805914940

noncomputable section

/-- A295102: Squarefree numbers n that are sqrt(n)-smooth: if prime p|n then p^2 <= n.

Offset 1, canonical program `A295102.P4057559906805914940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A295102 (n : ℕ) : ℤ :=
  (A295102.P4057559906805914940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. -/
def A295102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299766.P14007056113270827292

`or(1, A070777(n+1))`
-/

namespace A299766.P14007056113270827292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A070777 (n + 1))

end

end A299766.P14007056113270827292

noncomputable section

/-- A299766: Greatest odd noncomposite divisor of n.

Offset 1, canonical program `A299766.P14007056113270827292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299766 (n : ℕ) : ℤ :=
  A299766.P14007056113270827292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306300.P9618896820551810349

`A083346(A003658(n+1)%A017224(n))`
-/

namespace A306300.P9618896820551810349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (Int.tmod (A003658 (n + 1)) (A017224 n)).toNat

end

end A306300.P9618896820551810349

noncomputable section

/-- A306300: Discriminant D of real quadratic number field Q(sqrt(D)) associated with fundamental discriminant d = A003658(n).

Offset 1, canonical program `A306300.P9618896820551810349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306300 (n : ℕ) : ℤ :=
  A306300.P9618896820551810349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309243.P2615360336711731693

`lcm(n+1, a(A171462(n+1)-1))` with `a(0)=1`
-/

namespace A309243.P2615360336711731693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n + 1) (a (A171462 (n + 1) - 1).toNat)

end

end A309243.P2615360336711731693

noncomputable section

/-- A309243: Completely multiplicative with a(p) = p * a(p-1) for any prime number p.

Offset 1, canonical program `A309243.P2615360336711731693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309243 (n : ℕ) : ℤ :=
  (A309243.P2615360336711731693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311174.P5997335018186226775

`A065502(A313802(n))-A312207(n)`
-/

namespace A311174.P5997335018186226775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A313802 n).toNat - A312207 n

end

end A311174.P5997335018186226775

noncomputable section

/-- A311174: Coordination sequence Gal.5.62.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311174.P5997335018186226775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A311174 (n : ℕ) : ℤ :=
  A311174.P5997335018186226775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A311174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311523.P10353843342915218177

`abs(A008592(n)-A315743(n))`
-/

namespace A311523.P10353843342915218177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315743 n|

end

end A311523.P10353843342915218177

noncomputable section

/-- A311523: Coordination sequence Gal.6.119.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311523.P10353843342915218177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A311523 (n : ℕ) : ℤ :=
  A311523.P10353843342915218177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. -/
def A311523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314095.P10319490928376575526

`A099479(A315743(n)+A004273(n))`
-/

namespace A314095.P10319490928376575526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A315743 n + A004273 n).toNat

end

end A314095.P10319490928376575526

noncomputable section

/-- A314095: Coordination sequence Gal.6.204.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314095.P10319490928376575526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A314095 (n : ℕ) : ℤ :=
  A314095.P10319490928376575526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A314095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316346.P12886429158929260810

`(n+2)²/A335024(n+1)`
-/

namespace A316346.P12886429158929260810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℚ) / (A335024 (n + 1) : ℚ)

end

end A316346.P12886429158929260810

noncomputable section

/-- A316346: a(n) = A316297(n+1)/A316297(n).

Offset 1, canonical program `A316346.P12886429158929260810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316346.P12886429158929260810.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319673.P333362481988995367

`filter[A059500(n+1), A283265(#)]`
-/

namespace A319673.P333362481988995367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A319673.P333362481988995367

noncomputable section

/-- A319673: Primes that are neither a twin prime nor a Sophie Germain or safe prime.

Offset 1, canonical program `A319673.P333362481988995367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3878 terms. -/
def A319673 (n : ℕ) : ℤ :=
  A319673.P333362481988995367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3878 terms. -/
def A319673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326136.P18410941739685931692

`A000203(n+1)-A326135(n+1)`
-/

namespace A326136.P18410941739685931692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A326135 (n + 1)

end

end A326136.P18410941739685931692

noncomputable section

/-- A326136: a(n) = sigma(n) - sigma(A028234(n)), where sigma is the sum of divisors of n, and A028234 gives n without any occurrence of its smallest prime factor.

Offset 1, canonical program `A326136.P18410941739685931692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326136 (n : ℕ) : ℤ :=
  A326136.P18410941739685931692.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326136.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A329615.P10117181717344935644

`A008480(n+1)%A178815(n+1)*A071178(n+1)`
-/

namespace A329615.P10117181717344935644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (n + 1)) (A178815 (n + 1)) * A071178 (n + 1)

end

end A329615.P10117181717344935644

noncomputable section

/-- A329615: Bitwise-AND of exponents of prime factors of A108951(n), where A108951 is fully multiplicative with a(prime(i)) = prime(i)# = Product_{i=1..i} A000040(i).

Offset 1, canonical program `A329615.P10117181717344935644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A329615 (n : ℕ) : ℤ :=
  A329615.P10117181717344935644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A329615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332994.P10692135427590532380

`a(n-A171462(n+1))+1+n` with `a(0)=1`
-/

namespace A332994.P10692135427590532380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A171462 (n + 1)).toNat + 1 + n

end

end A332994.P10692135427590532380

noncomputable section

/-- A332994: a(1) = 1, for n > 1, a(n) = n + a(A052126(n)).

Offset 1, canonical program `A332994.P10692135427590532380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332994 (n : ℕ) : ℤ :=
  (A332994.P10692135427590532380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333794.P10523075542866293998

`a(A171462(n+1)-1)+1+n` with `a(0)=1`
-/

namespace A333794.P10523075542866293998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A171462 (n + 1) - 1).toNat + 1 + n

end

end A333794.P10523075542866293998

noncomputable section

/-- A333794: a(1) = 1, for n > 1, a(n) = n + a(n-A052126(n)).

Offset 1, canonical program `A333794.P10523075542866293998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333794 (n : ℕ) : ℤ :=
  (A333794.P10523075542866293998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333844.P7651636185447083206

`A333843(A000190(n+1))`
-/

namespace A333844.P7651636185447083206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333843 (A000190 (n + 1)).toNat

end

end A333844.P7651636185447083206

noncomputable section

/-- A333844: G.f.: Sum_{k>=1} k * x^(k^4) / (1 - x^(k^4)).

Offset 1, canonical program `A333844.P7651636185447083206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333844 (n : ℕ) : ℤ :=
  A333844.P7651636185447083206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336476.P15397656413633507800

`gcd(A326135(2*(n+1)), A349212(A000265(n+1)))`
-/

namespace A336476.P15397656413633507800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326135 (2 * (n + 1))) (A349212 (A000265 (n + 1)).toNat)

end

end A336476.P15397656413633507800

noncomputable section

/-- A336476: a(n) = gcd(A000593(n), A336475(n)).

Offset 1, canonical program `A336476.P15397656413633507800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336476 (n : ℕ) : ℤ :=
  (A336476.P15397656413633507800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337239.P12333385148104847782

`comp[A037474(n)]%A033212(2*(n+1))`
-/

namespace A337239.P12333385148104847782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A033212 (2 * (n + 1)))

end

end A337239.P12333385148104847782

noncomputable section

/-- A337239: Numbers having at least one 7 in their representation in base 8.

Offset 1, canonical program `A337239.P12333385148104847782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337239 (n : ℕ) : ℤ :=
  A337239.P12333385148104847782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A337239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339464.P8764408315860215884

`(A065091(n+1)-1)/A023503(n+2)`
-/

namespace A339464.P8764408315860215884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - 1 : ℚ) / (A023503 (n + 2) : ℚ)

end

end A339464.P8764408315860215884

noncomputable section

/-- A339464: a(n) = (prime(n)-1) / gpf(prime(n)-1) where gpf(m) is the greatest prime factor of m, A006530.

Offset 2, canonical program `A339464.P8764408315860215884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339464 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339464.P8764408315860215884.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339497.P16863875644910275612

`lt[n, A000190(n+1)²]+1`
-/

namespace A339497.P16863875644910275612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A339497.P16863875644910275612

noncomputable section

/-- A339497: Numbers k such that (k*i)^(1/4) is an integer for some i in 1 <= i <= k.

Offset 1, canonical program `A339497.P16863875644910275612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A339497 (n : ℕ) : ℤ :=
  (A339497.P16863875644910275612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A339497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341643.P5639027929632921624

`A006530(A064052(n+1))`
-/

namespace A341643.P5639027929632921624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064052 (n + 1)).toNat

end

end A341643.P5639027929632921624

noncomputable section

/-- A341643: The unique strictly superior prime divisor of each number that has one.

Offset 1, canonical program `A341643.P5639027929632921624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341643 (n : ℕ) : ℤ :=
  A341643.P5639027929632921624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341676.P8742406814871965653

`A006530(A063538(n+1))`
-/

namespace A341676.P8742406814871965653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A063538 (n + 1)).toNat

end

end A341676.P8742406814871965653

noncomputable section

/-- A341676: The unique superior prime divisor of each number that has one.

Offset 1, canonical program `A341676.P8742406814871965653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341676 (n : ℕ) : ℤ :=
  A341676.P8742406814871965653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341676.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A342081.P11150505954464620574

`∪[A067133(n+1), A085681(n+1)]`
-/

namespace A342081.P11150505954464620574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342081.P11150505954464620574

noncomputable section

/-- A342081: Numbers without an inferior odd divisor > 1.

Offset 1, canonical program `A342081.P11150505954464620574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342081 (n : ℕ) : ℤ :=
  (A342081.P11150505954464620574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342256.P11382523242793014882

`lt[0, A253236(n+1)]+1`
-/

namespace A342256.P11382523242793014882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342256.P11382523242793014882

noncomputable section

/-- A342256: Numbers k such that gcd(k, Phi_k(a)) > 1 for some a, where Phi_k is the k-th cyclotomic polynomial.

Offset 1, canonical program `A342256.P11382523242793014882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3025 terms. -/
def A342256 (n : ℕ) : ℤ :=
  (A342256.P11382523242793014882.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3025 terms. -/
def A342256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342257.P6467292194329378218

`∏{d}[A253236(n+1), #]`
-/

namespace A342257.P6467292194329378218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A342257.P6467292194329378218

noncomputable section

/-- A342257: Period of the sequence {gcd(n, Phi_n(a)): a in Z}, where Phi_n is the n-th cyclotomic polynomial.

Offset 1, canonical program `A342257.P6467292194329378218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342257 (n : ℕ) : ℤ :=
  (A342257.P6467292194329378218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345951.P4678603625690562333

`char[lt[0, A345940(n+1)]]`
-/

namespace A345951.P4678603625690562333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345940 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A345951.P4678603625690562333

noncomputable section

/-- A345951: a(n) = 1 if A002034(n), the smallest positive integer k such that n divides k!, is larger than A006530(n), the greatest prime factor of n, otherwise 0.

Offset 1, canonical program `A345951.P4678603625690562333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345951 (n : ℕ) : ℤ :=
  (A345951.P4678603625690562333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346152.P18238004036830526411

`A217581(((n+1)/A217581(n+1))²)`
-/

namespace A346152.P18238004036830526411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (A217581 (n + 1) : ℚ)) ^ 2)).toNat

end

end A346152.P18238004036830526411

noncomputable section

/-- A346152: a(n) is the least prime divisor p_j of n such that if n = Product_{i=1..k} p_i^e_i and p_1 < p_2 < ... < p_k, then Product_{i=1..j-1} p_i^e_i <= sqrt(n) < Product_{i=j..k} p_i^e_i. a(1) = 1.

Offset 1, canonical program `A346152.P18238004036830526411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A346152 (n : ℕ) : ℤ :=
  A346152.P18238004036830526411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A346152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346416.P9477400210160570327

`A055377(∩[A001043(n+1), A249666(n+1)])`
-/

namespace A346416.P9477400210160570327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249666 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A346416.P9477400210160570327

noncomputable section

/-- A346416: Primes p such that the greatest perimeter of a triangle with prime sides including p and the next prime is prime.

Offset 1, canonical program `A346416.P9477400210160570327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A346416 (n : ℕ) : ℤ :=
  A346416.P9477400210160570327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A346416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347892.P11518152403954504806

`filter[A008591(n+1), A353559(#)]`
-/

namespace A347892.P11518152403954504806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A347892.P11518152403954504806

noncomputable section

/-- A347892: Nonsquarefree numbers k such that A003968(k) is a multiple of k, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A347892.P11518152403954504806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A347892 (n : ℕ) : ℤ :=
  A347892.P11518152403954504806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. -/
def A347892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348044.P16442243223472547548

`A000079(A071178(n+1))`
-/

namespace A348044.P16442243223472547548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A071178 (n + 1)).toNat

end

end A348044.P16442243223472547548

noncomputable section

/-- A348044: The nearest common ancestor of n and n^2 in the Doudna tree (A005940).

Offset 1, canonical program `A348044.P16442243223472547548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348044 (n : ℕ) : ℤ :=
  A348044.P16442243223472547548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348961.P8503093187257780372

`eq[1, A004736(A000190(n+1)²)]+1`
-/

namespace A348961.P8503093187257780372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000190 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348961.P8503093187257780372

noncomputable section

/-- A348961: Exponential harmonic (or e-harmonic) numbers of type 1: numbers k such that esigma(k) | k * d_e(k), where d_e(k) is the number of exponential divisors of k (A049419) and esigma(k) is their sum (A051377).

Offset 1, canonical program `A348961.P8503093187257780372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A348961 (n : ℕ) : ℤ :=
  (A348961.P8503093187257780372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. -/
def A348961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354561.P7371414778819772247

`lt[2, A071178(n+1)]+1`
-/

namespace A354561.P7371414778819772247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354561.P7371414778819772247

noncomputable section

/-- A354561: Numbers divisible by the cube of their largest prime factor.

Offset 1, canonical program `A354561.P7371414778819772247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A354561 (n : ℕ) : ℤ :=
  (A354561.P7371414778819772247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A354561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354874.P4484004687282161275

`A341994(n)+A010051(A028310(n))`
-/

namespace A354874.P4484004687282161275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n + A010051 (A028310 n).toNat

end

end A354874.P4484004687282161275

noncomputable section

/-- A354874: a(n) = 1 if A003415(n) is squarefree, otherwise 0.

Offset 0, canonical program `A354874.P4484004687282161275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354874 (n : ℕ) : ℤ :=
  A354874.P4484004687282161275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355433.P16718409258377503773

`∩[A048098(n+1)-1, A048098(n+1)]`
-/

namespace A355433.P16718409258377503773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355433.P16718409258377503773

noncomputable section

/-- A355433: Numbers k such that k is sqrt(k)-smooth and k+1 is sqrt(k+1)-smooth.

Offset 1, canonical program `A355433.P16718409258377503773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. -/
def A355433 (n : ℕ) : ℤ :=
  (A355433.P16718409258377503773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2103 terms. -/
def A355433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358557.P6214688678443015509

`comp[A098464(n+1)-1]+1`
-/

namespace A358557.P6214688678443015509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098464 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358557.P6214688678443015509

noncomputable section

/-- A358557: Numbers k for which denominator(H(k)) < LCM(1..k), where harmonic numbers H(k) = Sum_{i=1..k} 1/i = r(k)/q(k).

Offset 1, canonical program `A358557.P6214688678443015509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358557 (n : ℕ) : ℤ :=
  (A358557.P6214688678443015509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362611.P1337459329844090610

`A071178(∏{e}[n+1, A000040(#)])`
-/

namespace A362611.P1337459329844090610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A362611.P1337459329844090610

noncomputable section

/-- A362611: Number of modes in the prime factorization of n.

Offset 1, canonical program `A362611.P1337459329844090610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362611 (n : ℕ) : ℤ :=
  A362611.P1337459329844090610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362620.P8952144317770323777

`lt[A071178(n+1), A051903(n+1)]+1`
-/

namespace A362620.P8952144317770323777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A362620.P8952144317770323777

noncomputable section

/-- A362620: Numbers whose greatest prime factor is not a mode, meaning it appears fewer times than some other.

Offset 1, canonical program `A362620.P8952144317770323777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3615 terms. -/
def A362620 (n : ℕ) : ℤ :=
  (A362620.P8952144317770323777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3615 terms. -/
def A362620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365683.P17416909633654039468

`A000190((n+1)*A053166(n+1))`
-/

namespace A365683.P17416909633654039468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 ((n + 1 : ℤ) * A053166 (n + 1)).toNat

end

end A365683.P17416909633654039468

noncomputable section

/-- A365683: The largest exponentially squarefree divisor of n.

Offset 1, canonical program `A365683.P17416909633654039468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A365683 (n : ℕ) : ℤ :=
  A365683.P17416909633654039468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A365683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366510.P4604043811337782235

`A217581(A048671(n+1))`
-/

namespace A366510.P4604043811337782235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A048671 (n + 1)).toNat

end

end A366510.P4604043811337782235

noncomputable section

/-- A366510: Largest prime divisor of n which is < sqrt(n), 1 if n is prime, square of prime or 1.

Offset 1, canonical program `A366510.P4604043811337782235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366510 (n : ℕ) : ℤ :=
  A366510.P4604043811337782235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366882.P5906932285816798416

`∩[A005117(n+1), A080259(n+1)]`
-/

namespace A366882.P5906932285816798416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366882.P5906932285816798416

noncomputable section

/-- A366882: Squarefree numbers that are not primorials.

Offset 1, canonical program `A366882.P5906932285816798416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6167 terms. -/
def A366882 (n : ℕ) : ℤ :=
  (A366882.P5906932285816798416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6167 terms. -/
def A366882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368780.P14908881115909762671

`filter[A195212(n+1), A212793(#)]`
-/

namespace A368780.P14908881115909762671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A368780.P14908881115909762671

noncomputable section

/-- A368780: Cubefree numbers divisible by the square of their largest prime factor.

Offset 1, canonical program `A368780.P14908881115909762671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. -/
def A368780 (n : ℕ) : ℤ :=
  A368780.P14908881115909762671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. -/
def A368780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370119.P13163184009623574713

`lt[0, A370118(n)]`
-/

namespace A370119.P13163184009623574713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370119.P13163184009623574713

noncomputable section

/-- A370119: Numbers whose arithmetic derivative is a multiple of 9.

Offset 1, canonical program `A370119.P13163184009623574713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119 (n : ℕ) : ℤ :=
  (A370119.P13163184009623574713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A370119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373474.P9005453665869377393

`char[A369659(n+1)-1]`
-/

namespace A373474.P9005453665869377393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373474.P9005453665869377393

noncomputable section

/-- A373474: a(n) = 1 if A001414(n) and A083345(n) are both multiples of 3, otherwise 0, where A001414 is fully additive with a(p) = p, and A083345 is the numerator of the fully additive function with a(p) = 1/p.

Offset 1, canonical program `A373474.P9005453665869377393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373474 (n : ℕ) : ℤ :=
  (A373474.P9005453665869377393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375136.P12794075087779853218

`∑{e}[A217434(n+1), #]`
-/

namespace A375136.P12794075087779853218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A375136.P12794075087779853218

noncomputable section

/-- A375136: Number of maximal strictly increasing runs in the weakly increasing prime factors of n.

Offset 1, canonical program `A375136.P12794075087779853218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375136 (n : ℕ) : ℤ :=
  (A375136.P12794075087779853218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379005.P12563333980607204090

`A071520(A355582(n+1))`
-/

namespace A379005.P12563333980607204090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071520 (A355582 (n + 1)).toNat

end

end A379005.P12563333980607204090

noncomputable section

/-- A379005: Lexicographically earliest infinite sequence such that a(i) = a(j) => v_2(i) = v_2(j), v_3(i) = v_3(j) and v_5(i) = v_5(j), for all i, j, where v_2 (A007814), v_3 (A007949) and v_5 (A112765) give the 2-, 3- and 5-adic valuations of n respectively.

Offset 1, canonical program `A379005.P12563333980607204090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379005 (n : ℕ) : ℤ :=
  A379005.P12563333980607204090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379445.P2489030206191324611

`A023503(n+2)*A023509(n+2)`
-/

namespace A379445.P2489030206191324611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 2) * A023509 (n + 2)

end

end A379445.P2489030206191324611

noncomputable section

/-- A379445: a(n) = gpf(prime(n)-1)*gpf(prime(n)+1), where gpf is A006530.

Offset 2, canonical program `A379445.P2489030206191324611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A379445 (n : ℕ) : ℤ :=
  A379445.P2489030206191324611.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A379445.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382720.P11103476103859492823

`∏{digits}[A007094(A037474(n)), #+1]`
-/

namespace A382720.P11103476103859492823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037474 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A382720.P11103476103859492823

noncomputable section

/-- A382720: Number of entries in the n-th row of Pascal's triangle not divisible by 7.

Offset 0, canonical program `A382720.P11103476103859492823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A382720 (n : ℕ) : ℤ :=
  (A382720.P11103476103859492823.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A382720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384231.P10287591200021798730

`gcd(A062878(n), A087133(n+1))`
-/

namespace A384231.P10287591200021798730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062878 n) (A087133 (n + 1))

end

end A384231.P10287591200021798730

noncomputable section

/-- A384231: Index of the largest odd noncomposite divisor in the list of divisors of n.

Offset 1, canonical program `A384231.P10287591200021798730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A384231 (n : ℕ) : ℤ :=
  (A384231.P10287591200021798730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A384231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385934.P15917893729798165172

`∩[A000040(n+1), A073491(n+1)+1]`
-/

namespace A385934.P15917893729798165172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385934.P15917893729798165172

noncomputable section

/-- A385934: Numbers that are one greater than terms of A055932, and also prime.

Offset 1, canonical program `A385934.P15917893729798165172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A385934 (n : ℕ) : ℤ :=
  (A385934.P15917893729798165172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A385934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002590.P13248179710466117863

`A002587(4*n)`
-/

namespace A002590.P13248179710466117863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (4 * n)

end

end A002590.P13248179710466117863

noncomputable section

/-- A002590: Largest prime factor of 16^n + 1.

Offset 0, canonical program `A002590.P13248179710466117863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002590 (n : ℕ) : ℤ :=
  A002590.P13248179710466117863.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002592.P13531105049726928344

`A074476(2*n)`
-/

namespace A002592.P13531105049726928344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074476 (2 * n)

end

end A002592.P13531105049726928344

noncomputable section

/-- A002592: Largest prime factor of 9^n + 1.

Offset 0, canonical program `A002592.P13531105049726928344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074476, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002592 (n : ℕ) : ℤ :=
  A002592.P13531105049726928344.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074476, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A005528.P781520974399035425

`lt[2*n+1, A281793(n+1)]+1`
-/

namespace A005528.P781520974399035425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005528.P781520974399035425

noncomputable section

/-- A005528: Størmer numbers or arc-cotangent irreducible numbers: numbers k such that the largest prime factor of k^2 + 1 is >= 2*k.

Offset 1, canonical program `A005528.P781520974399035425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7101 terms. -/
def A005528 (n : ℕ) : ℤ :=
  (A005528.P781520974399035425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7101 terms. -/
def A005528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007093.P13371401633146745397

`A007094(A037474(n))`
-/

namespace A007093.P13371401633146745397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037474 n).toNat

end

end A007093.P13371401633146745397

noncomputable section

/-- A007093: Numbers in base 7.

Offset 0, canonical program `A007093.P13371401633146745397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A007093 (n : ℕ) : ℤ :=
  A007093.P13371401633146745397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6042 terms. -/
def A007093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013948.P3339504944308927508

`A078649(n+1)-n`
-/

namespace A013948.P3339504944308927508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - (n : ℤ)

end

end A013948.P3339504944308927508

noncomputable section

/-- A013948: Positions of 2's in Kolakoski sequence (A000002).

Offset 1, canonical program `A013948.P3339504944308927508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948 (n : ℕ) : ℤ :=
  A013948.P3339504944308927508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A013948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A022304.P12337399357003774958

`∑[A327239(n+2)]`
-/

namespace A022304.P12337399357003774958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P12337399357003774958

noncomputable section

/-- A022304: Index of n-th 1 in A022303.

Offset 0, canonical program `A022304.P12337399357003774958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022304 (n : ℕ) : ℤ :=
  A022304.P12337399357003774958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A022304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023253.P15115840622694205473

`∩[A023218(n+1), A136089(n+1)]`
-/

namespace A023253.P15115840622694205473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023253.P15115840622694205473

noncomputable section

/-- A023253: Primes that remain prime through 2 iterations of the function f(x) = 5x + 4.

Offset 1, canonical program `A023253.P15115840622694205473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. -/
def A023253 (n : ℕ) : ℤ :=
  (A023253.P15115840622694205473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. -/
def A023253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023809.P3270166655072433697

`lt[A071178(A253563(n)), 5]`
-/

namespace A023809.P3270166655072433697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A253563 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023809.P3270166655072433697

noncomputable section

/-- A023809: Xenodromes: all digits in base 15 are different.

Offset 1, canonical program `A023809.P3270166655072433697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A023809 (n : ℕ) : ℤ :=
  (A023809.P3270166655072433697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A023809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026773.P15392828189142840948

`A086616(n+1)-(A086616(n)+A000108(n+1))`
-/

namespace A026773.P15392828189142840948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086616 (n + 1) - (A086616 n + A000108 (n + 1))

end

end A026773.P15392828189142840948

noncomputable section

/-- A026773: a(n) = T(2n-1,n-1), T given by A026769. Also T(2n+1,n+1), T given by A026780.

Offset 1, canonical program `A026773.P15392828189142840948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A026773 (n : ℕ) : ℤ :=
  A026773.P15392828189142840948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A026773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037464.P6205142235644604405

`A076605(2*(n+1))`
-/

namespace A037464.P6205142235644604405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (2 * (n + 1))

end

end A037464.P6205142235644604405

noncomputable section

/-- A037464: Bisection of A076605.

Offset 1, canonical program `A037464.P6205142235644604405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037464 (n : ℕ) : ℤ :=
  A037464.P6205142235644604405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037464.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037471.P8190266980563573188

`record[A008585(A037474(n))-A037474(2*n)]`
-/

namespace A037471.P8190266980563573188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A037474 n).toNat - A037474 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037471.P8190266980563573188

noncomputable section

/-- A037471: a(n)=Sum{d(i)*8^i: i=0,1,...,m}, where Sum{d(i)*6^i: i=0,1,...,m} is the base 6 representation of n.

Offset 0, canonical program `A037471.P8190266980563573188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2722 terms. -/
def A037471 (n : ℕ) : ℤ :=
  A037471.P8190266980563573188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2722 terms. -/
def A037471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048839.P15681757506260330542

`lt[A345940(n+2), 1]+2`
-/

namespace A048839.P15681757506260330542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345940 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A048839.P15681757506260330542

noncomputable section

/-- A048839: Numbers k dividing P(k)!, where P(k) is the largest prime factor of k.

Offset 1, canonical program `A048839.P15681757506260330542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048839 (n : ℕ) : ℤ :=
  (A048839.P15681757506260330542.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052126.P676087850752383458

`1-A171462(n+1)+n`
-/

namespace A052126.P676087850752383458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171462 (n + 1) + (n : ℤ)

end

end A052126.P676087850752383458

noncomputable section

/-- A052126: a(1) = 1; for n>1, a(n)=n/(largest prime dividing n).

Offset 1, canonical program `A052126.P676087850752383458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052126 (n : ℕ) : ℤ :=
  A052126.P676087850752383458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053585.P10057542052652531507

`A006530(n+1)^A071178(n+1)`
-/

namespace A053585.P10057542052652531507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A071178 (n + 1) : ℤ)

end

end A053585.P10057542052652531507

noncomputable section

/-- A053585: If n = p_1^e_1 * ... * p_k^e_k, p_1 < ... < p_k primes, then a(n) = p_k^e_k.

Offset 1, canonical program `A053585.P10057542052652531507`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053585 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053585.P10057542052652531507.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053585.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054775.P16087756340691914254

`6*A067611(n+1)`
-/

namespace A054775.P16087756340691914254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A067611 (n + 1)

end

end A054775.P16087756340691914254

noncomputable section

/-- A054775: Positive multiples of 6 which are not the midpoint of a pair of twin primes.

Offset 1, canonical program `A054775.P16087756340691914254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054775 (n : ℕ) : ℤ :=
  A054775.P16087756340691914254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063762.P4601509501810094646

`∪[A063763(n+1), A033476(n)]`
-/

namespace A063762.P4601509501810094646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063762.P4601509501810094646

noncomputable section

/-- A063762: Sqrt(n)-rough nonprimes: largest prime factor of n (A006530) >= sqrt(n).

Offset 1, canonical program `A063762.P4601509501810094646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063762 (n : ℕ) : ℤ :=
  (A063762.P4601509501810094646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065202.P14955793673097099261

`A066301((n+1)/A217434(A217434(n+1)))`
-/

namespace A065202.P14955793673097099261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A217434 (A217434 (n + 1)).toNat : ℚ))).toNat

end

end A065202.P14955793673097099261

noncomputable section

/-- A065202: Characteristic function of A065201: a(n) = if A065201(k) = n for some k then 1 else 0.

Offset 1, canonical program `A065202.P14955793673097099261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065202 (n : ℕ) : ℤ :=
  A065202.P14955793673097099261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074262.P11865346292723131209

`A156242(lt[1, A100428(n+1)])+1`
-/

namespace A074262.P11865346292723131209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A074262.P11865346292723131209

noncomputable section

/-- A074262: Positions of '11' in Kolakoski sequence A000002.

Offset 1, canonical program `A074262.P11865346292723131209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A074262 (n : ℕ) : ℤ :=
  A074262.P11865346292723131209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A074262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074263.P1367974971333941862

`∩[A078649(n+1), A156243(n+1)+1]`
-/

namespace A074263.P1367974971333941862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074263.P1367974971333941862

noncomputable section

/-- A074263: Positions of '22' in Kolakoski sequence A000002.

Offset 1, canonical program `A074263.P1367974971333941862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A074263 (n : ℕ) : ℤ :=
  (A074263.P1367974971333941862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A074263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074276.P923500997283116459

`A156242(lt[A100429(n+1), A100428(n+1)])`
-/

namespace A074276.P923500997283116459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A074276.P923500997283116459

noncomputable section

/-- A074276: Positions of occurrences of 2,1,1,2,1 in the Kolakoski sequence A000002.

Offset 1, canonical program `A074276.P923500997283116459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A074276 (n : ℕ) : ℤ :=
  A074276.P923500997283116459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A074276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076271.P1844572753760684054

`A180107(n+2)`
-/

namespace A076271.P1844572753760684054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 (n + 2)

end

end A076271.P1844572753760684054

noncomputable section

/-- A076271: a(1) = 1, a(2) = 2, and for n > 2, a(n) = a(n-1) + gpf(a(n-1)), where gpf = greatest prime factor = A006530.

Offset 1, canonical program `A076271.P1844572753760684054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A076271 (n : ℕ) : ℤ :=
  A076271.P1844572753760684054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A076271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076769.P1786112881111150873

`eq[0, A082660(n+1)]+1`
-/

namespace A076769.P1786112881111150873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076769.P1786112881111150873

noncomputable section

/-- A076769: Integers not expressible as the sum of a positive triangular number and a square.

Offset 1, canonical program `A076769.P1786112881111150873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4659 terms. -/
def A076769 (n : ℕ) : ℤ :=
  (A076769.P1786112881111150873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4659 terms. -/
def A076769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076928.P15720987038204925142

`∏[1-A171462(n+1)+n]`
-/

namespace A076928.P15720987038204925142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171462 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076928.P15720987038204925142

noncomputable section

/-- A076928: a(1) = 1, a(n+1)= a(n)*(n+1) divided by the largest prime divisor of n+1.

Offset 1, canonical program `A076928.P15720987038204925142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A076928 (n : ℕ) : ℤ :=
  A076928.P15720987038204925142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A076928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080363.P932351354866622557

`∩[A002808(n+1), A102750(n+1)]`
-/

namespace A080363.P932351354866622557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P932351354866622557

noncomputable section

/-- A080363: Nonprime numbers k such that the largest prime divisor of k is unitary.

Offset 1, canonical program `A080363.P932351354866622557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080363 (n : ℕ) : ℤ :=
  (A080363.P932351354866622557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082659.P17645007144944071936

`eq[3, A082660(n+1)]+1`
-/

namespace A082659.P17645007144944071936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082659.P17645007144944071936

noncomputable section

/-- A082659: Integers expressible as the sum of a square and a triangular number in exactly three distinct ways.

Offset 1, canonical program `A082659.P17645007144944071936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A082659 (n : ℕ) : ℤ :=
  (A082659.P17645007144944071936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A082659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083730.P6132026676750531064

`A249740(n+1)²`
-/

namespace A083730.P6132026676750531064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1) ^ 2

end

end A083730.P6132026676750531064

noncomputable section

/-- A083730: Greatest prime^2 factor of n, or a(n)=1 for squarefree n.

Offset 1, canonical program `A083730.P6132026676750531064`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083730 (n : ℕ) : ℤ :=
  A083730.P6132026676750531064.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249740, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096006.P16450818413955098233

`p?[A098802(n)]`
-/

namespace A096006.P16450818413955098233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096006.P16450818413955098233

noncomputable section

/-- A096006: Triangle read by rows: T(n,k) = largest prime factor of binomial(n,k), 1 <= k <= n-1.

Offset 2, canonical program `A096006.P16450818413955098233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A096006 (n : ℕ) : ℤ :=
  A096006.P16450818413955098233.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. -/
def A096006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108767.P10790403912614065245

`A120986(A061579(n))`
-/

namespace A108767.P10790403912614065245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (A061579 n).toNat

end

end A108767.P10790403912614065245

noncomputable section

/-- A108767: Triangle read by rows: T(n, k) is number of paths from (0, 0) to (3*n, 0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u = (1, 1), d = (1, -2) and have k peaks (i.e., ud's).

Offset 1, canonical program `A108767.P10790403912614065245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A108767 (n : ℕ) : ℤ :=
  A108767.P10790403912614065245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A108767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115000.P14466011705002378707

`Δ[A115001(n+4)]`
-/

namespace A115000.P14466011705002378707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115001 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115000.P14466011705002378707

noncomputable section

/-- A115000: a(n) = J_2(n) / 24.

Offset 5, canonical program `A115000.P14466011705002378707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115000 (n : ℕ) : ℤ :=
  A115000.P14466011705002378707.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A115000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117763.P13017892793999242602

`p?[A184860(n+1)]`
-/

namespace A117763.P13017892793999242602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117763.P13017892793999242602

noncomputable section

/-- A117763: Primes p such that the nearest integer to p * phi is a prime, where phi is the golden ratio.

Offset 1, canonical program `A117763.P13017892793999242602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A117763 (n : ℕ) : ℤ :=
  A117763.P13017892793999242602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. -/
def A117763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126289.P2545217101425683168

`(1-A171462(n+1)+n)*A006530(A028310(n))`
-/

namespace A126289.P2545217101425683168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A171462 (n + 1) + (n : ℤ)) * A006530 (A028310 n).toNat

end

end A126289.P2545217101425683168

noncomputable section

/-- A126289: a(1) = 1, a(2) = 1, a(n) = n * LargestPrimeFactor(n-1) / LargestPrimeFactor(n).

Offset 1, canonical program `A126289.P2545217101425683168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126289 (n : ℕ) : ℤ :=
  A126289.P2545217101425683168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133008.P6727961677655990974

`A328311(A100587(n+1)+6)`
-/

namespace A133008.P6727961677655990974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (A100587 (n + 1) + 6).toNat

end

end A133008.P6727961677655990974

noncomputable section

/-- A133008: The defining property of the sequences {A, B} = {A000028, A000379} is that they are the unique pair of sets complementary with respect to the positive integers such that p(n) = |{x : x, y in A, x < y, xy = n}| = |{x : x, y in B, x < y, xy = n}| for all n >= 1. The present sequence gives the values of p(n).

Offset 1, canonical program `A133008.P6727961677655990974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A133008 (n : ℕ) : ℤ :=
  A133008.P6727961677655990974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A133008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A205726.P17569698464733314810

`∑[A140114(n)+A010051(n+1)]`
-/

namespace A205726.P17569698464733314810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 n + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205726.P17569698464733314810

noncomputable section

/-- A205726: Number of semiprimes <= n^2.

Offset 1, canonical program `A205726.P17569698464733314810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A205726 (n : ℕ) : ℤ :=
  A205726.P17569698464733314810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A205726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243283.P17872193022962511654

`∑[A319988(n+1)]+1`
-/

namespace A243283.P17872193022962511654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A243283.P17872193022962511654

noncomputable section

/-- A243283: One more than the partial sums of the characteristic function of A070003.

Offset 1, canonical program `A243283.P17872193022962511654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243283 (n : ℕ) : ℤ :=
  A243283.P17872193022962511654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243285.P1716118175851797522

`n-∑[A319988(n+1)]`
-/

namespace A243285.P1716118175851797522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243285.P1716118175851797522

noncomputable section

/-- A243285: Number of integers 1 <= k <= n which are not divisible by the square of their largest noncomposite divisor.

Offset 1, canonical program `A243285.P1716118175851797522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243285 (n : ℕ) : ℤ :=
  A243285.P1716118175851797522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253781.P17644338826766911626

`comp[A253782(n+1)-1]+1`
-/

namespace A253781.P17644338826766911626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253782 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253781.P17644338826766911626

noncomputable section

/-- A253781: Numbers n for which A075167(n) = A252464(n).

Offset 1, canonical program `A253781.P17644338826766911626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253781 (n : ℕ) : ℤ :=
  (A253781.P17644338826766911626.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256011.P18111847139691471961

`lt[A281793(n), A184985(n+1)+1]`
-/

namespace A256011.P18111847139691471961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A256011.P18111847139691471961

noncomputable section

/-- A256011: Integers k with the property that the largest prime factor of k^2 + 1 is less than k.

Offset 1, canonical program `A256011.P18111847139691471961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A256011 (n : ℕ) : ℤ :=
  (A256011.P18111847139691471961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2085 terms. -/
def A256011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264828.P8600560789045602649

`comp[A001751(n+1)-1]+1`
-/

namespace A264828.P8600560789045602649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A264828.P8600560789045602649

noncomputable section

/-- A264828: Nonprimes that are not twice a prime.

Offset 1, canonical program `A264828.P8600560789045602649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264828 (n : ℕ) : ℤ :=
  (A264828.P8600560789045602649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271380.P14112068128569563915

`A036150(15*n)`
-/

namespace A271380.P14112068128569563915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036150 (15 * n)

end

end A271380.P14112068128569563915

noncomputable section

/-- A271380: a(n) = 5^n mod 163.

Offset 0, canonical program `A271380.P14112068128569563915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A271380 (n : ℕ) : ℤ :=
  A271380.P14112068128569563915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A271380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347694.P9273429398172691281

`A001751(A099801(n)+A055679(2*n+3))`
-/

namespace A347694.P9273429398172691281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (A099801 n + A055679 (2 * n + 3)).toNat

end

end A347694.P9273429398172691281

noncomputable section

/-- A347694: Largest k <= 2*n such that k is a prime or twice a prime.

Offset 1, canonical program `A347694.P9273429398172691281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347694 (n : ℕ) : ℤ :=
  A347694.P9273429398172691281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A347694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366413.P3991422571957207343

`∪[A024556(n+1), A073486(n+1)]`
-/

namespace A366413.P3991422571957207343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366413.P3991422571957207343

noncomputable section

/-- A366413: Squarefree composite k such that the smallest nondivisor prime is less than the greatest prime factor, i.e., A053669(k) < A006530(k).

Offset 1, canonical program `A366413.P3991422571957207343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366413 (n : ℕ) : ℤ :=
  (A366413.P3991422571957207343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369655.P9734755882445867410

`A165560(n)*A165560(A003415(n))`
-/

namespace A369655.P9734755882445867410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n * A165560 (A003415 n).toNat

end

end A369655.P9734755882445867410

noncomputable section

/-- A369655: a(n) = 1 if n' is odd and also n'' is odd, otherwise 0, where n' stands for the arithmetic derivative, A003415.

Offset 0, canonical program `A369655.P9734755882445867410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A165560, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369655 (n : ℕ) : ℤ :=
  A369655.P9734755882445867410.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A165560, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373590.P15721215332893616933

`∩[A004611(n+1), A373597(n+1)]`
-/

namespace A373590.P15721215332893616933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373590.P15721215332893616933

noncomputable section

/-- A373590: Numbers whose number of prime factors (with multiplicity) is a multiple of 3, and all of them are of the type 3m+1 (in A002476).

Offset 1, canonical program `A373590.P15721215332893616933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 824 terms. -/
def A373590 (n : ℕ) : ℤ :=
  (A373590.P15721215332893616933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 824 terms. -/
def A373590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037839.P16544555044526964660

`A037840(A037474(n+1))`
-/

namespace A037839.P16544555044526964660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (A037474 (n + 1)).toNat

end

end A037839.P16544555044526964660

noncomputable section

/-- A037839: a(n) = Sum{|d(i)-d(i-1)|: i=1,...,m}, where Sum{d(i)*7^i: i=0,1,...,m} is the base 7 representation of n.

Offset 1, canonical program `A037839.P16544555044526964660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037839 (n : ℕ) : ℤ :=
  A037839.P16544555044526964660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085727.P7497080925849299044

`A072000(2*(n+1))-A072000(A028310(n))`
-/

namespace A085727.P7497080925849299044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * (n + 1)) - A072000 (A028310 n).toNat

end

end A085727.P7497080925849299044

noncomputable section

/-- A085727: Number of semiprimes between n and 2n (inclusive).

Offset 1, canonical program `A085727.P7497080925849299044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085727 (n : ℕ) : ℤ :=
  A085727.P7497080925849299044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100493.P3342029395979233194

`comp[A072000(n+1)+n]+2`
-/

namespace A100493.P3342029395979233194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A100493.P3342029395979233194

noncomputable section

/-- A100493: a(n) = n + n-th semiprime.

Offset 1, canonical program `A100493.P3342029395979233194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100493 (n : ℕ) : ℤ :=
  (A100493.P3342029395979233194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103668.P24326992763357563

`Δ[A072000(A000040(n+1))]`
-/

namespace A103668.P24326992763357563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103668.P24326992763357563

noncomputable section

/-- A103668: Number of semiprimes between prime(n) and prime(n+1).

Offset 1, canonical program `A103668.P24326992763357563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103668 (n : ℕ) : ℤ :=
  A103668.P24326992763357563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108216.P14909083276844098734

`Δ[A072000(record[A093178(5*n+4)])]`
-/

namespace A108216.P14909083276844098734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (5 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108216.P14909083276844098734

noncomputable section

/-- A108216: Number of semiprimes between 10n and 10n + 9.

Offset 0, canonical program `A108216.P14909083276844098734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A108216 (n : ℕ) : ℤ :=
  A108216.P14909083276844098734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A108216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111457.P8327054384123137751

`A072000(A006093(n+1))`
-/

namespace A111457.P8327054384123137751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A006093 (n + 1)).toNat

end

end A111457.P8327054384123137751

noncomputable section

/-- A111457: Number of semiprimes smaller than the n-th prime.

Offset 1, canonical program `A111457.P8327054384123137751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4282 terms. -/
def A111457 (n : ℕ) : ℤ :=
  A111457.P8327054384123137751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4282 terms. -/
def A111457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115392.P17407802034294913799

`A072000(2*A000040(n+1))`
-/

namespace A115392.P17407802034294913799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * A000040 (n + 1)).toNat

end

end A115392.P17407802034294913799

noncomputable section

/-- A115392: First appearance of n-th prime as prime factor in list of semiprimes.

Offset 1, canonical program `A115392.P17407802034294913799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115392 (n : ℕ) : ℤ :=
  A115392.P17407802034294913799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A115392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176705.P6967112970786651348

`Δ[A072000(p?[A062729(n+1)])]`
-/

namespace A176705.P6967112970786651348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176705.P6967112970786651348

noncomputable section

/-- A176705: Number of semiprimes between single (or isolated or non-twin) prime(n) and single (or isolated or non-twin) prime(n+1).

Offset 1, canonical program `A176705.P6967112970786651348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176705 (n : ℕ) : ℤ :=
  A176705.P6967112970786651348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A176705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310423.P3461946807328285737

`abs(A008592(n)-A315302(n))`
-/

namespace A310423.P3461946807328285737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315302 n|

end

end A310423.P3461946807328285737

noncomputable section

/-- A310423: Coordination sequence Gal.6.326.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310423.P3461946807328285737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A310423 (n : ℕ) : ℤ :=
  A310423.P3461946807328285737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A310423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024899.P11184081980913290394

`A024892(n+1)/2`
-/

namespace A024899.P11184081980913290394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024892 (n + 1) : ℚ) / 2

end

end A024899.P11184081980913290394

noncomputable section

/-- A024899: Numbers k such that 6*k + 1 is prime.

Offset 1, canonical program `A024899.P11184081980913290394`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024899 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024899.P11184081980913290394.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024899.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106068.P13422155209439487144

`p?[A124855(n+1)]`
-/

namespace A106068.P13422155209439487144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106068.P13422155209439487144

noncomputable section

/-- A106068: Primes p such that 3p + 4 and 4p + 3 are primes.

Offset 1, canonical program `A106068.P13422155209439487144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1955 terms. -/
def A106068 (n : ℕ) : ℤ :=
  A106068.P13422155209439487144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1955 terms. -/
def A106068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112772.P11841538556147305833

`6*A024892(n+1)+2`
-/

namespace A112772.P11841538556147305833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A024892 (n + 1) + 2

end

end A112772.P11841538556147305833

noncomputable section

/-- A112772: Semiprimes of the form 6n+2.

Offset 1, canonical program `A112772.P11841538556147305833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112772 (n : ℕ) : ℤ :=
  A112772.P11841538556147305833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112772.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153183.P10933182994355425075

`A024892(n+1)+1`
-/

namespace A153183.P10933182994355425075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) + 1

end

end A153183.P10933182994355425075

noncomputable section

/-- A153183: Numbers k such that 3k-2 is prime.

Offset 1, canonical program `A153183.P10933182994355425075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153183 (n : ℕ) : ℤ :=
  A153183.P10933182994355425075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024892, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335031.P12166965305389209209

`∪[A024892(n+1), A034934(n+1)]`
-/

namespace A335031.P12166965305389209209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335031.P12166965305389209209

noncomputable section

/-- A335031: Complement of A334919.

Offset 1, canonical program `A335031.P12166965305389209209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335031 (n : ℕ) : ℤ :=
  (A335031.P12166965305389209209.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008835.P9834256045396494153

`A053167(A062379(n+1))`
-/

namespace A008835.P9834256045396494153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (A062379 (n + 1)).toNat

end

end A008835.P9834256045396494153

noncomputable section

/-- A008835: Largest 4th power dividing n.

Offset 1, canonical program `A008835.P9834256045396494153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008835 (n : ℕ) : ℤ :=
  A008835.P9834256045396494153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010849.P8260382940907642524

`Δ[Δ[A010683(n)/4]]`
-/

namespace A010849.P8260382940907642524
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010683 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A010849.P8260382940907642524

noncomputable section

/-- A010849: Let S(x,y) = number of lattice paths from (0,0) to (x,y) that use the step set { (0,1), (1,0), (2,0), (3,0), ....} and never pass below y = x. Sequence gives S(n-3,n).

Offset 0, canonical program `A010849.P8260382940907642524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A010849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010849.P8260382940907642524.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A010849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035011.P9518209092387552565

`xor(3, A025240(n+1))`
-/

namespace A035011.P9518209092387552565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A025240 (n + 1))

end

end A035011.P9518209092387552565

noncomputable section

/-- A035011: A006318(n) - 1.

Offset 0, canonical program `A035011.P9518209092387552565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A035011 (n : ℕ) : ℤ :=
  A035011.P9518209092387552565.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A035011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045938.P13595266060799870594

`A045937(eq[1, Δ[A045937(n+1)]]+1)`
-/

namespace A045938.P13595266060799870594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045938.P13595266060799870594

noncomputable section

/-- A045938: Numbers n such that n through n+9 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045938.P13595266060799870594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. -/
def A045938 (n : ℕ) : ℤ :=
  A045938.P13595266060799870594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2749 terms. -/
def A045938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054804.P3151094855790563465

`A000040(A000720(A054805(n+1)-1))`
-/

namespace A054804.P3151094855790563465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054805 (n + 1) - 1).toNat).toNat

end

end A054804.P3151094855790563465

noncomputable section

/-- A054804: First term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

Offset 1, canonical program `A054804.P3151094855790563465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A054804 (n : ℕ) : ℤ :=
  A054804.P3151094855790563465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A054804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064097.P215699996938261577

`a(A171462(n+1)-1)+1` with `a(0)=0`
-/

namespace A064097.P215699996938261577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A171462 (n + 1) - 1).toNat + 1

end

end A064097.P215699996938261577

noncomputable section

/-- A064097: A quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

Offset 1, canonical program `A064097.P215699996938261577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064097 (n : ℕ) : ℤ :=
  (A064097.P215699996938261577.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065096.P11135851872717810098

`A010683(n+1)-A025240(n+2)`
-/

namespace A065096.P11135851872717810098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 (n + 1) - A025240 (n + 2)

end

end A065096.P11135851872717810098

noncomputable section

/-- A065096: Sums of lists produced by a variant of the iteration that produces the Catalan numbers: start with 0 and at each iteration replace each integer k with the list 0,1,...,k-1,k,k+1,k,k-1,...,1,0 and let a(n) be the sum of the resulting (flattened) list after n iterations.

Offset 0, canonical program `A065096.P11135851872717810098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A065096 (n : ℕ) : ℤ :=
  A065096.P11135851872717810098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A065096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070647.P17414815730449283584

`A006881(n+1)/A096916(n+1)`
-/

namespace A070647.P17414815730449283584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006881 (n + 1) : ℚ) / (A096916 (n + 1) : ℚ)

end

end A070647.P17414815730449283584

noncomputable section

/-- A070647: Largest prime factor of sequence of numbers of the form p*q (p, q distinct primes).

Offset 1, canonical program `A070647.P17414815730449283584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, A096916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070647 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070647.P17414815730449283584.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, A096916, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082417.P15956254284807999064

`∩[A070087(n+1)-1, A070089(n+1)]`
-/

namespace A082417.P15956254284807999064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082417.P15956254284807999064

noncomputable section

/-- A082417: Numbers k such that P(k) < P(k+1) > P(k+2), where P(k) is the largest prime factor of k (A006530).

Offset 1, canonical program `A082417.P15956254284807999064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A082417 (n : ℕ) : ℤ :=
  (A082417.P15956254284807999064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A082417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082418.P10152609501168817494

`∩[A070087(n+1), A070089(n+1)-1]`
-/

namespace A082418.P10152609501168817494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082418.P10152609501168817494

noncomputable section

/-- A082418: Numbers k such that P(k) > P(k+1) < P(k+2), where P(n) = largest prime factor of n (A006530).

Offset 1, canonical program `A082418.P10152609501168817494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6722 terms. -/
def A082418 (n : ℕ) : ℤ :=
  (A082418.P10152609501168817494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6722 terms. -/
def A082418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094180.P14445506066879923085

`(A094179(n+1)+1)/4`
-/

namespace A094180.P14445506066879923085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094179 (n + 1) + 1 : ℚ) / 4

end

end A094180.P14445506066879923085

noncomputable section

/-- A094180: Numbers k such that 4*k-1 is divisible only by primes of form 4*m-1 (i.e., by the Gaussian primes A002145).

Offset 1, canonical program `A094180.P14445506066879923085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094180 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094180.P14445506066879923085.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100394.P13983393573209598576

`A000720(A023590(n+1)+1)`
-/

namespace A100394.P13983393573209598576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023590 (n + 1) + 1).toNat

end

end A100394.P13983393573209598576

noncomputable section

/-- A100394: a(n) is the subscript of the greatest prime factor of (2*prime(n) + 1).

Offset 1, canonical program `A100394.P13983393573209598576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A023590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100394 (n : ℕ) : ℤ :=
  A100394.P13983393573209598576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A023590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101041.P9395477639911062119

`A000720(n+1)+A072000(n+1)+1`
-/

namespace A101041.P9395477639911062119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A072000 (n + 1) + 1

end

end A101041.P9395477639911062119

noncomputable section

/-- A101041: Number of numbers not greater than n having no more than two prime factors.

Offset 1, canonical program `A101041.P9395477639911062119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A101041 (n : ℕ) : ℤ :=
  A101041.P9395477639911062119.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A101041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120382.P11282506073447857493

`2*A060461(n+1)`
-/

namespace A120382.P11282506073447857493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060461 (n + 1)

end

end A120382.P11282506073447857493

noncomputable section

/-- A120382: Even numbers k such that 3*k-1 and 3*k+1 are not prime.

Offset 1, canonical program `A120382.P11282506073447857493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120382 (n : ℕ) : ℤ :=
  A120382.P11282506073447857493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141565.P5722058412581182413

`A048250(A003557(n+1))*A064478(n+1)`
-/

namespace A141565.P5722058412581182413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A003557 (n + 1)).toNat * A064478 (n + 1)

end

end A141565.P5722058412581182413

noncomputable section

/-- A141565: Add 1 to all bases and exponents which are greater than 1 in the prime number decomposition of n.

Offset 1, canonical program `A141565.P5722058412581182413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A141565 (n : ℕ) : ℤ :=
  A141565.P5722058412581182413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A141565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143320.P9821139505846208418

`A024916(A010766(n+1))*A054527(n+1)`
-/

namespace A143320.P9821139505846208418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A010766 (n + 1)).toNat * A054527 (n + 1)

end

end A143320.P9821139505846208418

noncomputable section

/-- A143320: Triangle read by rows, A000012 * A143317; 1<=k<=n.

Offset 1, canonical program `A143320.P9821139505846208418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143320 (n : ℕ) : ℤ :=
  A143320.P9821139505846208418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174956.P4901462298165488404

`(A072000(n+1)-A072000(A028310(n)))*A072000(n+1)`
-/

namespace A174956.P4901462298165488404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072000 (n + 1) - A072000 (A028310 n).toNat) * A072000 (n + 1)

end

end A174956.P4901462298165488404

noncomputable section

/-- A174956: 0 unless n is the k-th semiprime when a(n) = k.

Offset 1, canonical program `A174956.P4901462298165488404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174956 (n : ℕ) : ℤ :=
  A174956.P4901462298165488404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176819.P9087001782378007283

`Δ[A085986(n+1)]`
-/

namespace A176819.P9087001782378007283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176819.P9087001782378007283

noncomputable section

/-- A176819: Distances between terms in A085986.

Offset 1, canonical program `A176819.P9087001782378007283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A176819 (n : ℕ) : ℤ :=
  A176819.P9087001782378007283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A176819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179670.P14392537173790149213

`∩[A175742(n+1), A360793(n+1)]`
-/

namespace A179670.P14392537173790149213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P14392537173790149213

noncomputable section

/-- A179670: Numbers of the form p^3*q*r*s where p, q, r, and s are distinct primes.

Offset 1, canonical program `A179670.P14392537173790149213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2098 terms. -/
def A179670 (n : ℕ) : ℤ :=
  (A179670.P14392537173790149213.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2098 terms. -/
def A179670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189991.P280947877882391651

`A085986(n+1)²`
-/

namespace A189991.P280947877882391651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1) ^ 2

end

end A189991.P280947877882391651

noncomputable section

/-- A189991: Numbers with prime factorization p^4*q^4.

Offset 1, canonical program `A189991.P280947877882391651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189991 (n : ℕ) : ℤ :=
  A189991.P280947877882391651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085986, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A227506.P1241765352015404149

`A010683(n)+A000035(n)*A080243(n)`
-/

namespace A227506.P1241765352015404149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 n + A000035 n * A080243 n

end

end A227506.P1241765352015404149

noncomputable section

/-- A227506: Schroeder triangle sums: a(2*n-1) = A010683(2*n-2) and a(2*n) = A010683(2*n-1) - A001003(2*n-1).

Offset 1, canonical program `A227506.P1241765352015404149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A227506 (n : ℕ) : ℤ :=
  A227506.P1241765352015404149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A227506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243906.P883148336844594842

`A072000(n+1)-A000720(n+1)`
-/

namespace A243906.P883148336844594842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (n + 1) - A000720 (n + 1)

end

end A243906.P883148336844594842

noncomputable section

/-- A243906: (Number of semiprimes <= n) - (number of primes <= n).

Offset 1, canonical program `A243906.P883148336844594842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243906 (n : ℕ) : ℤ :=
  A243906.P883148336844594842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A072000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258096.P8986957961548170403

`(-1)^n*A209940(n)`
-/

namespace A258096.P8986957961548170403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A209940 n

end

end A258096.P8986957961548170403

noncomputable section

/-- A258096: Expansion of psi(x^4) * phi(-x^4)^4 / phi(-x) in powers of x where phi(), psi() are Ramanujan theta function.

Offset 0, canonical program `A258096.P8986957961548170403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258096 (n : ℕ) : ℤ :=
  A258096.P8986957961548170403.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258096.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259826.P6433926168437489858

`6*A060461(n+1)`
-/

namespace A259826.P6433926168437489858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060461 (n + 1)

end

end A259826.P6433926168437489858

noncomputable section

/-- A259826: Numbers n such that n is a multiple of 6 and both n-1 and n+1 are composite.

Offset 1, canonical program `A259826.P6433926168437489858`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259826 (n : ℕ) : ℤ :=
  A259826.P6433926168437489858.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060461, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260675.P7933500571381634096

`A128616(4*n+1)`
-/

namespace A260675.P7933500571381634096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (4 * n + 1)

end

end A260675.P7933500571381634096

noncomputable section

/-- A260675: Expansion of psi(x^2) * phi(x^15) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A260675.P7933500571381634096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A260675 (n : ℕ) : ℤ :=
  A260675.P7933500571381634096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A260675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260676.P11014802293256740310

`A128616(A004767(n+3))`
-/

namespace A260676.P11014802293256740310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (A004767 (n + 3)).toNat

end

end A260676.P11014802293256740310

noncomputable section

/-- A260676: Expansion of phi(x) * psi(x^30) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A260676.P11014802293256740310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A260676 (n : ℕ) : ℤ :=
  A260676.P11014802293256740310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A260676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268392.P9708795502276571960

`A268385(A050376(n+1))`
-/

namespace A268392.P9708795502276571960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A050376 (n + 1)).toNat

end

end A268392.P9708795502276571960

noncomputable section

/-- A268392: a(n) = A268385(A050376(n)).

Offset 1, canonical program `A268392.P9708795502276571960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1938 terms. -/
def A268392 (n : ℕ) : ℤ :=
  A268392.P9708795502276571960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1938 terms. -/
def A268392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270652.P2129090608778527896

`A061395(A006881(n+1)*A126865(n+1))`
-/

namespace A270652.P2129090608778527896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A006881 (n + 1) * A126865 (n + 1)).toNat

end

end A270652.P2129090608778527896

noncomputable section

/-- A270652: Max(i,j), where p(i)*p(j) is the n-th term of A006881.

Offset 1, canonical program `A270652.P2129090608778527896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A270652 (n : ℕ) : ℤ :=
  A270652.P2129090608778527896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A270652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274913.P16127943024732483463

`A274912(n)+1`
-/

namespace A274913.P16127943024732483463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274912 n + 1

end

end A274913.P16127943024732483463

noncomputable section

/-- A274913: Square array read by antidiagonals upwards in which each new term is the least positive integer distinct from its neighbors.

Offset 1, canonical program `A274913.P16127943024732483463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274913 (n : ℕ) : ℤ :=
  A274913.P16127943024732483463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A274912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284263.P2360290570486179856

`A251719(n+1)-1`
-/

namespace A284263.P2360290570486179856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 (n + 1) - 1

end

end A284263.P2360290570486179856

noncomputable section

/-- A284263: a(n) = A252459(2*A000040(n)), a(0) = 0 by convention.

Offset 0, canonical program `A284263.P2360290570486179856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284263 (n : ℕ) : ℤ :=
  A284263.P2360290570486179856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318441.P17763329033337270691

`A291784(n+1)-A318325(n+1)`
-/

namespace A318441.P17763329033337270691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (n + 1) - A318325 (n + 1)

end

end A318441.P17763329033337270691

noncomputable section

/-- A318441: a(n) = Sum_{d|n} [moebius(n/d) > 0]*A033879(d).

Offset 1, canonical program `A318441.P17763329033337270691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291784, A318325, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318441 (n : ℕ) : ℤ :=
  A318441.P17763329033337270691.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291784, A318325, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324893.P12587360797117924807

`A000593(n+1)/A324891(n+1)`
-/

namespace A324893.P12587360797117924807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) : ℚ) / (A324891 (n + 1) : ℚ)

end

end A324893.P12587360797117924807

noncomputable section

/-- A324893: a(n) = sigma(A097706(n)), where A097706(n) is the part of n composed of prime factors of form 4k+3.

Offset 1, canonical program `A324893.P12587360797117924807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324893.P12587360797117924807.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324893.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A326045.P9050702323358522594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326045 (n : ℕ) : ℤ :=
  A326045.P9050702323358522594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327477.P17478202587199191785

`Δ[A327471(abs(1-n))]`
-/

namespace A327477.P17478202587199191785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327471 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327477.P17478202587199191785

noncomputable section

/-- A327477: Number of subsets of {1..n} containing n whose mean is not an element.

Offset 0, canonical program `A327477.P17478202587199191785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327477 (n : ℕ) : ℤ :=
  A327477.P17478202587199191785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A327477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337198.P321523627652401232

`A001221(A337194(n+1))`
-/

namespace A337198.P321523627652401232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A337194 (n + 1)).toNat

end

end A337198.P321523627652401232

noncomputable section

/-- A337198: Number of distinct prime factors in A337194(n) = 1+A000265(sigma(n)), where A000265(k) gives the odd part of k.

Offset 1, canonical program `A337198.P321523627652401232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337198 (n : ℕ) : ℤ :=
  A337198.P321523627652401232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338912.P12481881722546763833

`A000720(A084126(n+1))`
-/

namespace A338912.P12481881722546763833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084126 (n + 1)).toNat

end

end A338912.P12481881722546763833

noncomputable section

/-- A338912: Lesser prime index of the n-th semiprime.

Offset 1, canonical program `A338912.P12481881722546763833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338912 (n : ℕ) : ℤ :=
  A338912.P12481881722546763833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340085.P7543650115475079382

`A336466(n+1)/A340084(n+1)`
-/

namespace A340085.P7543650115475079382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336466 (n + 1) : ℚ) / (A340084 (n + 1) : ℚ)

end

end A340085.P7543650115475079382

noncomputable section

/-- A340085: a(n) = A336466(n) / gcd(n-1, A336466(n)); Odd part of A340082(n).

Offset 1, canonical program `A340085.P7543650115475079382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A340084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340085 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A340085.P7543650115475079382.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A340084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A340085.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A348048.P5323458610393115278

`A000203(n+1)/A348047(n+1)`
-/

namespace A348048.P5323458610393115278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348048.P5323458610393115278

noncomputable section

/-- A348048: a(n) = sigma(n) / gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348048.P5323458610393115278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348048.P5323458610393115278.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348049.P10382415433581504005

`A003959(n+1)/A348047(n+1)`
-/

namespace A348049.P10382415433581504005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348049.P10382415433581504005

noncomputable section

/-- A348049: a(n) = A003959(n) / gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A348049.P10382415433581504005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348047, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348049 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348049.P10382415433581504005.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348047, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348507.P4523706765049384519

`A001065(n+1)+A348029(n+1)`
-/

namespace A348507.P4523706765049384519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A348029 (n + 1)

end

end A348507.P4523706765049384519

noncomputable section

/-- A348507: a(n) = A003959(n) - n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348507.P4523706765049384519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A348029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348507 (n : ℕ) : ℤ :=
  A348507.P4523706765049384519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A348029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348508.P5725089705091095538

`A348029(n+1)-A033879(n+1)`
-/

namespace A348508.P5725089705091095538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1) - A033879 (n + 1)

end

end A348508.P5725089705091095538

noncomputable section

/-- A348508: a(n) = A003959(n) - 2*n, where A003959 is multiplicative with a(p^e) = (p+1)^e.

Offset 1, canonical program `A348508.P5725089705091095538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A348029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348508 (n : ℕ) : ℤ :=
  A348508.P5725089705091095538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A348029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348734.P11644484139759931967

`A003959(n+1)/A348733(n+1)`
-/

namespace A348734.P11644484139759931967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348734.P11644484139759931967

noncomputable section

/-- A348734: Numerator of Product((p+1)^e / ((p^e)+1)), when n = Product(p^e), with p primes, and e their exponents.

Offset 1, canonical program `A348734.P11644484139759931967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348734 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348734.P11644484139759931967.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348735.P6706420976582116243

`A034448(n+1)/A348733(n+1)`
-/

namespace A348735.P6706420976582116243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A348733 (n + 1) : ℚ)

end

end A348735.P6706420976582116243

noncomputable section

/-- A348735: Denominator of Product((p+1)^e / ((p^e)+1)), when n = Product(p^e), with p primes, and e their exponents.

Offset 1, canonical program `A348735.P6706420976582116243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348733, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348735 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348735.P6706420976582116243.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A348733, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348735.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348945.P12569609886156020164

`A348944(n+1)-A000203(n+1)`
-/

namespace A348945.P12569609886156020164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348944 (n + 1) - A000203 (n + 1)

end

end A348945.P12569609886156020164

noncomputable section

/-- A348945: a(n) = A348944(n) - sigma(n), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

Offset 1, canonical program `A348945.P12569609886156020164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348945 (n : ℕ) : ℤ :=
  A348945.P12569609886156020164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348944, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348945.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348946.P1097876487276514908

`gcd(Δ[A160664(n)], A348944(n+1))`
-/

namespace A348946.P1097876487276514908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A348944 (n + 1))

end

end A348946.P1097876487276514908

noncomputable section

/-- A348946: a(n) = gcd(sigma(n), A348944(n)), where A348944 is the arithmetic mean of A003959 and A034448, and sigma is the sum of divisors function.

Offset 1, canonical program `A348946.P1097876487276514908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348946 (n : ℕ) : ℤ :=
  (A348946.P1097876487276514908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348970.P9872609502105985313

`A348029(n+1)-A211991(n+1)`
-/

namespace A348970.P9872609502105985313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1) - A211991 (n + 1)

end

end A348970.P9872609502105985313

noncomputable section

/-- A348970: a(n) = A003959(n) - A129283(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348970.P9872609502105985313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211991, A348029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348970 (n : ℕ) : ℤ :=
  A348970.P9872609502105985313.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211991, A348029, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348973.P427689290796728672

`A129283(n+1)/A348972(n+1)`
-/

namespace A348973.P427689290796728672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348973.P427689290796728672

noncomputable section

/-- A348973: Numerator of ratio A129283(n) / A003959(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348973.P427689290796728672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348973 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348973.P427689290796728672.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348974.P12713574773461642602

`A003959(n+1)/A348972(n+1)`
-/

namespace A348974.P12713574773461642602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A348972 (n + 1) : ℚ)

end

end A348974.P12713574773461642602

noncomputable section

/-- A348974: Denominator of ratio A129283(n) / A003959(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and A129283(n) is sum of n and its arithmetic derivative.

Offset 1, canonical program `A348974.P12713574773461642602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348974 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348974.P12713574773461642602.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358773.P1638866335392690510

`A165560(n)-A358771(n)`
-/

namespace A358773.P1638866335392690510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n - A358771 n

end

end A358773.P1638866335392690510

noncomputable section

/-- A358773: a(n) = 1 if the arithmetic derivative of n is of the form 4k+3, otherwise 0.

Offset 0, canonical program `A358773.P1638866335392690510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, A358771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358773 (n : ℕ) : ℤ :=
  A358773.P1638866335392690510.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, A358771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358773.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A364293.P11641041435075088768

`∩[2*n+1, A364292(n+1)]`
-/

namespace A364293.P11641041435075088768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P11641041435075088768

noncomputable section

/-- A364293: Odd numbers k for which A163511(k) <= k.

Offset 1, canonical program `A364293.P11641041435075088768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A364293 (n : ℕ) : ℤ :=
  (A364293.P11641041435075088768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A364293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364501.P8222697846744271233

`(n+1)/A364500(n+1)`
-/

namespace A364501.P8222697846744271233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A364500 (n + 1) : ℚ)

end

end A364501.P8222697846744271233

noncomputable section

/-- A364501: a(n) = n / gcd(n, A005940(n)).

Offset 1, canonical program `A364501.P8222697846744271233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364501.P8222697846744271233.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364501.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372502.P4800145136073142797

`A064547(n+1)+A372332(n+1)`
-/

namespace A372502.P4800145136073142797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1) + A372332 (n + 1)

end

end A372502.P4800145136073142797

noncomputable section

/-- A372502: The number of "Fermi-Dirac primes" (A050376) that divide n.

Offset 1, canonical program `A372502.P4800145136073142797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A372332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372502 (n : ℕ) : ℤ :=
  A372502.P4800145136073142797.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, A372332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381204.P350150440246821859

`A348494(A100994(n+2))`
-/

namespace A381204.P350150440246821859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348494 (A100994 (n + 2)).toNat

end

end A381204.P350150440246821859

noncomputable section

/-- A381204: a(n) is the gcd of the elements of the set of bases and exponents in the prime factorization of n.

Offset 2, canonical program `A381204.P350150440246821859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204 (n : ℕ) : ℤ :=
  A381204.P350150440246821859.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A381204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000879.P14717816069201064931

`A250474(n+1)-2+n`
-/

namespace A000879.P14717816069201064931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 2 + (n : ℤ)

end

end A000879.P14717816069201064931

noncomputable section

/-- A000879: Number of primes < prime(n)^2.

Offset 1, canonical program `A000879.P14717816069201064931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A000879 (n : ℕ) : ℤ :=
  A000879.P14717816069201064931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A000879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005941.P9595689460679922607

`∑{d}[n+1, A364557(#)]`
-/

namespace A005941.P9595689460679922607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A364557 d

end

end A005941.P9595689460679922607

noncomputable section

/-- A005941: Inverse of the Doudna sequence A005940.

Offset 1, canonical program `A005941.P9595689460679922607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A005941 (n : ℕ) : ℤ :=
  A005941.P9595689460679922607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. -/
def A005941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008965.P3100097894371980371

`A056295(n+1)+A000016(n+1)`
-/

namespace A008965.P3100097894371980371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 (n + 1) + A000016 (n + 1)

end

end A008965.P3100097894371980371

noncomputable section

/-- A008965: Number of necklaces of sets of beads containing a total of n beads.

Offset 1, canonical program `A008965.P3100097894371980371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A008965 (n : ℕ) : ℤ :=
  A008965.P3100097894371980371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A008965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031368.P3529547152887844414

`A219603(n+1)/A000040(n+1)`
-/

namespace A031368.P3529547152887844414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219603 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A031368.P3529547152887844414

noncomputable section

/-- A031368: Odd-indexed primes: a(n) = prime(2n-1).

Offset 1, canonical program `A031368.P3529547152887844414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A219603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A031368 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A031368.P3529547152887844414.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A219603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A031368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052499.P2273861346135896458

`1+A003754(n+1)`
-/

namespace A052499.P2273861346135896458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A003754 (n + 1)

end

end A052499.P2273861346135896458

noncomputable section

/-- A052499: If n is in the sequence then so are 2n and 4n-1.

Offset 0, canonical program `A052499.P2273861346135896458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052499 (n : ℕ) : ℤ :=
  A052499.P2273861346135896458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053636.P3307130638787149682

`2*n*A000016(n)`
-/

namespace A053636.P3307130638787149682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000016 n)

end

end A053636.P3307130638787149682

noncomputable section

/-- A053636: a(n) = Sum_{odd d|n} phi(d)*2^(n/d).

Offset 0, canonical program `A053636.P3307130638787149682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A053636 (n : ℕ) : ℤ :=
  A053636.P3307130638787149682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A053636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054272.P16500536369367462355

`A250474(n+1)-2`
-/

namespace A054272.P16500536369367462355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 2

end

end A054272.P16500536369367462355

noncomputable section

/-- A054272: Number of primes in the interval [prime(n), prime(n)^2].

Offset 1, canonical program `A054272.P16500536369367462355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054272 (n : ℕ) : ℤ :=
  A054272.P16500536369367462355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054539.P18146575541717922731

`A000016(n+3)/2`
-/

namespace A054539.P18146575541717922731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000016 (n + 3) : ℚ) / 2

end

end A054539.P18146575541717922731

noncomputable section

/-- A054539: A000016 / 2.

Offset 3, canonical program `A054539.P18146575541717922731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A054539 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054539.P18146575541717922731.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A054539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062533.P9907635279916940026

`A037225(A047845(n+1))`
-/

namespace A062533.P9907635279916940026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A047845 (n + 1)).toNat

end

end A062533.P9907635279916940026

noncomputable section

/-- A062533: a(n) = A000010(A014076(n)).

Offset 1, canonical program `A062533.P9907635279916940026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7740 terms. -/
def A062533 (n : ℕ) : ℤ :=
  A062533.P9907635279916940026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7740 terms. -/
def A062533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074919.P483110593070601993

`A078401(A000010(n+1)+∑[n])`
-/

namespace A074919.P483110593070601993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078401 (A000010 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A074919.P483110593070601993

noncomputable section

/-- A074919: Number of integers in {1, 2, ..., phi(n)} that are coprime to n.

Offset 1, canonical program `A074919.P483110593070601993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A074919 (n : ℕ) : ℤ :=
  A074919.P483110593070601993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A074919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075159.P14435593091515298809

`1+A075157(n)`
-/

namespace A075159.P14435593091515298809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A075157 n

end

end A075159.P14435593091515298809

noncomputable section

/-- A075159: Run lengths in the binary expansion of n-1 gives the vector of exponents in prime factorization of a(n), with the least significant run corresponding to the exponent of the least prime, 2.

Offset 1, canonical program `A075159.P14435593091515298809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075159 (n : ℕ) : ℤ :=
  A075159.P14435593091515298809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076246.P5818079948787332840

`A000010(A076245(n+2))`
-/

namespace A076246.P5818079948787332840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A076245 (n + 2)).toNat

end

end A076246.P5818079948787332840

noncomputable section

/-- A076246: Totients of those numbers at which values of A051547 increase: in these consecutive terms new prime powers arise, i.e., which did not occur in neither of preceding terms.

Offset 1, canonical program `A076246.P5818079948787332840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1923 terms. -/
def A076246 (n : ℕ) : ℤ :=
  A076246.P5818079948787332840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1923 terms. -/
def A076246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080103.P15352554582229907592

`gcd(A049084(A065514(n+3)), A065514(n+3))`
-/

namespace A080103.P15352554582229907592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049084 (A065514 (n + 3)).toNat) (A065514 (n + 3))

end

end A080103.P15352554582229907592

noncomputable section

/-- A080103: Greatest prime power in all composite numbers between n-th prime and next prime, a(n) = 1 if no such prime power exists.

Offset 2, canonical program `A080103.P15352554582229907592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A080103 (n : ℕ) : ℤ :=
  (A080103.P15352554582229907592.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A080103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082950.P198632103670576049

`A025474(n+1)^A025473(n+1)`
-/

namespace A082950.P198632103670576049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025474 (n + 1) : ℚ) ^ (A025473 (n + 1) : ℤ)

end

end A082950.P198632103670576049

noncomputable section

/-- A082950: Power base and exponent of n-th prime power exchanged.

Offset 1, canonical program `A082950.P198632103670576049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A025474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082950 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082950.P198632103670576049.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A025474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083345.P17056663291398447745

`A342001(n+1)/A369008(n+1)`
-/

namespace A083345.P17056663291398447745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (A369008 (n + 1) : ℚ)

end

end A083345.P17056663291398447745

noncomputable section

/-- A083345: Numerator of r(n) = Sum(e/p: n=Product(p^e)); a(n) = n' / gcd(n,n'), where n' is the arithmetic derivative of n.

Offset 1, canonical program `A083345.P17056663291398447745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A369008, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083345 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083345.P17056663291398447745.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A369008, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085729.P17974355859884815083

`A025474(n+1)*A025473(n+1)`
-/

namespace A085729.P17974355859884815083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1) * A025473 (n + 1)

end

end A085729.P17974355859884815083

noncomputable section

/-- A085729: Sum of prime factors of prime powers.

Offset 1, canonical program `A085729.P17974355859884815083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A025474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085729 (n : ℕ) : ℤ :=
  A085729.P17974355859884815083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A025474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086454.P16343334458700546911

`A025474(n+1)+1`
-/

namespace A086454.P16343334458700546911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1) + 1

end

end A086454.P16343334458700546911

noncomputable section

/-- A086454: Number of divisors of prime powers: tau(p^e).

Offset 1, canonical program `A086454.P16343334458700546911`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086454 (n : ℕ) : ℤ :=
  A086454.P16343334458700546911.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025474, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097106.P14132093488680178125

`(1-A010055(n+1))*A057820(A025528(n+1)+1)`
-/

namespace A097106.P14132093488680178125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010055 (n + 1)) * A057820 (A025528 (n + 1) + 1).toNat

end

end A097106.P14132093488680178125

noncomputable section

/-- A097106: a(n) = (Smallest prime power >= n) - (greatest prime power <= n).

Offset 1, canonical program `A097106.P14132093488680178125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097106 (n : ℕ) : ℤ :=
  A097106.P14132093488680178125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104326.P7744192618162139376

`A007088(A003754(n+1))`
-/

namespace A104326.P7744192618162139376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003754 (n + 1)).toNat

end

end A104326.P7744192618162139376

noncomputable section

/-- A104326: Dual Zeckendorf representation of n or the maximal (binary) Fibonacci representation. Also list of binary vectors not containing 00.

Offset 0, canonical program `A104326.P7744192618162139376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104326 (n : ℕ) : ℤ :=
  A104326.P7744192618162139376.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106761.P9151467794573401177

`∩[A061239(n+1), A306510(n+1)]`
-/

namespace A106761.P9151467794573401177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106761.P9151467794573401177

noncomputable section

/-- A106761: Primes with digit sum = 22.

Offset 1, canonical program `A106761.P9151467794573401177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A106761 (n : ℕ) : ℤ :=
  (A106761.P9151467794573401177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. -/
def A106761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107359.P9567277144982348641

`A003754(n+2)-A003754(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A107359.P9567277144982348641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2) - A003754 (n + 1)

end

end A107359.P9567277144982348641

noncomputable section

/-- A107359: a(n) = A003754(n+1) - A003754(n).

Offset 0, canonical program `A107359.P9567277144982348641`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107359 (n : ℕ) : ℤ :=
  A107359.P9567277144982348641.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107909.P15363396485693245278

`∪[A003754(n+1), A003714(n)]`
-/

namespace A107909.P15363396485693245278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107909.P15363396485693245278

noncomputable section

/-- A107909: Numbers having no consecutive zeros or no consecutive ones in binary representation.

Offset 0, canonical program `A107909.P15363396485693245278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107909 (n : ℕ) : ℤ :=
  (A107909.P15363396485693245278.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109443.P9246990492100124612

`∑[A031218(n+1)]`
-/

namespace A109443.P9246990492100124612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109443.P9246990492100124612

noncomputable section

/-- A109443: Cumulative sum of largest prime power <= n.

Offset 1, canonical program `A109443.P9246990492100124612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109443 (n : ℕ) : ℤ :=
  A109443.P9246990492100124612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112376.P15862557377952171335

`A025474(n+2)+A025473(n+2)`
-/

namespace A112376.P15862557377952171335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 2) + A025473 (n + 2)

end

end A112376.P15862557377952171335

noncomputable section

/-- A112376: Sum of base and exponent of prime powers.

Offset 1, canonical program `A112376.P15862557377952171335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112376 (n : ℕ) : ℤ :=
  A112376.P15862557377952171335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113418.P8722851097297736581

`(-1)^n*A117000(n+1)`
-/

namespace A113418.P8722851097297736581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A117000 (n + 1)

end

end A113418.P8722851097297736581

noncomputable section

/-- A113418: Expansion of (eta(q^2)^7*eta(q^4)/(eta(q)*eta(q^8))^2-1)/2 in powers of q.

Offset 1, canonical program `A113418.P8722851097297736581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113418 (n : ℕ) : ℤ :=
  A113418.P8722851097297736581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121362.P4931692809741161158

`A128616(n+1)-A128617(n+1)`
-/

namespace A121362.P4931692809741161158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (n + 1) - A128617 (n + 1)

end

end A121362.P4931692809741161158

noncomputable section

/-- A121362: Expansion of eta(q)*eta(q^6)*eta(q^10)*eta(q^15)/(eta(q^3)*eta(q^5)) in powers of q.

Offset 1, canonical program `A121362.P4931692809741161158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121362 (n : ℕ) : ℤ :=
  A121362.P4931692809741161158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124333.P12394758588652907739

`A020652(A002088(n)+n%A000010(n+1)+1)`
-/

namespace A124333.P12394758588652907739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (A002088 n + Int.tmod (n : ℤ) (A000010 (n + 1)) + 1).toNat

end

end A124333.P12394758588652907739

noncomputable section

/-- A124333: a(n) = ((n mod phi(n)) +1)th positive integer which is coprime to n, where phi(n) is number of positive integers which are <= n and are coprime to n.

Offset 1, canonical program `A124333.P12394758588652907739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A124333 (n : ℕ) : ℤ :=
  A124333.P12394758588652907739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A124333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129139.P5076504983765274251

`A078401(A000217(n)+A000005(n+1))`
-/

namespace A129139.P5076504983765274251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078401 (A000217 n + A000005 (n + 1)).toNat

end

end A129139.P5076504983765274251

noncomputable section

/-- A129139: a(n) = number of positive integers which are coprime to n and are <= d(n), where d(n) = A000005(n).

Offset 1, canonical program `A129139.P5076504983765274251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129139 (n : ℕ) : ℤ :=
  A129139.P5076504983765274251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132971.P9197609016375066540

`A085357(n)*A106400(n)`
-/

namespace A132971.P9197609016375066540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n * A106400 n

end

end A132971.P9197609016375066540

noncomputable section

/-- A132971: a(2*n) = a(n), a(4*n+1) = -a(n), a(4*n+3) = 0, with a(0) = 1.

Offset 0, canonical program `A132971.P9197609016375066540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132971 (n : ℕ) : ℤ :=
  A132971.P9197609016375066540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133659.P2628196581071993372

`∩[A034962(n+1), A060328(n+1)]`
-/

namespace A133659.P2628196581071993372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133659.P2628196581071993372

noncomputable section

/-- A133659: Primes that are the sum of three consecutive primes as well as the sum of three consecutive composite numbers.

Offset 1, canonical program `A133659.P2628196581071993372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1348 terms. -/
def A133659 (n : ℕ) : ℤ :=
  (A133659.P2628196581071993372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1348 terms. -/
def A133659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133771.P647352562912529458

`A005811(record[xor(2, A003754(n+1))])`
-/

namespace A133771.P647352562912529458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A003754 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133771.P647352562912529458

noncomputable section

/-- A133771: Number of runs (of equal bits) in the maximal Lucas binary (A130311) representation of n.

Offset 1, canonical program `A133771.P647352562912529458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A133771 (n : ℕ) : ℤ :=
  A133771.P647352562912529458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A133771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137294.P16640436568140118388

`∑[A087808(A261693(n))]`
-/

namespace A137294.P16640436568140118388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A261693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137294.P16640436568140118388

noncomputable section

/-- A137294: A polynomial-time algorithm for moving all seeds into one pot in a class of sowing positions.

Offset 1, canonical program `A137294.P16640436568140118388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137294 (n : ℕ) : ℤ :=
  A137294.P16640436568140118388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143121.P10222713866998147310

`A194939(A038722(n+1))`
-/

namespace A143121.P10222713866998147310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194939 (A038722 (n + 1)).toNat

end

end A143121.P10222713866998147310

noncomputable section

/-- A143121: Triangle read by rows, T(n,k) = Sum_{j=k..n} prime(j), 1 <= k <= n.

Offset 1, canonical program `A143121.P10222713866998147310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143121 (n : ℕ) : ℤ :=
  A143121.P10222713866998147310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147980.P8121745463830340896

`Δ[A000016(n)*A036453(n+1)]`
-/

namespace A147980.P8121745463830340896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n * A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147980.P8121745463830340896

noncomputable section

/-- A147980: Given a set of positive integers A={1,2,...,n-1,n}, n>=2. Take subsets of A of the form {1,...,n} so only subsets containing numbers 1 and n are allowed. Then a(1)=1 and a(n) is the number of subsets where arithmetic mean of the subset is an integer.

Offset 1, canonical program `A147980.P8121745463830340896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A147980 (n : ℕ) : ℤ :=
  A147980.P8121745463830340896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A147980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153033.P13807796216271674243

`A003754(A001690(n+1))`
-/

namespace A153033.P13807796216271674243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A001690 (n + 1)).toNat

end

end A153033.P13807796216271674243

noncomputable section

/-- A153033: Numbers with adjacent 1's and no adjacent 0's in binary expansion.

Offset 1, canonical program `A153033.P13807796216271674243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153033 (n : ℕ) : ℤ :=
  A153033.P13807796216271674243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156899.P6336677626184661476

`A031218(record[∏{p}[n, #]])`
-/

namespace A156899.P6336677626184661476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A156899.P6336677626184661476

noncomputable section

/-- A156899: a(n) = the largest prime power <= the n-th positive squarefree integer.

Offset 1, canonical program `A156899.P6336677626184661476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A156899 (n : ℕ) : ℤ :=
  A156899.P6336677626184661476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A156899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161225.P13624725564594958112

`A106737(A080079(n+1)-1)-1`
-/

namespace A161225.P13624725564594958112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A080079 (n + 1) - 1).toNat - 1

end

end A161225.P13624725564594958112

noncomputable section

/-- A161225: a(n) = number of distinct integers that can be constructed by removing one or more 0's from the binary representation of n, and concatenating while leaving the remaining digits in their same order.

Offset 1, canonical program `A161225.P13624725564594958112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161225 (n : ℕ) : ℤ :=
  A161225.P13624725564594958112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167850.P9444271778435231128

`1-A085405(A014311(n+1))`
-/

namespace A167850.P9444271778435231128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A085405 (A014311 (n + 1)).toNat

end

end A167850.P9444271778435231128

noncomputable section

/-- A167850: Triangle read by rows in which each row contains a finite triangle as shown below.

Offset 1, canonical program `A167850.P9444271778435231128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167850 (n : ℕ) : ℤ :=
  A167850.P9444271778435231128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174965.P13643991388117450283

`Δ[record[(n+1)%(A057820(n+1)+n)]]`
-/

namespace A174965.P13643991388117450283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A057820 (n + 1) + (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174965.P13643991388117450283

noncomputable section

/-- A174965: Length of the n-th run of consecutive terms in A000961.

Offset 1, canonical program `A174965.P13643991388117450283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A174965 (n : ℕ) : ℤ :=
  A174965.P13643991388117450283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A174965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181121.P4384913397738902959

`A051451(n+1)*A025473(n+2)/(A025473(n+2)-1)`
-/

namespace A181121.P4384913397738902959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051451 (n + 1) * A025473 (n + 2) : ℚ) / (A025473 (n + 2) - 1 : ℚ)

end

end A181121.P4384913397738902959

noncomputable section

/-- A181121: As n increases, the reciprocal of a(n) = asymptotic fraction of positive integers whose longest string of consecutive divisors is A181062(n).

Offset 1, canonical program `A181121.P4384913397738902959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A051451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181121 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181121.P4384913397738902959.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A051451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181631.P6568415442917729801

`A090996(A003754(n+2))`
-/

namespace A181631.P6568415442917729801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A003754 (n + 2)).toNat

end

end A181631.P6568415442917729801

noncomputable section

/-- A181631: Triangle by rows, number of leading 1's in the maximal Fibonacci representation (A104326).

Offset 1, canonical program `A181631.P6568415442917729801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, A090996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181631 (n : ℕ) : ℤ :=
  A181631.P6568415442917729801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, A090996, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181631.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192083.P12204997390210467682

`A003415(A056798(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192083.P12204997390210467682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A056798 (n + 1)).toNat

end

end A192083.P12204997390210467682

noncomputable section

/-- A192083: Arithmetic derivative of squares of prime powers: a(n) = A003415(A056798(n)).

Offset 1, canonical program `A192083.P12204997390210467682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A056798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192083 (n : ℕ) : ℤ :=
  A192083.P12204997390210467682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A056798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192083.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192084.P12604787591880010754

`A068346(A056798(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192084.P12604787591880010754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A056798 (n + 1)).toNat

end

end A192084.P12604787591880010754

noncomputable section

/-- A192084: Second arithmetic derivative of squares of prime powers: a(n)=A068346(A056798(n)).

Offset 1, canonical program `A192084.P12604787591880010754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056798, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192084 (n : ℕ) : ℤ :=
  A192084.P12604787591880010754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056798, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192084.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192133.P10741399618334184473

`A025473(n+1)-A025474(n+1)`
-/

namespace A192133.P10741399618334184473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) - A025474 (n + 1)

end

end A192133.P10741399618334184473

noncomputable section

/-- A192133: Difference of base and exponent of prime powers (cf. A000961).

Offset 1, canonical program `A192133.P10741399618334184473`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A025474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192133 (n : ℕ) : ℤ :=
  A192133.P10741399618334184473.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, A025474, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192134.P4831734951795111241

`A000961(n+1)-A192015(n+1)`
-/

namespace A192134.P4831734951795111241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A192015 (n + 1)

end

end A192134.P4831734951795111241

noncomputable section

/-- A192134: Difference between n-th prime power and its arithmetic derivative.

Offset 1, canonical program `A192134.P4831734951795111241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A192015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192134 (n : ℕ) : ℤ :=
  A192134.P4831734951795111241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A192015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A192134.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192188.P14315286780405415744

`lt[A192015(n+1), A246655(n+1)]+1`
-/

namespace A192188.P14315286780405415744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A192188.P14315286780405415744

noncomputable section

/-- A192188: Positions of prime powers p^e with e <= p within A000961.

Offset 1, canonical program `A192188.P14315286780405415744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9977 terms. -/
def A192188 (n : ℕ) : ℤ :=
  (A192188.P14315286780405415744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9977 terms. -/
def A192188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202297.P4781330736124741313

`A109724(n)*A109724(n+1)`
-/

namespace A202297.P4781330736124741313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 n * A109724 (n + 1)

end

end A202297.P4781330736124741313

noncomputable section

/-- A202297: Product of the sum of the first n^2 primes by the sum of the first (n+1)^2 primes.

Offset 0, canonical program `A202297.P4781330736124741313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202297 (n : ℕ) : ℤ :=
  A202297.P4781330736124741313.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A109724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A202297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A219656.P7922601538606286653

`∑[A219652(n)]`
-/

namespace A219656.P7922601538606286653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219656.P7922601538606286653

noncomputable section

/-- A219656: Partial sums of A219652.

Offset 0, canonical program `A219656.P7922601538606286653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219656 (n : ℕ) : ℤ :=
  A219656.P7922601538606286653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227350.P16496982503593624174

`A227349(n-(Δ[n²]-2^ceil(log2(n+1))))`
-/

namespace A227350.P16496982503593624174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (SequenceMachineLib.roundAway ((n : ℚ) - (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))).toNat

end

end A227350.P16496982503593624174

noncomputable section

/-- A227350: Product of lengths of runs of 0-bits in binary representation of n, or 1 if no nonleading zeros present.

Offset 0, canonical program `A227350.P16496982503593624174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A227350 (n : ℕ) : ℤ :=
  A227350.P16496982503593624174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A227350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230413.P15276222400216239209

`∑[A230412(n)]-1`
-/

namespace A230413.P15276222400216239209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A230413.P15276222400216239209

noncomputable section

/-- A230413: a(0)=0 and from then on, the partial sums of A230412 summed from the term a(1) onward.

Offset 0, canonical program `A230413.P15276222400216239209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230413 (n : ℕ) : ℤ :=
  A230413.P15276222400216239209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232640.P5870212637481075355

`A135533(A003754(n+2))`
-/

namespace A232640.P5870212637481075355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135533 (A003754 (n + 2)).toNat

end

end A232640.P5870212637481075355

noncomputable section

/-- A232640: Sequence (or tree) generated by these rules: 1 is in S, and if x is in S, then x + 1 and 2*x + 1 are in S, and duplicates are deleted as they occur.

Offset 1, canonical program `A232640.P5870212637481075355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A232640 (n : ℕ) : ℤ :=
  A232640.P5870212637481075355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A232640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236386.P13479699085904531567

`eq[1, A109983(A000010(n+1))]+1`
-/

namespace A236386.P13479699085904531567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109983 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236386.P13479699085904531567

noncomputable section

/-- A236386: Numbers m such that phi(m) is an oblong number.

Offset 1, canonical program `A236386.P13479699085904531567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A236386 (n : ℕ) : ℤ :=
  (A236386.P13479699085904531567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. -/
def A236386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238898.P6484849418121387212

`(2-A000007(n))*A031218(A028310(n))`
-/

namespace A238898.P6484849418121387212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A031218 (A028310 n).toNat

end

end A238898.P6484849418121387212

noncomputable section

/-- A238898: Least number m such that lcm(1,2,3,...,m) = lcm(n,n+1,n+2,...,m).

Offset 1, canonical program `A238898.P6484849418121387212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238898 (n : ℕ) : ℤ :=
  A238898.P6484849418121387212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246595.P5484153789125895724

`A227349(n)²`
-/

namespace A246595.P5484153789125895724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n ^ 2

end

end A246595.P5484153789125895724

noncomputable section

/-- A246595: Run Length Transform of squares.

Offset 0, canonical program `A246595.P5484153789125895724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246595 (n : ℕ) : ℤ :=
  A246595.P5484153789125895724.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247588.P1851453756911384571

`∑[n+2]-A228172(n+1)`
-/

namespace A247588.P1851453756911384571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A228172 (n + 1)

end

end A247588.P1851453756911384571

noncomputable section

/-- A247588: Number of integer-sided acute triangles with largest side n.

Offset 1, canonical program `A247588.P1851453756911384571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247588 (n : ℕ) : ℤ :=
  A247588.P1851453756911384571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253081.P14824692146523587717

`∑[A246029(n)]`
-/

namespace A253081.P14824692146523587717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253081.P14824692146523587717

noncomputable section

/-- A253081: Partial sums of A246029.

Offset 0, canonical program `A253081.P14824692146523587717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253081 (n : ℕ) : ℤ :=
  A253081.P14824692146523587717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255500.P15062980389255917047

`A229740(A024620(n+1))`
-/

namespace A255500.P15062980389255917047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229740 (A024620 (n + 1)).toNat

end

end A255500.P15062980389255917047

noncomputable section

/-- A255500: a(n) = (p^9 + 5*p^8 + 4*p^7 - p^6 - 5*p^5 + 2*p^4)/6 where p is the n-th prime.

Offset 1, canonical program `A255500.P15062980389255917047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A255500 (n : ℕ) : ℤ :=
  A255500.P15062980389255917047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9890 terms. -/
def A255500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260143.P3436632720027351610

`∪[A052213(n+1), A083793(n+1)]`
-/

namespace A260143.P3436632720027351610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260143.P3436632720027351610

noncomputable section

/-- A260143: Runs of consecutive integers with same prime signature.

Offset 1, canonical program `A260143.P3436632720027351610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260143 (n : ℕ) : ℤ :=
  (A260143.P3436632720027351610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264739.P2109143012642939109

`char[A037225(n)-1]`
-/

namespace A264739.P2109143012642939109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A264739.P2109143012642939109

noncomputable section

/-- A264739: Characteristic function of A002202, the range of Euler's totient function A000010.

Offset 1, canonical program `A264739.P2109143012642939109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264739 (n : ℕ) : ℤ :=
  (A264739.P2109143012642939109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273662.P1375416254378545524

`A257682(n+1)-1`
-/

namespace A273662.P1375416254378545524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257682 (n + 1) - 1

end

end A273662.P1375416254378545524

noncomputable section

/-- A273662: Least monotonic left inverse for A256450: a(1) = 0; for n > 1, a(n) = A257680(n) + a(n-1).

Offset 1, canonical program `A273662.P1375416254378545524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273662 (n : ℕ) : ℤ :=
  A273662.P1375416254378545524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275120.P14177389286466694945

`A057820(n+1)+C(2, n+2)`
-/

namespace A275120.P14177389286466694945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A275120.P14177389286466694945

noncomputable section

/-- A275120: List the least common multiples of {1, 2, ..., k} for k = 0, 1, ...; this sequence gives the length of the n-th block of consecutive equal numbers.

Offset 1, canonical program `A275120.P14177389286466694945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275120 (n : ℕ) : ℤ :=
  A275120.P14177389286466694945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276781.P2604158077506703315

`2-A031218(n+1)+n`
-/

namespace A276781.P2604158077506703315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A031218 (n + 1) + (n : ℤ)

end

end A276781.P2604158077506703315

noncomputable section

/-- A276781: a(n) = 1+n-(nearest power of prime <= n); for n > 1, a(n) = minimal b such that the numbers binomial(n,k) for b <= k <= n-b have a common divisor greater than 1.

Offset 1, canonical program `A276781.P2604158077506703315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276781 (n : ℕ) : ℤ :=
  A276781.P2604158077506703315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277196.P18269893961211515832

`A107079(A277006(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277196.P18269893961211515832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A277006 n).toNat

end

end A277196.P18269893961211515832

noncomputable section

/-- A277196: Permutation of natural numbers: a(n) = A107079(A277006(n)).

Offset 0, canonical program `A277196.P18269893961211515832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107079, A277006, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277196 (n : ℕ) : ℤ :=
  A277196.P18269893961211515832.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107079, A277006, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277332.P11800124899377962376

`A253565(A003714(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277332.P11800124899377962376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A003714 n).toNat

end

end A277332.P11800124899377962376

noncomputable section

/-- A277332: a(n) = A253565(A003714(n)).

Offset 0, canonical program `A277332.P11800124899377962376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A253565, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277332 (n : ℕ) : ℤ :=
  A277332.P11800124899377962376.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A253565, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277780.P4452864541001446991

`A050985(n+1)*A000578(1+A048766(A008834(n+1)))`
-/

namespace A277780.P4452864541001446991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) * A000578 (1 + A048766 (A008834 (n + 1)).toNat).toNat

end

end A277780.P4452864541001446991

noncomputable section

/-- A277780: a(n) is the least k > n such that n*k^2 is a cube.

Offset 1, canonical program `A277780.P4452864541001446991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, A048766, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277780 (n : ℕ) : ℤ :=
  A277780.P4452864541001446991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008834, A048766, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A277780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283972.P15395786106214343558

`∑[-Δ[A227349(n)]]+n`
-/

namespace A283972.P15395786106214343558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A283972.P15395786106214343558

noncomputable section

/-- A283972: a(n) = n minus (product of lengths of 1-runs in binary representation of n) = n - A227349(n).

Offset 1, canonical program `A283972.P15395786106214343558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283972 (n : ℕ) : ℤ :=
  A283972.P15395786106214343558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286587.P14335713023111587869

`A006047(A244154(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286587.P14335713023111587869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A244154 n).toNat

end

end A286587.P14335713023111587869

noncomputable section

/-- A286587: a(n) = A006047(A244154(n)).

Offset 0, canonical program `A286587.P14335713023111587869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286587 (n : ℕ) : ℤ :=
  A286587.P14335713023111587869.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286587.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293427.P4225540709121361474

`record[∏{p}[A003754(n+1), #]]`
-/

namespace A293427.P4225540709121361474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293427.P4225540709121361474

noncomputable section

/-- A293427: Squarefree numbers such that there are no adjacent 0's in their binary expansions.

Offset 1, canonical program `A293427.P4225540709121361474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8107 terms. -/
def A293427 (n : ℕ) : ℤ :=
  (A293427.P4225540709121361474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8107 terms. -/
def A293427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294244.P14142542812315842556

`A294236(2*(n+1))`
-/

namespace A294244.P14142542812315842556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294236 (2 * (n + 1))

end

end A294244.P14142542812315842556

noncomputable section

/-- A294244: Sum of the smaller parts of the partitions of 2n into two parts with larger part nonsquarefree.

Offset 1, canonical program `A294244.P14142542812315842556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294244 (n : ℕ) : ℤ :=
  A294244.P14142542812315842556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295895.P16373896587667801485

`A000035(A295894(n))`
-/

namespace A295895.P16373896587667801485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295894 n).toNat

end

end A295895.P16373896587667801485

noncomputable section

/-- A295895: Parity of the binary weight of the contents of node n in Doudna-tree (A005940).

Offset 0, canonical program `A295895.P16373896587667801485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295895 (n : ℕ) : ℤ :=
  A295895.P16373896587667801485.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300668.P3762773084760890773

`A000016(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300668.P3762773084760890773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (2 * n)

end

end A300668.P3762773084760890773

noncomputable section

/-- A300668: a(n) = A000016(2*n).

Offset 0, canonical program `A300668.P3762773084760890773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000016, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300668 (n : ℕ) : ℤ :=
  A300668.P3762773084760890773.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000016, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306709.P14333036255638275458

`gcd(A001414(n+1), A167344(n+1))%(n+1)`
-/

namespace A306709.P14333036255638275458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A167344 (n + 1)) % (n + 1)

end

end A306709.P14333036255638275458

noncomputable section

/-- A306709: For n > 1, a(n) = gcd(A001414(n), A167344(n)) where A001414(n) is the sum of primes p dividing n (with repetition) and A167344(n) = b(n) is the totally multiplicative sequence with b(p) = (p-1)*(p+1) = p^2 - 1; a(1) = 0.

Offset 1, canonical program `A306709.P14333036255638275458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306709 (n : ℕ) : ℤ :=
  (A306709.P14333036255638275458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318326.P16485873540069210944

`A318325(n+1)-A051953(n+1)`
-/

namespace A318326.P16485873540069210944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318325 (n + 1) - A051953 (n + 1)

end

end A318326.P16485873540069210944

noncomputable section

/-- A318326: a(n) = Sum_{d|n} [moebius(n/d) < 0]*(sigma(d)-d).

Offset 1, canonical program `A318326.P16485873540069210944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A318325, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318326 (n : ℕ) : ℤ :=
  A318326.P16485873540069210944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A318325, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318654.P4089455956200200647

`lt[0, A318655(n+2)]+2`
-/

namespace A318654.P4089455956200200647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A318654.P4089455956200200647

noncomputable section

/-- A318654: Positions of even terms in A318649.

Offset 1, canonical program `A318654.P4089455956200200647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654 (n : ℕ) : ℤ :=
  (A318654.P4089455956200200647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323506.P376847477820473957

`A323505(n)/A246660(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323506.P376847477820473957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323505 n : ℚ) / (A246660 n : ℚ)

end

end A323506.P376847477820473957

noncomputable section

/-- A323506: a(n) = A323505(n) / A246660(n).

Offset 0, canonical program `A323506.P376847477820473957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246660, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323506.P376847477820473957.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246660, A323505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324964.P8088303540979074771

`A000035(n)*A085357(n)`
-/

namespace A324964.P8088303540979074771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A085357 n

end

end A324964.P8088303540979074771

noncomputable section

/-- A324964: a(n) = A000139(n) mod 2; Characteristic function of odd fibbinary numbers (A022341).

Offset 0, canonical program `A324964.P8088303540979074771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085357, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324964 (n : ℕ) : ℤ :=
  A324964.P8088303540979074771.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085357, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324964.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328206.P13695476544207304548

`∩[A328205(n+1)-1, A328205(n+1)]`
-/

namespace A328206.P13695476544207304548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328205 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328206.P13695476544207304548

noncomputable section

/-- A328206: Starts of runs of 3 consecutive factorial base Niven numbers (A118363).

Offset 1, canonical program `A328206.P13695476544207304548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A328206 (n : ℕ) : ℤ :=
  (A328206.P13695476544207304548.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A328206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331191.P5013895762952657066

`eq[0, A178226(A003754(n+1))]`
-/

namespace A331191.P5013895762952657066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A003754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331191.P5013895762952657066

noncomputable section

/-- A331191: Numbers whose dual Zeckendorf representations (A104326) are palindromic.

Offset 1, canonical program `A331191.P5013895762952657066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A331191 (n : ℕ) : ℤ :=
  (A331191.P5013895762952657066.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A331191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332224.P12664818339526450802

`A087808(A000203(n+1))`
-/

namespace A332224.P12664818339526450802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A000203 (n + 1)).toNat

end

end A332224.P12664818339526450802

noncomputable section

/-- A332224: a(n) = A087808(sigma(n)).

Offset 1, canonical program `A332224.P12664818339526450802`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332224 (n : ℕ) : ℤ :=
  A332224.P12664818339526450802.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333055.P2793698031352279352

`∩[A005237(n+1), A083792(n+1)-1]`
-/

namespace A333055.P2793698031352279352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083792 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333055.P2793698031352279352

noncomputable section

/-- A333055: Numbers k such that k and k+1 have different (ordered) prime signatures and d(k) = d(k+1), where d(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A333055.P2793698031352279352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A333055 (n : ℕ) : ℤ :=
  (A333055.P2793698031352279352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A333055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335131.P11771733375200101273

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A083542(n+2)]`
-/

namespace A335131.P11771733375200101273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A083542 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335131.P11771733375200101273

noncomputable section

/-- A335131: a(n) = Sum_{k=1..n} phi(k)*phi(k+1)*phi(k+2), where phi(k) = A000010(k) is Euler's totient function.

Offset 1, canonical program `A335131.P11771733375200101273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335131.P11771733375200101273.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A335131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337376.P10436570575764964389

`A005940(1+n)/A337375(n)`
-/

namespace A337376.P10436570575764964389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (1 + n) : ℚ) / (A337375 n : ℚ)

end

end A337376.P10436570575764964389

noncomputable section

/-- A337376: Primorial deflation (numerator) of Doudna-tree.

Offset 0, canonical program `A337376.P10436570575764964389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A337375, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337376 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337376.P10436570575764964389.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A337375, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337377.P7652466309863167324

`A005940(floor(n/(xor(n, n+1)+1))+1)/A337375(n)`
-/

namespace A337377.P7652466309863167324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005940 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat : ℚ) / (A337375 n : ℚ)

end

end A337377.P7652466309863167324

noncomputable section

/-- A337377: Primorial deflation (denominator) of Doudna-tree.

Offset 0, canonical program `A337377.P7652466309863167324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A337377 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337377.P7652466309863167324.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A337377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339902.P10845326846020407518

`∑{e}[A290077(A124108(n)), #]`
-/

namespace A339902.P10845326846020407518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (A124108 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A339902.P10845326846020407518

noncomputable section

/-- A339902: Number of prime divisors of A339821(n), counted with multiplicity.

Offset 0, canonical program `A339902.P10845326846020407518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A339902 (n : ℕ) : ℤ :=
  (A339902.P10845326846020407518.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A339902.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A342462.P8891341993698202582

`A276150(A329886(n))`
-/

namespace A342462.P8891341993698202582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A329886 n).toNat

end

end A342462.P8891341993698202582

noncomputable section

/-- A342462: Sum of digits when A329886(n) is written in primorial base, where A329886 is the primorial inflation of Doudna-tree.

Offset 0, canonical program `A342462.P8891341993698202582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A329886, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342462 (n : ℕ) : ℤ :=
  A342462.P8891341993698202582.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, A329886, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342925.P15461664039980779065

`A351568(n+1)*A351571(n+1)+A351569(n+1)*A351570(n+1)`
-/

namespace A342925.P15461664039980779065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (n + 1) * A351571 (n + 1) + A351569 (n + 1) * A351570 (n + 1)

end

end A342925.P15461664039980779065

noncomputable section

/-- A342925: a(n) = A003415(sigma(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

Offset 1, canonical program `A342925.P15461664039980779065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, A351569, A351570, A351571, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342925 (n : ℕ) : ℤ :=
  A342925.P15461664039980779065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351568, A351569, A351570, A351571, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344182.P4846288778226888907

`xor(A344026(n), A344028(n))`
-/

namespace A344182.P4846288778226888907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344026 n) (A344028 n)

end

end A344182.P4846288778226888907

noncomputable section

/-- A344182: a(n) = A344026(n) XOR A344028(n).

Offset 0, canonical program `A344182.P4846288778226888907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344182 (n : ℕ) : ℤ :=
  A344182.P4846288778226888907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345043.P6507924935837030801

`A344998(n+1)-A344999(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345043.P6507924935837030801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - A344999 (n + 1)

end

end A345043.P6507924935837030801

noncomputable section

/-- A345043: a(n) = A344998(n) - A344999(n).

Offset 1, canonical program `A345043.P6507924935837030801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344998, A344999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345043 (n : ℕ) : ℤ :=
  A345043.P6507924935837030801.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344998, A344999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348037.P6839173858251422796

`A003557(n+1)/A348039(n+1)`
-/

namespace A348037.P6839173858251422796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A348039 (n + 1) : ℚ)

end

end A348037.P6839173858251422796

noncomputable section

/-- A348037: a(n) = n / gcd(n, A003968(n)), where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

Offset 1, canonical program `A348037.P6839173858251422796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348039, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348037.P6839173858251422796.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348039, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348497.P17636032033753838393

`A003557(n+1)*A348498(n+1)`
-/

namespace A348497.P17636032033753838393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A348498 (n + 1)

end

end A348497.P17636032033753838393

noncomputable section

/-- A348497: a(n) = gcd(A003415(n), A347130(n)), where A003415 is the arithmetic derivative and A347130 is its Dirichlet convolution with the identity function.

Offset 1, canonical program `A348497.P17636032033753838393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348498, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348497 (n : ℕ) : ℤ :=
  A348497.P17636032033753838393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348498, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348497.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349171.P4420363583333488221

`A018804(n+1)+A349141(n+1)`
-/

namespace A349171.P4420363583333488221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) + A349141 (n + 1)

end

end A349171.P4420363583333488221

noncomputable section

/-- A349171: a(n) = Sum_{d|n} phi(d) * A003959(n/d), where A003959 is fully multiplicative with a(p) = (p+1), and phi is Euler totient function.

Offset 1, canonical program `A349171.P4420363583333488221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A349141, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349171 (n : ℕ) : ℤ :=
  A349171.P4420363583333488221.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, A349141, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352104.P4259153123948201544

`A007953(A352103(n))`
-/

namespace A352104.P4259153123948201544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A352103 n).toNat

end

end A352104.P4259153123948201544

noncomputable section

/-- A352104: a(n) is the number of 1's in the maximal tribonacci representation of n (A352103).

Offset 0, canonical program `A352104.P4259153123948201544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352104 (n : ℕ) : ℤ :=
  A352104.P4259153123948201544.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352104.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353351.P15237495861246541086

`A353328(n+1)+A353329(n+1)`
-/

namespace A353351.P15237495861246541086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353328 (n + 1) + A353329 (n + 1)

end

end A353351.P15237495861246541086

noncomputable section

/-- A353351: Number of divisors d of n for which A048675(d) is not a multiple of 3.

Offset 1, canonical program `A353351.P15237495861246541086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353328, A353329, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353351 (n : ℕ) : ℤ :=
  A353351.P15237495861246541086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353328, A353329, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353351.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356759.P17403706661082396773

`A022290(A057889(A003754(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356759.P17403706661082396773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A057889 (A003754 (n + 1)).toNat).toNat

end

end A356759.P17403706661082396773

noncomputable section

/-- A356759: Bit-reverse the odd part of the dual Zeckendorf representation of n: a(n) = A022290(A057889(A003754(n+1))).

Offset 0, canonical program `A356759.P17403706661082396773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356759 (n : ℕ) : ℤ :=
  A356759.P17403706661082396773.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, A022290, A057889, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356771.P9439761422347141107

`A022290(and(A003714(n), A003754(n+1)))`
-/

namespace A356771.P9439761422347141107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (Int.land (A003714 n) (A003754 (n + 1))).toNat

end

end A356771.P9439761422347141107

noncomputable section

/-- A356771: a(n) is the sum of the Fibonacci numbers in common in the Zeckendorf and dual Zeckendorf representations of n.

Offset 0, canonical program `A356771.P9439761422347141107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 986 terms. -/
def A356771 (n : ℕ) : ℤ :=
  A356771.P9439761422347141107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 986 terms. -/
def A356771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356894.P3548736647204316849

`∑{digits}[A352103(n), 1-#]`
-/

namespace A356894.P3548736647204316849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A356894.P3548736647204316849

noncomputable section

/-- A356894: a(n) is the number of 0's in the maximal tribonacci representation of n (A352103).

Offset 0, canonical program `A356894.P3548736647204316849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356894 (n : ℕ) : ℤ :=
  A356894.P3548736647204316849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359833.P15086300142529714947

`A000045(∏{e}[n+1, #])*A355689(n+1)`
-/

namespace A359833.P15086300142529714947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A355689 (n + 1)

end

end A359833.P15086300142529714947

noncomputable section

/-- A359833: Dirichlet inverse of A359832, where A359832(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

Offset 1, canonical program `A359833.P15086300142529714947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359833 (n : ℕ) : ℤ :=
  A359833.P15086300142529714947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363700.P13614704223880734762

`A037225(A000040(n+1))`
-/

namespace A363700.P13614704223880734762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 (A000040 (n + 1)).toNat

end

end A363700.P13614704223880734762

noncomputable section

/-- A363700: a(n) = phi(2*prime(n)+1).

Offset 1, canonical program `A363700.P13614704223880734762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A037225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363700 (n : ℕ) : ℤ :=
  A363700.P13614704223880734762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A037225, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363700.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364019.P5738425657626568886

`∑{d}[n+1, A000010(#)*A364043((n+1)/#)]`
-/

namespace A364019.P5738425657626568886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364019.P5738425657626568886

noncomputable section

/-- A364019: Expansion of Sum_{k>0} k * x^k / (1 + x^(5*k)).

Offset 1, canonical program `A364019.P5738425657626568886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364019 (n : ℕ) : ℤ :=
  A364019.P5738425657626568886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364232.P3353364334386472060

`∑{d}[n+1, A001817(#)*A325596((n+1)/#)]`
-/

namespace A364232.P3353364334386472060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001817 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364232.P3353364334386472060

noncomputable section

/-- A364232: Expansion of Sum_{k>=0} x^(3*k+1) / (1 + x^(3*k+1))^2.

Offset 1, canonical program `A364232.P3353364334386472060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364232 (n : ℕ) : ℤ :=
  A364232.P3353364334386472060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364235.P979171957751888080

`∑{d}[n+1, A001822(#)*A325596((n+1)/#)]`
-/

namespace A364235.P979171957751888080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001822 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364235.P979171957751888080

noncomputable section

/-- A364235: Expansion of Sum_{k>=0} x^(3*k+2) / (1 + x^(3*k+2))^2.

Offset 1, canonical program `A364235.P979171957751888080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364235 (n : ℕ) : ℤ :=
  A364235.P979171957751888080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364542.P8346645904742885432

`lt[n, A324394(n)*A324395(n)]+1`
-/

namespace A364542.P8346645904742885432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 n * A324395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364542.P8346645904742885432

noncomputable section

/-- A364542: Numbers k for which A005940(k) >= k.

Offset 1, canonical program `A364542.P8346645904742885432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364542 (n : ℕ) : ℤ :=
  (A364542.P8346645904742885432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364558.P4794245862484388362

`A364557(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364558.P4794245862484388362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364557 (n + 1) - A000010 (n + 1)

end

end A364558.P4794245862484388362

noncomputable section

/-- A364558: a(n) = A364557(n) - A000010(n), where A364557 is the Möbius transform of A005941, and A000010 (Euler phi) is the Möbius transform of A000027.

Offset 1, canonical program `A364558.P4794245862484388362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A364557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364558 (n : ℕ) : ℤ :=
  A364558.P4794245862484388362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A364557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364566.P8108627064955290039

`lt[A364557(n+1), A000010(n+1)]+1`
-/

namespace A364566.P8108627064955290039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364566.P8108627064955290039

noncomputable section

/-- A364566: Numbers k such that A364557(k) < A000010(k), where A364557 is the Möbius transform of A005941, and A000010 is Euler totient function phi.

Offset 1, canonical program `A364566.P8108627064955290039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A364566 (n : ℕ) : ℤ :=
  (A364566.P8108627064955290039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A364566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365538.P13640182443914891217

`A048896(n)*A085357(n)`
-/

namespace A365538.P13640182443914891217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A085357 n

end

end A365538.P13640182443914891217

noncomputable section

/-- A365538: a(0) = 1; otherwise, for i >= 0, a(4i+0) = a(4i+1) = a(2i), a(4i+2) = 2*a(2i+1), a(4i+3) = 0.

Offset 0, canonical program `A365538.P13640182443914891217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365538 (n : ℕ) : ℤ :=
  A365538.P13640182443914891217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366643.P15455375307676145949

`A046951(A165725(n+1)*A165725(n+1))`
-/

namespace A366643.P15455375307676145949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A165725 (n + 1) * A165725 (n + 1)).toNat

end

end A366643.P15455375307676145949

noncomputable section

/-- A366643: a(n) is the number of divisors of n that are coprime to the terms of A366642.

Offset 1, canonical program `A366643.P15455375307676145949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366643 (n : ℕ) : ℤ :=
  A366643.P15455375307676145949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368741.P3043197867533134676

`∑{d}[n+1, A000010(#)*A132739((n+1)/#)]`
-/

namespace A368741.P3043197867533134676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A132739 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368741.P3043197867533134676

noncomputable section

/-- A368741: a(n) = Sum_{k = 1..n} gcd(5*k + 1, n).

Offset 1, canonical program `A368741.P3043197867533134676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368741 (n : ℕ) : ℤ :=
  A368741.P3043197867533134676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368909.P13853718524711062460

`A165560(A324054(n))`
-/

namespace A368909.P13853718524711062460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A324054 n).toNat

end

end A368909.P13853718524711062460

noncomputable section

/-- A368909: a(n) = A003415(sigma(A005940(1+n))) mod 2, where A003415 is the arithmetic derivative, sigma is the sum of divisors function, and A005940 is the Doudna sequence.

Offset 0, canonical program `A368909.P13853718524711062460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, A324054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368909 (n : ℕ) : ℤ :=
  A368909.P13853718524711062460.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, A324054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368991.P7436517708181029196

`a(n-1)+A368990(n)` with `a(0)=0, a(1)=0`
-/

namespace A368991.P7436517708181029196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + A368990 n

end

end A368991.P7436517708181029196

noncomputable section

/-- A368991: Doudna-gram for nondeficient numbers; Partial sums of A368990.

Offset 0, canonical program `A368991.P7436517708181029196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368991 (n : ℕ) : ℤ :=
  A368991.P7436517708181029196.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368990, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368991.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369029.P15471958380729521510

`A014963(A253565(n))`
-/

namespace A369029.P15471958380729521510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A253565 n).toNat

end

end A369029.P15471958380729521510

noncomputable section

/-- A369029: Exponential of Mangoldt function permuted by A253565.

Offset 0, canonical program `A369029.P15471958380729521510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A253565, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369029 (n : ℕ) : ℤ :=
  A369029.P15471958380729521510.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, A253565, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A369029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369663.P9662238559183058676

`∩[A359163(n+1), A369661(n+1)]`
-/

namespace A369663.P9662238559183058676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369663.P9662238559183058676

noncomputable section

/-- A369663: Numbers k of the form 4m+3, whose arithmetic derivative k' is of the form 4u+2, and k' has an even number of prime factors.

Offset 1, canonical program `A369663.P9662238559183058676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A369663 (n : ℕ) : ℤ :=
  (A369663.P9662238559183058676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A369663.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A371149.P8047170178604340507

`A025474(6*A357605(n+1))`
-/

namespace A371149.P8047170178604340507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (6 * A357605 (n + 1)).toNat

end

end A371149.P8047170178604340507

noncomputable section

/-- A371149: Let n = Product_{j=1..k} p_j^e_j and gpf(n)! = Product_{j=1..k} p_j^f_j, where p_j = A000040(j) is the j-th prime and p_k = gpf(n) = A006530(n) is the greatest prime factor of n. a(n) is the denominator of the maximum of e_j/f_j.

Offset 2, canonical program `A371149.P8047170178604340507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A371149 (n : ℕ) : ℤ :=
  A371149.P8047170178604340507.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A371149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376596.P3065979362946494423

`Δ[A057820(n+1)]`
-/

namespace A376596.P3065979362946494423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376596.P3065979362946494423

noncomputable section

/-- A376596: Second differences of consecutive prime-powers inclusive (A000961). First differences of A057820.

Offset 1, canonical program `A376596.P3065979362946494423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376596 (n : ℕ) : ℤ :=
  A376596.P3065979362946494423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377289.P15347818859736990215

`A000040(n+1)-A065514(n+1)`
-/

namespace A377289.P15347818859736990215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065514 (n + 1)

end

end A377289.P15347818859736990215

noncomputable section

/-- A377289: Difference between prime(n) and the previous prime-power (exclusive).

Offset 1, canonical program `A377289.P15347818859736990215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377289 (n : ℕ) : ℤ :=
  A377289.P15347818859736990215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377781.P17886322484362975724

`Δ[A065514(n+1)]`
-/

namespace A377781.P17886322484362975724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377781.P17886322484362975724

noncomputable section

/-- A377781: First differences of A065514(n) = greatest number < prime(n) that is 1 or a prime-power.

Offset 1, canonical program `A377781.P17886322484362975724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A377781 (n : ℕ) : ℤ :=
  A377781.P17886322484362975724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A377781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378615.P10846133080896541724

`A368748(n)+a(n-1)` with `a(0)=1`
-/

namespace A378615.P10846133080896541724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A368748 n + a (n - 1)

end

end A378615.P10846133080896541724

noncomputable section

/-- A378615: Number of non prime powers <= prime(n).

Offset 1, canonical program `A378615.P10846133080896541724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378615 (n : ℕ) : ℤ :=
  A378615.P10846133080896541724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379155.P15562892955624155800

`eq[1, A366835(n+1)]+1`
-/

namespace A379155.P15562892955624155800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379155.P15562892955624155800

noncomputable section

/-- A379155: Numbers k such that there is a unique prime between the k-th and (k+1)-th prime powers (A246655).

Offset 1, canonical program `A379155.P15562892955624155800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A379155 (n : ℕ) : ℤ :=
  (A379155.P15562892955624155800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A379155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379372.P8846924178214362787

`filter[A234099(n+1), A354926(#)]`
-/

namespace A379372.P8846924178214362787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A379372.P8846924178214362787

noncomputable section

/-- A379372: Sphenic numbers k such that 2*k+1 is also a sphenic number.

Offset 1, canonical program `A379372.P8846924178214362787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A379372 (n : ℕ) : ℤ :=
  A379372.P8846924178214362787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1906 terms. -/
def A379372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382255.P11079232135365074107

`A246029(A035327(2*n+1))*A246029(n)`
-/

namespace A382255.P11079232135365074107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A035327 (2 * n + 1)).toNat * A246029 n

end

end A382255.P11079232135365074107

noncomputable section

/-- A382255: Heinz number of the partition corresponding to run lengths in the bits of n.

Offset 0, canonical program `A382255.P11079232135365074107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A382255 (n : ℕ) : ℤ :=
  A382255.P11079232135365074107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A382255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382873.P3118827444732228492

`A277006(A179243(n+1))`
-/

namespace A382873.P3118827444732228492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A179243 (n + 1)).toNat

end

end A382873.P3118827444732228492

noncomputable section

/-- A382873: a(n) = A019565(A014311(n)).

Offset 1, canonical program `A382873.P3118827444732228492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A382873 (n : ℕ) : ℤ :=
  A382873.P3118827444732228492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. -/
def A382873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384715.P8943317397622989256

`A001316(n)*(A033264(n)-A085357(n)+2)`
-/

namespace A384715.P8943317397622989256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * (A033264 n - A085357 n + 2)

end

end A384715.P8943317397622989256

noncomputable section

/-- A384715: a(n) = Sum_{k=0..n} (binomial(n, k) mod 4).

Offset 0, canonical program `A384715.P8943317397622989256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, A085357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384715 (n : ℕ) : ℤ :=
  A384715.P8943317397622989256.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, A085357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001226.P13400076991523596967

`A000225(A037225(n))/(2*n+1)`
-/

namespace A001226.P13400076991523596967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A037225 n).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A001226.P13400076991523596967

noncomputable section

/-- A001226: Lerch's function q_2(n) = (2^{phi(t)} - 1)/t where t = 2*n - 1.

Offset 1, canonical program `A001226.P13400076991523596967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A001226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001226.P13400076991523596967.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A001226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029606.P4750095902787503063

`A029604(lt[A319998(n+1), A029652(n+1)])`
-/

namespace A029606.P4750095902787503063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029604 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029606.P4750095902787503063

noncomputable section

/-- A029606: Odd numbers in the (2,3)-Pascal triangle A029600 that are different from 3.

Offset 0, canonical program `A029606.P4750095902787503063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9474 terms. -/
def A029606 (n : ℕ) : ℤ :=
  A029606.P4750095902787503063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9474 terms. -/
def A029606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037011.P1055633923386246763

`A000035(A106737(n))`
-/

namespace A037011.P1055633923386246763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A106737 n).toNat

end

end A037011.P1055633923386246763

noncomputable section

/-- A037011: Baum-Sweet cubic sequence.

Offset 1, canonical program `A037011.P1055633923386246763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037011 (n : ℕ) : ℤ :=
  A037011.P1055633923386246763.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106737, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A044903.P13567681705427084752

`eq[A001511(A227349(n)), A086747(n)]`
-/

namespace A044903.P13567681705427084752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A227349 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044903.P13567681705427084752

noncomputable section

/-- A044903: Base-2 run lengths alternate: odd, even, odd, ...

Offset 1, canonical program `A044903.P13567681705427084752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A044903 (n : ℕ) : ℤ :=
  (A044903.P13567681705427084752.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A044903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049109.P12243785010854007688

`∏{e}[A005238(n+1), #+1]`
-/

namespace A049109.P12243785010854007688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A049109.P12243785010854007688

noncomputable section

/-- A049109: Number of divisors of A005238(n).

Offset 1, canonical program `A049109.P12243785010854007688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049109 (n : ℕ) : ℤ :=
  (A049109.P12243785010854007688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052825.P1042105182767021070

`∑[A000031(A004273(n)-n)-1]`
-/

namespace A052825.P1042105182767021070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A004273 n - (n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052825.P1042105182767021070

noncomputable section

/-- A052825: A simple grammar: partial sums of A008965.

Offset 0, canonical program `A052825.P1042105182767021070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052825 (n : ℕ) : ℤ :=
  A052825.P1042105182767021070.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A052825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053635.P1305169383690897396

`n*A000031(n)`
-/

namespace A053635.P1305169383690897396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000031 n

end

end A053635.P1305169383690897396

noncomputable section

/-- A053635: a(n) = Sum_{d|n} phi(d)*2^(n/d).

Offset 0, canonical program `A053635.P1305169383690897396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053635 (n : ℕ) : ℤ :=
  A053635.P1305169383690897396.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053997.P5947380031336642127

`Δ[A109724(A004273(n))]`
-/

namespace A053997.P5947380031336642127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053997.P5947380031336642127

noncomputable section

/-- A053997: Sum of primes in n-th shell of prime spiral.

Offset 0, canonical program `A053997.P5947380031336642127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1586 terms. -/
def A053997 (n : ℕ) : ℤ :=
  A053997.P5947380031336642127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1586 terms. -/
def A053997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054058.P1941898693570638909

`∑{d}[n+1, A000031(#-1)]`
-/

namespace A054058.P1941898693570638909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000031 (d - 1)

end

end A054058.P1941898693570638909

noncomputable section

/-- A054058: Inverse Moebius transform of A000031 (starting at term 0).

Offset 0, canonical program `A054058.P1941898693570638909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054058 (n : ℕ) : ℤ :=
  A054058.P1941898693570638909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A054058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057148.P2713208974406448353

`∪[A342040(n+1), A342036(n)]`
-/

namespace A057148.P2713208974406448353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057148.P2713208974406448353

noncomputable section

/-- A057148: Palindromes only using 0 and 1 (i.e., base-2 palindromes).

Offset 1, canonical program `A057148.P2713208974406448353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057148 (n : ℕ) : ℤ :=
  (A057148.P2713208974406448353.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059076.P1559801332482280449

`(A000031(n)-A029744(n+1))/2`
-/

namespace A059076.P1559801332482280449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000031 n - A029744 (n + 1) : ℚ) / 2

end

end A059076.P1559801332482280449

noncomputable section

/-- A059076: Number of pairs of orientable necklaces with n beads and two colors; i.e., turning the necklace over does not leave it unchanged.

Offset 0, canonical program `A059076.P1559801332482280449`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059076.P1559801332482280449.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060210.P857598385223716445

`A006530(A040040(n+1))`
-/

namespace A060210.P857598385223716445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A040040 (n + 1)).toNat

end

end A060210.P857598385223716445

noncomputable section

/-- A060210: Largest prime factor of 1+smaller term of twin primes.

Offset 1, canonical program `A060210.P857598385223716445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A060210 (n : ℕ) : ℤ :=
  A060210.P857598385223716445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A060210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060327.P193231312371847196

`∩[A060254(n+1), A060328(n+1)]`
-/

namespace A060327.P193231312371847196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060327.P193231312371847196

noncomputable section

/-- A060327: Primes the sum of both two and three consecutive composite numbers.

Offset 1, canonical program `A060327.P193231312371847196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1674 terms. -/
def A060327 (n : ℕ) : ℤ :=
  (A060327.P193231312371847196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1674 terms. -/
def A060327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062771.P7382483284661769712

`A000034(n)*A345082(n+1)`
-/

namespace A062771.P7382483284661769712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A345082 (n + 1)

end

end A062771.P7382483284661769712

noncomputable section

/-- A062771: Order of automorphism group of the group C_n X C_2 (where C_n is the cyclic group with n elements).

Offset 1, canonical program `A062771.P7382483284661769712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062771 (n : ℕ) : ℤ :=
  A062771.P7382483284661769712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066653.P2384880000636242794

`record[∏{p}[A040040(n+1), #]]`
-/

namespace A066653.P2384880000636242794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066653.P2384880000636242794

noncomputable section

/-- A066653: Squarefree numbers k such that the pair 2*k +- 1 is a twin prime pair.

Offset 1, canonical program `A066653.P2384880000636242794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A066653 (n : ℕ) : ℤ :=
  (A066653.P2384880000636242794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. -/
def A066653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066656.P10645985252166079910

`A000031(n)-A001037(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066656.P10645985252166079910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A001037 n

end

end A066656.P10645985252166079910

noncomputable section

/-- A066656: a(n) = A000031(n) - A001037(n).

Offset 0, canonical program `A066656.P10645985252166079910`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, A001037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066656 (n : ℕ) : ℤ :=
  A066656.P10645985252166079910.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, A001037, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A066656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071142.P14877615513992984752

`2*A037074(n+1)`
-/

namespace A071142.P14877615513992984752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037074 (n + 1)

end

end A071142.P14877615513992984752

noncomputable section

/-- A071142: Numbers of the form 2*p*q where (p,q) is a twin prime pair.

Offset 1, canonical program `A071142.P14877615513992984752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037074, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071142 (n : ℕ) : ℤ :=
  A071142.P14877615513992984752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037074, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074381.P2603854448408954956

`and(1, C(A067829(n+2), 2)+1)`
-/

namespace A074381.P2603854448408954956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose (A067829 (n + 2)).toNat 2 + 1)

end

end A074381.P2603854448408954956

noncomputable section

/-- A074381: (p-1)/2 mod 2, where p is the n-th prime for which p+2 is also prime; i.e., a(n)=0 if p==1 (mod 4), a(n)=1 if p==3 (mod 4).

Offset 1, canonical program `A074381.P2603854448408954956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074381 (n : ℕ) : ℤ :=
  (A074381.P2603854448408954956.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A074381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076651.P13933827491870522384

`floor(sqrt(2)*A040040(n+1))`
-/

namespace A076651.P13933827491870522384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A040040 (n + 1) : ℝ)⌋

end

end A076651.P13933827491870522384

noncomputable section

/-- A076651: a(n) = floor( sqrt( p * (p+2) / 2)) where p is the lesser of the twin primes.

Offset 1, canonical program `A076651.P13933827491870522384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076651 (n : ℕ) : ℤ :=
  A076651.P13933827491870522384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078577.P6369092545307811754

`A001414(A067829(n+2)-1)`
-/

namespace A078577.P6369092545307811754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A067829 (n + 2) - 1).toNat

end

end A078577.P6369092545307811754

noncomputable section

/-- A078577: Sum of all prime factors of the average of n-th twin prime pair.

Offset 1, canonical program `A078577.P6369092545307811754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A078577 (n : ℕ) : ℤ :=
  A078577.P6369092545307811754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A078577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078578.P6504060809906199676

`A062570(A040040(n+1))`
-/

namespace A078578.P6504060809906199676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A040040 (n + 1)).toNat

end

end A078578.P6504060809906199676

noncomputable section

/-- A078578: Euler's totient of the average of n-th twin prime pair.

Offset 1, canonical program `A078578.P6504060809906199676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A078578 (n : ℕ) : ℤ :=
  A078578.P6504060809906199676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A078578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081324.P12063373289040437378

`2*eq[1, A063014(n)]²`
-/

namespace A081324.P12063373289040437378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A081324.P12063373289040437378

noncomputable section

/-- A081324: Twice a square but not the sum of 2 distinct squares.

Offset 1, canonical program `A081324.P12063373289040437378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A081324 (n : ℕ) : ℤ :=
  (A081324.P12063373289040437378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A081324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082878.P13588294601362441638

`A003415(A084227(n+1))`
-/

namespace A082878.P13588294601362441638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A084227 (n + 1)).toNat

end

end A082878.P13588294601362441638

noncomputable section

/-- A082878: Arithmetic derivative of numbers of the form p*q^k with distinct primes p and q, k > 0.

Offset 1, canonical program `A082878.P13588294601362441638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A084227, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082878 (n : ℕ) : ℤ :=
  A082878.P13588294601362441638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A084227, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086167.P14751931300961843707

`∑[A067829(n+2)-2]`
-/

namespace A086167.P14751931300961843707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086167.P14751931300961843707

noncomputable section

/-- A086167: a(n) = sum of the first n lower twin primes.

Offset 1, canonical program `A086167.P14751931300961843707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A086167 (n : ℕ) : ℤ :=
  A086167.P14751931300961843707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A086167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088186.P11333614658990135480

`A054735(n+1)+A005408(A029707(n+1))`
-/

namespace A088186.P11333614658990135480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) + A005408 (A029707 (n + 1)).toNat

end

end A088186.P11333614658990135480

noncomputable section

/-- A088186: Sums of twin primes and their indices.

Offset 0, canonical program `A088186.P11333614658990135480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A088186 (n : ℕ) : ℤ :=
  A088186.P11333614658990135480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. -/
def A088186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096282.P4841603875118736759

`A096281(n+1)+A096281(n+2)`
-/

namespace A096282.P4841603875118736759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (n + 1) + A096281 (n + 2)

end

end A096282.P4841603875118736759

noncomputable section

/-- A096282: Sums of successive twin primes of order 2.

Offset 1, canonical program `A096282.P4841603875118736759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096282 (n : ℕ) : ℤ :=
  A096282.P4841603875118736759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096474.P15193505077618010963

`A057473(n+1)-A057470(n+1)`
-/

namespace A096474.P15193505077618010963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057473 (n + 1) - A057470 (n + 1)

end

end A096474.P15193505077618010963

noncomputable section

/-- A096474: Difference prime(q+2) - prime(q) as q runs through the lesser members of twin primes (A001359).

Offset 1, canonical program `A096474.P15193505077618010963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A057473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096474 (n : ℕ) : ℤ :=
  A096474.P15193505077618010963.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A057473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111046.P4495621465565882332

`2*A054735(n+1)`
-/

namespace A111046.P4495621465565882332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054735 (n + 1)

end

end A111046.P4495621465565882332

noncomputable section

/-- A111046: Difference between squares of twin prime pairs.

Offset 1, canonical program `A111046.P4495621465565882332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054735, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111046 (n : ℕ) : ℤ :=
  A111046.P4495621465565882332.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054735, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112531.P1162023673917804213

`A246660(A073138(2*n+1))/A246660(2*n+1)`
-/

namespace A112531.P1162023673917804213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246660 (A073138 (2 * n + 1)).toNat : ℚ) / (A246660 (2 * n + 1) : ℚ)

end

end A112531.P1162023673917804213

noncomputable section

/-- A112531: Triangle read by rows which lists compositions having at least one part equal to 1.

Offset 1, canonical program `A112531.P1162023673917804213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A112531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112531.P1162023673917804213.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A112531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120875.P6924631559376339399

`A037074(n+1)-1`
-/

namespace A120875.P6924631559376339399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) - 1

end

end A120875.P6924631559376339399

noncomputable section

/-- A120875: Product of twin primes minus 1.

Offset 1, canonical program `A120875.P6924631559376339399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037074, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120875 (n : ℕ) : ℤ :=
  A120875.P6924631559376339399.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037074, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120875.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123079.P7689964899485436980

`and(-3, A067829(n+3))`
-/

namespace A123079.P7689964899485436980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A067829 (n + 3))

end

end A123079.P7689964899485436980

noncomputable section

/-- A123079: Twin primes of form 4k+1.

Offset 1, canonical program `A123079.P7689964899485436980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A123079 (n : ℕ) : ℤ :=
  A123079.P7689964899485436980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A123079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126107.P15944828458727435920

`p?[A040040(n+1)-1]`
-/

namespace A126107.P15944828458727435920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126107.P15944828458727435920

noncomputable section

/-- A126107: Primes p such that 2*p+1 and 2*p+3 are twin primes.

Offset 1, canonical program `A126107.P15944828458727435920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A126107 (n : ℕ) : ℤ :=
  A126107.P15944828458727435920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 926 terms. -/
def A126107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126248.P13007890844090776528

`A037074(n+1)*A014574(n+1)`
-/

namespace A126248.P13007890844090776528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) * A014574 (n + 1)

end

end A126248.P13007890844090776528

noncomputable section

/-- A126248: p*(p+1)*(p+2) where (p,p+2) are twin primes.

Offset 1, canonical program `A126248.P13007890844090776528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, A037074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126248 (n : ℕ) : ℤ :=
  A126248.P13007890844090776528.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, A037074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128436.P11979391553249365448

`p?[A040040(n+1)+1]`
-/

namespace A128436.P11979391553249365448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A128436.P11979391553249365448

noncomputable section

/-- A128436: Primes p such that 2p - 3 and 2p - 1 are twin primes.

Offset 1, canonical program `A128436.P11979391553249365448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 905 terms. -/
def A128436 (n : ℕ) : ℤ :=
  A128436.P11979391553249365448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 905 terms. -/
def A128436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130212.P13341498629550544317

`A010766(n+1)*A054526(n+1)`
-/

namespace A130212.P13341498629550544317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A054526 (n + 1)

end

end A130212.P13341498629550544317

noncomputable section

/-- A130212: T(k, n) = sum_(1 <= j <= k) [j | k] j mu(k / j) floor(n / k), triangle read by rows.

Offset 1, canonical program `A130212.P13341498629550544317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130212 (n : ℕ) : ℤ :=
  A130212.P13341498629550544317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135785.P11510960012154170062

`∪[A000430(n+1), A037074(n+1)]`
-/

namespace A135785.P11510960012154170062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135785.P11510960012154170062

noncomputable section

/-- A135785: Union of A000040, A001248 and A037074.

Offset 1, canonical program `A135785.P11510960012154170062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135785 (n : ℕ) : ℤ :=
  (A135785.P11510960012154170062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136050.P9552292067720199386

`∑{digits}[A037074(n+1), #]`
-/

namespace A136050.P9552292067720199386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A136050.P9552292067720199386

noncomputable section

/-- A136050: Sum of digits of product of twin primes A037074.

Offset 1, canonical program `A136050.P9552292067720199386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136050 (n : ℕ) : ℤ :=
  (A136050.P9552292067720199386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139093.P1917041314572056208

`(-1)^n*A082564(n)`
-/

namespace A139093.P1917041314572056208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A082564 n

end

end A139093.P1917041314572056208

noncomputable section

/-- A139093: Expansion of phi(q) * phi(-q^2) in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A139093.P1917041314572056208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139093 (n : ℕ) : ℤ :=
  A139093.P1917041314572056208.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143230.P75593432218593418

`A000010(A002024(n+1))*A054526(n+1)`
-/

namespace A143230.P75593432218593418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002024 (n + 1)).toNat * A054526 (n + 1)

end

end A143230.P75593432218593418

noncomputable section

/-- A143230: Triangle read by rows, A130207 * A000012 * A130207.

Offset 1, canonical program `A143230.P75593432218593418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143230 (n : ℕ) : ℤ :=
  A143230.P75593432218593418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143269.P16153719034199843744

`∑[char[∑[n]]]*A054526(n+1)`
-/

namespace A143269.P16153719034199843744
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A054526 (n + 1)

end

end A143269.P16153719034199843744

noncomputable section

/-- A143269: Triangle read by rows, A127648 * A000012 * A130207, 1<=k<=n.

Offset 1, canonical program `A143269.P16153719034199843744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143269 (n : ℕ) : ℤ :=
  A143269.P16153719034199843744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143574.P6219052309077414937

`n/2*A000925(n)`
-/

namespace A143574.P6219052309077414937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A000925 n : ℚ)

end

end A143574.P6219052309077414937

noncomputable section

/-- A143574: Sum of all distinct squares occurring when partitioning n into two squares.

Offset 0, canonical program `A143574.P6219052309077414937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143574 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143574.P6219052309077414937.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151990.P1661502081810729062

`A110451(A040040(n+1))/3`
-/

namespace A151990.P1661502081810729062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110451 (A040040 (n + 1)).toNat : ℚ) / 3

end

end A151990.P1661502081810729062

noncomputable section

/-- A151990: If p and q are (odd) twin primes and q > p then p*q^2 + (p + q) + 1 is divisible by 6; a(n) = (p*q^2 + (p + q) + 1)/6.

Offset 1, canonical program `A151990.P1661502081810729062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A151990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151990.P1661502081810729062.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A151990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154391.P10401857712693082609

`eq[A246029(A035327(n)), A246029(n)]`
-/

namespace A154391.P10401857712693082609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154391.P10401857712693082609

noncomputable section

/-- A154391: Terms of A123466 which have a one-to-one correspondence between every run of 1's and 0's of the same length.

Offset 1, canonical program `A154391.P10401857712693082609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A154391 (n : ℕ) : ℤ :=
  (A154391.P10401857712693082609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A154391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161763.P7682725459275287043

`A057470(n+1)*A057473(n+1)`
-/

namespace A161763.P7682725459275287043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057470 (n + 1) * A057473 (n + 1)

end

end A161763.P7682725459275287043

noncomputable section

/-- A161763: Product of the two primes with indices equal to the members of the n-th twin prime pair.

Offset 1, canonical program `A161763.P7682725459275287043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161763 (n : ℕ) : ℤ :=
  A161763.P7682725459275287043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163656.P15274253072224242917

`A096281((n+1)%(2*n+1)+1)/2`
-/

namespace A163656.P15274253072224242917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 ((n + 1) % (2 * n + 1) + 1) : ℚ) / 2

end

end A163656.P15274253072224242917

noncomputable section

/-- A163656: Arithmetic mean of the n-th and (n+1)st twin prime member A001097.

Offset 1, canonical program `A163656.P15274253072224242917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A163656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163656.P15274253072224242917.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A163656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164282.P11359782556062153401

`lt[3, A063014(n)]`
-/

namespace A164282.P11359782556062153401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164282.P11359782556062153401

noncomputable section

/-- A164282: Hypotenuses of more than two Pythagorean triangles.

Offset 1, canonical program `A164282.P11359782556062153401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164282 (n : ℕ) : ℤ :=
  (A164282.P11359782556062153401.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164707.P3274029201984026829

`eq[1, A001221(A246029(n))]`
-/

namespace A164707.P3274029201984026829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164707.P3274029201984026829

noncomputable section

/-- A164707: A positive integer n is included if all runs of 1's in binary n are of the same length.

Offset 1, canonical program `A164707.P3274029201984026829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A164707 (n : ℕ) : ℤ :=
  (A164707.P3274029201984026829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. -/
def A164707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164709.P12181322775602558519

`eq[1, A304455(A246029(n))]`
-/

namespace A164709.P12181322775602558519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164709.P12181322775602558519

noncomputable section

/-- A164709: A positive integer n is included if all runs of 1's in binary n are of the same length, and if there are at least two runs of 1's.

Offset 1, canonical program `A164709.P12181322775602558519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164709 (n : ℕ) : ℤ :=
  (A164709.P12181322775602558519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165280.P17092455864652572328

`A075369(n+2)/3`
-/

namespace A165280.P17092455864652572328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075369 (n + 2) : ℚ) / 3

end

end A165280.P17092455864652572328

noncomputable section

/-- A165280: If p and q are twin primes then pq + 1 is always divisible by 3, except for (p,q)=(3,5). Sequence gives values of (pq + 1)/3.

Offset 1, canonical program `A165280.P17092455864652572328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165280 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165280.P17092455864652572328.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165280.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168497.P17967638990688858063

`floor(A067829(n+1)/2)`
-/

namespace A168497.P17967638990688858063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067829 (n + 1) : ℚ) / 2⌋

end

end A168497.P17967638990688858063

noncomputable section

/-- A168497: The halfs of even single (or even isolated) numbers.

Offset 1, canonical program `A168497.P17967638990688858063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168497 (n : ℕ) : ℤ :=
  A168497.P17967638990688858063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169834.P3285917251730372984

`A005238(n+1)+1`
-/

namespace A169834.P3285917251730372984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1) + 1

end

end A169834.P3285917251730372984

noncomputable section

/-- A169834: Numbers k such that d(k-1) = d(k) = d(k+1).

Offset 1, canonical program `A169834.P3285917251730372984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005238, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169834 (n : ℕ) : ℤ :=
  A169834.P3285917251730372984.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005238, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172151.P8399012930650727047

`A004526(n)+A025435(n)-A000196(n)`
-/

namespace A172151.P8399012930650727047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A025435 n - A000196 n)

end

end A172151.P8399012930650727047

noncomputable section

/-- A172151: Number of partitions of n into two nonsquares.

Offset 0, canonical program `A172151.P8399012930650727047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172151 (n : ℕ) : ℤ :=
  A172151.P8399012930650727047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176915.P10687562346099040879

`A014574(n+1)-A078571(n+1)`
-/

namespace A176915.P10687562346099040879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - A078571 (n + 1)

end

end A176915.P10687562346099040879

noncomputable section

/-- A176915: Average of n-th twin prime pair minus total number of prime factors of average of n-th twin prime pair.

Offset 1, canonical program `A176915.P10687562346099040879`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, A078571, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176915 (n : ℕ) : ℤ :=
  A176915.P10687562346099040879.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, A078571, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A176915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178668.P9523134910986814010

`A006530(A008615(A078579(n+1)))`
-/

namespace A178668.P9523134910986814010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008615 (A078579 (n + 1)).toNat).toNat

end

end A178668.P9523134910986814010

noncomputable section

/-- A178668: Maximal prime divisor of the average of the twin prime pairs, different from 2 and 3. In case of maximal prime divisor is 2 or 3, then a(n)=1.

Offset 1, canonical program `A178668.P9523134910986814010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A178668 (n : ℕ) : ℤ :=
  A178668.P9523134910986814010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A178668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181538.P2422341693197598264

`A050873(n+1)*A054526(n+1)`
-/

namespace A181538.P2422341693197598264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A054526 (n + 1)

end

end A181538.P2422341693197598264

noncomputable section

/-- A181538: T(n, k) = sum_(1 <= j <= k) [j | k] j mu(k / j) gcd(n, k), triangle read by rows.

Offset 1, canonical program `A181538.P2422341693197598264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181538 (n : ℕ) : ℤ :=
  A181538.P2422341693197598264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181747.P3900784765527712522

`A067829(n+1)-2`
-/

namespace A181747.P3900784765527712522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) - 2

end

end A181747.P3900784765527712522

noncomputable section

/-- A181747: Odd noncomposite numbers that are the difference of 2 primes.

Offset 1, canonical program `A181747.P3900784765527712522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181747 (n : ℕ) : ℤ :=
  A181747.P3900784765527712522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184417.P16121788187254490956

`A063533(n+1)-1`
-/

namespace A184417.P16121788187254490956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063533 (n + 1) - 1

end

end A184417.P16121788187254490956

noncomputable section

/-- A184417: p^2 + (p+2)^2 - 1 where (p,p+2) is the n-th twin prime pair.

Offset 1, canonical program `A184417.P16121788187254490956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184417 (n : ℕ) : ℤ :=
  A184417.P16121788187254490956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063533, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191746.P13832320004408315635

`∑[A037074(n+1)]`
-/

namespace A191746.P13832320004408315635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191746.P13832320004408315635

noncomputable section

/-- A191746: Partial sums of product of twin primes.

Offset 1, canonical program `A191746.P13832320004408315635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191746 (n : ℕ) : ℤ :=
  A191746.P13832320004408315635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209970.P62417713944158277

`2^n-A000031(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209970.P62417713944158277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000031 n

end

end A209970.P62417713944158277

noncomputable section

/-- A209970: a(n) = 2^n - A000031(n).

Offset 0, canonical program `A209970.P62417713944158277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209970 (n : ℕ) : ℤ :=
  A209970.P62417713944158277.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A211637.P14278206662972809609

`n^3-A211634(n)`
-/

namespace A211637.P14278206662972809609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A211634 n

end

end A211637.P14278206662972809609

noncomputable section

/-- A211637: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2>x^2+y^2.

Offset 0, canonical program `A211637.P14278206662972809609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A211637 (n : ℕ) : ℤ :=
  A211637.P14278206662972809609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. -/
def A211637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219658.P6237713231171060493

`comp[A219650(n)]`
-/

namespace A219658.P6237713231171060493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219658.P6237713231171060493

noncomputable section

/-- A219658: Complement of A219650. Natural numbers that do not occur in A219651.

Offset 1, canonical program `A219658.P6237713231171060493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219658 (n : ℕ) : ℤ :=
  (A219658.P6237713231171060493.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230405.P2486081722514881436

`A219650(n+1)-A219650(n)`
-/

namespace A230405.P2486081722514881436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 (n + 1) - A219650 n

end

end A230405.P2486081722514881436

noncomputable section

/-- A230405: a(n) = A000217(A230404(n+1)); the first differences of A219650.

Offset 0, canonical program `A230405.P2486081722514881436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219650, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230405 (n : ℕ) : ℤ :=
  A230405.P2486081722514881436.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219650, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230405.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A234101.P6301827965177899891

`∩[A276307(n+1), A350409(n+1)]`
-/

namespace A234101.P6301827965177899891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234101.P6301827965177899891

noncomputable section

/-- A234101: Primes of the form (p*q*r - 1)/2, where p, q, r are distinct primes.

Offset 1, canonical program `A234101.P6301827965177899891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8404 terms. -/
def A234101 (n : ℕ) : ℤ :=
  (A234101.P6301827965177899891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8404 terms. -/
def A234101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243811.P316071856288439546

`A040040(n+1)-2`
-/

namespace A243811.P316071856288439546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) - 2

end

end A243811.P316071856288439546

noncomputable section

/-- A243811: Numbers k such that 2*k+3 and 2*k+5 are both prime.

Offset 1, canonical program `A243811.P316071856288439546`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243811 (n : ℕ) : ℤ :=
  A243811.P316071856288439546.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A040040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A243811.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247367.P4275224030839815486

`A000196(n)+1-A000925(n)`
-/

namespace A247367.P4275224030839815486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (1 - A000925 n)

end

end A247367.P4275224030839815486

noncomputable section

/-- A247367: Number of ways to write n as a sum of a square and a nonsquare.

Offset 0, canonical program `A247367.P4275224030839815486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247367 (n : ℕ) : ℤ :=
  A247367.P4275224030839815486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260021.P7233217212523557314

`lt[A354344(n+1), A353637(n+1)]+1`
-/

namespace A260021.P7233217212523557314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260021.P7233217212523557314

noncomputable section

/-- A260021: Solutions to phi(n) = phi(sigma(n)) that are not given by Theorem 3 of Golomb's manuscript.

Offset 1, canonical program `A260021.P7233217212523557314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A260021 (n : ℕ) : ℤ :=
  (A260021.P7233217212523557314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A260021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295893.P2774007442497314762

`A000035(A295894(n)+A295894(2*n))`
-/

namespace A295893.P2774007442497314762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295894 n + A295894 (2 * n)).toNat

end

end A295893.P2774007442497314762

noncomputable section

/-- A295893: a(n) = 1 if in Doudna-tree (A005940) the contents of the node n and its left-hand child have binary weights with different parity, 0 otherwise.

Offset 0, canonical program `A295893.P2774007442497314762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295893 (n : ℕ) : ℤ :=
  A295893.P2774007442497314762.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295894, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309152.P14975925339169188126

`∪[2*A040040(n+1)+3, A054735(n+1)]`
-/

namespace A309152.P14975925339169188126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A309152.P14975925339169188126

noncomputable section

/-- A309152: Numbers that can be written as the sum of two primes whose difference is also prime.

Offset 1, canonical program `A309152.P14975925339169188126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309152 (n : ℕ) : ℤ :=
  (A309152.P14975925339169188126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309332.P11044657249734363077

`A110654(A160651(n+1))-1`
-/

namespace A309332.P11044657249734363077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A160651 (n + 1)).toNat - 1

end

end A309332.P11044657249734363077

noncomputable section

/-- A309332: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the sum of two positive triangular numbers.

Offset 1, canonical program `A309332.P11044657249734363077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309332 (n : ℕ) : ℤ :=
  A309332.P11044657249734363077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324386.P5132127353883200254

`A324383(A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324386.P5132127353883200254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324383 (A006068 n).toNat

end

end A324386.P5132127353883200254

noncomputable section

/-- A324386: a(n) = A324383(A006068(n)).

Offset 0, canonical program `A324386.P5132127353883200254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A324383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324386 (n : ℕ) : ℤ :=
  A324386.P5132127353883200254.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A324383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324386.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A342921.P18050181671640434950

`A344028(A048678(n))`
-/

namespace A342921.P18050181671640434950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (A048678 n).toNat

end

end A342921.P18050181671640434950

noncomputable section

/-- A342921: a(n) = A003415(A019565(n)).

Offset 0, canonical program `A342921.P18050181671640434950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A342921 (n : ℕ) : ℤ :=
  A342921.P18050181671640434950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A342921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343230.P17749282856008221951

`A343229(A338246(n))`
-/

namespace A343230.P17749282856008221951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (A338246 n).toNat

end

end A343230.P17749282856008221951

noncomputable section

/-- A343230: A binary encoding of the digits "0" in balanced ternary representation of n.

Offset 0, canonical program `A343230.P17749282856008221951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A343230 (n : ℕ) : ℤ :=
  A343230.P17749282856008221951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A343230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343317.P8685563179642200841

`A338246(A060374(n))`
-/

namespace A343317.P8685563179642200841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A060374 n).toNat

end

end A343317.P8685563179642200841

noncomputable section

/-- A343317: a(n) is the least k >= 0 such that A343316(n, k) = n.

Offset 0, canonical program `A343317.P8685563179642200841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A343317 (n : ℕ) : ℤ :=
  A343317.P8685563179642200841.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A343317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345050.P16317635263124639318

`A345048(n+1)-A345049(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345050.P16317635263124639318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345048 (n + 1) - A345049 (n + 1)

end

end A345050.P16317635263124639318

noncomputable section

/-- A345050: a(n) = A345048(n) - A345049(n).

Offset 1, canonical program `A345050.P16317635263124639318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345048, A345049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345050 (n : ℕ) : ℤ :=
  A345050.P16317635263124639318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345048, A345049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348677.P311513381695428209

`A001223(A333242(n+1)-1)`
-/

namespace A348677.P311513381695428209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A333242 (n + 1) - 1).toNat

end

end A348677.P311513381695428209

noncomputable section

/-- A348677: a(n) is the difference between A262275(n) and the next lower prime.

Offset 1, canonical program `A348677.P311513381695428209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8568 terms. -/
def A348677 (n : ℕ) : ℤ :=
  A348677.P311513381695428209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8568 terms. -/
def A348677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373501.P9060710270452767063

`A003800(n+1)*A025474(n+2)`
-/

namespace A373501.P9060710270452767063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003800 (n + 1) * A025474 (n + 2)

end

end A373501.P9060710270452767063

noncomputable section

/-- A373501: Size of the collineation group of classical projective planes of prime power order q.

Offset 1, canonical program `A373501.P9060710270452767063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A373501 (n : ℕ) : ℤ :=
  A373501.P9060710270452767063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A373501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376271.P10040751222563494524

`∪[A085986(n+1), A379336(n+1)]`
-/

namespace A376271.P10040751222563494524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376271.P10040751222563494524

noncomputable section

/-- A376271: Numbers k such that there exists at least one proper divisor that is neither squarefree nor a prime power, i.e., m is in A126706.

Offset 1, canonical program `A376271.P10040751222563494524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376271 (n : ℕ) : ℤ :=
  (A376271.P10040751222563494524.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004718.P8572189742023123012

`A000120(n)-2*A343030(n)`
-/

namespace A004718.P8572189742023123012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - 2 * A343030 n

end

end A004718.P8572189742023123012

noncomputable section

/-- A004718: The Danish composer Per Nørgård's "infinity sequence", invented in an attempt to unify in a perfect way repetition and variation: a(2n) = -a(n), a(2n+1) = a(n) + 1, a(0) = 0.

Offset 0, canonical program `A004718.P8572189742023123012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004718 (n : ℕ) : ℤ :=
  A004718.P8572189742023123012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032899.P11516375942382021658

`eq[A000007(n), A343030(A038556(n))]`
-/

namespace A032899.P11516375942382021658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A038556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032899.P11516375942382021658

noncomputable section

/-- A032899: Numbers whose base-2 representation Sum_{i=0..m} d(i)*2^i has d(0) <= d(1) >= d(2) <= ...

Offset 1, canonical program `A032899.P11516375942382021658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 829 terms. -/
def A032899 (n : ℕ) : ℤ :=
  (A032899.P11516375942382021658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 829 terms. -/
def A032899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059793.P6091692102446340852

`2*A005574(n+1)`
-/

namespace A059793.P6091692102446340852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005574 (n + 1)

end

end A059793.P6091692102446340852

noncomputable section

/-- A059793: Stationary value of quotient in the continued fraction expansion of sqrt(prime) when the quotient-cycle-length = 1.

Offset 0, canonical program `A059793.P6091692102446340852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059793 (n : ℕ) : ℤ :=
  A059793.P6091692102446340852.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059793.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068016.P14808637295794982073

`A088175(A242913(n+1))`
-/

namespace A068016.P14808637295794982073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (A242913 (n + 1)).toNat

end

end A068016.P14808637295794982073

noncomputable section

/-- A068016: Lonely non-twin primes: non-twins sandwiched between two pairs of twins.

Offset 1, canonical program `A068016.P14808637295794982073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A068016 (n : ℕ) : ℤ :=
  A068016.P14808637295794982073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A068016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073832.P15694190533899726090

`A088175(n%a(n-1)+2)` with `a(0)=4`
-/

namespace A073832.P15694190533899726090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A088175 (Int.tmod (n : ℤ) (a (n - 1)) + 2).toNat

end

end A073832.P15694190533899726090

noncomputable section

/-- A073832: k between A001359(n) and A001359(n+1) such that A073830(k) is maximal.

Offset 1, canonical program `A073832.P15694190533899726090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A073832 (n : ℕ) : ℤ :=
  A073832.P15694190533899726090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. -/
def A073832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077800.P16009445446139691322

`A096281(n)-a(n-1)` with `a(0)=3`
-/

namespace A077800.P16009445446139691322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A096281 n - a (n - 1)

end

end A077800.P16009445446139691322

noncomputable section

/-- A077800: List of twin primes {p, p+2}.

Offset 1, canonical program `A077800.P16009445446139691322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077800 (n : ℕ) : ℤ :=
  A077800.P16009445446139691322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078570.P8315659541247892813

`∑{e}[A078579(n+1), #]`
-/

namespace A078570.P8315659541247892813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078570.P8315659541247892813

noncomputable section

/-- A078570: Number of distinct prime factors of the average of n-th twin prime pair.

Offset 1, canonical program `A078570.P8315659541247892813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078570 (n : ℕ) : ℤ :=
  (A078570.P8315659541247892813.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8169 terms. -/
def A078570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078782.P12729689077806731544

`filter[A141437(n+2), A005171(#)]`
-/

namespace A078782.P12729689077806731544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A078782.P12729689077806731544

noncomputable section

/-- A078782: Nonprimes (A018252) with prime (A000040) subscripts.

Offset 1, canonical program `A078782.P12729689077806731544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5113 terms. -/
def A078782 (n : ℕ) : ℤ :=
  A078782.P12729689077806731544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5113 terms. -/
def A078782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088758.P8129966983555977646

`eq[2, A160651(A016813(n))]`
-/

namespace A088758.P8129966983555977646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088758.P8129966983555977646

noncomputable section

/-- A088758: Numbers k such that (4*k + 1)^2 + (4*k + 2)^2 is prime.

Offset 1, canonical program `A088758.P8129966983555977646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A088758 (n : ℕ) : ℤ :=
  (A088758.P8129966983555977646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A088758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089593.P11264897865475131752

`A005574(n+1)-1`
-/

namespace A089593.P11264897865475131752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) - 1

end

end A089593.P11264897865475131752

noncomputable section

/-- A089593: Numbers k such that k^2 + 2k + 2 is prime.

Offset 1, canonical program `A089593.P11264897865475131752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089593 (n : ℕ) : ℤ :=
  A089593.P11264897865475131752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090693.P14905492316959680231

`A005574(n+1)+1`
-/

namespace A090693.P14905492316959680231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) + 1

end

end A090693.P14905492316959680231

noncomputable section

/-- A090693: Positive numbers n such that n^2 - 2n + 2 is a prime.

Offset 1, canonical program `A090693.P14905492316959680231`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090693 (n : ℕ) : ℤ :=
  A090693.P14905492316959680231.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094550.P16660763178364063015

`sqrt(A229134(n+1))`
-/

namespace A094550.P16660763178364063015
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A229134 (n + 1) : ℝ)

end

end A094550.P16660763178364063015

noncomputable section

/-- A094550: Numbers n such that there are integers a < b with a+(a+1)+...+(n-1) = (n+1)+(n+2)+...+b.

Offset 1, canonical program `A094550.P16660763178364063015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094550.P16660763178364063015.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096918.P15287416187910014206

`A006530(A007304(n+1)/A096919(n+1))`
-/

namespace A096918.P15287416187910014206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A007304 (n + 1) : ℚ) / (A096919 (n + 1) : ℚ))).toNat

end

end A096918.P15287416187910014206

noncomputable section

/-- A096918: Intermediate prime factor of n-th product of 3 distinct primes.

Offset 1, canonical program `A096918.P15287416187910014206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096918 (n : ℕ) : ℤ :=
  A096918.P15287416187910014206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112352.P14257770990694265222

`A000217(lt[3, A160651(n)])`
-/

namespace A112352.P14257770990694265222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112352.P14257770990694265222

noncomputable section

/-- A112352: Triangular numbers that are the sum of two distinct positive triangular numbers.

Offset 1, canonical program `A112352.P14257770990694265222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112352 (n : ℕ) : ℤ :=
  A112352.P14257770990694265222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116958.P6140543350835560878

`3*(A002822(n+1)-1)`
-/

namespace A116958.P6140543350835560878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002822 (n + 1) - 1)

end

end A116958.P6140543350835560878

noncomputable section

/-- A116958: Numbers k such that 2*k + 5 and 2*k + 7 are twin primes.

Offset 1, canonical program `A116958.P6140543350835560878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116958 (n : ℕ) : ℤ :=
  A116958.P6140543350835560878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129309.P7253575535658476897

`A073256(n+1)-A048984(n+1)`
-/

namespace A129309.P7253575535658476897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073256 (n + 1) - A048984 (n + 1)

end

end A129309.P7253575535658476897

noncomputable section

/-- A129309: a(n) = number of primes which are < c(n) and are coprime to c(n), where c(n) is the n-th composite.

Offset 1, canonical program `A129309.P7253575535658476897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129309 (n : ℕ) : ℤ :=
  A129309.P7253575535658476897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163385.P13495843705850652275

`p?[2*A002822(n+1)+3]`
-/

namespace A163385.P13495843705850652275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002822 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163385.P13495843705850652275

noncomputable section

/-- A163385: Primes p such that 3(p-3)-1 and 3(p-3)+1 are twin primes.

Offset 1, canonical program `A163385.P13495843705850652275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1864 terms. -/
def A163385 (n : ℕ) : ℤ :=
  A163385.P13495843705850652275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1864 terms. -/
def A163385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167379.P16470544176518882026

`2*A002822(n+1)`
-/

namespace A167379.P16470544176518882026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002822 (n + 1)

end

end A167379.P16470544176518882026

noncomputable section

/-- A167379: Let p and q be twin primes, excluding the pair (3,5). Then p+q is always divisible by 6 and we set a(n) = (p+q)/6.

Offset 1, canonical program `A167379.P16470544176518882026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167379 (n : ℕ) : ℤ :=
  A167379.P16470544176518882026.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172052.P14180275572290181514

`abs(A171696(n+1)-A002822(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172052.P14180275572290181514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171696 (n + 1) - A002822 (n + 1)|

end

end A172052.P14180275572290181514

noncomputable section

/-- A172052: a(n)=abs(A171696(n)-A002822(n)).

Offset 1, canonical program `A172052.P14180275572290181514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, A171696, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172052 (n : ℕ) : ℤ :=
  A172052.P14180275572290181514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, A171696, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172053.P3465448990225709035

`A171696(n+1)+A002822(n+1)`
-/

namespace A172053.P3465448990225709035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 1) + A002822 (n + 1)

end

end A172053.P3465448990225709035

noncomputable section

/-- A172053: n-th nonnegative number k such that neither 6*k+-1 is prime plus n-th number m such that 6*m+-1 are both twin primes.

Offset 1, canonical program `A172053.P3465448990225709035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, A171696, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172053 (n : ℕ) : ℤ :=
  A172053.P3465448990225709035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, A171696, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173386.P16068600266942827119

`abs(A008578(n+1)-A002822(n+1))`
-/

namespace A173386.P16068600266942827119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (n + 1) - A002822 (n + 1)|

end

end A173386.P16068600266942827119

noncomputable section

/-- A173386: The absolute values of n-th natural noncomposite number minus n-th number k such that 6*k +- 1 is a twin prime pair.

Offset 1, canonical program `A173386.P16068600266942827119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173386 (n : ℕ) : ℤ :=
  A173386.P16068600266942827119.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173387.P5209001471711871624

`abs(A000040(n+1)-A002822(n+1))`
-/

namespace A173387.P5209001471711871624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - A002822 (n + 1)|

end

end A173387.P5209001471711871624

noncomputable section

/-- A173387: The absolute value of n-th prime number minus n-th number k such that 6*k-+1 is a twin prime pair.

Offset 1, canonical program `A173387.P5209001471711871624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173387 (n : ℕ) : ℤ :=
  A173387.P5209001471711871624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191626.P15638970992533597585

`∩[A002822(n+1), A014574(n+1)]/6`
-/

namespace A191626.P15638970992533597585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A191626.P15638970992533597585

noncomputable section

/-- A191626: Integers n such that both 6n and 36n fall between pairs of twin primes, that is, 6n-1, 6n+1, 36n-1, and 36n+1 are prime.

Offset 1, canonical program `A191626.P15638970992533597585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A191626 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A191626.P15638970992533597585.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A191626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206400.P17016040575888186063

`Δ[A005574(n+1)]-1`
-/

namespace A206400.P17016040575888186063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A206400.P17016040575888186063

noncomputable section

/-- A206400: Number of composites of the form n^2 + 1 between two successive primes of this form.

Offset 1, canonical program `A206400.P17016040575888186063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206400 (n : ℕ) : ℤ :=
  A206400.P17016040575888186063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A206400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209992.P10276808550419408053

`2*A212053(n)-n²²-A196227(n)`
-/

namespace A209992.P10276808550419408053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212053 n - ((n ^ 2) ^ 2 : ℤ) - A196227 n

end

end A209992.P10276808550419408053

noncomputable section

/-- A209992: Number of 2 X 2 matrices with all elements in {1,2,...,n} and determinant in {0,1}.

Offset 0, canonical program `A209992.P10276808550419408053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A209992 (n : ℕ) : ℤ :=
  A209992.P10276808550419408053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A209992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213514.P4233426757645372914

`A233583(A002808(n+1))%A073256(n+1)`
-/

namespace A213514.P4233426757645372914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A002808 (n + 1)).toNat) (A073256 (n + 1))

end

end A213514.P4233426757645372914

noncomputable section

/-- A213514: For composite n, remainder of n - 1 when divided by phi(n), where phi(n) is the totient function (A000010).

Offset 1, canonical program `A213514.P4233426757645372914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A213514 (n : ℕ) : ℤ :=
  A213514.P4233426757645372914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A213514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224516.P4254981347655587293

`A002487(A060839(n+1))*A034444(n+1)`
-/

namespace A224516.P4254981347655587293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A060839 (n + 1)).toNat * A034444 (n + 1)

end

end A224516.P4254981347655587293

noncomputable section

/-- A224516: Number of solutions to x^4 - x == 0 (mod n).

Offset 1, canonical program `A224516.P4254981347655587293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224516 (n : ℕ) : ℤ :=
  A224516.P4254981347655587293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245327.P15422626224770119611

`A002487(A284459(n+1))`
-/

namespace A245327.P15422626224770119611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A284459 (n + 1)).toNat

end

end A245327.P15422626224770119611

noncomputable section

/-- A245327: Numerators in recursive bijection from positive integers to positive rationals, where the bijection is f(1) = 1, f(2n) = 1/(f(n)+1), f(2n+1) = f(n)+1.

Offset 1, canonical program `A245327.P15422626224770119611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A284459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245327 (n : ℕ) : ℤ :=
  A245327.P15422626224770119611.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A284459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245328.P12193568129889617601

`A002487(1+A284459(n+1))`
-/

namespace A245328.P12193568129889617601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A284459 (n + 1)).toNat

end

end A245328.P12193568129889617601

noncomputable section

/-- A245328: Denominators in recursive bijection from positive integers to positive rationals (the bijection is f(1) = 1, f(2n) = 1/(f(n)+1), f(2n+1) = f(n)+1).

Offset 1, canonical program `A245328.P12193568129889617601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A284459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245328 (n : ℕ) : ℤ :=
  A245328.P12193568129889617601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A284459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A245328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253473.P17226977604656821504

`A049820(A073256(n+1))`
-/

namespace A253473.P17226977604656821504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A073256 (n + 1)).toNat

end

end A253473.P17226977604656821504

noncomputable section

/-- A253473: a(n) = phi(c(n)) - tau(phi(c(n))), where c(n) is the n-th composite number.

Offset 1, canonical program `A253473.P17226977604656821504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8947 terms. -/
def A253473 (n : ℕ) : ℤ :=
  A253473.P17226977604656821504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8947 terms. -/
def A253473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255675.P391171638114962295

`A121326(n%a(n-1))-A005574(n+1)` with `a(0)=3`
-/

namespace A255675.P391171638114962295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A121326 (Int.tmod (n : ℤ) (a (n - 1))).toNat - A005574 (n + 1)

end

end A255675.P391171638114962295

noncomputable section

/-- A255675: Least integer k such that the n-th prime of form m^2+1 divides the composite number k^2+1.

Offset 1, canonical program `A255675.P391171638114962295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A255675 (n : ℕ) : ℤ :=
  A255675.P391171638114962295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. -/
def A255675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268752.P3181240131180822389

`filter[A005574(n+1), A212793(#)]`
-/

namespace A268752.P3181240131180822389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A268752.P3181240131180822389

noncomputable section

/-- A268752: Cubefree numbers n such that n^2 + 1 is prime.

Offset 1, canonical program `A268752.P3181240131180822389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4709 terms. -/
def A268752 (n : ℕ) : ℤ :=
  A268752.P3181240131180822389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4709 terms. -/
def A268752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283809.P9736320431280606644

`record[A007947(A002822(n+1))]`
-/

namespace A283809.P9736320431280606644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002822 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283809.P9736320431280606644

noncomputable section

/-- A283809: Squarefree numbers k such that 6*k - 1 and 6*k + 1 are twin primes.

Offset 1, canonical program `A283809.P9736320431280606644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3100 terms. -/
def A283809 (n : ℕ) : ℤ :=
  A283809.P9736320431280606644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3100 terms. -/
def A283809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291179.P5775307500960395627

`A057427(C(A174058(n+1), A333242(n+1)))+n`
-/

namespace A291179.P5775307500960395627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Nat.choose (A174058 (n + 1)).toNat (A333242 (n + 1)).toNat) + (n : ℤ)

end

end A291179.P5775307500960395627

noncomputable section

/-- A291179: Numbers in at least one Fibonacci sequence starting with two 1-digit numbers.

Offset 1, canonical program `A291179.P5775307500960395627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A291179 (n : ℕ) : ℤ :=
  A291179.P5775307500960395627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A291179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308344.P13252436012893602881

`A000326(A002822(n+1))`
-/

namespace A308344.P13252436012893602881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A002822 (n + 1)).toNat

end

end A308344.P13252436012893602881

noncomputable section

/-- A308344: a(n) = (A001359(n+1)^2 - 1)/24, where A001359 = lesser of twin primes; or: pentagonal numbers (A000326) whose indices are twin ranks (A002822).

Offset 1, canonical program `A308344.P13252436012893602881`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308344 (n : ℕ) : ℤ :=
  A308344.P13252436012893602881.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308344.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A325438.P1688981022104594762

`eq[1, A325437(n+1)]+1`
-/

namespace A325438.P1688981022104594762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325438.P1688981022104594762

noncomputable section

/-- A325438: Indices of primes of the form k^2 + 1 ending in 1.

Offset 1, canonical program `A325438.P1688981022104594762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A325438 (n : ℕ) : ℤ :=
  (A325438.P1688981022104594762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A325438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325439.P483323475764833444

`eq[7, A325437(n+1)]+1`
-/

namespace A325439.P483323475764833444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A325439.P483323475764833444

noncomputable section

/-- A325439: Indices of primes of the form k^2 + 1 ending in 7.

Offset 1, canonical program `A325439.P483323475764833444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6632 terms. -/
def A325439 (n : ℕ) : ℤ :=
  (A325439.P483323475764833444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6632 terms. -/
def A325439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333635.P4737925999260049284

`floor(sqrt(A248742(n+1)))`
-/

namespace A333635.P4737925999260049284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A248742 (n + 1))

end

end A333635.P4737925999260049284

noncomputable section

/-- A333635: Numbers m such that m^2 + 1 has at most 2 prime factors.

Offset 1, canonical program `A333635.P4737925999260049284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333635 (n : ℕ) : ℤ :=
  A333635.P4737925999260049284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367734.P11864866630321712959

`eq[1, A351113(n+1)]+1`
-/

namespace A367734.P11864866630321712959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367734.P11864866630321712959

noncomputable section

/-- A367734: Numbers that have no balanced divisors except for 1.

Offset 1, canonical program `A367734.P11864866630321712959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6470 terms. -/
def A367734 (n : ℕ) : ℤ :=
  (A367734.P11864866630321712959.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6470 terms. -/
def A367734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382617.P9446645730098561292

`A005574(n+1)*A002496(n+1)`
-/

namespace A382617.P9446645730098561292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) * A002496 (n + 1)

end

end A382617.P9446645730098561292

noncomputable section

/-- A382617: Numbers k such that k = m*(m^2 + 1) where m^2 + 1 is prime.

Offset 1, canonical program `A382617.P9446645730098561292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002496, A005574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382617 (n : ℕ) : ℤ :=
  A382617.P9446645730098561292.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002496, A005574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382617.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386573.P13918329885309829820

`A351113(∏{p}[n+1, #])`
-/

namespace A386573.P13918329885309829820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386573.P13918329885309829820

noncomputable section

/-- A386573: Sum of the squarefree balanced divisors of n.

Offset 1, canonical program `A386573.P13918329885309829820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573 (n : ℕ) : ℤ :=
  A386573.P13918329885309829820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386574.P1108007266045445128

`A351112(∏{p}[n+1, #])`
-/

namespace A386574.P1108007266045445128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386574.P1108007266045445128

noncomputable section

/-- A386574: Number of squarefree balanced divisors of n.

Offset 1, canonical program `A386574.P1108007266045445128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574 (n : ℕ) : ℤ :=
  A386574.P1108007266045445128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001912.P6372335498254371482

`A005574(n+2)/2`
-/

namespace A001912.P6372335498254371482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005574 (n + 2) : ℚ) / 2

end

end A001912.P6372335498254371482

noncomputable section

/-- A001912: Numbers k such that 4*k^2 + 1 is prime.

Offset 1, canonical program `A001912.P6372335498254371482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001912 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001912.P6372335498254371482.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005574, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001912.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069584.P17876524389543644252

`(a(n-1)+1)*A132350(n+1)` with `a(0)=0`
-/

namespace A069584.P17876524389543644252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A132350 (n + 1)

end

end A069584.P17876524389543644252

noncomputable section

/-- A069584: a(n) = n - largest perfect power <= n.

Offset 1, canonical program `A069584.P17876524389543644252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069584 (n : ℕ) : ℤ :=
  A069584.P17876524389543644252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177426.P13907797116987976749

`∩[A342028(n+1), A370395(n+1)]`
-/

namespace A177426.P13907797116987976749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177426.P13907797116987976749

noncomputable section

/-- A177426: Average of twin prime pairs with multiple and strictly distinct powers.

Offset 1, canonical program `A177426.P13907797116987976749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A177426 (n : ℕ) : ℤ :=
  (A177426.P13907797116987976749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A177426.provenance : SequenceMachineLib.Provenance := .conjectured

