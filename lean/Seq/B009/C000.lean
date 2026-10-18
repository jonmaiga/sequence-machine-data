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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B008.C000
import Seq.B008.C001

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A131416.P5420476087701445700

`A104587(n)-A025581(n)²`
-/

namespace A131416.P5420476087701445700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n - A025581 n ^ 2

end

end A131416.P5420476087701445700

noncomputable section

/-- A131416: (A000012 * A002260) + (A002260 * A000012) - A000012.

Offset 1, canonical program `A131416.P5420476087701445700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131416 (n : ℕ) : ℤ :=
  A131416.P5420476087701445700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131416.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134480.P13201781655319117815

`A104587(n)-A004736(n+1)`
-/

namespace A134480.P13201781655319117815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n - A004736 (n + 1)

end

end A134480.P13201781655319117815

noncomputable section

/-- A134480: Triangle read by rows: T(n,k) = Sum_{i=k..n} n + i.

Offset 0, canonical program `A134480.P13201781655319117815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134480 (n : ℕ) : ℤ :=
  A134480.P13201781655319117815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134480.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A213822.P7065334176716146466

`A213750(n+1)+A213821(n+1)+A213752(n+1)`
-/

namespace A213822.P7065334176716146466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213750 (n + 1) + (A213821 (n + 1) + A213752 (n + 1))

end

end A213822.P7065334176716146466

noncomputable section

/-- A213822: Rectangular array: (row n) = b**c, where b(h) = 3*h-1, c(h) = 3*n-4+3*h, n>=1, h>=1, and ** = convolution.

Offset 1, canonical program `A213822.P7065334176716146466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213822 (n : ℕ) : ℤ :=
  A213822.P7065334176716146466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213822.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A292342.P16656484624967896721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292342 (n : ℕ) : ℤ :=
  A292342.P16656484624967896721.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292342.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A026328.P9734538290856281181

`∑[A026154(n+3)]`
-/

namespace A026328.P9734538290856281181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026154 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026328.P9734538290856281181

noncomputable section

/-- A026328: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(n) = 5. Also a(n) = T(n,n-3), where T is the array in A026323.

Offset 3, canonical program `A026328.P9734538290856281181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026328 (n : ℕ) : ℤ :=
  A026328.P9734538290856281181.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A026328.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045622.P11433442131743350876

`A045543(n)+A045543(n)-A045530(n)`
-/

namespace A045622.P11433442131743350876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045543 n + (A045543 n - A045530 n)

end

end A045622.P11433442131743350876

noncomputable section

/-- A045622: Convolution of A000108 (Catalan numbers) with A045543.

Offset 1, canonical program `A045622.P11433442131743350876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A045622 (n : ℕ) : ℤ :=
  A045622.P11433442131743350876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A045622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045937.P4646948696810510853

`A045936(eq[1, A045936(n+2)-A045936(n+1)]+1)`
-/

namespace A045937.P4646948696810510853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045936 (n + 2) - A045936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045937.P4646948696810510853

noncomputable section

/-- A045937: Numbers n such that n through n+8 are divisible by the same number of distinct primes.

Offset 1, canonical program `A045937.P4646948696810510853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3139 terms. -/
def A045937 (n : ℕ) : ℤ :=
  A045937.P4646948696810510853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3139 terms. -/
def A045937.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A050315.P12571342608120643020

`A325095(A088512(n))`
-/

namespace A050315.P12571342608120643020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325095 (A088512 n).toNat

end

end A050315.P12571342608120643020

noncomputable section

/-- A050315: Main diagonal of A050314.

Offset 0, canonical program `A050315.P12571342608120643020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050315 (n : ℕ) : ℤ :=
  A050315.P12571342608120643020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050315.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134080.P10459881647826391973

`A129303(2*n+1)`
-/

namespace A134080.P10459881647826391973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129303 (2 * n + 1)

end

end A134080.P10459881647826391973

noncomputable section

/-- A134080: Expansion of (f(-q^5)^5 / f(-q) + f(q^5)^5 / f(q)) / 2 in powers of q^2 where f() is a Ramanujan theta function.

Offset 0, canonical program `A134080.P10459881647826391973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134080 (n : ℕ) : ℤ :=
  A134080.P10459881647826391973.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134080.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A138557.P2808803708478524220

`(-1)^n*A129303(n+1)`
-/

namespace A138557.P2808803708478524220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129303 (n + 1)

end

end A138557.P2808803708478524220

noncomputable section

/-- A138557: Expansion of eta(q)^2 * eta(q^4)^2 * eta(q^10)^7 / (eta(q^2)^3 * eta(q^5)^2 * eta(q^20)^2) in powers of q.

Offset 1, canonical program `A138557.P2808803708478524220`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138557 (n : ℕ) : ℤ :=
  A138557.P2808803708478524220.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138557.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A158315.P7807818137616395365

`A158280(n)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158315.P7807818137616395365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158280 n : ℚ) / 7

end

end A158315.P7807818137616395365

noncomputable section

/-- A158315: A158280(n)/7.

Offset 0, canonical program `A158315.P7807818137616395365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A158315.P7807818137616395365.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158280, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158315.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A191527.P18257187905751201443

`A191524(n)+A191309(n)`
-/

namespace A191527.P18257187905751201443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n + A191309 n

end

end A191527.P18257187905751201443

noncomputable section

/-- A191527: Number of turns in all left factors of Dyck paths of length n.

Offset 0, canonical program `A191527.P18257187905751201443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191527 (n : ℕ) : ℤ :=
  A191527.P18257187905751201443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A191527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191787.P17825478627761863050

`A191524(n)-A191386(n)`
-/

namespace A191787.P17825478627761863050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n - A191386 n

end

end A191787.P17825478627761863050

noncomputable section

/-- A191787: Number of triple-rises in all length n left factors of Dyck paths (triple-rise = three consecutive (1,1)-steps).

Offset 0, canonical program `A191787.P17825478627761863050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191787 (n : ℕ) : ℤ :=
  A191787.P17825478627761863050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191787.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A275068.P8596379837417912279

`filter[A035259(n+1), A323239(#)]`
-/

namespace A275068.P8596379837417912279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A275068.P8596379837417912279

noncomputable section

/-- A275068: Squarefree numbers in A022344.

Offset 0, canonical program `A275068.P8596379837417912279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A275068 (n : ℕ) : ℤ :=
  A275068.P8596379837417912279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A275068.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A340567.P15280367653010939046

`A191524(n)+A191522(n)`
-/

namespace A340567.P15280367653010939046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191524 n + A191522 n

end

end A340567.P15280367653010939046

noncomputable section

/-- A340567: Total number of ascents in all faro permutations of length n.

Offset 0, canonical program `A340567.P15280367653010939046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A340567 (n : ℕ) : ℤ :=
  A340567.P15280367653010939046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A340567.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A026327.P163708418849694211

`∑[A026153(n+2)]`
-/

namespace A026327.P163708418849694211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026327.P163708418849694211

noncomputable section

/-- A026327: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| <= 1 for i = 1,2,...,n, s(0) = 2, s(n) = 4. Also a(n) = T(n,n-2), where T is the array in A026323.

Offset 2, canonical program `A026327.P163708418849694211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026327 (n : ℕ) : ℤ :=
  A026327.P163708418849694211.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A026327.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A031363.P1945995109535793114

`filter[A035259(n+1), A035263(#)]`
-/

namespace A031363.P1945995109535793114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A031363.P1945995109535793114

noncomputable section

/-- A031363: Positive numbers of the form x^2 + xy - y^2; or, of the form 5x^2 - y^2.

Offset 1, canonical program `A031363.P1945995109535793114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6579 terms. -/
def A031363 (n : ℕ) : ℤ :=
  A031363.P1945995109535793114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6579 terms. -/
def A031363.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A038995.P4021492533092847162

`∑{d}[n+1, #*A038994(#)]`
-/

namespace A038995.P4021492533092847162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038994 d

end

end A038995.P4021492533092847162

noncomputable section

/-- A038995: Number of sublattices of index n in generic 8-dimensional lattice.

Offset 1, canonical program `A038995.P4021492533092847162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038995 (n : ℕ) : ℤ :=
  A038995.P4021492533092847162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038995.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053723.P17641291077866751382

`∑{d}[n+1, A129303(#)*A154269((n+1)/#)]`
-/

namespace A053723.P17641291077866751382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129303 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053723.P17641291077866751382

noncomputable section

/-- A053723: Number of 5-core partitions of n.

Offset 0, canonical program `A053723.P17641291077866751382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053723 (n : ℕ) : ℤ :=
  A053723.P17641291077866751382.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053723.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A057058.P18011686596614890694

`A002260(A057027(n+1))`
-/

namespace A057058.P18011686596614890694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A057027 (n + 1)).toNat

end

end A057058.P18011686596614890694

noncomputable section

/-- A057058: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and a(n)=i(A057027(n)).

Offset 1, canonical program `A057058.P18011686596614890694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057058 (n : ℕ) : ℤ :=
  A057058.P18011686596614890694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057058.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A196175.P3423915434805882668

`eq[2, Δ[Δ[A092243(n+1)]]]+2`
-/

namespace A196175.P3423915434805882668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A196175.P3423915434805882668

noncomputable section

/-- A196175: Positions of local minima in A001223.

Offset 1, canonical program `A196175.P3423915434805882668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A196175 (n : ℕ) : ℤ :=
  (A196175.P3423915434805882668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A196175.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A263830.P13012791147232885642

`A263826(n+1)-A263832(2*(n+1))`
-/

namespace A263830.P13012791147232885642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263826 (n + 1) - A263832 (2 * (n + 1))

end

end A263830.P13012791147232885642

noncomputable section

/-- A263830: The number c_{Z^3,pi_1(B_2)}(2n) of 3-torus 2n-coverings over the second amphicosm.

Offset 1, canonical program `A263830.P13012791147232885642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263830 (n : ℕ) : ℤ :=
  A263830.P13012791147232885642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263830.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A281114.P16438368915308680650

`A000217(A215726(n+1))%2`
-/

namespace A281114.P16438368915308680650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A215726 (n + 1)).toNat) 2

end

end A281114.P16438368915308680650

noncomputable section

/-- A281114: Parity of the n-th squarefree triangular number.

Offset 1, canonical program `A281114.P16438368915308680650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281114 (n : ℕ) : ℤ :=
  A281114.P16438368915308680650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281114.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A327251.P13631091954083186129

`∑{d}[n+1, A322577(#)]`
-/

namespace A327251.P13631091954083186129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322577 d

end

end A327251.P13631091954083186129

noncomputable section

/-- A327251: Expansion of Sum_{k>=1} psi(k) * x^k / (1 - x^k)^2, where psi = A001615.

Offset 1, canonical program `A327251.P13631091954083186129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327251 (n : ℕ) : ℤ :=
  A327251.P13631091954083186129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A000589.P12166055581901707499

`A003519(n+5)-A001392(n+5)`
-/

namespace A000589.P12166055581901707499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003519 (n + 5) - A001392 (n + 5)

end

end A000589.P12166055581901707499

noncomputable section

/-- A000589: a(n) = 11*binomial(2n,n-5)/(n+6).

Offset 5, canonical program `A000589.P12166055581901707499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A000589 (n : ℕ) : ℤ :=
  A000589.P12166055581901707499.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A000589.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A029135.P15456997748692065419

`∑[A025926(n)]`
-/

namespace A029135.P15456997748692065419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029135.P15456997748692065419

noncomputable section

/-- A029135: Expansion of 1/((1-x)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029135.P15456997748692065419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029135 (n : ℕ) : ℤ :=
  A029135.P15456997748692065419.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029374.P16522389890125630689

`A029241(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029374.P16522389890125630689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029241 n - a (n - 2)

end

end A029374.P16522389890125630689

noncomputable section

/-- A029374: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029374.P16522389890125630689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029374 (n : ℕ) : ℤ :=
  A029374.P16522389890125630689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029374.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A034676.P6152504972780352585

`∑{d}[n+1, A254520(#)]`
-/

namespace A034676.P6152504972780352585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d

end

end A034676.P6152504972780352585

noncomputable section

/-- A034676: Sum of squares of unitary divisors of n.

Offset 1, canonical program `A034676.P6152504972780352585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034676 (n : ℕ) : ℤ :=
  A034676.P6152504972780352585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034676.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054805.P10064582825251295720

`∩[A051634(n+1), A147812(n+1)]`
-/

namespace A054805.P10064582825251295720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054805.P10064582825251295720

noncomputable section

/-- A054805: Second term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

Offset 1, canonical program `A054805.P10064582825251295720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054805 (n : ℕ) : ℤ :=
  (A054805.P10064582825251295720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. -/
def A054805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060594.P2818484457649056228

`∑{d}[n+1, A114643(#)]`
-/

namespace A060594.P2818484457649056228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114643 d

end

end A060594.P2818484457649056228

noncomputable section

/-- A060594: Number of solutions to x^2 == 1 (mod n), that is, square roots of unity modulo n.

Offset 1, canonical program `A060594.P2818484457649056228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060594 (n : ℕ) : ℤ :=
  A060594.P2818484457649056228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061304.P10532715459546115728

`A000217(A215726(n+1))`
-/

namespace A061304.P10532715459546115728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A215726 (n + 1)).toNat

end

end A061304.P10532715459546115728

noncomputable section

/-- A061304: Squarefree triangular numbers.

Offset 1, canonical program `A061304.P10532715459546115728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061304 (n : ℕ) : ℤ :=
  A061304.P10532715459546115728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215726, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061304.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A082523.P18246598000840909039

`2*A331671(n+2)`
-/

namespace A082523.P18246598000840909039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331671 (n + 2)

end

end A082523.P18246598000840909039

noncomputable section

/-- A082523: Number of times k^2 + (n-k)^2 is a square for 1 <= k <= n-1.

Offset 2, canonical program `A082523.P18246598000840909039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082523 (n : ℕ) : ℤ :=
  A082523.P18246598000840909039.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083792.P7414422446013490865

`comp[A052213(n+1)]+1`
-/

namespace A083792.P7414422446013490865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A083792.P7414422446013490865

noncomputable section

/-- A083792: Lexicographically first increasing sequence such that no two successive terms have the same prime signature.

Offset 1, canonical program `A083792.P7414422446013490865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083792 (n : ℕ) : ℤ :=
  (A083792.P7414422446013490865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083793.P9380209860104701079

`A052213(n+1)+1`
-/

namespace A083793.P9380209860104701079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1) + 1

end

end A083793.P9380209860104701079

noncomputable section

/-- A083793: Numbers k such that k and k-1 have the same prime signature. Numbers not included in A083792.

Offset 1, canonical program `A083793.P9380209860104701079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083793 (n : ℕ) : ℤ :=
  A083793.P9380209860104701079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083793.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102574.P3815926693039414153

`∑{d}[n+1, A254520(#)*A390689((n+1)/#)]`
-/

namespace A102574.P3815926693039414153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d * A390689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A102574.P3815926693039414153

noncomputable section

/-- A102574: a(n) is the sum of the distinct norms of the divisors of n over the Gaussian integers.

Offset 1, canonical program `A102574.P3815926693039414153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102574 (n : ℕ) : ℤ :=
  A102574.P3815926693039414153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102574.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118905.P1084645949915106556

`lt[0, A331671(n+1)]+1`
-/

namespace A118905.P1084645949915106556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118905.P1084645949915106556

noncomputable section

/-- A118905: Sum of legs of Pythagorean triangles (without multiple entries).

Offset 1, canonical program `A118905.P1084645949915106556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118905 (n : ℕ) : ℤ :=
  (A118905.P1084645949915106556.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124981.P2987283090334451958

`∪[A084109(n+1), A004767(n)]`
-/

namespace A124981.P2987283090334451958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124981.P2987283090334451958

noncomputable section

/-- A124981: Odd numbers that are not the sum of 2 squares.

Offset 1, canonical program `A124981.P2987283090334451958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124981 (n : ℕ) : ℤ :=
  (A124981.P2987283090334451958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124981.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141185.P10320517124676975227

`A141139(eq[1, ∑{e}[n+1, #]])`
-/

namespace A141185.P10320517124676975227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A141185.P10320517124676975227

noncomputable section

/-- A141185: a(n) = prime(prime(prime(prime(prime(prime(n)-1)-1)-1)-1)-1)-1, where prime(n) is the n-th prime.

Offset 1, canonical program `A141185.P10320517124676975227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 510 terms. -/
def A141185 (n : ℕ) : ℤ :=
  A141185.P10320517124676975227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 510 terms. -/
def A141185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147813.P1679973090657813842

`A000040(A333230(n+1))`
-/

namespace A147813.P1679973090657813842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333230 (n + 1)).toNat

end

end A147813.P1679973090657813842

noncomputable section

/-- A147813: Primes prime(n) such that (-prime(n) + 2*prime(n+1) - prime(n+2))/((1 - prime(n) + prime(n+1))^(3/2)) < 0.

Offset 1, canonical program `A147813.P1679973090657813842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A147813 (n : ℕ) : ℤ :=
  A147813.P1679973090657813842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5252 terms. -/
def A147813.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A198697.P858733286284913195

`A001223(∩[A233671(n+1), A258026(n+1)])`
-/

namespace A198697.P858733286284913195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A198697.P858733286284913195

noncomputable section

/-- A198697: Values of local maxima in differences of primes, A001223.

Offset 1, canonical program `A198697.P858733286284913195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6629 terms. -/
def A198697 (n : ℕ) : ℤ :=
  A198697.P858733286284913195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6629 terms. -/
def A198697.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A260268.P1809234303632853884

`∩[A386105(n+1), A386120(n+1)]`
-/

namespace A260268.P1809234303632853884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P1809234303632853884

noncomputable section

/-- A260268: Primes having only {1, 4, 5} as digits.

Offset 1, canonical program `A260268.P1809234303632853884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A260268 (n : ℕ) : ℤ :=
  (A260268.P1809234303632853884.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A260268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260828.P309864450490705242

`∩[A386096(n+1), A386120(n+1)]`
-/

namespace A260828.P309864450490705242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260828.P309864450490705242

noncomputable section

/-- A260828: Primes having only {1, 5, 7} as digits.

Offset 1, canonical program `A260828.P309864450490705242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A260828 (n : ℕ) : ℤ :=
  (A260828.P309864450490705242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A260828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260889.P9318002860261783175

`∩[A386020(n+1), A386093(n+1)]`
-/

namespace A260889.P9318002860261783175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260889.P9318002860261783175

noncomputable section

/-- A260889: Primes having only {1, 2, 7} as digits.

Offset 1, canonical program `A260889.P9318002860261783175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1366 terms. -/
def A260889 (n : ℕ) : ℤ :=
  (A260889.P9318002860261783175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1366 terms. -/
def A260889.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A285345.P567793792438865630

`A285305(A028352(n+1)/2)`
-/

namespace A285345.P567793792438865630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (SequenceMachineLib.roundAway ((A028352 (n + 1) : ℚ) / 2)).toNat

end

end A285345.P567793792438865630

noncomputable section

/-- A285345: Fixed point of the morphism 0 -> 10, 1 -> 1100.

Offset 1, canonical program `A285345.P567793792438865630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285345 (n : ℕ) : ℤ :=
  A285345.P567793792438865630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307425.P15398168593737495323

`∑{d}[n+1, A073184(#)*A307445((n+1)/#)]`
-/

namespace A307425.P15398168593737495323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307425.P15398168593737495323

noncomputable section

/-- A307425: Dirichlet g.f.: zeta(s) / (zeta(2*s) * zeta(3*s)).

Offset 1, canonical program `A307425.P15398168593737495323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307425 (n : ℕ) : ℤ :=
  A307425.P15398168593737495323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307425.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A014300.P6272885527061733046

`A333564(n+1)/2^(n+1)`
-/

namespace A014300.P6272885527061733046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333564 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A014300.P6272885527061733046

noncomputable section

/-- A014300: Number of nodes of odd outdegree in all ordered rooted (planar) trees with n edges.

Offset 1, canonical program `A014300.P6272885527061733046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014300 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014300.P6272885527061733046.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333564, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014300.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A025916.P2083996258895106641

`A029234(n)+A029401(n)-A029212(n)`
-/

namespace A025916.P2083996258895106641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 n + (A029401 n - A029212 n)

end

end A025916.P2083996258895106641

noncomputable section

/-- A025916: Expansion of 1/((1-x^7)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A025916.P2083996258895106641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025916 (n : ℕ) : ℤ :=
  A025916.P2083996258895106641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029130.P9139947445189529959

`A029241(abs(A024000(n)))+A029237(n)`
-/

namespace A029130.P9139947445189529959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029241 |A024000 n|.toNat + A029237 n

end

end A029130.P9139947445189529959

noncomputable section

/-- A029130: Expansion of 1/((1-x)(1-x^8)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029130.P9139947445189529959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029130 (n : ℕ) : ℤ :=
  A029130.P9139947445189529959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029132.P3141422924859193471

`A029241(abs(1-n))+A029241(n)`
-/

namespace A029132.P3141422924859193471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029241 |1 - (n : ℤ)|.toNat + A029241 n

end

end A029132.P3141422924859193471

noncomputable section

/-- A029132: Expansion of 1/((1-x)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029132.P3141422924859193471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029132 (n : ℕ) : ℤ :=
  A029132.P3141422924859193471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029132.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053580.P17285909169355561806

`∩[A057770(n+1), A079652(n+1)]`
-/

namespace A053580.P17285909169355561806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P17285909169355561806

noncomputable section

/-- A053580: Primes having only {0, 6, 8, 9} as digits.

Offset 1, canonical program `A053580.P17285909169355561806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. -/
def A053580 (n : ℕ) : ℤ :=
  (A053580.P17285909169355561806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. -/
def A053580.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085759.P17382580140458893976

`filter[A057653(n+1), A354923(#)]`
-/

namespace A085759.P17382580140458893976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A085759.P17382580140458893976

noncomputable section

/-- A085759: Prime powers of the form 4n+1.

Offset 1, canonical program `A085759.P17382580140458893976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4240 terms. -/
def A085759 (n : ℕ) : ℤ :=
  A085759.P17382580140458893976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4240 terms. -/
def A085759.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100300.P11647304078459393174

`A100299(n+3)-(-1)^(n+3)`
-/

namespace A100300.P11647304078459393174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100299 (n + 3) - (-1) ^ (n + 3)

end

end A100300.P11647304078459393174

noncomputable section

/-- A100300: Number of dissections of a convex n-gon by nonintersecting diagonals into an odd number of regions.

Offset 3, canonical program `A100300.P11647304078459393174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100300 (n : ℕ) : ℤ :=
  A100300.P11647304078459393174.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100299, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125018.P1460003001832132965

`∩[A057653(n+1), A143575(n+1)]`
-/

namespace A125018.P1460003001832132965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125018.P1460003001832132965

noncomputable section

/-- A125018: Numbers == 1 (mod 4) with a unique partition as a sum of 2 squares x^2 + y^2.

Offset 1, canonical program `A125018.P1460003001832132965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4618 terms. -/
def A125018 (n : ℕ) : ℤ :=
  (A125018.P1460003001832132965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4618 terms. -/
def A125018.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141130.P2229699849322392218

`A141139(A008578(n+1))`
-/

namespace A141130.P2229699849322392218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141139 (A008578 (n + 1)).toNat

end

end A141130.P2229699849322392218

noncomputable section

/-- A141130: a(n) = prime(prime(prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1) - 1) - 1.

Offset 0, canonical program `A141130.P2229699849322392218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A141130 (n : ℕ) : ℤ :=
  A141130.P2229699849322392218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A141130.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A168045.P1578608336335439883

`A167707(n+1)+n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168045.P1578608336335439883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1) + (n + 1 : ℤ)

end

end A168045.P1578608336335439883

noncomputable section

/-- A168045: a(n) = A167707(n) + n.

Offset 1, canonical program `A168045.P1578608336335439883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168045 (n : ℕ) : ℤ :=
  A168045.P1578608336335439883.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168045.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A260267.P1888912496524943488

`∩[A383371(n+1), A386093(n+1)]`
-/

namespace A260267.P1888912496524943488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P1888912496524943488

noncomputable section

/-- A260267: Primes having only {1, 2, 4} as digits.

Offset 1, canonical program `A260267.P1888912496524943488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 775 terms. -/
def A260267 (n : ℕ) : ℤ :=
  (A260267.P1888912496524943488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 775 terms. -/
def A260267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284793.P3906525423452783720

`A285305(n+1)-A284775(n+1)`
-/

namespace A284793.P3906525423452783720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (n + 1) - A284775 (n + 1)

end

end A284793.P3906525423452783720

noncomputable section

/-- A284793: Difference sequence of A284775.

Offset 1, canonical program `A284793.P3906525423452783720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284793 (n : ℕ) : ℤ :=
  A284793.P3906525423452783720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293376.P13980595936671275185

`A291186(A120736(n+1))`
-/

namespace A293376.P13980595936671275185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291186 (A120736 (n + 1)).toNat

end

end A293376.P13980595936671275185

noncomputable section

/-- A293376: Corresponding values of pod(n)/tau(n) of numbers n from A120736.

Offset 1, canonical program `A293376.P13980595936671275185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120736, A291186, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293376 (n : ℕ) : ℤ :=
  A293376.P13980595936671275185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120736, A291186, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A293376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307100.P11035796224426084874

`∑{d}[n+1, A394346(#)]`
-/

namespace A307100.P11035796224426084874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A394346 d

end

end A307100.P11035796224426084874

noncomputable section

/-- A307100: a(n) = Sum_{d|n} (tau(d)*pod(d)) where tau(k) = the number of divisors of k (A000005) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A307100.P11035796224426084874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307100 (n : ℕ) : ℤ :=
  A307100.P11035796224426084874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A307100.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A325975.P4868771464823910361

`1/2*gcd(A034460(n+1)+A325313(n+1), A325814(n+1)+A325314(n+1))`
-/

namespace A325975.P4868771464823910361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (Int.gcd (A034460 (n + 1) + A325313 (n + 1)) (A325814 (n + 1) + A325314 (n + 1)) : ℚ)

end

end A325975.P4868771464823910361

noncomputable section

/-- A325975: a(n) = gcd(A325977(n), A325978(n)).

Offset 1, canonical program `A325975.P4868771464823910361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, A325314, A325814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325975.P4868771464823910361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034460, A325313, A325314, A325814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A325975.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325978.P3623255337971187287

`A033879(n+1)+A325977(n+1)`
-/

namespace A325978.P3623255337971187287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A325977 (n + 1)

end

end A325978.P3623255337971187287

noncomputable section

/-- A325978: a(n) = (1/2)*(A325314(n) + A325814(n)).

Offset 1, canonical program `A325978.P3623255337971187287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325978 (n : ℕ) : ℤ :=
  A325978.P3623255337971187287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328258.P16805831198156578016

`2*A192066(n+1)-A034448(n+1)`
-/

namespace A328258.P16805831198156578016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192066 (n + 1) - A034448 (n + 1)

end

end A328258.P16805831198156578016

noncomputable section

/-- A328258: a(n) = Sum_{d|n, gcd(d,n/d) = 1} (-1)^(d + 1) * d.

Offset 1, canonical program `A328258.P16805831198156578016`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328258 (n : ℕ) : ℤ :=
  A328258.P16805831198156578016.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A192066, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A328258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338395.P13114426695192953794

`∩[A120736(n+1), A145551(n+1)]`
-/

namespace A338395.P13114426695192953794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338395.P13114426695192953794

noncomputable section

/-- A338395: Numbers m such that lcm(tau(m), sigma(m), pod(m)) = pod(m).

Offset 1, canonical program `A338395.P13114426695192953794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A338395 (n : ℕ) : ℤ :=
  (A338395.P13114426695192953794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A338395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360156.P7196993032354104862

`A171977(n+1)*A192066(n+1)`
-/

namespace A360156.P7196993032354104862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) * A192066 (n + 1)

end

end A360156.P7196993032354104862

noncomputable section

/-- A360156: a(n) is the sum of the even unitary divisors of 2*n.

Offset 1, canonical program `A360156.P7196993032354104862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360156 (n : ℕ) : ℤ :=
  A360156.P7196993032354104862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192066, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046711.P9858808999613053756

`∪[A057653(n+1), A097269(n+1)]`
-/

namespace A046711.P9858808999613053756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P9858808999613053756

noncomputable section

/-- A046711: From the Bruck-Ryser theorem: numbers n == 1 or 2 (mod 4) which are also the sum of 2 squares.

Offset 1, canonical program `A046711.P9858808999613053756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046711 (n : ℕ) : ℤ :=
  (A046711.P9858808999613053756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048751.P4042417737620018600

`A120736(n+3)`
-/

namespace A048751.P4042417737620018600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120736 (n + 3)

end

end A048751.P4042417737620018600

noncomputable section

/-- A048751: Composites k whose product of divisors divided by number of divisors is an integer.

Offset 1, canonical program `A048751.P4042417737620018600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A048751 (n : ℕ) : ℤ :=
  A048751.P4042417737620018600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A048751.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062350.P10684481247219108148

`∩[A007932(n+1), A386088(n+1)]`
-/

namespace A062350.P10684481247219108148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P10684481247219108148

noncomputable section

/-- A062350: Primes having only {1, 2, 3} as digits.

Offset 1, canonical program `A062350.P10684481247219108148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A062350 (n : ℕ) : ℤ :=
  (A062350.P10684481247219108148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. -/
def A062350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082657.P13976561059953945829

`eq[A010052(n)+1, A101428(n)]`
-/

namespace A082657.P13976561059953945829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082657.P13976561059953945829

noncomputable section

/-- A082657: Integers expressible as the sum of a square and a triangular number in just one way.

Offset 1, canonical program `A082657.P13976561059953945829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2231 terms. -/
def A082657 (n : ℕ) : ℤ :=
  (A082657.P13976561059953945829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2231 terms. -/
def A082657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082658.P12531290815627786350

`eq[A010052(n)+2, A101428(n)]`
-/

namespace A082658.P12531290815627786350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082658.P12531290815627786350

noncomputable section

/-- A082658: Integers expressible as the sum of a square and a triangular number in exactly two distinct ways.

Offset 1, canonical program `A082658.P12531290815627786350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A082658 (n : ℕ) : ℤ :=
  (A082658.P12531290815627786350.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A082658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082660.P14426502588101245552

`Δ[∑[A101428(n)]-A000196(n)]`
-/

namespace A082660.P14426502588101245552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082660.P14426502588101245552

noncomputable section

/-- A082660: Number of ways n can be expressed as the sum of a square and a triangular number.

Offset 1, canonical program `A082660.P14426502588101245552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082660 (n : ℕ) : ℤ :=
  A082660.P14426502588101245552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082660.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A363023.P10697609263332370990

`∩[A386037(n+1), A386125(n+1)]`
-/

namespace A363023.P10697609263332370990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P10697609263332370990

noncomputable section

/-- A363023: Primes having only {1, 6, 9} as digits.

Offset 1, canonical program `A363023.P10697609263332370990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1426 terms. -/
def A363023 (n : ℕ) : ℤ :=
  (A363023.P10697609263332370990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1426 terms. -/
def A363023.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092790.P11472934723672521066

`A023896(n+2)+A092249(n+2)-A092249(n+1)`
-/

namespace A092790.P11472934723672521066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 2) + (A092249 (n + 2) - A092249 (n + 1))

end

end A092790.P11472934723672521066

noncomputable section

/-- A092790: a(n) = (n+1)*phi(n-1)/2.

Offset 3, canonical program `A092790.P11472934723672521066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A092790 (n : ℕ) : ℤ :=
  A092790.P11472934723672521066.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A092790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106477.P792080474902771144

`A092249(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A106477.P792080474902771144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092249 (n + 1) - a (n - 1)

end

end A106477.P792080474902771144

noncomputable section

/-- A106477: Diagonal sums of Euler phi function sequence array.

Offset 0, canonical program `A106477.P792080474902771144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106477 (n : ℕ) : ℤ :=
  A106477.P792080474902771144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113419.P6284857429219078368

`(-1)^n*A113417(n)`
-/

namespace A113419.P6284857429219078368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113417 n

end

end A113419.P6284857429219078368

noncomputable section

/-- A113419: Expansion of phi(x)^2 * phi(-x) * psi(x^4) in powers of x where phi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A113419.P6284857429219078368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113417, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113419 (n : ℕ) : ℤ :=
  A113419.P6284857429219078368.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113417, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115247.P17353346864210788674

`val(A113417(4*n), 2)`
-/

namespace A115247.P17353346864210788674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113417 (4 * n)).toNat 2

end

end A115247.P17353346864210788674

noncomputable section

/-- A115247: 2^a(n) divides A001935(n) but 2^(a(n)+1) does not.

Offset 0, canonical program `A115247.P17353346864210788674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A115247 (n : ℕ) : ℤ :=
  (A115247.P17353346864210788674.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A115247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115733.P11332342252543868068

`A062298(p?[A115732(n+1)])`
-/

namespace A115733.P11332342252543868068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A115733.P11332342252543868068

noncomputable section

/-- A115733: prime(n)-n, repeated (prime(n)-n) times.

Offset 1, canonical program `A115733.P11332342252543868068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115733 (n : ℕ) : ℤ :=
  A115733.P11332342252543868068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117000.P13797727626534501886

`A113417(A025480(n))`
-/

namespace A117000.P13797727626534501886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113417 (A025480 n).toNat

end

end A117000.P13797727626534501886

noncomputable section

/-- A117000: a(n) = Sum_{d|n} Jacobi(2,d)*d.

Offset 1, canonical program `A117000.P13797727626534501886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117000 (n : ℕ) : ℤ :=
  A117000.P13797727626534501886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117000.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124741.P16805278600356101561

`A038566(A092249(n+2)-1)`
-/

namespace A124741.P16805278600356101561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A092249 (n + 2) - 1).toNat

end

end A124741.P16805278600356101561

noncomputable section

/-- A124741: a(n) = largest of those positive integers which are coprime to both n and n+1 and which are <= n.

Offset 1, canonical program `A124741.P16805278600356101561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A124741 (n : ℕ) : ℤ :=
  A124741.P16805278600356101561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A124741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135342.P5317769749649271683

`A092249(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A135342.P5317769749649271683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A092249 n + a (n - 1)

end

end A135342.P5317769749649271683

noncomputable section

/-- A135342: Number of distinct means of nonempty subsets of {1,...,n}.

Offset 1, canonical program `A135342.P5317769749649271683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135342 (n : ℕ) : ℤ :=
  A135342.P5317769749649271683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143267.P18070143520200093026

`A002260(n+1)*A106476(A057944(n))`
-/

namespace A143267.P18070143520200093026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A106476 (A057944 n).toNat

end

end A143267.P18070143520200093026

noncomputable section

/-- A143267: Triangle read by rows, A130207 * A000012 * A127648.

Offset 1, canonical program `A143267.P18070143520200093026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143267 (n : ℕ) : ℤ :=
  A143267.P18070143520200093026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187263.P3388945961355388323

`A092249(n+1)+n`
-/

namespace A187263.P3388945961355388323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + (n : ℤ)

end

end A187263.P3388945961355388323

noncomputable section

/-- A187263: Number of nonempty subsets of {1, 2, ..., n} with <=2 pairwise coprime elements.

Offset 1, canonical program `A187263.P3388945961355388323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187263 (n : ℕ) : ℤ :=
  A187263.P3388945961355388323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A283363.P9051439283470971273

`abs(A090396(n+2)-A090396(n+1))`
-/

namespace A283363.P9051439283470971273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090396 (n + 2) - A090396 (n + 1)|

end

end A283363.P9051439283470971273

noncomputable section

/-- A283363: Absolute values of first differences of A090396.

Offset 1, canonical program `A283363.P9051439283470971273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090396, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283363 (n : ℕ) : ℤ :=
  A283363.P9051439283470971273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090396, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283363.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A330557.P15434734115232232872

`A001281(A330556(n)+∑[A101264(n)])`
-/

namespace A330557.P15434734115232232872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A330556 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330557.P15434734115232232872

noncomputable section

/-- A330557: a(n) = number of primes p <= 2*n+1 with Delta(p) == 2 mod 4, where Delta(p) = nextprime(p) - p.

Offset 0, canonical program `A330557.P15434734115232232872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330557 (n : ℕ) : ℤ :=
  A330557.P15434734115232232872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330557.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359548.P7829680634435562541

`A328729(n+1)%2`
-/

namespace A359548.P7829680634435562541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328729 (n + 1)) 2

end

end A359548.P7829680634435562541

noncomputable section

/-- A359548: Dirichlet inverse of A053866, where A053866(n) gives the parity of sigma(n).

Offset 1, canonical program `A359548.P7829680634435562541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359548 (n : ℕ) : ℤ :=
  A359548.P7829680634435562541.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005598.P13593438204838445571

`A092249(n)+a(n-1)` with `a(0)=1`
-/

namespace A005598.P13593438204838445571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092249 n + a (n - 1)

end

end A005598.P13593438204838445571

noncomputable section

/-- A005598: a(n) = 1 + Sum_{i=1..n} (n-i+1)*phi(i).

Offset 0, canonical program `A005598.P13593438204838445571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005598 (n : ℕ) : ℤ :=
  A005598.P13593438204838445571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005819.P8576469674546640238

`A092249(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A005819.P8576469674546640238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A092249 (n + 1) + a (n - 1)

end

end A005819.P8576469674546640238

noncomputable section

/-- A005819: Number of words of length n in a certain language.

Offset 1, canonical program `A005819.P8576469674546640238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005819 (n : ℕ) : ℤ :=
  A005819.P8576469674546640238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015614.P13535555482679389419

`A000217(n)-A185670(n+1)`
-/

namespace A015614.P13535555482679389419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A185670 (n + 1)

end

end A015614.P13535555482679389419

noncomputable section

/-- A015614: a(n) = -1 + Sum_{i=1..n} phi(i).

Offset 1, canonical program `A015614.P13535555482679389419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015614 (n : ℕ) : ℤ :=
  A015614.P13535555482679389419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A015614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024449.P16431338297242596881

`∑[A000040(n+4)*A024448(n+1)]`
-/

namespace A024449.P16431338297242596881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) * A024448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024449.P16431338297242596881

noncomputable section

/-- A024449: 4th elementary symmetric function of the first n+3 primes.

Offset 1, canonical program `A024449.P16431338297242596881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024449 (n : ℕ) : ℤ :=
  A024449.P16431338297242596881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024453.P7505489460028250605

`floor(A024448(n+1)/A007504(n+3))`
-/

namespace A024453.P7505489460028250605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024448 (n + 1) : ℚ) / (A007504 (n + 3) : ℚ)⌋

end

end A024453.P7505489460028250605

noncomputable section

/-- A024453: a(n) = [ (3rd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

Offset 1, canonical program `A024453.P7505489460028250605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024453 (n : ℕ) : ℤ :=
  A024453.P7505489460028250605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A024448, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024453.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024455.P11382679767047507144

`floor(A024448(n+1)/A024447(n+3))`
-/

namespace A024455.P11382679767047507144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024448 (n + 1) : ℚ) / (A024447 (n + 3) : ℚ)⌋

end

end A024455.P11382679767047507144

noncomputable section

/-- A024455: [ (3rd elementary symmetric function of P(n))/(2nd elementary symmetric function of P(n)) ], where P(n) = {first n+2 primes}.

Offset 1, canonical program `A024455.P11382679767047507144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024455 (n : ℕ) : ℤ :=
  A024455.P11382679767047507144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A024455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024523.P15062515241422550493

`∑[A024522(n+2)*A065091(n+1)]`
-/

namespace A024523.P15062515241422550493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024522 (n + 2) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024523.P15062515241422550493

noncomputable section

/-- A024523: a(n) = 3rd elementary symmetric function of {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 3, canonical program `A024523.P15062515241422550493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2724 terms. -/
def A024523 (n : ℕ) : ℤ :=
  A024523.P15062515241422550493.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2724 terms. -/
def A024523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024531.P4098472389079834350

`floor(A024522(n+2)/A014284(n+2))`
-/

namespace A024531.P4098472389079834350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024522 (n + 2) : ℚ) / (A014284 (n + 2) : ℚ)⌋

end

end A024531.P4098472389079834350

noncomputable section

/-- A024531: a(n) = [ (2nd elementary symmetric function of P(n))/(first elementary symmetric function of P(n)) ], where P(n) = {1, p(1), p(2), ..., p(n-1)}, where p(0) = 1.

Offset 2, canonical program `A024531.P4098472389079834350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024531 (n : ℕ) : ℤ :=
  A024531.P4098472389079834350.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A024531.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049734.P14767430528690211686

`A049723(∑[n+3]+6)`
-/

namespace A049734.P14767430528690211686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049723 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A049734.P14767430528690211686

noncomputable section

/-- A049734: a(n)=T(n,3), array T as in A049723.

Offset 0, canonical program `A049734.P14767430528690211686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A049734 (n : ℕ) : ℤ :=
  A049734.P14767430528690211686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A049734.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A062022.P14256368465829765319

`A024526(n+1)-∑[A005722(n+1)]`
-/

namespace A062022.P14256368465829765319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024526 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062022.P14256368465829765319

noncomputable section

/-- A062022: a(n) = Sum_{k=1..n} Sum_{j=1..k} (prime(k) - prime(j))^2.

Offset 1, canonical program `A062022.P14256368465829765319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062022 (n : ℕ) : ℤ :=
  A062022.P14256368465829765319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062022.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136514.P3670584216684730717

`2*A001182(n+1)`
-/

namespace A136514.P3670584216684730717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001182 (n + 1)

end

end A136514.P3670584216684730717

noncomputable section

/-- A136514: Number of unit square lattice cells inside half-plane (two adjacent quadrants) of origin centered circle of radius n.

Offset 1, canonical program `A136514.P3670584216684730717`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136514 (n : ℕ) : ℤ :=
  A136514.P3670584216684730717.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136514.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A219665.P14331942833812049253

`A219652((n+1)!)`
-/

namespace A219665.P14331942833812049253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (Nat.factorial (n + 1))

end

end A219665.P14331942833812049253

noncomputable section

/-- A219665: One more than the partial sums of A219661.

Offset 1, canonical program `A219665.P14331942833812049253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219665 (n : ℕ) : ℤ :=
  A219665.P14331942833812049253.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219652, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A219665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228172.P14776185888272787991

`A211340(n+1)+n+1`
-/

namespace A228172.P14776185888272787991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211340 (n + 1) + (n + 1 : ℤ)

end

end A228172.P14776185888272787991

noncomputable section

/-- A228172: Number of integer pairs (x,y) such that 0<=y<=x, x>0, and x^2+y^2<=n^2.

Offset 1, canonical program `A228172.P14776185888272787991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228172 (n : ℕ) : ℤ :=
  A228172.P14776185888272787991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211340, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228172.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A289342.P19232162365294286

`a(n-1)+A288003(n)` with `a(0)=1`
-/

namespace A289342.P19232162365294286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A288003 n

end

end A289342.P19232162365294286

noncomputable section

/-- A289342: Partial sums of r-fusc A288003(n-1) + 1.

Offset 1, canonical program `A289342.P19232162365294286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289342 (n : ℕ) : ℤ :=
  A289342.P19232162365294286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289342.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A308731.P16581783222327330498

`A316322(n+1)+A007290(n+2)`
-/

namespace A308731.P16581783222327330498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316322 (n + 1) + A007290 (n + 2)

end

end A308731.P16581783222327330498

noncomputable section

/-- A308731: a(n) is the sum of the terms of the symmetric square array defined by M(i,j) = prime(i)+i-j for i >= j and M(i,j) = M(j,i) if i < j.

Offset 1, canonical program `A308731.P16581783222327330498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308731 (n : ℕ) : ℤ :=
  A308731.P16581783222327330498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308731.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A344373.P3639027277485766421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344373 (n : ℕ) : ℤ :=
  A344373.P3639027277485766421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348983.P13130046007357734622

`∑{d}[n+1, #*A348980((n+1)/#)]`
-/

namespace A348983.P13130046007357734622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A348980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348983.P13130046007357734622

noncomputable section

/-- A348983: a(n) = Sum_{d|n} A038040(d) * A322582(n/d), where A038040(n) = n*d(n), A322582(n) = n - A003958(n), and A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A348983.P13130046007357734622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348983 (n : ℕ) : ℤ :=
  A348983.P13130046007357734622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348985.P13379498630196334524

`A000203(n+1)/A348984(n+1)`
-/

namespace A348985.P13379498630196334524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348985.P13379498630196334524

noncomputable section

/-- A348985: Numerator of ratio sigma(n) / A325973(n), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

Offset 1, canonical program `A348985.P13379498630196334524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348984, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348985.P13379498630196334524.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348984, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348986.P14080058604187377946

`A325973(n+1)/A348984(n+1)`
-/

namespace A348986.P14080058604187377946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325973 (n + 1) : ℚ) / (A348984 (n + 1) : ℚ)

end

end A348986.P14080058604187377946

noncomputable section

/-- A348986: Denominator of ratio sigma(n) / A325973(n), where A325973 is the arithmetic mean of {sum of squarefree divisors} and {sum of unitary divisors}.

Offset 1, canonical program `A348986.P14080058604187377946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A348984, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348986.P14080058604187377946.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325973, A348984, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349130.P16374043146752204545

`A038040(n+1)-A348980(n+1)`
-/

namespace A349130.P16374043146752204545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A348980 (n + 1)

end

end A349130.P16374043146752204545

noncomputable section

/-- A349130: a(n) = Sum_{d|n} d * A003958(n/d), where A003958 is fully multiplicative with a(p) = (p-1).

Offset 1, canonical program `A349130.P16374043146752204545`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A348980, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349130 (n : ℕ) : ℤ :=
  A349130.P16374043146752204545.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A348980, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351446.P16027380456626133253

`lt[abs(A351445(n+1)), 1]+1`
-/

namespace A351446.P16027380456626133253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351445 (n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A351446.P16027380456626133253

noncomputable section

/-- A351446: Numbers k for which A003958(sigma(k)) = A003958(k), where A003958 is multiplicative with a(p^e) = (p-1)^e and sigma is the sum of divisors function.

Offset 1, canonical program `A351446.P16027380456626133253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A351446 (n : ℕ) : ℤ :=
  (A351446.P16027380456626133253.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A351446.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A000443.P2477946098226311991

`eq[3, A000161(n)]`
-/

namespace A000443.P2477946098226311991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000443.P2477946098226311991

noncomputable section

/-- A000443: Numbers that are the sum of 2 squares in exactly 3 ways.

Offset 1, canonical program `A000443.P2477946098226311991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A000443 (n : ℕ) : ℤ :=
  (A000443.P2477946098226311991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A000443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000925.P15779309076395075492

`2*A000161(n)-A379480(n)`
-/

namespace A000925.P15779309076395075492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000161 n - A379480 n

end

end A000925.P15779309076395075492

noncomputable section

/-- A000925: Number of ordered ways of writing n as a sum of 2 squares of nonnegative integers.

Offset 0, canonical program `A000925.P15779309076395075492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000925 (n : ℕ) : ℤ :=
  A000925.P15779309076395075492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000925.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A007147.P16521925321400448179

`1/2*(A016116(n)+A000016(n+1))`
-/

namespace A007147.P16521925321400448179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A016116 n + A000016 (n + 1) : ℚ)

end

end A007147.P16521925321400448179

noncomputable section

/-- A007147: Number of self-dual 2-colored necklaces with 2n beads.

Offset 1, canonical program `A007147.P16521925321400448179`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000016, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007147 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007147.P16521925321400448179.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000016, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008965.P16924218572130557635

`A000031(n+1)-1`
-/

namespace A008965.P16924218572130557635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - 1

end

end A008965.P16924218572130557635

noncomputable section

/-- A008965: Number of necklaces of sets of beads containing a total of n beads.

Offset 1, canonical program `A008965.P16924218572130557635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008965 (n : ℕ) : ℤ :=
  A008965.P16924218572130557635.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024556.P10614028685495330531

`filter[A082686(n+1), A323154(#)]`
-/

namespace A024556.P10614028685495330531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A024556.P10614028685495330531

noncomputable section

/-- A024556: Odd squarefree composite numbers.

Offset 1, canonical program `A024556.P10614028685495330531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7633 terms. -/
def A024556 (n : ℕ) : ℤ :=
  A024556.P10614028685495330531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7633 terms. -/
def A024556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025435.P3024463487466648612

`A000161(n)-A010052(2*n)`
-/

namespace A025435.P3024463487466648612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n - A010052 (2 * n)

end

end A025435.P3024463487466648612

noncomputable section

/-- A025435: Number of partitions of n into 2 distinct squares.

Offset 0, canonical program `A025435.P3024463487466648612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025435 (n : ℕ) : ℤ :=
  A025435.P3024463487466648612.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025441.P2356104381513953852

`A000161(n)-A093709(n)`
-/

namespace A025441.P2356104381513953852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n - A093709 n

end

end A025441.P2356104381513953852

noncomputable section

/-- A025441: Number of partitions of n into 2 distinct nonzero squares.

Offset 0, canonical program `A025441.P2356104381513953852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A093709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025441 (n : ℕ) : ℤ :=
  A025441.P2356104381513953852.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A093709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A025441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026119.P9134211509856780869

`A000016(Δ[n²])`
-/

namespace A026119.P9134211509856780869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026119.P9134211509856780869

noncomputable section

/-- A026119: Bisection of A000016 (also of A000013).

Offset 0, canonical program `A026119.P9134211509856780869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A026119 (n : ℕ) : ℤ :=
  A026119.P9134211509856780869.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A026119.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A037866.P11074449320022151340

`A037867(A037474(n+1))`
-/

namespace A037866.P11074449320022151340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037867 (A037474 (n + 1)).toNat

end

end A037866.P11074449320022151340

noncomputable section

/-- A037866: a(n)=(number of digits <=3)-(number of digits >3) in base 7 representation of n.

Offset 1, canonical program `A037866.P11074449320022151340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037866 (n : ℕ) : ℤ :=
  A037866.P11074449320022151340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. -/
def A037866.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A053634.P9507846522746473809

`A000031(n+3)/2`
-/

namespace A053634.P9507846522746473809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000031 (n + 3) : ℚ) / 2

end

end A053634.P9507846522746473809

noncomputable section

/-- A053634: a(n) = Sum_{ d divides n } phi(d)*2^(n/d)/(2n).

Offset 3, canonical program `A053634.P9507846522746473809`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053634.P9507846522746473809.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053634.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A062570.P15469525683880986353

`A055034(2*(n+1))`
-/

namespace A062570.P15469525683880986353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * (n + 1))

end

end A062570.P15469525683880986353

noncomputable section

/-- A062570: a(n) = phi(2*n).

Offset 1, canonical program `A062570.P15469525683880986353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062570 (n : ℕ) : ℤ :=
  A062570.P15469525683880986353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063014.P2435970929241132637

`A000161(n²)`
-/

namespace A063014.P2435970929241132637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (n ^ 2)

end

end A063014.P2435970929241132637

noncomputable section

/-- A063014: Number of solutions to n^2 = b^2 + c^2 (with c >= b >= 0).

Offset 0, canonical program `A063014.P2435970929241132637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063014 (n : ℕ) : ℤ :=
  A063014.P2435970929241132637.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063872.P6653765123513031223

`A025473(n+2)-1`
-/

namespace A063872.P6653765123513031223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2) - 1

end

end A063872.P6653765123513031223

noncomputable section

/-- A063872: Let m be the n-th positive integer such that phi(m) is divisible by m - phi(m). Then a(n) = phi(m)/(m - phi(m)).

Offset 1, canonical program `A063872.P6653765123513031223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063872 (n : ℕ) : ℤ :=
  A063872.P6653765123513031223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064097.P8268505920434442649

`1+a(n-A052126(n+1))` with `a(0)=0`
-/

namespace A064097.P8268505920434442649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A052126 (n + 1)).toNat

end

end A064097.P8268505920434442649

noncomputable section

/-- A064097: A quasi-logarithm defined inductively by a(1) = 0 and a(p) = 1 + a(p-1) if p is prime and a(n*m) = a(n) + a(m) if m,n > 1.

Offset 1, canonical program `A064097.P8268505920434442649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064097 (n : ℕ) : ℤ :=
  (A064097.P8268505920434442649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064804.P11046241250947440996

`2*lt[A055034(n+1), A055034(A028310(n))]`
-/

namespace A064804.P11046241250947440996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064804.P11046241250947440996

noncomputable section

/-- A064804: Numbers 2*k such that phi(2*k + 2) < phi(2*k).

Offset 1, canonical program `A064804.P11046241250947440996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4875 terms. -/
def A064804 (n : ℕ) : ℤ :=
  (A064804.P11046241250947440996.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4875 terms. -/
def A064804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064989.P13349672914146769936

`A008578(A061395(n+1))*a(A052126(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A064989.P13349672914146769936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008578 (A061395 (n + 1)).toNat * a (A052126 (n + 1) - 1).toNat

end

end A064989.P13349672914146769936

noncomputable section

/-- A064989: Multiplicative with a(2^e) = 1 and a(p^e) = prevprime(p)^e for odd primes p.

Offset 1, canonical program `A064989.P13349672914146769936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A052126, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064989 (n : ℕ) : ℤ :=
  A064989.P13349672914146769936.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A052126, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065795.P4691776563067319240

`2^(n+1)-A327471(n+1)`
-/

namespace A065795.P4691776563067319240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A327471 (n + 1)

end

end A065795.P4691776563067319240

noncomputable section

/-- A065795: Number of subsets of {1,2,...,n} that contain the average of their elements.

Offset 1, canonical program `A065795.P4691776563067319240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065795 (n : ℕ) : ℤ :=
  A065795.P4691776563067319240.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065985.P16176326921055316665

`eq[2, A052126(A000005(n+1))]+1`
-/

namespace A065985.P16176326921055316665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065985.P16176326921055316665

noncomputable section

/-- A065985: Numbers k such that d(k) / 2 is prime, where d(k) = number of divisors of k.

Offset 1, canonical program `A065985.P16176326921055316665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065985 (n : ℕ) : ℤ :=
  (A065985.P16176326921055316665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065985.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A068212.P4715796565959048527

`A052126(A000010(n+3))`
-/

namespace A068212.P4715796565959048527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A000010 (n + 3)).toNat

end

end A068212.P4715796565959048527

noncomputable section

/-- A068212: a(n) = phi(n) divided by its largest prime factor.

Offset 3, canonical program `A068212.P4715796565959048527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068212 (n : ℕ) : ℤ :=
  A068212.P4715796565959048527.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A068212.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070817.P736886822515595084

`A004526(n+3)-A068211(n+3)`
-/

namespace A070817.P736886822515595084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 3) - A068211 (n + 3)

end

end A070817.P736886822515595084

noncomputable section

/-- A070817: a(n) = floor(n/2) - gpf(phi(n)), where gpf(n) is the largest prime factor of n.

Offset 3, canonical program `A070817.P736886822515595084`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070817 (n : ℕ) : ℤ :=
  A070817.P736886822515595084.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068211, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070817.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A072451.P2994685750961621523

`A055034(2*n+1)`
-/

namespace A072451.P2994685750961621523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * n + 1)

end

end A072451.P2994685750961621523

noncomputable section

/-- A072451: Number of odd terms in the reduced residue system of 2*n-1.

Offset 1, canonical program `A072451.P2994685750961621523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072451 (n : ℕ) : ℤ :=
  A072451.P2994685750961621523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072451.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A073092.P2540697640197989039

`∑[A000161(n)]`
-/

namespace A073092.P2540697640197989039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073092.P2540697640197989039

noncomputable section

/-- A073092: Number of numbers of the form x^2 + y^2 (0 <= x <= y) less than or equal to n.

Offset 0, canonical program `A073092.P2540697640197989039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073092 (n : ℕ) : ℤ :=
  A073092.P2540697640197989039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073092.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A076567.P1168870904317662066

`A076565(n+2)`
-/

namespace A076567.P1168870904317662066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (n + 2)

end

end A076567.P1168870904317662066

noncomputable section

/-- A076567: Greatest prime divisor of 4n+6 (sum of four successive integers).

Offset 1, canonical program `A076567.P1168870904317662066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076565, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076567 (n : ℕ) : ℤ :=
  A076567.P1168870904317662066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076565, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081258.P1681590963594973240

`lt[A081256(n+1), A078358(n+1)]`
-/

namespace A081258.P1681590963594973240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081258.P1681590963594973240

noncomputable section

/-- A081258: Numbers k > 1 such that k^3 - 1 (or equivalently k^2 + k + 1) has no prime factor greater than k.

Offset 1, canonical program `A081258.P1681590963594973240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A081258 (n : ℕ) : ℤ :=
  (A081258.P1681590963594973240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A081258.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082564.P11824028736242301290

`(-1)^floor((n+1)/2)*A033715(n)`
-/

namespace A082564.P11824028736242301290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A033715 n : ℚ)

end

end A082564.P11824028736242301290

noncomputable section

/-- A082564: Expansion of eta(q)^2 * eta(q^2) / eta(q^4) in powers of q.

Offset 0, canonical program `A082564.P11824028736242301290`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033715, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082564.P11824028736242301290.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033715, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082564.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A084888.P9794820322775673437

`A025426(A000578(n))`
-/

namespace A084888.P9794820322775673437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A000578 n).toNat

end

end A084888.P9794820322775673437

noncomputable section

/-- A084888: Number of partitions of n^3 into two squares>0.

Offset 0, canonical program `A084888.P9794820322775673437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084888 (n : ℕ) : ℤ :=
  A084888.P9794820322775673437.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025426, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084888.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A085625.P6702584574209148891

`eq[A025426(n), A169695(n)]`
-/

namespace A085625.P6702584574209148891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085625.P6702584574209148891

noncomputable section

/-- A085625: Numbers that are the sum of 2 squares in exactly 2 ways.

Offset 1, canonical program `A085625.P6702584574209148891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A085625 (n : ℕ) : ℤ :=
  (A085625.P6702584574209148891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A085625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085989.P6990637171742697713

`lt[A010052(n-A025426(n)), A025426(n)]`
-/

namespace A085989.P6990637171742697713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) - A025426 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085989.P6990637171742697713

noncomputable section

/-- A085989: Numbers that can be expressed as a sum of two squares, each >=2.

Offset 1, canonical program `A085989.P6990637171742697713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. -/
def A085989 (n : ℕ) : ℤ :=
  (A085989.P6990637171742697713.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. -/
def A085989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086263.P4136744977027296644

`record[A007913(A052213(n+1))]`
-/

namespace A086263.P4136744977027296644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A052213 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086263.P4136744977027296644

noncomputable section

/-- A086263: Smaller of two consecutive squarefree numbers having equal numbers of prime factors.

Offset 1, canonical program `A086263.P4136744977027296644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7619 terms. -/
def A086263 (n : ℕ) : ℤ :=
  A086263.P4136744977027296644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7619 terms. -/
def A086263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087039.P14824364840686743514

`A006530(A052126(n+1))`
-/

namespace A087039.P14824364840686743514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A052126 (n + 1)).toNat

end

end A087039.P14824364840686743514

noncomputable section

/-- A087039: If n is prime then 1 else 2nd largest prime factor of n.

Offset 1, canonical program `A087039.P14824364840686743514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087039 (n : ℕ) : ℤ :=
  A087039.P14824364840686743514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087039.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A087274.P5038767541345698985

`A000720(A087273(n+1))`
-/

namespace A087274.P5038767541345698985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A087273 (n + 1)).toNat

end

end A087274.P5038767541345698985

noncomputable section

/-- A087274: Prime index of the largest prime factor of 3*prime(n)+1.

Offset 1, canonical program `A087274.P5038767541345698985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A087273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087274 (n : ℕ) : ℤ :=
  A087274.P5038767541345698985.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A087273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087274.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A087871.P2035425261045132033

`record[A014442(8*n+3)]`
-/

namespace A087871.P2035425261045132033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087871.P2035425261045132033

noncomputable section

/-- A087871: Primes of the form (4*k + 1)^2 + (4*k + 2)^2 where k=0,1,2,3,...

Offset 1, canonical program `A087871.P2035425261045132033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A087871 (n : ℕ) : ℤ :=
  A087871.P2035425261045132033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A087871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088659.P1179813804115170838

`(n+2)*A070777(n+2)`
-/

namespace A088659.P1179813804115170838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A070777 (n + 2)

end

end A088659.P1179813804115170838

noncomputable section

/-- A088659: a(n) = n*(p-1) where p is the largest prime factor of n.

Offset 2, canonical program `A088659.P1179813804115170838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088659 (n : ℕ) : ℤ :=
  A088659.P1179813804115170838.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089993.P8970324826790462378

`A076820(A024619(n+1))`
-/

namespace A089993.P8970324826790462378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A024619 (n + 1)).toNat

end

end A089993.P8970324826790462378

noncomputable section

/-- A089993: Penultimate prime divisor of numbers that are not powers of primes (A024619).

Offset 1, canonical program `A089993.P8970324826790462378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, A076820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089993 (n : ℕ) : ℤ :=
  A089993.P8970324826790462378.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, A076820, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093367.P814731074857858464

`A000031(n+1)-(5+(-1)^(n+1))/2`
-/

namespace A093367.P814731074857858464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000031 (n + 1) : ℚ) - (5 + (-1) ^ (n + 1) : ℚ) / 2

end

end A093367.P814731074857858464

noncomputable section

/-- A093367: Number of n-bead necklaces using exactly three colors with no adjacent beads having the same color.

Offset 1, canonical program `A093367.P814731074857858464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093367 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093367.P814731074857858464.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093819.P10904425845107863521

`A055034(A225975(n+1))`
-/

namespace A093819.P10904425845107863521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A225975 (n + 1)).toNat

end

end A093819.P10904425845107863521

noncomputable section

/-- A093819: Algebraic degree of sin(2*Pi/n).

Offset 1, canonical program `A093819.P10904425845107863521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A093819 (n : ℕ) : ℤ :=
  A093819.P10904425845107863521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A093819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095276.P17420157782506279644

`Δ[record[A087960(A035614(n+1))+n]]`
-/

namespace A095276.P17420157782506279644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A035614 (n + 1)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095276.P17420157782506279644

noncomputable section

/-- A095276: Length of n-th run of identical symbols in A095076 and A095111.

Offset 1, canonical program `A095276.P17420157782506279644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5529 terms. -/
def A095276 (n : ℕ) : ℤ :=
  A095276.P17420157782506279644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5529 terms. -/
def A095276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096172.P18121209861047967276

`A014442((n+1)²)`
-/

namespace A096172.P18121209861047967276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 ((n + 1) ^ 2)

end

end A096172.P18121209861047967276

noncomputable section

/-- A096172: Largest prime factor of n^4 + 1.

Offset 1, canonical program `A096172.P18121209861047967276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096172 (n : ℕ) : ℤ :=
  A096172.P18121209861047967276.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096172.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A100394.P7851725404528444770

`A000720(A023590(n+1))`
-/

namespace A100394.P7851725404528444770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023590 (n + 1)).toNat

end

end A100394.P7851725404528444770

noncomputable section

/-- A100394: a(n) is the subscript of the greatest prime factor of (2*prime(n) + 1).

Offset 1, canonical program `A100394.P7851725404528444770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A023590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100394 (n : ℕ) : ℤ :=
  A100394.P7851725404528444770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A023590, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100446.P4293129564490345513

`A000031(2*n)`
-/

namespace A100446.P4293129564490345513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (2 * n)

end

end A100446.P4293129564490345513

noncomputable section

/-- A100446: Bisection of A000031.

Offset 0, canonical program `A100446.P4293129564490345513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A100446 (n : ℕ) : ℤ :=
  A100446.P4293129564490345513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A100446.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102688.P13779856742604042101

`(A000079(n+1)+(n+1)*A000031(n+1))/2`
-/

namespace A102688.P13779856742604042101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) + (n + 1 : ℤ) * A000031 (n + 1) : ℚ) / 2

end

end A102688.P13779856742604042101

noncomputable section

/-- A102688: a(n) = (1/n)*Sum_{k=1..n} k*2^gcd(n,k).

Offset 1, canonical program `A102688.P13779856742604042101`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102688 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102688.P13779856742604042101.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102688.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A104359.P4028134530978820796

`A006530(A104357(n+2))`
-/

namespace A104359.P4028134530978820796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104357 (n + 2)).toNat

end

end A104359.P4028134530978820796

noncomputable section

/-- A104359: Greatest prime factor of A104357(n) = A104350(n) - 1.

Offset 2, canonical program `A104359.P4028134530978820796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A104357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104359 (n : ℕ) : ℤ :=
  A104359.P4028134530978820796.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A104357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104362.P13374805357399993869

`A000203(A104357(n+2))`
-/

namespace A104362.P13374805357399993869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A104357 (n + 2)).toNat

end

end A104362.P13374805357399993869

noncomputable section

/-- A104362: Sum of divisors of A104357(n) = A104350(n) - 1.

Offset 2, canonical program `A104362.P13374805357399993869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104357, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104362 (n : ℕ) : ℤ :=
  A104362.P13374805357399993869.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104357, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104363.P9867209603800708102

`A000010(A104357(n+2))`
-/

namespace A104363.P9867209603800708102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104357 (n + 2)).toNat

end

end A104363.P9867209603800708102

noncomputable section

/-- A104363: Euler's totient of A104357(n) = A104350(n) - 1.

Offset 2, canonical program `A104363.P9867209603800708102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A104357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104363 (n : ℕ) : ℤ :=
  A104363.P9867209603800708102.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A104357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104367.P8842749279908638245

`A006530(A104365(n+1))`
-/

namespace A104367.P8842749279908638245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104365 (n + 1)).toNat

end

end A104367.P8842749279908638245

noncomputable section

/-- A104367: Greatest prime factor of A104365(n) = A104350(n) + 1.

Offset 1, canonical program `A104367.P8842749279908638245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A104365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104367 (n : ℕ) : ℤ :=
  A104367.P8842749279908638245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A104365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104370.P8775367186141108224

`A000203(A104365(n+1))`
-/

namespace A104370.P8775367186141108224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A104365 (n + 1)).toNat

end

end A104370.P8775367186141108224

noncomputable section

/-- A104370: Sum of divisors of A104365(n) = A104350(n) + 1.

Offset 1, canonical program `A104370.P8775367186141108224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104365, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104370 (n : ℕ) : ℤ :=
  A104370.P8775367186141108224.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104365, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104371.P10404402479975392901

`A000010(A104365(n+1))`
-/

namespace A104371.P10404402479975392901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104365 (n + 1)).toNat

end

end A104371.P10404402479975392901

noncomputable section

/-- A104371: Euler's totient of A104365(n) = A104350(n) + 1.

Offset 1, canonical program `A104371.P10404402479975392901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A104365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104371 (n : ℕ) : ℤ :=
  A104371.P10404402479975392901.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A104365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107016.P14660521387021692450

`Δ[A179180(n)]-A107015(n+1)`
-/

namespace A107016.P14660521387021692450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107015 (n + 1)

end

end A107016.P14660521387021692450

noncomputable section

/-- A107016: Number of odd terms in Zeckendorf representation of n.

Offset 1, canonical program `A107016.P14660521387021692450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107016 (n : ℕ) : ℤ :=
  A107016.P14660521387021692450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107228.P2676299887391952317

`eq[0, A107015(n+1)]+1`
-/

namespace A107228.P2676299887391952317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107228.P2676299887391952317

noncomputable section

/-- A107228: Numbers having no even terms in their Zeckendorf representation.

Offset 1, canonical program `A107228.P2676299887391952317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. -/
def A107228 (n : ℕ) : ℤ :=
  (A107228.P2676299887391952317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. -/
def A107228.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A110493.P9332581609573208670

`∑{p}[A056670(A004277(n)), #]`
-/

namespace A110493.P9332581609573208670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056670 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A110493.P9332581609573208670

noncomputable section

/-- A110493: Largest prime p such that p^2 divides binomial(2n,n), or 0 if binomial(2n,n) is squarefree.

Offset 0, canonical program `A110493.P9332581609573208670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A110493 (n : ℕ) : ℤ :=
  (A110493.P9332581609573208670.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A110493.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111406.P15762110083741708059

`char[A105562(n+2)-1]`
-/

namespace A111406.P15762110083741708059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A111406.P15762110083741708059

noncomputable section

/-- A111406: a(n) = f(f(n+1)) - f(f(n)), where f(m) = pi(m) = A000720(m), with f(0) = 0.

Offset 0, canonical program `A111406.P15762110083741708059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111406 (n : ℕ) : ℤ :=
  (A111406.P15762110083741708059.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111406.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116905.P14577079941118427993

`A000161(A014612(n+1))`
-/

namespace A116905.P14577079941118427993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A014612 (n + 1)).toNat

end

end A116905.P14577079941118427993

noncomputable section

/-- A116905: Number of partitions of n-th 3-almost prime into 2 squares.

Offset 1, canonical program `A116905.P14577079941118427993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A116905 (n : ℕ) : ℤ :=
  A116905.P14577079941118427993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A116905.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A120628.P14010461510732996806

`record[A087713(n+2)]`
-/

namespace A120628.P14010461510732996806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087713 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120628.P14010461510732996806

noncomputable section

/-- A120628: Primes such that their double is 1 away from a prime number.

Offset 1, canonical program `A120628.P14010461510732996806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120628 (n : ℕ) : ℤ :=
  A120628.P14010461510732996806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A120628.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A121171.P6418051183238153702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121171 (n : ℕ) : ℤ :=
  A121171.P6418051183238153702.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123324.P6293013150715471247

`∑[A123323(n+1)]`
-/

namespace A123324.P6293013150715471247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123324.P6293013150715471247

noncomputable section

/-- A123324: Number of integer-sided triangles with all sides <= n and sides relatively prime.

Offset 1, canonical program `A123324.P6293013150715471247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123324 (n : ℕ) : ℤ :=
  A123324.P6293013150715471247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123324.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126288.P6496446595798080403

`A006530(n+2)*A052126(n+1)`
-/

namespace A126288.P6496446595798080403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A052126 (n + 1)

end

end A126288.P6496446595798080403

noncomputable section

/-- A126288: a(1) = 2, a(n) = n * LargestPrimeFactor(n+1) / LargestPrimeFactor(n).

Offset 1, canonical program `A126288.P6496446595798080403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126288 (n : ℕ) : ℤ :=
  A126288.P6496446595798080403.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126288.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A129297.P6596998359982084627

`eq[A000010(A166597(n)), A063919(n+1)]`
-/

namespace A129297.P6596998359982084627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A166597 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129297.P6596998359982084627

noncomputable section

/-- A129297: Nonnegative integers m such that m^2-1 has no divisors d with 1

Offset 1, canonical program `A129297.P6596998359982084627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A129297 (n : ℕ) : ℤ :=
  (A129297.P6596998359982084627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A129297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129761.P10344994158848013744

`A005578(A035614(n))`
-/

namespace A129761.P10344994158848013744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A035614 n).toNat

end

end A129761.P10344994158848013744

noncomputable section

/-- A129761: First differences of Fibbinary numbers (A003714).

Offset 0, canonical program `A129761.P10344994158848013744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129761 (n : ℕ) : ℤ :=
  A129761.P10344994158848013744.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129761.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A133692.P5277635132651936169

`(-1)^n*A033715(n)`
-/

namespace A133692.P5277635132651936169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033715 n

end

end A133692.P5277635132651936169

noncomputable section

/-- A133692: Expansion of phi(-q) * phi(q^2) in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A133692.P5277635132651936169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033715, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133692 (n : ℕ) : ℤ :=
  A133692.P5277635132651936169.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033715, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133692.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A137809.P1616324025404386575

`a(n-1)+a(A076563(n))` with `a(0)=1, a(1)=1`
-/

namespace A137809.P1616324025404386575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A076563 n).toNat

end

end A137809.P1616324025404386575

noncomputable section

/-- A137809: a(0) = a(1) = 1. a(n) = a(n-1) + a(n - b(n)), where b(n) is largest prime dividing n.

Offset 0, canonical program `A137809.P1616324025404386575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A137809 (n : ℕ) : ℤ :=
  (A137809.P1616324025404386575.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A137809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139764.P8277455869379676170

`A000045(A035614(n)+2)`
-/

namespace A139764.P8277455869379676170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035614 n + 2).toNat

end

end A139764.P8277455869379676170

noncomputable section

/-- A139764: Smallest term in Zeckendorf representation of n.

Offset 1, canonical program `A139764.P8277455869379676170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139764 (n : ℕ) : ℤ :=
  A139764.P8277455869379676170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139764.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140101.P15800623837645593610

`comp[A140100(n+1)]`
-/

namespace A140101.P15800623837645593610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140101.P15800623837645593610

noncomputable section

/-- A140101: Start with Y(0)=0, X(1)=1, Y(1)=2. For n > 1, choose least positive integers Y(n) > X(n) such that neither Y(n) nor X(n) appear in {Y(k), 1 <= k < n} or {X(k), 1 <= k < n} and such that Y(n)-X(n) does not appear in {Y(k)-X(k), 1 <= k < n} or {Y(k)+X(k), 1 <= k < n}; sequence gives Y(n) (for X(n) see A140100).

Offset 0, canonical program `A140101.P15800623837645593610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140101 (n : ℕ) : ℤ :=
  (A140101.P15800623837645593610.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140538.P15709100648483726007

`A076565((n+1)^4)`
-/

namespace A140538.P15709100648483726007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 ((n + 1) ^ 4)

end

end A140538.P15709100648483726007

noncomputable section

/-- A140538: Greatest prime factor of 2*n^4 + 1.

Offset 1, canonical program `A140538.P15709100648483726007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076565, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140538 (n : ℕ) : ℤ :=
  A140538.P15709100648483726007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076565, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140538.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A154409.P10565512062620281939

`record[A014442(A017305(n+1))]`
-/

namespace A154409.P10565512062620281939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A017305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154409.P10565512062620281939

noncomputable section

/-- A154409: Primes of the form 10n^2+6n+1.

Offset 1, canonical program `A154409.P10565512062620281939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A154409 (n : ℕ) : ℤ :=
  A154409.P10565512062620281939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A154409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154414.P15977892757406640863

`record[A014442(10*n+8)]`
-/

namespace A154414.P15977892757406640863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (10 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154414.P15977892757406640863

noncomputable section

/-- A154414: Primes of the form 20*k^2 + 32*k + 13.

Offset 1, canonical program `A154414.P15977892757406640863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A154414 (n : ℕ) : ℤ :=
  A154414.P15977892757406640863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A154414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154428.P5041393938898399778

`record[A014442(10*n+11)]`
-/

namespace A154428.P5041393938898399778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (10 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154428.P5041393938898399778

noncomputable section

/-- A154428: Primes of the form 50n^2 + 10n + 1.

Offset 1, canonical program `A154428.P5041393938898399778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A154428 (n : ℕ) : ℤ :=
  A154428.P5041393938898399778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A154428.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161219.P4715218201372608573

`2*A000031(n+1)`
-/

namespace A161219.P4715218201372608573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000031 (n + 1)

end

end A161219.P4715218201372608573

noncomputable section

/-- A161219: a(n) = (1/n) * Sum_{d|n} phi(n/d)*2^(d+1).

Offset 1, canonical program `A161219.P4715218201372608573`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161219 (n : ℕ) : ℤ :=
  A161219.P4715218201372608573.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161219.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A166949.P12645471863304146666

`A071178(A002808(n+1))`
-/

namespace A166949.P12645471863304146666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A002808 (n + 1)).toNat

end

end A166949.P12645471863304146666

noncomputable section

/-- A166949: The count of largest prime factors in n-th composite.

Offset 1, canonical program `A166949.P12645471863304146666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166949 (n : ℕ) : ℤ :=
  A166949.P12645471863304146666.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168026.P8751978298401506716

`record[A081256(2*n+1)-A000007(n)]`
-/

namespace A168026.P8751978298401506716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (2 * n + 1) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168026.P8751978298401506716

noncomputable section

/-- A168026: Noncomposite numbers in the southwestern ray of the Ulam spiral as oriented on the March 1964 cover of Scientific American.

Offset 1, canonical program `A168026.P8751978298401506716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A168026 (n : ℕ) : ℤ :=
  A168026.P8751978298401506716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A168026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171462.P186066025836437895

`n+1-A052126(n+1)`
-/

namespace A171462.P186066025836437895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A052126 (n + 1)

end

end A171462.P186066025836437895

noncomputable section

/-- A171462: Number of hands a bartender needs to have in order to win at the blind bartender's problem with n glasses in a cycle.

Offset 1, canonical program `A171462.P186066025836437895`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171462 (n : ℕ) : ℤ :=
  A171462.P186066025836437895.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171462.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A185002.P14315276868255119374

`lt[A014442(n+2), A014442(n+1)]+1`
-/

namespace A185002.P14315276868255119374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A185002.P14315276868255119374

noncomputable section

/-- A185002: Numbers k such that P(k^2+1) > P((k+1)^2+1) where P(n) (A006530) is the largest prime factor of n.

Offset 1, canonical program `A185002.P14315276868255119374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A185002 (n : ℕ) : ℤ :=
  (A185002.P14315276868255119374.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A185002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185011.P2025145827853629102

`lt[A014442(n+1), A014442(n+2)]+1`
-/

namespace A185011.P2025145827853629102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A185011.P2025145827853629102

noncomputable section

/-- A185011: Numbers k such that P(k^2+1) < P((k+1)^2+1) where P(n) (A006530) is the largest prime factor of n.

Offset 1, canonical program `A185011.P2025145827853629102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185011 (n : ℕ) : ℤ :=
  (A185011.P2025145827853629102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185011.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A239126.P14009463231019251637

`4*A087808(A130328(n))-1`
-/

namespace A239126.P14009463231019251637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A087808 (A130328 n).toNat - 1

end

end A239126.P14009463231019251637

noncomputable section

/-- A239126: Rectangular array showing the starting values M(n, k), k >= 1, for the Collatz operation (ud)^n, n >= 1, ending in an odd number, read by antidiagonals.

Offset 1, canonical program `A239126.P14009463231019251637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, A130328, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239126 (n : ℕ) : ℤ :=
  A239126.P14009463231019251637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, A130328, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A239126.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239442.P5456459887707133884

`(n+1)²*A238533(n+1)`
-/

namespace A239442.P5456459887707133884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A238533 (n + 1)

end

end A239442.P5456459887707133884

noncomputable section

/-- A239442: a(n) = phi(n^7).

Offset 1, canonical program `A239442.P5456459887707133884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239442 (n : ℕ) : ℤ :=
  A239442.P5456459887707133884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240549.P17173148347031781458

`A081256((n+1)²)`
-/

namespace A240549.P17173148347031781458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 ((n + 1) ^ 2)

end

end A240549.P17173148347031781458

noncomputable section

/-- A240549: Greatest prime factor of n^6+1.

Offset 1, canonical program `A240549.P17173148347031781458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A240549 (n : ℕ) : ℤ :=
  A240549.P17173148347031781458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A240549.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A241917.P8169004480460949126

`A061395(n+1)-A061395(A052126(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A241917.P8169004480460949126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A052126 (n + 1)).toNat

end

end A241917.P8169004480460949126

noncomputable section

/-- A241917: If n is a prime with index i, p_i, a(n) = i, (with a(1)=0), otherwise difference (i-j) of the indices of the two largest primes p_i, p_j, i >= j in the prime factorization of n: a(n) = A061395(n) - A061395(A052126(n)).

Offset 1, canonical program `A241917.P8169004480460949126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A241917 (n : ℕ) : ℤ :=
  A241917.P8169004480460949126.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A241917.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A248516.P14062479917539595472

`A052126(1+(n+1)²)`
-/

namespace A248516.P14062479917539595472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (1 + (n + 1) ^ 2)

end

end A248516.P14062479917539595472

noncomputable section

/-- A248516: n^2+1 divided by its largest prime factor.

Offset 1, canonical program `A248516.P14062479917539595472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248516 (n : ℕ) : ℤ :=
  A248516.P14062479917539595472.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248516.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A250069.P12140619609167371164

`A014442(n+1)-1`
-/

namespace A250069.P12140619609167371164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) - 1

end

end A250069.P12140619609167371164

noncomputable section

/-- A250069: a(n) = n^2 mod gpf(n^2 + 1) where gpf(k) is the greatest prime dividing k.

Offset 1, canonical program `A250069.P12140619609167371164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250069 (n : ℕ) : ℤ :=
  A250069.P12140619609167371164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250069.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A252751.P3019683754980594127

`A252750(n)+a(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252751.P3019683754980594127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252750 n + a (n - 1)

end

end A252751.P3019683754980594127

noncomputable section

/-- A252751: Partial sums of A252750: a(0) = 0; for >= 1: a(n) = A252750(n) + a(n-1).

Offset 0, canonical program `A252751.P3019683754980594127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252751 (n : ℕ) : ℤ :=
  A252751.P3019683754980594127.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A252751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255671.P11613518622091459689

`A255670(n+1)+1`
-/

namespace A255671.P11613518622091459689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255670 (n + 1) + 1

end

end A255671.P11613518622091459689

noncomputable section

/-- A255671: Number of the column of the Wythoff array (A035513) that contains U(n), where U = A001950, the upper Wythoff sequence.

Offset 1, canonical program `A255671.P11613518622091459689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255671 (n : ℕ) : ℤ :=
  A255671.P11613518622091459689.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256148.P6895099327413931958

`A081256(lt[2*n+1, A081256(n+2)]+2)`
-/

namespace A256148.P6895099327413931958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A256148.P6895099327413931958

noncomputable section

/-- A256148: Primitive prime factors of the cyclotomic polynomial sequence Phi(3, k) (or Phi(6, k)) in the order in which they occur.

Offset 1, canonical program `A256148.P6895099327413931958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. -/
def A256148 (n : ℕ) : ℤ :=
  A256148.P6895099327413931958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. -/
def A256148.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A274909.P3177028246145164987

`A074477(2*(n+1))`
-/

namespace A274909.P3177028246145164987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074477 (2 * (n + 1))

end

end A274909.P3177028246145164987

noncomputable section

/-- A274909: Largest prime factor of 9^n - 1.

Offset 1, canonical program `A274909.P3177028246145164987`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274909 (n : ℕ) : ℤ :=
  A274909.P3177028246145164987.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274909.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A283972.P4272654146123541670

`n+1-A227349(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283972.P4272654146123541670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A227349 (n + 1)

end

end A283972.P4272654146123541670

noncomputable section

/-- A283972: a(n) = n minus (product of lengths of 1-runs in binary representation of n) = n - A227349(n).

Offset 1, canonical program `A283972.P4272654146123541670`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283972 (n : ℕ) : ℤ :=
  A283972.P4272654146123541670.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285523.P12842749750153228021

`lt[A014442(n+1), 98]+1`
-/

namespace A285523.P12842749750153228021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  98

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285523.P12842749750153228021

noncomputable section

/-- A285523: Numbers k such that k^2 + 1 is 100-smooth.

Offset 1, canonical program `A285523.P12842749750153228021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A285523 (n : ℕ) : ℤ :=
  (A285523.P12842749750153228021.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A285523.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A295307.P10274143985494883344

`eq[1, A295303(n+1)]+1`
-/

namespace A295307.P10274143985494883344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295307.P10274143985494883344

noncomputable section

/-- A295307: Numbers k such that k > phi(sigma(k)), where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295307.P10274143985494883344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295307 (n : ℕ) : ℤ :=
  (A295307.P10274143985494883344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295308.P2202808230107505075

`dr(and(10, A295303(n+1)))`
-/

namespace A295308.P2202808230107505075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 10 (A295303 (n + 1)))

end

end A295308.P2202808230107505075

noncomputable section

/-- A295308: Characteristic function for A066694: a(n) = 1 if n < phi(sigma(n)), 0 otherwise.

Offset 1, canonical program `A295308.P2202808230107505075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295308 (n : ℕ) : ℤ :=
  (A295308.P2202808230107505075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A295308.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A300726.P6411943610807453951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300726 (n : ℕ) : ℤ :=
  A300726.P6411943610807453951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305392.P2031859111469276948

`A140100(n+2)-A140100(n+1)`
-/

namespace A305392.P2031859111469276948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (n + 2) - A140100 (n + 1)

end

end A305392.P2031859111469276948

noncomputable section

/-- A305392: First differences of A140100.

Offset 1, canonical program `A305392.P2031859111469276948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305392 (n : ℕ) : ℤ :=
  A305392.P2031859111469276948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A306411.P4997274916916446077

`(n+1)*A238533(n+1)`
-/

namespace A306411.P4997274916916446077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A238533 (n + 1)

end

end A306411.P4997274916916446077

noncomputable section

/-- A306411: a(n) = phi(n^6) = n^5*phi(n).

Offset 1, canonical program `A306411.P4997274916916446077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306411 (n : ℕ) : ℤ :=
  A306411.P4997274916916446077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307410.P14070864280016795678

`A002472(n+1)/gcd(A002472(n+1), A055034(n+1))`
-/

namespace A307410.P14070864280016795678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002472 (n + 1) : ℚ) / (Int.gcd (A002472 (n + 1)) (A055034 (n + 1)) : ℚ)

end

end A307410.P14070864280016795678

noncomputable section

/-- A307410: Numerators of the product in the singular series.

Offset 1, canonical program `A307410.P14070864280016795678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307410 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307410.P14070864280016795678.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307410.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A316350.P8002183459827598923

`lt[log(n+1), A052126(n+1)]+1`
-/

namespace A316350.P8002183459827598923
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A316350.P8002183459827598923

noncomputable section

/-- A316350: Positive integers x that are x/log(x) smooth, that is, if a prime p divides x, then p <= x/log(x).

Offset 1, canonical program `A316350.P8002183459827598923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6390 terms. -/
def A316350 (n : ℕ) : ℤ :=
  (A316350.P8002183459827598923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6390 terms. -/
def A316350.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A318655.P1929699708280935336

`A007814(A318649(n+1))`
-/

namespace A318655.P1929699708280935336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318649 (n + 1)).toNat

end

end A318655.P1929699708280935336

noncomputable section

/-- A318655: The 2-adic valuation of A318649, the numerators of "Dirichlet Square Root" of squares.

Offset 1, canonical program `A318655.P1929699708280935336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655 (n : ℕ) : ℤ :=
  A318655.P1929699708280935336.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319210.P5693129370865964047

`A023022(n+3)*A055034(2*(n+1))`
-/

namespace A319210.P5693129370865964047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 3) * A055034 (2 * (n + 1))

end

end A319210.P5693129370865964047

noncomputable section

/-- A319210: a(n) = phi(n^2 - 1)/2 where phi is A000010.

Offset 2, canonical program `A319210.P5693129370865964047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A319210 (n : ℕ) : ℤ :=
  A319210.P5693129370865964047.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A319210.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A322820.P17890614107073658229

`A052126(n+1)*A006530(A052126(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322820.P17890614107073658229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A006530 (A052126 (n + 1)).toNat

end

end A322820.P17890614107073658229

noncomputable section

/-- A322820: a(n) = A052126(n) * A006530(A052126(n)).

Offset 1, canonical program `A322820.P17890614107073658229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322820 (n : ℕ) : ℤ :=
  A322820.P17890614107073658229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322820.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323129.P8612268773223338994

`A006530(n+1)^a(A071178(n+1)-1)` with `a(0)=1`
-/

namespace A323129.P8612268773223338994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A006530 (n + 1) : ℝ) ^ (a (A071178 (n + 1) - 1).toNat)

end

end A323129.P8612268773223338994

noncomputable section

/-- A323129: a(1) = 1, and for any n > 1, let p be the greatest prime factor of n, and e be its exponent, then a(n) = p^a(e).

Offset 1, canonical program `A323129.P8612268773223338994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323129 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323129.P8612268773223338994.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323129.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A329584.P4572012157707219392

`A000010(A327922(n+1))/4`
-/

namespace A329584.P4572012157707219392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A327922 (n + 1)).toNat : ℚ) / 4

end

end A329584.P4572012157707219392

noncomputable section

/-- A329584: phi(A327922(n))/4, for n >= 1, with phi = A000010 (Euler's totient).

Offset 1, canonical program `A329584.P4572012157707219392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A327922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329584 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329584.P4572012157707219392.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A327922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329584.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A329888.P17015609551114416596

`A052126((n+1)/a(A052126(n+1)-1))` with `a(0)=1`
-/

namespace A329888.P17015609551114416596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (a (A052126 (n + 1) - 1).toNat : ℚ))).toNat

end

end A329888.P17015609551114416596

noncomputable section

/-- A329888: a(n) = A329900(A329602(n)); Heinz number of the even bisection (even-indexed parts) of the integer partition with Heinz number n.

Offset 1, canonical program `A329888.P17015609551114416596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329888 (n : ℕ) : ℤ :=
  A329888.P17015609551114416596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330319.P9551825162349702017

`∑[A055034(2*(n+1))*A055034(n+2)]`
-/

namespace A330319.P9551825162349702017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * (n + 1)) * A055034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P9551825162349702017

noncomputable section

/-- A330319: a(n) = Sum_{i=1..n} phi(i)*phi(i+1), where phi(n) = A000010(n) is Euler's totient function.

Offset 1, canonical program `A330319.P9551825162349702017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330319 (n : ℕ) : ℤ :=
  A330319.P9551825162349702017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330669.P18160544792484395008

`A000720(A025473(n+1))`
-/

namespace A330669.P18160544792484395008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A025473 (n + 1)).toNat

end

end A330669.P18160544792484395008

noncomputable section

/-- A330669: The prime indices of the prime powers (A000961).

Offset 1, canonical program `A330669.P18160544792484395008`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A025473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330669 (n : ℕ) : ℤ :=
  A330669.P18160544792484395008.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A025473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A330669.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A332447.P15250684680913480673

`A007814(A087808(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332447.P15250684680913480673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A087808 (n + 1)).toNat

end

end A332447.P15250684680913480673

noncomputable section

/-- A332447: a(n) = A007814(A087808(n)).

Offset 1, canonical program `A332447.P15250684680913480673`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332447 (n : ℕ) : ℤ :=
  A332447.P15250684680913480673.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332994.P8797339182167292350

`n+1+a(A052126(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332994.P8797339182167292350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A052126 (n + 1) - 1).toNat

end

end A332994.P8797339182167292350

noncomputable section

/-- A332994: a(1) = 1, for n > 1, a(n) = n + a(A052126(n)).

Offset 1, canonical program `A332994.P8797339182167292350`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332994 (n : ℕ) : ℤ :=
  (A332994.P8797339182167292350.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332994.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A333794.P1319636771459117035

`n+1+a(n-A052126(n+1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333794.P1319636771459117035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a ((n : ℤ) - A052126 (n + 1)).toNat

end

end A333794.P1319636771459117035

noncomputable section

/-- A333794: a(1) = 1, for n > 1, a(n) = n + a(n-A052126(n)).

Offset 1, canonical program `A333794.P1319636771459117035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333794 (n : ℕ) : ℤ :=
  (A333794.P1319636771459117035.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333794.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A334344.P8459068774756560917

`eq[A000120(n), A052126(A143051(n+1))]`
-/

namespace A334344.P8459068774756560917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A143051 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334344.P8459068774756560917

noncomputable section

/-- A334344: Binary Moran numbers: numbers k such that k divided by its binary weight (A000120) is a prime number.

Offset 1, canonical program `A334344.P8459068774756560917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A334344 (n : ℕ) : ℤ :=
  (A334344.P8459068774756560917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A334344.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A335876.P3249295182234954832

`n+1+A052126(n+1)`
-/

namespace A335876.P3249295182234954832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A052126 (n + 1)

end

end A335876.P3249295182234954832

noncomputable section

/-- A335876: a(1) = 2, and for n > 1, a(n) = n + (n/p), where p is largest prime dividing n, A006530(n).

Offset 1, canonical program `A335876.P3249295182234954832`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335876 (n : ℕ) : ℤ :=
  A335876.P3249295182234954832.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335876.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A338912.P12481881722546763833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A084126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338912 (n : ℕ) : ℤ :=
  A338912.P12481881722546763833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A084126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338912.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339464.P18290823833589417318

`A052126(A006093(n+2))`
-/

namespace A339464.P18290823833589417318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A006093 (n + 2)).toNat

end

end A339464.P18290823833589417318

noncomputable section

/-- A339464: a(n) = (prime(n)-1) / gpf(prime(n)-1) where gpf(m) is the greatest prime factor of m, A006530.

Offset 2, canonical program `A339464.P18290823833589417318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339464 (n : ℕ) : ℤ :=
  A339464.P18290823833589417318.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339464.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A343794.P987061178062544182

`A055034(A000040(n+28))`
-/

namespace A343794.P987061178062544182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A000040 (n + 28)).toNat

end

end A343794.P987061178062544182

noncomputable section

/-- A343794: Numbers k > 0 such that 630*k + 315 is not an abundant number (A005101).

Offset 1, canonical program `A343794.P987061178062544182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A343794 (n : ℕ) : ℤ :=
  A343794.P987061178062544182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A343794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344877.P6074659472045598504

`gcd(n+1, A344875(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344877.P6074659472045598504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A344875 (n + 1))

end

end A344877.P6074659472045598504

noncomputable section

/-- A344877: a(n) = gcd(n, A344875(n)), where A344875 is multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e -1 for odd primes p.

Offset 1, canonical program `A344877.P6074659472045598504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344877 (n : ℕ) : ℤ :=
  (A344877.P6074659472045598504.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344948.P15637096215189460641

`record[A025473(A000040(n+1))]`
-/

namespace A344948.P15637096215189460641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344948.P15637096215189460641

noncomputable section

/-- A344948: Primes whose position among the powers of primes (A000961) is also prime.

Offset 1, canonical program `A344948.P15637096215189460641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A344948 (n : ℕ) : ℤ :=
  A344948.P15637096215189460641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1214 terms. -/
def A344948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345947.P5146707115355177484

`gcd(A153151(n+1), A344875(n+1))`
-/

namespace A345947.P5146707115355177484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153151 (n + 1)) (A344875 (n + 1))

end

end A345947.P5146707115355177484

noncomputable section

/-- A345947: a(n) = gcd(A153151(n), A344875(n)).

Offset 1, canonical program `A345947.P5146707115355177484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A345947 (n : ℕ) : ℤ :=
  (A345947.P5146707115355177484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A345947.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A348099.P214831151036935053

`∩[A348098(n+1)-1, A348098(n+1)]`
-/

namespace A348099.P214831151036935053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348099.P214831151036935053

noncomputable section

/-- A348099: Starts of runs of 3 consecutive numbers that have an equal number of unitary and nonunitary prime divisors (A348097).

Offset 1, canonical program `A348099.P214831151036935053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A348099 (n : ℕ) : ℤ :=
  (A348099.P214831151036935053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A348099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349136.P13757251460804811731

`A055034(n+1)*A059841(n)`
-/

namespace A349136.P13757251460804811731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) * A059841 n

end

end A349136.P13757251460804811731

noncomputable section

/-- A349136: Möbius transform of Kimberling's paraphrase, A003602.

Offset 1, canonical program `A349136.P13757251460804811731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349136 (n : ℕ) : ℤ :=
  A349136.P13757251460804811731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350338.P228181022738579611

`A350331(n+1)+A101606(n+1)`
-/

namespace A350338.P228181022738579611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350331 (n + 1) + A101606 (n + 1)

end

end A350338.P228181022738579611

noncomputable section

/-- A350338: Number of nontrivial divisors of n that are the product of up to 3 (not necessarily distinct) primes.

Offset 1, canonical program `A350338.P228181022738579611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350338 (n : ℕ) : ℤ :=
  A350338.P228181022738579611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351168.P13812600264692217714

`(n+1)*(1-1/A006530(n+1))^A071178(n+1)`
-/

namespace A351168.P13812600264692217714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (1 - 1 / (A006530 (n + 1) : ℚ)) ^ (A071178 (n + 1) : ℤ)

end

end A351168.P13812600264692217714

noncomputable section

/-- A351168: If n = p_1^e_1 * ... * p_k^e_k, where p_1 < ... < p_k are primes, then a(n) is obtained by replacing the last factor p_k^e_k by (p_k - 1)^e_k; a(1) = 1.

Offset 1, canonical program `A351168.P13812600264692217714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351168 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351168.P13812600264692217714.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A071178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351168.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352051.P5720028931250929903

`∑{d}[n+1, A238533(#)*A285989((n+1)/#)]-A059841(n)`
-/

namespace A352051.P5720028931250929903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238533 d * A285989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A059841 n

end

end A352051.P5720028931250929903

noncomputable section

/-- A352051: Sum of the 5th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352051.P5720028931250929903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352051 (n : ℕ) : ℤ :=
  A352051.P5720028931250929903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353474.P16107743200704684582

`A143731(n+1)*A302048(A052126(n+1))`
-/

namespace A353474.P16107743200704684582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A302048 (A052126 (n + 1)).toNat

end

end A353474.P16107743200704684582

noncomputable section

/-- A353474: a(n) = 1 if n is a number of the form p^2 * q, where p and q are primes with p < q, otherwise 0.

Offset 1, canonical program `A353474.P16107743200704684582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A143731, A302048, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353474 (n : ℕ) : ℤ :=
  A353474.P16107743200704684582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A143731, A302048, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353680.P13504511753846744607

`A000035(n+1)*A353637(n+1)`
-/

namespace A353680.P13504511753846744607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A353637 (n + 1)

end

end A353680.P13504511753846744607

noncomputable section

/-- A353680: a(n) = 1 if n is odd and phi(sigma(n)) is equal to phi(n), otherwise 0.

Offset 1, canonical program `A353680.P13504511753846744607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353680 (n : ℕ) : ℤ :=
  A353680.P13504511753846744607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353682.P1510457161453438165

`A353637(n+1)+A353681(n+1)`
-/

namespace A353682.P1510457161453438165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (n + 1) + A353681 (n + 1)

end

end A353682.P1510457161453438165

noncomputable section

/-- A353682: a(n) = 1 if phi(sigma(n)) >= phi(n), otherwise 0.

Offset 1, canonical program `A353682.P1510457161453438165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, A353681, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353682 (n : ℕ) : ℤ :=
  A353682.P1510457161453438165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, A353681, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353682.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353683.P12717263372713688347

`lt[0, A353681(n+1)]+1`
-/

namespace A353683.P12717263372713688347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353683.P12717263372713688347

noncomputable section

/-- A353683: Numbers k for which phi(sigma(k)) > phi(k).

Offset 1, canonical program `A353683.P12717263372713688347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353683 (n : ℕ) : ℤ :=
  (A353683.P12717263372713688347.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353683.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A002591.P3027538998871989333

`A074477(2*n+1)`
-/

namespace A002591.P3027538998871989333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074477 (2 * n + 1)

end

end A002591.P3027538998871989333

noncomputable section

/-- A002591: Largest prime factor of 3^(2n+1) - 1.

Offset 0, canonical program `A002591.P3027538998871989333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002591 (n : ℕ) : ℤ :=
  A002591.P3027538998871989333.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002591.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A003277.P14262836188671700899

`filter[A230918(n+1), A323154(#)]`
-/

namespace A003277.P14262836188671700899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A003277.P14262836188671700899

noncomputable section

/-- A003277: Cyclic numbers: k such that k and phi(k) are relatively prime; also k such that there is just one group of order k, i.e., A000001(k) = 1.

Offset 1, canonical program `A003277.P14262836188671700899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A003277 (n : ℕ) : ℤ :=
  A003277.P14262836188671700899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A003277.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A006872.P9526046772509008616

`record[(n+1)*A353637(n+1)]`
-/

namespace A006872.P9526046772509008616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006872.P9526046772509008616

noncomputable section

/-- A006872: Numbers k such that phi(k) = phi(sigma(k)).

Offset 1, canonical program `A006872.P9526046772509008616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A006872 (n : ℕ) : ℤ :=
  A006872.P9526046772509008616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A006872.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A010554.P6049326986585021923

`A055034(gcd(2, n)*A055034(n+1))`
-/

namespace A010554.P6049326986585021923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 ((Nat.gcd 2 n : ℤ) * A055034 (n + 1)).toNat

end

end A010554.P6049326986585021923

noncomputable section

/-- A010554: a(n) = phi(phi(n)), where phi is the Euler totient function.

Offset 1, canonical program `A010554.P6049326986585021923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010554 (n : ℕ) : ℤ :=
  A010554.P6049326986585021923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A010554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015627.P6012177256396085323

`A015622(n+2)-∑[A161680(n)]`
-/

namespace A015627.P6012177256396085323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015622 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015627.P6012177256396085323

noncomputable section

/-- A015627: Quadruples of different integers from [ 2,n ] with no global factor.

Offset 2, canonical program `A015627.P6012177256396085323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627 (n : ℕ) : ℤ :=
  A015627.P6012177256396085323.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. -/
def A015627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015640.P16174645672135619219

`∑[A346761(n+1)]-A015622(n+1)`
-/

namespace A015640.P16174645672135619219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A015622 (n + 1)

end

end A015640.P16174645672135619219

noncomputable section

/-- A015640: Number of 5-tuples of different integers from [ 1,n ] with no global factor.

Offset 1, canonical program `A015640.P16174645672135619219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640 (n : ℕ) : ℤ :=
  A015640.P16174645672135619219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A015640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015706.P8597406683241207243

`A011775(eq[1, A011775(n+1)%2]+1)`
-/

namespace A015706.P8597406683241207243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011775 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015706.P8597406683241207243

noncomputable section

/-- A015706: Odd numbers k that divide phi(k)*sigma(k).

Offset 1, canonical program `A015706.P8597406683241207243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. -/
def A015706 (n : ℕ) : ℤ :=
  A015706.P8597406683241207243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. -/
def A015706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019586.P9515353254246126569

`A003603(n+1)-1`
-/

namespace A019586.P9515353254246126569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (n + 1) - 1

end

end A019586.P9515353254246126569

noncomputable section

/-- A019586: Vertical para-Fibonacci sequence: takes value i on later (i.e., b_j, j >= 2) terms of i-th Fibonacci sequence defined by b_0 = i, b_1 = [ tau(i+1) ].

Offset 1, canonical program `A019586.P9515353254246126569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019586 (n : ℕ) : ℤ :=
  A019586.P9515353254246126569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020479.P12170762038309436866

`(n+2)^4-A000252(n+2)`
-/

namespace A020479.P12170762038309436866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - A000252 (n + 2)

end

end A020479.P12170762038309436866

noncomputable section

/-- A020479: Number of noninvertible 2 X 2 matrices over Z/nZ (determinant is a divisor of 0).

Offset 2, canonical program `A020479.P12170762038309436866`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020479 (n : ℕ) : ℤ :=
  A020479.P12170762038309436866.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A020479.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A024363.P18199515356215548539

`A024361(n+1)+A024362(n+1)`
-/

namespace A024363.P18199515356215548539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + A024362 (n + 1)

end

end A024363.P18199515356215548539

noncomputable section

/-- A024363: Number of primitive Pythagorean triangles with side n.

Offset 1, canonical program `A024363.P18199515356215548539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A024362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024363 (n : ℕ) : ℤ :=
  A024363.P18199515356215548539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A024362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A024363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A024621.P362642709142674252

`lt[3*A025473(n+1), A162698(n+1)]+1`
-/

namespace A024621.P362642709142674252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A025473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A024621.P362642709142674252

noncomputable section

/-- A024621: Positions of nonprimes among the powers of primes (A000961).

Offset 1, canonical program `A024621.P362642709142674252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A024621 (n : ℕ) : ℤ :=
  (A024621.P362642709142674252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A024621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024710.P12335000155047876747

`A087713(n+4)-A000007(n)`
-/

namespace A024710.P12335000155047876747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087713 (n + 4) - A000007 n

end

end A024710.P12335000155047876747

noncomputable section

/-- A024710: Greatest prime divisor of A024702(n).

Offset 4, canonical program `A024710.P12335000155047876747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024710 (n : ℕ) : ℤ :=
  A024710.P12335000155047876747.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A024710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025285.P14729611154484509400

`eq[2, A025426(n)]`
-/

namespace A025285.P14729611154484509400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025285.P14729611154484509400

noncomputable section

/-- A025285: Numbers that are the sum of 2 nonzero squares in exactly 2 ways.

Offset 1, canonical program `A025285.P14729611154484509400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1616 terms. -/
def A025285 (n : ℕ) : ℤ :=
  (A025285.P14729611154484509400.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1616 terms. -/
def A025285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025286.P4051280711645838846

`eq[3, A025426(n)]`
-/

namespace A025286.P4051280711645838846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025286.P4051280711645838846

noncomputable section

/-- A025286: Numbers that are the sum of 2 nonzero squares in exactly 3 ways.

Offset 1, canonical program `A025286.P4051280711645838846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A025286 (n : ℕ) : ℤ :=
  (A025286.P4051280711645838846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A025286.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A045897.P3711161811653789737

`∩[A053850(n+1), A057128(n+1)]`
-/

namespace A045897.P3711161811653789737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P3711161811653789737

noncomputable section

/-- A045897: Has both a primitive and imprimitive representation as x^2 + xy + y^2.

Offset 1, canonical program `A045897.P3711161811653789737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A045897 (n : ℕ) : ℤ :=
  (A045897.P3711161811653789737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A045897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046028.P7957653917597795699

`A249740(A013929(n+1))`
-/

namespace A046028.P7957653917597795699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (A013929 (n + 1)).toNat

end

end A046028.P7957653917597795699

noncomputable section

/-- A046028: Largest multiple prime factor of the n-th nonsquarefree number (A013929).

Offset 1, canonical program `A046028.P7957653917597795699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A249740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046028 (n : ℕ) : ℤ :=
  A046028.P7957653917597795699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, A249740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046390.P348595897100682115

`∩[A046317(n+1), A257415(n+1)]`
-/

namespace A046390.P348595897100682115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046390.P348595897100682115

noncomputable section

/-- A046390: Squarefree odd numbers with exactly 4 distinct prime factors.

Offset 1, canonical program `A046390.P348595897100682115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3763 terms. -/
def A046390 (n : ℕ) : ℤ :=
  (A046390.P348595897100682115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3763 terms. -/
def A046390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048243.P9528040760750464915

`A034974(n+1)-A039593(n+1)`
-/

namespace A048243.P9528040760750464915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (n + 1) - A039593 (n + 1)

end

end A048243.P9528040760750464915

noncomputable section

/-- A048243: Number of non-unitary divisors of binomial(n, floor(n/2)).

Offset 1, canonical program `A048243.P9528040760750464915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3384 terms. -/
def A048243 (n : ℕ) : ℤ :=
  A048243.P9528040760750464915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3384 terms. -/
def A048243.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A049720.P3823249303916431378

`floor((A049732(n)+2+n)/2)`
-/

namespace A049720.P3823249303916431378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049732 n + 2 + (n : ℤ) : ℚ) / 2⌋

end

end A049720.P3823249303916431378

noncomputable section

/-- A049720: a(n)=T(n,1), array T as in A048149.

Offset 0, canonical program `A049720.P3823249303916431378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049720 (n : ℕ) : ℤ :=
  A049720.P3823249303916431378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049806.P8436587211597941545

`∑[A055034(A026741(n+1))]`
-/

namespace A049806.P8436587211597941545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P8436587211597941545

noncomputable section

/-- A049806: Number of Farey fractions of order n that are <=1/2; cf. A049805.

Offset 1, canonical program `A049806.P8436587211597941545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049806 (n : ℕ) : ℤ :=
  A049806.P8436587211597941545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050456.P2703078225834932298

`A050448(n+1)-A050455(n+1)`
-/

namespace A050456.P2703078225834932298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050448 (n + 1) - A050455 (n + 1)

end

end A050456.P2703078225834932298

noncomputable section

/-- A050456: a(n) = Sum_{d|n, d==1 mod 4} d^4 - Sum_{d|n, d==3 mod 4} d^4.

Offset 1, canonical program `A050456.P2703078225834932298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050456 (n : ℕ) : ℤ :=
  A050456.P2703078225834932298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053472.P11421251938670128939

`A053471(A016035(n+1)+1)`
-/

namespace A053472.P11421251938670128939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053471 (A016035 (n + 1) + 1).toNat

end

end A053472.P11421251938670128939

noncomputable section

/-- A053472: a(n) is the cototient of n (A051953) iterated 4 times.

Offset 1, canonical program `A053472.P11421251938670128939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053472 (n : ℕ) : ℤ :=
  A053472.P11421251938670128939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053472.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A056629.P11889635236478649752

`A055993(n+1)-A056630(n+1)`
-/

namespace A056629.P11889635236478649752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055993 (n + 1) - A056630 (n + 1)

end

end A056629.P11889635236478649752

noncomputable section

/-- A056629: a(n) = A034444(A056627(n)).

Offset 1, canonical program `A056629.P11889635236478649752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A056629 (n : ℕ) : ℤ :=
  A056629.P11889635236478649752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. -/
def A056629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056676.P319684415126171998

`A039593(n+1)-A056673(n+1)`
-/

namespace A056676.P319684415126171998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039593 (n + 1) - A056673 (n + 1)

end

end A056676.P319684415126171998

noncomputable section

/-- A056676: Number of non-unitary but squarefree divisors of binomial(n,floor(n/2)). Also number of nonsquarefree but unitary divisors of binomial(n,floor(n/2)).

Offset 1, canonical program `A056676.P319684415126171998`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039593, A056673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056676 (n : ℕ) : ℤ :=
  A056676.P319684415126171998.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039593, A056673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056676.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A064710.P18009114973468891681

`∩[A006532(n+1), A048943(n+1)]`
-/

namespace A064710.P18009114973468891681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064710.P18009114973468891681

noncomputable section

/-- A064710: Numbers k such that the sum of divisors of k and the product of divisors of k are both perfect squares.

Offset 1, canonical program `A064710.P18009114973468891681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A064710 (n : ℕ) : ℤ :=
  (A064710.P18009114973468891681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A064710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064767.P3059737301395273929

`Δ[A002088(n)]*A011785(n+1)`
-/

namespace A064767.P3059737301395273929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011785 (n + 1)

end

end A064767.P3059737301395273929

noncomputable section

/-- A064767: Order of automorphism group of the group C_n X C_n X C_n (where C_n is the cyclic group of order n).

Offset 1, canonical program `A064767.P3059737301395273929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064767 (n : ℕ) : ℤ :=
  A064767.P3059737301395273929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064920.P1804435076395315185

`A006530(n+2)+A076563(n+2)/A006530(n+2)`
-/

namespace A064920.P1804435076395315185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℚ) + (A076563 (n + 2) : ℚ) / (A006530 (n + 2) : ℚ)

end

end A064920.P1804435076395315185

noncomputable section

/-- A064920: a(n) = n/gpf(n) + gpf(n) - 1, where gpf = A006530 = greatest prime factor.

Offset 2, canonical program `A064920.P1804435076395315185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064920 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064920.P1804435076395315185.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066072.P3306232100751535018

`A000010(A066071(n+1))+1`
-/

namespace A066072.P3306232100751535018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A066071 (n + 1)).toNat + 1

end

end A066072.P3306232100751535018

noncomputable section

/-- A066072: Prime numbers arising in A066071.

Offset 1, canonical program `A066072.P3306232100751535018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066072 (n : ℕ) : ℤ :=
  A066072.P3306232100751535018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066507.P2778967298893371971

`comp[A329095(n+1)-1]+1`
-/

namespace A066507.P2778967298893371971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329095 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A066507.P2778967298893371971

noncomputable section

/-- A066507: Numbers k such that there is a solution to x^2 == 2^k (mod k).

Offset 1, canonical program `A066507.P2778967298893371971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066507 (n : ℕ) : ℤ :=
  (A066507.P2778967298893371971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069249.P10807043676143783363

`(n+1)²-A062354(n+1)`
-/

namespace A069249.P10807043676143783363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A062354 (n + 1)

end

end A069249.P10807043676143783363

noncomputable section

/-- A069249: a(n) = n^2 - phi(n)*sigma(n).

Offset 1, canonical program `A069249.P10807043676143783363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062354, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069249 (n : ℕ) : ℤ :=
  A069249.P10807043676143783363.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062354, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069256.P11047273582001152722

`A000079(val(A000252(n+1), 2))`
-/

namespace A069256.P11047273582001152722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000252 (n + 1)).toNat 2)

end

end A069256.P11047273582001152722

noncomputable section

/-- A069256: Size of the Sylow 2-subgroup of the group GL_2(Z_n): maximal power of 2 that divides A000252(n).

Offset 1, canonical program `A069256.P11047273582001152722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069256 (n : ℕ) : ℤ :=
  A069256.P11047273582001152722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070309.P13550694292198192403

`A072994(A060679(n+1))-1`
-/

namespace A070309.P13550694292198192403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (A060679 (n + 1)).toNat - 1

end

end A070309.P13550694292198192403

noncomputable section

/-- A070309: Number of solutions 2<=x<=A060679(n) to the equation x^A060679(n)==1 (mod A060679(n)) where A060679(n) are the orders of non-cyclic groups.

Offset 1, canonical program `A070309.P13550694292198192403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6886 terms. -/
def A070309 (n : ℕ) : ℤ :=
  A070309.P13550694292198192403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6886 terms. -/
def A070309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070943.P14364430333234565674

`A000252(n+1)*A062354(n+1)`
-/

namespace A070943.P14364430333234565674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (n + 1) * A062354 (n + 1)

end

end A070943.P14364430333234565674

noncomputable section

/-- A070943: Commuting elements: number of ordered pairs g, h in the group GL(2,Z_n) such that gh = hg.

Offset 1, canonical program `A070943.P14364430333234565674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070943 (n : ℕ) : ℤ :=
  A070943.P14364430333234565674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070943.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A076364.P15167791440389681606

`filter[A060679(n+3), A340373(#)]`
-/

namespace A076364.P15167791440389681606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A076364.P15167791440389681606

noncomputable section

/-- A076364: Number of distinct terms in dRRS equals 2: A061498(x)=2.

Offset 1, canonical program `A076364.P15167791440389681606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A076364 (n : ℕ) : ℤ :=
  A076364.P15167791440389681606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. -/
def A076364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077064.P16565391587089475239

`A039787(n+1)-1`
-/

namespace A077064.P16565391587089475239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) - 1

end

end A077064.P16565391587089475239

noncomputable section

/-- A077064: Squarefree numbers of form prime - 1.

Offset 1, canonical program `A077064.P16565391587089475239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077064 (n : ℕ) : ℤ :=
  A077064.P16565391587089475239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077064.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A082953.P9111907207712937456

`A000252(n+1)/A070732(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082953.P9111907207712937456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A070732 (n + 1) : ℚ)

end

end A082953.P9111907207712937456

noncomputable section

/-- A082953: a(n) = A000252(n) / A070732(n).

Offset 1, canonical program `A082953.P9111907207712937456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A070732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082953.P9111907207712937456.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000252, A070732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A082953.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A089188.P17705299783274846901

`p?[A039787(n+1)+2]-2`
-/

namespace A089188.P17705299783274846901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A089188.P17705299783274846901

noncomputable section

/-- A089188: Lesser member p of a pair of twin primes such that p-1 is squarefree.

Offset 1, canonical program `A089188.P17705299783274846901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A089188 (n : ℕ) : ℤ :=
  A089188.P17705299783274846901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. -/
def A089188.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100367.P14256185625619579639

`2*(eq[1, A340373(n+1)]+1)`
-/

namespace A100367.P14256185625619579639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A100367.P14256185625619579639

noncomputable section

/-- A100367: Even numbers with two prime factors, not counting multiplicity.

Offset 1, canonical program `A100367.P14256185625619579639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100367 (n : ℕ) : ℤ :=
  (A100367.P14256185625619579639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102364.P14950148720451937594

`A072649(n+1)-(A010056(n+1)+A007895(n))`
-/

namespace A102364.P14950148720451937594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) - (A010056 (n + 1) + A007895 n)

end

end A102364.P14950148720451937594

noncomputable section

/-- A102364: Number of terms in Fibonacci sequence less than n not used in Zeckendorf representation of n (the Zeckendorf representation of n is a sum of non-consecutive distinct Fibonacci numbers).

Offset 0, canonical program `A102364.P14950148720451937594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102364 (n : ℕ) : ℤ :=
  A102364.P14950148720451937594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105774.P16927579740594688494

`A000045(2+A072649(n))-a(n-A000045(1+A072649(n)))` with `a(0)=1, a(1)=1`
-/

namespace A105774.P16927579740594688494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (2 + A072649 n).toNat - a ((n : ℤ) - A000045 (1 + A072649 n).toNat).toNat

end

end A105774.P16927579740594688494

noncomputable section

/-- A105774: A "fractal" transform of the Fibonacci numbers: a(1)=1; then if F(n) < k <= F(n+1), a(k) = F(n+1) - a(k - F(n)) where F(n) = A000045(n).

Offset 1, canonical program `A105774.P16927579740594688494`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105774 (n : ℕ) : ℤ :=
  A105774.P16927579740594688494.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106844.P3344673447551020478

`A007814(A093641(n+1))`
-/

namespace A106844.P3344673447551020478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A093641 (n + 1)).toNat

end

end A106844.P3344673447551020478

noncomputable section

/-- A106844: Exponent of 2 in the prime factorization of A093641(n).

Offset 1, canonical program `A106844.P3344673447551020478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106844 (n : ℕ) : ℤ :=
  A106844.P3344673447551020478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108144.P14357558413651915361

`2*A093641(n+2)+1`
-/

namespace A108144.P14357558413651915361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 2) + 1

end

end A108144.P14357558413651915361

noncomputable section

/-- A108144: Numbers n such that (n-1)/P(n-1) is a power of two > 1, where P(n) is the largest prime factor of n.

Offset 1, canonical program `A108144.P14357558413651915361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108144 (n : ℕ) : ℤ :=
  A108144.P14357558413651915361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108144.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119972.P9804530373177183797

`(n+1)*A034947(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119972.P9804530373177183797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034947 (n + 1)

end

end A119972.P9804530373177183797

noncomputable section

/-- A119972: a(n) = n * A034947(n).

Offset 1, canonical program `A119972.P9804530373177183797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119972 (n : ℕ) : ℤ :=
  A119972.P9804530373177183797.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120873.P2724620429023881617

`A003603(∑[A001468(n)])`
-/

namespace A120873.P2724620429023881617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A120873.P2724620429023881617

noncomputable section

/-- A120873: Fractal sequence of the Wythoff difference array (A080164).

Offset 1, canonical program `A120873.P2724620429023881617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120873 (n : ℕ) : ℤ :=
  A120873.P2724620429023881617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120873.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126711.P3238805726536964657

`p?[A046317(n+1)+2]`
-/

namespace A126711.P3238805726536964657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126711.P3238805726536964657

noncomputable section

/-- A126711: Primes of the form p*q*r*s+2 with p,q,r,s odd primes.

Offset 1, canonical program `A126711.P3238805726536964657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2573 terms. -/
def A126711 (n : ℕ) : ℤ :=
  A126711.P3238805726536964657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2573 terms. -/
def A126711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130312.P4153789337100935269

`A000045(A072649(n+1))`
-/

namespace A130312.P4153789337100935269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072649 (n + 1)).toNat

end

end A130312.P4153789337100935269

noncomputable section

/-- A130312: Each Fibonacci number F(n) appears F(n) times.

Offset 1, canonical program `A130312.P4153789337100935269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130312 (n : ℕ) : ℤ :=
  A130312.P4153789337100935269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130853.P8707177424060044516

`Δ[n-A072649(a(n-1)+1)]` with `a(0)=0`
-/

namespace A130853.P8707177424060044516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - A072649 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130853.P8707177424060044516

noncomputable section

/-- A130853: Runs of 1's of lengths 1, Fibonacci numbers F(1), F(2), F(3), ... (A000045) separated by 0's.

Offset 1, canonical program `A130853.P8707177424060044516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130853 (n : ℕ) : ℤ :=
  A130853.P8707177424060044516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138606.P3334702889482449947

`A166012(A072649(n+1)-1)+2*(n+1-A000045(1+A072649(n+1)))`
-/

namespace A138606.P3334702889482449947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 (A072649 (n + 1) - 1).toNat + 2 * ((n + 1 : ℤ) - A000045 (1 + A072649 (n + 1)).toNat)

end

end A138606.P3334702889482449947

noncomputable section

/-- A138606: List first F(1) odd numbers, then first F(2) even numbers (starting from 2), then the next F(3) odd numbers, then the next F(4) even numbers, etc., where F(n) = A000045(n), the n-th Fibonacci number.

Offset 1, canonical program `A138606.P3334702889482449947`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138606 (n : ℕ) : ℤ :=
  A138606.P3334702889482449947.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138709.P8547315459181565559

`A072649(n+1)%2`
-/

namespace A138709.P8547315459181565559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072649 (n + 1)) 2

end

end A138709.P8547315459181565559

noncomputable section

/-- A138709: n-th run has length n-th positive Fibonacci numbers, with digits 0 and 1 only, starting with 1.

Offset 1, canonical program `A138709.P8547315459181565559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138709 (n : ℕ) : ℤ :=
  A138709.P8547315459181565559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139392.P372790930069283267

`A060679(eq[1, A060679(n+1)%2]+1)`
-/

namespace A139392.P372790930069283267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060679 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A139392.P372790930069283267

noncomputable section

/-- A139392: Odd noncyclic numbers; odd numbers n such that gcd(n,phi(n)) > 1.

Offset 1, canonical program `A139392.P372790930069283267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A139392 (n : ℕ) : ℤ :=
  A139392.P372790930069283267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A139392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140235.P5857822171184418591

`∑[A100959(n+1)]`
-/

namespace A140235.P5857822171184418591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140235.P5857822171184418591

noncomputable section

/-- A140235: Partial sum of non-semiprimes A100959.

Offset 1, canonical program `A140235.P5857822171184418591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140235 (n : ℕ) : ℤ :=
  A140235.P5857822171184418591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142863.P620794168205063834

`∩[A037143(n+1), A060679(n+1)]`
-/

namespace A142863.P620794168205063834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142863.P620794168205063834

noncomputable section

/-- A142863: Semiprimes n (A001358) for which A000001(n) is 2.

Offset 1, canonical program `A142863.P620794168205063834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142863 (n : ℕ) : ℤ :=
  (A142863.P620794168205063834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153207.P8862744067160107778

`p?[2*A039787(n+1)-1]`
-/

namespace A153207.P8862744067160107778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039787 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153207.P8862744067160107778

noncomputable section

/-- A153207: Primes of the form 2*p-1 where p is prime and p-1 is squarefree.

Offset 1, canonical program `A153207.P8862744067160107778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A153207 (n : ℕ) : ℤ :=
  A153207.P8862744067160107778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1279 terms. -/
def A153207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157483.P17221998707677221966

`record[A103391(A124941(n+1))]`
-/

namespace A157483.P17221998707677221966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A124941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157483.P17221998707677221966

noncomputable section

/-- A157483: Numbers k such that k-1 and k+1 are divisible by exactly 3 primes, counted with multiplicity.

Offset 1, canonical program `A157483.P17221998707677221966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1678 terms. -/
def A157483 (n : ℕ) : ℤ :=
  A157483.P17221998707677221966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1678 terms. -/
def A157483.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A159237.P7782317052390177821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A046346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159237 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159237.P7782317052390177821.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A046346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159237.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A173664.P13143587521739781158

`∩[A014091(n+1), A100959(n+1)]`
-/

namespace A173664.P13143587521739781158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173664.P13143587521739781158

noncomputable section

/-- A173664: Sums of 2 primes that are not product of 2 primes.

Offset 1, canonical program `A173664.P13143587521739781158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6913 terms. -/
def A173664 (n : ℕ) : ℤ :=
  (A173664.P13143587521739781158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6913 terms. -/
def A173664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173672.P11116447172890435173

`∩[A030173(n+1), A100959(n+1)]`
-/

namespace A173672.P11116447172890435173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173672.P11116447172890435173

noncomputable section

/-- A173672: Positive differences between any two primes without the differences that are semiprimes.

Offset 1, canonical program `A173672.P11116447172890435173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6918 terms. -/
def A173672 (n : ℕ) : ℤ :=
  (A173672.P11116447172890435173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6918 terms. -/
def A173672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176363.P9230070974181017387

`A100959(A100959(n+1))`
-/

namespace A176363.P9230070974181017387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (A100959 (n + 1)).toNat

end

end A176363.P9230070974181017387

noncomputable section

/-- A176363: Non-semiprime numbers of order 2.

Offset 1, canonical program `A176363.P9230070974181017387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176363 (n : ℕ) : ℤ :=
  A176363.P9230070974181017387.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177733.P18146593740982256021

`∩[A105441(n+1), A187811(n+1)]`
-/

namespace A177733.P18146593740982256021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177733.P18146593740982256021

noncomputable section

/-- A177733: Integers that can be expressed as the sum of two or more positive consecutive numbers (the largest being even) AND also as the sum of two or more positive consecutive numbers (the largest being odd).

Offset 1, canonical program `A177733.P18146593740982256021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8278 terms. -/
def A177733 (n : ℕ) : ℤ :=
  (A177733.P18146593740982256021.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8278 terms. -/
def A177733.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188633.P1960431883035544566

`4*A105441(n+1)`
-/

namespace A188633.P1960431883035544566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105441 (n + 1)

end

end A188633.P1960431883035544566

noncomputable section

/-- A188633: Numbers of the form 2^k * m, with k > 1 and m an odd composite number.

Offset 1, canonical program `A188633.P1960431883035544566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188633 (n : ℕ) : ℤ :=
  A188633.P1960431883035544566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189022.P14953887359045575583

`∑{d}[n+1, A307445(#)*A365348((n+1)/#)]`
-/

namespace A189022.P14953887359045575583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A365348 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A189022.P14953887359045575583

noncomputable section

/-- A189022: Apostol's third-order Möbius function mu_3(n).

Offset 1, canonical program `A189022.P14953887359045575583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189022 (n : ℕ) : ℤ :=
  A189022.P14953887359045575583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189022.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191360.P15454014504453218478

`A035612(n+1)-A003603(n+1)`
-/

namespace A191360.P15454014504453218478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (n + 1) - A003603 (n + 1)

end

end A191360.P15454014504453218478

noncomputable section

/-- A191360: Number of the diagonal of the Wythoff array that contains n.

Offset 1, canonical program `A191360.P15454014504453218478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003603, A035612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A191360 (n : ℕ) : ℤ :=
  A191360.P15454014504453218478.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003603, A035612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A191360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192869.P9466224486082789538

`p?[2*A093641(n+1)-1]`
-/

namespace A192869.P9466224486082789538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192869.P9466224486082789538

noncomputable section

/-- A192869: Thin primes: odd primes p such that p+1 is a prime (or 1) times a power of two.

Offset 1, canonical program `A192869.P9466224486082789538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192869 (n : ℕ) : ℤ :=
  A192869.P9466224486082789538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A192869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209355.P10385269046573957715

`char[A056560(n)+2*n+1]`
-/

namespace A209355.P10385269046573957715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 n + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A209355.P10385269046573957715

noncomputable section

/-- A209355: Sequence with each term appearing in runs of every length infinitely often.

Offset 1, canonical program `A209355.P10385269046573957715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209355 (n : ℕ) : ℤ :=
  (A209355.P10385269046573957715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209355.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A215173.P7644619850736860119

`∩[A335328(n+1), A348098(n+1)]`
-/

namespace A215173.P7644619850736860119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215173.P7644619850736860119

noncomputable section

/-- A215173: Numbers k such that k and k+1 are both of the form p*q^3 where p and q are distinct primes.

Offset 1, canonical program `A215173.P7644619850736860119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A215173 (n : ℕ) : ℤ :=
  (A215173.P7644619850736860119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A215173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217710.P15686075439153067836

`A072649(n+1)-A029837(n+1)`
-/

namespace A217710.P15686075439153067836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) - A029837 (n + 1)

end

end A217710.P15686075439153067836

noncomputable section

/-- A217710: Cardinality of the set of possible heights of AVL trees with n (leaf-) nodes.

Offset 1, canonical program `A217710.P15686075439153067836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217710 (n : ℕ) : ℤ :=
  A217710.P15686075439153067836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A217710.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A248763.P3437654902808578864

`A248762(n+1)^(1/3)`
-/

namespace A248763.P3437654902808578864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248762 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A248763.P3437654902808578864

noncomputable section

/-- A248763: Greatest k such that k^3 divides n!

Offset 1, canonical program `A248763.P3437654902808578864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248763.P3437654902808578864.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248763.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A274079.P11049046374545540560

`A000096(A056556(n))+A056560(n)+2`
-/

namespace A274079.P11049046374545540560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A056556 n).toNat + (A056560 n + 2)

end

end A274079.P11049046374545540560

noncomputable section

/-- A274079: Table read by rows: the n-th row is the list of numbers diagonally up and to the right of n in the natural numbers read by antidiagonals.

Offset 1, canonical program `A274079.P11049046374545540560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274079 (n : ℕ) : ℤ :=
  A274079.P11049046374545540560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274908.P10226995600949905090

`A005420(3*(n+1))`
-/

namespace A274908.P10226995600949905090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (3 * (n + 1))

end

end A274908.P10226995600949905090

noncomputable section

/-- A274908: Largest prime factor of 8^n - 1.

Offset 1, canonical program `A274908.P10226995600949905090`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274908 (n : ℕ) : ℤ :=
  A274908.P10226995600949905090.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005420, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279051.P13470628447190644571

`A300893(A153733(n)+1)`
-/

namespace A279051.P13470628447190644571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300893 (A153733 n + 1).toNat

end

end A279051.P13470628447190644571

noncomputable section

/-- A279051: Sum of odd nonprime divisors of n.

Offset 1, canonical program `A279051.P13470628447190644571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279051 (n : ℕ) : ℤ :=
  A279051.P13470628447190644571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279287.P12267829467651088072

`A062354(n+1)/gcd(A062354(n+1), A064840(n+1))`
-/

namespace A279287.P12267829467651088072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (Int.gcd (A062354 (n + 1)) (A064840 (n + 1)) : ℚ)

end

end A279287.P12267829467651088072

noncomputable section

/-- A279287: a(n) = numerator of (phi(n)/tau(n)).

Offset 1, canonical program `A279287.P12267829467651088072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279287 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279287.P12267829467651088072.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279288.P12363136388556004692

`A064840(n+1)/gcd(A062354(n+1), A064840(n+1))`
-/

namespace A279288.P12363136388556004692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (Int.gcd (A062354 (n + 1)) (A064840 (n + 1)) : ℚ)

end

end A279288.P12363136388556004692

noncomputable section

/-- A279288: a(n) = denominator of (phi(n)/tau(n)).

Offset 1, canonical program `A279288.P12363136388556004692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A279288.P12363136388556004692.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279288.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A283461.P9028537449834706039

`A006530(A000225(n+2)/A005420(n+2))`
-/

namespace A283461.P9028537449834706039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000225 (n + 2) : ℚ) / (A005420 (n + 2) : ℚ))).toNat

end

end A283461.P9028537449834706039

noncomputable section

/-- A283461: Second-largest prime factor of 2^n - 1, if composite, or 1 otherwise.

Offset 2, canonical program `A283461.P9028537449834706039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005420, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283461 (n : ℕ) : ℤ :=
  A283461.P9028537449834706039.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005420, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A283461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289412.P16736095440430260150

`A062354(n+1)/(A000203(n+1)*A009223(n+1))`
-/

namespace A289412.P16736095440430260150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A000203 (n + 1) * A009223 (n + 1) : ℚ)

end

end A289412.P16736095440430260150

noncomputable section

/-- A289412: a(n) = denominator of (sigma(n) / phi(n)).

Offset 1, canonical program `A289412.P16736095440430260150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289412.P16736095440430260150.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289412.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A316851.P8837201044806511717

`A070770(lt[A056559(n), A056558(n)])`
-/

namespace A316851.P8837201044806511717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070770 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316851.P8837201044806511717

noncomputable section

/-- A316851: Consider integer triangles as listed in rows of table A316841. Sequence gives perimeters of these triangles in the same order.

Offset 1, canonical program `A316851.P8837201044806511717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316851 (n : ℕ) : ℤ :=
  A316851.P8837201044806511717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3000 terms. -/
def A316851.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A324643.P7794025302369254202

`∩[A324639(n+1), A324652(n+1)]`
-/

namespace A324643.P7794025302369254202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324643.P7794025302369254202

noncomputable section

/-- A324643: Numbers k such that bitand(2k,sigma(k))/2 = k = bitand(k,sigma(k)-k), where bitand is bitwise-AND, A004198.

Offset 1, canonical program `A324643.P7794025302369254202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A324643 (n : ℕ) : ℤ :=
  (A324643.P7794025302369254202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A324643.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A332658.P8837612117912986795

`∑{d}[n+1, A007427(#)*A056789((n+1)/#)]`
-/

namespace A332658.P8837612117912986795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A056789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332658.P8837612117912986795

noncomputable section

/-- A332658: a(n) = Sum_{k=1..n} mu(gcd(n, k)) * lcm(n, k) / gcd(n, k).

Offset 1, canonical program `A332658.P8837612117912986795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332658 (n : ℕ) : ℤ :=
  A332658.P8837612117912986795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336101.P16851114515148450517

`eq[1, A340373(n+1)]+1`
-/

namespace A336101.P16851114515148450517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336101.P16851114515148450517

noncomputable section

/-- A336101: Numbers divisible by exactly one odd prime.

Offset 1, canonical program `A336101.P16851114515148450517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336101 (n : ℕ) : ℤ :=
  (A336101.P16851114515148450517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336554.P9192050321273390476

`∩[or(1, A011775(n+1)), A175200(n+1)]`
-/

namespace A336554.P9192050321273390476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011775 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336554.P9192050321273390476

noncomputable section

/-- A336554: Odd numbers k such that rad(k) divides sigma(k).

Offset 1, canonical program `A336554.P9192050321273390476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A336554 (n : ℕ) : ℤ :=
  (A336554.P9192050321273390476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A336554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336563.P9984757365447373313

`A007947(n+1)*A336567(n+1)`
-/

namespace A336563.P9984757365447373313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A336567 (n + 1)

end

end A336563.P9984757365447373313

noncomputable section

/-- A336563: Sum of proper divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A336563.P9984757365447373313`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A336567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336563 (n : ℕ) : ℤ :=
  A336563.P9984757365447373313.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A336567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336563.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336699.P18439730461786398350

`A171435(A000593(n+1)+A082903(n+1))`
-/

namespace A336699.P18439730461786398350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A000593 (n + 1) + A082903 (n + 1)).toNat

end

end A336699.P18439730461786398350

noncomputable section

/-- A336699: a(n) = A000265(1+A000265(sigma(A000265(n)))), where A000265(k) gives the odd part of k, and sigma is the sum of divisors function.

Offset 1, canonical program `A336699.P18439730461786398350`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171435, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336699 (n : ℕ) : ℤ :=
  A336699.P18439730461786398350.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171435, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336699.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A337198.P321523627652401232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A337194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337198 (n : ℕ) : ℤ :=
  A337198.P321523627652401232.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A337194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337198.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A339871.P15676400501281653132

`A001221(A160595(n+1))`
-/

namespace A339871.P15676400501281653132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A160595 (n + 1)).toNat

end

end A339871.P15676400501281653132

noncomputable section

/-- A339871: Number of primes p for which the p-adic valuation of phi(n) exceeds the p-adic valuation of n-1, with a(1) = 0 by convention.

Offset 1, canonical program `A339871.P15676400501281653132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A160595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339871 (n : ℕ) : ℤ :=
  A339871.P15676400501281653132.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A160595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339871.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A343976.P7720806449729072559

`p?[A093641(n+2)+A093641(n+1)]`
-/

namespace A343976.P7720806449729072559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2) + A093641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343976.P7720806449729072559

noncomputable section

/-- A343976: Primes that are the sum of two consecutive terms of A093641.

Offset 1, canonical program `A343976.P7720806449729072559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 694 terms. -/
def A343976 (n : ℕ) : ℤ :=
  A343976.P7720806449729072559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 694 terms. -/
def A343976.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354031.P5992259175605925891

`A024362(n+1)%2`
-/

namespace A354031.P5992259175605925891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024362 (n + 1)) 2

end

end A354031.P5992259175605925891

noncomputable section

/-- A354031: a(n) = 1 if n > 1 and n is a power of a Pythagorean prime (prime of the form 4m+1), otherwise 0.

Offset 1, canonical program `A354031.P5992259175605925891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354031 (n : ℕ) : ℤ :=
  A354031.P5992259175605925891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357927.P10800580115692162370

`C(A028310(n), A072649(A028310(n)))`
-/

namespace A357927.P10800580115692162370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 n).toNat (A072649 (A028310 n).toNat).toNat

end

end A357927.P10800580115692162370

noncomputable section

/-- A357927: Number of subsets of [n] in which exactly half of the elements are Fibonacci numbers.

Offset 0, canonical program `A357927.P10800580115692162370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357927 (n : ℕ) : ℤ :=
  (A357927.P10800580115692162370.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358699.P18163707120374341478

`A005420(A006093(n+2))`
-/

namespace A358699.P18163707120374341478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A006093 (n + 2)).toNat

end

end A358699.P18163707120374341478

noncomputable section

/-- A358699: a(n) is the largest prime factor of 2^(prime(n) - 1) - 1.

Offset 2, canonical program `A358699.P18163707120374341478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005420, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358699 (n : ℕ) : ℤ :=
  A358699.P18163707120374341478.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005420, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358699.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002496.P13667531374760205001

`A121326(n%a(n-1))` with `a(0)=2`
-/

namespace A002496.P13667531374760205001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A121326 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A002496.P13667531374760205001

noncomputable section

/-- A002496: Primes of the form k^2 + 1.

Offset 1, canonical program `A002496.P13667531374760205001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002496 (n : ℕ) : ℤ :=
  A002496.P13667531374760205001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002588.P8656157946220816494

`A005420(a(A000038(n))+2*n)` with `a(0)=1`
-/

namespace A002588.P8656157946220816494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005420 (a (A000038 n).toNat + (2 * n : ℤ)).toNat

end

end A002588.P8656157946220816494

noncomputable section

/-- A002588: a(n) = largest noncomposite factor of 2^(2n+1) - 1.

Offset 0, canonical program `A002588.P8656157946220816494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A002588 (n : ℕ) : ℤ :=
  A002588.P8656157946220816494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A002588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003020.P9425741526442274275

`A005422(n+2)`
-/

namespace A003020.P9425741526442274275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005422 (n + 2)

end

end A003020.P9425741526442274275

noncomputable section

/-- A003020: Largest prime factor of the "repunit" number 11...1 (cf. A002275).

Offset 2, canonical program `A003020.P9425741526442274275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A003020 (n : ℕ) : ℤ :=
  A003020.P9425741526442274275.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A003020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009286.P1468991457414160783

`A062354(n+1)/A009223(n+1)`
-/

namespace A009286.P1468991457414160783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009223 (n + 1) : ℚ)

end

end A009286.P1468991457414160783

noncomputable section

/-- A009286: a(n) = lcm(sigma(n), phi(n)).

Offset 1, canonical program `A009286.P1468991457414160783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A009286.P1468991457414160783.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009223, A062354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A009286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A027695.P1855430691776300506

`A011260(A028310(n))*A053285(n)`
-/

namespace A027695.P1855430691776300506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A028310 n).toNat * A053285 n

end

end A027695.P1855430691776300506

noncomputable section

/-- A027695: Number of primitive polynomials of degree n over GF(4).

Offset 0, canonical program `A027695.P1855430691776300506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A027695 (n : ℕ) : ℤ :=
  A027695.P1855430691776300506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A027695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027742.P15524387088752407227

`A295501(n+1)/(2*(n+1))`
-/

namespace A027742.P15524387088752407227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295501 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A027742.P15524387088752407227

noncomputable section

/-- A027742: a(n) = phi(4^n-1)/(2*n).

Offset 1, canonical program `A027742.P15524387088752407227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027742 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027742.P15524387088752407227.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295501, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050466.P15533784543900477254

`(A007331(n+1)-A050471(n+1))/2`
-/

namespace A050466.P15533784543900477254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007331 (n + 1) - A050471 (n + 1) : ℚ) / 2

end

end A050466.P15533784543900477254

noncomputable section

/-- A050466: a(n) = Sum_{d|n, n/d=3 mod 4} d^3.

Offset 1, canonical program `A050466.P15533784543900477254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007331, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050466 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A050466.P15533784543900477254.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007331, A050471, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053178.P15316804422992662611

`record[A171435(10*n+11)]`
-/

namespace A053178.P15316804422992662611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (10 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053178.P15316804422992662611

noncomputable section

/-- A053178: Numbers ending in 1 which are not prime.

Offset 1, canonical program `A053178.P15316804422992662611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7613 terms. -/
def A053178 (n : ℕ) : ℤ :=
  A053178.P15316804422992662611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7613 terms. -/
def A053178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053181.P9598775767197643253

`record[A171435(10*n+9)]`
-/

namespace A053181.P9598775767197643253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (10 * n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053181.P9598775767197643253

noncomputable section

/-- A053181: Composite numbers ending in 9.

Offset 1, canonical program `A053181.P9598775767197643253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7610 terms. -/
def A053181 (n : ℕ) : ℤ :=
  A053181.P9598775767197643253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7610 terms. -/
def A053181.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054571.P8375509208684838660

`1-A343912(n+1)+n`
-/

namespace A054571.P8375509208684838660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A343912 (n + 1) + (n : ℤ)

end

end A054571.P8375509208684838660

noncomputable section

/-- A054571: a(n) = phi(n - phi(n)), a(1) = 0.

Offset 1, canonical program `A054571.P8375509208684838660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054571 (n : ℕ) : ℤ :=
  A054571.P8375509208684838660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056552.P1963529869143813424

`A056551(n+1)^(1/3)`
-/

namespace A056552.P1963529869143813424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056551 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A056552.P1963529869143813424

noncomputable section

/-- A056552: Powerfree kernel of cubefree part of n.

Offset 1, canonical program `A056552.P1963529869143813424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056552.P1963529869143813424.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058161.P7672839083223615589

`(n+1)!/A002618(n+1)`
-/

namespace A058161.P7672839083223615589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A058161.P7672839083223615589

noncomputable section

/-- A058161: Number of labeled cyclic groups with a fixed identity.

Offset 1, canonical program `A058161.P7672839083223615589`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058161.P7672839083223615589.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058363.P18291542316030810547

`filter[A093641(n+2), A354923(#)]`
-/

namespace A058363.P18291542316030810547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A058363.P18291542316030810547

noncomputable section

/-- A058363: Numbers whose reduced system of residues forms an arithmetic progression. It consists of primes, twice primes, and powers of 2.

Offset 1, canonical program `A058363.P18291542316030810547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7050 terms. -/
def A058363 (n : ℕ) : ℤ :=
  A058363.P18291542316030810547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7050 terms. -/
def A058363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062955.P17396036720495467672

`A002618(n+1)-A000010(n+1)`
-/

namespace A062955.P17396036720495467672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A000010 (n + 1)

end

end A062955.P17396036720495467672

noncomputable section

/-- A062955: a(n) = phi(n^2) - phi(n) = (n-1) * phi(n).

Offset 1, canonical program `A062955.P17396036720495467672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062955 (n : ℕ) : ℤ :=
  A062955.P17396036720495467672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064400.P18224085056823472977

`3*A002618(n+1)`
-/

namespace A064400.P18224085056823472977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002618 (n + 1)

end

end A064400.P18224085056823472977

noncomputable section

/-- A064400: Number of ordered pairs a,b of elements in the dihedral group D_2n such that the subgroup generated by the pair a,b is the entire group D_2n.

Offset 1, canonical program `A064400.P18224085056823472977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064400 (n : ℕ) : ℤ :=
  A064400.P18224085056823472977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069194.P17220240621042062956

`∑{d}[n+1, A002618(n+1)/A002618(#)]`
-/

namespace A069194.P17220240621042062956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A002618 (n + 1) : ℚ) / (A002618 d : ℚ)

end

end A069194.P17220240621042062956

noncomputable section

/-- A069194: a(n) = Sum_{d|n} (n/d)*phi(n)/phi(d).

Offset 1, canonical program `A069194.P17220240621042062956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069194 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069194.P17220240621042062956.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070005.P18332197979937916789

`∩[A070537(n+1), A078174(n+1)]`
-/

namespace A070005.P18332197979937916789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070005.P18332197979937916789

noncomputable section

/-- A070005: Arithmetic mean of prime factors of n is an integer and n is neither a prime nor power of a prime.

Offset 1, canonical program `A070005.P18332197979937916789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5428 terms. -/
def A070005 (n : ℕ) : ℤ :=
  (A070005.P18332197979937916789.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5428 terms. -/
def A070005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070306.P13161022256143863754

`2/(n+1)*A248003(n+1)`
-/

namespace A070306.P13161022256143863754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A248003 (n + 1) : ℚ)

end

end A070306.P13161022256143863754

noncomputable section

/-- A070306: a(n) = 2*phi(n)/2^omega(n).

Offset 1, canonical program `A070306.P13161022256143863754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070306.P13161022256143863754.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071118.P10143340567303740039

`2*A002618(n+1)`
-/

namespace A071118.P10143340567303740039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002618 (n + 1)

end

end A071118.P10143340567303740039

noncomputable section

/-- A071118: Size of the automorphism group of the group Z X Z_n.

Offset 1, canonical program `A071118.P10143340567303740039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071118 (n : ℕ) : ℤ :=
  A071118.P10143340567303740039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074644.P111578526858648291

`C(A002618(n+1), 3)%(n+1)`
-/

namespace A074644.P111578526858648291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002618 (n + 1)).toNat 3 % (n + 1)

end

end A074644.P111578526858648291

noncomputable section

/-- A074644: a(n) = (A074639(n^2) - A074639(n)) mod n.

Offset 1, canonical program `A074644.P111578526858648291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A074644 (n : ℕ) : ℤ :=
  (A074644.P111578526858648291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A074644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074781.P18303126797779348735

`p?[2*A093641(n+1)+1]`
-/

namespace A074781.P18303126797779348735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074781.P18303126797779348735

noncomputable section

/-- A074781: Primes of the form p*2^k + 1 for any k and any prime p.

Offset 1, canonical program `A074781.P18303126797779348735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1336 terms. -/
def A074781 (n : ℕ) : ℤ :=
  A074781.P18303126797779348735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1336 terms. -/
def A074781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076763.P7586696728486630368

`∩[A294277(n+1)+1, A294278(n+1)]`
-/

namespace A076763.P7586696728486630368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076763.P7586696728486630368

noncomputable section

/-- A076763: 1-apexes of omega: numbers n such that omega(n-1) < omega(n) > omega(n+1), where omega(m) = the number of distinct prime factors of m.

Offset 1, canonical program `A076763.P7586696728486630368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6813 terms. -/
def A076763 (n : ℕ) : ℤ :=
  (A076763.P7586696728486630368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6813 terms. -/
def A076763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078766.P6802936406956990662

`A000720(A002618(n+1))`
-/

namespace A078766.P6802936406956990662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002618 (n + 1)).toNat

end

end A078766.P6802936406956990662

noncomputable section

/-- A078766: Number of primes less than n*phi(n).

Offset 1, canonical program `A078766.P6802936406956990662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078766 (n : ℕ) : ℤ :=
  A078766.P6802936406956990662.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079476.P11192462529891876628

`A007918(A002618(n+1))`
-/

namespace A079476.P11192462529891876628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002618 (n + 1)).toNat

end

end A079476.P11192462529891876628

noncomputable section

/-- A079476: First prime greater than or equal to phi(n^2).

Offset 1, canonical program `A079476.P11192462529891876628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079476 (n : ℕ) : ℤ :=
  A079476.P11192462529891876628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079476.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A088405.P5207061650554154256

`A052217(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088405.P5207061650554154256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052217 (n + 1) : ℚ) / 3

end

end A088405.P5207061650554154256

noncomputable section

/-- A088405: a(n) = A052217(n)/3.

Offset 1, canonical program `A088405.P5207061650554154256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088405 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088405.P5207061650554154256.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052217, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101934.P8442723091966144168

`∩[A294277(n+1), A294278(n+1)+1]`
-/

namespace A101934.P8442723091966144168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294278 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101934.P8442723091966144168

noncomputable section

/-- A101934: Numbers n with omega(n) smaller than omega(n-1) and omega(n+1).

Offset 1, canonical program `A101934.P8442723091966144168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101934 (n : ℕ) : ℤ :=
  (A101934.P8442723091966144168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A101934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117295.P11573964294491950666

`A002618(n+1)-A127473(n+1)`
-/

namespace A117295.P11573964294491950666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A127473 (n + 1)

end

end A117295.P11573964294491950666

noncomputable section

/-- A117295: a(n) = phi(n)*(n - phi(n)).

Offset 1, canonical program `A117295.P11573964294491950666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117295 (n : ℕ) : ℤ :=
  A117295.P11573964294491950666.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A127473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117295.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121307.P5032943004208249277

`∩[A004612(n+1), A014612(n+1)]`
-/

namespace A121307.P5032943004208249277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121307.P5032943004208249277

noncomputable section

/-- A121307: Products of three primes of the form 3n-1 (A003627), not necessarily distinct.

Offset 1, canonical program `A121307.P5032943004208249277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1921 terms. -/
def A121307 (n : ℕ) : ℤ :=
  (A121307.P5032943004208249277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1921 terms. -/
def A121307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137148.P10281140447083490938

`A002618(A018252(n+1))`
-/

namespace A137148.P10281140447083490938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A018252 (n + 1)).toNat

end

end A137148.P10281140447083490938

noncomputable section

/-- A137148: a(n) = k*phi(k), where k is the n-th nonprime number.

Offset 1, canonical program `A137148.P10281140447083490938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137148 (n : ℕ) : ℤ :=
  A137148.P10281140447083490938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140370.P11945933179841790018

`record[A171435(A306285(2*(n+1)))]`
-/

namespace A140370.P11945933179841790018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A306285 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140370.P11945933179841790018

noncomputable section

/-- A140370: Composites of the form 26k + 21.

Offset 1, canonical program `A140370.P11945933179841790018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. -/
def A140370 (n : ℕ) : ℤ :=
  A140370.P11945933179841790018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. -/
def A140370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140376.P14382105918377167922

`record[A171435(A190991(2*n))]`
-/

namespace A140376.P14382105918377167922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A190991 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P14382105918377167922

noncomputable section

/-- A140376: Nonprimes of the form 26n+1.

Offset 1, canonical program `A140376.P14382105918377167922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3049 terms. -/
def A140376 (n : ℕ) : ℤ :=
  A140376.P14382105918377167922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3049 terms. -/
def A140376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140379.P6055374210974957999

`record[A171435(2*7*n+1)]`
-/

namespace A140379.P6055374210974957999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (7 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140379.P6055374210974957999

noncomputable section

/-- A140379: Nonprimes of the form 14k+1.

Offset 1, canonical program `A140379.P6055374210974957999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A140379 (n : ℕ) : ℤ :=
  A140379.P6055374210974957999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A140379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140380.P10488376729537076416

`record[A171435(A017029(n)+41)]`
-/

namespace A140380.P10488376729537076416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017029 n + 41).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140380.P10488376729537076416

noncomputable section

/-- A140380: Composites of the form 14k + 3.

Offset 1, canonical program `A140380.P10488376729537076416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. -/
def A140380 (n : ℕ) : ℤ :=
  A140380.P10488376729537076416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. -/
def A140380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140381.P12508315804219335173

`record[A171435(A017005(2*n+1))]`
-/

namespace A140381.P12508315804219335173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017005 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140381.P12508315804219335173

noncomputable section

/-- A140381: Composites of the form 14k + 9.

Offset 1, canonical program `A140381.P12508315804219335173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A140381 (n : ℕ) : ℤ :=
  A140381.P12508315804219335173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A140381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151757.P16989372218347473348

`(A014311(n+1)+A000079(A056558(n)))/2`
-/

namespace A151757.P16989372218347473348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014311 (n + 1) + A000079 (A056558 n).toNat : ℚ) / 2

end

end A151757.P16989372218347473348

noncomputable section

/-- A151757: Positive integers n, excluding 1 and 2^i+1 for all i, having wt <= 3.

Offset 1, canonical program `A151757.P16989372218347473348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151757.P16989372218347473348.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159253.P6361849019843085425

`A048798(n+1)*A053149(A062378(n+1))`
-/

namespace A159253.P6361849019843085425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1) * A053149 (A062378 (n + 1)).toNat

end

end A159253.P6361849019843085425

noncomputable section

/-- A159253: a(n) is the smallest positive integer not yet in the sequence such that n * a(n) is a cube.

Offset 1, canonical program `A159253.P6361849019843085425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159253 (n : ℕ) : ℤ :=
  A159253.P6361849019843085425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159253.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171665.P4832445183620559262

`∩[A005237(n+1), A357077(n+1)]`
-/

namespace A171665.P4832445183620559262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P4832445183620559262

noncomputable section

/-- A171665: Numbers n such that n and n+1 have same number of divisors, and that number of divisors is larger than 4.

Offset 1, canonical program `A171665.P4832445183620559262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2065 terms. -/
def A171665 (n : ℕ) : ℤ :=
  (A171665.P4832445183620559262.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2065 terms. -/
def A171665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202535.P2093204726395157723

`A002618(n+1)*A008966(n+1)`
-/

namespace A202535.P2093204726395157723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) * A008966 (n + 1)

end

end A202535.P2093204726395157723

noncomputable section

/-- A202535: a(n) = n*phi(n)*abs( mobius(n) ).

Offset 1, canonical program `A202535.P2093204726395157723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A202535 (n : ℕ) : ℤ :=
  A202535.P2093204726395157723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A008966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A202535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A228132.P8737515044422985900

`Δ[A014311(n+1)]`
-/

namespace A228132.P8737515044422985900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228132.P8737515044422985900

noncomputable section

/-- A228132: First differences of A014311.

Offset 1, canonical program `A228132.P8737515044422985900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A228132 (n : ℕ) : ℤ :=
  A228132.P8737515044422985900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A228132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248643.P15599122857225494513

`A000079(n)-A002618(n+1)`
-/

namespace A248643.P15599122857225494513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A002618 (n + 1)

end

end A248643.P15599122857225494513

noncomputable section

/-- A248643: a(n) = phi(2^n) - phi(n^2), with Euler's totient function phi = A000010.

Offset 1, canonical program `A248643.P15599122857225494513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248643 (n : ℕ) : ℤ :=
  A248643.P15599122857225494513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254503.P16877197465467938331

`A002618(n+1)/A384050(n+1)`
-/

namespace A254503.P16877197465467938331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A384050 (n + 1) : ℚ)

end

end A254503.P16877197465467938331

noncomputable section

/-- A254503: Möbius transform of A034448.

Offset 1, canonical program `A254503.P16877197465467938331`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A384050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254503.P16877197465467938331.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, A384050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A254503.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A271550.P5972112565588894110

`filter[A068993(n+1), A296079(#)]`
-/

namespace A271550.P5972112565588894110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A271550.P5972112565588894110

noncomputable section

/-- A271550: Numbers n such that n is a squarefree semiprime (i.e., omega(n) = 2 = Omega(n)) and phi(n) + 1 is a prime.

Offset 1, canonical program `A271550.P5972112565588894110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A271550 (n : ℕ) : ℤ :=
  A271550.P5972112565588894110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A271550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326044.P15136315853744446267

`A033879(n+1)+A326045(n+1)`
-/

namespace A326044.P15136315853744446267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A326045 (n + 1)

end

end A326044.P15136315853744446267

noncomputable section

/-- A326044: a(n) = n - {the largest square dividing its sum of divisors}: a(n) = n - A008833(sigma(n)).

Offset 1, canonical program `A326044.P15136315853744446267`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326044 (n : ℕ) : ℤ :=
  A326044.P15136315853744446267.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327570.P12500919374031446701

`A000010(n+1)*A002618(n+1)`
-/

namespace A327570.P12500919374031446701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A002618 (n + 1)

end

end A327570.P12500919374031446701

noncomputable section

/-- A327570: a(n) = n*phi(n)^2, phi = A000010.

Offset 1, canonical program `A327570.P12500919374031446701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327570 (n : ℕ) : ℤ :=
  A327570.P12500919374031446701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332516.P9149279751242895197

`filter[A004612(n+1), A354029(#)]`
-/

namespace A332516.P9149279751242895197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A332516.P9149279751242895197

noncomputable section

/-- A332516: Numbers k such that phi(k) == 10 (mod 12), where phi is the Euler totient function (A000010).

Offset 1, canonical program `A332516.P9149279751242895197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A332516 (n : ℕ) : ℤ :=
  A332516.P9149279751242895197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A332516.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A344843.P4941616825028739545

`∩[A357077(n+1)-1, A357077(n+1)]`
-/

namespace A344843.P4941616825028739545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344843.P4941616825028739545

noncomputable section

/-- A344843: The smallest of three consecutive integers that are products of three or more primes.

Offset 1, canonical program `A344843.P4941616825028739545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. -/
def A344843 (n : ℕ) : ℤ :=
  (A344843.P4941616825028739545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. -/
def A344843.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A346019.P9272715041891225070

`A011260(n+1)*A002884(n+1)/A000225(n+1)`
-/

namespace A346019.P9272715041891225070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011260 (n + 1) * A002884 (n + 1) : ℚ) / (A000225 (n + 1) : ℚ)

end

end A346019.P9272715041891225070

noncomputable section

/-- A346019: Number of n X n invertible matrices over GF(2) that have order 2^n-1.

Offset 1, canonical program `A346019.P9272715041891225070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346019.P9272715041891225070.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011260, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346019.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348077.P4273143389917239204

`∩[A348076(n+1)-1, A348076(n+1)]`
-/

namespace A348077.P4273143389917239204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348076 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348077.P4273143389917239204

noncomputable section

/-- A348077: Starts of runs of 3 consecutive numbers that have an equal number of even and odd exponents in their prime factorization (A187039).

Offset 1, canonical program `A348077.P4273143389917239204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A348077 (n : ℕ) : ℤ :=
  (A348077.P4273143389917239204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A348077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360123.P18421023914784840136

`and(A001492(n), A360122(n+1))`
-/

namespace A360123.P18421023914784840136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001492 n) (A360122 (n + 1))

end

end A360123.P18421023914784840136

noncomputable section

/-- A360123: Parity of A347389, where A347389 is Dirichlet convolution of A003415(n) with A003415(A276086(n)).

Offset 1, canonical program `A360123.P18421023914784840136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360123 (n : ℕ) : ℤ :=
  A360123.P18421023914784840136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360123.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A000020.P13856012455953723901

`A011260(n+1)+C(2, n+2)`
-/

namespace A000020.P13856012455953723901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A000020.P13856012455953723901

noncomputable section

/-- A000020: Number of primitive polynomials of degree n over GF(2) (version 2).

Offset 1, canonical program `A000020.P13856012455953723901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020 (n : ℕ) : ℤ :=
  A000020.P13856012455953723901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000189.P11210685475351648118

`(n+1)/A053149(n+1)^(1/3)`
-/

namespace A000189.P11210685475351648118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / (A053149 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A000189.P11210685475351648118

noncomputable section

/-- A000189: Number of solutions to x^3 == 0 (mod n).

Offset 1, canonical program `A000189.P11210685475351648118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000189.P11210685475351648118.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053164.P6072530198200345480

`A008835(n+1)^(1/4)`
-/

namespace A053164.P6072530198200345480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008835 (n + 1) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A053164.P6072530198200345480

noncomputable section

/-- A053164: 4th root of largest 4th power dividing n.

Offset 1, canonical program `A053164.P6072530198200345480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053164 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053164.P6072530198200345480.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053166.P13162475752144618048

`A019554(n+1)/A008835(A019554(n+1)²)^(1/4)`
-/

namespace A053166.P13162475752144618048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℝ) / (A008835 (A019554 (n + 1) ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A053166.P13162475752144618048

noncomputable section

/-- A053166: Smallest positive integer for which n divides a(n)^4.

Offset 1, canonical program `A053166.P13162475752144618048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053166 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053166.P13162475752144618048.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053166.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053167.P8322437054193827478

`((n+1)*A007913(n+1))²/A008835((n+1)*A007913(n+1))`
-/

namespace A053167.P8322437054193827478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) * A007913 (n + 1)) ^ 2 : ℚ) / (A008835 ((n + 1 : ℤ) * A007913 (n + 1)).toNat : ℚ)

end

end A053167.P8322437054193827478

noncomputable section

/-- A053167: Smallest 4th power divisible by n.

Offset 1, canonical program `A053167.P8322437054193827478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A008835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053167 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053167.P8322437054193827478.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A008835, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A053167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128251.P3815899443712150694

`((n+2)^4-1)/A008835((n+2)^4-1)`
-/

namespace A128251.P3815899443712150694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 4 : ℤ) - 1 : ℚ) / (A008835 ((n + 2) ^ 4 - 1) : ℚ)

end

end A128251.P3815899443712150694

noncomputable section

/-- A128251: n^4 - 1 divided by its largest fourth power divisor.

Offset 2, canonical program `A128251.P3815899443712150694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128251.P3815899443712150694.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136702.P11278385412180144797

`A248766(floor(sqrt(n²+1)))%16`
-/

namespace A136702.P11278385412180144797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248766 (Nat.sqrt (n ^ 2 + 1))) 16

end

end A136702.P11278385412180144797

noncomputable section

/-- A136702: Final nonzero digit of n! in base 16.

Offset 0, canonical program `A136702.P11278385412180144797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A136702 (n : ℕ) : ℤ :=
  A136702.P11278385412180144797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A136702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158327.P17963926596425252861

`∑{d}[A000265(n+1)%(n+1), A000005(A274611(#))]`
-/

namespace A158327.P17963926596425252861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 (A274611 d).toNat

end

end A158327.P17963926596425252861

noncomputable section

/-- A158327: a(n) = A145444(n)-A145511(n).

Offset 1, canonical program `A158327.P17963926596425252861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158327 (n : ℕ) : ℤ :=
  A158327.P17963926596425252861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209061.P8943037496521672999

`filter[n+1, A370598(#)]`
-/

namespace A209061.P8943037496521672999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j) = 1) n)

end

end A209061.P8943037496521672999

noncomputable section

/-- A209061: Exponentially squarefree numbers.

Offset 1, canonical program `A209061.P8943037496521672999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9560 terms. -/
def A209061 (n : ℕ) : ℤ :=
  (A209061.P8943037496521672999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9560 terms. -/
def A209061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240505.P9700052559506088263

`sqrt(A248766(n+1)/A055204(n+1))`
-/

namespace A240505.P9700052559506088263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A248766 (n + 1) : ℚ) / (A055204 (n + 1) : ℚ) : ℝ)

end

end A240505.P9700052559506088263

noncomputable section

/-- A240505: Products of primes the squares of which are Fermi-Dirac divisors of n!

Offset 1, canonical program `A240505.P9700052559506088263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A240505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240505.P9700052559506088263.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A240505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248764.P11887348063717219244

`(n+1)!/A248766(n+1)`
-/

namespace A248764.P11887348063717219244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A248766 (n + 1) : ℚ)

end

end A248764.P11887348063717219244

noncomputable section

/-- A248764: Greatest 4th power integer that divides n!

Offset 1, canonical program `A248764.P11887348063717219244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248764.P11887348063717219244.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248766, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248764.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A342415.P5847240470460742720

`A000010(n+1)/A342413(n+1)`
-/

namespace A342415.P5847240470460742720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A342413 (n + 1) : ℚ)

end

end A342415.P5847240470460742720

noncomputable section

/-- A342415: a(n) = phi(n) / gcd(phi(n),A003415(n)), where A003415(n) is the arithmetic derivative of n, and phi is Euler totient function.

Offset 1, canonical program `A342415.P5847240470460742720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A342413, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342415.P5847240470460742720.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A342413, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342415.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A359551.P4733184215772970261

`∑{d}[n+1, A007427(#)*A365632((n+1)/#)]`
-/

namespace A359551.P4733184215772970261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A365632 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359551.P4733184215772970261

noncomputable section

/-- A359551: Dirichlet inverse of A359550, which is multiplicative sequence with a(p^e) = 1 if e < p, otherwise 0.

Offset 1, canonical program `A359551.P4733184215772970261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359551 (n : ℕ) : ℤ :=
  A359551.P4733184215772970261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359792.P17336058227737017921

`A358680(n+1)-A165560(n+1)`
-/

namespace A359792.P17336058227737017921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (n + 1) - A165560 (n + 1)

end

end A359792.P17336058227737017921

noncomputable section

/-- A359792: a(n) = (-1)^A003415(n), where A003415 is the arithmetic derivative of n.

Offset 1, canonical program `A359792.P17336058227737017921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, A358680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359792 (n : ℕ) : ℤ :=
  A359792.P17336058227737017921.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165560, A358680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359792.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A089953.P3265903741196432824

`A034936(n+1)-1`
-/

namespace A089953.P3265903741196432824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 1

end

end A089953.P3265903741196432824

noncomputable section

/-- A089953: Numbers n such that 3*n+7 is prime.

Offset 1, canonical program `A089953.P3265903741196432824`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089953 (n : ℕ) : ℤ :=
  A089953.P3265903741196432824.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089953.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A107303.P6905371674303678170

`A034936(n+1)+3`
-/

namespace A107303.P6905371674303678170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + 3

end

end A107303.P6905371674303678170

noncomputable section

/-- A107303: Numbers k such that (3*k - 5) is prime.

Offset 1, canonical program `A107303.P6905371674303678170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107303 (n : ℕ) : ℤ :=
  A107303.P6905371674303678170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107303.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124855.P3478222764738300840

`∩[A034936(n+1), A095278(n+1)]`
-/

namespace A124855.P3478222764738300840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124855.P3478222764738300840

noncomputable section

/-- A124855: Numbers k such that 3k + 4 and 4k + 3 are primes.

Offset 1, canonical program `A124855.P3478222764738300840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. -/
def A124855 (n : ℕ) : ℤ :=
  (A124855.P3478222764738300840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1450 terms. -/
def A124855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125527.P13809848753718464647

`A072000(2^(n+1))`
-/

namespace A125527.P13809848753718464647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 ^ (n + 1))

end

end A125527.P13809848753718464647

noncomputable section

/-- A125527: Number of semiprimes <= 2^n.

Offset 1, canonical program `A125527.P13809848753718464647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125527 (n : ℕ) : ℤ :=
  A125527.P13809848753718464647.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173177.P4388351953749890821

`(3*A034936(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173177.P4388351953749890821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A034936 (n + 1) + 1 : ℚ) / 2

end

end A173177.P4388351953749890821

noncomputable section

/-- A173177: a(n) = (3 * A034936(n) + 1) / 2.

Offset 1, canonical program `A173177.P4388351953749890821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173177 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173177.P4388351953749890821.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173177.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A205726.P10294114532479088683

`A072000(A000290(n+1))`
-/

namespace A205726.P10294114532479088683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000290 (n + 1)).toNat

end

end A205726.P10294114532479088683

noncomputable section

/-- A205726: Number of semiprimes <= n^2.

Offset 1, canonical program `A205726.P10294114532479088683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A205726 (n : ℕ) : ℤ :=
  A205726.P10294114532479088683.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072000, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A205726.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A342008.P13045740322941483081

`eq[1, A342414(n+1)]+1`
-/

namespace A342008.P13045740322941483081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342008.P13045740322941483081

noncomputable section

/-- A342008: Numbers k such that Euler totient phi(k) is a multiple of the arithmetic derivative of k.

Offset 1, canonical program `A342008.P13045740322941483081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1583 terms. -/
def A342008 (n : ℕ) : ℤ :=
  (A342008.P13045740322941483081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1583 terms. -/
def A342008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024892.P16415756405401507162

`A034936(n+1)+1`
-/

namespace A024892.P16415756405401507162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + 1

end

end A024892.P16415756405401507162

noncomputable section

/-- A024892: Numbers k such that 3*k+1 is prime.

Offset 1, canonical program `A024892.P16415756405401507162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024892 (n : ℕ) : ℤ :=
  A024892.P16415756405401507162.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024892.provenance : SequenceMachineLib.Provenance := .conditional

